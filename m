Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E92425AA38
	for <lists.bridge@lfdr.de>; Wed,  2 Sep 2020 13:29:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9B0D98716A;
	Wed,  2 Sep 2020 11:29:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xlJSi6VIe3dT; Wed,  2 Sep 2020 11:29:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 520E287199;
	Wed,  2 Sep 2020 11:29:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 45E37C0051;
	Wed,  2 Sep 2020 11:29:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 981D5C0051
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 11:29:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7ECE487199
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 11:29:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WhK6+i3eTftK for <bridge@lists.linux-foundation.org>;
 Wed,  2 Sep 2020 11:29:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6FF418716A
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 11:29:15 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id g4so4352012wrs.5
 for <bridge@lists.linux-foundation.org>; Wed, 02 Sep 2020 04:29:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fGIqJuD0krFkah838uWkiOllNByDMPwKPRmMq8PCBxs=;
 b=exjWCWkgkKarFORnUeLxjCZDRe9evlecnDHUJw/psT9TpuS/yQv+cCvXtrWgK2UevJ
 SB6iVCnb0oIZLXRZ7TN4u7mdH4hatmqEBEBtq8mRasgCTqLI/AqEMnrCkEF0KqYNpQaB
 d5GiKd1DKg6xt1CVUjlQMQwlkI1IIiMEXC5Hk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fGIqJuD0krFkah838uWkiOllNByDMPwKPRmMq8PCBxs=;
 b=hsFkTDciPK5bg5J4CEOwNVcl3UusZuVaKSNKKgb+xSkUk3K9u6jv+a6BaMWuANEJTs
 plgRmf4CCMWErgDyoeMh5MnbUER1+VulMtFr5ri9NXqFORct0wOWjTL+HKMBOwXlriuH
 RYqDuz7CJ9wIxoyrkUJ29ZqW0h1FrCjL60LVJwbw/7hSlxjq/xuULP/iuna7yNlNByJ+
 x9606EbPYUNcV0ioDzUoP4PzHef3yceGZz134LpyFHZZCpd1/2cFRsnr26tkBaMpcoql
 MIkLmr9epsqCSClI7HbyoBOZ5vvOvtyN9nKqxYzOpyCye81UytMh7LmkvdajdBFqApii
 A/Fg==
X-Gm-Message-State: AOAM533zxH46SAYXSKHhERH11al05E9JMQd/ICITGfzk9YKyIkRI8uTa
 eiAoWyC2SoA+a1OObMHxqr0CEw==
X-Google-Smtp-Source: ABdhPJzgF/NfAQuCn0/3jEjnjUTcjWFrDgBVonX/ADfomExIMv6nA4LpPgmllNdZE/zhq/Xlck6WFA==
X-Received: by 2002:adf:8481:: with SMTP id 1mr1574705wrg.231.1599046153815;
 Wed, 02 Sep 2020 04:29:13 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id 5sm5985172wmz.22.2020.09.02.04.29.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Sep 2020 04:29:13 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Wed,  2 Sep 2020 14:25:18 +0300
Message-Id: <20200902112529.1570040-5-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200902112529.1570040-1-nikolay@cumulusnetworks.com>
References: <20200902112529.1570040-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v2 04/15] net: bridge: mcast: add support
	for group-and-source specific queries
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

