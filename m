Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78EF225F700
	for <lists.bridge@lfdr.de>; Mon,  7 Sep 2020 12:00:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 23E20870E2;
	Mon,  7 Sep 2020 10:00:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T2QwhNAErtcU; Mon,  7 Sep 2020 10:00:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4BACC870E8;
	Mon,  7 Sep 2020 10:00:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 40D0FC0859;
	Mon,  7 Sep 2020 10:00:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 31F19C0051
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 10:00:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1DECE85E28
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 10:00:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D40KZZlkBsd6 for <bridge@lists.linux-foundation.org>;
 Mon,  7 Sep 2020 10:00:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9831685E43
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 10:00:17 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id j2so15142309wrx.7
 for <bridge@lists.linux-foundation.org>; Mon, 07 Sep 2020 03:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NDXte3/0jEVRgYpTeRRPfSTFHIsiR/ZmzAGsyB2mXHE=;
 b=OBf2CtzW1XADO8CHuZYg5CLvYG0qelSYBlFiAkCM85lxLG+XOMBds8YBb5WEPkLVxa
 /Q9OGclDEFQwXTHfqIVF8FahINnqwcz0TJgl35j4nOpSnjNvdqTiJkLXWdXy1GOOU2nL
 h2JwTgNKAzCrTLvlEHb3qX6MHZRfjmbU8Q+ew=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NDXte3/0jEVRgYpTeRRPfSTFHIsiR/ZmzAGsyB2mXHE=;
 b=VdqZzb4TuTbQed2zjZDCnYNmZxX2jycU6xtK/+my0mqkmYASAXMtZWHdFgOAGFgXWC
 2eFLjlRC/ClQiAUrdXytDWc3sCpOeobWn2PzZWbLQsuLXh1ZL9+acJ9bnrubPx25wQCC
 b9rZTWi+iwOR9tIkHekEeDcB1q1TCzrVucBcKjwr3+5ymmfcepfMYW7SDkos0sCnlFeO
 zyJdL05W3+J3cXZ9gnixWzg9udy8TxXZLZtW1hqGTAny7M9Qpf9F8WuBD7Jxlst/JDHZ
 lQtuQmwEXp/Ii1retnbF9OH13yrp+2XvtMGvErprOordKOvFWfmPm3wq7CQyoxkPHBgo
 qQUQ==
X-Gm-Message-State: AOAM530wi4A+lb/pe6v18HIzaZ4C0I2XhEyDhzZjpFY+61YCAmngpEpF
 F6/vdlVSqZNL+sOwz4eXFU2Sog==
X-Google-Smtp-Source: ABdhPJwtt0STAx5jq5wWV7y1cbnIzkSAXuk7jSUUJffqj9MV8JwIi6mR5dB4QcBYIeiZqzKHSBLyDQ==
X-Received: by 2002:adf:ec4f:: with SMTP id w15mr19859422wrn.333.1599472815958; 
 Mon, 07 Sep 2020 03:00:15 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id 9sm6686289wmf.7.2020.09.07.03.00.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Sep 2020 03:00:15 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Mon,  7 Sep 2020 12:56:08 +0300
Message-Id: <20200907095619.11216-5-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200907095619.11216-1-nikolay@cumulusnetworks.com>
References: <20200907095619.11216-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v4 04/15] net: bridge: mcast: add support
	for src list and filter mode dumping
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

Support per port group src list (address and timer) and filter mode
dumping. Protected by either multicast_lock or rcu.

