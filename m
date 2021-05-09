Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F58377830
	for <lists.bridge@lfdr.de>; Sun,  9 May 2021 21:45:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 570D583BDA;
	Sun,  9 May 2021 19:45:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rI6mHk1qgJqT; Sun,  9 May 2021 19:45:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A10483BD9;
	Sun,  9 May 2021 19:45:38 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D86F4C0025;
	Sun,  9 May 2021 19:45:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0C711C0001
 for <bridge@lists.linux-foundation.org>; Sun,  9 May 2021 19:45:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6EB6440469
 for <bridge@lists.linux-foundation.org>; Sun,  9 May 2021 19:45:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wqwzQ4qifHuu for <bridge@lists.linux-foundation.org>;
 Sun,  9 May 2021 19:45:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8883A40460
 for <bridge@lists.linux-foundation.org>; Sun,  9 May 2021 19:45:34 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 5BFED3EDDE; Sun,  9 May 2021 21:45:32 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Date: Sun,  9 May 2021 21:45:09 +0200
Message-Id: <20210509194509.10849-12-linus.luessing@c0d3.blue>
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
Subject: [Bridge] [net-next v2 11/11] net: bridge: mcast: export multicast
	router presence adjacent to a port
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

To properly support routable multicast addresses in batman-adv in a
group-aware way, a batman-adv node needs to know if it serves multicast
routers.

This adds a function to the bridge to export this so that batman-adv
can then make full use of the Multicast Router Discovery capability of
the bridge.

Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
---
 net/bridge/br_multicast.c | 58 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index b625fd6..e963de5 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -4061,6 +4061,64 @@ unlock:
 }
 EXPORT_SYMBOL_GPL(br_multicast_has_querier_adjacent);
 
+/**
+ * br_multicast_has_router_adjacent - Checks for a router behind a bridge port
+ * @dev: The bridge port adjacent to which to check for a multicast router
+ * @proto: The protocol family to check for: IGMP -> ETH_P_IP, MLD -> ETH_P_IPV6
+ *
+ * Checks whether the given interface has a bridge on top and if so returns
+ * true if a multicast router is behind one of the other ports of this
+ * bridge. Otherwise returns false.
+ */
+bool br_multicast_has_router_adjacent(struct net_device *dev, int proto)
+{
+	struct net_bridge_port *port, *p;
+	bool ret = false;
+
+	rcu_read_lock();
+	if (!netif_is_bridge_port(dev))
+		goto unlock;
+
+	port = br_port_get_rcu(dev);
+	if (!port || !port->br)
+		goto unlock;
+
+	switch (proto) {
+	case ETH_P_IP:
+		hlist_for_each_entry_rcu(p, &port->br->ip4_mc_router_list,
+					 ip4_rlist) {
+			if (p == port)
+				continue;
+
+			ret = true;
+			goto unlock;
+		}
+		break;
+#if IS_ENABLED(CONFIG_IPV6)
+	case ETH_P_IPV6:
+		hlist_for_each_entry_rcu(p, &port->br->ip6_mc_router_list,
+					 ip6_rlist) {
+			if (p == port)
+				continue;
+
+			ret = true;
+			goto unlock;
+		}
+		break;
+#endif
+	default:
+		/* when compiled without IPv6 support, be conservative and
+		 * always assume presence of an IPv6 multicast router
+		 */
+		ret = true;
+	}
+
+unlock:
+	rcu_read_unlock();
+	return ret;
+}
+EXPORT_SYMBOL_GPL(br_multicast_has_router_adjacent);
+
 static void br_mcast_stats_add(struct bridge_mcast_stats __percpu *stats,
 			       const struct sk_buff *skb, u8 type, u8 dir)
 {
-- 
2.31.0