Allows br_ip4_multicast_alloc_query to build queries with the port group's
source lists and sends a query for sources over and under lmqt when
necessary as per RFC 3376 with the suppress flag set appropriately.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_multicast.c | 126 +++++++++++++++++++++++++++++---------
 net/bridge/br_private.h   |   1 +
 2 files changed, 99 insertions(+), 28 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 9269d62884e5..8a415672764a 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -228,21 +228,50 @@ static void br_multicast_port_group_expired(struct timer_list *t)
 }
 
 static struct sk_buff *br_ip4_multicast_alloc_query(struct net_bridge *br,
-						    __be32 group,
-						    u8 *igmp_type)
+						    struct net_bridge_port_group *pg,
+						    __be32 ip_dst, __be32 group,
+						    bool with_srcs, bool over_lmqt,
+						    u8 sflag, u8 *igmp_type)
 {
+	struct net_bridge_port *p = pg ? pg->port : NULL;
+	struct net_bridge_group_src *ent;
+	size_t pkt_size, igmp_hdr_size;
+	unsigned long now = jiffies;
 	struct igmpv3_query *ihv3;
-	size_t igmp_hdr_size;
+	void *csum_start = NULL;
+	__sum16 *csum = NULL;
 	struct sk_buff *skb;
 	struct igmphdr *ih;
 	struct ethhdr *eth;
+	unsigned long lmqt;
 	struct iphdr *iph;
+	u16 lmqt_srcs = 0;
 
 	igmp_hdr_size = sizeof(*ih);
-	if (br->multicast_igmp_version == 3)
+	if (br->multicast_igmp_version == 3) {
 		igmp_hdr_size = sizeof(*ihv3);
-	skb = netdev_alloc_skb_ip_align(br->dev, sizeof(*eth) + sizeof(*iph) +
-						 igmp_hdr_size + 4);
+		if (pg && with_srcs) {
+			lmqt = now + (br->multicast_last_member_interval *
+				      br->multicast_last_member_count);
+			hlist_for_each_entry(ent, &pg->src_list, node) {
+				if (over_lmqt == time_after(ent->timer.expires,
+							    lmqt) &&
+				    ent->src_query_rexmit_cnt > 0)
+					lmqt_srcs++;
+			}
+
+			if (!lmqt_srcs)
+				return NULL;
+			igmp_hdr_size += lmqt_srcs * sizeof(__be32);
+		}
+	}
+
+	pkt_size = sizeof(*eth) + sizeof(*iph) + 4 + igmp_hdr_size;
+	if ((p && pkt_size > p->dev->mtu) ||
+	    pkt_size > br->dev->mtu)
+		return NULL;
+
+	skb = netdev_alloc_skb_ip_align(br->dev, pkt_size);
 	if (!skb)
 		goto out;
 
@@ -252,29 +281,24 @@ static struct sk_buff *br_ip4_multicast_alloc_query(struct net_bridge *br,
 	eth = eth_hdr(skb);
 
 	ether_addr_copy(eth->h_source, br->dev->dev_addr);
-	eth->h_dest[0] = 1;
-	eth->h_dest[1] = 0;
-	eth->h_dest[2] = 0x5e;
-	eth->h_dest[3] = 0;
-	eth->h_dest[4] = 0;
-	eth->h_dest[5] = 1;
+	ip_eth_mc_map(ip_dst, eth->h_dest);
 	eth->h_proto = htons(ETH_P_IP);
 	skb_put(skb, sizeof(*eth));
 
 	skb_set_network_header(skb, skb->len);
 	iph = ip_hdr(skb);
+	iph->tot_len = htons(pkt_size - sizeof(*eth));
 
 	iph->version = 4;
 	iph->ihl = 6;
 	iph->tos = 0xc0;
-	iph->tot_len = htons(sizeof(*iph) + igmp_hdr_size + 4);
 	iph->id = 0;
 	iph->frag_off = htons(IP_DF);
 	iph->ttl = 1;
 	iph->protocol = IPPROTO_IGMP;
 	iph->saddr = br_opt_get(br, BROPT_MULTICAST_QUERY_USE_IFADDR) ?
 		     inet_select_addr(br->dev, 0, RT_SCOPE_LINK) : 0;
-	iph->daddr = htonl(INADDR_ALLHOSTS_GROUP);
+	iph->daddr = ip_dst;
 	((u8 *)&iph[1])[0] = IPOPT_RA;
 	((u8 *)&iph[1])[1] = 4;
 	((u8 *)&iph[1])[2] = 0;
@@ -294,7 +318,8 @@ static struct sk_buff *br_ip4_multicast_alloc_query(struct net_bridge *br,
 			   (HZ / IGMP_TIMER_SCALE);
 		ih->group = group;
 		ih->csum = 0;
-		ih->csum = ip_compute_csum((void *)ih, sizeof(*ih));
+		csum = &ih->csum;
+		csum_start = (void *)ih;
 		break;
 	case 3:
 		ihv3 = igmpv3_query_hdr(skb);
@@ -304,15 +329,38 @@ static struct sk_buff *br_ip4_multicast_alloc_query(struct net_bridge *br,
 			     (HZ / IGMP_TIMER_SCALE);
 		ihv3->group = group;
 		ihv3->qqic = br->multicast_query_interval / HZ;
-		ihv3->nsrcs = 0;
+		ihv3->nsrcs = htons(lmqt_srcs);
 		ihv3->resv = 0;
-		ihv3->suppress = 0;
+		ihv3->suppress = sflag;
 		ihv3->qrv = 2;
 		ihv3->csum = 0;
-		ihv3->csum = ip_compute_csum((void *)ihv3, sizeof(*ihv3));
+		csum = &ihv3->csum;
+		csum_start = (void *)ihv3;
+		if (!pg || !with_srcs)
+			break;
+
+		lmqt_srcs = 0;
+		hlist_for_each_entry(ent, &pg->src_list, node) {
+			if (over_lmqt == time_after(ent->timer.expires,
+						    lmqt) &&
+			    ent->src_query_rexmit_cnt > 0) {
+				ihv3->srcs[lmqt_srcs++] = ent->addr.u.ip4;
+				ent->src_query_rexmit_cnt--;
+			}
+		}
+		if (WARN_ON(lmqt_srcs != ntohs(ihv3->nsrcs))) {
+			kfree_skb(skb);
+			return NULL;
+		}
 		break;
 	}
 
+	if (WARN_ON(!csum || !csum_start)) {
+		kfree(skb);
+		return NULL;
+	}
+
+	*csum = ip_compute_csum(csum_start, igmp_hdr_size);
 	skb_put(skb, igmp_hdr_size);
 	__skb_pull(skb, sizeof(*eth));
 
@@ -435,15 +483,24 @@ static struct sk_buff *br_ip6_multicast_alloc_query(struct net_bridge *br,
 #endif
 
 static struct sk_buff *br_multicast_alloc_query(struct net_bridge *br,
-						struct br_ip *addr,
-						u8 *igmp_type)
+						struct net_bridge_port_group *pg,
+						struct br_ip *ip_dst,
+						struct br_ip *group,
+						bool with_srcs, bool over_lmqt,
+						u8 sflag, u8 *igmp_type)
 {
-	switch (addr->proto) {
+	__be32 ip4_dst;
+
+	switch (group->proto) {
 	case htons(ETH_P_IP):
-		return br_ip4_multicast_alloc_query(br, addr->u.ip4, igmp_type);
+		ip4_dst = ip_dst ? ip_dst->u.ip4 : htonl(INADDR_ALLHOSTS_GROUP);
+		return br_ip4_multicast_alloc_query(br, pg,
+						    ip4_dst, group->u.ip4,
+						    with_srcs, over_lmqt,
+						    sflag, igmp_type);
 #if IS_ENABLED(CONFIG_IPV6)
 	case htons(ETH_P_IPV6):
-		return br_ip6_multicast_alloc_query(br, &addr->u.ip6,
+		return br_ip6_multicast_alloc_query(br, &group->u.ip6,
 						    igmp_type);
 #endif
 	}
@@ -808,12 +865,19 @@ static void br_multicast_select_own_querier(struct net_bridge *br,
 
 static void __br_multicast_send_query(struct net_bridge *br,
 				      struct net_bridge_port *port,
-				      struct br_ip *ip)
+				      struct net_bridge_port_group *pg,
+				      struct br_ip *ip_dst,
+				      struct br_ip *group,
+				      bool with_srcs,
+				      u8 sflag)
 {
+	bool over_lmqt = !!sflag;
 	struct sk_buff *skb;
 	u8 igmp_type;
 
-	skb = br_multicast_alloc_query(br, ip, &igmp_type);
+again_under_lmqt:
+	skb = br_multicast_alloc_query(br, pg, ip_dst, group, with_srcs,
+				       over_lmqt, sflag, &igmp_type);
 	if (!skb)
 		return;
 
@@ -824,8 +888,13 @@ static void __br_multicast_send_query(struct net_bridge *br,
 		NF_HOOK(NFPROTO_BRIDGE, NF_BR_LOCAL_OUT,
 			dev_net(port->dev), NULL, skb, NULL, skb->dev,
 			br_dev_queue_push_xmit);
+
+		if (over_lmqt && with_srcs && sflag) {
+			over_lmqt = false;
+			goto again_under_lmqt;
+		}
 	} else {
-		br_multicast_select_own_querier(br, ip, skb);
+		br_multicast_select_own_querier(br, group, skb);
 		br_multicast_count(br, port, skb, igmp_type,
 				   BR_MCAST_DIR_RX);
 		netif_rx(skb);
@@ -861,7 +930,7 @@ static void br_multicast_send_query(struct net_bridge *br,
 	if (!other_query || timer_pending(&other_query->timer))
 		return;
 
-	__br_multicast_send_query(br, port, &br_group);
+	__br_multicast_send_query(br, port, NULL, NULL, &br_group, false, 0);
 
 	time = jiffies;
 	time += own_query->startup_sent < br->multicast_startup_query_count ?
@@ -1522,7 +1591,8 @@ br_multicast_leave_group(struct net_bridge *br,
 		goto out;
 
 	if (br_opt_get(br, BROPT_MULTICAST_QUERIER)) {
-		__br_multicast_send_query(br, port, &mp->addr);
+		__br_multicast_send_query(br, port, NULL, NULL, &mp->addr,
+					  false, 0);
 
 		time = jiffies + br->multicast_last_member_count *
 				 br->multicast_last_member_interval;
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 311ad0e402dc..87610d6c0b3f 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -225,6 +225,7 @@ struct net_bridge_group_src {
 	struct br_ip			addr;
 	struct net_bridge_port_group	*pg;
 	u8				flags;
+	u8				src_query_rexmit_cnt;
 	struct timer_list		timer;
 
 	struct net_bridge		*br;
-- 
2.25.4

