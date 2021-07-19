Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3F13CE733
	for <lists.bridge@lfdr.de>; Mon, 19 Jul 2021 19:10:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C90A6402F4;
	Mon, 19 Jul 2021 17:10:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QSuf-aOst5Ch; Mon, 19 Jul 2021 17:10:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 3B37C400BE;
	Mon, 19 Jul 2021 17:10:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3803AC000E;
	Mon, 19 Jul 2021 17:10:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3F545C001A
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 17:10:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6386A6059D
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 17:10:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id krSvDi2irz47 for <bridge@lists.linux-foundation.org>;
 Mon, 19 Jul 2021 17:10:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5CB9460596
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 17:10:02 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id t2so24586956edd.13
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 10:10:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pCbYGsprdytj3EvRRcODlsGbiMhI5KXaiaOiL7iXC8A=;
 b=BATEKeYNVFOns/5zOxpu8Gre53gjPPn25jva7ZVe0d2suITcTHJbNp3BkN5Y5lk3Ku
 05H56ocpECHruJhTR/Vc13f4B4K/OXVpjsibrI+7eS6OGEy18aNza8L5yFjR6m2gi0bR
 kGsxUi3FM5FbBgWuW+PSqYLHqU2wlI3eLkJMEKQaXP3fvipNOypXYP+rLVPuumeELJW2
 VXjDCkEbo3s1okxZqjfCTPUcYuxtSK/ZLFH9b+8OUtiFZ9rHAaWQiES6bKth+UJev+nu
 DbgfS5W6+vWKhgCF5X0totrfc8RKSE4x4IHQgHaaVIx2WvJdtlauO1FBvP8lD4FMEBg1
 ldiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pCbYGsprdytj3EvRRcODlsGbiMhI5KXaiaOiL7iXC8A=;
 b=O0yLSKjUcCo7yI1NDnjhV9Hkhg/niSpEOfYcxuQtPorOEM06EQBZtwALu6nZoicsuh
 fRZLu2JjzItaE24C4+WNY6JZQVxyBWqzDX5W2LTmDHF7AekaO6UQNUi6eIf02H23LAkZ
 Ek1T5AqNFIXkFi6cbO460vOJHuiNxLeLalX2scWPgX+0AoXsdqDLK662O0Y6bBcE6czX
 kSdsS8GYd1C9S/8t10cxKnFivYVKT2YbKoKtNi6ie3BN/MzG2MUL2883L72Kr7ndiYJl
 e7u8I8Ou0w6OkUbDCHMaIxAl6lRSSu1DCIs2yuiyVxixIYut2brip8R+KnE1DZTjzyK1
 NO1Q==
X-Gm-Message-State: AOAM532KI5uGEC/mIgMFmD7o0nc5Qrg/b2ZvekniVm45BfM9Uryx9JR+
 DbNhuyR7tS7EIy9oWZgMRGX+Dg==
X-Google-Smtp-Source: ABdhPJz/XzrnzG0QZEi8qFuujfY3KoPOZGWXfKJvzQVvuigc5OAgDG9ZlL7ldF4aszMKxeBG+b4K0Q==
X-Received: by 2002:a05:6402:5170:: with SMTP id
 d16mr35397594ede.300.1626714600480; 
 Mon, 19 Jul 2021 10:10:00 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id nc29sm6073896ejc.10.2021.07.19.10.09.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Jul 2021 10:10:00 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 19 Jul 2021 20:06:26 +0300
Message-Id: <20210719170637.435541-5-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210719170637.435541-1-razor@blackwall.org>
References: <20210719170637.435541-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 04/15] net: bridge: vlan: add global and
	per-port multicast context
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

Add global and per-port vlan multicast context, only initialized but
still not used. No functional changes intended.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast.c | 104 +++++++++++++++++++++++---------------
 net/bridge/br_private.h   |  38 ++++++++++++++
 net/bridge/br_vlan.c      |   4 ++
 3 files changed, 106 insertions(+), 40 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 64145e48a0a5..6f803f789217 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -80,6 +80,7 @@ __br_multicast_add_group(struct net_bridge_mcast *brmctx,
 			 bool blocked);
 static void br_multicast_find_del_pg(struct net_bridge *br,
 				     struct net_bridge_port_group *pg);
