Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCCA25E673
	for <lists.bridge@lfdr.de>; Sat,  5 Sep 2020 10:25:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8440E86D5F;
	Sat,  5 Sep 2020 08:25:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id orDa56XtzUA0; Sat,  5 Sep 2020 08:25:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1044C86E08;
	Sat,  5 Sep 2020 08:25:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E461BC0052;
	Sat,  5 Sep 2020 08:25:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 084DFC088B
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:25:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E713386D58
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:25:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s8-1axkxs6Vo for <bridge@lists.linux-foundation.org>;
 Sat,  5 Sep 2020 08:25:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 639BA86DF2
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:25:04 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id c15so9621017wrs.11
 for <bridge@lists.linux-foundation.org>; Sat, 05 Sep 2020 01:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=izAbeS/CHAHnajYsN/nu0qFLOxDA/touOtvXyHdtOYA=;
 b=DPEdLcF+mxkmchXHUsCt/XRqweOBjpXyBZuymmd+iOhU80/BoucMqLs+U2dnR/tDkq
 XmjRRbd/byLPzO5lsdP+C6qvhzGRxd03OVNfOmbxi+xroDockpYINkG07qC43afCI2BD
 RpOZbhpsjPqjzw+B3sEFF/ORZGh+q86Tgv/Vs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=izAbeS/CHAHnajYsN/nu0qFLOxDA/touOtvXyHdtOYA=;
 b=o6E/5Rq1e2EEO4kMA2wbopIPU/oLdn24SXqN0TuIdSuZGKxykHQA0LU4ltN9qjR92o
 aRguL9JhihfbSsraCf//iBibl1sF0QEscEonPh+jdlZ1zX8N0+2dLPdIkPgKrLUnHXPX
 0MdcN/ZSwbO0nLOwSEhpEVIiAubDMCG5LxNteFKwrbB7s13jDfewC8IxjQI4z5raS9/k
 sFsB4TG9aoA3uJKZe0S59Gi+h/k3AfthTCDl61rvKgaZd8j/QdCb0Vu93Uq1tWSiGfdK
 kbkgt/VdtmNl+aSMiD6beX2fAYlwIcUCz/+TvD4MM++PTcf78/cIYDUI4PzAIU6XszcK
 uLRA==
X-Gm-Message-State: AOAM533yrFtbiKZHewf4qagjNlBnwaPIwyGLmmDK+e37c6lfUzglv0Ys
 +7YJkEg/ytg1FlQKdKSQVSSNQQJBreS76u/A
X-Google-Smtp-Source: ABdhPJxc/iFIBznsst9MiHatHCg9Nk67VGdJmc8DGhegzYZEIQzw5Z7+RN2y2Xkub0732AnDIGejfg==
X-Received: by 2002:a05:6000:1c4:: with SMTP id
 t4mr7163420wrx.350.1599294302887; 
 Sat, 05 Sep 2020 01:25:02 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id m185sm17169296wmf.5.2020.09.05.01.25.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Sep 2020 01:25:02 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Sat,  5 Sep 2020 11:24:10 +0300
Message-Id: <20200905082410.2230253-16-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200905082410.2230253-1-nikolay@cumulusnetworks.com>
References: <20200905082410.2230253-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v3 15/15] net: bridge: mcast: destroy all
	entries via gc
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

Since each entry type has timers that can be running simultaneously we need
to make sure that entries are not freed before their timers have finished.
In order to do that generalize the src gc work to mcast gc work and use a
callback to free the entries (mdb, port group or src).

v3: add IPv6 support
v2: force mcast gc on port del to make sure all port group timers have
    finished before freeing the bridge port

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_multicast.c | 118 +++++++++++++++++++++++++-------------
 net/bridge/br_private.h   |  13 ++++-
 2 files changed, 89 insertions(+), 42 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index f146e00cea66..b38c8f78bfa9 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -140,6 +140,29 @@ struct net_bridge_mdb_entry *br_mdb_get(struct net_bridge *br,
 	return br_mdb_ip_get_rcu(br, &ip);
 }
 
