Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A42D273BEB
	for <lists.bridge@lfdr.de>; Tue, 22 Sep 2020 09:30:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2FFD487286;
	Tue, 22 Sep 2020 07:30:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ok4i8ZHPDQ8h; Tue, 22 Sep 2020 07:30:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3B3CB8724D;
	Tue, 22 Sep 2020 07:30:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2993BC0889;
	Tue, 22 Sep 2020 07:30:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 316C8C0889
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 07:30:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 27F9186690
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 07:30:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 26h1S0V0OQVF for <bridge@lists.linux-foundation.org>;
 Tue, 22 Sep 2020 07:30:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8C00E8667A
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 07:30:52 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id x14so15820617wrl.12
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 00:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SaZ23g6utHBVS6/UY6BQ9IjsGAmE0I6Ay+JGEx5cRxA=;
 b=a5sSzYWlhp/YeNylquvM+Wq935bnw43AyQ+5wp9nednxaNQB8k1HG7QFjRhmfeNlLQ
 uXPag8WGQi+Wj8jh8lwAaZeANzJxCXcrYoLN3jZuZhRgHtfDv9KkC4ilKhVTlPDbqxUv
 K1T9Cdzsia6k2b29hg9gEz6IumfsulW99psZYAA0/V4yTpZEshyE5WwUroIvWK/Rz5mY
 QIKClpo1ihQgPoAA4o55Emd9nEhAOVph9lRaj/RfSLi6UHKbjZ4aR9hb94G43CPWcXpL
 CzxisHllJqjjbytks/xfKkbS0Qm1AaKuiY0ViRzXbHlu5TCguKtWnLxD22oY5t9tsN3i
 skVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SaZ23g6utHBVS6/UY6BQ9IjsGAmE0I6Ay+JGEx5cRxA=;
 b=JqeRUpx+14KccB6ZE/lQnCgViE7MyL4q93g0bCXvo7+VODB3wiv6IyCl9qEOEHc7yu
 RegBomtZUmtfMCi26IH6/XWQGlIhf2X4x6hbtrGG6iPCvXGagw6w+UqlI5TDSTLYfxeo
 ZCOnG8OD8YVAzKpYni7BCfBRGxIwzIB6gmbUlUJRZh633JM5jak/7y7LoOMwUHkzdfta
 z8i36JGvqUJFkLZXuQfq9KU9LIf8qyC7ahmwiVlte4t5qHM6VVz/h+RhANyP09upjBs/
 cJGiQo5jhqXjrtGrc7unyFlchtAuslfhmEuwvToTbgsLJ4HSG5hSCoRScBPH+12+yhrU
 CRVg==
X-Gm-Message-State: AOAM533HJXCYHteqT/P1/gEr2QDyPi4iiASkYsVQqQgZkeKApY9S7N6A
 53UnuNZsmlteLrbwwVf1kTecHl5+d6EMJlvhs4mdAg==
X-Google-Smtp-Source: ABdhPJxW3tUxZQYsIXIPSHe1oKa/GQhvcVfSZIRxtuzw+PXkl1w6JKHvm30xH9dd0VLR5te4w8GjLA==
X-Received: by 2002:a5d:6a42:: with SMTP id t2mr3593361wrw.425.1600759851028; 
 Tue, 22 Sep 2020 00:30:51 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id s26sm3258287wmh.44.2020.09.22.00.30.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Sep 2020 00:30:50 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 22 Sep 2020 10:30:17 +0300
Message-Id: <20200922073027.1196992-7-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200922073027.1196992-1-razor@blackwall.org>
References: <20200922073027.1196992-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: b.a.t.m.a.n@lists.open-mesh.org, Marek Lindner <mareklindner@neomailbox.ch>,
 Simon Wunderlich <sw@simonwunderlich.de>, bridge@lists.linux-foundation.org,
 Antonio Quartulli <a@unstable.cc>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com, davem@davemloft.net, Sven Eckelmann <sven@narfation.org>
Subject: [Bridge] [PATCH net-next v2 06/16] net: bridge: mcast: rename
	br_ip's u member to dst
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

