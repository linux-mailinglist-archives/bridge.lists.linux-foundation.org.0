Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8E0303916
	for <lists.bridge@lfdr.de>; Tue, 26 Jan 2021 10:35:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 771A187031;
	Tue, 26 Jan 2021 09:35:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2AIhvRFROl5G; Tue, 26 Jan 2021 09:35:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6607B87036;
	Tue, 26 Jan 2021 09:35:47 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4A47DC013A;
	Tue, 26 Jan 2021 09:35:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 62E9DC013A
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 09:35:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5F9718531B
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 09:35:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cGVZErqPg6bR for <bridge@lists.linux-foundation.org>;
 Tue, 26 Jan 2021 09:35:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com
 [209.85.218.53])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3A55D85313
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 09:35:42 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id l9so22023029ejx.3
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 01:35:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/9oKJRET+rTzrcjG/jyq5WHy2uMZXFPAtq3j3T3h+pU=;
 b=mUbZLvCjC/Cl1s0/bRkdvd3VjRwd8N3BIVZn2UFQhOsqUCcU1P+VdwI3cIWsoJ4Cam
 oV502BLmVphqzA+UjBv0xtnRaZdha4XBq7nrhq9CCwVUewn3+0zAGCeRFzt6tBi4pomR
 Y6uyfrcqozcg49iJJI1BY4UnV050AIYnxkrT82tmJj1I0f7CQ0BGMxal/yzB90RxuszI
 oOOS0ALoqnY0+YLePLq8v3/ttAQTjT3XASUxYcniU7Og6YYj9rhsKjONKUfg5YnDAT4V
 zpNZ45oqPvjW7cB7mvevPQIbZFcJpBg1n93AMTleJ7kzAvnnZDFMpq1ppCVhJrdio0SA
 BEgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/9oKJRET+rTzrcjG/jyq5WHy2uMZXFPAtq3j3T3h+pU=;
 b=VwU1NWkWEWJ9YRWzVYQI8nPuDuI17xkzJgzOCn1oGAvZ6kfGjVtL0xsMSaZZgvzkZe
 E5pLEDuIGpY89Vj5XbDTDJShZFbBbFRr4+2d54PWeKuVNBm5PtH+onhn2W6qr4x2bfdp
 L1uTZ/JIlmUYUAGpKoSfxet8nJhwV8aXQnF+7pt02v85n37ZlbMpC2roiiIVriSnh08Q
 xj9Q3aE9serQYKY8h3CRDzjiy5gLopzLtP8Cd2A3KtZ5Y/Rp4R1MR22/8Ezastw4u1k+
 SPt9bseS/k3NQzWlpjgyYWO9Mm3etS1jyN8eEbdZ2Uj8Dpgxfazqk06ejMkLFNkrrjce
 7RXA==
X-Gm-Message-State: AOAM531FbUYbKcXj+PSyxU1Cl19PJtcbmkZwbSr6AIDMGmR6vkUFK/Ap
 tiUyEvYJysZsTmHYoLlc0ShSHA==
X-Google-Smtp-Source: ABdhPJx3jFVAVYD3ahrcQvBjz7P3QsEDlIVPrtASyvmtY2B0Ye3gPdRQXhNP31SnfpCCog1fLL/GVQ==
X-Received: by 2002:a17:906:a106:: with SMTP id
 t6mr2968386ejy.63.1611653740684; 
 Tue, 26 Jan 2021 01:35:40 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id u2sm9512360ejb.65.2021.01.26.01.35.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Jan 2021 01:35:40 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 26 Jan 2021 11:35:33 +0200
Message-Id: <20210126093533.441338-3-razor@blackwall.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210126093533.441338-1-razor@blackwall.org>
References: <20210126093533.441338-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v2 2/2] net: bridge: multicast: make
	tracked EHT hosts limit configurable
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

Add two new port attributes which make EHT hosts limit configurable and
export the current number of tracked EHT hosts:
 - IFLA_BRPORT_MCAST_EHT_HOSTS_LIMIT: configure/retrieve current limit
 - IFLA_BRPORT_MCAST_EHT_HOSTS_CNT: current number of tracked hosts
Setting IFLA_BRPORT_MCAST_EHT_HOSTS_LIMIT to 0 is currently not allowed.

Note that we have to increase RTNL_SLAVE_MAX_TYPE to 38 minimum, I've
increased it to 40 to have space for two more future entries.

