Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD8625E664
	for <lists.bridge@lfdr.de>; Sat,  5 Sep 2020 10:24:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8787F86995;
	Sat,  5 Sep 2020 08:24:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JY18pO8edbl1; Sat,  5 Sep 2020 08:24:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 96E8A86697;
	Sat,  5 Sep 2020 08:24:47 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7D6F1C0052;
	Sat,  5 Sep 2020 08:24:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4A77AC089E
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:24:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2CC4E87432
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:24:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ns-MrZ9LGO2y for <bridge@lists.linux-foundation.org>;
 Sat,  5 Sep 2020 08:24:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B632487368
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:24:44 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id w5so9656334wrp.8
 for <bridge@lists.linux-foundation.org>; Sat, 05 Sep 2020 01:24:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jbe6fOkXG8Qi10AzfGWeiBzKQuCe65doQ2iIXSBSSx4=;
 b=CcbJbETYxVWF4r7LJNb6rlqzW0LODYUVl7EdY5+9er4GI2jhtxBNL7/YGKuC0Rbd8H
 YCesL1HsMj64HOKRCCZFky6fR3iesgo7inkxVfbWqSBOBT2rHNN2dP+oe6Mvndc61BHO
 +UaJ1hguZ2SU8h1vXfwYog5yFOtfuhuZryhQ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jbe6fOkXG8Qi10AzfGWeiBzKQuCe65doQ2iIXSBSSx4=;
 b=Rv36gULeTzCPiwbyZrmIlpiwGbkQnousYSEbzi8jzMGGM6WrfhSjAqZ9uJzBSe8egn
 SpkuQmNHzjan2HhjfAQFRYRoCag1BwtfWTyYdv9ODLWJTLUXy6J3plnEGbAmmsmn77FV
 q89m2g0OKIz1RBsiOYUDOVC4IMqhXKQs6ne/FaEYzQZSu3n+raCfEQ1vXObVwvLQp+p7
 L07pJpUzU34t1UXKzg8Zcbh6F3bDY53dKvrjaLJjxc2UbtE8C+gGxa2M8oedS1Hyqkw/
 AwR7Vy8dCZVV6F//rLnGOK9KVrnC6dSMVZ8iy6LzS/dg6/GzRyOgPPH6/7YevngKn+4F
 2/vg==
X-Gm-Message-State: AOAM532cDjICdQLYZqiTBRmO+zbTh/d8A7FXgFk6Qjt0Mf2BB9P95G8d
 yRYZjfWKkTQH/mHbtvPaH1Pd/w==
X-Google-Smtp-Source: ABdhPJx9UnK3sd9/hWXXGKe9JEfX/6N7nz8ffCBz1hMBez+BOjsj/2Ld7rvAUExYotjhh/p72GDRnQ==
X-Received: by 2002:a05:6000:1c4:: with SMTP id
 t4mr7162295wrx.350.1599294282958; 
 Sat, 05 Sep 2020 01:24:42 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id m185sm17169296wmf.5.2020.09.05.01.24.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Sep 2020 01:24:42 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Sat,  5 Sep 2020 11:23:57 +0300
Message-Id: <20200905082410.2230253-3-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200905082410.2230253-1-nikolay@cumulusnetworks.com>
References: <20200905082410.2230253-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v3 02/15] net: bridge: mcast: add support
	for group source list
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

Initial functions for group source lists which are needed for IGMPv3
and MLDv2 include/exclude lists. Both IPv4 and IPv6 sources are supported.
User-added mdb entries are created with exclude filter mode, we can
extend that later to allow user-supplied mode. When group src entries
are deleted, they're freed from a workqueue to make sure their timers
are not still running. Source entries are protected by the multicast_lock
and rcu. The number of src groups per port group is limited to 32.

v3: add IPv6 support
v2: allow src groups to be traversed under rcu

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_mdb.c       |   8 +-
 net/bridge/br_multicast.c | 149 ++++++++++++++++++++++++++++++++++++--
 net/bridge/br_private.h   |  26 ++++++-
 3 files changed, 176 insertions(+), 7 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index da5ed4cf9233..a7cb2710902e 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -638,7 +638,8 @@ static int br_mdb_add_group(struct net_bridge *br, struct net_bridge_port *port,
 			break;
 	}
 
-	p = br_multicast_new_port_group(port, group, *pp, state, NULL);
+	p = br_multicast_new_port_group(port, group, *pp, state, NULL,
+					MCAST_EXCLUDE);
 	if (unlikely(!p))
 		return -ENOMEM;
 	rcu_assign_pointer(*pp, p);
