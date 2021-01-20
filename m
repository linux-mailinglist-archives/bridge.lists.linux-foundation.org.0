Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 37DA92FD34A
	for <lists.bridge@lfdr.de>; Wed, 20 Jan 2021 15:58:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DA85A20439;
	Wed, 20 Jan 2021 14:58:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gOqk8rVXJg4w; Wed, 20 Jan 2021 14:58:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 929EA203FF;
	Wed, 20 Jan 2021 14:58:11 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7532BC013A;
	Wed, 20 Jan 2021 14:58:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 767DEC013A
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 14:58:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6857487123
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 14:58:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LHcfidmi9wFv for <bridge@lists.linux-foundation.org>;
 Wed, 20 Jan 2021 14:58:08 +0000 (UTC)
X-Greylist: delayed 00:05:04 by SQLgrey-1.7.6
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
 [209.85.218.49])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5C7FE87120
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 14:58:08 +0000 (UTC)
Received: by mail-ej1-f49.google.com with SMTP id rv9so15158524ejb.13
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 06:58:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MnBmjMXyQmfivJvallBlhYYXMX6/FH96w5B1UWhHM0o=;
 b=wKwL3qap9nVEkDwBujNdVmLKwm2mOLFvcXORfuml+1JsXZEBFRRlkf4i4meoAvQqPO
 a2V2DsrVv0t1eOsrTz0DIdzBkzHrsctILlBakd3HKi0/MepvTBd1kD41PyBaIPMfT7jw
 EjwksAvJctlW8+xrdIZpSu/AmMnAWtpMtpTM6cYqgm7fVyeD6DEP514ipnbvsg/mOzBe
 m4Zi5i/oZD7QLk7wXE4ClCyZaguE69ZYW8eht9a27uIHwNMoNK4f0LthN1WoBdezIv1w
 cO/lgE6L0AJJIYQ9ZXjCvLQk3NrxW6MAWhi3+LLoZGczrjVO0dtDjGY8GNXNHbHC4Aih
 +6xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MnBmjMXyQmfivJvallBlhYYXMX6/FH96w5B1UWhHM0o=;
 b=QjaadR26hWRr6IiYFbZ2rrEUBN0SXpR3Z571DC5sOnjFsHlP8os2SoIW+zHZqyU7Lk
 p4A+fOVvFCTdzmefuiJM6WsFcysh8GVKp5hcpmSZa2BIKgSw/w0xzSN3aNQBjuArUCxN
 S5ZIvuyqmTf/Uby+8t6InJYCy3un88fjqUrQljhrV9xWWLL6/j7C4dBraMswQizubzqp
 9sCOPQl7WCt7vbEPdoaZxnhoE3ExHN6BOyY1D3n+yCn37sQuRew0Y+BfdRRk7OPLPPUU
 Gif6Jjcf7po+JSs4B6FwHYSX1lHN6wZRmVeSqGG97XAcyIk7LSZ0L1QUkFrpNoeBKeSm
 UULA==
X-Gm-Message-State: AOAM533OtFVHEt2XFGOgyCz31+OJH987fxflWWEYj0r3g77OX/nAvk7c
 M1In3IQg1ECVa98w7inr/dx6uuWfU0+UwJBC9So=
X-Google-Smtp-Source: ABdhPJzV3mPW8W158/Q/xhzWgv0ZlCqvLbxL3kvjQqkP7UhiYpG1+ydzGJ5DeOIlVpastSYoo4TifA==
X-Received: by 2002:a17:906:8301:: with SMTP id
 j1mr6400823ejx.397.1611154383670; 
 Wed, 20 Jan 2021 06:53:03 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x17sm1239349edq.77.2021.01.20.06.53.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Jan 2021 06:53:03 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Wed, 20 Jan 2021 16:51:50 +0200
Message-Id: <20210120145203.1109140-2-razor@blackwall.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210120145203.1109140-1-razor@blackwall.org>
References: <20210120145203.1109140-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 01/14] net: bridge: multicast: rename
	src_size to addr_size
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

