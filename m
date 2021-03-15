Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F86F33C3E5
	for <lists.bridge@lfdr.de>; Mon, 15 Mar 2021 18:15:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8AC194DF56;
	Mon, 15 Mar 2021 17:15:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0XrzVxBeDWgF; Mon, 15 Mar 2021 17:15:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4DDCF4E3C5;
	Mon, 15 Mar 2021 17:15:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 298E6C0012;
	Mon, 15 Mar 2021 17:15:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 72A8AC0001
 for <bridge@lists.linux-foundation.org>; Mon, 15 Mar 2021 17:15:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6B61A4B799
 for <bridge@lists.linux-foundation.org>; Mon, 15 Mar 2021 17:15:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IrcFPSdGTHuc for <bridge@lists.linux-foundation.org>;
 Mon, 15 Mar 2021 17:15:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 47A4D4694A
 for <bridge@lists.linux-foundation.org>; Mon, 15 Mar 2021 17:15:37 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id c10so67472877ejx.9
 for <bridge@lists.linux-foundation.org>; Mon, 15 Mar 2021 10:15:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ESTLeD/rRbQ5zUXrpQ5m0lZ6N9szWSKZTky7aqh4MOU=;
 b=wpPPFeF9U8eYSajnF91c+M3CErL8izt8nMG5KcuEzkbRi7Cgk1AV1DE6aE3Bruqehw
 O2a2EVeRIvkxrLcEh9N+rkHP5OiXXBPliZqwKtdJ2k+T8QyoiJ8xLvvFKN2yGRekTYSw
 xZsTkHaxRmTK5blRe8rpaVx9HVhmwwIUjoGIs9A3T6wQjy7199vvLuuuNuqm9ZHJ0Qix
 FKXSZjNJa5fceqrzhkqtDFsNNbNwUe8avZqE1LEno0gvZ1b3Nvu82C0CR0Oo80eRa0yF
 3FABXlNPA7k/kvTI2D41qJGmPuMj1Md8pz96j9RRd/Aw6YTPEmyFLgR6APxrC/DMnP4I
 PPOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ESTLeD/rRbQ5zUXrpQ5m0lZ6N9szWSKZTky7aqh4MOU=;
 b=kOSfvPsubfY8O/RK7sNOA9zpFZ2qBCeTZaw0e31Tw/GkOtrWEdwx4zfzOOrj05gTJG
 tiTfDAEdHRF+5ZyPKkUp8/3+kw1LoEWRA3qdwcMHzIPOuRyTvRubRrgiEcZhKnvxmBnT
 8CKZq9vq5ZkjlI0LqU43sbCAnWxF6iRJOVh00TwaluJldnyc2X2HzmABbQTQZO9UTR/8
 RDGixEVJJQ3CRzQFMokPZzJV/gex7a3wuuW83jdRT+O1iAZKofnDn9QxHf/HFvr5+4IM
 Y8RoSNVxzUwxjpU47DVLA6ELbYYsjytmUnGcDlMkAVyYmFWwrLmDCdtXazaJd0jCarNw
 S7Sg==
X-Gm-Message-State: AOAM531zDMRNjScTcfz4yO8Gigxzl1uKBm678igdMdVY5CihJvMGYEiq
 9RdJd2WV797gaXh79Ng27leA7Q==
X-Google-Smtp-Source: ABdhPJzcDyJksw9ZzvLJjdcHPxxTxlpcT893mxbBxwgb+33KAnJYHq1Ku1WEQeo4kGf9nQnJ2Zc9+Q==
X-Received: by 2002:a17:906:b0d8:: with SMTP id
 bk24mr25462400ejb.252.1615828535505; 
 Mon, 15 Mar 2021 10:15:35 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id b12sm8297369eds.94.2021.03.15.10.15.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:15:35 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 15 Mar 2021 19:13:42 +0200
Message-Id: <20210315171342.232809-3-razor@blackwall.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210315171342.232809-1-razor@blackwall.org>
References: <20210315171342.232809-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v2 2/2] net: bridge: mcast: factor out
	common allow/block EHT handling
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

