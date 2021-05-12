Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C5937EF73
	for <lists.bridge@lfdr.de>; Thu, 13 May 2021 01:19:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B6CE383A5C;
	Wed, 12 May 2021 23:19:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cbB9V-Gr-9Cw; Wed, 12 May 2021 23:19:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1088983A82;
	Wed, 12 May 2021 23:19:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 215A4C0029;
	Wed, 12 May 2021 23:19:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 43204C0001
 for <bridge@lists.linux-foundation.org>; Wed, 12 May 2021 23:19:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 31AAE403C2
 for <bridge@lists.linux-foundation.org>; Wed, 12 May 2021 23:19:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NzesXG07w5eQ for <bridge@lists.linux-foundation.org>;
 Wed, 12 May 2021 23:19:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C1EB74039F
 for <bridge@lists.linux-foundation.org>; Wed, 12 May 2021 23:19:50 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id F06FC3ED8D; Thu, 13 May 2021 01:19:46 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Date: Thu, 13 May 2021 01:19:31 +0200
Message-Id: <20210512231941.19211-2-linus.luessing@c0d3.blue>
In-Reply-To: <20210512231941.19211-1-linus.luessing@c0d3.blue>
References: <20210512231941.19211-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.2
Cc: bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>
Subject: [Bridge] [net-next v3 01/11] net: bridge: mcast: rename multicast
	router lists and timers
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
their IPv4 and IPv6 variants, rename the affected variable to the IPv4
version first to avoid some renames in later commits.

Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
---
 net/bridge/br_forward.c   |  4 ++--
 net/bridge/br_mdb.c       |  6 ++---
 net/bridge/br_multicast.c | 48 +++++++++++++++++++--------------------
 net/bridge/br_private.h   | 10 ++++----
 4 files changed, 34 insertions(+), 34 deletions(-)

diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
index 6e9b049..eb9847a 100644
--- a/net/bridge/br_forward.c
+++ b/net/bridge/br_forward.c
@@ -276,7 +276,7 @@ void br_multicast_flood(struct net_bridge_mdb_entry *mdst,
 	bool allow_mode_include = true;
 	struct hlist_node *rp;
 
-	rp = rcu_dereference(hlist_first_rcu(&br->router_list));
+	rp = rcu_dereference(hlist_first_rcu(&br->ip4_mc_router_list));
 	if (mdst) {
 		p = rcu_dereference(mdst->ports);
 		if (br_multicast_should_handle_mode(br, mdst->addr.proto) &&
@@ -290,7 +290,7 @@ void br_multicast_flood(struct net_bridge_mdb_entry *mdst,
 		struct net_bridge_port *port, *lport, *rport;
 
 		lport = p ? p->key.port : NULL;
-		rport = hlist_entry_safe(rp, struct net_bridge_port, rlist);
+		rport = hlist_entry_safe(rp, struct net_bridge_port, ip4_rlist);
 
 		if ((unsigned long)lport > (unsigned long)rport) {
 			port = lport;
diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 95fa4af..d61def8 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -23,14 +23,14 @@ static int br_rports_fill_info(struct sk_buff *skb, struct netlink_callback *cb,
 	struct net_bridge_port *p;
 	struct nlattr *nest, *port_nest;
 
-	if (!br->multicast_router || hlist_empty(&br->router_list))
+	if (!br->multicast_router || hlist_empty(&br->ip4_mc_router_list))
 		return 0;
 
 	nest = nla_nest_start_noflag(skb, MDBA_ROUTER);
 	if (nest == NULL)
 		return -EMSGSIZE;
 
-	hlist_for_each_entry_rcu(p, &br->router_list, rlist) {
+	hlist_for_each_entry_rcu(p, &br->ip4_mc_router_list, ip4_rlist) {
 		if (!p)
 			continue;
 		port_nest = nla_nest_start_noflag(skb, MDBA_ROUTER_PORT);
@@ -38,7 +38,7 @@ static int br_rports_fill_info(struct sk_buff *skb, struct netlink_callback *cb,
 			goto fail;
 		if (nla_put_nohdr(skb, sizeof(u32), &p->dev->ifindex) ||
 		    nla_put_u32(skb, MDBA_ROUTER_PATTR_TIMER,
-				br_timer_value(&p->multicast_router_timer)) ||
+				br_timer_value(&p->ip4_mc_router_timer)) ||
 		    nla_put_u8(skb, MDBA_ROUTER_PATTR_TYPE,
 			       p->multicast_router)) {
 			nla_nest_cancel(skb, port_nest);
diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 226bb05..6fe93a3 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1357,13 +1357,13 @@ static int br_ip6_multicast_add_group(struct net_bridge *br,
 static void br_multicast_router_expired(struct timer_list *t)
 {
 	struct net_bridge_port *port =
-			from_timer(port, t, multicast_router_timer);
+			from_timer(port, t, ip4_mc_router_timer);
 	struct net_bridge *br = port->br;
 
 	spin_lock(&br->multicast_lock);
 	if (port->multicast_router == MDB_RTR_TYPE_DISABLED ||
 	    port->multicast_router == MDB_RTR_TYPE_PERM ||
-	    timer_pending(&port->multicast_router_timer))
+	    timer_pending(&port->ip4_mc_router_timer))
 		goto out;
 
 	__del_port_router(port);
@@ -1386,12 +1386,12 @@ static void br_mc_router_state_change(struct net_bridge *p,
 
 static void br_multicast_local_router_expired(struct timer_list *t)
 {
-	struct net_bridge *br = from_timer(br, t, multicast_router_timer);
+	struct net_bridge *br = from_timer(br, t, ip4_mc_router_timer);
 
 	spin_lock(&br->multicast_lock);
 	if (br->multicast_router == MDB_RTR_TYPE_DISABLED ||
 	    br->multicast_router == MDB_RTR_TYPE_PERM ||
-	    timer_pending(&br->multicast_router_timer))
+	    timer_pending(&br->ip4_mc_router_timer))
 		goto out;
 
 	br_mc_router_state_change(br, false);
@@ -1613,7 +1613,7 @@ int br_multicast_add_port(struct net_bridge_port *port)
 	port->multicast_router = MDB_RTR_TYPE_TEMP_QUERY;
 	port->multicast_eht_hosts_limit = BR_MCAST_DEFAULT_EHT_HOSTS_LIMIT;
 
-	timer_setup(&port->multicast_router_timer,
+	timer_setup(&port->ip4_mc_router_timer,
 		    br_multicast_router_expired, 0);
 	timer_setup(&port->ip4_own_query.timer,
 		    br_ip4_multicast_port_query_expired, 0);
@@ -1649,7 +1649,7 @@ void br_multicast_del_port(struct net_bridge_port *port)
 	hlist_move_list(&br->mcast_gc_list, &deleted_head);
 	spin_unlock_bh(&br->multicast_lock);
 	br_multicast_gc(&deleted_head);
-	del_timer_sync(&port->multicast_router_timer);
+	del_timer_sync(&port->ip4_mc_router_timer);
 	free_percpu(port->mcast_stats);
 }
 
@@ -1674,7 +1674,7 @@ static void __br_multicast_enable_port(struct net_bridge_port *port)
 	br_multicast_enable(&port->ip6_own_query);
 #endif
 	if (port->multicast_router == MDB_RTR_TYPE_PERM &&
-	    hlist_unhashed(&port->rlist))
+	    hlist_unhashed(&port->ip4_rlist))
 		br_multicast_add_router(br, port);
 }
 
@@ -1700,7 +1700,7 @@ void br_multicast_disable_port(struct net_bridge_port *port)
 
 	__del_port_router(port);
 
-	del_timer(&port->multicast_router_timer);
+	del_timer(&port->ip4_mc_router_timer);
 	del_timer(&port->ip4_own_query.timer);
 #if IS_ENABLED(CONFIG_IPV6)
 	del_timer(&port->ip6_own_query.timer);
@@ -2666,19 +2666,19 @@ static void br_multicast_add_router(struct net_bridge *br,
 	struct net_bridge_port *p;
 	struct hlist_node *slot = NULL;
 
-	if (!hlist_unhashed(&port->rlist))
+	if (!hlist_unhashed(&port->ip4_rlist))
 		return;
 
-	hlist_for_each_entry(p, &br->router_list, rlist) {
+	hlist_for_each_entry(p, &br->ip4_mc_router_list, ip4_rlist) {
 		if ((unsigned long) port >= (unsigned long) p)
 			break;
-		slot = &p->rlist;
+		slot = &p->ip4_rlist;
 	}
 
 	if (slot)
-		hlist_add_behind_rcu(&port->rlist, slot);
+		hlist_add_behind_rcu(&port->ip4_rlist, slot);
 	else
-		hlist_add_head_rcu(&port->rlist, &br->router_list);
+		hlist_add_head_rcu(&port->ip4_rlist, &br->ip4_mc_router_list);
 	br_rtr_notify(br->dev, port, RTM_NEWMDB);
 	br_port_mc_router_state_change(port, true);
 }
@@ -2690,9 +2690,9 @@ static void br_multicast_mark_router(struct net_bridge *br,
 
 	if (!port) {
 		if (br->multicast_router == MDB_RTR_TYPE_TEMP_QUERY) {
-			if (!timer_pending(&br->multicast_router_timer))
+			if (!timer_pending(&br->ip4_mc_router_timer))
 				br_mc_router_state_change(br, true);
-			mod_timer(&br->multicast_router_timer,
+			mod_timer(&br->ip4_mc_router_timer,
 				  now + br->multicast_querier_interval);
 		}
 		return;
@@ -2704,7 +2704,7 @@ static void br_multicast_mark_router(struct net_bridge *br,
 
 	br_multicast_add_router(br, port);
 
-	mod_timer(&port->multicast_router_timer,
+	mod_timer(&port->ip4_mc_router_timer,
 		  now + br->multicast_querier_interval);
 }
 
@@ -3316,7 +3316,7 @@ void br_multicast_init(struct net_bridge *br)
 	br_opt_toggle(br, BROPT_HAS_IPV6_ADDR, true);
 
 	spin_lock_init(&br->multicast_lock);
-	timer_setup(&br->multicast_router_timer,
+	timer_setup(&br->ip4_mc_router_timer,
 		    br_multicast_local_router_expired, 0);
 	timer_setup(&br->ip4_other_query.timer,
 		    br_ip4_multicast_querier_expired, 0);
@@ -3416,7 +3416,7 @@ void br_multicast_open(struct net_bridge *br)
 
 void br_multicast_stop(struct net_bridge *br)
 {
-	del_timer_sync(&br->multicast_router_timer);
+	del_timer_sync(&br->ip4_mc_router_timer);
 	del_timer_sync(&br->ip4_other_query.timer);
 	del_timer_sync(&br->ip4_own_query.timer);
 #if IS_ENABLED(CONFIG_IPV6)
@@ -3453,7 +3453,7 @@ int br_multicast_set_router(struct net_bridge *br, unsigned long val)
 	case MDB_RTR_TYPE_DISABLED:
 	case MDB_RTR_TYPE_PERM:
 		br_mc_router_state_change(br, val == MDB_RTR_TYPE_PERM);
-		del_timer(&br->multicast_router_timer);
+		del_timer(&br->ip4_mc_router_timer);
 		br->multicast_router = val;
 		err = 0;
 		break;
@@ -3472,9 +3472,9 @@ int br_multicast_set_router(struct net_bridge *br, unsigned long val)
 
 static void __del_port_router(struct net_bridge_port *p)
 {
-	if (hlist_unhashed(&p->rlist))
+	if (hlist_unhashed(&p->ip4_rlist))
 		return;
-	hlist_del_init_rcu(&p->rlist);
+	hlist_del_init_rcu(&p->ip4_rlist);
 	br_rtr_notify(p->br->dev, p, RTM_DELMDB);
 	br_port_mc_router_state_change(p, false);
 
@@ -3493,7 +3493,7 @@ int br_multicast_set_port_router(struct net_bridge_port *p, unsigned long val)
 	if (p->multicast_router == val) {
 		/* Refresh the temp router port timer */
 		if (p->multicast_router == MDB_RTR_TYPE_TEMP)
-			mod_timer(&p->multicast_router_timer,
+			mod_timer(&p->ip4_mc_router_timer,
 				  now + br->multicast_querier_interval);
 		err = 0;
 		goto unlock;
@@ -3502,7 +3502,7 @@ int br_multicast_set_port_router(struct net_bridge_port *p, unsigned long val)
 	case MDB_RTR_TYPE_DISABLED:
 		p->multicast_router = MDB_RTR_TYPE_DISABLED;
 		__del_port_router(p);
-		del_timer(&p->multicast_router_timer);
+		del_timer(&p->ip4_mc_router_timer);
 		break;
 	case MDB_RTR_TYPE_TEMP_QUERY:
 		p->multicast_router = MDB_RTR_TYPE_TEMP_QUERY;
@@ -3510,7 +3510,7 @@ int br_multicast_set_port_router(struct net_bridge_port *p, unsigned long val)
 		break;
 	case MDB_RTR_TYPE_PERM:
 		p->multicast_router = MDB_RTR_TYPE_PERM;
-		del_timer(&p->multicast_router_timer);
+		del_timer(&p->ip4_mc_router_timer);
 		br_multicast_add_router(br, p);
 		break;
 	case MDB_RTR_TYPE_TEMP:
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 7ce8a77..26e91d2 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -307,6 +307,8 @@ struct net_bridge_port {
 
 #ifdef CONFIG_BRIDGE_IGMP_SNOOPING
 	struct bridge_mcast_own_query	ip4_own_query;
+	struct timer_list		ip4_mc_router_timer;
+	struct hlist_node		ip4_rlist;
 #if IS_ENABLED(CONFIG_IPV6)
 	struct bridge_mcast_own_query	ip6_own_query;
 #endif /* IS_ENABLED(CONFIG_IPV6) */
@@ -314,9 +316,7 @@ struct net_bridge_port {
 	u32				multicast_eht_hosts_cnt;
 	unsigned char			multicast_router;
 	struct bridge_mcast_stats	__percpu *mcast_stats;
-	struct timer_list		multicast_router_timer;
 	struct hlist_head		mglist;
-	struct hlist_node		rlist;
 #endif
 
 #ifdef CONFIG_SYSFS
@@ -449,9 +449,9 @@ struct net_bridge {
 
 	struct hlist_head		mcast_gc_list;
 	struct hlist_head		mdb_list;
-	struct hlist_head		router_list;
 
-	struct timer_list		multicast_router_timer;
+	struct hlist_head		ip4_mc_router_list;
+	struct timer_list		ip4_mc_router_timer;
 	struct bridge_mcast_other_query	ip4_other_query;
 	struct bridge_mcast_own_query	ip4_own_query;
 	struct bridge_mcast_querier	ip4_querier;
@@ -868,7 +868,7 @@ static inline bool br_multicast_is_router(struct net_bridge *br)
 {
 	return br->multicast_router == 2 ||
 	       (br->multicast_router == 1 &&
-		timer_pending(&br->multicast_router_timer));
+		timer_pending(&br->ip4_mc_router_timer));
 }
 
 static inline bool
-- 
2.31.0

