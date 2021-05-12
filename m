Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5717637EF7A
	for <lists.bridge@lfdr.de>; Thu, 13 May 2021 01:20:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC88E40FA2;
	Wed, 12 May 2021 23:20:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kqjDlk-F1zy2; Wed, 12 May 2021 23:20:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTP id 208A640F71;
	Wed, 12 May 2021 23:19:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 08928C0028;
	Wed, 12 May 2021 23:19:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 622EDC0001
 for <bridge@lists.linux-foundation.org>; Wed, 12 May 2021 23:19:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 32AD483AD1
 for <bridge@lists.linux-foundation.org>; Wed, 12 May 2021 23:19:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iSCenlDI8NvO for <bridge@lists.linux-foundation.org>;
 Wed, 12 May 2021 23:19:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:c2c:665b::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 476FB83A66
 for <bridge@lists.linux-foundation.org>; Wed, 12 May 2021 23:19:57 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id E09484100D; Thu, 13 May 2021 01:19:54 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Date: Thu, 13 May 2021 01:19:38 +0200
Message-Id: <20210512231941.19211-9-linus.luessing@c0d3.blue>
In-Reply-To: <20210512231941.19211-1-linus.luessing@c0d3.blue>
References: <20210512231941.19211-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.2
Cc: bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>
Subject: [Bridge] [net-next v3 08/11] net: bridge: mcast: split router port
	del+notify for mcast router split
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
their IPv4 and IPv6 variants split router port deletion and notification
into two functions. When we disable a port for instance later we want to
only send one notification to switchdev and netlink for compatibility
and want to avoid sending one for IPv4 and one for IPv6. For that the
split is needed.

Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
---
 net/bridge/br_multicast.c | 40 ++++++++++++++++++++++++++++++---------
 1 file changed, 31 insertions(+), 9 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 1d55709..01a1de4 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -60,7 +60,8 @@ static void br_ip4_multicast_leave_group(struct net_bridge *br,
 					 const unsigned char *src);
 static void br_multicast_port_group_rexmit(struct timer_list *t);
 
-static void __del_port_router(struct net_bridge_port *p);
+static void
+br_multicast_rport_del_notify(struct net_bridge_port *p, bool deleted);
 #if IS_ENABLED(CONFIG_IPV6)
 static void br_ip6_multicast_leave_group(struct net_bridge *br,
 					 struct net_bridge_port *port,
@@ -1354,11 +1355,26 @@ static int br_ip6_multicast_add_group(struct net_bridge *br,
 }
 #endif
 
+static bool br_multicast_rport_del(struct hlist_node *rlist)
+{
+	if (hlist_unhashed(rlist))
+		return false;
+
+	hlist_del_init_rcu(rlist);
+	return true;
+}
+
+static bool br_ip4_multicast_rport_del(struct net_bridge_port *p)
+{
+	return br_multicast_rport_del(&p->ip4_rlist);
+}
+
 static void br_multicast_router_expired(struct net_bridge_port *port,
 					struct timer_list *t,
 					struct hlist_node *rlist)
 {
 	struct net_bridge *br = port->br;
+	bool del;
 
 	spin_lock(&br->multicast_lock);
 	if (port->multicast_router == MDB_RTR_TYPE_DISABLED ||
@@ -1366,7 +1382,8 @@ static void br_multicast_router_expired(struct net_bridge_port *port,
 	    timer_pending(t))
 		goto out;
 
-	__del_port_router(port);
+	del = br_multicast_rport_del(rlist);
+	br_multicast_rport_del_notify(port, del);
 out:
 	spin_unlock(&br->multicast_lock);
 }
@@ -1706,19 +1723,20 @@ void br_multicast_disable_port(struct net_bridge_port *port)
 	struct net_bridge *br = port->br;
 	struct net_bridge_port_group *pg;
 	struct hlist_node *n;
+	bool del = false;
 
 	spin_lock(&br->multicast_lock);
 	hlist_for_each_entry_safe(pg, n, &port->mglist, mglist)
 		if (!(pg->flags & MDB_PG_FLAGS_PERMANENT))
 			br_multicast_find_del_pg(br, pg);
 
-	__del_port_router(port);
-
+	del |= br_ip4_multicast_rport_del(port);
 	del_timer(&port->ip4_mc_router_timer);
 	del_timer(&port->ip4_own_query.timer);
 #if IS_ENABLED(CONFIG_IPV6)
 	del_timer(&port->ip6_own_query.timer);
 #endif
+	br_multicast_rport_del_notify(port, del);
 	spin_unlock(&br->multicast_lock);
 }
 
@@ -3508,11 +3526,12 @@ int br_multicast_set_router(struct net_bridge *br, unsigned long val)
 	return err;
 }
 
-static void __del_port_router(struct net_bridge_port *p)
+static void
+br_multicast_rport_del_notify(struct net_bridge_port *p, bool deleted)
 {
-	if (hlist_unhashed(&p->ip4_rlist))
+	if (!deleted)
 		return;
-	hlist_del_init_rcu(&p->ip4_rlist);
+
 	br_rtr_notify(p->br->dev, p, RTM_DELMDB);
 	br_port_mc_router_state_change(p, false);
 
@@ -3526,6 +3545,7 @@ int br_multicast_set_port_router(struct net_bridge_port *p, unsigned long val)
 	struct net_bridge *br = p->br;
 	unsigned long now = jiffies;
 	int err = -EINVAL;
+	bool del = false;
 
 	spin_lock(&br->multicast_lock);
 	if (p->multicast_router == val) {
@@ -3539,12 +3559,14 @@ int br_multicast_set_port_router(struct net_bridge_port *p, unsigned long val)
 	switch (val) {
 	case MDB_RTR_TYPE_DISABLED:
 		p->multicast_router = MDB_RTR_TYPE_DISABLED;
-		__del_port_router(p);
+		del |= br_ip4_multicast_rport_del(p);
 		del_timer(&p->ip4_mc_router_timer);
+		br_multicast_rport_del_notify(p, del);
 		break;
 	case MDB_RTR_TYPE_TEMP_QUERY:
 		p->multicast_router = MDB_RTR_TYPE_TEMP_QUERY;
-		__del_port_router(p);
+		del |= br_ip4_multicast_rport_del(p);
+		br_multicast_rport_del_notify(p, del);
 		break;
 	case MDB_RTR_TYPE_PERM:
 		p->multicast_router = MDB_RTR_TYPE_PERM;
-- 
2.31.0

