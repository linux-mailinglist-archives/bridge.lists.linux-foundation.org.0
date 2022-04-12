Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 527E14FE25E
	for <lists.bridge@lfdr.de>; Tue, 12 Apr 2022 15:23:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 491E283EA1;
	Tue, 12 Apr 2022 13:23:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O3Q6lbZ2DMxG; Tue, 12 Apr 2022 13:23:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id B806E83EA2;
	Tue, 12 Apr 2022 13:23:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 762A4C002C;
	Tue, 12 Apr 2022 13:23:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B6BEEC0085
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:23:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 928C883E9D
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:23:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NF4j4bHentL9 for <bridge@lists.linux-foundation.org>;
 Tue, 12 Apr 2022 13:23:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B7F9A83E6B
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:23:15 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id t11so10337614eju.13
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 06:23:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lZcp4/d3284rwKpd9JqIxtdzLugh7b7HIXdHYmU+Bvs=;
 b=CQYgqrzX8eiCJluaqwbmSgQty7HrA0RwPRVhfaLesiSx6AvxzE6eK+8E38Nv4FKy+c
 2d2DH9/pCwaGVPzBxUOipagka130UhY0dtSJ7yGAVrgBOkckwh7sPu4/DZT7oq0Hzzlj
 vrR641bggBr2Q820+2W6vPyEYH/x1WDcE2RD/c/2Ci2FbBQobkcnSpFYdCOJTBu4Bvca
 h5Caygw/0oDZsvzZG/NgR/DyVUgBQ1Jx00vN1vEqjxGNt52sQ17m/fjgXa36ftrDFRsq
 ycjeq25nD18NRyKDmTFPy86o4w2+Q5BzfdP9INJEWYMGgdk6Cv8Y+pTF9q6cGvuqCYOU
 ZXEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lZcp4/d3284rwKpd9JqIxtdzLugh7b7HIXdHYmU+Bvs=;
 b=ysSP7OMpkmd5uxl18iAsgRhhNfstmcEicXKtT/ALqNwnLDr9Xyn/BDgS4T3+iYNChg
 f1mRR2wj+WmzZp48lzjHbOe9ObJD/CPttq1ZHb8TZ8rgorGT8l0JOR01pvYfcRXg+XRA
 CFlHKYj3EjSGetRfrP+zxXEjPp6XkL7AtipZSEXH9CAKoX5G2EzFWqfyskryfUHmsy6W
 5xJuHsreR6ucrBGM63hSMAkX71T4qy+GA7p8v8BI9eIU55tHzNp1umVv9PNg/JoMwiKL
 zgziuW2obnqGGd7kygguWHAwPDMKaCvjy0LnkNsHXmudsRKyq7hVIk7wtN96O+pg9Y4g
 guyQ==
X-Gm-Message-State: AOAM532IAim6luHLz964nfdD1wm8DS9objrTrYHZqOYrxflWg5QH+Z18
 /U80g4RsWoulYrRgwvWC5w0CiQ==
X-Google-Smtp-Source: ABdhPJzet/sB6/udstJi5dtbeD7jfKE0Fyo8+JVOtz4Zj0/Skne8JnQSwBWii9ordkW/EAvZRrWkfw==
X-Received: by 2002:a17:907:980d:b0:6d6:f910:513a with SMTP id
 ji13-20020a170907980d00b006d6f910513amr32953311ejc.643.1649769793897; 
 Tue, 12 Apr 2022 06:23:13 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 z16-20020a17090665d000b006e8789e8cedsm3771301ejn.204.2022.04.12.06.23.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Apr 2022 06:23:13 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 12 Apr 2022 16:22:42 +0300
Message-Id: <20220412132245.2148794-6-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220412132245.2148794-1-razor@blackwall.org>
References: <20220412132245.2148794-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v3 5/8] net: bridge: fdb: add support for
	fine-grained flushing
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

Add the ability to specify exactly which fdbs to be flushed. They are
described by a new structure - net_bridge_fdb_flush_desc. Currently it
can match on port/bridge ifindex, vlan id and fdb flags. It is used to
describe the existing dynamic fdb flush operation. Note that this flush
operation doesn't treat permanent entries in a special way (fdb_delete vs
fdb_delete_local), it will delete them regardless if any port is using
them, so currently it can't directly replace deletes which need to handle
that case, although we can extend it later for that too.

Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
v2: changed the flush matches func for better readability (Ido)
v3: no change

 net/bridge/br_fdb.c      | 41 ++++++++++++++++++++++++++++++++--------
 net/bridge/br_netlink.c  |  9 +++++++--
 net/bridge/br_private.h  | 10 +++++++++-
 net/bridge/br_sysfs_br.c |  6 +++++-
 4 files changed, 54 insertions(+), 12 deletions(-)

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index fd7012c32cd5..f1deac42bc0d 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -558,24 +558,49 @@ void br_fdb_cleanup(struct work_struct *work)
 	mod_delayed_work(system_long_wq, &br->gc_work, work_delay);
 }
 