v2: move br_multicast_eht_set_hosts_limit() to br_multicast_eht.c,
    no functional change

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 include/uapi/linux/if_link.h      |  2 ++
 net/bridge/br_multicast_eht.c     | 15 +++++++++++++++
 net/bridge/br_netlink.c           | 19 ++++++++++++++++++-
 net/bridge/br_private_mcast_eht.h |  2 ++
 net/bridge/br_sysfs_if.c          | 26 ++++++++++++++++++++++++++
 net/core/rtnetlink.c              |  2 +-
 6 files changed, 64 insertions(+), 2 deletions(-)

diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
index 2bd0d8bbcdb2..eb8018c3a737 100644
--- a/include/uapi/linux/if_link.h
+++ b/include/uapi/linux/if_link.h
@@ -525,6 +525,8 @@ enum {
 	IFLA_BRPORT_BACKUP_PORT,
 	IFLA_BRPORT_MRP_RING_OPEN,
 	IFLA_BRPORT_MRP_IN_OPEN,
+	IFLA_BRPORT_MCAST_EHT_HOSTS_LIMIT,
+	IFLA_BRPORT_MCAST_EHT_HOSTS_CNT,
 	__IFLA_BRPORT_MAX
 };
 #define IFLA_BRPORT_MAX (__IFLA_BRPORT_MAX - 1)
diff --git a/net/bridge/br_multicast_eht.c b/net/bridge/br_multicast_eht.c
index 445768c8495f..fea38b9a7268 100644
--- a/net/bridge/br_multicast_eht.c
+++ b/net/bridge/br_multicast_eht.c
@@ -861,3 +861,18 @@ bool br_multicast_eht_handle(struct net_bridge_port_group *pg,
 out:
 	return changed;
 }
+
+int br_multicast_eht_set_hosts_limit(struct net_bridge_port *p,
+				     u32 eht_hosts_limit)
+{
+	struct net_bridge *br = p->br;
+
+	if (!eht_hosts_limit)
+		return -EINVAL;
+
+	spin_lock_bh(&br->multicast_lock);
+	p->multicast_eht_hosts_limit = eht_hosts_limit;
+	spin_unlock_bh(&br->multicast_lock);
+
+	return 0;
+}
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 762f273802cd..bd3962da345a 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -18,6 +18,7 @@
 #include "br_private_stp.h"
 #include "br_private_cfm.h"
 #include "br_private_tunnel.h"
+#include "br_private_mcast_eht.h"
 
 static int __get_num_vlan_infos(struct net_bridge_vlan_group *vg,
 				u32 filter_mask)
@@ -199,6 +200,8 @@ static inline size_t br_port_info_size(void)
 		+ nla_total_size(sizeof(u16))	/* IFLA_BRPORT_GROUP_FWD_MASK */
 		+ nla_total_size(sizeof(u8))	/* IFLA_BRPORT_MRP_RING_OPEN */
 		+ nla_total_size(sizeof(u8))	/* IFLA_BRPORT_MRP_IN_OPEN */
+		+ nla_total_size(sizeof(u32))	/* IFLA_BRPORT_MCAST_EHT_HOSTS_LIMIT */
+		+ nla_total_size(sizeof(u32))	/* IFLA_BRPORT_MCAST_EHT_HOSTS_CNT */
 		+ 0;
 }
 
@@ -283,7 +286,11 @@ static int br_port_fill_attrs(struct sk_buff *skb,
 
 #ifdef CONFIG_BRIDGE_IGMP_SNOOPING
 	if (nla_put_u8(skb, IFLA_BRPORT_MULTICAST_ROUTER,
-		       p->multicast_router))
+		       p->multicast_router) ||
+	    nla_put_u32(skb, IFLA_BRPORT_MCAST_EHT_HOSTS_LIMIT,
+			p->multicast_eht_hosts_limit) ||
+	    nla_put_u32(skb, IFLA_BRPORT_MCAST_EHT_HOSTS_CNT,
+			p->multicast_eht_hosts_cnt))
 		return -EMSGSIZE;
 #endif
 
@@ -820,6 +827,7 @@ static const struct nla_policy br_port_policy[IFLA_BRPORT_MAX + 1] = {
 	[IFLA_BRPORT_NEIGH_SUPPRESS] = { .type = NLA_U8 },
 	[IFLA_BRPORT_ISOLATED]	= { .type = NLA_U8 },
 	[IFLA_BRPORT_BACKUP_PORT] = { .type = NLA_U32 },
+	[IFLA_BRPORT_MCAST_EHT_HOSTS_LIMIT] = { .type = NLA_U32 },
 };
 
 /* Change the state of the port and notify spanning tree */
