Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1C62FD354
	for <lists.bridge@lfdr.de>; Wed, 20 Jan 2021 15:59:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C7015203E1;
	Wed, 20 Jan 2021 14:59:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IfRV6P4NOV9T; Wed, 20 Jan 2021 14:59:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id B324820444;
	Wed, 20 Jan 2021 14:59:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9244DC013A;
	Wed, 20 Jan 2021 14:59:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EB772C013A
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 14:59:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DA7AC85F77
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 14:59:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h_HeiWnRP6L2 for <bridge@lists.linux-foundation.org>;
 Wed, 20 Jan 2021 14:59:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com
 [209.85.208.171])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5AB8284EEA
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 14:59:43 +0000 (UTC)
Received: by mail-lj1-f171.google.com with SMTP id p13so26480011ljg.2
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 06:59:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5meUOsqn6rFxtS082gYNXWGOhWLdybj6w8SYeCtUUiQ=;
 b=Qb8oMj3izsyX+ItXzJoXT2ueJ/0rCXb2J6dpLuRyOK20JAfjoCY1r58b3PcBZV6+Qf
 GBIj78/uow/L7PvCh++NPl5L4zdFzkT/IPXCc68FkDhPzwfC+eSt7F2H/OIw7tTa7Bf/
 RouhcksvUHWwlCUBgWo+ALvFonTqSOCU30LLmUk9U8Q5fxihDj0PgTxzh5suW9mHy+Oi
 4n/lvbse88dLiis0x/juvFE/h7ns5yUgknc3wBKQfCrZ5lEIOnIzJOi2u60K6dG9ivU3
 V9nwtZXMG3oww5lbDlwu9u0kLEmRss6QfX0d8oxGOCduHZdwLwq8irpZ8+yWyOzPiW7i
 +5Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5meUOsqn6rFxtS082gYNXWGOhWLdybj6w8SYeCtUUiQ=;
 b=JdfLNZaPIe3I5ZsL/8uM5PN0tG2aERYRNjQW6tpTerZHAPb4cy6QAqhQlEZcT6PNEF
 ctWCIyx24eyLbsDfXrCNM9enMCK60Qz4lWyO/pZIwKsE0WpMm0BB07so/Hy1G4fctpo3
 jWYQBMWxnB0riIxuG4ueqsR7lOL1t7RBRi9bVI/c6IubbQnLE4/A4uC7IY31BQQ1UEot
 WNyhICRVzJaQpJ29/p/ExWfWv0NXYBk+l3nEs+9/VUga/xlrShTRYl+ImBvFuHUH8Xun
 diQ70ccUPKkScoI4HNTDQkebpswbzIRK+G7RWhUABoFoHXJoZmrnB57xnOhI0mOmhXjE
 0vKQ==
X-Gm-Message-State: AOAM5321DZsCkNAYx7U73qPH/1TBDKHn/+PQ6m/l94jYsGMvCLIwlVv4
 UKRt2IF+s/TdGr3J8HA68CSesXSUUVbVfMXMgzE=
X-Google-Smtp-Source: ABdhPJzHBOxDaf954Huf+JNnDN0sG+dxHsqIAoAUDr29UwbGd221CG9vi+uJlEdDbn/RfEVy0PbZWg==
X-Received: by 2002:aa7:d60f:: with SMTP id c15mr7455152edr.232.1611154384661; 
 Wed, 20 Jan 2021 06:53:04 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x17sm1239349edq.77.2021.01.20.06.53.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Jan 2021 06:53:04 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Wed, 20 Jan 2021 16:51:51 +0200
Message-Id: <20210120145203.1109140-3-razor@blackwall.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210120145203.1109140-1-razor@blackwall.org>
References: <20210120145203.1109140-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 02/14] net: bridge: multicast: pass host
	src address to IGMPv3/MLDv2 functions
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

We need to pass the host address so later it can be used for explicit
host tracking. No functional change.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast.c | 90 +++++++++++++++++++++------------------
 1 file changed, 49 insertions(+), 41 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 3ae2cef6f7ec..861545094d67 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1799,7 +1799,7 @@ static void __grp_send_query_and_rexmit(struct net_bridge_port_group *pg)
  * INCLUDE (A)    ALLOW (B)     INCLUDE (A+B)            (B)=GMI
  * EXCLUDE (X,Y)  ALLOW (A)     EXCLUDE (X+A,Y-A)        (A)=GMI
  */