Rename src_size argument to addr_size in preparation for passing host
address as an argument to IGMPv3/MLDv2 functions.
No functional change.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast.c | 78 +++++++++++++++++++--------------------
 1 file changed, 39 insertions(+), 39 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 257ac4e25f6d..3ae2cef6f7ec 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1800,7 +1800,7 @@ static void __grp_send_query_and_rexmit(struct net_bridge_port_group *pg)
  * EXCLUDE (X,Y)  ALLOW (A)     EXCLUDE (X+A,Y-A)        (A)=GMI
  */
 static bool br_multicast_isinc_allow(struct net_bridge_port_group *pg,
-				     void *srcs, u32 nsrcs, size_t src_size)
+				     void *srcs, u32 nsrcs, size_t addr_size)
 {
 	struct net_bridge *br = pg->key.port->br;
 	struct net_bridge_group_src *ent;
@@ -1812,7 +1812,7 @@ static bool br_multicast_isinc_allow(struct net_bridge_port_group *pg,
 	memset(&src_ip, 0, sizeof(src_ip));
 	src_ip.proto = pg->key.addr.proto;
 	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
-		memcpy(&src_ip.src, srcs, src_size);
+		memcpy(&src_ip.src, srcs, addr_size);
 		ent = br_multicast_find_group_src(pg, &src_ip);
 		if (!ent) {
 			ent = br_multicast_new_group_src(pg, &src_ip);
@@ -1822,7 +1822,7 @@ static bool br_multicast_isinc_allow(struct net_bridge_port_group *pg,
 
 		if (ent)
 			__grp_src_mod_timer(ent, now + br_multicast_gmi(br));
-		srcs += src_size;
+		srcs += addr_size;
 	}
 
 	return changed;
@@ -1834,7 +1834,7 @@ static bool br_multicast_isinc_allow(struct net_bridge_port_group *pg,
  *                                                       Group Timer=GMI
  */
 static void __grp_src_isexc_incl(struct net_bridge_port_group *pg,
-				 void *srcs, u32 nsrcs, size_t src_size)
+				 void *srcs, u32 nsrcs, size_t addr_size)
 {
 	struct net_bridge_group_src *ent;
 	struct br_ip src_ip;
@@ -1846,7 +1846,7 @@ static void __grp_src_isexc_incl(struct net_bridge_port_group *pg,
 	memset(&src_ip, 0, sizeof(src_ip));
 	src_ip.proto = pg->key.addr.proto;
 	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
-		memcpy(&src_ip.src, srcs, src_size);
+		memcpy(&src_ip.src, srcs, addr_size);
 		ent = br_multicast_find_group_src(pg, &src_ip);
 		if (ent)
 			ent->flags &= ~BR_SGRP_F_DELETE;
@@ -1854,7 +1854,7 @@ static void __grp_src_isexc_incl(struct net_bridge_port_group *pg,
 			ent = br_multicast_new_group_src(pg, &src_ip);
 		if (ent)
 			br_multicast_fwd_src_handle(ent);
-		srcs += src_size;
+		srcs += addr_size;
 	}
 
 	__grp_src_delete_marked(pg);
@@ -1867,7 +1867,7 @@ static void __grp_src_isexc_incl(struct net_bridge_port_group *pg,
  *                                                       Group Timer=GMI
  */
 static bool __grp_src_isexc_excl(struct net_bridge_port_group *pg,
-				 void *srcs, u32 nsrcs, size_t src_size)
+				 void *srcs, u32 nsrcs, size_t addr_size)
 {
 	struct net_bridge *br = pg->key.port->br;
 	struct net_bridge_group_src *ent;
@@ -1882,7 +1882,7 @@ static bool __grp_src_isexc_excl(struct net_bridge_port_group *pg,
 	memset(&src_ip, 0, sizeof(src_ip));
 	src_ip.proto = pg->key.addr.proto;
 	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
-		memcpy(&src_ip.src, srcs, src_size);
+		memcpy(&src_ip.src, srcs, addr_size);
 		ent = br_multicast_find_group_src(pg, &src_ip);
 		if (ent) {
 			ent->flags &= ~BR_SGRP_F_DELETE;
@@ -1894,7 +1894,7 @@ static bool __grp_src_isexc_excl(struct net_bridge_port_group *pg,
 				changed = true;
 			}
 		}
-		srcs += src_size;
+		srcs += addr_size;
 	}
 
 	if (__grp_src_delete_marked(pg))
@@ -1904,19 +1904,19 @@ static bool __grp_src_isexc_excl(struct net_bridge_port_group *pg,
 }
 
 static bool br_multicast_isexc(struct net_bridge_port_group *pg,
-			       void *srcs, u32 nsrcs, size_t src_size)
+			       void *srcs, u32 nsrcs, size_t addr_size)
 {
 	struct net_bridge *br = pg->key.port->br;
 	bool changed = false;
 
 	switch (pg->filter_mode) {
 	case MCAST_INCLUDE:
-		__grp_src_isexc_incl(pg, srcs, nsrcs, src_size);
+		__grp_src_isexc_incl(pg, srcs, nsrcs, addr_size);
 		br_multicast_star_g_handle_mode(pg, MCAST_EXCLUDE);
 		changed = true;
 		break;
 	case MCAST_EXCLUDE:
-		changed = __grp_src_isexc_excl(pg, srcs, nsrcs, src_size);
+		changed = __grp_src_isexc_excl(pg, srcs, nsrcs, addr_size);
 		break;
 	}
 
@@ -1931,7 +1931,7 @@ static bool br_multicast_isexc(struct net_bridge_port_group *pg,
  *                                                       Send Q(G,A-B)
  */
 static bool __grp_src_toin_incl(struct net_bridge_port_group *pg,
-				void *srcs, u32 nsrcs, size_t src_size)
+				void *srcs, u32 nsrcs, size_t addr_size)
 {
 	struct net_bridge *br = pg->key.port->br;
 	u32 src_idx, to_send = pg->src_ents;
@@ -1946,7 +1946,7 @@ static bool __grp_src_toin_incl(struct net_bridge_port_group *pg,
 	memset(&src_ip, 0, sizeof(src_ip));
 	src_ip.proto = pg->key.addr.proto;
 	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
-		memcpy(&src_ip.src, srcs, src_size);
+		memcpy(&src_ip.src, srcs, addr_size);
 		ent = br_multicast_find_group_src(pg, &src_ip);
 		if (ent) {
 			ent->flags &= ~BR_SGRP_F_SEND;
@@ -1958,7 +1958,7 @@ static bool __grp_src_toin_incl(struct net_bridge_port_group *pg,
 		}
 		if (ent)
 			__grp_src_mod_timer(ent, now + br_multicast_gmi(br));
-		srcs += src_size;
+		srcs += addr_size;
 	}
 
 	if (to_send)
@@ -1973,7 +1973,7 @@ static bool __grp_src_toin_incl(struct net_bridge_port_group *pg,
  *                                                       Send Q(G)
  */
 static bool __grp_src_toin_excl(struct net_bridge_port_group *pg,
-				void *srcs, u32 nsrcs, size_t src_size)
+				void *srcs, u32 nsrcs, size_t addr_size)
 {
 	struct net_bridge *br = pg->key.port->br;
 	u32 src_idx, to_send = pg->src_ents;
@@ -1989,7 +1989,7 @@ static bool __grp_src_toin_excl(struct net_bridge_port_group *pg,
 	memset(&src_ip, 0, sizeof(src_ip));
 	src_ip.proto = pg->key.addr.proto;
 	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
-		memcpy(&src_ip.src, srcs, src_size);
+		memcpy(&src_ip.src, srcs, addr_size);
 		ent = br_multicast_find_group_src(pg, &src_ip);
 		if (ent) {
 			if (timer_pending(&ent->timer)) {
@@ -2003,7 +2003,7 @@ static bool __grp_src_toin_excl(struct net_bridge_port_group *pg,
 		}
 		if (ent)
 			__grp_src_mod_timer(ent, now + br_multicast_gmi(br));
-		srcs += src_size;
+		srcs += addr_size;
 	}
 
 	if (to_send)
@@ -2015,16 +2015,16 @@ static bool __grp_src_toin_excl(struct net_bridge_port_group *pg,
 }
 
 static bool br_multicast_toin(struct net_bridge_port_group *pg,
-			      void *srcs, u32 nsrcs, size_t src_size)
+			      void *srcs, u32 nsrcs, size_t addr_size)
 {
 	bool changed = false;
 
 	switch (pg->filter_mode) {
 	case MCAST_INCLUDE:
-		changed = __grp_src_toin_incl(pg, srcs, nsrcs, src_size);
+		changed = __grp_src_toin_incl(pg, srcs, nsrcs, addr_size);
 		break;
 	case MCAST_EXCLUDE:
-		changed = __grp_src_toin_excl(pg, srcs, nsrcs, src_size);
+		changed = __grp_src_toin_excl(pg, srcs, nsrcs, addr_size);
 		break;
 	}
 
@@ -2038,7 +2038,7 @@ static bool br_multicast_toin(struct net_bridge_port_group *pg,
  *                                                       Group Timer=GMI
  */
 static void __grp_src_toex_incl(struct net_bridge_port_group *pg,
-				void *srcs, u32 nsrcs, size_t src_size)
+				void *srcs, u32 nsrcs, size_t addr_size)
 {
 	struct net_bridge_group_src *ent;
 	u32 src_idx, to_send = 0;
@@ -2050,7 +2050,7 @@ static void __grp_src_toex_incl(struct net_bridge_port_group *pg,
 	memset(&src_ip, 0, sizeof(src_ip));
 	src_ip.proto = pg->key.addr.proto;
 	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
-		memcpy(&src_ip.src, srcs, src_size);
+		memcpy(&src_ip.src, srcs, addr_size);
 		ent = br_multicast_find_group_src(pg, &src_ip);
 		if (ent) {
 			ent->flags = (ent->flags & ~BR_SGRP_F_DELETE) |
@@ -2061,7 +2061,7 @@ static void __grp_src_toex_incl(struct net_bridge_port_group *pg,
 		}
 		if (ent)
 			br_multicast_fwd_src_handle(ent);
-		srcs += src_size;
+		srcs += addr_size;
 	}
 
 	__grp_src_delete_marked(pg);
@@ -2077,7 +2077,7 @@ static void __grp_src_toex_incl(struct net_bridge_port_group *pg,
  *                                                       Group Timer=GMI
  */
 static bool __grp_src_toex_excl(struct net_bridge_port_group *pg,
-				void *srcs, u32 nsrcs, size_t src_size)
+				void *srcs, u32 nsrcs, size_t addr_size)
 {
 	struct net_bridge_group_src *ent;
 	u32 src_idx, to_send = 0;
@@ -2090,7 +2090,7 @@ static bool __grp_src_toex_excl(struct net_bridge_port_group *pg,
 	memset(&src_ip, 0, sizeof(src_ip));
 	src_ip.proto = pg->key.addr.proto;
 	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
-		memcpy(&src_ip.src, srcs, src_size);
+		memcpy(&src_ip.src, srcs, addr_size);
 		ent = br_multicast_find_group_src(pg, &src_ip);
 		if (ent) {
 			ent->flags &= ~BR_SGRP_F_DELETE;
@@ -2105,7 +2105,7 @@ static bool __grp_src_toex_excl(struct net_bridge_port_group *pg,
 			ent->flags |= BR_SGRP_F_SEND;
 			to_send++;
 		}
-		srcs += src_size;
+		srcs += addr_size;
 	}
 
 	if (__grp_src_delete_marked(pg))
@@ -2117,19 +2117,19 @@ static bool __grp_src_toex_excl(struct net_bridge_port_group *pg,
 }
 
 static bool br_multicast_toex(struct net_bridge_port_group *pg,
-			      void *srcs, u32 nsrcs, size_t src_size)
+			      void *srcs, u32 nsrcs, size_t addr_size)
 {
 	struct net_bridge *br = pg->key.port->br;
 	bool changed = false;
 
 	switch (pg->filter_mode) {
 	case MCAST_INCLUDE:
-		__grp_src_toex_incl(pg, srcs, nsrcs, src_size);
+		__grp_src_toex_incl(pg, srcs, nsrcs, addr_size);
 		br_multicast_star_g_handle_mode(pg, MCAST_EXCLUDE);
 		changed = true;
 		break;
 	case MCAST_EXCLUDE:
-		changed = __grp_src_toex_excl(pg, srcs, nsrcs, src_size);
+		changed = __grp_src_toex_excl(pg, srcs, nsrcs, addr_size);
 		break;
 	}
 
@@ -2143,7 +2143,7 @@ static bool br_multicast_toex(struct net_bridge_port_group *pg,
  * INCLUDE (A)    BLOCK (B)     INCLUDE (A)              Send Q(G,A*B)
  */
 static void __grp_src_block_incl(struct net_bridge_port_group *pg,
-				 void *srcs, u32 nsrcs, size_t src_size)
+				 void *srcs, u32 nsrcs, size_t addr_size)
 {
 	struct net_bridge_group_src *ent;
 	u32 src_idx, to_send = 0;
@@ -2155,13 +2155,13 @@ static void __grp_src_block_incl(struct net_bridge_port_group *pg,
 	memset(&src_ip, 0, sizeof(src_ip));
 	src_ip.proto = pg->key.addr.proto;
 	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
-		memcpy(&src_ip.src, srcs, src_size);
+		memcpy(&src_ip.src, srcs, addr_size);
 		ent = br_multicast_find_group_src(pg, &src_ip);
 		if (ent) {
 			ent->flags |= BR_SGRP_F_SEND;
 			to_send++;
 		}
-		srcs += src_size;
+		srcs += addr_size;
 	}
 
 	if (to_send)
@@ -2176,7 +2176,7 @@ static void __grp_src_block_incl(struct net_bridge_port_group *pg,
  *                                                       Send Q(G,A-Y)
  */
 static bool __grp_src_block_excl(struct net_bridge_port_group *pg,
-				 void *srcs, u32 nsrcs, size_t src_size)
+				 void *srcs, u32 nsrcs, size_t addr_size)
 {
 	struct net_bridge_group_src *ent;
 	u32 src_idx, to_send = 0;
@@ -2189,7 +2189,7 @@ static bool __grp_src_block_excl(struct net_bridge_port_group *pg,
 	memset(&src_ip, 0, sizeof(src_ip));
 	src_ip.proto = pg->key.addr.proto;
 	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
-		memcpy(&src_ip.src, srcs, src_size);
+		memcpy(&src_ip.src, srcs, addr_size);
 		ent = br_multicast_find_group_src(pg, &src_ip);
 		if (!ent) {
 			ent = br_multicast_new_group_src(pg, &src_ip);
@@ -2202,7 +2202,7 @@ static bool __grp_src_block_excl(struct net_bridge_port_group *pg,
 			ent->flags |= BR_SGRP_F_SEND;
 			to_send++;
 		}
-		srcs += src_size;
+		srcs += addr_size;
 	}
 
 	if (to_send)
@@ -2212,16 +2212,16 @@ static bool __grp_src_block_excl(struct net_bridge_port_group *pg,
 }
 
 static bool br_multicast_block(struct net_bridge_port_group *pg,
-			       void *srcs, u32 nsrcs, size_t src_size)
+			       void *srcs, u32 nsrcs, size_t addr_size)
 {
 	bool changed = false;
 
 	switch (pg->filter_mode) {
 	case MCAST_INCLUDE:
-		__grp_src_block_incl(pg, srcs, nsrcs, src_size);
+		__grp_src_block_incl(pg, srcs, nsrcs, addr_size);
 		break;
 	case MCAST_EXCLUDE:
-		changed = __grp_src_block_excl(pg, srcs, nsrcs, src_size);
+		changed = __grp_src_block_excl(pg, srcs, nsrcs, addr_size);
 		break;
 	}
 
-- 
2.29.2

