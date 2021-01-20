Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9D02FD352
	for <lists.bridge@lfdr.de>; Wed, 20 Jan 2021 15:59:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A876287137;
	Wed, 20 Jan 2021 14:59:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m2pTxYjE5ucL; Wed, 20 Jan 2021 14:59:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7A8CA87134;
	Wed, 20 Jan 2021 14:59:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 62CF1C013A;
	Wed, 20 Jan 2021 14:59:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8FD8DC013A
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 14:59:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8AF8A87136
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 14:59:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nEsF06qeBClG for <bridge@lists.linux-foundation.org>;
 Wed, 20 Jan 2021 14:59:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
 [209.85.208.172])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2FA5A87134
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 14:59:35 +0000 (UTC)
Received: by mail-lj1-f172.google.com with SMTP id j3so6718094ljb.9
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 06:59:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gg8z2NwJXfCcKyNuHBmp1yVt9kpkPZxpVptW7e/c73k=;
 b=LQCezO/53d4qHt8Qef8pYEbfXnDeBexmoDh7iIdrLyZ0FRnppFo3FHZnROVPDyN3ol
 8nsgzEEk5fI/lFyLIC/0rdUaOXk4NVOyxNXDj2bFXrgaBfRAmdOA9S08zEFwo75PHNVe
 LZnKz1EBAceQYRbrmuww3Jk6DQsQa6quB6R2FuVqkTbjKc08Uc+6VpMx5qzFiZlYMLYV
 rUMIvZamJasa4T++qGNx7qNABuZQzLpsEABdd4zqG9XtuBVyvIhOgjFoJU8sp7ZdPaVH
 Ps/Prl3hupiCzDSVX7gleK56Q56Pdzg6g9mKKMpKkIKitdVH2owhx9kmsK0Z3LSrWadv
 mrgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gg8z2NwJXfCcKyNuHBmp1yVt9kpkPZxpVptW7e/c73k=;
 b=RZGGsLj0m2y5/Lk+7goV/3i0cENElHoKZg8KYyge1OPbMECIs/9YatezHNuOtgmGeC
 N9s8+0hHw9N9R+/yhBTFSz2xN+AjUh2cMZE3bzQDy7gyiZ6YNmxvsNeBb74d5uaFvG2A
 RjyVgI1xZBekwzz3vGLUJ2mcv13jw4oZ2/ndpwKk9OQaHLSndaYmenPsQiUvUMADjIBI
 seP+Rp5tkxwSAzAfH2xfwrHK6FNgds9p57MW9uOyxO0lsE9q5wnN7I2axxZdP0UeNPLy
 n2wgyJfPWC0naOfihTRCOLWDEP1N6R8y2i1p2WpMXrNJZsXko/Kyw6M4mdkxUDsPAmVW
 Irkg==
X-Gm-Message-State: AOAM530dcI33lyJ4XM/m8BnArbhjGcIiRd7YP4HBQdYOfPF1MaFsFBmn
 waCEynBm9OEeZ6XRF5O5OnFYSgLdjkIlcZRlbGs=
X-Google-Smtp-Source: ABdhPJzhVzJgrjPeposQKBtN4TkzTJWeb62NyvhxJKozOVeT4jKdbtHm7DDIRfaBntVwr8L1kZKGEQ==
X-Received: by 2002:aa7:d88e:: with SMTP id u14mr7449901edq.72.1611154390829; 
 Wed, 20 Jan 2021 06:53:10 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x17sm1239349edq.77.2021.01.20.06.53.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Jan 2021 06:53:10 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Wed, 20 Jan 2021 16:51:56 +0200
Message-Id: <20210120145203.1109140-8-razor@blackwall.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210120145203.1109140-1-razor@blackwall.org>
References: <20210120145203.1109140-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 07/14] net: bridge: multicast: add EHT
	source set handling functions
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