We hande EHT state change for ALLOW messages in INCLUDE mode and for
BLOCK messages in EXCLUDE mode similarly - create the new set entries
with the proper filter mode. We also handle EHT state change for ALLOW
messages in EXCLUDE mode and for BLOCK messages in INCLUDE mode in a
similar way - delete the common entries (current set and new set).
Factor out all the common code as follows:
 - ALLOW/INCLUDE, BLOCK/EXCLUDE: call __eht_create_set_entries()
 - ALLOW/EXCLUDE, BLOCK/INCLUDE: call __eht_del_common_set_entries()

The set entries creation can be reused in __eht_inc_exc() as well.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast_eht.c | 98 ++++++++++-------------------------
 1 file changed, 27 insertions(+), 71 deletions(-)

diff --git a/net/bridge/br_multicast_eht.c b/net/bridge/br_multicast_eht.c
index 982398e44658..13290a749d09 100644
--- a/net/bridge/br_multicast_eht.c
+++ b/net/bridge/br_multicast_eht.c
@@ -498,11 +498,13 @@ static void br_multicast_del_eht_host(struct net_bridge_port_group *pg,
 					       &set_h->h_addr);
 }
 
-static void __eht_allow_incl(struct net_bridge_port_group *pg,
-			     union net_bridge_eht_addr *h_addr,
-			     void *srcs,
-			     u32 nsrcs,
-			     size_t addr_size)
+/* create new set entries from reports */
+static void __eht_create_set_entries(struct net_bridge_port_group *pg,
+				     union net_bridge_eht_addr *h_addr,
+				     void *srcs,
+				     u32 nsrcs,
+				     size_t addr_size,
+				     int filter_mode)
 {
 	union net_bridge_eht_addr eht_src_addr;
 	u32 src_idx;
@@ -511,16 +513,17 @@ static void __eht_allow_incl(struct net_bridge_port_group *pg,
 	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
 		memcpy(&eht_src_addr, srcs + (src_idx * addr_size), addr_size);
 		br_multicast_create_eht_set_entry(pg, &eht_src_addr, h_addr,
-						  MCAST_INCLUDE,
+						  filter_mode,
 						  false);
 	}
 }
 
