Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 896A41CABD5
	for <lists.bridge@lfdr.de>; Fri,  8 May 2020 14:47:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 167B6896BA;
	Fri,  8 May 2020 12:47:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w4OvL+4fdHhC; Fri,  8 May 2020 12:47:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 00832892AA;
	Fri,  8 May 2020 12:47:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CBCBBC07FF;
	Fri,  8 May 2020 12:47:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B2D17C07FF
 for <bridge@lists.linux-foundation.org>; Fri,  8 May 2020 12:47:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A8EC18757A
 for <bridge@lists.linux-foundation.org>; Fri,  8 May 2020 12:47:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vthi4qmUHRSR for <bridge@lists.linux-foundation.org>;
 Fri,  8 May 2020 12:47:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2D9CF87565
 for <bridge@lists.linux-foundation.org>; Fri,  8 May 2020 12:47:39 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7B9ED221F7;
 Fri,  8 May 2020 12:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588942059;
 bh=lAWvsf08nZvSQrfzMExadqGz3aL2prjAHcmVRlzYXZg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JGNdz8lZwZ3kZY97w3pSEMAvvhh7dn4Stde5hNe0kNCdKG7FNjmuBGtWkcJt4v8+K
 rMLwlOiuDGZH0tvB6/W9/cZz4C2Q0ShogXGUC2AR+We+GQwWrcF9SAf94gAxwSJRAy
 96BL/d5htW9ok+xfgeuasAKfTQ/DeFpJslUCpcR0=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Date: Fri,  8 May 2020 14:34:32 +0200
Message-Id: <20200508123144.177646487@linuxfoundation.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200508123124.574959822@linuxfoundation.org>
References: <20200508123124.574959822@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 stable@vger.kernel.org, Kyeyoon Park <kyeyoonp@codeaurora.org>,
 "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH 4.4 281/312] net: bridge: dont increment tx_dropped
	in br_do_proxy_arp
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


