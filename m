Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FF43EB742
	for <lists.bridge@lfdr.de>; Fri, 13 Aug 2021 17:00:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7964540353;
	Fri, 13 Aug 2021 15:00:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KHQyC_cuxBAI; Fri, 13 Aug 2021 15:00:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 123B740373;
	Fri, 13 Aug 2021 15:00:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3BC51C0029;
	Fri, 13 Aug 2021 15:00:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 70C29C000E
 for <bridge@lists.linux-foundation.org>; Fri, 13 Aug 2021 15:00:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5E9CF402BA
 for <bridge@lists.linux-foundation.org>; Fri, 13 Aug 2021 15:00:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kCswU8FoaU0k for <bridge@lists.linux-foundation.org>;
 Fri, 13 Aug 2021 15:00:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5C91A40025
 for <bridge@lists.linux-foundation.org>; Fri, 13 Aug 2021 15:00:16 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id w5so18819771ejq.2
 for <bridge@lists.linux-foundation.org>; Fri, 13 Aug 2021 08:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HORlVdyGh2lGDd3y5BvuyOpIor1UFiV3pM2jOqAVHlI=;
 b=ksU1XqL/LKuIEER0eJhayiZ2Q5QVQXyH29qOAt3vJapvy+/IyFX78qljJI6SHRkeyC
 bihqJGu0JKIwYjsUH6RWnELkjmFJ7FBy7TBmLkrCiQ+WHlQmcjnOeYNDvi8AkCyHCVw7
 FhY0ofS9k+jRIQK7zhSRhEfsLci1xs8urECJS21oezGPUlknLrdBip0m7nLJnB5XgLu/
 2gBeH70jGu1orHF707eadV8E0omYKddbBY4vykZQ/mXGh3mBF4zy9gs88i/Ou5MoWLP0
 JRcIMDnbGmu6L0qlmbCWbdmrwsLjuPigA/giB1kW8WDnJv3dRMBCTNmbx+9VEDSEQFeg
 kX5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HORlVdyGh2lGDd3y5BvuyOpIor1UFiV3pM2jOqAVHlI=;
 b=spB/4ganNtlzmHZalOZRfPKEm0J+E4JV/k/TuVoMakvgN+67uu62S7/7TxPIdbCMkr
 rxxmopB/fI3bZzjEs/TY8h37a8OGbfffElnXwp5A6kWpL8p+10NJRmWPsnDvekG2UtuY
 6BcbAzZNj8sfGsi6QthJJZ40g6s3q1wOPlsTsoDnIE8cQ2//5n4fMwGpQ4xYZGH6bxZ5
 wQWvklclmxciLiUuVBIn5gO1YPCdZwUqRHo7QSdFtanOqdZTfi9h0yq83Pk/4hzNlusR
 0JVcgygwRswzxjJD8V7M/mm0vd+CR912Dj4x5GHaWrKjIcnLgmGKqRs1YujNzDmfw3ky
 yQ2w==
X-Gm-Message-State: AOAM532ZvKWXQjrZYCFsOOuCzFhvLFTQgpNlXZGy5p2myjeAGSm+QaWE
 I4GeujTYmyyL4EPbIsas9Q6M4Q==
X-Google-Smtp-Source: ABdhPJyRhd5dzFey98uTkLqdTkH5XTXSPZBcWj7l2JiQYU2lH8Pqnsq7ywvwlBLroaPpvStXaah21A==
X-Received: by 2002:a17:906:81c8:: with SMTP id
 e8mr2917900ejx.401.1628866811348; 
 Fri, 13 Aug 2021 08:00:11 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id d26sm1015711edp.90.2021.08.13.08.00.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Aug 2021 08:00:10 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Fri, 13 Aug 2021 17:59:59 +0300
Message-Id: <20210813150002.673579-4-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210813150002.673579-1-razor@blackwall.org>
References: <20210813150002.673579-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 3/6] net: bridge: mcast: consolidate
	querier selection for ipv4 and ipv6
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

From: Nikolay Aleksandrov <nikolay@nvidia.com>

We can consolidate both functions as they share almost the same logic.
This is easier to maintain and we have a single querier update function.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast.c | 67 +++++++++++++++++----------------------
 1 file changed, 29 insertions(+), 38 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 701cf46b89de..3705b7ace62d 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -2864,55 +2864,46 @@ static int br_ip6_multicast_mld2_report(struct net_bridge_mcast *brmctx,
 }
 #endif
 