Add EHT source set and set-entry create, delete and lookup functions.
These allow to manipulate source sets which contain their own host sets
with entries which joined that S,G. We're limiting the maximum number of
tracked S,G entries per host to PG_SRC_ENT_LIMIT (currently 32) which is
the current maximum of S,G entries for a group. There's a per-set timer
which will be used to destroy the whole set later.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast.c         |   2 +
 net/bridge/br_multicast_eht.c     | 321 ++++++++++++++++++++++++++++++
 net/bridge/br_private_mcast_eht.h |   2 +
 3 files changed, 325 insertions(+)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index dc6e879dc840..ac363b104239 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -594,6 +594,7 @@ void br_multicast_del_pg(struct net_bridge_mdb_entry *mp,
 
 	rcu_assign_pointer(*pp, pg->next);
 	hlist_del_init(&pg->mglist);
+	br_multicast_eht_clean_sets(pg);
 	hlist_for_each_entry_safe(ent, tmp, &pg->src_list, node)
 		br_multicast_del_group_src(ent);
 	br_mdb_notify(br->dev, mp, pg, RTM_DELMDB);
@@ -1174,6 +1175,7 @@ struct net_bridge_port_group *br_multicast_new_port_group(
 	p->filter_mode = filter_mode;
 	p->rt_protocol = rt_protocol;
 	p->eht_host_tree = RB_ROOT;
+	p->eht_set_tree = RB_ROOT;
 	p->mcast_gc.destroy = br_multicast_destroy_port_group;
 	INIT_HLIST_HEAD(&p->src_list);
 
diff --git a/net/bridge/br_multicast_eht.c b/net/bridge/br_multicast_eht.c
index 5cebca45e72c..f4bbf2dc9fc8 100644
--- a/net/bridge/br_multicast_eht.c
+++ b/net/bridge/br_multicast_eht.c
@@ -30,6 +30,15 @@
 #include "br_private.h"
 #include "br_private_mcast_eht.h"
 
+static bool br_multicast_del_eht_set_entry(struct net_bridge_port_group *pg,
+					   union net_bridge_eht_addr *src_addr,
+					   union net_bridge_eht_addr *h_addr);
+static void br_multicast_create_eht_set_entry(struct net_bridge_port_group *pg,
+					      union net_bridge_eht_addr *src_addr,
+					      union net_bridge_eht_addr *h_addr,
+					      int filter_mode,
+					      bool allow_zero_src);
+
 static struct net_bridge_group_eht_host *
 br_multicast_eht_host_lookup(struct net_bridge_port_group *pg,
 			     union net_bridge_eht_addr *h_addr)
@@ -66,6 +75,54 @@ static int br_multicast_eht_host_filter_mode(struct net_bridge_port_group *pg,
 	return eht_host->filter_mode;
 }
 
+static struct net_bridge_group_eht_set_entry *
+br_multicast_eht_set_entry_lookup(struct net_bridge_group_eht_set *eht_set,
+				  union net_bridge_eht_addr *h_addr)
+{
+	struct rb_node *node = eht_set->entry_tree.rb_node;
+
+	while (node) {
+		struct net_bridge_group_eht_set_entry *this;
+		int result;
+
+	this = rb_entry(node, struct net_bridge_group_eht_set_entry,
+			rb_node);
+	result = memcmp(h_addr, &this->h_addr, sizeof(*h_addr));
+	if (result < 0)
+		node = node->rb_left;
+	else if (result > 0)
+		node = node->rb_right;
+	else
+		return this;
+	}
+
+	return NULL;
+}
+
+static struct net_bridge_group_eht_set *
+br_multicast_eht_set_lookup(struct net_bridge_port_group *pg,
+			    union net_bridge_eht_addr *src_addr)
+{
+	struct rb_node *node = pg->eht_set_tree.rb_node;
+
+	while (node) {
+		struct net_bridge_group_eht_set *this;
+		int result;
+
+		this = rb_entry(node, struct net_bridge_group_eht_set,
+				rb_node);
+		result = memcmp(src_addr, &this->src_addr, sizeof(*src_addr));
+		if (result < 0)
+			node = node->rb_left;
+		else if (result > 0)
+			node = node->rb_right;
+		else
+			return this;
+	}
+
+	return NULL;
+}
+
 static void __eht_destroy_host(struct net_bridge_group_eht_host *eht_host)
 {
 	WARN_ON(!hlist_empty(&eht_host->set_entries));
@@ -75,6 +132,107 @@ static void __eht_destroy_host(struct net_bridge_group_eht_host *eht_host)
 	kfree(eht_host);
 }
 
+static void br_multicast_destroy_eht_set_entry(struct net_bridge_mcast_gc *gc)
+{
+	struct net_bridge_group_eht_set_entry *set_h;
+
+	set_h = container_of(gc, struct net_bridge_group_eht_set_entry, mcast_gc);
+	WARN_ON(!RB_EMPTY_NODE(&set_h->rb_node));
+
+	del_timer_sync(&set_h->timer);
+	kfree(set_h);
+}
+
+static void br_multicast_destroy_eht_set(struct net_bridge_mcast_gc *gc)
+{
+	struct net_bridge_group_eht_set *eht_set;
+
+	eht_set = container_of(gc, struct net_bridge_group_eht_set, mcast_gc);
+	WARN_ON(!RB_EMPTY_NODE(&eht_set->rb_node));
+	WARN_ON(!RB_EMPTY_ROOT(&eht_set->entry_tree));
+
+	del_timer_sync(&eht_set->timer);
+	kfree(eht_set);
+}
+
+static void __eht_del_set_entry(struct net_bridge_group_eht_set_entry *set_h)
+{
+	struct net_bridge_group_eht_host *eht_host = set_h->h_parent;
+	union net_bridge_eht_addr zero_addr;
+
+	rb_erase(&set_h->rb_node, &set_h->eht_set->entry_tree);
+	RB_CLEAR_NODE(&set_h->rb_node);
+	hlist_del_init(&set_h->host_list);
+	memset(&zero_addr, 0, sizeof(zero_addr));
+	if (memcmp(&set_h->h_addr, &zero_addr, sizeof(zero_addr)))
+		eht_host->num_entries--;
+	hlist_add_head(&set_h->mcast_gc.gc_node, &set_h->br->mcast_gc_list);
+	queue_work(system_long_wq, &set_h->br->mcast_gc_work);
+
+	if (hlist_empty(&eht_host->set_entries))
+		__eht_destroy_host(eht_host);
+}
+
+static void br_multicast_del_eht_set(struct net_bridge_group_eht_set *eht_set)
+{
+	struct net_bridge_group_eht_set_entry *set_h;
+	struct rb_node *node;
+
+	while ((node = rb_first(&eht_set->entry_tree))) {
+		set_h = rb_entry(node, struct net_bridge_group_eht_set_entry,
+				 rb_node);
+		__eht_del_set_entry(set_h);
+	}
+
+	rb_erase(&eht_set->rb_node, &eht_set->pg->eht_set_tree);
+	RB_CLEAR_NODE(&eht_set->rb_node);
+	hlist_add_head(&eht_set->mcast_gc.gc_node, &eht_set->br->mcast_gc_list);
+	queue_work(system_long_wq, &eht_set->br->mcast_gc_work);
+}
+
+void br_multicast_eht_clean_sets(struct net_bridge_port_group *pg)
+{
+	struct net_bridge_group_eht_set *eht_set;
+	struct rb_node *node;
+
+	while ((node = rb_first(&pg->eht_set_tree))) {
+		eht_set = rb_entry(node, struct net_bridge_group_eht_set,
+				   rb_node);
+		br_multicast_del_eht_set(eht_set);
+	}
+}
+
+static void br_multicast_eht_set_entry_expired(struct timer_list *t)
+{
+	struct net_bridge_group_eht_set_entry *set_h = from_timer(set_h, t, timer);
+	struct net_bridge *br = set_h->br;
+
+	spin_lock(&br->multicast_lock);
+	if (RB_EMPTY_NODE(&set_h->rb_node) || timer_pending(&set_h->timer))
+		goto out;
+
+	br_multicast_del_eht_set_entry(set_h->eht_set->pg,
+				       &set_h->eht_set->src_addr,
+				       &set_h->h_addr);
+out:
+	spin_unlock(&br->multicast_lock);
+}
+
+static void br_multicast_eht_set_expired(struct timer_list *t)
+{
+	struct net_bridge_group_eht_set *eht_set = from_timer(eht_set, t,
+							      timer);
+	struct net_bridge *br = eht_set->br;
+
+	spin_lock(&br->multicast_lock);
+	if (RB_EMPTY_NODE(&eht_set->rb_node) || timer_pending(&eht_set->timer))
+		goto out;
+
+	br_multicast_del_eht_set(eht_set);
+out:
+	spin_unlock(&br->multicast_lock);
+}
+
 static struct net_bridge_group_eht_host *
 __eht_lookup_create_host(struct net_bridge_port_group *pg,
 			 union net_bridge_eht_addr *h_addr,
@@ -113,3 +271,166 @@ __eht_lookup_create_host(struct net_bridge_port_group *pg,
 
 	return eht_host;
 }
+
+static struct net_bridge_group_eht_set_entry *
+__eht_lookup_create_set_entry(struct net_bridge *br,
+			      struct net_bridge_group_eht_set *eht_set,
+			      struct net_bridge_group_eht_host *eht_host,
+			      bool allow_zero_src)
+{
+	struct rb_node **link = &eht_set->entry_tree.rb_node, *parent = NULL;
+	struct net_bridge_group_eht_set_entry *set_h;
+
+	while (*link) {
+		struct net_bridge_group_eht_set_entry *this;
+		int result;
+
+		this = rb_entry(*link, struct net_bridge_group_eht_set_entry,
+				rb_node);
+		result = memcmp(&eht_host->h_addr, &this->h_addr,
+				sizeof(union net_bridge_eht_addr));
+		parent = *link;
+		if (result < 0)
+			link = &((*link)->rb_left);
+		else if (result > 0)
+			link = &((*link)->rb_right);
+		else
+			return this;
+	}
+
+	/* always allow auto-created zero entry */
+	if (!allow_zero_src && eht_host->num_entries >= PG_SRC_ENT_LIMIT)
+		return NULL;
+
+	set_h = kzalloc(sizeof(*set_h), GFP_ATOMIC);
+	if (!set_h)
+		return NULL;
+
+	memcpy(&set_h->h_addr, &eht_host->h_addr,
+	       sizeof(union net_bridge_eht_addr));
+	set_h->mcast_gc.destroy = br_multicast_destroy_eht_set_entry;
+	set_h->eht_set = eht_set;
+	set_h->h_parent = eht_host;
+	set_h->br = br;
+	timer_setup(&set_h->timer, br_multicast_eht_set_entry_expired, 0);
+
+	hlist_add_head(&set_h->host_list, &eht_host->set_entries);
+	rb_link_node(&set_h->rb_node, parent, link);
+	rb_insert_color(&set_h->rb_node, &eht_set->entry_tree);
+	/* we must not count the auto-created zero entry otherwise we won't be
+	 * able to track the full list of PG_SRC_ENT_LIMIT entries
+	 */
+	if (!allow_zero_src)
+		eht_host->num_entries++;
+
+	return set_h;
+}
+
+static struct net_bridge_group_eht_set *
+__eht_lookup_create_set(struct net_bridge_port_group *pg,
+			union net_bridge_eht_addr *src_addr)
+{
+	struct rb_node **link = &pg->eht_set_tree.rb_node, *parent = NULL;
+	struct net_bridge_group_eht_set *eht_set;
+
+	while (*link) {
+		struct net_bridge_group_eht_set *this;
+		int result;
+
+		this = rb_entry(*link, struct net_bridge_group_eht_set,
+				rb_node);
+		result = memcmp(src_addr, &this->src_addr, sizeof(*src_addr));
+		parent = *link;
+		if (result < 0)
+			link = &((*link)->rb_left);
+		else if (result > 0)
+			link = &((*link)->rb_right);
+		else
+			return this;
+	}
+
+	eht_set = kzalloc(sizeof(*eht_set), GFP_ATOMIC);
+	if (!eht_set)
+		return NULL;
+
+	memcpy(&eht_set->src_addr, src_addr, sizeof(*src_addr));
+	eht_set->mcast_gc.destroy = br_multicast_destroy_eht_set;
+	eht_set->pg = pg;
+	eht_set->br = pg->key.port->br;
+	eht_set->entry_tree = RB_ROOT;
+	timer_setup(&eht_set->timer, br_multicast_eht_set_expired, 0);
+
+	rb_link_node(&eht_set->rb_node, parent, link);
+	rb_insert_color(&eht_set->rb_node, &pg->eht_set_tree);
+
+	return eht_set;
+}
+
+static void br_multicast_create_eht_set_entry(struct net_bridge_port_group *pg,
+					      union net_bridge_eht_addr *src_addr,
+					      union net_bridge_eht_addr *h_addr,
+					      int filter_mode,
+					      bool allow_zero_src)
+{
+	struct net_bridge_group_eht_set_entry *set_h;
+	struct net_bridge_group_eht_host *eht_host;
+	struct net_bridge *br = pg->key.port->br;
+	struct net_bridge_group_eht_set *eht_set;
+	union net_bridge_eht_addr zero_addr;
+
+	memset(&zero_addr, 0, sizeof(zero_addr));
+	if (!allow_zero_src && !memcmp(src_addr, &zero_addr, sizeof(zero_addr)))
+		return;
+
+	eht_set = __eht_lookup_create_set(pg, src_addr);
+	if (!eht_set)
+		return;
+
+	eht_host = __eht_lookup_create_host(pg, h_addr, filter_mode);
+	if (!eht_host)
+		goto fail_host;
+
+	set_h = __eht_lookup_create_set_entry(br, eht_set, eht_host,
+					      allow_zero_src);
+	if (!set_h)
+		goto fail_set_entry;
+
+	mod_timer(&set_h->timer, jiffies + br_multicast_gmi(br));
+	mod_timer(&eht_set->timer, jiffies + br_multicast_gmi(br));
+
+	return;
+
+fail_set_entry:
+	if (hlist_empty(&eht_host->set_entries))
+		__eht_destroy_host(eht_host);
+fail_host:
+	if (RB_EMPTY_ROOT(&eht_set->entry_tree))
+		br_multicast_del_eht_set(eht_set);
+}
+
+static bool br_multicast_del_eht_set_entry(struct net_bridge_port_group *pg,
+					   union net_bridge_eht_addr *src_addr,
+					   union net_bridge_eht_addr *h_addr)
+{
+	struct net_bridge_group_eht_set_entry *set_h;
+	struct net_bridge_group_eht_set *eht_set;
+	bool set_deleted = false;
+
+	eht_set = br_multicast_eht_set_lookup(pg, src_addr);
+	if (!eht_set)
+		goto out;
+
+	set_h = br_multicast_eht_set_entry_lookup(eht_set, h_addr);
+	if (!set_h)
+		goto out;
+
+	__eht_del_set_entry(set_h);
+
+	if (RB_EMPTY_ROOT(&eht_set->entry_tree)) {
+		br_multicast_del_eht_set(eht_set);
+		set_deleted = true;
+	}
+
+out:
+	return set_deleted;
+}
diff --git a/net/bridge/br_private_mcast_eht.h b/net/bridge/br_private_mcast_eht.h
index 0c9c4267969d..bba507c9acb0 100644
--- a/net/bridge/br_private_mcast_eht.h
+++ b/net/bridge/br_private_mcast_eht.h
@@ -47,4 +47,6 @@ struct net_bridge_group_eht_set {
 	struct net_bridge_mcast_gc	mcast_gc;
 };
 
+void br_multicast_eht_clean_sets(struct net_bridge_port_group *pg);
+
 #endif /* _BR_PRIVATE_MCAST_EHT_H_ */
-- 
2.29.2

