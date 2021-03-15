Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE06633C01F
	for <lists.bridge@lfdr.de>; Mon, 15 Mar 2021 16:38:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1346B6F54D;
	Mon, 15 Mar 2021 15:38:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZONQiI16h23q; Mon, 15 Mar 2021 15:38:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTP id 924BB6F565;
	Mon, 15 Mar 2021 15:38:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4BAB2C0012;
	Mon, 15 Mar 2021 15:38:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1DD73C0001
 for <bridge@lists.linux-foundation.org>; Mon, 15 Mar 2021 15:38:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EBCBA6F565
 for <bridge@lists.linux-foundation.org>; Mon, 15 Mar 2021 15:38:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qSi6eFSe4iDI for <bridge@lists.linux-foundation.org>;
 Mon, 15 Mar 2021 15:38:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6DFF4605C2
 for <bridge@lists.linux-foundation.org>; Mon, 15 Mar 2021 15:38:41 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id r17so66974167ejy.13
 for <bridge@lists.linux-foundation.org>; Mon, 15 Mar 2021 08:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pSnoj4e/ExDdUTJVarAFVjEzOpsYS4SYmIolgEK8kPA=;
 b=btzVLGD0JsiuQOFZ1RApGKE+BiAn7GxufYnvaHzTVZ8bxMdYffd/TF17HWmYQFyP4a
 9W3pX5AZiJ3JEHMK1t3TxPoQixS6VQN55vSA7GGelBUToazQk2LmJi1bsRBYGTzVCKBF
 jfn2zhqe7z3L2MxtHGQoBCXNRB9X/aQc7FzJipDCnEG/K5nUhrQU9wH/P9Xov66tVvls
 MzqPCq0QtezbTFPdVjg5Zn7qY2mKDFVHmJe4zb1wdfegCY3DMm0zIfngI+838MFdyarl
 jA8AbyHN5zVbFevyFm1tj0BwSUkzFvtW95184PZwa7dJb8fq/5ZSun2pLRYXw3/iLANi
 dZKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pSnoj4e/ExDdUTJVarAFVjEzOpsYS4SYmIolgEK8kPA=;
 b=UKrjSjebsIHFexKmQejiL8KOH6xrLbWRbHuzqhKrb6iZjINz7O5HJ/usgS/Rp5aW/N
 VbJOpb1niuECUxI1h3zrRKryGLhdpVWmuNhqqt/VKT22dn18aBL5hmpWPKMOq9psMIMw
 Gji4abSNan5+CzLXra7/2hkxGJXtyd4itJ70OppiuC9J7Dc9SHGM+PK+rw6NlnwU0IYm
 RwL6ZNY6EquImpIvm+9J5c6B5mivGbu4ivAvIHB++vmgCiH8N0h9CFzVi0d4VCa7TVdY
 0CZFI0gyuEggG2Rh7cMzYO3BXvR5TpsoGb+cpIH3kR+8BVpH66hWHtEmqgVLrtSjIaF2
 zd/g==
X-Gm-Message-State: AOAM5316fbR09ZcWBwYF6Q1iOJT1kSx4xL9Y0dxHXp4y2FcLLJCd2FUj
 qey/SQWtoN2Yx9cBXq94wqrI9A==
X-Google-Smtp-Source: ABdhPJzr+BbCGjtjL1DScostU4Y5Bs6ZGhPEUyzHVEGeWSZECleKWXrUaYo3owBfZU1XBeA8bgFTTQ==
X-Received: by 2002:a17:906:aed6:: with SMTP id
 me22mr24496935ejb.146.1615822719474; 
 Mon, 15 Mar 2021 08:38:39 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id gj26sm7500174ejb.67.2021.03.15.08.38.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 08:38:39 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 15 Mar 2021 17:38:35 +0200
Message-Id: <20210315153835.190174-1-razor@blackwall.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next] net: bridge: mcast: remove unreachable
	EHT code
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

In the initial EHT versions there were common functions which handled
allow/block messages for both INCLUDE and EXCLUDE modes, but later they
were separated. It seems I've left some common code which cannot be
reached because the filter mode is checked before calling the respective
functions, i.e. the host filter is always in EXCLUDE mode when using
__eht_allow_excl() and __eht_block_excl() thus we can drop the host_excl
checks inside and simplify the code a bit.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast_eht.c | 54 ++++++++++-------------------------
 1 file changed, 15 insertions(+), 39 deletions(-)

