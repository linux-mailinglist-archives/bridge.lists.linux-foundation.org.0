Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A62C44FA6F3
	for <lists.bridge@lfdr.de>; Sat,  9 Apr 2022 13:04:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E54DC4048B;
	Sat,  9 Apr 2022 11:04:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 64_-POvnp7TQ; Sat,  9 Apr 2022 11:04:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 754FA40376;
	Sat,  9 Apr 2022 11:04:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4616CC0088;
	Sat,  9 Apr 2022 11:04:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1DB6FC002C
 for <bridge@lists.linux-foundation.org>; Sat,  9 Apr 2022 11:04:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E3E6660F82
 for <bridge@lists.linux-foundation.org>; Sat,  9 Apr 2022 11:04:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TztmlAh-anm8 for <bridge@lists.linux-foundation.org>;
 Sat,  9 Apr 2022 11:04:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1BE6460F81
 for <bridge@lists.linux-foundation.org>; Sat,  9 Apr 2022 11:04:53 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id d10so12755796edj.0
 for <bridge@lists.linux-foundation.org>; Sat, 09 Apr 2022 04:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Fbnlf8kTog0ziFAwrjyK4x7U8wwDsSsFVdwcSgNLjgs=;
 b=AfKOr2kRuukfU0wH1SNJb1vCUdfKMEfMlLVYZ4RpMMTaZvfg1fcnr5POTI06kAX56X
 EDVKZfXiA9nSiuda7IvHYk3ETzZI718onZohFDGcImrrYLAsW42V/QcMeprq8MfCc5el
 eU+QrkJOthZINMcjUc1PPwugEQ0+vCUdBrs5XZRxhNQW7YKCulRfJ/D0mF0Pz7lVDpYS
 UWc4jpBTaPFSM4HO4A++p5x1Z1Cwt9yL/Q1gFJ5OGGvwWe42ZEkzDvZLv1lzyWpf58Hg
 5L0MplmZ75bJzL5OxHaOUdIt+UCiZMJegFUwJsSvG3VvChKSuffgG6p5e75eA4XPT8ys
 VDHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Fbnlf8kTog0ziFAwrjyK4x7U8wwDsSsFVdwcSgNLjgs=;
 b=TUz+QPUVoqYo97wnTvcoOWuHqiC8P/nbwgVcKo1aFTRTY6bxoUwjguJ+d5fz+8I2Uu
 GvgqHaA1t/02Rrvitf5VXBEKWcV1LCDsLEiEFYNfsKKOxhIMj4jnw4/wwLAAGispjJ9y
 oF602QDl3CkeOv5fDAOUfISk7HLBHYLAWmYTO7TtiT/pyfmtCru0QGg60qO9IKkAvg7M
 sWZUtmTvi5wMXkjJBvTE/qlAZas4mFLjv4+PGGI7tUFGpFOfwt5saN5rnI22aRRLlVf3
 L8y3vFcAfym1CPGvg7INVC4pToWtey8SZ8BqzOyjH8FteLkE/Hgwoay0lA1l87IruHRv
 vSwA==
X-Gm-Message-State: AOAM532LGke4Sfq0Rttol80uFhmIYIfyoTvvJ1cmwv+jr0iyP/mcPw8P
 GGD0RY+qJW/lqogZd6QM2mskfA==
X-Google-Smtp-Source: ABdhPJxO6m0ucbuZJevVTCM5WUCN24OtKQMo/EiL3Yxax5yCp/D6tdsYWHiwxzAthVaqE1vt+ZfDxQ==
X-Received: by 2002:a05:6402:449:b0:41c:9096:44f7 with SMTP id
 p9-20020a056402044900b0041c909644f7mr23739906edw.43.1649502291288; 
 Sat, 09 Apr 2022 04:04:51 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 r11-20020a1709064d0b00b006e87938318dsm179574eju.39.2022.04.09.04.04.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 Apr 2022 04:04:50 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Sat,  9 Apr 2022 13:58:53 +0300
