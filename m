Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D01237782D
	for <lists.bridge@lfdr.de>; Sun,  9 May 2021 21:45:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F15D040454;
	Sun,  9 May 2021 19:45:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OR2AxQMVMhcj; Sun,  9 May 2021 19:45:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27FB840450;
	Sun,  9 May 2021 19:45:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 010DCC0001;
	Sun,  9 May 2021 19:45:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 51962C002A
 for <bridge@lists.linux-foundation.org>; Sun,  9 May 2021 19:45:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2C5F54049A
 for <bridge@lists.linux-foundation.org>; Sun,  9 May 2021 19:45:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vaUyI5Q5SR7c for <bridge@lists.linux-foundation.org>;
 Sun,  9 May 2021 19:45:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:c2c:665b::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7B1E640100
 for <bridge@lists.linux-foundation.org>; Sun,  9 May 2021 19:45:30 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 1ED773ED8B; Sun,  9 May 2021 21:45:28 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Date: Sun,  9 May 2021 21:45:05 +0200
Message-Id: <20210509194509.10849-8-linus.luessing@c0d3.blue>
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
Subject: [Bridge] [net-next v2 07/11] net: bridge: mcast: prepare add-router
	function for mcast router split
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
their IPv4 and IPv6 variants move the protocol specific router list
access to an ip4 wrapper function.

Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
---
 net/bridge/br_multicast.c | 59 +++++++++++++++++++++++++++------------
 1 file changed, 41 insertions(+), 18 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 6c844b2..839d21b 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -51,8 +51,8 @@ static const struct rhashtable_params br_sg_port_rht_params = {
 
 static void br_multicast_start_querier(struct net_bridge *br,
 				       struct bridge_mcast_own_query *query);
-static void br_multicast_add_router(struct net_bridge *br,
-				    struct net_bridge_port *port);
+static void br_ip4_multicast_add_router(struct net_bridge *br,
+					struct net_bridge_port *port);
 static void br_ip4_multicast_leave_group(struct net_bridge *br,
 					 struct net_bridge_port *port,
 					 __be32 group,
@@ -1689,7 +1689,7 @@ static void __br_multicast_enable_port(struct net_bridge_port *port)
 #endif
 	if (port->multicast_router == MDB_RTR_TYPE_PERM &&
 	    hlist_unhashed(&port->ip4_rlist))
-		br_multicast_add_router(br, port);
+		br_ip4_multicast_add_router(br, port);
 }
 
 void br_multicast_enable_port(struct net_bridge_port *port)
@@ -2659,28 +2659,51 @@ static void br_port_mc_router_state_change(struct net_bridge_port *p,
  *  and locked by br->multicast_lock and RCU
  */
 static void br_multicast_add_router(struct net_bridge *br,
-				    struct net_bridge_port *port)
+				    struct net_bridge_port *port,
+				    struct hlist_node *slot,
+				    struct hlist_node *rlist,
+				    struct hlist_head *mc_router_list)
 {
-	struct net_bridge_port *p;
-	struct hlist_node *slot = NULL;
-
-	if (!hlist_unhashed(&port->ip4_rlist))
+	if (!hlist_unhashed(rlist))
 		return;
 
-	hlist_for_each_entry(p, &br->ip4_mc_router_list, ip4_rlist) {
-		if ((unsigned long) port >= (unsigned long) p)
-			break;
-		slot = &p->ip4_rlist;
-	}
-
 	if (slot)
-		hlist_add_behind_rcu(&port->ip4_rlist, slot);
+		hlist_add_behind_rcu(rlist, slot);
 	else
-		hlist_add_head_rcu(&port->ip4_rlist, &br->ip4_mc_router_list);
+		hlist_add_head_rcu(rlist, mc_router_list);
+
 	br_rtr_notify(br->dev, port, RTM_NEWMDB);
 	br_port_mc_router_state_change(port, true);
 }
 
+struct hlist_node *
+br_ip4_multicast_get_rport_slot(struct net_bridge *br, struct net_bridge_port *port)
+{
+	struct hlist_node *slot = NULL;
+	struct net_bridge_port *p;
+
+	hlist_for_each_entry(p, &br->ip4_mc_router_list, ip4_rlist) {
+		if ((unsigned long)port >= (unsigned long)p)
+			break;
+		slot = &p->ip4_rlist;
+	}
+
+	return slot;
+}
+
+/* Add port to router_list
+ *  list is maintained ordered by pointer value
+ *  and locked by br->multicast_lock and RCU
+ */
+static void br_ip4_multicast_add_router(struct net_bridge *br,
+					struct net_bridge_port *port)
+{
+	struct hlist_node *slot = br_ip4_multicast_get_rport_slot(br, port);
+
+	br_multicast_add_router(br, port, slot, &port->ip4_rlist,
+				&br->ip4_mc_router_list);
+}
+
 static void br_multicast_mark_router(struct net_bridge *br,
 				     struct net_bridge_port *port)
 {
@@ -2700,7 +2723,7 @@ static void br_multicast_mark_router(struct net_bridge *br,
 	    port->multicast_router == MDB_RTR_TYPE_PERM)
 		return;
 
-	br_multicast_add_router(br, port);
+	br_ip4_multicast_add_router(br, port);
 
 	mod_timer(&port->ip4_mc_router_timer,
 		  now + br->multicast_querier_interval);
@@ -3526,7 +3549,7 @@ int br_multicast_set_port_router(struct net_bridge_port *p, unsigned long val)
 	case MDB_RTR_TYPE_PERM:
 		p->multicast_router = MDB_RTR_TYPE_PERM;
 		del_timer(&p->ip4_mc_router_timer);
-		br_multicast_add_router(br, p);
+		br_ip4_multicast_add_router(br, p);
 		break;
 	case MDB_RTR_TYPE_TEMP:
 		p->multicast_router = MDB_RTR_TYPE_TEMP;
-- 
2.31.0