@@ -955,6 +963,15 @@ static int br_setport(struct net_bridge_port *p, struct nlattr *tb[])
 		if (err)
 			return err;
 	}
+
+	if (tb[IFLA_BRPORT_MCAST_EHT_HOSTS_LIMIT]) {
+		u32 hlimit;
+
+		hlimit = nla_get_u32(tb[IFLA_BRPORT_MCAST_EHT_HOSTS_LIMIT]);
+		err = br_multicast_eht_set_hosts_limit(p, hlimit);
+		if (err)
+			return err;
+	}
 #endif
 
 	if (tb[IFLA_BRPORT_GROUP_FWD_MASK]) {
diff --git a/net/bridge/br_private_mcast_eht.h b/net/bridge/br_private_mcast_eht.h
index b2c8d988721f..f89049f4892c 100644
--- a/net/bridge/br_private_mcast_eht.h
+++ b/net/bridge/br_private_mcast_eht.h
@@ -57,6 +57,8 @@ bool br_multicast_eht_handle(struct net_bridge_port_group *pg,
 			     u32 nsrcs,
 			     size_t addr_size,
 			     int grec_type);
+int br_multicast_eht_set_hosts_limit(struct net_bridge_port *p,
+				     u32 eht_hosts_limit);
 
 static inline bool
 br_multicast_eht_should_del_pg(const struct net_bridge_port_group *pg)
diff --git a/net/bridge/br_sysfs_if.c b/net/bridge/br_sysfs_if.c
index 7a59cdddd3ce..b66305fae26b 100644
--- a/net/bridge/br_sysfs_if.c
+++ b/net/bridge/br_sysfs_if.c
@@ -16,6 +16,7 @@
 #include <linux/sched/signal.h>
 
 #include "br_private.h"
+#include "br_private_mcast_eht.h"
 
 struct brport_attribute {
 	struct attribute	attr;
@@ -245,6 +246,29 @@ static int store_multicast_router(struct net_bridge_port *p,
 static BRPORT_ATTR(multicast_router, 0644, show_multicast_router,
 		   store_multicast_router);
 
+static ssize_t show_multicast_eht_hosts_limit(struct net_bridge_port *p,
+					      char *buf)
+{
+	return sprintf(buf, "%u\n", p->multicast_eht_hosts_limit);
+}
+
+static int store_multicast_eht_hosts_limit(struct net_bridge_port *p,
+					   unsigned long v)
+{
+	return br_multicast_eht_set_hosts_limit(p, v);
+}
+static BRPORT_ATTR(multicast_eht_hosts_limit, 0644,
+		   show_multicast_eht_hosts_limit,
+		   store_multicast_eht_hosts_limit);
+
+static ssize_t show_multicast_eht_hosts_cnt(struct net_bridge_port *p,
+					    char *buf)
+{
+	return sprintf(buf, "%u\n", p->multicast_eht_hosts_cnt);
+}
+static BRPORT_ATTR(multicast_eht_hosts_cnt, 0444, show_multicast_eht_hosts_cnt,
+		   NULL);
+
 BRPORT_ATTR_FLAG(multicast_fast_leave, BR_MULTICAST_FAST_LEAVE);
 BRPORT_ATTR_FLAG(multicast_to_unicast, BR_MULTICAST_TO_UNICAST);
 #endif
@@ -274,6 +298,8 @@ static const struct brport_attribute *brport_attrs[] = {
 	&brport_attr_multicast_router,
 	&brport_attr_multicast_fast_leave,
 	&brport_attr_multicast_to_unicast,
+	&brport_attr_multicast_eht_hosts_limit,
+	&brport_attr_multicast_eht_hosts_cnt,
 #endif
 	&brport_attr_proxyarp,
 	&brport_attr_proxyarp_wifi,
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 3d6ab194d0f5..c313aaf2bce1 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -55,7 +55,7 @@
 #include <net/net_namespace.h>
 
 #define RTNL_MAX_TYPE		50
-#define RTNL_SLAVE_MAX_TYPE	36
+#define RTNL_SLAVE_MAX_TYPE	40
 
 struct rtnl_link {
 	rtnl_doit_func		doit;
-- 
2.29.2

