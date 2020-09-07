Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0C925F709
	for <lists.bridge@lfdr.de>; Mon,  7 Sep 2020 12:00:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E5F1A204E5;
	Mon,  7 Sep 2020 10:00:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c1wHG+qnk-Mm; Mon,  7 Sep 2020 10:00:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id C0CF8204E7;
	Mon,  7 Sep 2020 10:00:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A51A0C0859;
	Mon,  7 Sep 2020 10:00:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7D159C0051
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 10:00:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 673D38671E
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 10:00:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DPjZJI3WetQ7 for <bridge@lists.linux-foundation.org>;
 Mon,  7 Sep 2020 10:00:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A786E86730
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 10:00:24 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id y15so971717wmi.0
 for <bridge@lists.linux-foundation.org>; Mon, 07 Sep 2020 03:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=U6BkzkEyCYvG4yju4Bb+An23jvzBFVlkJwRKkyOdR44=;
 b=EkdcEHSXuKoTXoPm7G7Zb64BuFbqZFDB+BaDpk9IAOteI0SVI8V4YkJTTtrvPkDCAi
 tHny9/9fE0GUW1Pc20Q8a4Wi0J8JdQNflrI2snXaJ/5YNFwF4fApLAVBzT47og6d55Wu
 fOaXlNUERLxHY9ts+u90vgg7viLPmp0YsqHak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=U6BkzkEyCYvG4yju4Bb+An23jvzBFVlkJwRKkyOdR44=;
 b=PSx6LRB8rTjH4D7r2ECfoP7eCP8MwlKsZpdwHmTi5/u5TowmAQYxv0/t9GRkjo15dp
 onJwccu5i/EHHXaENGWDlRh7vtojwyNv9MBA64lrgJ/jXVZ0yGSJ/FcYepENwNLYi+X7
 hoyl+r2fJJFR/pX6aBERKWcBZSLQvTh5Rkw2PDWsCy3QAw4mLZR2vjjZdRrgldoRxCOY
 8C4RNWzTEP0z17O87iv0V86YmNJavc64bLspGOdEz7sNSpeMZK8ou4qzGw8l1I/DTsvi
 hlFt4sNQc2vkxLxOqzk4QmeF58uXKn6wTC6EIu8nQ3ELet7iNCREPjCb+Vj3ZcaQo1fc
 ukeA==
X-Gm-Message-State: AOAM533Xg3YC3roKKWCxa4Bbj6gt4xt66zOwFW9wDrEk0wxJiyaqScNb
 Pl8lX+ycWZoyMQkJWSVLPpT40GQwj1Br9M4v
X-Google-Smtp-Source: ABdhPJwbMhWPNUtga+hlBiQUsEVjfqu2iuHRSdwy+sngHtjyp4vvPwZqpqcGN42Mm5zz7EIq3MjX/Q==
X-Received: by 2002:a7b:c1d3:: with SMTP id a19mr13826319wmj.19.1599472823137; 
 Mon, 07 Sep 2020 03:00:23 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id 9sm6686289wmf.7.2020.09.07.03.00.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Sep 2020 03:00:22 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Mon,  7 Sep 2020 12:56:12 +0300
Message-Id: <20200907095619.11216-9-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200907095619.11216-1-nikolay@cumulusnetworks.com>
References: <20200907095619.11216-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v4 08/15] net: bridge: mdb: use mdb and
	port entries in notifications
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

We have to use mdb and port entries when sending mdb notifications in
order to fill in all group attributes properly. Before this change we
would've used a fake br_mdb_entry struct to fill in only partial
information about the mdb. Now we can also reuse the mdb dump fill
function and thus have only a single central place which fills the mdb
attributes.

