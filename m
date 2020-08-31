Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDDE257BB2
	for <lists.bridge@lfdr.de>; Mon, 31 Aug 2020 17:09:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BDA1987A6B;
	Mon, 31 Aug 2020 15:09:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PGPYBp6XLO1Y; Mon, 31 Aug 2020 15:09:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6116587A72;
	Mon, 31 Aug 2020 15:09:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 48BCCC07FF;
	Mon, 31 Aug 2020 15:09:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3C5DCC07FF
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 15:09:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 390E387A60
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 15:09:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gvxG47OpwvMv for <bridge@lists.linux-foundation.org>;
 Mon, 31 Aug 2020 15:09:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0F4AF87A5F
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 15:09:55 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id w2so5748077wmi.1
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 08:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rctT4L8FZeCvL5LEEn/bxrarBvizqspAXUkwNpsk3B8=;
 b=NGmpfBP6ysWyKu/73F/WWq9QH2S6SKYeZ+nMx7+pcRDpN9zd6ZP0R+bx90LCMeJvlP
 pUVX8vjkoqaJQu4yfiNkc5ytglcItT8RcRW3aIbGGli32ld3B6wTUTwt4oTTmylYmOUi
 KcQJxGwdo2OJl4YQdL1ihnUKzrUSsmNaVNFhc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rctT4L8FZeCvL5LEEn/bxrarBvizqspAXUkwNpsk3B8=;
 b=Pr/k9UH2B1RQCKOq2PBoCv/IZAwjaHn6i5nmcoHXodH4/KGGITCmB9j+VnjFcIsKhI
 xO5IxdrCRPdI4XCadkpDqY1T1DlNAhnuDmLC02WXJE0z42iDKEWJHowgNrIUUpyjSxgt
 nrmd2VCCK2RSYYszGiwF3Ss6etWXZ9E75RusVbG7CBmp/Pm6Mi+W5ot7z0lIOn2xH5rS
 hGt1if1y8jPiwQOEhpIclQyAjDbu52qf7RLqARED5cnzEVc9cD6DK/r1ByDCkx70thZK
 z1iih6XV5Uk32mFjDIGK+bxkR7u4xF3w/G1Af2xwkpOt+dwYN4xFvUhjVk4PB7wpZYCy
 UqPQ==
X-Gm-Message-State: AOAM532rbQHpmwTh8Hfw54RD+sJe4IPga2IFMk6Y1BeLovMrueXMKVsY
 5MD7b8o/3dJSv/XNcTs0b3VHzg==
X-Google-Smtp-Source: ABdhPJzkbT+r2lrWh+obRSYtwoBLRUejkCg89O7lig4P9tvyaT/3JSFrNvMAH83QqAA+rUld9iroIw==
X-Received: by 2002:a1c:4054:: with SMTP id n81mr1670305wma.81.1598886593302; 
 Mon, 31 Aug 2020 08:09:53 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id f6sm14181636wme.32.2020.08.31.08.09.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Aug 2020 08:09:52 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Mon, 31 Aug 2020 18:08:32 +0300
Message-Id: <20200831150845.1062447-3-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200831150845.1062447-1-nikolay@cumulusnetworks.com>
References: <20200831150845.1062447-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 02/15] net: bridge: mcast: add support for
	group source list
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
include/exclude lists. Currently only IPv4 sources are supported.
User-added mdb entries are created with exclude filter mode, we can
extend that later to allow user-supplied mode. When group src entries
are deleted, they're freed from a workqueue to make sure their timers
are not still running. Source entries are protected by the multicast_lock.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_mdb.c       |   6 ++
 net/bridge/br_multicast.c | 129 ++++++++++++++++++++++++++++++++++++++
 net/bridge/br_private.h   |  22 +++++++
 3 files changed, 157 insertions(+)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index da5ed4cf9233..025a5aff2b2f 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -641,6 +641,7 @@ static int br_mdb_add_group(struct net_bridge *br, struct net_bridge_port *port,
 	p = br_multicast_new_port_group(port, group, *pp, state, NULL);
 	if (unlikely(!p))
 		return -ENOMEM;
+	p->filter_mode = MCAST_EXCLUDE;
 	rcu_assign_pointer(*pp, p);
 	if (state == MDB_TEMPORARY)
 		mod_timer(&p->timer, now + br->multicast_membership_interval);
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
index 4c4a93abde68..e527a7531ce5 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -163,12 +163,24 @@ static void br_multicast_group_expired(struct timer_list *t)
 	spin_unlock(&br->multicast_lock);
 }
 
