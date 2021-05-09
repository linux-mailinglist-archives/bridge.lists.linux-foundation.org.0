Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1A637782A
	for <lists.bridge@lfdr.de>; Sun,  9 May 2021 21:45:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 08E1A4047C;
	Sun,  9 May 2021 19:45:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eoBXhWS5vxxJ; Sun,  9 May 2021 19:45:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTP id E37C440460;
	Sun,  9 May 2021 19:45:31 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B92F3C002B;
	Sun,  9 May 2021 19:45:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 610E4C0001
 for <bridge@lists.linux-foundation.org>; Sun,  9 May 2021 19:45:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4ACAF607A2
 for <bridge@lists.linux-foundation.org>; Sun,  9 May 2021 19:45:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b4cbULknxZJD for <bridge@lists.linux-foundation.org>;
 Sun,  9 May 2021 19:45:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8BCF560667
 for <bridge@lists.linux-foundation.org>; Sun,  9 May 2021 19:45:29 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 2EF053EDE1; Sun,  9 May 2021 21:45:27 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Date: Sun,  9 May 2021 21:45:04 +0200
Message-Id: <20210509194509.10849-7-linus.luessing@c0d3.blue>
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
Subject: [Bridge] [net-next v2 06/11] net: bridge: mcast: prepare expiry
	functions for mcast router split
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
their IPv4 and IPv6 variants move the protocol specific timer access to
an ip4 wrapper function.

Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
---
 net/bridge/br_multicast.c | 31 ++++++++++++++++++++++---------
 1 file changed, 22 insertions(+), 9 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 048b5b9..6c844b2 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1354,16 +1354,16 @@ static int br_ip6_multicast_add_group(struct net_bridge *br,
 }
 #endif
 
-static void br_multicast_router_expired(struct timer_list *t)
+static void br_multicast_router_expired(struct net_bridge_port *port,
+					struct timer_list *t,
+					struct hlist_node *rlist)
 {
-	struct net_bridge_port *port =
-			from_timer(port, t, ip4_mc_router_timer);
 	struct net_bridge *br = port->br;
 
 	spin_lock(&br->multicast_lock);
 	if (port->multicast_router == MDB_RTR_TYPE_DISABLED ||
 	    port->multicast_router == MDB_RTR_TYPE_PERM ||
-	    timer_pending(&port->ip4_mc_router_timer))
+	    timer_pending(t))
 		goto out;
 
 	__del_port_router(port);
@@ -1371,6 +1371,13 @@ out:
 	spin_unlock(&br->multicast_lock);
 }
 
+static void br_ip4_multicast_router_expired(struct timer_list *t)
+{
+	struct net_bridge_port *port = from_timer(port, t, ip4_mc_router_timer);
+
+	br_multicast_router_expired(port, t, &port->ip4_rlist);
+}
+
 static void br_mc_router_state_change(struct net_bridge *p,
 				      bool is_mc_router)
 {
@@ -1384,10 +1391,9 @@ static void br_mc_router_state_change(struct net_bridge *p,
 	switchdev_port_attr_set(p->dev, &attr, NULL);
 }
 
-static void br_multicast_local_router_expired(struct timer_list *t)
+static void br_multicast_local_router_expired(struct net_bridge *br,
+					      struct timer_list *timer)
 {
-	struct net_bridge *br = from_timer(br, t, ip4_mc_router_timer);
-
 	spin_lock(&br->multicast_lock);
 	if (br->multicast_router == MDB_RTR_TYPE_DISABLED ||
 	    br->multicast_router == MDB_RTR_TYPE_PERM ||
@@ -1400,6 +1406,13 @@ out:
 	spin_unlock(&br->multicast_lock);
 }
 
+static inline void br_ip4_multicast_local_router_expired(struct timer_list *t)
+{
+	struct net_bridge *br = from_timer(br, t, ip4_mc_router_timer);
+
+	br_multicast_local_router_expired(br, t);
+}
+
 static void br_multicast_querier_expired(struct net_bridge *br,
 					 struct bridge_mcast_own_query *query)
 {
@@ -1615,7 +1628,7 @@ int br_multicast_add_port(struct net_bridge_port *port)
 	port->multicast_eht_hosts_limit = BR_MCAST_DEFAULT_EHT_HOSTS_LIMIT;
 
 	timer_setup(&port->ip4_mc_router_timer,
-		    br_multicast_router_expired, 0);
+		    br_ip4_multicast_router_expired, 0);
 	timer_setup(&port->ip4_own_query.timer,
 		    br_ip4_multicast_port_query_expired, 0);
 #if IS_ENABLED(CONFIG_IPV6)
@@ -3319,7 +3332,7 @@ void br_multicast_init(struct net_bridge *br)
 
 	spin_lock_init(&br->multicast_lock);
 	timer_setup(&br->ip4_mc_router_timer,
-		    br_multicast_local_router_expired, 0);
+		    br_ip4_multicast_local_router_expired, 0);
 	timer_setup(&br->ip4_other_query.timer,
 		    br_ip4_multicast_querier_expired, 0);
 	timer_setup(&br->ip4_own_query.timer,
-- 
2.31.0

