Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0568272233
	for <lists.bridge@lfdr.de>; Mon, 21 Sep 2020 13:21:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 859E786758;
	Mon, 21 Sep 2020 11:21:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CsIk65Hc7ChW; Mon, 21 Sep 2020 11:21:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id A53F38664E;
	Mon, 21 Sep 2020 11:21:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 963C0C0051;
	Mon, 21 Sep 2020 11:21:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1FC4FC0051
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:21:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0EE4785E99
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:21:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 51U7hzUiKKQ6 for <bridge@lists.linux-foundation.org>;
 Mon, 21 Sep 2020 11:21:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com
 [209.85.218.52])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DD83E85815
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:21:33 +0000 (UTC)
Received: by mail-ej1-f52.google.com with SMTP id gx22so8104309ejb.5
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 04:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tyoSfgxjIdkHay3lQPIo6DBSKBZ7kiAjyZijVRqB9EU=;
 b=KhVIat+xkl2eg2G1lCo93IM1AlWJv4YHvmDQt7xx+Z9OdGq4+QAY9YJznmtSiZGkXN
 14GXvJe9gYUTm/d4YN5OYHAlCKKEP3Q+eG4vgJl0cftrGdQDIvkE6uos6uWvUtTUjkj+
 kZf6ZsUNCCy5YljdHGoJ41udmZASAAXegUXQrHGEeCrim6XlHXGG5+cU4J9diCqYCchN
 IWOtlMhKA/W5XFsL5xCw5JdeAzcEWgfpsvHErcdLCWO/h3SYm+++Or8Hri0OAQr+guDf
 EexEqgjrxxBLKb0kL8lizE/ntUhh1V2H49deVR38jAcOSodaLVu9EmzeAJi4n52MlOl3
 H9kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tyoSfgxjIdkHay3lQPIo6DBSKBZ7kiAjyZijVRqB9EU=;
 b=pVRx+WmAD7WFU/X40G5UZ91jMWyjOB0S5nNwMZ9XfZXFym1Golgq/rw4jUX1Y05PGe
 RloEJ5KuVduOFDcLNpDNXWrH301r48ks3cCZzSEoFFzQjeWgxYv+Iy5m9hOKL7661zA3
 npbJLpDbMo4L414F94iNP4L8Jpw1RIQS9ety5Q0FnSa54QKM39BYfVXzL6XXwWqTKuAU
 mSe+jPI/R5Csmjfa62ED4mfKRQ7bdxv0LO+WLZ7r/8NMBoPlo4maWu3Nb/rhV4PNsFiy
 FTH1BBp0f2LEqVSDhOVv2PmvAS9tOLf6VkG0GwxG1byp/PHatDhEQhomdqty35lbKYc8
 ePOw==
X-Gm-Message-State: AOAM531IGz/cNWs7/1B8gAaYzs0e4nplouu3LbnZYsau2tVKhsUx8lRe
 SNa3xizGaOLfJil3Edcc0RY5WBtxjChn50MLNqs=
X-Google-Smtp-Source: ABdhPJzS2fipgp+IsJBIpHDt/SUAOcaM5VTs0o1LenHaKBQylE4ubVeDWr5XL2OLrNNL1mHsej01zQ==
X-Received: by 2002:adf:dbc3:: with SMTP id e3mr33937273wrj.1.1600685774659;
 Mon, 21 Sep 2020 03:56:14 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id s11sm19637727wrt.43.2020.09.21.03.56.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Sep 2020 03:56:14 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 21 Sep 2020 13:55:15 +0300
Message-Id: <20200921105526.1056983-6-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200921105526.1056983-1-razor@blackwall.org>
References: <20200921105526.1056983-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, bridge@lists.linux-foundation.org,
 davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 05/16] net: bridge: mcast: use br_ip's src
	for src groups and querier address
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