+static void br_multicast_destroy_mdb_entry(struct net_bridge_mcast_gc *gc)
+{
+	struct net_bridge_mdb_entry *mp;
+
+	mp = container_of(gc, struct net_bridge_mdb_entry, mcast_gc);
+	WARN_ON(!hlist_unhashed(&mp->mdb_node));
+	WARN_ON(mp->ports);
+
+	del_timer_sync(&mp->timer);
+	kfree_rcu(mp, rcu);
+}
+
+static void br_multicast_del_mdb_entry(struct net_bridge_mdb_entry *mp)
+{
+	struct net_bridge *br = mp->br;
+
+	rhashtable_remove_fast(&br->mdb_hash_tbl, &mp->rhnode,
+			       br_mdb_rht_params);
+	hlist_del_init_rcu(&mp->mdb_node);
+	hlist_add_head(&mp->mcast_gc.gc_node, &br->mcast_gc_list);
+	queue_work(system_long_wq, &br->mcast_gc_work);
+}
+
 static void br_multicast_group_expired(struct timer_list *t)
 {
 	struct net_bridge_mdb_entry *mp = from_timer(mp, t, timer);
@@ -153,15 +176,20 @@ static void br_multicast_group_expired(struct timer_list *t)
 
 	if (mp->ports)
 		goto out;
+	br_multicast_del_mdb_entry(mp);
+out:
+	spin_unlock(&br->multicast_lock);
+}
 
-	rhashtable_remove_fast(&br->mdb_hash_tbl, &mp->rhnode,
-			       br_mdb_rht_params);
-	hlist_del_rcu(&mp->mdb_node);
+static void br_multicast_destroy_group_src(struct net_bridge_mcast_gc *gc)
+{
+	struct net_bridge_group_src *src;
 
-	kfree_rcu(mp, rcu);
+	src = container_of(gc, struct net_bridge_group_src, mcast_gc);
+	WARN_ON(!hlist_unhashed(&src->node));
 
-out:
-	spin_unlock(&br->multicast_lock);
+	del_timer_sync(&src->timer);
+	kfree_rcu(src, rcu);
 }
 
 static void br_multicast_del_group_src(struct net_bridge_group_src *src)
@@ -170,8 +198,21 @@ static void br_multicast_del_group_src(struct net_bridge_group_src *src)
 
 	hlist_del_init_rcu(&src->node);
 	src->pg->src_ents--;
