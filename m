Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9F72FD3B2
	for <lists.bridge@lfdr.de>; Wed, 20 Jan 2021 16:18:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1895086180;
	Wed, 20 Jan 2021 15:18:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4z5YwZFOEE8F; Wed, 20 Jan 2021 15:18:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id C609685D5C;
	Wed, 20 Jan 2021 15:18:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A4FDDC013A;
	Wed, 20 Jan 2021 15:18:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 55433C013A
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 15:18:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 47FFC87146
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 15:18:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yv61QPl5WNrk for <bridge@lists.linux-foundation.org>;
 Wed, 20 Jan 2021 15:18:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
 [209.85.208.172])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BFA4A87134
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 15:18:46 +0000 (UTC)
Received: by mail-lj1-f172.google.com with SMTP id i17so1367810ljn.1
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 07:18:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YT+SYFiw1dH0jJDDS//jhORRXswYAr3VsLQ6058Ln4M=;
 b=XTkqPPTp+PixnWplr7ie8/nV6iLYqPMstodVv4rNcV2HNQ2QCVA+IAoVenNeM7ZD83
 zXlvfsU5ijEPeIhs8zH4OJ3Mgb/HrzfXNCmWpQeRtDh9V45tkO3zfkcGz2cPlUAIKoxf
 gHU6zlyd/dZbQgWTQ0Q3lJSq/69YBpcllywqLELJp09O62SwbT6PUeMOhVjPFC+rEPWS
 gvqpI4OWp9pH+G5P125dqzK0LqXm67ILszXfmu939rXSVm55oWZ4ytGJ+RdcWGYHwdF+
 bmASzAtDnEQJfy20PjENjlV/E6Sa4EwqkMDOWVNZPMDQy9/6IyvaXzTQaPui1gwxrEYO
 B/Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YT+SYFiw1dH0jJDDS//jhORRXswYAr3VsLQ6058Ln4M=;
 b=orDy1WvvDSkorqNKczWYFKvVL9on5bd+XGDkgvpWStkfpVE8rE1omaCt/A0D3BBr3q
 40GcTHt3+nFK3GGCqQCT6E2OtqgieeNmQ/Sjj/Np9JUvHsMGmqrFY72yql/wcuCpqs2L
 aZeb97lJ5xAPC0FE7q7vxHEINreCzHqlZEE3vOVvGBo5G3SxspoeUfvmL+jtd37+XIUc
 vUhElRoewNOOYNAVf5yeD6kkaUjEjdbxoiPfLPquORI0VDqmC49S69L4KJkGv/LVsl3R
 egHHcyMDrIoWl1o70BHaoeJtJaC7zHVbG8lw8ZEFKjGgByGTQvuFsbyVgGrsfe+U90lV
 Z7+Q==
X-Gm-Message-State: AOAM532TAYFxSC3zdwh9CJfXFDOqc9sDsxJ8PqD/3S1A8veqWUvdFF10
 wKOs2ujHUkK+J87QuzXYrjUCoOJdx2IlJ1oBpBo=
X-Google-Smtp-Source: ABdhPJwom8mpybS8iOwn4uZe6k9ha+xYzX5RAledJa4fTae60pvUFCJW1jESfvgx0hT07z4mk+6eZg==
X-Received: by 2002:a50:e008:: with SMTP id e8mr7435458edl.339.1611154399994; 
 Wed, 20 Jan 2021 06:53:19 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x17sm1239349edq.77.2021.01.20.06.53.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Jan 2021 06:53:19 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Wed, 20 Jan 2021 16:52:03 +0200
Message-Id: <20210120145203.1109140-15-razor@blackwall.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210120145203.1109140-1-razor@blackwall.org>
References: <20210120145203.1109140-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 14/14] net: bridge: multicast: mark
	IGMPv3/MLDv2 fast-leave deletes
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

Mark groups which were deleted due to fast leave/EHT.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast.c     | 21 ++++++++++++++-------
 net/bridge/br_multicast_eht.c |  8 ++++----
 net/bridge/br_private.h       |  3 ++-
 3 files changed, 20 insertions(+), 12 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 47afb1e11daf..df5db6a58e95 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -442,7 +442,8 @@ static void br_multicast_fwd_src_add(struct net_bridge_group_src *src)
 	br_multicast_sg_add_exclude_ports(star_mp, sg);
 }
 
-static void br_multicast_fwd_src_remove(struct net_bridge_group_src *src)
+static void br_multicast_fwd_src_remove(struct net_bridge_group_src *src,
+					bool fastleave)
 {
 	struct net_bridge_port_group *p, *pg = src->pg;
 	struct net_bridge_port_group __rcu **pp;
@@ -467,6 +468,8 @@ static void br_multicast_fwd_src_remove(struct net_bridge_group_src *src)
 		    (p->flags & MDB_PG_FLAGS_PERMANENT))
 			break;
 
+		if (fastleave)
+			p->flags |= MDB_PG_FLAGS_FAST_LEAVE;
 		br_multicast_del_pg(mp, p, pp);
 		break;
 	}
@@ -560,11 +563,12 @@ static void br_multicast_destroy_group_src(struct net_bridge_mcast_gc *gc)
 	kfree_rcu(src, rcu);
 }
 