-static bool __eht_allow_excl(struct net_bridge_port_group *pg,
-			     union net_bridge_eht_addr *h_addr,
-			     void *srcs,
-			     u32 nsrcs,
-			     size_t addr_size)
+/* delete existing set entries and their (S,G) entries if they were the last */
+static bool __eht_del_set_entries(struct net_bridge_port_group *pg,
+				  union net_bridge_eht_addr *h_addr,
+				  void *srcs,
+				  u32 nsrcs,
+				  size_t addr_size)
 {
 	union net_bridge_eht_addr eht_src_addr;
 	struct net_bridge_group_src *src_ent;
@@ -529,10 +532,11 @@ static bool __eht_allow_excl(struct net_bridge_port_group *pg,
 	u32 src_idx;
 
 	memset(&eht_src_addr, 0, sizeof(eht_src_addr));
+	memset(&src_ip, 0, sizeof(src_ip));
+	src_ip.proto = pg->key.addr.proto;
 	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
 		memcpy(&eht_src_addr, srcs + (src_idx * addr_size), addr_size);
-		if (!br_multicast_del_eht_set_entry(pg, &eht_src_addr,
-						    h_addr))
+		if (!br_multicast_del_eht_set_entry(pg, &eht_src_addr, h_addr))
 			continue;
 		memcpy(&src_ip, srcs + (src_idx * addr_size), addr_size);
 		src_ent = br_multicast_find_group_src(pg, &src_ip);
@@ -555,64 +559,18 @@ static bool br_multicast_eht_allow(struct net_bridge_port_group *pg,
 
 	switch (br_multicast_eht_host_filter_mode(pg, h_addr)) {
 	case MCAST_INCLUDE:
-		__eht_allow_incl(pg, h_addr, srcs, nsrcs, addr_size);
+		__eht_create_set_entries(pg, h_addr, srcs, nsrcs, addr_size,
+					 MCAST_INCLUDE);
 		break;
 	case MCAST_EXCLUDE:
-		changed = __eht_allow_excl(pg, h_addr, srcs, nsrcs, addr_size);
+		changed = __eht_del_set_entries(pg, h_addr, srcs, nsrcs,
+						addr_size);
 		break;
 	}
 
 	return changed;
 }
 
-static bool __eht_block_incl(struct net_bridge_port_group *pg,
-			     union net_bridge_eht_addr *h_addr,
-			     void *srcs,
-			     u32 nsrcs,
-			     size_t addr_size)
-{
-	union net_bridge_eht_addr eht_src_addr;
-	struct net_bridge_group_src *src_ent;
-	bool changed = false;
-	struct br_ip src_ip;
-	u32 src_idx;
-
-	memset(&eht_src_addr, 0, sizeof(eht_src_addr));
-	memset(&src_ip, 0, sizeof(src_ip));
-	src_ip.proto = pg->key.addr.proto;
-	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
-		memcpy(&eht_src_addr, srcs + (src_idx * addr_size), addr_size);
-		if (!br_multicast_del_eht_set_entry(pg, &eht_src_addr, h_addr))
-			continue;
-		memcpy(&src_ip, srcs + (src_idx * addr_size), addr_size);
-		src_ent = br_multicast_find_group_src(pg, &src_ip);
-		if (!src_ent)
-			continue;
-		br_multicast_del_group_src(src_ent, true);
-		changed = true;
-	}
-
-	return changed;
-}
-
-static void __eht_block_excl(struct net_bridge_port_group *pg,
-			     union net_bridge_eht_addr *h_addr,
-			     void *srcs,
-			     u32 nsrcs,
-			     size_t addr_size)
-{
-	union net_bridge_eht_addr eht_src_addr;
-	u32 src_idx;
-
-	memset(&eht_src_addr, 0, sizeof(eht_src_addr));
-	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
-		memcpy(&eht_src_addr, srcs + (src_idx * addr_size), addr_size);
-		br_multicast_create_eht_set_entry(pg, &eht_src_addr, h_addr,
-						  MCAST_EXCLUDE,
-						  false);
-	}
-}
-
 static bool br_multicast_eht_block(struct net_bridge_port_group *pg,
 				   union net_bridge_eht_addr *h_addr,
 				   void *srcs,
@@ -623,10 +581,12 @@ static bool br_multicast_eht_block(struct net_bridge_port_group *pg,
 
 	switch (br_multicast_eht_host_filter_mode(pg, h_addr)) {
 	case MCAST_INCLUDE:
-		changed = __eht_block_incl(pg, h_addr, srcs, nsrcs, addr_size);
+		changed = __eht_del_set_entries(pg, h_addr, srcs, nsrcs,
+						addr_size);
 		break;
 	case MCAST_EXCLUDE:
-		__eht_block_excl(pg, h_addr, srcs, nsrcs, addr_size);
+		__eht_create_set_entries(pg, h_addr, srcs, nsrcs, addr_size,
+					 MCAST_EXCLUDE);
 		break;
 	}
 
@@ -644,7 +604,6 @@ static bool __eht_inc_exc(struct net_bridge_port_group *pg,
 {
 	bool changed = false, flush_entries = to_report;
 	union net_bridge_eht_addr eht_src_addr;
-	u32 src_idx;
 
 	if (br_multicast_eht_host_filter_mode(pg, h_addr) != filter_mode)
 		flush_entries = true;
@@ -653,11 +612,8 @@ static bool __eht_inc_exc(struct net_bridge_port_group *pg,
 	/* if we're changing mode del host and its entries */
 	if (flush_entries)
 		br_multicast_del_eht_host(pg, h_addr);
-	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
-		memcpy(&eht_src_addr, srcs + (src_idx * addr_size), addr_size);
-		br_multicast_create_eht_set_entry(pg, &eht_src_addr, h_addr,
-						  filter_mode, false);
-	}
+	__eht_create_set_entries(pg, h_addr, srcs, nsrcs, addr_size,
+				 filter_mode);
 	/* we can be missing sets only if we've deleted some entries */
 	if (flush_entries) {
 		struct net_bridge *br = pg->key.port->br;
-- 
2.29.2

