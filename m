Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D2825F703
	for <lists.bridge@lfdr.de>; Mon,  7 Sep 2020 12:00:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2E60085E93;
	Mon,  7 Sep 2020 10:00:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EUYoGUq-iHvg; Mon,  7 Sep 2020 10:00:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 797F385E98;
	Mon,  7 Sep 2020 10:00:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6EBECC0859;
	Mon,  7 Sep 2020 10:00:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 32C42C0051
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 10:00:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1091F870DD
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 10:00:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wzBuJf7qZhoN for <bridge@lists.linux-foundation.org>;
 Mon,  7 Sep 2020 10:00:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B6C2A870B0
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 10:00:21 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id q9so13789927wmj.2
 for <bridge@lists.linux-foundation.org>; Mon, 07 Sep 2020 03:00:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vqEdUvGt7LBf0nQeMC3kLUqNog7Ls/CSjniZJ10R3uk=;
 b=e26hm+66Jz1zbOIV6SpH8Wr38Gs237s4o1FZHl/FwL5OZUUW+UjGuPmApH2kqKwLnr
 7QzwZOT+QQ1og0g166jiZR/nV9o1s2V0iOq02c0gfuEM3o2/mh8LBjdmlwmFXJUk2eiZ
 hq7xd7JbQ+YiR2LUOLbY4h/RPy6tDZLxteWbY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vqEdUvGt7LBf0nQeMC3kLUqNog7Ls/CSjniZJ10R3uk=;
 b=ibI/U7uXEwDpWNtLWMPkAHeCMhqf0XU07rVyS9LTmv7c+3LLGJ0ONWJwgrHcevET5D
 kEg0TrhC9jlLH2Af1rZE4uoeaZc/foD4bwBW3L1sKUN7Nu1fwubjB7UMOeyUUgO6Un6T
 sLDdpJ3uh4fUjLK0FDoEEIsXx0u81d7lN6Ay1j49ToeNOX/BKWEOd0XCnXFIiaSCphna
 dvCFZrxSLHQOX6DTI4/PaI4vtcM0TS1Q22JYiaweslfjhQ75K9ORuWrV+qK4iTObvXZy
 sKqY2O2cEK+Rcds+CR4ptWaLxaDRUro+Vz7jzhQwrxrwbx+SQnTz7x61MomhZ8pI4I27
 ny4Q==
X-Gm-Message-State: AOAM531OpsD7ZQbFHondgI/zzzrGkHarHBeHheyWFrdVp5xU9Gr8sMLd
 KSK56rC6nxvHsXqVPRTCsphE8w==
X-Google-Smtp-Source: ABdhPJz8t6EVYcD67NS+RUcWaV0Sb8SkgEIaPa6pPPPF7h8w0hEmSppUvz8btIq6ccO4iSLvIT+hew==
X-Received: by 2002:a7b:c00d:: with SMTP id c13mr19499163wmb.24.1599472820151; 
 Mon, 07 Sep 2020 03:00:20 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id 9sm6686289wmf.7.2020.09.07.03.00.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Sep 2020 03:00:19 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Mon,  7 Sep 2020 12:56:10 +0300
Message-Id: <20200907095619.11216-7-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200907095619.11216-1-nikolay@cumulusnetworks.com>
References: <20200907095619.11216-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v4 06/15] net: bridge: mcast: add support
	for group query retransmit
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

We need to be able to retransmit group-specific and group-and-source
specific queries. The new timer takes care of those.

v3: add IPv6 support

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_multicast.c | 73 +++++++++++++++++++++++++++++++++------
 net/bridge/br_private.h   |  8 +++++
 2 files changed, 71 insertions(+), 10 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index cfb9533447c7..ab3ab75f954d 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -50,6 +50,7 @@ static void br_ip4_multicast_leave_group(struct net_bridge *br,
 					 __be32 group,
 					 __u16 vid,
 					 const unsigned char *src);
+static void br_multicast_port_group_rexmit(struct timer_list *t);
 
 static void __del_port_router(struct net_bridge_port *p);
 #if IS_ENABLED(CONFIG_IPV6)
