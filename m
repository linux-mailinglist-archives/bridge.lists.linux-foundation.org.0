Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8592B377824
	for <lists.bridge@lfdr.de>; Sun,  9 May 2021 21:45:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B5BBB402C5;
	Sun,  9 May 2021 19:45:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8b6-O1Wn_kjR; Sun,  9 May 2021 19:45:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTP id 574364049A;
	Sun,  9 May 2021 19:45:31 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 201EBC0029;
	Sun,  9 May 2021 19:45:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1883BC0001
 for <bridge@lists.linux-foundation.org>; Sun,  9 May 2021 19:45:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 587BF4049A
 for <bridge@lists.linux-foundation.org>; Sun,  9 May 2021 19:45:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mH0bkHSpiyDK for <bridge@lists.linux-foundation.org>;
 Sun,  9 May 2021 19:45:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:c2c:665b::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9623C4010D
 for <bridge@lists.linux-foundation.org>; Sun,  9 May 2021 19:45:27 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 3CE4A3EDDF; Sun,  9 May 2021 21:45:25 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Date: Sun,  9 May 2021 21:45:02 +0200
Message-Id: <20210509194509.10849-5-linus.luessing@c0d3.blue>
In-Reply-To: <20210509194509.10849-1-linus.luessing@c0d3.blue>
References: <20210509194509.10849-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.2
Cc: b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Subject: [Bridge] [net-next v2 04/11] net: bridge: mcast: prepare query
	reception for mcast router split
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

In preparation for the upcoming split of multicast router state into
their IPv4 and IPv6 variants and as the br_multicast_mark_router() will
be split for that remove the select querier wrapper and instead add
ip4 and ip6 variants for br_multicast_query_received().

Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
---
 net/bridge/br_multicast.c | 53 ++++++++++++++++++++-------------------
 1 file changed, 27 insertions(+), 26 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 6fe93a3..7edbbc9 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -2615,22 +2615,6 @@ update:
 }
 #endif
 
-static bool br_multicast_select_querier(struct net_bridge *br,
-					struct net_bridge_port *port,
-					struct br_ip *saddr)
-{
-	switch (saddr->proto) {
-	case htons(ETH_P_IP):
-		return br_ip4_multicast_select_querier(br, port, saddr->src.ip4);
-#if IS_ENABLED(CONFIG_IPV6)
-	case htons(ETH_P_IPV6):
-		return br_ip6_multicast_select_querier(br, port, &saddr->src.ip6);
-#endif
-	}
-
-	return false;
-}
-
 static void
 br_multicast_update_query_timer(struct net_bridge *br,
 				struct bridge_mcast_other_query *query,
@@ -2708,19 +2692,36 @@ static void br_multicast_mark_router(struct net_bridge *br,
 		  now + br->multicast_querier_interval);
 }
 
-static void br_multicast_query_received(struct net_bridge *br,
-					struct net_bridge_port *port,
-					struct bridge_mcast_other_query *query,
-					struct br_ip *saddr,
-					unsigned long max_delay)
+static void
+br_ip4_multicast_query_received(struct net_bridge *br,
+				struct net_bridge_port *port,
+				struct bridge_mcast_other_query *query,
+				struct br_ip *saddr,
+				unsigned long max_delay)
 {
-	if (!br_multicast_select_querier(br, port, saddr))
+	if (!br_ip4_multicast_select_querier(br, port, saddr->src.ip4))
 		return;
 
 	br_multicast_update_query_timer(br, query, max_delay);
 	br_multicast_mark_router(br, port);
 }
 
+#if IS_ENABLED(CONFIG_IPV6)
+static void
+br_ip6_multicast_query_received(struct net_bridge *br,
+				struct net_bridge_port *port,
+				struct bridge_mcast_other_query *query,
+				struct br_ip *saddr,
+				unsigned long max_delay)
+{
+	if (!br_ip6_multicast_select_querier(br, port, &saddr->src.ip6))
+		return;
+
+	br_multicast_update_query_timer(br, query, max_delay);
+	br_multicast_mark_router(br, port);
+}
+#endif
+
 static void br_ip4_multicast_query(struct net_bridge *br,
 				   struct net_bridge_port *port,
 				   struct sk_buff *skb,
@@ -2768,8 +2769,8 @@ static void br_ip4_multicast_query(struct net_bridge *br,
 		saddr.proto = htons(ETH_P_IP);
 		saddr.src.ip4 = iph->saddr;
 
-		br_multicast_query_received(br, port, &br->ip4_other_query,
-					    &saddr, max_delay);
+		br_ip4_multicast_query_received(br, port, &br->ip4_other_query,
+						&saddr, max_delay);
 		goto out;
 	}
 
@@ -2856,8 +2857,8 @@ static int br_ip6_multicast_query(struct net_bridge *br,
 		saddr.proto = htons(ETH_P_IPV6);
 		saddr.src.ip6 = ipv6_hdr(skb)->saddr;
 
-		br_multicast_query_received(br, port, &br->ip6_other_query,
-					    &saddr, max_delay);
+		br_ip6_multicast_query_received(br, port, &br->ip6_other_query,
+						&saddr, max_delay);
 		goto out;
 	} else if (!group) {
 		goto out;
-- 
2.31.0

