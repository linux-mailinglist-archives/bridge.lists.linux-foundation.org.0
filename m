Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1C61C96AD
	for <lists.bridge@lfdr.de>; Thu,  7 May 2020 18:39:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 14BF385F49;
	Thu,  7 May 2020 16:39:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rhWMqJae-EK6; Thu,  7 May 2020 16:39:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7560685F5A;
	Thu,  7 May 2020 16:39:53 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 56110C0890;
	Thu,  7 May 2020 16:39:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4AFD4C07FF
 for <bridge@lists.linux-foundation.org>; Thu,  7 May 2020 16:39:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3A8478839A
 for <bridge@lists.linux-foundation.org>; Thu,  7 May 2020 16:39:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nxKU1BzybmZA for <bridge@lists.linux-foundation.org>;
 Thu,  7 May 2020 16:39:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7888F88393
 for <bridge@lists.linux-foundation.org>; Thu,  7 May 2020 16:39:51 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C801320838;
 Thu,  7 May 2020 16:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588869591;
 bh=wq2CHy58Cr6P3g53lcN3y4RE88fxN0x54WdnN8sOIko=;
 h=Subject:To:Cc:From:Date:From;
 b=k99ZnXN1Xe9/36qor8EMQZQYeE1HFIs0avbfPwlKKED5WjDC4Qc+GskEPSvkNAVyT
 4F841Q2Q0eycKHg/x1MH/bPE6+kTK/5ldQDkUIXWTbBvmIogA2du6VxgMbkgCfulgq
 p7K8+LWZvcGaEjPtVouRvO5YOeYtYyCJQVrlXcXc=
To: bridge@lists.linux-foundation.org, davem@davemloft.net,
 gregkh@linuxfoundation.org, kyeyoonp@codeaurora.org,
 nikolay@cumulusnetworks.com, roopa@cumulusnetworks.com,
 stephen@networkplumber.org
From: <gregkh@linuxfoundation.org>
Date: Thu, 07 May 2020 18:39:13 +0200
Message-ID: <1588869553183206@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ANSI_X3.4-1968
Content-Transfer-Encoding: 8bit
X-stable: commit
X-Patchwork-Hint: ignore 
Cc: stable-commits@vger.kernel.org
Subject: [Bridge] Patch "net: bridge: don't increment tx_dropped in
	br_do_proxy_arp" has been added to the 4.4-stable tree
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


This is a note to let you know that I've just added the patch titled

    net: bridge: don't increment tx_dropped in br_do_proxy_arp

to the 4.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     net-bridge-don-t-increment-tx_dropped-in-br_do_proxy_arp.patch
and it can be found in the queue-4.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From 85a3d4a9356b595d5440c3f1bf07ee7cecca1567 Mon Sep 17 00:00:00 2001
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Date: Tue, 30 Aug 2016 17:44:29 +0200
Subject: net: bridge: don't increment tx_dropped in br_do_proxy_arp

From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

commit 85a3d4a9356b595d5440c3f1bf07ee7cecca1567 upstream.

pskb_may_pull may fail due to various reasons (e.g. alloc failure), but the
skb isn't changed/dropped and processing continues so we shouldn't
increment tx_dropped.

CC: Kyeyoon Park <kyeyoonp@codeaurora.org>
CC: Roopa Prabhu <roopa@cumulusnetworks.com>
CC: Stephen Hemminger <stephen@networkplumber.org>
CC: bridge@lists.linux-foundation.org
Fixes: 958501163ddd ("bridge: Add support for IEEE 802.11 Proxy ARP")
Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
 net/bridge/br_input.c |    7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -78,13 +78,10 @@ static void br_do_proxy_arp(struct sk_bu
 
 	BR_INPUT_SKB_CB(skb)->proxyarp_replied = false;
 
-	if (dev->flags & IFF_NOARP)
+	if ((dev->flags & IFF_NOARP) ||
+	    !pskb_may_pull(skb, arp_hdr_len(dev)))
 		return;
 
-	if (!pskb_may_pull(skb, arp_hdr_len(dev))) {
-		dev->stats.tx_dropped++;
-		return;
-	}
 	parp = arp_hdr(skb);
 
 	if (parp->ar_pro != htons(ETH_P_IP) ||


Patches currently in stable-queue which might be from nikolay@cumulusnetworks.com are

queue-4.4/bonding-prevent-out-of-bound-accesses.patch
queue-4.4/net-bridge-don-t-increment-tx_dropped-in-br_do_proxy_arp.patch
