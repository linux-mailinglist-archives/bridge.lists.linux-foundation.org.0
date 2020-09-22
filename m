Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB36273BF6
	for <lists.bridge@lfdr.de>; Tue, 22 Sep 2020 09:31:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8641D85C9F;
	Tue, 22 Sep 2020 07:31:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jUp_W57iEQNB; Tue, 22 Sep 2020 07:31:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D835085C1D;
	Tue, 22 Sep 2020 07:31:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BD74BC0895;
	Tue, 22 Sep 2020 07:31:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F06EFC0051
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 07:31:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DFF6385C37
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 07:31:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xuVDukj4Dqkk for <bridge@lists.linux-foundation.org>;
 Tue, 22 Sep 2020 07:31:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EC5A285C94
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 07:31:01 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id d4so2219583wmd.5
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 00:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dSI61IYGUvQV65ypmHP+5t4/9m2yNYCAWOhMPESqfJ8=;
 b=SuxhBAoLAS2SLTe54xXHbmNMdJ2YTMrYmpCDKDx3iyqO9/uQdnC4wEBiGgR1Nf0ptG
 q94RHU4yfObPVCLYtVA3Mddw6OL35X2NCF/skz442ymtJiP1gkcI+MV0vyE8HNh0Xl2e
 adNY3jDbTLwKkXpnrL7R1k8Tth6pd5o0FaA0difFELME6QXghZwYK60ZX8d1yeo/9yxV
 UOPUfuWrUdeuDodHGoKVmAe//pwTpfL86Ftb2xJUnCMuq+sLui3f5AXhsnhlKZI6QBLi
 B6qmJxcXlEjhrsssT9zUopayTD7sybx86Gw5mmyTQaR+Xdi554AvNj63Fxof/Yq7LiCc
 4sPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dSI61IYGUvQV65ypmHP+5t4/9m2yNYCAWOhMPESqfJ8=;
 b=IjYzfFTdjWlpyV8AdaGcLoKqC1V57QpY0ktvm+i/VhZpo5rExAkwyBlvyjHHQ49ZC3
 /Fl1gIZrqsH0/7LONkpKvPxlwHlIuLTzRwlyAP4DJPkDLUDPmTJBYgcM49ivtx+gCkx5
 yMNveH4ICDf5XbwhWg9E3X2bz7gw1GcuHAH97XO0zsn8dMILjkfmaBgHMK3e6exsdGnO
 t/tiP6h+vXVF9ocB7V2c5iA8+USs5rG5b90TfwEYc8HBIRO3O3R5tDOotKH2Gg1h38Lt
 UAruXUqIBP4rtJZKzi3j3TPVOMPxXZLN689qkZTBsLewLatOBkRKJxOaGFzBgUqLwMzQ
 +psA==
X-Gm-Message-State: AOAM531dUpd9fwzljnLYk2TnT3CBtyCSR4EqzPr1d6ch0ZGsFbBV8wYN
 baIwKcow7gozKjI+Fk7pYYUCKg==
X-Google-Smtp-Source: ABdhPJzWv/gj4xvBo6xEKggrfrnueIJJVa9+u2vm80w7jyUp9tjh8V29HgIH3FDUEevMSWMAHtDt3Q==
X-Received: by 2002:a1c:bbd7:: with SMTP id l206mr3166636wmf.185.1600759860357; 
 Tue, 22 Sep 2020 00:31:00 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id s26sm3258287wmh.44.2020.09.22.00.30.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Sep 2020 00:30:59 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 22 Sep 2020 10:30:25 +0300
Message-Id: <20200922073027.1196992-15-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200922073027.1196992-1-razor@blackwall.org>
References: <20200922073027.1196992-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, bridge@lists.linux-foundation.org,
 davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v2 14/16] net: bridge: mcast: add support
	for blocked port groups
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