@@ -184,6 +185,7 @@ void br_multicast_del_pg(struct net_bridge_mdb_entry *mp,
 	rcu_assign_pointer(*pp, pg->next);
 	hlist_del_init(&pg->mglist);
 	del_timer(&pg->timer);
+	del_timer(&pg->rexmit_timer);
 	hlist_for_each_entry_safe(ent, tmp, &pg->src_list, node)
 		br_multicast_del_group_src(ent);
 	br_mdb_notify(br->dev, pg->port, &pg->addr, RTM_DELMDB, pg->flags);
@@ -237,7 +239,8 @@ static struct sk_buff *br_ip4_multicast_alloc_query(struct net_bridge *br,
 						    struct net_bridge_port_group *pg,
 						    __be32 ip_dst, __be32 group,
 						    bool with_srcs, bool over_lmqt,
-						    u8 sflag, u8 *igmp_type)
+						    u8 sflag, u8 *igmp_type,
+						    bool *need_rexmit)
 {
 	struct net_bridge_port *p = pg ? pg->port : NULL;
 	struct net_bridge_group_src *ent;
@@ -352,6 +355,8 @@ static struct sk_buff *br_ip4_multicast_alloc_query(struct net_bridge *br,
 			    ent->src_query_rexmit_cnt > 0) {
 				ihv3->srcs[lmqt_srcs++] = ent->addr.u.ip4;
 				ent->src_query_rexmit_cnt--;
+				if (need_rexmit && ent->src_query_rexmit_cnt)
+					*need_rexmit = true;
 			}
 		}
 		if (WARN_ON(lmqt_srcs != ntohs(ihv3->nsrcs))) {
@@ -380,7 +385,8 @@ static struct sk_buff *br_ip6_multicast_alloc_query(struct net_bridge *br,
 						    const struct in6_addr *ip6_dst,
 						    const struct in6_addr *group,
 						    bool with_srcs, bool over_llqt,
-						    u8 sflag, u8 *igmp_type)
+						    u8 sflag, u8 *igmp_type,
+						    bool *need_rexmit)
 {
 	struct net_bridge_port *p = pg ? pg->port : NULL;
 	struct net_bridge_group_src *ent;
@@ -510,6 +516,8 @@ static struct sk_buff *br_ip6_multicast_alloc_query(struct net_bridge *br,
 			    ent->src_query_rexmit_cnt > 0) {
 				mld2q->mld2q_srcs[llqt_srcs++] = ent->addr.u.ip6;
 				ent->src_query_rexmit_cnt--;
+				if (need_rexmit && ent->src_query_rexmit_cnt)
+					*need_rexmit = true;
 			}
 		}
 		if (WARN_ON(llqt_srcs != ntohs(mld2q->mld2q_nsrcs))) {
@@ -540,7 +548,8 @@ static struct sk_buff *br_multicast_alloc_query(struct net_bridge *br,
 						struct br_ip *ip_dst,
 						struct br_ip *group,
 						bool with_srcs, bool over_lmqt,
-						u8 sflag, u8 *igmp_type)
+						u8 sflag, u8 *igmp_type,
+						bool *need_rexmit)
 {
 	__be32 ip4_dst;
 
@@ -550,7 +559,8 @@ static struct sk_buff *br_multicast_alloc_query(struct net_bridge *br,
 		return br_ip4_multicast_alloc_query(br, pg,
 						    ip4_dst, group->u.ip4,
 						    with_srcs, over_lmqt,
-						    sflag, igmp_type);
+						    sflag, igmp_type,
+						    need_rexmit);
 #if IS_ENABLED(CONFIG_IPV6)
 	case htons(ETH_P_IPV6): {
 		struct in6_addr ip6_dst;
@@ -564,7 +574,8 @@ static struct sk_buff *br_multicast_alloc_query(struct net_bridge *br,
 		return br_ip6_multicast_alloc_query(br, pg,
 						    &ip6_dst, &group->u.ip6,
 						    with_srcs, over_lmqt,
-						    sflag, igmp_type);
+						    sflag, igmp_type,
+						    need_rexmit);
 	}
 #endif
 	}
