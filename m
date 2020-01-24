Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D7EA21484CD
	for <lists.bridge@lfdr.de>; Fri, 24 Jan 2020 13:00:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DC9C98563A;
	Fri, 24 Jan 2020 11:59:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9tNZuwCb5DvL; Fri, 24 Jan 2020 11:59:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 17EA985BFB;
	Fri, 24 Jan 2020 11:59:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DF215C0174;
	Fri, 24 Jan 2020 11:59:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 90D7FC0174
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 11:59:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8008287766
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 11:59:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 05s55xlLmXrk for <bridge@lists.linux-foundation.org>;
 Fri, 24 Jan 2020 11:59:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 63D6485381
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 11:59:32 +0000 (UTC)
Received: from localhost (unknown [147.229.117.36])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 30948158B6EE7;
 Fri, 24 Jan 2020 03:59:25 -0800 (PST)
Date: Fri, 24 Jan 2020 12:58:33 +0100 (CET)
Message-Id: <20200124.125833.809170017035214921.davem@davemloft.net>
To: nikolay@cumulusnetworks.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200124114022.10883-1-nikolay@cumulusnetworks.com>
References: <20200124114022.10883-1-nikolay@cumulusnetworks.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 24 Jan 2020 03:59:31 -0800 (PST)
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next v2 0/4] net: bridge: add per-vlan
	state option
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

From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Date: Fri, 24 Jan 2020 13:40:18 +0200

> This set adds the first per-vlan option - state, which uses the new vlan
> infrastructure that was recently added. It gives us forwarding control on
> per-vlan basis. The first 3 patches prepare the vlan code to support option
> dumping and modification. We still compress vlan ranges which have equal
> options, each new option will have to add its own equality check to
> br_vlan_opts_eq(). The vlans are created in forwarding state by default to
> be backwards compatible and vlan state is considered only when the port
> state is forwarding (more info in patch 4).
> I'll send the selftest for the vlan state with the iproute2 patch-set.
> 
> v2: patch 3: do full (all-vlan) notification only on vlan
>     create/delete, otherwise use the per-vlan notifications only,
>     rework how option change ranges are detected, add more verbose error
>     messages when setting options and add checks if a vlan should be used.

Series applied, thanks.