v3: add IPv6 support

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_mdb.c       | 146 ++++++++++++++++++++++----------------
 net/bridge/br_multicast.c |  10 +--
 net/bridge/br_private.h   |   4 +-
 3 files changed, 92 insertions(+), 68 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 24f6ccf98657..67e0976aeed2 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -344,14 +344,15 @@ static int br_mdb_dump(struct sk_buff *skb, struct netlink_callback *cb)
 
 static int nlmsg_populate_mdb_fill(struct sk_buff *skb,
 				   struct net_device *dev,
-				   struct br_mdb_entry *entry, u32 pid,
-				   u32 seq, int type, unsigned int flags)
+				   struct net_bridge_mdb_entry *mp,
+				   struct net_bridge_port_group *pg,
+				   int type)
 {
 	struct nlmsghdr *nlh;
 	struct br_port_msg *bpm;
 	struct nlattr *nest, *nest2;
 
-	nlh = nlmsg_put(skb, pid, seq, type, sizeof(*bpm), 0);
+	nlh = nlmsg_put(skb, 0, 0, type, sizeof(*bpm), 0);
 	if (!nlh)
 		return -EMSGSIZE;
 
@@ -366,7 +367,7 @@ static int nlmsg_populate_mdb_fill(struct sk_buff *skb,
 	if (nest2 == NULL)
 		goto end;
 
-	if (nla_put(skb, MDBA_MDB_ENTRY_INFO, sizeof(*entry), entry))
+	if (__mdb_fill_info(skb, mp, pg))
 		goto end;
 
 	nla_nest_end(skb, nest2);
@@ -381,10 +382,49 @@ static int nlmsg_populate_mdb_fill(struct sk_buff *skb,
 	return -EMSGSIZE;
 }
 
-static inline size_t rtnl_mdb_nlmsg_size(void)
+static size_t rtnl_mdb_nlmsg_size(struct net_bridge_port_group *pg)
 {
-	return NLMSG_ALIGN(sizeof(struct br_port_msg))
-		+ nla_total_size(sizeof(struct br_mdb_entry));
+	size_t nlmsg_size = NLMSG_ALIGN(sizeof(struct br_port_msg)) +
+			    nla_total_size(sizeof(struct br_mdb_entry)) +
+			    nla_total_size(sizeof(u32));
+	struct net_bridge_group_src *ent;
+	size_t addr_size = 0;
+
+	if (!pg)
+		goto out;
+
+	switch (pg->addr.proto) {
+	case htons(ETH_P_IP):
+		if (pg->port->br->multicast_igmp_version == 2)
+			goto out;
+		addr_size = sizeof(__be32);
+		break;
+#if IS_ENABLED(CONFIG_IPV6)
+	case htons(ETH_P_IPV6):
+		if (pg->port->br->multicast_mld_version == 1)
+			goto out;
+		addr_size = sizeof(struct in6_addr);
+		break;
+#endif
+	}
+
+	/* MDBA_MDB_EATTR_GROUP_MODE */
+	nlmsg_size += nla_total_size(sizeof(u8));
+
+	/* MDBA_MDB_EATTR_SRC_LIST nested attr */
+	if (!hlist_empty(&pg->src_list))
+		nlmsg_size += nla_total_size(0);
+
+	hlist_for_each_entry(ent, &pg->src_list, node) {
+		/* MDBA_MDB_SRCLIST_ENTRY nested attr +
+		 * MDBA_MDB_SRCATTR_ADDRESS + MDBA_MDB_SRCATTR_TIMER
+		 */
+		nlmsg_size += nla_total_size(0) +
+			      nla_total_size(addr_size) +
+			      nla_total_size(sizeof(u32));
+	}
+out:
+	return nlmsg_size;
 }
 
 struct br_mdb_complete_info {
@@ -422,21 +462,22 @@ static void br_mdb_complete(struct net_device *dev, int err, void *priv)
 
 static void br_mdb_switchdev_host_port(struct net_device *dev,
 				       struct net_device *lower_dev,
-				       struct br_mdb_entry *entry, int type)
+				       struct net_bridge_mdb_entry *mp,
+				       int type)
 {
 	struct switchdev_obj_port_mdb mdb = {
 		.obj = {
 			.id = SWITCHDEV_OBJ_ID_HOST_MDB,
 			.flags = SWITCHDEV_F_DEFER,
 		},
-		.vid = entry->vid,
+		.vid = mp->addr.vid,
 	};
 
-	if (entry->addr.proto == htons(ETH_P_IP))
-		ip_eth_mc_map(entry->addr.u.ip4, mdb.addr);
+	if (mp->addr.proto == htons(ETH_P_IP))
+		ip_eth_mc_map(mp->addr.u.ip4, mdb.addr);
 #if IS_ENABLED(CONFIG_IPV6)
 	else
-		ipv6_eth_mc_map(&entry->addr.u.ip6, mdb.addr);
+		ipv6_eth_mc_map(&mp->addr.u.ip6, mdb.addr);
 #endif
 
 	mdb.obj.orig_dev = dev;
@@ -451,17 +492,19 @@ static void br_mdb_switchdev_host_port(struct net_device *dev,
 }
 
 static void br_mdb_switchdev_host(struct net_device *dev,
-				  struct br_mdb_entry *entry, int type)
+				  struct net_bridge_mdb_entry *mp, int type)
 {
 	struct net_device *lower_dev;
 	struct list_head *iter;
 
 	netdev_for_each_lower_dev(dev, lower_dev, iter)
-		br_mdb_switchdev_host_port(dev, lower_dev, entry, type);
+		br_mdb_switchdev_host_port(dev, lower_dev, mp, type);
 }
 
-static void __br_mdb_notify(struct net_device *dev, struct net_bridge_port *p,
-			    struct br_mdb_entry *entry, int type)
+void br_mdb_notify(struct net_device *dev,
+		   struct net_bridge_mdb_entry *mp,
+		   struct net_bridge_port_group *pg,
+		   int type)
 {
 	struct br_mdb_complete_info *complete_info;
 	struct switchdev_obj_port_mdb mdb = {
@@ -469,44 +512,45 @@ static void __br_mdb_notify(struct net_device *dev, struct net_bridge_port *p,
 			.id = SWITCHDEV_OBJ_ID_PORT_MDB,
 			.flags = SWITCHDEV_F_DEFER,
 		},
-		.vid = entry->vid,
+		.vid = mp->addr.vid,
 	};
-	struct net_device *port_dev;
 	struct net *net = dev_net(dev);
 	struct sk_buff *skb;
 	int err = -ENOBUFS;
 
-	port_dev = __dev_get_by_index(net, entry->ifindex);
-	if (entry->addr.proto == htons(ETH_P_IP))
-		ip_eth_mc_map(entry->addr.u.ip4, mdb.addr);
+	if (pg) {
+		if (mp->addr.proto == htons(ETH_P_IP))
+			ip_eth_mc_map(mp->addr.u.ip4, mdb.addr);
 #if IS_ENABLED(CONFIG_IPV6)
-	else
-		ipv6_eth_mc_map(&entry->addr.u.ip6, mdb.addr);
+		else
+			ipv6_eth_mc_map(&mp->addr.u.ip6, mdb.addr);
 #endif
-
-	mdb.obj.orig_dev = port_dev;
-	if (p && port_dev && type == RTM_NEWMDB) {
-		complete_info = kmalloc(sizeof(*complete_info), GFP_ATOMIC);
-		if (complete_info) {
-			complete_info->port = p;
-			__mdb_entry_to_br_ip(entry, &complete_info->ip);
+		mdb.obj.orig_dev = pg->port->dev;
+		switch (type) {
+		case RTM_NEWMDB:
+			complete_info = kmalloc(sizeof(*complete_info), GFP_ATOMIC);
+			if (!complete_info)
+				break;
+			complete_info->port = pg->port;
+			complete_info->ip = mp->addr;
 			mdb.obj.complete_priv = complete_info;
 			mdb.obj.complete = br_mdb_complete;
-			if (switchdev_port_obj_add(port_dev, &mdb.obj, NULL))
+			if (switchdev_port_obj_add(pg->port->dev, &mdb.obj, NULL))
 				kfree(complete_info);
+			break;
+		case RTM_DELMDB:
+			switchdev_port_obj_del(pg->port->dev, &mdb.obj);
+			break;
 		}
-	} else if (p && port_dev && type == RTM_DELMDB) {
-		switchdev_port_obj_del(port_dev, &mdb.obj);
+	} else {
+		br_mdb_switchdev_host(dev, mp, type);
 	}
 
-	if (!p)
-		br_mdb_switchdev_host(dev, entry, type);
-
-	skb = nlmsg_new(rtnl_mdb_nlmsg_size(), GFP_ATOMIC);
+	skb = nlmsg_new(rtnl_mdb_nlmsg_size(pg), GFP_ATOMIC);
 	if (!skb)
 		goto errout;
 
-	err = nlmsg_populate_mdb_fill(skb, dev, entry, 0, 0, type, NTF_SELF);
+	err = nlmsg_populate_mdb_fill(skb, dev, mp, pg, type);
 	if (err < 0) {
 		kfree_skb(skb);
 		goto errout;
@@ -518,26 +562,6 @@ static void __br_mdb_notify(struct net_device *dev, struct net_bridge_port *p,
 	rtnl_set_sk_err(net, RTNLGRP_MDB, err);
 }
 
-void br_mdb_notify(struct net_device *dev, struct net_bridge_port *port,
-		   struct br_ip *group, int type, u8 flags)
-{
-	struct br_mdb_entry entry;
-
-	memset(&entry, 0, sizeof(entry));
-	if (port)
-		entry.ifindex = port->dev->ifindex;
-	else
-		entry.ifindex = dev->ifindex;
-	entry.addr.proto = group->proto;
-	entry.addr.u.ip4 = group->u.ip4;
-#if IS_ENABLED(CONFIG_IPV6)
-	entry.addr.u.ip6 = group->u.ip6;
-#endif
-	entry.vid = group->vid;
-	__mdb_entry_fill_flags(&entry, flags);
-	__br_mdb_notify(dev, port, &entry, type);
-}
-
 static int nlmsg_populate_rtr_fill(struct sk_buff *skb,
 				   struct net_device *dev,
 				   int ifindex, u32 pid,
@@ -706,7 +730,7 @@ static int br_mdb_add_group(struct net_bridge *br, struct net_bridge_port *port,
 			return -EEXIST;
 
 		br_multicast_host_join(mp, false);
-		__br_mdb_notify(br->dev, NULL, entry, RTM_NEWMDB);
+		br_mdb_notify(br->dev, mp, NULL, RTM_NEWMDB);
 
 		return 0;
 	}
@@ -727,7 +751,7 @@ static int br_mdb_add_group(struct net_bridge *br, struct net_bridge_port *port,
 	rcu_assign_pointer(*pp, p);
 	if (entry->state == MDB_TEMPORARY)
 		mod_timer(&p->timer, now + br->multicast_membership_interval);
-	__br_mdb_notify(br->dev, port, entry, RTM_NEWMDB);
+	br_mdb_notify(br->dev, mp, p, RTM_NEWMDB);
 
 	return 0;
 }
@@ -831,7 +855,7 @@ static int __br_mdb_del(struct net_bridge *br, struct br_mdb_entry *entry)
 	if (entry->ifindex == mp->br->dev->ifindex && mp->host_joined) {
 		br_multicast_host_leave(mp, false);
 		err = 0;
-		__br_mdb_notify(br->dev, NULL, entry, RTM_DELMDB);
+		br_mdb_notify(br->dev, mp, NULL, RTM_DELMDB);
 		if (!mp->ports && netif_running(br->dev))
 			mod_timer(&mp->timer, jiffies);
 		goto unlock;
diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index ab3ab75f954d..541a22e130b0 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -188,7 +188,7 @@ void br_multicast_del_pg(struct net_bridge_mdb_entry *mp,
 	del_timer(&pg->rexmit_timer);
 	hlist_for_each_entry_safe(ent, tmp, &pg->src_list, node)
 		br_multicast_del_group_src(ent);
-	br_mdb_notify(br->dev, pg->port, &pg->addr, RTM_DELMDB, pg->flags);
+	br_mdb_notify(br->dev, mp, pg, RTM_DELMDB);
 	kfree_rcu(pg, rcu);
 
 	if (!mp->ports && !mp->host_joined && netif_running(br->dev))
@@ -749,8 +749,7 @@ void br_multicast_host_join(struct net_bridge_mdb_entry *mp, bool notify)
 	if (!mp->host_joined) {
 		mp->host_joined = true;
 		if (notify)
-			br_mdb_notify(mp->br->dev, NULL, &mp->addr,
-				      RTM_NEWMDB, 0);
+			br_mdb_notify(mp->br->dev, mp, NULL, RTM_NEWMDB);
 	}
 	mod_timer(&mp->timer, jiffies + mp->br->multicast_membership_interval);
 }
@@ -762,7 +761,7 @@ void br_multicast_host_leave(struct net_bridge_mdb_entry *mp, bool notify)
 
 	mp->host_joined = false;
 	if (notify)
-		br_mdb_notify(mp->br->dev, NULL, &mp->addr, RTM_DELMDB, 0);
+		br_mdb_notify(mp->br->dev, mp, NULL, RTM_DELMDB);
 }
 
 static int br_multicast_add_group(struct net_bridge *br,
@@ -805,10 +804,11 @@ static int br_multicast_add_group(struct net_bridge *br,
 	if (unlikely(!p))
 		goto err;
 	rcu_assign_pointer(*pp, p);
-	br_mdb_notify(br->dev, port, group, RTM_NEWMDB, 0);
+	br_mdb_notify(br->dev, mp, p, RTM_NEWMDB);
 
 found:
 	mod_timer(&p->timer, now + br->multicast_membership_interval);
+
 out:
 	err = 0;
 
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index da8df273dd4a..b2a226070846 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -800,8 +800,8 @@ br_multicast_new_port_group(struct net_bridge_port *port, struct br_ip *group,
 			    u8 filter_mode);
 int br_mdb_hash_init(struct net_bridge *br);
 void br_mdb_hash_fini(struct net_bridge *br);
-void br_mdb_notify(struct net_device *dev, struct net_bridge_port *port,
-		   struct br_ip *group, int type, u8 flags);
+void br_mdb_notify(struct net_device *dev, struct net_bridge_mdb_entry *mp,
+		   struct net_bridge_port_group *pg, int type);
 void br_rtr_notify(struct net_device *dev, struct net_bridge_port *port,
 		   int type);
 void br_multicast_del_pg(struct net_bridge_mdb_entry *mp,
-- 
2.25.4