@@ -708,8 +719,9 @@ struct net_bridge_port_group *br_multicast_new_port_group(
 	p->filter_mode = filter_mode;
 	INIT_HLIST_HEAD(&p->src_list);
 	rcu_assign_pointer(p->next, next);
-	hlist_add_head(&p->mglist, &port->mglist);
 	timer_setup(&p->timer, br_multicast_port_group_expired, 0);
+	timer_setup(&p->rexmit_timer, br_multicast_port_group_rexmit, 0);
+	hlist_add_head(&p->mglist, &port->mglist);
 
 	if (src)
 		memcpy(p->eth_addr, src, ETH_ALEN);
@@ -943,7 +955,8 @@ static void __br_multicast_send_query(struct net_bridge *br,
 				      struct br_ip *ip_dst,
 				      struct br_ip *group,
 				      bool with_srcs,
-				      u8 sflag)
+				      u8 sflag,
+				      bool *need_rexmit)
 {
 	bool over_lmqt = !!sflag;
 	struct sk_buff *skb;
@@ -951,7 +964,8 @@ static void __br_multicast_send_query(struct net_bridge *br,
 
 again_under_lmqt:
 	skb = br_multicast_alloc_query(br, pg, ip_dst, group, with_srcs,
-				       over_lmqt, sflag, &igmp_type);
+				       over_lmqt, sflag, &igmp_type,
+				       need_rexmit);
 	if (!skb)
 		return;
 
@@ -1004,7 +1018,8 @@ static void br_multicast_send_query(struct net_bridge *br,
 	if (!other_query || timer_pending(&other_query->timer))
 		return;
 
-	__br_multicast_send_query(br, port, NULL, NULL, &br_group, false, 0);
+	__br_multicast_send_query(br, port, NULL, NULL, &br_group, false, 0,
+				  NULL);
 
 	time = jiffies;
 	time += own_query->startup_sent < br->multicast_startup_query_count ?
@@ -1049,6 +1064,44 @@ static void br_ip6_multicast_port_query_expired(struct timer_list *t)
 }
 #endif
 
+static void br_multicast_port_group_rexmit(struct timer_list *t)
+{
+	struct net_bridge_port_group *pg = from_timer(pg, t, rexmit_timer);
+	struct bridge_mcast_other_query *other_query = NULL;
+	struct net_bridge *br = pg->port->br;
+	bool need_rexmit = false;
+
+	spin_lock(&br->multicast_lock);
+	if (!netif_running(br->dev) || hlist_unhashed(&pg->mglist) ||
+	    !br_opt_get(br, BROPT_MULTICAST_ENABLED) ||
+	    !br_opt_get(br, BROPT_MULTICAST_QUERIER))
+		goto out;
+
+	if (pg->addr.proto == htons(ETH_P_IP))
+		other_query = &br->ip4_other_query;
+#if IS_ENABLED(CONFIG_IPV6)
+	else
+		other_query = &br->ip6_other_query;
+#endif
+
+	if (!other_query || timer_pending(&other_query->timer))
+		goto out;
+
+	if (pg->grp_query_rexmit_cnt) {
+		pg->grp_query_rexmit_cnt--;
+		__br_multicast_send_query(br, pg->port, pg, &pg->addr,
+					  &pg->addr, false, 1, NULL);
+	}
+	__br_multicast_send_query(br, pg->port, pg, &pg->addr,
+				  &pg->addr, true, 0, &need_rexmit);
+
+	if (pg->grp_query_rexmit_cnt || need_rexmit)
+		mod_timer(&pg->rexmit_timer, jiffies +
+					     br->multicast_last_member_interval);
+out:
+	spin_unlock(&br->multicast_lock);
+}
+
 static void br_mc_disabled_update(struct net_device *dev, bool value)
 {
 	struct switchdev_attr attr = {
@@ -1658,7 +1711,7 @@ br_multicast_leave_group(struct net_bridge *br,
 
 	if (br_opt_get(br, BROPT_MULTICAST_QUERIER)) {
 		__br_multicast_send_query(br, port, NULL, NULL, &mp->addr,
-					  false, 0);
+					  false, 0, NULL);
 
 		time = jiffies + br->multicast_last_member_count *
 				 br->multicast_last_member_interval;
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index e0632721b1ef..da8df273dd4a 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -240,10 +240,12 @@ struct net_bridge_port_group {
 	unsigned char			eth_addr[ETH_ALEN] __aligned(2);
 	unsigned char			flags;
 	unsigned char			filter_mode;
+	unsigned char			grp_query_rexmit_cnt;
 
 	struct hlist_head		src_list;
 	unsigned int			src_ents;
 	struct timer_list		timer;
+	struct timer_list		rexmit_timer;
 	struct hlist_node		mglist;
 
 	struct rcu_head			rcu;
@@ -868,6 +870,12 @@ static inline int br_multicast_igmp_type(const struct sk_buff *skb)
 {
 	return BR_INPUT_SKB_CB(skb)->igmp;
 }
+
+static inline unsigned long br_multicast_lmqt(const struct net_bridge *br)
+{
+	return br->multicast_last_member_interval *
+	       br->multicast_last_member_count;
+}
 #else
 static inline int br_multicast_rcv(struct net_bridge *br,
 				   struct net_bridge_port *port,
-- 
2.25.4