-void br_multicast_del_group_src(struct net_bridge_group_src *src)
+void br_multicast_del_group_src(struct net_bridge_group_src *src,
+				bool fastleave)
 {
 	struct net_bridge *br = src->pg->key.port->br;
 
-	br_multicast_fwd_src_remove(src);
+	br_multicast_fwd_src_remove(src, fastleave);
 	hlist_del_init_rcu(&src->node);
 	src->pg->src_ents--;
 	hlist_add_head(&src->mcast_gc.gc_node, &br->mcast_gc_list);
@@ -596,7 +600,7 @@ void br_multicast_del_pg(struct net_bridge_mdb_entry *mp,
 	hlist_del_init(&pg->mglist);
 	br_multicast_eht_clean_sets(pg);
 	hlist_for_each_entry_safe(ent, tmp, &pg->src_list, node)
-		br_multicast_del_group_src(ent);
+		br_multicast_del_group_src(ent, false);
 	br_mdb_notify(br->dev, mp, pg, RTM_DELMDB);
 	if (!br_multicast_is_star_g(&mp->addr)) {
 		rhashtable_remove_fast(&br->sg_port_tbl, &pg->rhnode,
@@ -653,7 +657,7 @@ static void br_multicast_port_group_expired(struct timer_list *t)
 	pg->filter_mode = MCAST_INCLUDE;
 	hlist_for_each_entry_safe(src_ent, tmp, &pg->src_list, node) {
 		if (!timer_pending(&src_ent->timer)) {
-			br_multicast_del_group_src(src_ent);
+			br_multicast_del_group_src(src_ent, false);
 			changed = true;
 		}
 	}
@@ -1080,7 +1084,7 @@ static void br_multicast_group_src_expired(struct timer_list *t)
 
 	pg = src->pg;
 	if (pg->filter_mode == MCAST_INCLUDE) {
-		br_multicast_del_group_src(src);
+		br_multicast_del_group_src(src, false);
 		if (!hlist_empty(&pg->src_list))
 			goto out;
 		br_multicast_find_del_pg(br, pg);
@@ -1704,7 +1708,7 @@ static int __grp_src_delete_marked(struct net_bridge_port_group *pg)
 
 	hlist_for_each_entry_safe(ent, tmp, &pg->src_list, node)
 		if (ent->flags & BR_SGRP_F_DELETE) {
-			br_multicast_del_group_src(ent);
+			br_multicast_del_group_src(ent, false);
 			deleted++;
 		}
 
@@ -2053,6 +2057,7 @@ static bool br_multicast_toin(struct net_bridge_port_group *pg, void *h_addr,
 	}
 
 	if (br_multicast_eht_should_del_pg(pg)) {
+		pg->flags |= MDB_PG_FLAGS_FAST_LEAVE;
 		br_multicast_find_del_pg(pg->key.port->br, pg);
 		/* a notification has already been sent and we shouldn't
 		 * access pg after the delete so we have to return false
@@ -2273,6 +2278,8 @@ static bool br_multicast_block(struct net_bridge_port_group *pg, void *h_addr,
 
 	if ((pg->filter_mode == MCAST_INCLUDE && hlist_empty(&pg->src_list)) ||
 	    br_multicast_eht_should_del_pg(pg)) {
+		if (br_multicast_eht_should_del_pg(pg))
+			pg->flags |= MDB_PG_FLAGS_FAST_LEAVE;
 		br_multicast_find_del_pg(pg->key.port->br, pg);
 		/* a notification has already been sent and we shouldn't
 		 * access pg after the delete so we have to return false
diff --git a/net/bridge/br_multicast_eht.c b/net/bridge/br_multicast_eht.c
index 64ccbd4ae9d9..a4fa1760bc8a 100644
--- a/net/bridge/br_multicast_eht.c
+++ b/net/bridge/br_multicast_eht.c
@@ -537,7 +537,7 @@ static bool __eht_allow_excl(struct net_bridge_port_group *pg,
 			src_ent = br_multicast_find_group_src(pg, &src_ip);
 			if (!src_ent)
 				continue;
-			br_multicast_del_group_src(src_ent);
+			br_multicast_del_group_src(src_ent, true);
 			changed = true;
 		}
 	}
@@ -588,7 +588,7 @@ static bool __eht_block_incl(struct net_bridge_port_group *pg,
 		src_ent = br_multicast_find_group_src(pg, &src_ip);
 		if (!src_ent)
 			continue;
-		br_multicast_del_group_src(src_ent);
+		br_multicast_del_group_src(src_ent, true);
 		changed = true;
 	}
 
@@ -625,7 +625,7 @@ static bool __eht_block_excl(struct net_bridge_port_group *pg,
 			src_ent = br_multicast_find_group_src(pg, &src_ip);
 			if (!src_ent)
 				continue;
-			br_multicast_del_group_src(src_ent);
+			br_multicast_del_group_src(src_ent, true);
 			changed = true;
 		}
 	}
@@ -689,7 +689,7 @@ static bool __eht_inc_exc(struct net_bridge_port_group *pg,
 			br_multicast_ip_src_to_eht_addr(&src_ent->addr,
 							&eht_src_addr);
 			if (!br_multicast_eht_set_lookup(pg, &eht_src_addr)) {
-				br_multicast_del_group_src(src_ent);
+				br_multicast_del_group_src(src_ent, true);
 				changed = true;
 				continue;
 			}
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index cad967690e9f..0e26ba623006 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -850,7 +850,8 @@ void br_multicast_sg_add_exclude_ports(struct net_bridge_mdb_entry *star_mp,
 				       struct net_bridge_port_group *sg);
 struct net_bridge_group_src *
 br_multicast_find_group_src(struct net_bridge_port_group *pg, struct br_ip *ip);
-void br_multicast_del_group_src(struct net_bridge_group_src *src);
+void br_multicast_del_group_src(struct net_bridge_group_src *src,
+				bool fastleave);
 
 static inline bool br_group_is_l2(const struct br_ip *group)
 {
-- 
2.29.2

