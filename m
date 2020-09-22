Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F054327378D
	for <lists.bridge@lfdr.de>; Tue, 22 Sep 2020 02:38:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DA1E686FCC;
	Tue, 22 Sep 2020 00:38:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FaI0-qE03Vpi; Tue, 22 Sep 2020 00:38:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9CD6686FDC;
	Tue, 22 Sep 2020 00:38:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7BDEFC0893;
	Tue, 22 Sep 2020 00:38:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8C2D7C0051
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 00:38:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 71F7386FCC
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 00:38:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pv7ddBVf1qw2 for <bridge@lists.linux-foundation.org>;
 Tue, 22 Sep 2020 00:38:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E5D5186FCB
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 00:38:35 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 7D7ED128514DC;
 Mon, 21 Sep 2020 17:21:47 -0700 (PDT)
Date: Mon, 21 Sep 2020 17:38:33 -0700 (PDT)
Message-Id: <20200921.173833.705760978025831604.davem@davemloft.net>
To: vladimir.oltean@nxp.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200921220709.96107-1-vladimir.oltean@nxp.com>
References: <20200921220709.96107-1-vladimir.oltean@nxp.com>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [2620:137:e000::1:9]);
 Mon, 21 Sep 2020 17:21:47 -0700 (PDT)
Cc: andrew@lunn.ch, f.fainelli@gmail.com, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, nikolay@nvidia.com, roopa@nvidia.com,
 kuba@kernel.org, vivien.didelot@gmail.com, pablo@netfilter.org
Subject: Re: [Bridge] [PATCH net] net: bridge: br_vlan_get_pvid_rcu() should
 dereference the VLAN group under RCU
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

From: Vladimir Oltean <vladimir.oltean@nxp.com>
Date: Tue, 22 Sep 2020 01:07:09 +0300

> When calling the RCU brother of br_vlan_get_pvid(), lockdep warns:
> 
> =============================
> WARNING: suspicious RCU usage
> 5.9.0-rc3-01631-g13c17acb8e38-dirty #814 Not tainted
> -----------------------------
> net/bridge/br_private.h:1054 suspicious rcu_dereference_protected() usage!
> 
> Call trace:
>  lockdep_rcu_suspicious+0xd4/0xf8
>  __br_vlan_get_pvid+0xc0/0x100
>  br_vlan_get_pvid_rcu+0x78/0x108
> 
> The warning is because br_vlan_get_pvid_rcu() calls nbp_vlan_group()
> which calls rtnl_dereference() instead of rcu_dereference(). In turn,
> rtnl_dereference() calls rcu_dereference_protected() which assumes
> operation under an RCU write-side critical section, which obviously is
> not the case here. So, when the incorrect primitive is used to access
> the RCU-protected VLAN group pointer, READ_ONCE() is not used, which may
> cause various unexpected problems.
> 
> I'm sad to say that br_vlan_get_pvid() and br_vlan_get_pvid_rcu() cannot
> share the same implementation. So fix the bug by splitting the 2
> functions, and making br_vlan_get_pvid_rcu() retrieve the VLAN groups
> under proper locking annotations.
> 
> Fixes: 7582f5b70f9a ("bridge: add br_vlan_get_pvid_rcu()")
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Applied and queued up for -stable, thank you.
