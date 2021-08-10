Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7113E7C3A
	for <lists.bridge@lfdr.de>; Tue, 10 Aug 2021 17:30:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 89C4F403EA;
	Tue, 10 Aug 2021 15:30:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4rXn9dU-cHob; Tue, 10 Aug 2021 15:30:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 12463404DD;
	Tue, 10 Aug 2021 15:30:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DCEC1C001F;
	Tue, 10 Aug 2021 15:30:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3291DC0025
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:30:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8757740231
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:30:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S0Cu5ZH4uLdY for <bridge@lists.linux-foundation.org>;
 Tue, 10 Aug 2021 15:29:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8C3C940460
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:29:59 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 k38-20020a05600c1ca6b029025af5e0f38bso2244708wms.5
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 08:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=T8/4dj9gTvHCpwB5IlUq9PwSZ51kg1bcJ4gzNVJjnFg=;
 b=z0i3d+rdvfy/LfTsEd0Cx2oQl8SSKqWVKoIyyhERUZ9JRA8r+gqF5xTO1oYKwook92
 voqqtbNyq7m1UswCT3wLGgrAfUx2J2d/GUWXbLKrSiGZfGjnn8++YCvyBiYjHIjD4zo8
 qTvQqUG9NKtqneo9KxzUW+yOD+Bi+Ot9QNbcpn2fFO/JjzMo5O1Ux/+EtSkVWs/tUhyF
 zdn8mTDnCPqQjvgicGrMgIL+RgaOSqFDxBXBBAlkau8sfjP5gxcrLziwikWwXAzwqZ6t
 o9EBz9DXXDY+AAfPLBmksE8pxBXcYn6lo6GGXDo/uO2z2V7JOcdK82PkXM6jeLhx/ACZ
 UJ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=T8/4dj9gTvHCpwB5IlUq9PwSZ51kg1bcJ4gzNVJjnFg=;
 b=giaSQXNMM6js9wou+cHKM0prQfTsd3C8gq9OsJXgLQjYmknIMQe6sRvIYbL6512x3M
 jdjajAm/1aYnPWfp6Vnd84P2sN2V4R++r23G+dKf6HJN7Fl4YoOq5J48hucs7SBl8vei
 hsJfEdP7zBKTTe7Y8fcDG1x9O7jqTHBpmadh80MviuWOWjteg/Rfo6Ag7mqdmIV0RQui
 r6ZtAoL2/dk4FZDje5z4gCYKXWS7aypP038FbDuxhTR+uldwJ+g9VpIzRh5aag41RMjG
 lwmEYL4A/muHmGYwrxqCLnPEVQjwRhlosevBI75xaW6m5dy0skAiCUcy5nH/2YViNloW
 awMg==
X-Gm-Message-State: AOAM530+v+1/ldVhdOX21HtMH1FA8yzJrlB+dCttO5tmVy+ApIoYtHh1
 Dl3tzxxdRyAMEI7bGh8mnHNYgJJNqyiCS4g1
X-Google-Smtp-Source: ABdhPJyNhT/PBctX6cq4Z+zWBn1L3GpMRbPpIbbCbYHBAnBz9acZT+DIAX+MMRYrHAaw5z0CUm3Iow==
X-Received: by 2002:a1c:f414:: with SMTP id z20mr5513421wma.94.1628609397734; 
 Tue, 10 Aug 2021 08:29:57 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id f15sm22848219wrp.12.2021.08.10.08.29.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Aug 2021 08:29:57 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 10 Aug 2021 18:29:31 +0300
Message-Id: <20210810152933.178325-14-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210810152933.178325-1-razor@blackwall.org>
References: <20210810152933.178325-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 13/15] net: bridge: vlan: add support for
	mcast router global option
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