+static void __br_multicast_stop(struct net_bridge_mcast *brmctx);
 
 static struct net_bridge_port_group *
 br_sg_port_find(struct net_bridge *br,
@@ -1696,10 +1697,12 @@ static int br_mc_disabled_update(struct net_device *dev, bool value,
 	return switchdev_port_attr_set(dev, &attr, extack);
 }
 
-static void br_multicast_port_ctx_init(struct net_bridge_port *port,
-				       struct net_bridge_mcast_port *pmctx)
+void br_multicast_port_ctx_init(struct net_bridge_port *port,
+				struct net_bridge_vlan *vlan,
+				struct net_bridge_mcast_port *pmctx)
 {
 	pmctx->port = port;
+	pmctx->vlan = vlan;
 	pmctx->multicast_router = MDB_RTR_TYPE_TEMP_QUERY;
 	timer_setup(&pmctx->ip4_mc_router_timer,
 		    br_ip4_multicast_router_expired, 0);
@@ -1713,7 +1716,7 @@ static void br_multicast_port_ctx_init(struct net_bridge_port *port,
 #endif
 }
 
-static void br_multicast_port_ctx_deinit(struct net_bridge_mcast_port *pmctx)
+void br_multicast_port_ctx_deinit(struct net_bridge_mcast_port *pmctx)
 {
 #if IS_ENABLED(CONFIG_IPV6)
 	del_timer_sync(&pmctx->ip6_mc_router_timer);
@@ -1726,7 +1729,7 @@ int br_multicast_add_port(struct net_bridge_port *port)
 	int err;
 
 	port->multicast_eht_hosts_limit = BR_MCAST_DEFAULT_EHT_HOSTS_LIMIT;
-	br_multicast_port_ctx_init(port, &port->multicast_ctx);
+	br_multicast_port_ctx_init(port, NULL, &port->multicast_ctx);
 
 	err = br_mc_disabled_update(port->dev,
 				    br_opt_get(port->br,
@@ -3571,48 +3574,63 @@ static void br_multicast_gc_work(struct work_struct *work)
 	br_multicast_gc(&deleted_head);
 }
 
-void br_multicast_init(struct net_bridge *br)
+void br_multicast_ctx_init(struct net_bridge *br,
+			   struct net_bridge_vlan *vlan,
+			   struct net_bridge_mcast *brmctx)
 {
-	br->hash_max = BR_MULTICAST_DEFAULT_HASH_MAX;
+	brmctx->br = br;
+	brmctx->vlan = vlan;
+	brmctx->multicast_router = MDB_RTR_TYPE_TEMP_QUERY;
+	brmctx->multicast_last_member_count = 2;
+	brmctx->multicast_startup_query_count = 2;
 
-	br->multicast_ctx.br = br;
-	br->multicast_ctx.multicast_router = MDB_RTR_TYPE_TEMP_QUERY;
-	br->multicast_ctx.multicast_last_member_count = 2;
-	br->multicast_ctx.multicast_startup_query_count = 2;
-
-	br->multicast_ctx.multicast_last_member_interval = HZ;
-	br->multicast_ctx.multicast_query_response_interval = 10 * HZ;
-	br->multicast_ctx.multicast_startup_query_interval = 125 * HZ / 4;
-	br->multicast_ctx.multicast_query_interval = 125 * HZ;
-	br->multicast_ctx.multicast_querier_interval = 255 * HZ;
-	br->multicast_ctx.multicast_membership_interval = 260 * HZ;
-
-	br->multicast_ctx.ip4_other_query.delay_time = 0;
-	br->multicast_ctx.ip4_querier.port = NULL;
-	br->multicast_ctx.multicast_igmp_version = 2;
+	brmctx->multicast_last_member_interval = HZ;
+	brmctx->multicast_query_response_interval = 10 * HZ;
+	brmctx->multicast_startup_query_interval = 125 * HZ / 4;
+	brmctx->multicast_query_interval = 125 * HZ;
+	brmctx->multicast_querier_interval = 255 * HZ;
+	brmctx->multicast_membership_interval = 260 * HZ;
+
+	brmctx->ip4_other_query.delay_time = 0;
+	brmctx->ip4_querier.port = NULL;
+	brmctx->multicast_igmp_version = 2;
 #if IS_ENABLED(CONFIG_IPV6)
-	br->multicast_ctx.multicast_mld_version = 1;
-	br->multicast_ctx.ip6_other_query.delay_time = 0;
-	br->multicast_ctx.ip6_querier.port = NULL;
+	brmctx->multicast_mld_version = 1;
+	brmctx->ip6_other_query.delay_time = 0;
+	brmctx->ip6_querier.port = NULL;
 #endif
-	br_opt_toggle(br, BROPT_MULTICAST_ENABLED, true);
-	br_opt_toggle(br, BROPT_HAS_IPV6_ADDR, true);
 
-	spin_lock_init(&br->multicast_lock);
-	timer_setup(&br->multicast_ctx.ip4_mc_router_timer,
+	timer_setup(&brmctx->ip4_mc_router_timer,
 		    br_ip4_multicast_local_router_expired, 0);
-	timer_setup(&br->multicast_ctx.ip4_other_query.timer,
+	timer_setup(&brmctx->ip4_other_query.timer,
 		    br_ip4_multicast_querier_expired, 0);
-	timer_setup(&br->multicast_ctx.ip4_own_query.timer,
+	timer_setup(&brmctx->ip4_own_query.timer,
 		    br_ip4_multicast_query_expired, 0);
 #if IS_ENABLED(CONFIG_IPV6)
-	timer_setup(&br->multicast_ctx.ip6_mc_router_timer,
+	timer_setup(&brmctx->ip6_mc_router_timer,
 		    br_ip6_multicast_local_router_expired, 0);
-	timer_setup(&br->multicast_ctx.ip6_other_query.timer,
+	timer_setup(&brmctx->ip6_other_query.timer,
 		    br_ip6_multicast_querier_expired, 0);
-	timer_setup(&br->multicast_ctx.ip6_own_query.timer,
+	timer_setup(&brmctx->ip6_own_query.timer,
 		    br_ip6_multicast_query_expired, 0);
 #endif
+}
+
+void br_multicast_ctx_deinit(struct net_bridge_mcast *brmctx)
+{
+	__br_multicast_stop(brmctx);
+}
+
+void br_multicast_init(struct net_bridge *br)
+{
+	br->hash_max = BR_MULTICAST_DEFAULT_HASH_MAX;
+
+	br_multicast_ctx_init(br, NULL, &br->multicast_ctx);
+
+	br_opt_toggle(br, BROPT_MULTICAST_ENABLED, true);
+	br_opt_toggle(br, BROPT_HAS_IPV6_ADDR, true);
+
+	spin_lock_init(&br->multicast_lock);
 	INIT_HLIST_HEAD(&br->mdb_list);
 	INIT_HLIST_HEAD(&br->mcast_gc_list);
 	INIT_WORK(&br->mcast_gc_work, br_multicast_gc_work);
@@ -3699,18 +3717,23 @@ void br_multicast_open(struct net_bridge *br)
 #endif
 }
 
-void br_multicast_stop(struct net_bridge *br)
+static void __br_multicast_stop(struct net_bridge_mcast *brmctx)
 {
-	del_timer_sync(&br->multicast_ctx.ip4_mc_router_timer);
-	del_timer_sync(&br->multicast_ctx.ip4_other_query.timer);
-	del_timer_sync(&br->multicast_ctx.ip4_own_query.timer);
+	del_timer_sync(&brmctx->ip4_mc_router_timer);
+	del_timer_sync(&brmctx->ip4_other_query.timer);
+	del_timer_sync(&brmctx->ip4_own_query.timer);
 #if IS_ENABLED(CONFIG_IPV6)
-	del_timer_sync(&br->multicast_ctx.ip6_mc_router_timer);
-	del_timer_sync(&br->multicast_ctx.ip6_other_query.timer);
-	del_timer_sync(&br->multicast_ctx.ip6_own_query.timer);
+	del_timer_sync(&brmctx->ip6_mc_router_timer);
+	del_timer_sync(&brmctx->ip6_other_query.timer);
+	del_timer_sync(&brmctx->ip6_own_query.timer);
 #endif
 }
 
+void br_multicast_stop(struct net_bridge *br)
+{
+	__br_multicast_stop(&br->multicast_ctx);
+}
+
 void br_multicast_dev_del(struct net_bridge *br)
 {
 	struct net_bridge_mdb_entry *mp;
@@ -3723,6 +3746,7 @@ void br_multicast_dev_del(struct net_bridge *br)
 	hlist_move_list(&br->mcast_gc_list, &deleted_head);
 	spin_unlock_bh(&br->multicast_lock);
 
+	br_multicast_ctx_deinit(&br->multicast_ctx);
 	br_multicast_gc(&deleted_head);
 	cancel_work_sync(&br->mcast_gc_work);
 
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 89e942789b12..7a0d077c2c39 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -93,6 +93,7 @@ struct bridge_mcast_stats {
 struct net_bridge_mcast_port {
 #ifdef CONFIG_BRIDGE_IGMP_SNOOPING
 	struct net_bridge_port		*port;
+	struct net_bridge_vlan		*vlan;
 
 	struct bridge_mcast_own_query	ip4_own_query;
 	struct timer_list		ip4_mc_router_timer;
@@ -110,6 +111,7 @@ struct net_bridge_mcast_port {
 struct net_bridge_mcast {
 #ifdef CONFIG_BRIDGE_IGMP_SNOOPING
 	struct net_bridge		*br;
+	struct net_bridge_vlan		*vlan;
 
 	u32				multicast_last_member_count;
 	u32				multicast_startup_query_count;
@@ -165,6 +167,9 @@ enum {
  * @refcnt: if MASTER flag set, this is bumped for each port referencing it
  * @brvlan: if MASTER flag unset, this points to the global per-VLAN context
  *          for this VLAN entry
+ * @br_mcast_ctx: if MASTER flag set, this is the global vlan multicast context
+ * @port_mcast_ctx: if MASTER flag unset, this is the per-port/vlan multicast
+ *                  context
  * @vlist: sorted list of VLAN entries
  * @rcu: used for entry destruction
  *
@@ -192,6 +197,11 @@ struct net_bridge_vlan {
 
 	struct br_tunnel_info		tinfo;
 
+	union {
+		struct net_bridge_mcast		br_mcast_ctx;
+		struct net_bridge_mcast_port	port_mcast_ctx;
+	};
+
 	struct list_head		vlist;
 
 	struct rcu_head			rcu;
@@ -896,6 +906,14 @@ struct net_bridge_group_src *
 br_multicast_find_group_src(struct net_bridge_port_group *pg, struct br_ip *ip);
 void br_multicast_del_group_src(struct net_bridge_group_src *src,
 				bool fastleave);
+void br_multicast_ctx_init(struct net_bridge *br,
+			   struct net_bridge_vlan *vlan,
+			   struct net_bridge_mcast *brmctx);
+void br_multicast_ctx_deinit(struct net_bridge_mcast *brmctx);
+void br_multicast_port_ctx_init(struct net_bridge_port *port,
+				struct net_bridge_vlan *vlan,
+				struct net_bridge_mcast_port *pmctx);
+void br_multicast_port_ctx_deinit(struct net_bridge_mcast_port *pmctx);
 
 static inline bool br_group_is_l2(const struct br_ip *group)
 {
@@ -1170,6 +1188,26 @@ static inline int br_multicast_igmp_type(const struct sk_buff *skb)
 {
 	return 0;
 }
+
+static inline void br_multicast_ctx_init(struct net_bridge *br,
+					 struct net_bridge_vlan *vlan,
+					 struct net_bridge_mcast *brmctx)
+{
+}
+
+static inline void br_multicast_ctx_deinit(struct net_bridge_mcast *brmctx)
+{
+}
+
+static inline void br_multicast_port_ctx_init(struct net_bridge_port *port,
+					      struct net_bridge_vlan *vlan,
+					      struct net_bridge_mcast_port *pmctx)
+{
+}
+
+static inline void br_multicast_port_ctx_deinit(struct net_bridge_mcast_port *pmctx)
+{
+}
 #endif
 
 /* br_vlan.c */
diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index a08e9f193009..e7b7bb0a005b 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -190,6 +190,7 @@ static void br_vlan_put_master(struct net_bridge_vlan *masterv)
 		rhashtable_remove_fast(&vg->vlan_hash,
 				       &masterv->vnode, br_vlan_rht_params);
 		__vlan_del_list(masterv);
+		br_multicast_ctx_deinit(&masterv->br_mcast_ctx);
 		call_rcu(&masterv->rcu, br_master_vlan_rcu_free);
 	}
 }
@@ -280,10 +281,12 @@ static int __vlan_add(struct net_bridge_vlan *v, u16 flags,
 		} else {
 			v->stats = masterv->stats;
 		}
+		br_multicast_port_ctx_init(p, v, &v->port_mcast_ctx);
 	} else {
 		err = br_switchdev_port_vlan_add(dev, v->vid, flags, extack);
 		if (err && err != -EOPNOTSUPP)
 			goto out;
+		br_multicast_ctx_init(br, v, &v->br_mcast_ctx);
 	}
 
 	/* Add the dev mac and count the vlan only if it's usable */
@@ -374,6 +377,7 @@ static int __vlan_del(struct net_bridge_vlan *v)
 				       br_vlan_rht_params);
 		__vlan_del_list(v);
 		nbp_vlan_set_vlan_dev_state(p, v->vid);
+		br_multicast_port_ctx_deinit(&v->port_mcast_ctx);
 		call_rcu(&v->rcu, nbp_vlan_rcu_free);
 	}
 
-- 
2.31.1