-static bool br_ip4_multicast_select_querier(struct net_bridge_mcast *brmctx,
-					    struct net_bridge_mcast_port *pmctx,
-					    struct br_ip *saddr)
+static bool br_multicast_select_querier(struct net_bridge_mcast *brmctx,
+					struct net_bridge_mcast_port *pmctx,
+					struct br_ip *saddr)
 {
 	int port_ifidx = pmctx ? pmctx->port->dev->ifindex : 0;
+	struct timer_list *own_timer, *other_timer;
+	struct bridge_mcast_querier *querier;
 
-	if (!timer_pending(&brmctx->ip4_own_query.timer) &&
-	    !timer_pending(&brmctx->ip4_other_query.timer))
-		goto update;
-
-	if (!brmctx->ip4_querier.addr.src.ip4)
-		goto update;
-
-	if (ntohl(saddr->src.ip4) <= ntohl(brmctx->ip4_querier.addr.src.ip4))
-		goto update;
-
-	return false;
-
-update:
-	br_multicast_update_querier(brmctx, &brmctx->ip4_querier, port_ifidx,
-				    saddr);
-
-	return true;
-}
-
+	switch (saddr->proto) {
+	case htons(ETH_P_IP):
+		querier = &brmctx->ip4_querier;
+		own_timer = &brmctx->ip4_own_query.timer;
+		other_timer = &brmctx->ip4_other_query.timer;
+		if (!querier->addr.src.ip4 ||
+		    ntohl(saddr->src.ip4) <= ntohl(querier->addr.src.ip4))
+			goto update;
+		break;
 #if IS_ENABLED(CONFIG_IPV6)
-static bool br_ip6_multicast_select_querier(struct net_bridge_mcast *brmctx,
-					    struct net_bridge_mcast_port *pmctx,
-					    struct br_ip *saddr)
-{
-	int port_ifidx = pmctx ? pmctx->port->dev->ifindex : 0;
-
-	if (!timer_pending(&brmctx->ip6_own_query.timer) &&
-	    !timer_pending(&brmctx->ip6_other_query.timer))
-		goto update;
+	case htons(ETH_P_IPV6):
+		querier = &brmctx->ip6_querier;
+		own_timer = &brmctx->ip6_own_query.timer;
+		other_timer = &brmctx->ip6_other_query.timer;
+		if (ipv6_addr_cmp(&saddr->src.ip6, &querier->addr.src.ip6) <= 0)
+			goto update;
+		break;
+#endif
+	default:
+		return false;
+	}
 
-	if (ipv6_addr_cmp(&saddr->src.ip6,
-			  &brmctx->ip6_querier.addr.src.ip6) <= 0)
+	if (!timer_pending(own_timer) && !timer_pending(other_timer))
 		goto update;
 
 	return false;
 
 update:
-	br_multicast_update_querier(brmctx, &brmctx->ip6_querier, port_ifidx,
-				    saddr);
+	br_multicast_update_querier(brmctx, querier, port_ifidx, saddr);
 
 	return true;
 }
-#endif
 
 static void
 br_multicast_update_query_timer(struct net_bridge_mcast *brmctx,
@@ -3115,7 +3106,7 @@ br_ip4_multicast_query_received(struct net_bridge_mcast *brmctx,
 				struct br_ip *saddr,
 				unsigned long max_delay)
 {
-	if (!br_ip4_multicast_select_querier(brmctx, pmctx, saddr))
+	if (!br_multicast_select_querier(brmctx, pmctx, saddr))
 		return;
 
 	br_multicast_update_query_timer(brmctx, query, max_delay);
@@ -3130,7 +3121,7 @@ br_ip6_multicast_query_received(struct net_bridge_mcast *brmctx,
 				struct br_ip *saddr,
 				unsigned long max_delay)
 {
-	if (!br_ip6_multicast_select_querier(brmctx, pmctx, saddr))
+	if (!br_multicast_select_querier(brmctx, pmctx, saddr))
 		return;
 
 	br_multicast_update_query_timer(brmctx, query, max_delay);
-- 
2.31.1