v3: add IPv6 support
v2: require RCU or multicast_lock to traverse src groups

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 include/uapi/linux/if_bridge.h | 21 +++++++++
 net/bridge/br_mdb.c            | 85 +++++++++++++++++++++++++++++++++-
 2 files changed, 104 insertions(+), 2 deletions(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index c1227aecd38f..75a2ac479247 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -455,10 +455,31 @@ enum {
 enum {
 	MDBA_MDB_EATTR_UNSPEC,
 	MDBA_MDB_EATTR_TIMER,
+	MDBA_MDB_EATTR_SRC_LIST,
+	MDBA_MDB_EATTR_GROUP_MODE,
 	__MDBA_MDB_EATTR_MAX
 };
 #define MDBA_MDB_EATTR_MAX (__MDBA_MDB_EATTR_MAX - 1)
 
+/* per mdb entry source */
+enum {
+	MDBA_MDB_SRCLIST_UNSPEC,
+	MDBA_MDB_SRCLIST_ENTRY,
+	__MDBA_MDB_SRCLIST_MAX
+};
+#define MDBA_MDB_SRCLIST_MAX (__MDBA_MDB_SRCLIST_MAX - 1)
+
+/* per mdb entry per source attributes
+ * these are embedded in MDBA_MDB_SRCLIST_ENTRY
+ */
+enum {
+	MDBA_MDB_SRCATTR_UNSPEC,
+	MDBA_MDB_SRCATTR_ADDRESS,
+	MDBA_MDB_SRCATTR_TIMER,
+	__MDBA_MDB_SRCATTR_MAX
+};
+#define MDBA_MDB_SRCATTR_MAX (__MDBA_MDB_SRCATTR_MAX - 1)
+
 /* multicast router types */
 enum {
 	MDB_RTR_TYPE_DISABLED,
diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 559bdc256a1e..9dc12ce61018 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -77,10 +77,67 @@ static void __mdb_entry_to_br_ip(struct br_mdb_entry *entry, struct br_ip *ip)
 #endif
 }
 
+static int __mdb_fill_srcs(struct sk_buff *skb,
+			   struct net_bridge_port_group *p)
+{
+	struct net_bridge_group_src *ent;
+	struct nlattr *nest, *nest_ent;
+
+	if (hlist_empty(&p->src_list))
+		return 0;
+
+	nest = nla_nest_start(skb, MDBA_MDB_EATTR_SRC_LIST);
+	if (!nest)
+		return -EMSGSIZE;
+
+	hlist_for_each_entry_rcu(ent, &p->src_list, node,
+				 lockdep_is_held(&p->port->br->multicast_lock)) {
+		nest_ent = nla_nest_start(skb, MDBA_MDB_SRCLIST_ENTRY);
+		if (!nest_ent)
+			goto out_cancel_err;
+		switch (ent->addr.proto) {
+		case htons(ETH_P_IP):
+			if (nla_put_in_addr(skb, MDBA_MDB_SRCATTR_ADDRESS,
+					    ent->addr.u.ip4)) {
+				nla_nest_cancel(skb, nest_ent);
+				goto out_cancel_err;
+			}
+			break;
+#if IS_ENABLED(CONFIG_IPV6)
+		case htons(ETH_P_IPV6):
+			if (nla_put_in6_addr(skb, MDBA_MDB_SRCATTR_ADDRESS,
+					     &ent->addr.u.ip6)) {
+				nla_nest_cancel(skb, nest_ent);
+				goto out_cancel_err;
+			}
+			break;
+#endif
+		default:
+			nla_nest_cancel(skb, nest_ent);
+			continue;
+		}
+		if (nla_put_u32(skb, MDBA_MDB_SRCATTR_TIMER,
+				br_timer_value(&ent->timer))) {
+			nla_nest_cancel(skb, nest_ent);
+			goto out_cancel_err;
+		}
+		nla_nest_end(skb, nest_ent);
+	}
+
+	nla_nest_end(skb, nest);
+
+	return 0;
+
+out_cancel_err:
+	nla_nest_cancel(skb, nest);
+	return -EMSGSIZE;
+}
+
 static int __mdb_fill_info(struct sk_buff *skb,
 			   struct net_bridge_mdb_entry *mp,
 			   struct net_bridge_port_group *p)
 {
+	bool dump_srcs_mode = false;
 	struct timer_list *mtimer;
 	struct nlattr *nest_ent;
 	struct br_mdb_entry e;
@@ -119,6 +176,23 @@ static int __mdb_fill_info(struct sk_buff *skb,
 		nla_nest_cancel(skb, nest_ent);
 		return -EMSGSIZE;
 	}
+	switch (mp->addr.proto) {
+	case htons(ETH_P_IP):
+		dump_srcs_mode = !!(p && mp->br->multicast_igmp_version == 3);
+		break;
+#if IS_ENABLED(CONFIG_IPV6)
+	case htons(ETH_P_IPV6):
+		dump_srcs_mode = !!(p && mp->br->multicast_mld_version == 2);
+		break;
+#endif
+	}
+	if (dump_srcs_mode &&
+	    (__mdb_fill_srcs(skb, p) ||
+	     nla_put_u8(skb, MDBA_MDB_EATTR_GROUP_MODE, p->filter_mode))) {
+		nla_nest_cancel(skb, nest_ent);
+		return -EMSGSIZE;
+	}
+
 	nla_nest_end(skb, nest_ent);
 
 	return 0;
@@ -127,7 +201,7 @@ static int __mdb_fill_info(struct sk_buff *skb,
 static int br_mdb_fill_info(struct sk_buff *skb, struct netlink_callback *cb,
 			    struct net_device *dev)
 {
-	int idx = 0, s_idx = cb->args[1], err = 0;
+	int idx = 0, s_idx = cb->args[1], err = 0, pidx = 0, s_pidx = cb->args[2];
 	struct net_bridge *br = netdev_priv(dev);
 	struct net_bridge_mdb_entry *mp;
 	struct nlattr *nest, *nest2;
@@ -152,7 +226,7 @@ static int br_mdb_fill_info(struct sk_buff *skb, struct netlink_callback *cb,
 			break;
 		}
 
-		if (mp->host_joined) {
+		if (!s_pidx && mp->host_joined) {
 			err = __mdb_fill_info(skb, mp, NULL);
 			if (err) {
 				nla_nest_cancel(skb, nest2);
@@ -164,13 +238,19 @@ static int br_mdb_fill_info(struct sk_buff *skb, struct netlink_callback *cb,
 		      pp = &p->next) {
 			if (!p->port)
 				continue;
+			if (pidx < s_pidx)
+				goto skip_pg;
 
 			err = __mdb_fill_info(skb, mp, p);
 			if (err) {
 				nla_nest_cancel(skb, nest2);
 				goto out;
 			}
+skip_pg:
+			pidx++;
 		}
+		pidx = 0;
+		s_pidx = 0;
 		nla_nest_end(skb, nest2);
 skip:
 		idx++;
@@ -178,6 +258,7 @@ static int br_mdb_fill_info(struct sk_buff *skb, struct netlink_callback *cb,
 
 out:
 	cb->args[1] = idx;
+	cb->args[2] = pidx;
 	nla_nest_end(skb, nest);
 	return err;
 }
-- 
2.25.4