-	hlist_add_head(&src->del_node, &br->src_gc_list);
-	queue_work(system_long_wq, &br->src_gc_work);
+	hlist_add_head(&src->mcast_gc.gc_node, &br->mcast_gc_list);
+	queue_work(system_long_wq, &br->mcast_gc_work);
+}
+
+static void br_multicast_destroy_port_group(struct net_bridge_mcast_gc *gc)
+{
+	struct net_bridge_port_group *pg;
+
+	pg = container_of(gc, struct net_bridge_port_group, mcast_gc);
+	WARN_ON(!hlist_unhashed(&pg->mglist));
+	WARN_ON(!hlist_empty(&pg->src_list));
+
+	del_timer_sync(&pg->rexmit_timer);
+	del_timer_sync(&pg->timer);
+	kfree_rcu(pg, rcu);
 }
 
 void br_multicast_del_pg(struct net_bridge_mdb_entry *mp,
@@ -184,12 +225,11 @@ void br_multicast_del_pg(struct net_bridge_mdb_entry *mp,
 
 	rcu_assign_pointer(*pp, pg->next);
 	hlist_del_init(&pg->mglist);
-	del_timer(&pg->timer);
-	del_timer(&pg->rexmit_timer);
 	hlist_for_each_entry_safe(ent, tmp, &pg->src_list, node)
 		br_multicast_del_group_src(ent);
 	br_mdb_notify(br->dev, mp, pg, RTM_DELMDB);
-	kfree_rcu(pg, rcu);
+	hlist_add_head(&pg->mcast_gc.gc_node, &br->mcast_gc_list);
+	queue_work(system_long_wq, &br->mcast_gc_work);
 
 	if (!mp->ports && !mp->host_joined && netif_running(br->dev))
 		mod_timer(&mp->timer, jiffies);
@@ -254,6 +294,17 @@ static void br_multicast_port_group_expired(struct timer_list *t)
 	spin_unlock(&br->multicast_lock);
 }
 
+static void br_multicast_gc(struct hlist_head *head)
+{
+	struct net_bridge_mcast_gc *gcent;
+	struct hlist_node *tmp;
+
+	hlist_for_each_entry_safe(gcent, tmp, head, gc_node) {
+		hlist_del_init(&gcent->gc_node);
+		gcent->destroy(gcent);
+	}
+}
+
 static struct sk_buff *br_ip4_multicast_alloc_query(struct net_bridge *br,
 						    struct net_bridge_port_group *pg,
 						    __be32 ip_dst, __be32 group,
@@ -622,6 +673,7 @@ struct net_bridge_mdb_entry *br_multicast_new_group(struct net_bridge *br,
 
 	mp->br = br;
 	mp->addr = *group;
+	mp->mcast_gc.destroy = br_multicast_destroy_mdb_entry;
 	timer_setup(&mp->timer, br_multicast_group_expired, 0);
 	err = rhashtable_lookup_insert_fast(&br->mdb_hash_tbl, &mp->rhnode,
 					    br_mdb_rht_params);
@@ -710,6 +762,7 @@ br_multicast_new_group_src(struct net_bridge_port_group *pg, struct br_ip *src_i
 	grp_src->pg = pg;
 	grp_src->br = pg->port->br;
 	grp_src->addr = *src_ip;
+	grp_src->mcast_gc.destroy = br_multicast_destroy_group_src;
 	timer_setup(&grp_src->timer, br_multicast_group_src_expired, 0);
 
 	hlist_add_head_rcu(&grp_src->node, &pg->src_list);
@@ -736,6 +789,7 @@ struct net_bridge_port_group *br_multicast_new_port_group(
 	p->port = port;
 	p->flags = flags;
 	p->filter_mode = filter_mode;
+	p->mcast_gc.destroy = br_multicast_destroy_port_group;
 	INIT_HLIST_HEAD(&p->src_list);
 	rcu_assign_pointer(p->next, next);
 	timer_setup(&p->timer, br_multicast_port_group_expired, 0);
@@ -1165,13 +1219,16 @@ void br_multicast_del_port(struct net_bridge_port *port)
 {
 	struct net_bridge *br = port->br;
 	struct net_bridge_port_group *pg;
+	HLIST_HEAD(deleted_head);
 	struct hlist_node *n;
 
 	/* Take care of the remaining groups, only perm ones should be left */
 	spin_lock_bh(&br->multicast_lock);
 	hlist_for_each_entry_safe(pg, n, &port->mglist, mglist)
 		br_multicast_find_del_pg(br, pg);
+	hlist_move_list(&br->mcast_gc_list, &deleted_head);
 	spin_unlock_bh(&br->multicast_lock);
+	br_multicast_gc(&deleted_head);
 	del_timer_sync(&port->multicast_router_timer);
 	free_percpu(port->mcast_stats);
 }
@@ -2734,29 +2791,17 @@ static void br_ip6_multicast_query_expired(struct timer_list *t)
 }
 #endif
 
-static void __grp_src_gc(struct hlist_head *head)
-{
-	struct net_bridge_group_src *ent;
-	struct hlist_node *tmp;
-
-	hlist_for_each_entry_safe(ent, tmp, head, del_node) {
-		hlist_del_init(&ent->del_node);
-		del_timer_sync(&ent->timer);
-		kfree_rcu(ent, rcu);
-	}
-}
-
-static void br_multicast_src_gc(struct work_struct *work)
+static void br_multicast_gc_work(struct work_struct *work)
 {
 	struct net_bridge *br = container_of(work, struct net_bridge,
-					     src_gc_work);
+					     mcast_gc_work);
 	HLIST_HEAD(deleted_head);
 
 	spin_lock_bh(&br->multicast_lock);
-	hlist_move_list(&br->src_gc_list, &deleted_head);
+	hlist_move_list(&br->mcast_gc_list, &deleted_head);
 	spin_unlock_bh(&br->multicast_lock);
 
-	__grp_src_gc(&deleted_head);
+	br_multicast_gc(&deleted_head);
 }
 
 void br_multicast_init(struct net_bridge *br)
@@ -2799,8 +2844,8 @@ void br_multicast_init(struct net_bridge *br)
 		    br_ip6_multicast_query_expired, 0);
 #endif
 	INIT_HLIST_HEAD(&br->mdb_list);
-	INIT_HLIST_HEAD(&br->src_gc_list);
-	INIT_WORK(&br->src_gc_work, br_multicast_src_gc);
+	INIT_HLIST_HEAD(&br->mcast_gc_list);
+	INIT_WORK(&br->mcast_gc_work, br_multicast_gc_work);
 }
 
 static void br_ip4_multicast_join_snoopers(struct net_bridge *br)
@@ -2908,18 +2953,13 @@ void br_multicast_dev_del(struct net_bridge *br)
 	struct hlist_node *tmp;
 
 	spin_lock_bh(&br->multicast_lock);
-	hlist_for_each_entry_safe(mp, tmp, &br->mdb_list, mdb_node) {
-		del_timer(&mp->timer);
-		rhashtable_remove_fast(&br->mdb_hash_tbl, &mp->rhnode,
-				       br_mdb_rht_params);
-		hlist_del_rcu(&mp->mdb_node);
-		kfree_rcu(mp, rcu);
-	}
-	hlist_move_list(&br->src_gc_list, &deleted_head);
+	hlist_for_each_entry_safe(mp, tmp, &br->mdb_list, mdb_node)
+		br_multicast_del_mdb_entry(mp);
+	hlist_move_list(&br->mcast_gc_list, &deleted_head);
 	spin_unlock_bh(&br->multicast_lock);
 
-	__grp_src_gc(&deleted_head);
-	cancel_work_sync(&br->src_gc_work);
+	br_multicast_gc(&deleted_head);
+	cancel_work_sync(&br->mcast_gc_work);
 
 	rcu_barrier();
 }
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index fb35a73fc559..a23d2bae56e1 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -219,6 +219,11 @@ struct net_bridge_fdb_entry {
 #define BR_SGRP_F_DELETE	BIT(0)
 #define BR_SGRP_F_SEND		BIT(1)
 
+struct net_bridge_mcast_gc {
+	struct hlist_node		gc_node;
+	void				(*destroy)(struct net_bridge_mcast_gc *gc);
+};
+
 struct net_bridge_group_src {
 	struct hlist_node		node;
 
@@ -229,7 +234,7 @@ struct net_bridge_group_src {
 	struct timer_list		timer;
 
 	struct net_bridge		*br;
-	struct hlist_node		del_node;
+	struct net_bridge_mcast_gc	mcast_gc;
 	struct rcu_head			rcu;
 };
 
@@ -248,6 +253,7 @@ struct net_bridge_port_group {
 	struct timer_list		rexmit_timer;
 	struct hlist_node		mglist;
 
+	struct net_bridge_mcast_gc	mcast_gc;
 	struct rcu_head			rcu;
 };
 
@@ -261,6 +267,7 @@ struct net_bridge_mdb_entry {
 	struct timer_list		timer;
 	struct hlist_node		mdb_node;
 
+	struct net_bridge_mcast_gc	mcast_gc;
 	struct rcu_head			rcu;
 };
 
@@ -434,7 +441,7 @@ struct net_bridge {
 
 	struct rhashtable		mdb_hash_tbl;
 
-	struct hlist_head		src_gc_list;
+	struct hlist_head		mcast_gc_list;
 	struct hlist_head		mdb_list;
 	struct hlist_head		router_list;
 
@@ -448,7 +455,7 @@ struct net_bridge {
 	struct bridge_mcast_own_query	ip6_own_query;
 	struct bridge_mcast_querier	ip6_querier;
 #endif /* IS_ENABLED(CONFIG_IPV6) */
-	struct work_struct		src_gc_work;
+	struct work_struct		mcast_gc_work;
 #endif
 
 	struct timer_list		hello_timer;
-- 
2.25.4