-static bool br_multicast_isinc_allow(struct net_bridge_port_group *pg,
+static bool br_multicast_isinc_allow(struct net_bridge_port_group *pg, void *h_addr,
 				     void *srcs, u32 nsrcs, size_t addr_size)
 {
 	struct net_bridge *br = pg->key.port->br;
@@ -1833,7 +1833,7 @@ static bool br_multicast_isinc_allow(struct net_bridge_port_group *pg,
  *                                                       Delete (A-B)
  *                                                       Group Timer=GMI
  */
-static void __grp_src_isexc_incl(struct net_bridge_port_group *pg,
+static void __grp_src_isexc_incl(struct net_bridge_port_group *pg, void *h_addr,
 				 void *srcs, u32 nsrcs, size_t addr_size)
 {
 	struct net_bridge_group_src *ent;
@@ -1866,7 +1866,7 @@ static void __grp_src_isexc_incl(struct net_bridge_port_group *pg,
  *                                                       Delete (Y-A)
  *                                                       Group Timer=GMI
  */
-static bool __grp_src_isexc_excl(struct net_bridge_port_group *pg,
+static bool __grp_src_isexc_excl(struct net_bridge_port_group *pg, void *h_addr,
 				 void *srcs, u32 nsrcs, size_t addr_size)
 {
 	struct net_bridge *br = pg->key.port->br;
@@ -1903,7 +1903,7 @@ static bool __grp_src_isexc_excl(struct net_bridge_port_group *pg,
 	return changed;
 }
 
-static bool br_multicast_isexc(struct net_bridge_port_group *pg,
+static bool br_multicast_isexc(struct net_bridge_port_group *pg, void *h_addr,
 			       void *srcs, u32 nsrcs, size_t addr_size)
 {
 	struct net_bridge *br = pg->key.port->br;
@@ -1911,12 +1911,12 @@ static bool br_multicast_isexc(struct net_bridge_port_group *pg,
 
 	switch (pg->filter_mode) {
 	case MCAST_INCLUDE:
-		__grp_src_isexc_incl(pg, srcs, nsrcs, addr_size);
+		__grp_src_isexc_incl(pg, h_addr, srcs, nsrcs, addr_size);
 		br_multicast_star_g_handle_mode(pg, MCAST_EXCLUDE);
 		changed = true;
 		break;
 	case MCAST_EXCLUDE:
-		changed = __grp_src_isexc_excl(pg, srcs, nsrcs, addr_size);
+		changed = __grp_src_isexc_excl(pg, h_addr, srcs, nsrcs, addr_size);
 		break;
 	}
 
@@ -1930,7 +1930,7 @@ static bool br_multicast_isexc(struct net_bridge_port_group *pg,
  * INCLUDE (A)    TO_IN (B)     INCLUDE (A+B)            (B)=GMI
  *                                                       Send Q(G,A-B)
  */
-static bool __grp_src_toin_incl(struct net_bridge_port_group *pg,
+static bool __grp_src_toin_incl(struct net_bridge_port_group *pg, void *h_addr,
 				void *srcs, u32 nsrcs, size_t addr_size)
 {
 	struct net_bridge *br = pg->key.port->br;
@@ -1972,7 +1972,7 @@ static bool __grp_src_toin_incl(struct net_bridge_port_group *pg,
  *                                                       Send Q(G,X-A)
  *                                                       Send Q(G)
  */
-static bool __grp_src_toin_excl(struct net_bridge_port_group *pg,
+static bool __grp_src_toin_excl(struct net_bridge_port_group *pg, void *h_addr,
 				void *srcs, u32 nsrcs, size_t addr_size)
 {
 	struct net_bridge *br = pg->key.port->br;
@@ -2014,17 +2014,17 @@ static bool __grp_src_toin_excl(struct net_bridge_port_group *pg,
 	return changed;
 }
 
-static bool br_multicast_toin(struct net_bridge_port_group *pg,
+static bool br_multicast_toin(struct net_bridge_port_group *pg, void *h_addr,
 			      void *srcs, u32 nsrcs, size_t addr_size)
 {
 	bool changed = false;
 
 	switch (pg->filter_mode) {
 	case MCAST_INCLUDE:
-		changed = __grp_src_toin_incl(pg, srcs, nsrcs, addr_size);
+		changed = __grp_src_toin_incl(pg, h_addr, srcs, nsrcs, addr_size);
 		break;
 	case MCAST_EXCLUDE:
-		changed = __grp_src_toin_excl(pg, srcs, nsrcs, addr_size);
+		changed = __grp_src_toin_excl(pg, h_addr, srcs, nsrcs, addr_size);
 		break;
 	}
 
@@ -2037,7 +2037,7 @@ static bool br_multicast_toin(struct net_bridge_port_group *pg,
  *                                                       Send Q(G,A*B)
  *                                                       Group Timer=GMI
  */
-static void __grp_src_toex_incl(struct net_bridge_port_group *pg,
+static void __grp_src_toex_incl(struct net_bridge_port_group *pg, void *h_addr,
 				void *srcs, u32 nsrcs, size_t addr_size)
 {
 	struct net_bridge_group_src *ent;
@@ -2076,7 +2076,7 @@ static void __grp_src_toex_incl(struct net_bridge_port_group *pg,
  *                                                       Send Q(G,A-Y)
  *                                                       Group Timer=GMI
  */
-static bool __grp_src_toex_excl(struct net_bridge_port_group *pg,
+static bool __grp_src_toex_excl(struct net_bridge_port_group *pg, void *h_addr,
 				void *srcs, u32 nsrcs, size_t addr_size)
 {
 	struct net_bridge_group_src *ent;
@@ -2116,7 +2116,7 @@ static bool __grp_src_toex_excl(struct net_bridge_port_group *pg,
 	return changed;
 }
 
-static bool br_multicast_toex(struct net_bridge_port_group *pg,
+static bool br_multicast_toex(struct net_bridge_port_group *pg, void *h_addr,
 			      void *srcs, u32 nsrcs, size_t addr_size)
 {
 	struct net_bridge *br = pg->key.port->br;
@@ -2124,12 +2124,12 @@ static bool br_multicast_toex(struct net_bridge_port_group *pg,
 
 	switch (pg->filter_mode) {
 	case MCAST_INCLUDE:
-		__grp_src_toex_incl(pg, srcs, nsrcs, addr_size);
+		__grp_src_toex_incl(pg, h_addr, srcs, nsrcs, addr_size);
 		br_multicast_star_g_handle_mode(pg, MCAST_EXCLUDE);
 		changed = true;
 		break;
 	case MCAST_EXCLUDE:
-		changed = __grp_src_toex_excl(pg, srcs, nsrcs, addr_size);
+		changed = __grp_src_toex_excl(pg, h_addr, srcs, nsrcs, addr_size);
 		break;
 	}
 
@@ -2142,7 +2142,7 @@ static bool br_multicast_toex(struct net_bridge_port_group *pg,
 /* State          Msg type      New state                Actions
  * INCLUDE (A)    BLOCK (B)     INCLUDE (A)              Send Q(G,A*B)
  */
-static void __grp_src_block_incl(struct net_bridge_port_group *pg,
+static void __grp_src_block_incl(struct net_bridge_port_group *pg, void *h_addr,
 				 void *srcs, u32 nsrcs, size_t addr_size)
 {
 	struct net_bridge_group_src *ent;
@@ -2175,7 +2175,7 @@ static void __grp_src_block_incl(struct net_bridge_port_group *pg,
  * EXCLUDE (X,Y)  BLOCK (A)     EXCLUDE (X+(A-Y),Y)      (A-X-Y)=Group Timer
  *                                                       Send Q(G,A-Y)
  */
-static bool __grp_src_block_excl(struct net_bridge_port_group *pg,
+static bool __grp_src_block_excl(struct net_bridge_port_group *pg, void *h_addr,
 				 void *srcs, u32 nsrcs, size_t addr_size)
 {
 	struct net_bridge_group_src *ent;
@@ -2211,17 +2211,17 @@ static bool __grp_src_block_excl(struct net_bridge_port_group *pg,
 	return changed;
 }
 
-static bool br_multicast_block(struct net_bridge_port_group *pg,
+static bool br_multicast_block(struct net_bridge_port_group *pg, void *h_addr,
 			       void *srcs, u32 nsrcs, size_t addr_size)
 {
 	bool changed = false;
 
 	switch (pg->filter_mode) {
 	case MCAST_INCLUDE:
-		__grp_src_block_incl(pg, srcs, nsrcs, addr_size);
+		__grp_src_block_incl(pg, h_addr, srcs, nsrcs, addr_size);
 		break;
 	case MCAST_EXCLUDE:
-		changed = __grp_src_block_excl(pg, srcs, nsrcs, addr_size);
+		changed = __grp_src_block_excl(pg, h_addr, srcs, nsrcs, addr_size);
 		break;
 	}
 
@@ -2257,8 +2257,8 @@ static int br_ip4_multicast_igmp3_report(struct net_bridge *br,
 	struct igmpv3_report *ih;
 	struct igmpv3_grec *grec;
 	int i, len, num, type;
+	__be32 group, *h_addr;
 	bool changed = false;
-	__be32 group;
 	int err = 0;
 	u16 nsrcs;
 
@@ -2318,32 +2318,33 @@ static int br_ip4_multicast_igmp3_report(struct net_bridge *br,
 		pg = br_multicast_find_port(mdst, port, src);
 		if (!pg || (pg->flags & MDB_PG_FLAGS_PERMANENT))
 			goto unlock_continue;
-		/* reload grec */
+		/* reload grec and host addr */
 		grec = (void *)(skb->data + len - sizeof(*grec) - (nsrcs * 4));
+		h_addr = &ip_hdr(skb)->saddr;
 		switch (type) {
 		case IGMPV3_ALLOW_NEW_SOURCES:
-			changed = br_multicast_isinc_allow(pg, grec->grec_src,
+			changed = br_multicast_isinc_allow(pg, h_addr, grec->grec_src,
 							   nsrcs, sizeof(__be32));
 			break;
 		case IGMPV3_MODE_IS_INCLUDE:
-			changed = br_multicast_isinc_allow(pg, grec->grec_src, nsrcs,
-							   sizeof(__be32));
+			changed = br_multicast_isinc_allow(pg, h_addr, grec->grec_src,
+							   nsrcs, sizeof(__be32));
 			break;
 		case IGMPV3_MODE_IS_EXCLUDE:
-			changed = br_multicast_isexc(pg, grec->grec_src, nsrcs,
-						     sizeof(__be32));
+			changed = br_multicast_isexc(pg, h_addr, grec->grec_src,
+						     nsrcs, sizeof(__be32));
 			break;
 		case IGMPV3_CHANGE_TO_INCLUDE:
-			changed = br_multicast_toin(pg, grec->grec_src, nsrcs,
-						    sizeof(__be32));
+			changed = br_multicast_toin(pg, h_addr, grec->grec_src,
+						    nsrcs, sizeof(__be32));
 			break;
 		case IGMPV3_CHANGE_TO_EXCLUDE:
-			changed = br_multicast_toex(pg, grec->grec_src, nsrcs,
-						    sizeof(__be32));
+			changed = br_multicast_toex(pg, h_addr, grec->grec_src,
+						    nsrcs, sizeof(__be32));
 			break;
 		case IGMPV3_BLOCK_OLD_SOURCES:
-			changed = br_multicast_block(pg, grec->grec_src, nsrcs,
-						     sizeof(__be32));
+			changed = br_multicast_block(pg, h_addr, grec->grec_src,
+						     nsrcs, sizeof(__be32));
 			break;
 		}
 		if (changed)
@@ -2367,6 +2368,7 @@ static int br_ip6_multicast_mld2_report(struct net_bridge *br,
 	unsigned int nsrcs_offset;
 	const unsigned char *src;
 	struct icmp6hdr *icmp6h;
+	struct in6_addr *h_addr;
 	struct mld2_grec *grec;
 	unsigned int grec_len;
 	bool changed = false;
@@ -2445,30 +2447,36 @@ static int br_ip6_multicast_mld2_report(struct net_bridge *br,
 		pg = br_multicast_find_port(mdst, port, src);
 		if (!pg || (pg->flags & MDB_PG_FLAGS_PERMANENT))
 			goto unlock_continue;
+		h_addr = &ipv6_hdr(skb)->saddr;
 		switch (grec->grec_type) {
 		case MLD2_ALLOW_NEW_SOURCES:
-			changed = br_multicast_isinc_allow(pg, grec->grec_src,
-							   nsrcs,
+			changed = br_multicast_isinc_allow(pg, h_addr,
+							   grec->grec_src, nsrcs,
 							   sizeof(struct in6_addr));
 			break;
 		case MLD2_MODE_IS_INCLUDE:
-			changed = br_multicast_isinc_allow(pg, grec->grec_src, nsrcs,
+			changed = br_multicast_isinc_allow(pg, h_addr,
+							   grec->grec_src, nsrcs,
 							   sizeof(struct in6_addr));
 			break;
 		case MLD2_MODE_IS_EXCLUDE:
-			changed = br_multicast_isexc(pg, grec->grec_src, nsrcs,
+			changed = br_multicast_isexc(pg, h_addr,
+						     grec->grec_src, nsrcs,
 						     sizeof(struct in6_addr));
 			break;
 		case MLD2_CHANGE_TO_INCLUDE:
-			changed = br_multicast_toin(pg, grec->grec_src, nsrcs,
+			changed = br_multicast_toin(pg, h_addr,
+						    grec->grec_src, nsrcs,
 						    sizeof(struct in6_addr));
 			break;
 		case MLD2_CHANGE_TO_EXCLUDE:
-			changed = br_multicast_toex(pg, grec->grec_src, nsrcs,
+			changed = br_multicast_toex(pg, h_addr,
+						    grec->grec_src, nsrcs,
 						    sizeof(struct in6_addr));
 			break;
 		case MLD2_BLOCK_OLD_SOURCES:
-			changed = br_multicast_block(pg, grec->grec_src, nsrcs,
+			changed = br_multicast_block(pg, h_addr,
+						     grec->grec_src, nsrcs,
 						     sizeof(struct in6_addr));
 			break;
 		}
-- 
2.29.2