@@ -761,6 +762,11 @@ static int __br_mdb_del(struct net_bridge *br, struct br_mdb_entry *entry)
 		if (!p->port || p->port->dev->ifindex != entry->ifindex)
 			continue;
 
+		if (!hlist_empty(&p->src_list)) {
+			err = -EINVAL;
+			goto unlock;
+		}
+
 		if (p->port->state == BR_STATE_DISABLED)
 			goto unlock;
 
diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 4c4a93abde68..76b640e9020e 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -163,12 +163,24 @@ static void br_multicast_group_expired(struct timer_list *t)
 	spin_unlock(&br->multicast_lock);
 }
 
+static void br_multicast_del_group_src(struct net_bridge_group_src *src)
+{
+	struct net_bridge *br = src->pg->port->br;
+
+	hlist_del_init_rcu(&src->node);
+	src->pg->src_ents--;
+	hlist_add_head(&src->del_node, &br->src_gc_list);
+	queue_work(system_long_wq, &br->src_gc_work);
+}
+
 static void br_multicast_del_pg(struct net_bridge *br,
 				struct net_bridge_port_group *pg)
 {
 	struct net_bridge_mdb_entry *mp;
 	struct net_bridge_port_group *p;
 	struct net_bridge_port_group __rcu **pp;
+	struct net_bridge_group_src *ent;
+	struct hlist_node *tmp;
 
 	mp = br_mdb_ip_get(br, &pg->addr);
 	if (WARN_ON(!mp))
@@ -183,6 +195,8 @@ static void br_multicast_del_pg(struct net_bridge *br,
 		rcu_assign_pointer(*pp, p->next);
 		hlist_del_init(&p->mglist);
 		del_timer(&p->timer);
+		hlist_for_each_entry_safe(ent, tmp, &pg->src_list, node)
+			br_multicast_del_group_src(ent);
 		br_mdb_notify(br->dev, p->port, &pg->addr, RTM_DELMDB,
 			      p->flags);
 		kfree_rcu(p, rcu);
@@ -470,12 +484,96 @@ struct net_bridge_mdb_entry *br_multicast_new_group(struct net_bridge *br,
 	return mp;
 }
 
+static void br_multicast_group_src_expired(struct timer_list *t)
+{
+	struct net_bridge_group_src *src = from_timer(src, t, timer);
+	struct net_bridge_port_group *pg;
+	struct net_bridge *br = src->br;
+
+	spin_lock(&br->multicast_lock);
+	if (hlist_unhashed(&src->node) || !netif_running(br->dev) ||
+	    timer_pending(&src->timer))
+		goto out;
+
+	pg = src->pg;
+	if (pg->filter_mode == MCAST_INCLUDE) {
+		br_multicast_del_group_src(src);
+		if (!hlist_empty(&pg->src_list))
+			goto out;
+		br_multicast_del_pg(br, pg);
+	}
+out:
+	spin_unlock(&br->multicast_lock);
+}
+
+static struct net_bridge_group_src *
+br_multicast_find_group_src(struct net_bridge_port_group *pg, struct br_ip *ip)
+{
+	struct net_bridge_group_src *ent;
+
+	switch (ip->proto) {
+	case htons(ETH_P_IP):
+		hlist_for_each_entry(ent, &pg->src_list, node)
+			if (ip->u.ip4 == ent->addr.u.ip4)
+				return ent;
+		break;
+#if IS_ENABLED(CONFIG_IPV6)
+	case htons(ETH_P_IPV6):
+		hlist_for_each_entry(ent, &pg->src_list, node)
+			if (!ipv6_addr_cmp(&ent->addr.u.ip6, &ip->u.ip6))
+				return ent;
+		break;
+#endif
+	}
+
+	return NULL;
+}
+
+static struct net_bridge_group_src *
+br_multicast_new_group_src(struct net_bridge_port_group *pg, struct br_ip *src_ip)
+{
+	struct net_bridge_group_src *grp_src;
+
+	if (unlikely(pg->src_ents >= PG_SRC_ENT_LIMIT))
+		return NULL;
+
+	switch (src_ip->proto) {
+	case htons(ETH_P_IP):
+		if (ipv4_is_zeronet(src_ip->u.ip4) ||
+		    ipv4_is_multicast(src_ip->u.ip4))
+			return NULL;
+		break;
+#if IS_ENABLED(CONFIG_IPV6)
+	case htons(ETH_P_IPV6):
+		if (ipv6_addr_any(&src_ip->u.ip6) ||
+		    ipv6_addr_is_multicast(&src_ip->u.ip6))
+			return NULL;
+		break;
+#endif
+	}
+
+	grp_src = kzalloc(sizeof(*grp_src), GFP_ATOMIC);
+	if (unlikely(!grp_src))
+		return NULL;
+
+	grp_src->pg = pg;
+	grp_src->br = pg->port->br;
+	grp_src->addr = *src_ip;
+	timer_setup(&grp_src->timer, br_multicast_group_src_expired, 0);
+
+	hlist_add_head_rcu(&grp_src->node, &pg->src_list);
+	pg->src_ents++;
+
+	return grp_src;
+}
+
 struct net_bridge_port_group *br_multicast_new_port_group(
 			struct net_bridge_port *port,
 			struct br_ip *group,
 			struct net_bridge_port_group __rcu *next,
 			unsigned char flags,
-			const unsigned char *src)
+			const unsigned char *src,
+			u8 filter_mode)
 {
 	struct net_bridge_port_group *p;
 
@@ -486,6 +584,8 @@ struct net_bridge_port_group *br_multicast_new_port_group(
 	p->addr = *group;
 	p->port = port;
 	p->flags = flags;
+	p->filter_mode = filter_mode;
+	INIT_HLIST_HEAD(&p->src_list);
 	rcu_assign_pointer(p->next, next);
 	hlist_add_head(&p->mglist, &port->mglist);
 	timer_setup(&p->timer, br_multicast_port_group_expired, 0);
@@ -535,7 +635,8 @@ void br_multicast_host_leave(struct net_bridge_mdb_entry *mp, bool notify)
 static int br_multicast_add_group(struct net_bridge *br,
 				  struct net_bridge_port *port,
 				  struct br_ip *group,
-				  const unsigned char *src)
+				  const unsigned char *src,
+				  u8 filter_mode)
 {
 	struct net_bridge_port_group __rcu **pp;
 	struct net_bridge_port_group *p;
@@ -567,7 +668,7 @@ static int br_multicast_add_group(struct net_bridge *br,
 			break;
 	}
 
-	p = br_multicast_new_port_group(port, group, *pp, 0, src);
+	p = br_multicast_new_port_group(port, group, *pp, 0, src, filter_mode);
 	if (unlikely(!p))
 		goto err;
 	rcu_assign_pointer(*pp, p);
@@ -590,6 +691,7 @@ static int br_ip4_multicast_add_group(struct net_bridge *br,
 				      const unsigned char *src)
 {
 	struct br_ip br_group;
+	u8 filter_mode;
 
 	if (ipv4_is_local_multicast(group))
 		return 0;
@@ -598,8 +700,10 @@ static int br_ip4_multicast_add_group(struct net_bridge *br,
 	br_group.u.ip4 = group;
 	br_group.proto = htons(ETH_P_IP);
 	br_group.vid = vid;
+	filter_mode = br->multicast_igmp_version == 3 ? MCAST_INCLUDE :
+							MCAST_EXCLUDE;
 
-	return br_multicast_add_group(br, port, &br_group, src);
+	return br_multicast_add_group(br, port, &br_group, src, filter_mode);
 }
 
 #if IS_ENABLED(CONFIG_IPV6)
@@ -610,6 +714,7 @@ static int br_ip6_multicast_add_group(struct net_bridge *br,
 				      const unsigned char *src)
 {
 	struct br_ip br_group;
+	u8 filter_mode;
 
 	if (ipv6_addr_is_ll_all_nodes(group))
 		return 0;
@@ -618,8 +723,10 @@ static int br_ip6_multicast_add_group(struct net_bridge *br,
 	br_group.u.ip6 = *group;
 	br_group.proto = htons(ETH_P_IPV6);
 	br_group.vid = vid;
+	filter_mode = br->multicast_mld_version == 2 ? MCAST_INCLUDE :
+						       MCAST_EXCLUDE;
 
-	return br_multicast_add_group(br, port, &br_group, src);
+	return br_multicast_add_group(br, port, &br_group, src, filter_mode);
 }
 #endif
 
@@ -1781,6 +1888,31 @@ static void br_ip6_multicast_query_expired(struct timer_list *t)
 }
 #endif
 
+static void __grp_src_gc(struct hlist_head *head)
+{
+	struct net_bridge_group_src *ent;
+	struct hlist_node *tmp;
+
+	hlist_for_each_entry_safe(ent, tmp, head, del_node) {
+		hlist_del_init(&ent->del_node);
+		del_timer_sync(&ent->timer);
+		kfree_rcu(ent, rcu);
+	}
+}
+
+static void br_multicast_src_gc(struct work_struct *work)
+{
+	struct net_bridge *br = container_of(work, struct net_bridge,
+					     src_gc_work);
+	HLIST_HEAD(deleted_head);
+
+	spin_lock_bh(&br->multicast_lock);
+	hlist_move_list(&br->src_gc_list, &deleted_head);
+	spin_unlock_bh(&br->multicast_lock);
+
+	__grp_src_gc(&deleted_head);
+}
+
 void br_multicast_init(struct net_bridge *br)
 {
 	br->hash_max = BR_MULTICAST_DEFAULT_HASH_MAX;
@@ -1821,6 +1953,8 @@ void br_multicast_init(struct net_bridge *br)
 		    br_ip6_multicast_query_expired, 0);
 #endif
 	INIT_HLIST_HEAD(&br->mdb_list);
+	INIT_HLIST_HEAD(&br->src_gc_list);
+	INIT_WORK(&br->src_gc_work, br_multicast_src_gc);
 }
 
 static void br_ip4_multicast_join_snoopers(struct net_bridge *br)
@@ -1924,6 +2058,7 @@ void br_multicast_stop(struct net_bridge *br)
 void br_multicast_dev_del(struct net_bridge *br)
 {
 	struct net_bridge_mdb_entry *mp;
+	HLIST_HEAD(deleted_head);
 	struct hlist_node *tmp;
 
 	spin_lock_bh(&br->multicast_lock);
@@ -1934,8 +2069,12 @@ void br_multicast_dev_del(struct net_bridge *br)
 		hlist_del_rcu(&mp->mdb_node);
 		kfree_rcu(mp, rcu);
 	}
+	hlist_move_list(&br->src_gc_list, &deleted_head);
 	spin_unlock_bh(&br->multicast_lock);
 
+	__grp_src_gc(&deleted_head);
+	cancel_work_sync(&br->src_gc_work);
+
 	rcu_barrier();
 }
 
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 357b6905ecef..a3d7d3a4b0c0 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -214,13 +214,34 @@ struct net_bridge_fdb_entry {
 #define MDB_PG_FLAGS_OFFLOAD	BIT(1)
 #define MDB_PG_FLAGS_FAST_LEAVE	BIT(2)
 
+#define PG_SRC_ENT_LIMIT	32
+
+#define BR_SGRP_F_DELETE	BIT(0)
+#define BR_SGRP_F_SEND		BIT(1)
+
+struct net_bridge_group_src {
+	struct hlist_node		node;
+
+	struct br_ip			addr;
+	struct net_bridge_port_group	*pg;
+	u8				flags;
+	struct timer_list		timer;
+
+	struct net_bridge		*br;
+	struct hlist_node		del_node;
+	struct rcu_head			rcu;
+};
+
 struct net_bridge_port_group {
 	struct net_bridge_port		*port;
 	struct net_bridge_port_group __rcu *next;
 	struct br_ip			addr;
 	unsigned char			eth_addr[ETH_ALEN] __aligned(2);
 	unsigned char			flags;
+	unsigned char			filter_mode;
 
+	struct hlist_head		src_list;
+	unsigned int			src_ents;
 	struct timer_list		timer;
 	struct hlist_node		mglist;
 
@@ -410,6 +431,7 @@ struct net_bridge {
 
 	struct rhashtable		mdb_hash_tbl;
 
+	struct hlist_head		src_gc_list;
 	struct hlist_head		mdb_list;
 	struct hlist_head		router_list;
 
@@ -423,6 +445,7 @@ struct net_bridge {
 	struct bridge_mcast_own_query	ip6_own_query;
 	struct bridge_mcast_querier	ip6_querier;
 #endif /* IS_ENABLED(CONFIG_IPV6) */
+	struct work_struct		src_gc_work;
 #endif
 
 	struct timer_list		hello_timer;
@@ -770,7 +793,8 @@ br_multicast_new_group(struct net_bridge *br, struct br_ip *group);
 struct net_bridge_port_group *
 br_multicast_new_port_group(struct net_bridge_port *port, struct br_ip *group,
 			    struct net_bridge_port_group __rcu *next,
-			    unsigned char flags, const unsigned char *src);
+			    unsigned char flags, const unsigned char *src,
+			    u8 filter_mode);
 int br_mdb_hash_init(struct net_bridge *br);
 void br_mdb_hash_fini(struct net_bridge *br);
 void br_mdb_notify(struct net_device *dev, struct net_bridge_port *port,
-- 
2.25.4