+static void br_multicast_del_group_src(struct net_bridge_group_src *src)
+{
+	struct net_bridge *br = src->pg->port->br;
+
+	hlist_del_init(&src->node);
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
@@ -470,6 +484,83 @@ struct net_bridge_mdb_entry *br_multicast_new_group(struct net_bridge *br,
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
+	br_debug(br, "port %s: src %pI4 group %pI4 filter mode %u timer expired\n",
+		 pg->port->dev->name, &src->addr.u.ip4, &src->pg->addr.u.ip4,
+		 src->pg->filter_mode);
+
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
+	hlist_for_each_entry(ent, &pg->src_list, node) {
+		if (ent->addr.proto != ip->proto)
+			continue;
+
+		switch (ip->proto) {
+		case htons(ETH_P_IP):
+			if (ip->u.ip4 == ent->addr.u.ip4)
+				return ent;
+			break;
+		}
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
+	hlist_add_head(&grp_src->node, &pg->src_list);
+	pg->src_ents++;
+
+	return grp_src;
+}
+
 struct net_bridge_port_group *br_multicast_new_port_group(
 			struct net_bridge_port *port,
 			struct br_ip *group,
@@ -486,6 +577,12 @@ struct net_bridge_port_group *br_multicast_new_port_group(
 	p->addr = *group;
 	p->port = port;
 	p->flags = flags;
+	if (group->proto == htons(ETH_P_IP) &&
+	    port->br->multicast_igmp_version == 3)
+		p->filter_mode = MCAST_INCLUDE;
+	else
+		p->filter_mode = MCAST_EXCLUDE;
+	INIT_HLIST_HEAD(&p->src_list);
 	rcu_assign_pointer(p->next, next);
 	hlist_add_head(&p->mglist, &port->mglist);
 	timer_setup(&p->timer, br_multicast_port_group_expired, 0);
@@ -1781,6 +1878,31 @@ static void br_ip6_multicast_query_expired(struct timer_list *t)
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
+		kfree(ent);
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
@@ -1821,6 +1943,8 @@ void br_multicast_init(struct net_bridge *br)
 		    br_ip6_multicast_query_expired, 0);
 #endif
 	INIT_HLIST_HEAD(&br->mdb_list);
+	INIT_HLIST_HEAD(&br->src_gc_list);
+	INIT_WORK(&br->src_gc_work, br_multicast_src_gc);
 }
 
 static void br_ip4_multicast_join_snoopers(struct net_bridge *br)
@@ -1924,6 +2048,7 @@ void br_multicast_stop(struct net_bridge *br)
 void br_multicast_dev_del(struct net_bridge *br)
 {
 	struct net_bridge_mdb_entry *mp;
+	HLIST_HEAD(deleted_head);
 	struct hlist_node *tmp;
 
 	spin_lock_bh(&br->multicast_lock);
@@ -1934,8 +2059,12 @@ void br_multicast_dev_del(struct net_bridge *br)
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
index 357b6905ecef..d30533d310c5 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -214,13 +214,33 @@ struct net_bridge_fdb_entry {
 #define MDB_PG_FLAGS_OFFLOAD	BIT(1)
 #define MDB_PG_FLAGS_FAST_LEAVE	BIT(2)
 
+#define PG_SRC_ENT_LIMIT	64
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
 
@@ -410,6 +430,7 @@ struct net_bridge {
 
 	struct rhashtable		mdb_hash_tbl;
 
+	struct hlist_head		src_gc_list;
 	struct hlist_head		mdb_list;
 	struct hlist_head		router_list;
 
@@ -423,6 +444,7 @@ struct net_bridge {
 	struct bridge_mcast_own_query	ip6_own_query;
 	struct bridge_mcast_querier	ip6_querier;
 #endif /* IS_ENABLED(CONFIG_IPV6) */
+	struct work_struct		src_gc_work;
 #endif
 
 	struct timer_list		hello_timer;
-- 
2.25.4