When excluding S,G entries we need a way to block a particular S,G,port.
The new port group flag is managed based on the source's timer as per
RFCs 3376 and 3810. When a source expires and its port group is in
EXCLUDE mode, it will be blocked.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 include/uapi/linux/if_bridge.h |  1 +
 net/bridge/br_mdb.c            |  2 ++
 net/bridge/br_multicast.c      | 49 +++++++++++++++++++++++++++++-----
 net/bridge/br_private.h        |  1 +
 4 files changed, 47 insertions(+), 6 deletions(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index e4bd30a25f6b..4c687686aa8f 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -519,6 +519,7 @@ struct br_mdb_entry {
 #define MDB_FLAGS_OFFLOAD	(1 << 0)
 #define MDB_FLAGS_FAST_LEAVE	(1 << 1)
 #define MDB_FLAGS_STAR_EXCL	(1 << 2)
+#define MDB_FLAGS_BLOCKED	(1 << 3)
 	__u8 flags;
 	__u16 vid;
 	struct {
diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 28cd35a9cf37..e15bab19a012 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -64,6 +64,8 @@ static void __mdb_entry_fill_flags(struct br_mdb_entry *e, unsigned char flags)
 		e->flags |= MDB_FLAGS_FAST_LEAVE;
 	if (flags & MDB_PG_FLAGS_STAR_EXCL)
 		e->flags |= MDB_FLAGS_STAR_EXCL;
+	if (flags & MDB_PG_FLAGS_BLOCKED)
+		e->flags |= MDB_FLAGS_BLOCKED;
 }
 
 static void __mdb_entry_to_br_ip(struct br_mdb_entry *entry, struct br_ip *ip,
diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index f39bbd733722..11d224c01914 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -72,7 +72,8 @@ __br_multicast_add_group(struct net_bridge *br,
 			 struct br_ip *group,
 			 const unsigned char *src,
 			 u8 filter_mode,
-			 bool igmpv2_mldv1);
+			 bool igmpv2_mldv1,
+			 bool blocked);
 static void br_multicast_find_del_pg(struct net_bridge *br,
 				     struct net_bridge_port_group *pg);
 
@@ -211,7 +212,7 @@ static void __fwd_add_star_excl(struct net_bridge_port_group *pg,
 		return;
 
 	src_pg = __br_multicast_add_group(br, pg->key.port, sg_ip, pg->eth_addr,
-					  MCAST_INCLUDE, false);
+					  MCAST_INCLUDE, false, false);
 	if (IS_ERR_OR_NULL(src_pg) ||
 	    src_pg->rt_protocol != RTPROT_KERNEL)
 		return;
@@ -343,7 +344,7 @@ void br_multicast_sg_add_exclude_ports(struct net_bridge_mdb_entry *star_mp,
 		src_pg = __br_multicast_add_group(br, pg->key.port,
 						  &sg->key.addr,
 						  sg->eth_addr,
-						  MCAST_INCLUDE, false);
+						  MCAST_INCLUDE, false, false);
 		if (IS_ERR_OR_NULL(src_pg) ||
 		    src_pg->rt_protocol != RTPROT_KERNEL)
 			continue;
@@ -364,7 +365,8 @@ static void br_multicast_fwd_src_add(struct net_bridge_group_src *src)
 	sg_ip = src->pg->key.addr;
 	sg_ip.src = src->addr.src;
 	sg = __br_multicast_add_group(src->br, src->pg->key.port, &sg_ip,
-				      src->pg->eth_addr, MCAST_INCLUDE, false);
+				      src->pg->eth_addr, MCAST_INCLUDE, false,
+				      !timer_pending(&src->timer));
 	if (IS_ERR_OR_NULL(sg))
 		return;
 	src->flags |= BR_SGRP_F_INSTALLED;
@@ -415,9 +417,38 @@ static void br_multicast_fwd_src_remove(struct net_bridge_group_src *src)
 	src->flags &= ~BR_SGRP_F_INSTALLED;
 }
 
+/* install S,G and based on src's timer enable or disable forwarding */
 static void br_multicast_fwd_src_handle(struct net_bridge_group_src *src)
 {
+	struct net_bridge_port_group_sg_key sg_key;
+	struct net_bridge_port_group *sg;
+	u8 old_flags;
+
 	br_multicast_fwd_src_add(src);
+
+	memset(&sg_key, 0, sizeof(sg_key));
+	sg_key.addr = src->pg->key.addr;
+	sg_key.addr.src = src->addr.src;
+	sg_key.port = src->pg->key.port;
+
+	sg = br_sg_port_find(src->br, &sg_key);
+	if (!sg || (sg->flags & MDB_PG_FLAGS_PERMANENT))
+		return;
+
+	old_flags = sg->flags;
+	if (timer_pending(&src->timer))
+		sg->flags &= ~MDB_PG_FLAGS_BLOCKED;
+	else
+		sg->flags |= MDB_PG_FLAGS_BLOCKED;
+
+	if (old_flags != sg->flags) {
+		struct net_bridge_mdb_entry *sg_mp;
+
+		sg_mp = br_mdb_ip_get(src->br, &sg_key.addr);
+		if (!sg_mp)
+			return;
+		br_mdb_notify(src->br->dev, sg_mp, sg, RTM_NEWMDB);
+	}
 }
 
 static void br_multicast_destroy_mdb_entry(struct net_bridge_mcast_gc *gc)
@@ -995,7 +1026,10 @@ static void br_multicast_group_src_expired(struct timer_list *t)
 		if (!hlist_empty(&pg->src_list))
 			goto out;
 		br_multicast_find_del_pg(br, pg);
+	} else {
+		br_multicast_fwd_src_handle(src);
 	}
+
 out:
 	spin_unlock(&br->multicast_lock);
 }
@@ -1131,7 +1165,8 @@ __br_multicast_add_group(struct net_bridge *br,
 			 struct br_ip *group,
 			 const unsigned char *src,
 			 u8 filter_mode,
-			 bool igmpv2_mldv1)
+			 bool igmpv2_mldv1,
+			 bool blocked)
 {
 	struct net_bridge_port_group __rcu **pp;
 	struct net_bridge_port_group *p = NULL;
@@ -1167,6 +1202,8 @@ __br_multicast_add_group(struct net_bridge *br,
 		goto out;
 	}
 	rcu_assign_pointer(*pp, p);
+	if (blocked)
+		p->flags |= MDB_PG_FLAGS_BLOCKED;
 	br_mdb_notify(br->dev, mp, p, RTM_NEWMDB);
 
 found:
@@ -1189,7 +1226,7 @@ static int br_multicast_add_group(struct net_bridge *br,
 
 	spin_lock(&br->multicast_lock);
 	pg = __br_multicast_add_group(br, port, group, src, filter_mode,
-				      igmpv2_mldv1);
+				      igmpv2_mldv1, false);
 	/* NULL is considered valid for host joined groups */
 	err = IS_ERR(pg) ? PTR_ERR(pg) : 0;
 	spin_unlock(&br->multicast_lock);
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 128d2d0417a0..345118e35c42 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -214,6 +214,7 @@ struct net_bridge_fdb_entry {
 #define MDB_PG_FLAGS_OFFLOAD	BIT(1)
 #define MDB_PG_FLAGS_FAST_LEAVE	BIT(2)
 #define MDB_PG_FLAGS_STAR_EXCL	BIT(3)
+#define MDB_PG_FLAGS_BLOCKED	BIT(4)
 
 #define PG_SRC_ENT_LIMIT	32
 
-- 
2.25.4