Since now we have src in br_ip, u no longer makes sense so rename
it to dst. No functional changes.

v2: fix build with CONFIG_BATMAN_ADV_MCAST

CC: Marek Lindner <mareklindner@neomailbox.ch>
CC: Simon Wunderlich <sw@simonwunderlich.de>
CC: Antonio Quartulli <a@unstable.cc>
CC: Sven Eckelmann <sven@narfation.org>
CC: b.a.t.m.a.n@lists.open-mesh.org
Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 include/linux/if_bridge.h  |  2 +-
 net/batman-adv/multicast.c | 14 +++++++-------
 net/bridge/br_mdb.c        | 16 ++++++++--------
 net/bridge/br_multicast.c  | 26 +++++++++++++-------------
 4 files changed, 29 insertions(+), 29 deletions(-)

diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
index 4fb9c4954f3a..556caed00258 100644
--- a/include/linux/if_bridge.h
+++ b/include/linux/if_bridge.h
@@ -25,7 +25,7 @@ struct br_ip {
 #if IS_ENABLED(CONFIG_IPV6)
 		struct in6_addr ip6;
 #endif
-	} u;
+	} dst;
 	__be16		proto;
 	__u16           vid;
 };
diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index 1622c3f5898f..7dda0f7b3d96 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -220,7 +220,7 @@ static u8 batadv_mcast_mla_rtr_flags_bridge_get(struct batadv_priv *bat_priv,
 		 * address here, only IPv6 ones
 		 */
 		if (br_ip_entry->addr.proto == htons(ETH_P_IPV6) &&
-		    ipv6_addr_is_ll_all_routers(&br_ip_entry->addr.u.ip6))
+		    ipv6_addr_is_ll_all_routers(&br_ip_entry->addr.dst.ip6))
 			flags &= ~BATADV_MCAST_WANT_NO_RTR6;
 
 		list_del(&br_ip_entry->list);
@@ -561,10 +561,10 @@ batadv_mcast_mla_softif_get(struct net_device *dev,
 static void batadv_mcast_mla_br_addr_cpy(char *dst, const struct br_ip *src)
 {
 	if (src->proto == htons(ETH_P_IP))
-		ip_eth_mc_map(src->u.ip4, dst);
+		ip_eth_mc_map(src->dst.ip4, dst);
 #if IS_ENABLED(CONFIG_IPV6)
 	else if (src->proto == htons(ETH_P_IPV6))
-		ipv6_eth_mc_map(&src->u.ip6, dst);
+		ipv6_eth_mc_map(&src->dst.ip6, dst);
 #endif
 	else
 		eth_zero_addr(dst);
@@ -608,11 +608,11 @@ static int batadv_mcast_mla_bridge_get(struct net_device *dev,
 				continue;
 
 			if (tvlv_flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES &&
-			    ipv4_is_local_multicast(br_ip_entry->addr.u.ip4))
+			    ipv4_is_local_multicast(br_ip_entry->addr.dst.ip4))
 				continue;
 
 			if (!(tvlv_flags & BATADV_MCAST_WANT_NO_RTR4) &&
-			    !ipv4_is_local_multicast(br_ip_entry->addr.u.ip4))
+			    !ipv4_is_local_multicast(br_ip_entry->addr.dst.ip4))
 				continue;
 		}
 
@@ -622,11 +622,11 @@ static int batadv_mcast_mla_bridge_get(struct net_device *dev,
 				continue;
 
 			if (tvlv_flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES &&
-			    ipv6_addr_is_ll_all_nodes(&br_ip_entry->addr.u.ip6))
+			    ipv6_addr_is_ll_all_nodes(&br_ip_entry->addr.dst.ip6))
 				continue;
 
 			if (!(tvlv_flags & BATADV_MCAST_WANT_NO_RTR6) &&
-			    IPV6_ADDR_MC_SCOPE(&br_ip_entry->addr.u.ip6) >
+			    IPV6_ADDR_MC_SCOPE(&br_ip_entry->addr.dst.ip6) >
 			    IPV6_ADDR_SCOPE_LINKLOCAL)
 				continue;
 		}
diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 269ffd2e549b..a1ff0a372185 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -70,10 +70,10 @@ static void __mdb_entry_to_br_ip(struct br_mdb_entry *entry, struct br_ip *ip)
 	ip->vid = entry->vid;
 	ip->proto = entry->addr.proto;
 	if (ip->proto == htons(ETH_P_IP))
-		ip->u.ip4 = entry->addr.u.ip4;
+		ip->dst.ip4 = entry->addr.u.ip4;
 #if IS_ENABLED(CONFIG_IPV6)
 	else
-		ip->u.ip6 = entry->addr.u.ip6;
+		ip->dst.ip6 = entry->addr.u.ip6;
 #endif
 }
 
@@ -158,10 +158,10 @@ static int __mdb_fill_info(struct sk_buff *skb,
 	e.ifindex = ifindex;
 	e.vid = mp->addr.vid;
 	if (mp->addr.proto == htons(ETH_P_IP))
-		e.addr.u.ip4 = mp->addr.u.ip4;
+		e.addr.u.ip4 = mp->addr.dst.ip4;
 #if IS_ENABLED(CONFIG_IPV6)
 	if (mp->addr.proto == htons(ETH_P_IPV6))
-		e.addr.u.ip6 = mp->addr.u.ip6;
+		e.addr.u.ip6 = mp->addr.dst.ip6;
 #endif
 	e.addr.proto = mp->addr.proto;
 	nest_ent = nla_nest_start_noflag(skb,
@@ -474,10 +474,10 @@ static void br_mdb_switchdev_host_port(struct net_device *dev,
 	};
 
 	if (mp->addr.proto == htons(ETH_P_IP))
-		ip_eth_mc_map(mp->addr.u.ip4, mdb.addr);
+		ip_eth_mc_map(mp->addr.dst.ip4, mdb.addr);
 #if IS_ENABLED(CONFIG_IPV6)
 	else
-		ipv6_eth_mc_map(&mp->addr.u.ip6, mdb.addr);
+		ipv6_eth_mc_map(&mp->addr.dst.ip6, mdb.addr);
 #endif
 
 	mdb.obj.orig_dev = dev;
@@ -520,10 +520,10 @@ void br_mdb_notify(struct net_device *dev,
 
 	if (pg) {
 		if (mp->addr.proto == htons(ETH_P_IP))
-			ip_eth_mc_map(mp->addr.u.ip4, mdb.addr);
+			ip_eth_mc_map(mp->addr.dst.ip4, mdb.addr);
 #if IS_ENABLED(CONFIG_IPV6)
 		else
-			ipv6_eth_mc_map(&mp->addr.u.ip6, mdb.addr);
+			ipv6_eth_mc_map(&mp->addr.dst.ip6, mdb.addr);
 #endif
 		mdb.obj.orig_dev = pg->port->dev;
 		switch (type) {
diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index a899c22c8f57..e1fb822b9ddb 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -86,7 +86,7 @@ static struct net_bridge_mdb_entry *br_mdb_ip4_get(struct net_bridge *br,
 	struct br_ip br_dst;
 
 	memset(&br_dst, 0, sizeof(br_dst));
-	br_dst.u.ip4 = dst;
+	br_dst.dst.ip4 = dst;
 	br_dst.proto = htons(ETH_P_IP);
 	br_dst.vid = vid;
 
@@ -101,7 +101,7 @@ static struct net_bridge_mdb_entry *br_mdb_ip6_get(struct net_bridge *br,
 	struct br_ip br_dst;
 
 	memset(&br_dst, 0, sizeof(br_dst));
-	br_dst.u.ip6 = *dst;
+	br_dst.dst.ip6 = *dst;
 	br_dst.proto = htons(ETH_P_IPV6);
 	br_dst.vid = vid;
 
@@ -126,11 +126,11 @@ struct net_bridge_mdb_entry *br_mdb_get(struct net_bridge *br,
 
 	switch (skb->protocol) {
 	case htons(ETH_P_IP):
-		ip.u.ip4 = ip_hdr(skb)->daddr;
+		ip.dst.ip4 = ip_hdr(skb)->daddr;
 		break;
 #if IS_ENABLED(CONFIG_IPV6)
 	case htons(ETH_P_IPV6):
-		ip.u.ip6 = ipv6_hdr(skb)->daddr;
+		ip.dst.ip6 = ipv6_hdr(skb)->daddr;
 		break;
 #endif
 	default:
@@ -625,9 +625,9 @@ static struct sk_buff *br_multicast_alloc_query(struct net_bridge *br,
 
 	switch (group->proto) {
 	case htons(ETH_P_IP):
-		ip4_dst = ip_dst ? ip_dst->u.ip4 : htonl(INADDR_ALLHOSTS_GROUP);
+		ip4_dst = ip_dst ? ip_dst->dst.ip4 : htonl(INADDR_ALLHOSTS_GROUP);
 		return br_ip4_multicast_alloc_query(br, pg,
-						    ip4_dst, group->u.ip4,
+						    ip4_dst, group->dst.ip4,
 						    with_srcs, over_lmqt,
 						    sflag, igmp_type,
 						    need_rexmit);
@@ -636,13 +636,13 @@ static struct sk_buff *br_multicast_alloc_query(struct net_bridge *br,
 		struct in6_addr ip6_dst;
 
 		if (ip_dst)
-			ip6_dst = ip_dst->u.ip6;
+			ip6_dst = ip_dst->dst.ip6;
 		else
 			ipv6_addr_set(&ip6_dst, htonl(0xff020000), 0, 0,
 				      htonl(1));
 
 		return br_ip6_multicast_alloc_query(br, pg,
-						    &ip6_dst, &group->u.ip6,
+						    &ip6_dst, &group->dst.ip6,
 						    with_srcs, over_lmqt,
 						    sflag, igmp_type,
 						    need_rexmit);
@@ -906,7 +906,7 @@ static int br_ip4_multicast_add_group(struct net_bridge *br,
 		return 0;
 
 	memset(&br_group, 0, sizeof(br_group));
-	br_group.u.ip4 = group;
+	br_group.dst.ip4 = group;
 	br_group.proto = htons(ETH_P_IP);
 	br_group.vid = vid;
 	filter_mode = igmpv2 ? MCAST_EXCLUDE : MCAST_INCLUDE;
@@ -930,7 +930,7 @@ static int br_ip6_multicast_add_group(struct net_bridge *br,
 		return 0;
 
 	memset(&br_group, 0, sizeof(br_group));
-	br_group.u.ip6 = *group;
+	br_group.dst.ip6 = *group;
 	br_group.proto = htons(ETH_P_IPV6);
 	br_group.vid = vid;
 	filter_mode = mldv1 ? MCAST_EXCLUDE : MCAST_INCLUDE;
@@ -1079,7 +1079,7 @@ static void br_multicast_send_query(struct net_bridge *br,
 	    !br_opt_get(br, BROPT_MULTICAST_QUERIER))
 		return;
 
-	memset(&br_group.u, 0, sizeof(br_group.u));
+	memset(&br_group.dst, 0, sizeof(br_group.dst));
 
 	if (port ? (own_query == &port->ip4_own_query) :
 		   (own_query == &br->ip4_own_query)) {
@@ -2506,7 +2506,7 @@ static void br_ip4_multicast_leave_group(struct net_bridge *br,
 	own_query = port ? &port->ip4_own_query : &br->ip4_own_query;
 
 	memset(&br_group, 0, sizeof(br_group));
-	br_group.u.ip4 = group;
+	br_group.dst.ip4 = group;
 	br_group.proto = htons(ETH_P_IP);
 	br_group.vid = vid;
 
@@ -2530,7 +2530,7 @@ static void br_ip6_multicast_leave_group(struct net_bridge *br,
 	own_query = port ? &port->ip6_own_query : &br->ip6_own_query;
 
 	memset(&br_group, 0, sizeof(br_group));
-	br_group.u.ip6 = *group;
+	br_group.dst.ip6 = *group;
 	br_group.proto = htons(ETH_P_IPV6);
 	br_group.vid = vid;
 
-- 
2.25.4

