Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD7E37F8B7
	for <lists.bridge@lfdr.de>; Thu, 13 May 2021 15:23:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CDCF084519;
	Thu, 13 May 2021 13:22:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EwwGkyNQfUKE; Thu, 13 May 2021 13:22:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70F0B844FC;
	Thu, 13 May 2021 13:22:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3D26EC001C;
	Thu, 13 May 2021 13:22:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DD4C2C0001
 for <bridge@lists.linux-foundation.org>; Thu, 13 May 2021 13:22:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BE7BD83D5B
 for <bridge@lists.linux-foundation.org>; Thu, 13 May 2021 13:22:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DpkYvlr23LdJ for <bridge@lists.linux-foundation.org>;
 Thu, 13 May 2021 13:22:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:c2c:665b::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A8BE383D39
 for <bridge@lists.linux-foundation.org>; Thu, 13 May 2021 13:22:24 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 671DA4100E; Thu, 13 May 2021 15:21:09 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Date: Thu, 13 May 2021 15:20:53 +0200
Message-Id: <20210513132053.23445-12-linus.luessing@c0d3.blue>
In-Reply-To: <20210513132053.23445-1-linus.luessing@c0d3.blue>
References: <20210513132053.23445-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.2
Cc: bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>
Subject: [Bridge] [net-next v4 11/11] net: bridge: mcast: export multicast
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
 include/linux/if_bridge.h |  8 ++++++
 net/bridge/br_multicast.c | 55 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 63 insertions(+)

diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
index 2cc3503..12e9a32 100644
--- a/include/linux/if_bridge.h
+++ b/include/linux/if_bridge.h
@@ -67,6 +67,7 @@ int br_multicast_list_adjacent(struct net_device *dev,
 			       struct list_head *br_ip_list);
 bool br_multicast_has_querier_anywhere(struct net_device *dev, int proto);
 bool br_multicast_has_querier_adjacent(struct net_device *dev, int proto);
+bool br_multicast_has_router_adjacent(struct net_device *dev, int proto);
 bool br_multicast_enabled(const struct net_device *dev);
 bool br_multicast_router(const struct net_device *dev);
 int br_mdb_replay(struct net_device *br_dev, struct net_device *dev,
@@ -87,6 +88,13 @@ static inline bool br_multicast_has_querier_adjacent(struct net_device *dev,
 {
 	return false;
 }
+
+static inline bool br_multicast_has_router_adjacent(struct net_device *dev,
+						    int proto)
+{
+	return true;
+}
+
 static inline bool br_multicast_enabled(const struct net_device *dev)
 {
 	return false;
diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index f234c48..0703725 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -4054,6 +4054,61 @@ unlock:
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
+	port = br_port_get_check_rcu(dev);
+	if (!port)
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