-/* Completely flush all dynamic entries in forwarding database.*/
-void __br_fdb_flush(struct net_bridge *br)
+static bool __fdb_flush_matches(const struct net_bridge *br,
+				const struct net_bridge_fdb_entry *f,
+				const struct net_bridge_fdb_flush_desc *desc)
+{
+	const struct net_bridge_port *dst = READ_ONCE(f->dst);
+	int port_ifidx = dst ? dst->dev->ifindex : br->dev->ifindex;
+
+	if (desc->vlan_id && desc->vlan_id != f->key.vlan_id)
+		return false;
+	if (desc->port_ifindex && desc->port_ifindex != port_ifidx)
+		return false;
+	if (desc->flags_mask && (f->flags & desc->flags_mask) != desc->flags)
+		return false;
+
+	return true;
+}
+
+/* Flush forwarding database entries matching the description */
+void __br_fdb_flush(struct net_bridge *br,
+		    const struct net_bridge_fdb_flush_desc *desc)
 {
 	struct net_bridge_fdb_entry *f;
-	struct hlist_node *tmp;
 
-	spin_lock_bh(&br->hash_lock);
-	hlist_for_each_entry_safe(f, tmp, &br->fdb_list, fdb_node) {
-		if (!test_bit(BR_FDB_STATIC, &f->flags))
+	rcu_read_lock();
+	hlist_for_each_entry_rcu(f, &br->fdb_list, fdb_node) {
+		if (!__fdb_flush_matches(br, f, desc))
+			continue;
+
+		spin_lock_bh(&br->hash_lock);
+		if (!hlist_unhashed(&f->fdb_node))
 			fdb_delete(br, f, true);
+		spin_unlock_bh(&br->hash_lock);
 	}
-	spin_unlock_bh(&br->hash_lock);
+	rcu_read_unlock();
 }
 
 int br_fdb_delete_bulk(struct ndmsg *ndm, struct nlattr *tb[],
 		       struct net_device *dev, u16 vid,
 		       struct netlink_ext_ack *extack)
 {
+	struct net_bridge_fdb_flush_desc desc = {
+		.flags_mask = BR_FDB_STATIC
+	};
 	struct net_bridge *br;
 
 	if (netif_is_bridge_master(dev)) {
@@ -590,7 +615,7 @@ int br_fdb_delete_bulk(struct ndmsg *ndm, struct nlattr *tb[],
 		br = p->br;
 	}
 
-	__br_fdb_flush(br);
+	__br_fdb_flush(br, &desc);
 
 	return 0;
 }
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index c59c775730bb..accab38b0b6a 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -1326,8 +1326,13 @@ static int br_changelink(struct net_device *brdev, struct nlattr *tb[],
 		br_recalculate_fwd_mask(br);
 	}
 
-	if (data[IFLA_BR_FDB_FLUSH])
-		__br_fdb_flush(br);
+	if (data[IFLA_BR_FDB_FLUSH]) {
+		struct net_bridge_fdb_flush_desc desc = {
+			.flags_mask = BR_FDB_STATIC
+		};
+
+		__br_fdb_flush(br, &desc);
+	}
 
 #ifdef CONFIG_BRIDGE_IGMP_SNOOPING
 	if (data[IFLA_BR_MCAST_ROUTER]) {
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 3ba50e41aa4f..dd186ac29737 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -274,6 +274,13 @@ struct net_bridge_fdb_entry {
 	struct rcu_head			rcu;
 };
 
+struct net_bridge_fdb_flush_desc {
+	unsigned long			flags;
+	unsigned long			flags_mask;
+	int				port_ifindex;
+	u16				vlan_id;
+};
+
 #define MDB_PG_FLAGS_PERMANENT	BIT(0)
 #define MDB_PG_FLAGS_OFFLOAD	BIT(1)
 #define MDB_PG_FLAGS_FAST_LEAVE	BIT(2)
@@ -759,7 +766,8 @@ int br_fdb_init(void);
 void br_fdb_fini(void);
 int br_fdb_hash_init(struct net_bridge *br);
 void br_fdb_hash_fini(struct net_bridge *br);
-void __br_fdb_flush(struct net_bridge *br);
+void __br_fdb_flush(struct net_bridge *br,
+		    const struct net_bridge_fdb_flush_desc *desc);
 
 void br_fdb_find_delete_local(struct net_bridge *br,
 			      const struct net_bridge_port *p,
diff --git a/net/bridge/br_sysfs_br.c b/net/bridge/br_sysfs_br.c
index 7a2cf3aebc84..c863151f1cde 100644
--- a/net/bridge/br_sysfs_br.c
+++ b/net/bridge/br_sysfs_br.c
@@ -344,7 +344,11 @@ static DEVICE_ATTR_RW(group_addr);
 static int set_flush(struct net_bridge *br, unsigned long val,
 		     struct netlink_ext_ack *extack)
 {
-	__br_fdb_flush(br);
+	struct net_bridge_fdb_flush_desc desc = {
+		.flags_mask = BR_FDB_STATIC
+	};
+
+	__br_fdb_flush(br, &desc);
 	return 0;
 }
 
-- 
2.35.1

