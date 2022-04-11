Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F2A4FC36D
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 19:30:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1264E83388;
	Mon, 11 Apr 2022 17:30:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t1BQfab-2seh; Mon, 11 Apr 2022 17:30:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 7C60783332;
	Mon, 11 Apr 2022 17:30:09 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 40611C002C;
	Mon, 11 Apr 2022 17:30:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D15C3C0084
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:30:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BFE7883323
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:30:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 85YtTiw0YC_S for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 17:30:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6A6DD82D57
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:30:04 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id i27so32336335ejd.9
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 10:30:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fjc7yh9BABEAcWYSv/wz9ajmM8BNqoc42tZ1SpXSbXE=;
 b=Oj3zp3IneXaC6o+Kceh7QeX/CLUGp2OlRLD1CM20EAPW4gj6k7pQmlpObukOT9BU7n
 6uq/oeNEiaaONOfZ01fv3gLO1Ey/Rattn+Wg6gsfU8GZTd3iM87A6xlIbYpqBIQUxELb
 W2cPXicI5EdAd8hXxtjbGkvIidY2ochvP2Ky122vfdhr3r6opwL47k7FjFDTbjQ84lIC
 0NANWcIclRZtRe7HKUvCR0pems0HRYwebAl6PmLgqfmr/yTZFGsdab3OKtJtdMoLqZrz
 1eiJeA8Mkr6051oInD5fWV/qf/3aP9sUYrW51xSqi/ByZZn7peRzXUmfq3VqZnZ5xFtn
 2SrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fjc7yh9BABEAcWYSv/wz9ajmM8BNqoc42tZ1SpXSbXE=;
 b=7AkvS8z8Yv55urSw7MmsDK2vnOfmkDxCCP9KtsQMBeeeuLEFoHVg9+RPs/ndyL/a04
 iAv97njnRS865gVnKZ1hf2oYTQIz7lyo5SLZwXav1oj8yxi2weBK1CrVTIc4CJ9Z7vvD
 tUfJyWjKPL7rfE05VQJ0iJmtGkaR9tfCK+xgkZ7Z78zc1IHE9sF2C9awXrlVVHZp8GAa
 p/pOZ6H3zrTUCfW28zTVXc9JdBeIZJmkChDcpfX+kc2++D4t8HvNhNM+OjCcWAZl/PlX
 IyP1zGk1vROFAahGXDHGL9+rk/xE2bkg+PsrQNCP60ixiFvclz5f9RBgEl5U9xdhXhm9
 wwXQ==
X-Gm-Message-State: AOAM530v7xXqGqFh9RCi0HfV3nN87M/Pf5xJp1CW7+41Vk8MdJdIh86e
 FG3hT0KYvn7GAykJAKZn0wrJhA==
X-Google-Smtp-Source: ABdhPJzo4J9TYxxUDp3FRICrBNSdx4BQSbolHbWynt5O1ClXlkmDK6MabH9nzxh/9O6nIQcuNS3Vkw==
X-Received: by 2002:a17:907:97d3:b0:6e8:3c07:3107 with SMTP id
 js19-20020a17090797d300b006e83c073107mr20710847ejc.630.1649698202554; 
 Mon, 11 Apr 2022 10:30:02 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 u6-20020a17090626c600b006e74ef7f092sm10325084ejc.176.2022.04.11.10.30.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 10:30:02 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 11 Apr 2022 20:29:32 +0300
Message-Id: <20220411172934.1813604-7-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220411172934.1813604-1-razor@blackwall.org>
References: <20220411172934.1813604-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 6/8] net: bridge: fdb: add support for
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

 net/bridge/br_fdb.c      | 41 ++++++++++++++++++++++++++++++++--------
 net/bridge/br_netlink.c  |  9 +++++++--
 net/bridge/br_private.h  | 10 +++++++++-
 net/bridge/br_sysfs_br.c |  6 +++++-
 4 files changed, 54 insertions(+), 12 deletions(-)

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 64a549acdac8..045eb61e833e 100644
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
 
 int br_fdb_flush(struct ndmsg *ndm, struct nlattr *tb[],
 		 struct net_device *dev, u16 vid,
 		 struct netlink_ext_ack *extack)
 {
+	struct net_bridge_fdb_flush_desc desc = {
+		.flags_mask = BR_FDB_STATIC
+	};
 	struct net_bridge *br;
 
 	if (netif_is_bridge_master(dev)) {
@@ -590,7 +615,7 @@ int br_fdb_flush(struct ndmsg *ndm, struct nlattr *tb[],
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
index 23ef2982d1bc..9fb9abdbd3f4 100644
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
 int br_fdb_flush(struct ndmsg *ndm, struct nlattr *tb[],
 		 struct net_device *dev, u16 vid,
 		 struct netlink_ext_ack *extack);
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

