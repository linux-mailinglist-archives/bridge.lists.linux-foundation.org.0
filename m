Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E4E25AA3B
	for <lists.bridge@lfdr.de>; Wed,  2 Sep 2020 13:29:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0C150871A1;
	Wed,  2 Sep 2020 11:29:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aLzUkvq3Dzkb; Wed,  2 Sep 2020 11:29:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id BE4C7871A8;
	Wed,  2 Sep 2020 11:29:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A0C04C0052;
	Wed,  2 Sep 2020 11:29:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8120BC0052
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 11:29:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 75C1F87195
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 11:29:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VKDg+-PCHL7b for <bridge@lists.linux-foundation.org>;
 Wed,  2 Sep 2020 11:29:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 72A3F8719E
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 11:29:18 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id c18so4828227wrm.9
 for <bridge@lists.linux-foundation.org>; Wed, 02 Sep 2020 04:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HBNLBluIZymXlbxockG9JX9MFPU4PXTUDWmgPXcXp64=;
 b=AlUkBgmh4tDtGIgYPfVnGR/ylyZtEPU6eqaDFkbqefrNcrprF6tMnyJ3RyO9cKkKRb
 21u/wMwulWxqObvcBWPE6Kn8448z1PrWMZpnxkdatTlLhy3pFktrln6DSfeeoFxTayqr
 3E5vsbJFjmp97Z1DJvhtC6lV81P8pXA0qpjlk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HBNLBluIZymXlbxockG9JX9MFPU4PXTUDWmgPXcXp64=;
 b=ABHSMuubP63ceac7iLa27cecZfSDq6uBpxnnM3cBodkXbYdlZy+GWNJ8kkw2lGzlyP
 ARO3VCOsDlDZZWpxaCgu6IELZfEWYrCLvEjldtoUD7nFDsG3zODy4sh81gL+/9FHnkvj
 YT3KxiyphuCHnWZ7+H1jPbsHgzyNlE7Qs6cvMnWyGxQpl2HI0BaPLohrox3PxoCHoypq
 Fn2e5OJXaejkOuK5CRDan+0zC7rzZnWhgvnWAt7deGA6G2SPgN2RM765he2Qn61RsbeM
 vRLiIFv2PEvoXqg2w0/di4f4sPygYKN/XIHQqPuItszQO/DMV/zjDCYfwMwx1wZDtt53
 b2WA==
X-Gm-Message-State: AOAM532L4uCZuxyxuva6JKcM+qSoopSdOXlPNu9RMF2tJNe/3KGFQZ+/
 Lqz9yC17veWBl7MLwrDZBqxMTA==
X-Google-Smtp-Source: ABdhPJze8VnlMPLNbjtzp/vh1kJqw5OmgH8gnu10/i1lYyWw23z44SNaBN8dd1PuYGE9y9gJe5A8ZQ==
X-Received: by 2002:adf:aa9e:: with SMTP id h30mr6396838wrc.377.1599046156874; 
 Wed, 02 Sep 2020 04:29:16 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id 5sm5985172wmz.22.2020.09.02.04.29.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Sep 2020 04:29:16 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Wed,  2 Sep 2020 14:25:20 +0300
Message-Id: <20200902112529.1570040-7-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200902112529.1570040-1-nikolay@cumulusnetworks.com>
References: <20200902112529.1570040-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v2 06/15] net: bridge: mcast: add support
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

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_multicast.c | 65 ++++++++++++++++++++++++++++++++++-----
 net/bridge/br_private.h   |  8 +++++
 2 files changed, 65 insertions(+), 8 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index ff73d1760b2f..1a910f139ee2 100644
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
@@ -493,7 +498,8 @@ static struct sk_buff *br_multicast_alloc_query(struct net_bridge *br,
 						struct br_ip *ip_dst,
 						struct br_ip *group,
 						bool with_srcs, bool over_lmqt,
-						u8 sflag, u8 *igmp_type)
+						u8 sflag, u8 *igmp_type,
+						bool *need_rexmit)
 {
 	__be32 ip4_dst;
 
@@ -503,7 +509,8 @@ static struct sk_buff *br_multicast_alloc_query(struct net_bridge *br,
 		return br_ip4_multicast_alloc_query(br, pg,
 						    ip4_dst, group->u.ip4,
 						    with_srcs, over_lmqt,
-						    sflag, igmp_type);
+						    sflag, igmp_type,
+						    need_rexmit);
 #if IS_ENABLED(CONFIG_IPV6)
 	case htons(ETH_P_IPV6):
 		return br_ip6_multicast_alloc_query(br, &group->u.ip6,
@@ -647,8 +654,9 @@ struct net_bridge_port_group *br_multicast_new_port_group(
 		p->filter_mode = MCAST_EXCLUDE;
 	INIT_HLIST_HEAD(&p->src_list);
 	rcu_assign_pointer(p->next, next);
-	hlist_add_head(&p->mglist, &port->mglist);
 	timer_setup(&p->timer, br_multicast_port_group_expired, 0);
+	timer_setup(&p->rexmit_timer, br_multicast_port_group_rexmit, 0);
+	hlist_add_head(&p->mglist, &port->mglist);
 
 	if (src)
 		memcpy(p->eth_addr, src, ETH_ALEN);
@@ -875,7 +883,8 @@ static void __br_multicast_send_query(struct net_bridge *br,
 				      struct br_ip *ip_dst,
 				      struct br_ip *group,
 				      bool with_srcs,
-				      u8 sflag)
+				      u8 sflag,
+				      bool *need_rexmit)
 {
 	bool over_lmqt = !!sflag;
 	struct sk_buff *skb;
@@ -883,7 +892,8 @@ static void __br_multicast_send_query(struct net_bridge *br,
 
 again_under_lmqt:
 	skb = br_multicast_alloc_query(br, pg, ip_dst, group, with_srcs,
-				       over_lmqt, sflag, &igmp_type);
+				       over_lmqt, sflag, &igmp_type,
+				       need_rexmit);
 	if (!skb)
 		return;
 
@@ -936,7 +946,8 @@ static void br_multicast_send_query(struct net_bridge *br,
 	if (!other_query || timer_pending(&other_query->timer))
 		return;
 
-	__br_multicast_send_query(br, port, NULL, NULL, &br_group, false, 0);
+	__br_multicast_send_query(br, port, NULL, NULL, &br_group, false, 0,
+				  NULL);
 
 	time = jiffies;
 	time += own_query->startup_sent < br->multicast_startup_query_count ?
@@ -981,6 +992,44 @@ static void br_ip6_multicast_port_query_expired(struct timer_list *t)
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
@@ -1589,7 +1638,7 @@ br_multicast_leave_group(struct net_bridge *br,
 
 	if (br_opt_get(br, BROPT_MULTICAST_QUERIER)) {
 		__br_multicast_send_query(br, port, NULL, NULL, &mp->addr,
-					  false, 0);
+					  false, 0, NULL);
 
 		time = jiffies + br->multicast_last_member_count *
 				 br->multicast_last_member_interval;
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index e363b508db92..34acad4a455a 100644
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
@@ -867,6 +869,12 @@ static inline int br_multicast_igmp_type(const struct sk_buff *skb)
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