Message-Id: <20220409105857.803667-3-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220409105857.803667-1-razor@blackwall.org>
References: <20220409105857.803667-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 2/6] net: bridge: fdb: add support for
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
describe the existing dynamic fdb flush operation.

Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 net/bridge/br_fdb.c      | 36 +++++++++++++++++++++++++++++-------
 net/bridge/br_netlink.c  |  9 +++++++--
 net/bridge/br_private.h  | 10 +++++++++-
 net/bridge/br_sysfs_br.c |  6 +++++-
 4 files changed, 50 insertions(+), 11 deletions(-)

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 6ccda68bd473..4b0bf88c4121 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -558,18 +558,40 @@ void br_fdb_cleanup(struct work_struct *work)
 	mod_delayed_work(system_long_wq, &br->gc_work, work_delay);
 }
 
-/* Completely flush all dynamic entries in forwarding database.*/
-void br_fdb_flush(struct net_bridge *br)
+static bool __fdb_flush_matches(const struct net_bridge *br,
+				const struct net_bridge_fdb_entry *f,
+				const struct net_bridge_fdb_flush_desc *desc)
+{
+	const struct net_bridge_port *dst = READ_ONCE(f->dst);
+	int port_ifidx, br_ifidx = br->dev->ifindex;
+
+	port_ifidx = dst ? dst->dev->ifindex : 0;
+
+	return (!desc->vlan_id || desc->vlan_id == f->key.vlan_id) &&
+	       (!desc->port_ifindex ||
+		(desc->port_ifindex == port_ifidx ||
+		 (!dst && desc->port_ifindex == br_ifidx))) &&
+	       (!desc->flags_mask ||
+		((f->flags & desc->flags_mask) == desc->flags));
+}
+
+/* Flush forwarding database entries matching the description */
+void br_fdb_flush(struct net_bridge *br,
+		  const struct net_bridge_fdb_flush_desc *desc)
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
 
 /* Flush all entries referring to a specific port.
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index fe2211d4c0c7..6e6dce6880c9 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -1366,8 +1366,13 @@ static int br_changelink(struct net_device *brdev, struct nlattr *tb[],
 		br_recalculate_fwd_mask(br);
 	}
 
-	if (data[IFLA_BR_FDB_FLUSH])
-		br_fdb_flush(br);
+	if (data[IFLA_BR_FDB_FLUSH]) {
+		struct net_bridge_fdb_flush_desc desc = {
+			.flags_mask = BR_FDB_STATIC
+		};
+
+		br_fdb_flush(br, &desc);
+	}
 
 #ifdef CONFIG_BRIDGE_IGMP_SNOOPING
 	if (data[IFLA_BR_MCAST_ROUTER]) {
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 6e62af2e07e9..e6930e9ee69d 100644
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
-void br_fdb_flush(struct net_bridge *br);
+void br_fdb_flush(struct net_bridge *br,
+		  const struct net_bridge_fdb_flush_desc *desc);
 void br_fdb_find_delete_local(struct net_bridge *br,
 			      const struct net_bridge_port *p,
 			      const unsigned char *addr, u16 vid);
diff --git a/net/bridge/br_sysfs_br.c b/net/bridge/br_sysfs_br.c
index 3f7ca88c2aa3..612e367fff20 100644
--- a/net/bridge/br_sysfs_br.c
+++ b/net/bridge/br_sysfs_br.c
@@ -344,7 +344,11 @@ static DEVICE_ATTR_RW(group_addr);
 static int set_flush(struct net_bridge *br, unsigned long val,
 		     struct netlink_ext_ack *extack)
 {
-	br_fdb_flush(br);
+	struct net_bridge_fdb_flush_desc desc = {
+		.flags_mask = BR_FDB_STATIC
+	};
+
+	br_fdb_flush(br, &desc);
 	return 0;
 }
 
-- 
2.35.1

