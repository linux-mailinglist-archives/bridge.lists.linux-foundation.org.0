Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 713AE23B08B
	for <lists.bridge@lfdr.de>; Tue,  4 Aug 2020 00:58:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EEB80844CC;
	Mon,  3 Aug 2020 22:58:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id szFcANy_1f8n; Mon,  3 Aug 2020 22:58:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4DF33844BD;
	Mon,  3 Aug 2020 22:58:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3777AC088E;
	Mon,  3 Aug 2020 22:58:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 18B6CC004C
 for <bridge@lists.linux-foundation.org>; Mon,  3 Aug 2020 22:58:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 13AA886C59
 for <bridge@lists.linux-foundation.org>; Mon,  3 Aug 2020 22:58:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bmh-+nviZozr for <bridge@lists.linux-foundation.org>;
 Mon,  3 Aug 2020 22:58:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5C2278503D
 for <bridge@lists.linux-foundation.org>; Mon,  3 Aug 2020 22:58:36 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 61A6312779168;
 Mon,  3 Aug 2020 15:41:50 -0700 (PDT)
Date: Mon, 03 Aug 2020 15:58:35 -0700 (PDT)
Message-Id: <20200803.155835.1186341109955245993.davem@davemloft.net>
To: nikolay@cumulusnetworks.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200802125039.648571-1-nikolay@cumulusnetworks.com>
References: <39736ed8-8565-ab64-5163-da6f2acba68a@cumulusnetworks.com>
 <20200802125039.648571-1-nikolay@cumulusnetworks.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 03 Aug 2020 15:41:50 -0700 (PDT)
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, dsahern@gmail.com
Subject: Re: [Bridge] [PATCH net v2] net: bridge: clear skb private space on
 bridge dev xmit
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
Date: Sun,  2 Aug 2020 15:50:39 +0300

> We need to clear all of the bridge private skb variables as they can be
> stale due to the packet having skb->cb initialized earlier and then
> transmitted through the bridge device. Similar memset is already done on
> bridge's input. We've seen cases where proxyarp_replied was 1 on routed
> multicast packets transmitted through the bridge to ports with neigh
> suppress and were getting dropped. Same thing can in theory happen with the
> port isolation bit as well. We clear only the struct part after the bridge
> pointer (currently 8 bytes) since the pointer is always set later.
> We can now remove the redundant zeroing of frag_max_size.
> Also add a BUILD_BUG_ON to make sure we catch any movement of the bridge
> dev pointer.
> 
> Fixes: 821f1b21cabb ("bridge: add new BR_NEIGH_SUPPRESS port flag to suppress arp and nd flood")
> Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

Nikolay, I applied v1 already as I'm not at all against the full clear.