diff --git a/net/bridge/br_multicast_eht.c b/net/bridge/br_multicast_eht.c
index fea38b9a7268..7a72567377ba 100644
--- a/net/bridge/br_multicast_eht.c
+++ b/net/bridge/br_multicast_eht.c
@@ -522,31 +522,24 @@ static bool __eht_allow_excl(struct net_bridge_port_group *pg,
 			     u32 nsrcs,
 			     size_t addr_size)
 {
-	bool changed = false, host_excl = false;
 	union net_bridge_eht_addr eht_src_addr;
 	struct net_bridge_group_src *src_ent;
+	bool changed = false;
 	struct br_ip src_ip;
 	u32 src_idx;
 
-	host_excl = !!(br_multicast_eht_host_filter_mode(pg, h_addr) == MCAST_EXCLUDE);
 	memset(&eht_src_addr, 0, sizeof(eht_src_addr));
 	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
 		memcpy(&eht_src_addr, srcs + (src_idx * addr_size), addr_size);
-		if (!host_excl) {
-			br_multicast_create_eht_set_entry(pg, &eht_src_addr, h_addr,
-							  MCAST_INCLUDE,
-							  false);
-		} else {
-			if (!br_multicast_del_eht_set_entry(pg, &eht_src_addr,
-							    h_addr))
-				continue;
-			memcpy(&src_ip, srcs + (src_idx * addr_size), addr_size);
-			src_ent = br_multicast_find_group_src(pg, &src_ip);
-			if (!src_ent)
-				continue;
-			br_multicast_del_group_src(src_ent, true);
-			changed = true;
-		}
+		if (!br_multicast_del_eht_set_entry(pg, &eht_src_addr,
+						    h_addr))
+			continue;
+		memcpy(&src_ip, srcs + (src_idx * addr_size), addr_size);
+		src_ent = br_multicast_find_group_src(pg, &src_ip);
+		if (!src_ent)
+			continue;
+		br_multicast_del_group_src(src_ent, true);
+		changed = true;
 	}
 
 	return changed;
@@ -602,42 +595,25 @@ static bool __eht_block_incl(struct net_bridge_port_group *pg,
 	return changed;
 }
 
-static bool __eht_block_excl(struct net_bridge_port_group *pg,
+static void __eht_block_excl(struct net_bridge_port_group *pg,
 			     union net_bridge_eht_addr *h_addr,
 			     void *srcs,
 			     u32 nsrcs,
 			     size_t addr_size)
 {
-	bool changed = false, host_excl = false;
 	union net_bridge_eht_addr eht_src_addr;
-	struct net_bridge_group_src *src_ent;
 	struct br_ip src_ip;
 	u32 src_idx;
 
-	host_excl = !!(br_multicast_eht_host_filter_mode(pg, h_addr) == MCAST_EXCLUDE);
 	memset(&eht_src_addr, 0, sizeof(eht_src_addr));
 	memset(&src_ip, 0, sizeof(src_ip));
 	src_ip.proto = pg->key.addr.proto;
 	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
 		memcpy(&eht_src_addr, srcs + (src_idx * addr_size), addr_size);
-		if (host_excl) {
-			br_multicast_create_eht_set_entry(pg, &eht_src_addr, h_addr,
-							  MCAST_EXCLUDE,
-							  false);
-		} else {
-			if (!br_multicast_del_eht_set_entry(pg, &eht_src_addr,
-							    h_addr))
-				continue;
-			memcpy(&src_ip, srcs + (src_idx * addr_size), addr_size);
-			src_ent = br_multicast_find_group_src(pg, &src_ip);
-			if (!src_ent)
-				continue;
-			br_multicast_del_group_src(src_ent, true);
-			changed = true;
-		}
+		br_multicast_create_eht_set_entry(pg, &eht_src_addr, h_addr,
+						  MCAST_EXCLUDE,
+						  false);
 	}
-
-	return changed;
 }
 
 static bool br_multicast_eht_block(struct net_bridge_port_group *pg,
@@ -653,7 +629,7 @@ static bool br_multicast_eht_block(struct net_bridge_port_group *pg,
 		changed = __eht_block_incl(pg, h_addr, srcs, nsrcs, addr_size);
 		break;
 	case MCAST_EXCLUDE:
-		changed = __eht_block_excl(pg, h_addr, srcs, nsrcs, addr_size);
+		__eht_block_excl(pg, h_addr, srcs, nsrcs, addr_size);
 		break;
 	}
 
-- 
2.29.2