Now that we have src and dst in br_ip it is logical to use the src field
for the cases where we need to work with a source address such as
querier source address and group source address.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_mdb.c       |  4 +--
 net/bridge/br_multicast.c | 56 +++++++++++++++++++--------------------
 2 files changed, 30 insertions(+), 30 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 1df62d887953..269ffd2e549b 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -98,7 +98,7 @@ static int __mdb_fill_srcs(struct sk_buff *skb,
 		switch (ent->addr.proto) {
 		case htons(ETH_P_IP):
 			if (nla_put_in_addr(skb, MDBA_MDB_SRCATTR_ADDRESS,
-					    ent->addr.u.ip4)) {
+					    ent->addr.src.ip4)) {
 				nla_nest_cancel(skb, nest_ent);
 				goto out_cancel_err;
 			}
@@ -106,7 +106,7 @@ static int __mdb_fill_srcs(struct sk_buff *skb,
 #if IS_ENABLED(CONFIG_IPV6)
 		case htons(ETH_P_IPV6):
 			if (nla_put_in6_addr(skb, MDBA_MDB_SRCATTR_ADDRESS,
-					     &ent->addr.u.ip6)) {
+					     &ent->addr.src.ip6)) {
 				nla_nest_cancel(skb, nest_ent);
 				goto out_cancel_err;
 			}
diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index e77f1e27caf7..a899c22c8f57 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -423,7 +423,7 @@ static struct sk_buff *br_ip4_multicast_alloc_query(struct net_bridge *br,
 			if (over_lmqt == time_after(ent->timer.expires,
 						    lmqt) &&
 			    ent->src_query_rexmit_cnt > 0) {
-				ihv3->srcs[lmqt_srcs++] = ent->addr.u.ip4;
+				ihv3->srcs[lmqt_srcs++] = ent->addr.src.ip4;
 				ent->src_query_rexmit_cnt--;
 				if (need_rexmit && ent->src_query_rexmit_cnt)
 					*need_rexmit = true;
@@ -584,7 +584,7 @@ static struct sk_buff *br_ip6_multicast_alloc_query(struct net_bridge *br,
 			if (over_llqt == time_after(ent->timer.expires,
 						    llqt) &&
 			    ent->src_query_rexmit_cnt > 0) {
-				mld2q->mld2q_srcs[llqt_srcs++] = ent->addr.u.ip6;
+				mld2q->mld2q_srcs[llqt_srcs++] = ent->addr.src.ip6;
 				ent->src_query_rexmit_cnt--;
 				if (need_rexmit && ent->src_query_rexmit_cnt)
 					*need_rexmit = true;
@@ -717,13 +717,13 @@ br_multicast_find_group_src(struct net_bridge_port_group *pg, struct br_ip *ip)
 	switch (ip->proto) {
 	case htons(ETH_P_IP):
 		hlist_for_each_entry(ent, &pg->src_list, node)
-			if (ip->u.ip4 == ent->addr.u.ip4)
+			if (ip->src.ip4 == ent->addr.src.ip4)
 				return ent;
 		break;
 #if IS_ENABLED(CONFIG_IPV6)
 	case htons(ETH_P_IPV6):
 		hlist_for_each_entry(ent, &pg->src_list, node)
-			if (!ipv6_addr_cmp(&ent->addr.u.ip6, &ip->u.ip6))
+			if (!ipv6_addr_cmp(&ent->addr.src.ip6, &ip->src.ip6))
 				return ent;
 		break;
 #endif
@@ -742,14 +742,14 @@ br_multicast_new_group_src(struct net_bridge_port_group *pg, struct br_ip *src_i
 
 	switch (src_ip->proto) {
 	case htons(ETH_P_IP):
-		if (ipv4_is_zeronet(src_ip->u.ip4) ||
-		    ipv4_is_multicast(src_ip->u.ip4))
+		if (ipv4_is_zeronet(src_ip->src.ip4) ||
+		    ipv4_is_multicast(src_ip->src.ip4))
 			return NULL;
 		break;
 #if IS_ENABLED(CONFIG_IPV6)
 	case htons(ETH_P_IPV6):
-		if (ipv6_addr_any(&src_ip->u.ip6) ||
-		    ipv6_addr_is_multicast(&src_ip->u.ip6))
+		if (ipv6_addr_any(&src_ip->src.ip6) ||
+		    ipv6_addr_is_multicast(&src_ip->src.ip6))
 			return NULL;
 		break;
 #endif
@@ -1019,10 +1019,10 @@ static void br_multicast_select_own_querier(struct net_bridge *br,
 					    struct sk_buff *skb)
 {
 	if (ip->proto == htons(ETH_P_IP))
-		br->ip4_querier.addr.u.ip4 = ip_hdr(skb)->saddr;
+		br->ip4_querier.addr.src.ip4 = ip_hdr(skb)->saddr;
 #if IS_ENABLED(CONFIG_IPV6)
 	else
-		br->ip6_querier.addr.u.ip6 = ipv6_hdr(skb)->saddr;
+		br->ip6_querier.addr.src.ip6 = ipv6_hdr(skb)->saddr;
 #endif
 }
 
@@ -1399,7 +1399,7 @@ static bool br_multicast_isinc_allow(struct net_bridge_port_group *pg,
 	memset(&src_ip, 0, sizeof(src_ip));
 	src_ip.proto = pg->addr.proto;
 	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
-		memcpy(&src_ip.u, srcs, src_size);
+		memcpy(&src_ip.src, srcs, src_size);
 		ent = br_multicast_find_group_src(pg, &src_ip);
 		if (!ent) {
 			ent = br_multicast_new_group_src(pg, &src_ip);
@@ -1433,7 +1433,7 @@ static void __grp_src_isexc_incl(struct net_bridge_port_group *pg,
 	memset(&src_ip, 0, sizeof(src_ip));
 	src_ip.proto = pg->addr.proto;
 	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
-		memcpy(&src_ip.u, srcs, src_size);
+		memcpy(&src_ip.src, srcs, src_size);
 		ent = br_multicast_find_group_src(pg, &src_ip);
 		if (ent)
 			ent->flags &= ~BR_SGRP_F_DELETE;
@@ -1467,7 +1467,7 @@ static bool __grp_src_isexc_excl(struct net_bridge_port_group *pg,
 	memset(&src_ip, 0, sizeof(src_ip));
 	src_ip.proto = pg->addr.proto;
 	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
-		memcpy(&src_ip.u, srcs, src_size);
+		memcpy(&src_ip.src, srcs, src_size);
 		ent = br_multicast_find_group_src(pg, &src_ip);
 		if (ent) {
 			ent->flags &= ~BR_SGRP_F_DELETE;
@@ -1530,7 +1530,7 @@ static bool __grp_src_toin_incl(struct net_bridge_port_group *pg,
 	memset(&src_ip, 0, sizeof(src_ip));
 	src_ip.proto = pg->addr.proto;
 	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
-		memcpy(&src_ip.u, srcs, src_size);
+		memcpy(&src_ip.src, srcs, src_size);
 		ent = br_multicast_find_group_src(pg, &src_ip);
 		if (ent) {
 			ent->flags &= ~BR_SGRP_F_SEND;
@@ -1573,7 +1573,7 @@ static bool __grp_src_toin_excl(struct net_bridge_port_group *pg,
 	memset(&src_ip, 0, sizeof(src_ip));
 	src_ip.proto = pg->addr.proto;
 	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
-		memcpy(&src_ip.u, srcs, src_size);
+		memcpy(&src_ip.src, srcs, src_size);
 		ent = br_multicast_find_group_src(pg, &src_ip);
 		if (ent) {
 			if (timer_pending(&ent->timer)) {
@@ -1634,7 +1634,7 @@ static void __grp_src_toex_incl(struct net_bridge_port_group *pg,
 	memset(&src_ip, 0, sizeof(src_ip));
 	src_ip.proto = pg->addr.proto;
 	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
-		memcpy(&src_ip.u, srcs, src_size);
+		memcpy(&src_ip.src, srcs, src_size);
 		ent = br_multicast_find_group_src(pg, &src_ip);
 		if (ent) {
 			ent->flags = (ent->flags & ~BR_SGRP_F_DELETE) |
@@ -1672,7 +1672,7 @@ static bool __grp_src_toex_excl(struct net_bridge_port_group *pg,
 	memset(&src_ip, 0, sizeof(src_ip));
 	src_ip.proto = pg->addr.proto;
 	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
-		memcpy(&src_ip.u, srcs, src_size);
+		memcpy(&src_ip.src, srcs, src_size);
 		ent = br_multicast_find_group_src(pg, &src_ip);
 		if (ent) {
 			ent->flags &= ~BR_SGRP_F_DELETE;
@@ -1736,7 +1736,7 @@ static void __grp_src_block_incl(struct net_bridge_port_group *pg,
 	memset(&src_ip, 0, sizeof(src_ip));
 	src_ip.proto = pg->addr.proto;
 	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
-		memcpy(&src_ip.u, srcs, src_size);
+		memcpy(&src_ip.src, srcs, src_size);
 		ent = br_multicast_find_group_src(pg, &src_ip);
 		if (ent) {
 			ent->flags |= BR_SGRP_F_SEND;
@@ -1770,7 +1770,7 @@ static bool __grp_src_block_excl(struct net_bridge_port_group *pg,
 	memset(&src_ip, 0, sizeof(src_ip));
 	src_ip.proto = pg->addr.proto;
 	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
-		memcpy(&src_ip.u, srcs, src_size);
+		memcpy(&src_ip.src, srcs, src_size);
 		ent = br_multicast_find_group_src(pg, &src_ip);
 		if (!ent) {
 			ent = br_multicast_new_group_src(pg, &src_ip);
@@ -2071,16 +2071,16 @@ static bool br_ip4_multicast_select_querier(struct net_bridge *br,
 	    !timer_pending(&br->ip4_other_query.timer))
 		goto update;
 
-	if (!br->ip4_querier.addr.u.ip4)
+	if (!br->ip4_querier.addr.src.ip4)
 		goto update;
 
-	if (ntohl(saddr) <= ntohl(br->ip4_querier.addr.u.ip4))
+	if (ntohl(saddr) <= ntohl(br->ip4_querier.addr.src.ip4))
 		goto update;
 
 	return false;
 
 update:
-	br->ip4_querier.addr.u.ip4 = saddr;
+	br->ip4_querier.addr.src.ip4 = saddr;
 
 	/* update protected by general multicast_lock by caller */
 	rcu_assign_pointer(br->ip4_querier.port, port);
@@ -2097,13 +2097,13 @@ static bool br_ip6_multicast_select_querier(struct net_bridge *br,
 	    !timer_pending(&br->ip6_other_query.timer))
 		goto update;
 
-	if (ipv6_addr_cmp(saddr, &br->ip6_querier.addr.u.ip6) <= 0)
+	if (ipv6_addr_cmp(saddr, &br->ip6_querier.addr.src.ip6) <= 0)
 		goto update;
 
 	return false;
 
 update:
-	br->ip6_querier.addr.u.ip6 = *saddr;
+	br->ip6_querier.addr.src.ip6 = *saddr;
 
 	/* update protected by general multicast_lock by caller */
 	rcu_assign_pointer(br->ip6_querier.port, port);
@@ -2118,10 +2118,10 @@ static bool br_multicast_select_querier(struct net_bridge *br,
 {
 	switch (saddr->proto) {
 	case htons(ETH_P_IP):
-		return br_ip4_multicast_select_querier(br, port, saddr->u.ip4);
+		return br_ip4_multicast_select_querier(br, port, saddr->src.ip4);
 #if IS_ENABLED(CONFIG_IPV6)
 	case htons(ETH_P_IPV6):
-		return br_ip6_multicast_select_querier(br, port, &saddr->u.ip6);
+		return br_ip6_multicast_select_querier(br, port, &saddr->src.ip6);
 #endif
 	}
 
@@ -2263,7 +2263,7 @@ static void br_ip4_multicast_query(struct net_bridge *br,
 
 	if (!group) {
 		saddr.proto = htons(ETH_P_IP);
-		saddr.u.ip4 = iph->saddr;
+		saddr.src.ip4 = iph->saddr;
 
 		br_multicast_query_received(br, port, &br->ip4_other_query,
 					    &saddr, max_delay);
@@ -2351,7 +2351,7 @@ static int br_ip6_multicast_query(struct net_bridge *br,
 
 	if (is_general_query) {
 		saddr.proto = htons(ETH_P_IPV6);
-		saddr.u.ip6 = ipv6_hdr(skb)->saddr;
+		saddr.src.ip6 = ipv6_hdr(skb)->saddr;
 
 		br_multicast_query_received(br, port, &br->ip6_other_query,
 					    &saddr, max_delay);
-- 
2.25.4

