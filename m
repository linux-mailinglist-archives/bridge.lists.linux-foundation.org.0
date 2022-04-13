Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B03CC4FF533
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 12:52:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2BD3141751;
	Wed, 13 Apr 2022 10:52:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CyPA52Xe_oZ1; Wed, 13 Apr 2022 10:52:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 1A01441769;
	Wed, 13 Apr 2022 10:52:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5AA26C0090;
	Wed, 13 Apr 2022 10:52:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6931CC002C
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 570CA40B4D
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HJYS_NH7VgQ6 for <bridge@lists.linux-foundation.org>;
 Wed, 13 Apr 2022 10:52:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7062E40B1F
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:32 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id g18so3074450ejc.10
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 03:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ilT4zUFtGaXgHtp2GJK2mepDZI/75DcJ6DrFnHIKpBs=;
 b=f5BuQoEEwTUVM51o3eEk6VO4Zk4tlK5Kw1wH/VgdHtzNTYnp1N/VYYymg6RiP+0A8N
 +QXGv0bnK7xKQH/A1+fSaIsgRA7bwwZQkbvRLsz4okmWcDyRAZxBTs2HjVN3Ok1Tmk53
 8gE4DClTL+FNydXdcqRuB4Qg1q8y4cAzDFbLIBJf034e25gI05SJ9AAeHQ9iQW2MFjTg
 A4aD48sU5ovlU1rX/Hc66q7JXx6wt9t1cqm5nO3wHTvbCnQ4zwoS1k+VLJ7BBfecegKR
 QRa5N522QTcNmjFn1TN80h1R3ztjigBIFLLpmOYDTZK0JDeKIEpCKcjnc5jN2oEpUE2T
 Fy7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ilT4zUFtGaXgHtp2GJK2mepDZI/75DcJ6DrFnHIKpBs=;
 b=G8laxiWh9oFnHbDlMexTpF5i0arjUiI0UL2mgbZnsEwEnHTkMtBF4rUqNJ8+klmUWj
 Wp2u78y/Ei9EuwoiLbhtVRfvoPUs2XTjA7CPjr5L8k6xR65qwpgPshWnXsr0GevfDpkh
 an8MO+JZdS7t4Gh22FYMeaWZdzB1kxLmSuQNwm/Maa+/HQph+w34Dpvp/t84ubrKW0Ng
 svVV+/lb+h2IYKDWuIkt3cdaP9qevkIHRfYodnQMmzju5+Uhkn5LEen2zc67vGSf2v77
 bGp/++Vzr0iP38pvxBmDxbTy56CUUX0gL7W0bkOWjUHn+heNcVm9+UkrFjo068i2nw3F
 JS7g==
X-Gm-Message-State: AOAM5329nS6lNpJu06io2To5CxHZZO7TG8pkjfvspktOSANzVNnEUjRI
 /X7UeGJAyq+Rh96cOGRorj6u8A==
X-Google-Smtp-Source: ABdhPJyP2F83jM1zrMYoqF3DaIY2wkF0titK07wLfVauNRzddIimJlqQse8Y5TQwhx5t0iEgiGTi1g==
X-Received: by 2002:a17:907:728e:b0:6e8:9863:558a with SMTP id
 dt14-20020a170907728e00b006e89863558amr11127174ejc.205.1649847150571; 
 Wed, 13 Apr 2022 03:52:30 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 v8-20020a1709063bc800b006e898cfd926sm2960952ejf.134.2022.04.13.03.52.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 03:52:30 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Wed, 13 Apr 2022 13:51:59 +0300
Message-Id: <20220413105202.2616106-10-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413105202.2616106-1-razor@blackwall.org>
References: <20220413105202.2616106-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v4 09/12] net: bridge: fdb: add support
	for fine-grained flushing
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
index 363985f1a540..45d02f2264db 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -558,24 +558,49 @@ void br_fdb_cleanup(struct work_struct *work)
 	mod_delayed_work(system_long_wq, &br->gc_work, work_delay);
 }
 
-/* Completely flush all dynamic entries in forwarding database.*/
-void br_fdb_flush(struct net_bridge *br)
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
 
 int br_fdb_delete_bulk(struct ndmsg *ndm, struct nlattr *tb[],
 		       struct net_device *dev, u16 vid,
 		       struct netlink_ext_ack *extack)
 {
+	struct net_bridge_fdb_flush_desc desc = {
+		.flags_mask = BR_FDB_STATIC
+	};
 	struct net_bridge_port *p = NULL;
 	struct net_bridge *br;
 
@@ -590,7 +615,7 @@ int br_fdb_delete_bulk(struct ndmsg *ndm, struct nlattr *tb[],
 		br = p->br;
 	}
 
-	br_fdb_flush(br);
+	br_fdb_flush(br, &desc);
 
 	return 0;
 }
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 200ad05b296f..bb01776d2d88 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -1326,8 +1326,13 @@ static int br_changelink(struct net_device *brdev, struct nlattr *tb[],
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
index f37d49bf5637..4d2a809546fb 100644
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