Add support to change and retrieve global vlan multicast router state
which is used for the bridge itself. We just need to pass multicast context
to br_multicast_set_router instead of bridge device and the rest of the
logic remains the same.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 include/uapi/linux/if_bridge.h |  1 +
 net/bridge/br_multicast.c      | 11 +++++------
 net/bridge/br_netlink.c        |  3 ++-
 net/bridge/br_private.h        |  3 ++-
 net/bridge/br_sysfs_br.c       |  2 +-
 net/bridge/br_vlan_options.c   | 15 ++++++++++++++-
 6 files changed, 25 insertions(+), 10 deletions(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index ee691a0bc067..716ce30b3ca8 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -561,6 +561,7 @@ enum {
 	BRIDGE_VLANDB_GOPTS_MCAST_QUERY_RESPONSE_INTVL,
 	BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_INTVL,
 	BRIDGE_VLANDB_GOPTS_MCAST_QUERIER,
+	BRIDGE_VLANDB_GOPTS_MCAST_ROUTER,
 	__BRIDGE_VLANDB_GOPTS_MAX
 };
 #define BRIDGE_VLANDB_GOPTS_MAX (__BRIDGE_VLANDB_GOPTS_MAX - 1)
diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index a780ad8aca37..df6bf6a237aa 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -4053,17 +4053,16 @@ void br_multicast_dev_del(struct net_bridge *br)
 	rcu_barrier();
 }
 
