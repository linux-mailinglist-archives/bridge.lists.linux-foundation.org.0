Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4281896AB
	for <lists.bridge@lfdr.de>; Wed, 18 Mar 2020 09:11:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B93B8204F6;
	Wed, 18 Mar 2020 08:11:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KOzcpjF3wzxK; Wed, 18 Mar 2020 08:11:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 16F1B204C6;
	Wed, 18 Mar 2020 08:11:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0515DC1D8E;
	Wed, 18 Mar 2020 08:11:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9FB0FC013E
 for <bridge@lists.linux-foundation.org>; Wed, 18 Mar 2020 08:11:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8EB1586F1F
 for <bridge@lists.linux-foundation.org>; Wed, 18 Mar 2020 08:11:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oRupxmimW5a8 for <bridge@lists.linux-foundation.org>;
 Wed, 18 Mar 2020 08:11:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ED80186931
 for <bridge@lists.linux-foundation.org>; Wed, 18 Mar 2020 08:11:09 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 0AA651489E0A9;
 Wed, 18 Mar 2020 01:11:08 -0700 (PDT)
Date: Tue, 17 Mar 2020 22:47:32 -0700 (PDT)
Message-Id: <20200317.224732.583644832239870673.davem@davemloft.net>
To: nikolay@cumulusnetworks.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200317120836.1765164-1-nikolay@cumulusnetworks.com>
References: <20200317120836.1765164-1-nikolay@cumulusnetworks.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 18 Mar 2020 01:11:08 -0700 (PDT)
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next 0/4] net: bridge: vlan options: add
 support for tunnel mapping
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
Date: Tue, 17 Mar 2020 14:08:32 +0200

> In order to bring the new vlan API on par with the old one and be able
> to completely migrate to the new one we need to support vlan tunnel mapping
> and statistics. This patch-set takes care of the former by making it a
> vlan option. There are two notable issues to deal with:
>  - vlan range to tunnel range mapping
>    * The tunnel ids are globally unique for the vlan code and a vlan can
>      be mapped to one tunnel, so the old API took care of ranges by
>      taking the starting tunnel id value and incrementally mapping
>      vlan id(i) -> tunnel id(i). This set takes the same approach and
>      uses one new attribute - BRIDGE_VLANDB_ENTRY_TUNNEL_ID. If used
>      with a vlan range then it's the starting tunnel id to map.
> 
>  - tunnel mapping removal
>    * Since there are no reserved/special tunnel ids defined, we can't
>      encode mapping removal within the new attribute, in order to be
>      able to remove a mapping we add a vlan flag which makes the new
>      tunnel option remove the mapping
> 
> The rest is pretty straight-forward, in fact we directly re-use the old
> code for manipulating tunnels by just mapping the command (set/del). In
> order to be able to keep detecting vlan ranges we check that the current
> vlan has a tunnel and it's extending the current vlan range end's tunnel
> id.

Looks good, series applied, thank you.