-int br_multicast_set_router(struct net_bridge *br, unsigned long val)
+int br_multicast_set_router(struct net_bridge_mcast *brmctx, unsigned long val)
 {
-	struct net_bridge_mcast *brmctx = &br->multicast_ctx;
 	int err = -EINVAL;
 
-	spin_lock_bh(&br->multicast_lock);
+	spin_lock_bh(&brmctx->br->multicast_lock);
 
 	switch (val) {
 	case MDB_RTR_TYPE_DISABLED:
 	case MDB_RTR_TYPE_PERM:
-		br_mc_router_state_change(br, val == MDB_RTR_TYPE_PERM);
+		br_mc_router_state_change(brmctx->br, val == MDB_RTR_TYPE_PERM);
 		del_timer(&brmctx->ip4_mc_router_timer);
 #if IS_ENABLED(CONFIG_IPV6)
 		del_timer(&brmctx->ip6_mc_router_timer);
@@ -4073,13 +4072,13 @@ int br_multicast_set_router(struct net_bridge *br, unsigned long val)
 		break;
 	case MDB_RTR_TYPE_TEMP_QUERY:
 		if (brmctx->multicast_router != MDB_RTR_TYPE_TEMP_QUERY)
-			br_mc_router_state_change(br, false);
+			br_mc_router_state_change(brmctx->br, false);
 		brmctx->multicast_router = val;
 		err = 0;
 		break;
 	}
 
-	spin_unlock_bh(&br->multicast_lock);
+	spin_unlock_bh(&brmctx->br->multicast_lock);
 
 	return err;
 }
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 1d8ff9bbbd2f..93a517410671 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -1349,7 +1349,8 @@ static int br_changelink(struct net_device *brdev, struct nlattr *tb[],
 	if (data[IFLA_BR_MCAST_ROUTER]) {
 		u8 multicast_router = nla_get_u8(data[IFLA_BR_MCAST_ROUTER]);
 
-		err = br_multicast_set_router(br, multicast_router);
+		err = br_multicast_set_router(&br->multicast_ctx,
+					      multicast_router);
 		if (err)
 			return err;
 	}
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 76adb729e58c..f5af6b56be8f 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -890,7 +890,7 @@ void br_multicast_dev_del(struct net_bridge *br);
 void br_multicast_flood(struct net_bridge_mdb_entry *mdst, struct sk_buff *skb,
 			struct net_bridge_mcast *brmctx,
 			bool local_rcv, bool local_orig);
-int br_multicast_set_router(struct net_bridge *br, unsigned long val);
+int br_multicast_set_router(struct net_bridge_mcast *brmctx, unsigned long val);
 int br_multicast_set_port_router(struct net_bridge_port *p, unsigned long val);
 int br_multicast_toggle(struct net_bridge *br, unsigned long val,
 			struct netlink_ext_ack *extack);
@@ -1204,6 +1204,7 @@ br_multicast_ctx_options_equal(const struct net_bridge_mcast *brmctx1,
 	       brmctx1->multicast_startup_query_interval ==
 	       brmctx2->multicast_startup_query_interval &&
 	       brmctx1->multicast_querier == brmctx2->multicast_querier &&
+	       brmctx1->multicast_router == brmctx2->multicast_router &&
 #if IS_ENABLED(CONFIG_IPV6)
 	       brmctx1->multicast_mld_version ==
 	       brmctx2->multicast_mld_version &&
diff --git a/net/bridge/br_sysfs_br.c b/net/bridge/br_sysfs_br.c
index e1234bd8d5a0..d9a89ddd0331 100644
--- a/net/bridge/br_sysfs_br.c
+++ b/net/bridge/br_sysfs_br.c
@@ -390,7 +390,7 @@ static ssize_t multicast_router_show(struct device *d,
 static int set_multicast_router(struct net_bridge *br, unsigned long val,
 				struct netlink_ext_ack *extack)
 {
-	return br_multicast_set_router(br, val);
+	return br_multicast_set_router(&br->multicast_ctx, val);
 }
 
 static ssize_t multicast_router_store(struct device *d,
diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
index 0d0db8ddae45..6ba45b73931f 100644
--- a/net/bridge/br_vlan_options.c
+++ b/net/bridge/br_vlan_options.c
@@ -296,7 +296,9 @@ bool br_vlan_global_opts_fill(struct sk_buff *skb, u16 vid, u16 vid_range,
 	    nla_put_u32(skb, BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_CNT,
 			v_opts->br_mcast_ctx.multicast_startup_query_count) ||
 	    nla_put_u8(skb, BRIDGE_VLANDB_GOPTS_MCAST_QUERIER,
-		       v_opts->br_mcast_ctx.multicast_querier))
+		       v_opts->br_mcast_ctx.multicast_querier) ||
+	    nla_put_u8(skb, BRIDGE_VLANDB_GOPTS_MCAST_ROUTER,
+		       v_opts->br_mcast_ctx.multicast_router))
 		goto out_err;
 
 	clockval = jiffies_to_clock_t(v_opts->br_mcast_ctx.multicast_last_member_interval);
@@ -358,6 +360,7 @@ static size_t rtnl_vlan_global_opts_nlmsg_size(void)
 		+ nla_total_size(sizeof(u64)) /* BRIDGE_VLANDB_GOPTS_MCAST_QUERY_RESPONSE_INTVL */
 		+ nla_total_size(sizeof(u64)) /* BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_INTVL */
 		+ nla_total_size(sizeof(u8)) /* BRIDGE_VLANDB_GOPTS_MCAST_QUERIER */
+		+ nla_total_size(sizeof(u8)) /* BRIDGE_VLANDB_GOPTS_MCAST_ROUTER */
 #endif
 		+ nla_total_size(sizeof(u16)); /* BRIDGE_VLANDB_GOPTS_RANGE */
 }
@@ -497,6 +500,15 @@ static int br_vlan_process_global_one_opts(const struct net_bridge *br,
 			return err;
 		*changed = true;
 	}
+	if (tb[BRIDGE_VLANDB_GOPTS_MCAST_ROUTER]) {
+		u8 val;
+
+		val = nla_get_u8(tb[BRIDGE_VLANDB_GOPTS_MCAST_ROUTER]);
+		err = br_multicast_set_router(&v->br_mcast_ctx, val);
+		if (err)
+			return err;
+		*changed = true;
+	}
 #if IS_ENABLED(CONFIG_IPV6)
 	if (tb[BRIDGE_VLANDB_GOPTS_MCAST_MLD_VERSION]) {
 		u8 ver;
@@ -520,6 +532,7 @@ static const struct nla_policy br_vlan_db_gpol[BRIDGE_VLANDB_GOPTS_MAX + 1] = {
 	[BRIDGE_VLANDB_GOPTS_MCAST_MLD_VERSION]	= { .type = NLA_U8 },
 	[BRIDGE_VLANDB_GOPTS_MCAST_QUERY_INTVL]	= { .type = NLA_U64 },
 	[BRIDGE_VLANDB_GOPTS_MCAST_QUERIER]	= { .type = NLA_U8 },
+	[BRIDGE_VLANDB_GOPTS_MCAST_ROUTER]	= { .type = NLA_U8 },
 	[BRIDGE_VLANDB_GOPTS_MCAST_IGMP_VERSION]	= { .type = NLA_U8 },
 	[BRIDGE_VLANDB_GOPTS_MCAST_LAST_MEMBER_CNT]	= { .type = NLA_U32 },
 	[BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_CNT]	= { .type = NLA_U32 },
-- 
2.31.1

