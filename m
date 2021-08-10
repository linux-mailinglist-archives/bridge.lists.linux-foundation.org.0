Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AFA3E7C3C
	for <lists.bridge@lfdr.de>; Tue, 10 Aug 2021 17:30:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A15E683777;
	Tue, 10 Aug 2021 15:30:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zcg6PUhPBPDC; Tue, 10 Aug 2021 15:30:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id D77EF837A1;
	Tue, 10 Aug 2021 15:30:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0F004C0025;
	Tue, 10 Aug 2021 15:30:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 29AAEC001F
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:30:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 68D6A40458
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:30:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oNDs9kqUImJF for <bridge@lists.linux-foundation.org>;
 Tue, 10 Aug 2021 15:29:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AE57940469
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:29:58 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id 6so1210446wme.5
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 08:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LAscvoBUzbxYWL/Sw9h/x/xIRZsYobJ3NT1ExxgA3/4=;
 b=MErF5S0FLDij7jscT7QSyChFZL/eAutFn8KvtXlWUw4Dl9Vpy4M9QoO4QsCI01Ivex
 LcvGqqLweumx0pde8PGo6ZdlGDgIgVVlxmuvV2SpmH+0Ysj+RcpaX63UQMJm+Buv9jVK
 T3AyGXDNxqOq4fo6WY1eAQ5IERVqa1aaebjzhwbiTeeC07IMnmF+ZizutIPpOYUs36vP
 gTosucaqv0ER7msfugwAbiYk0ktDkwqUZdGKo7AD2gWBkEjAwxyRES7jKvlw81mgBvAq
 dVwJIog2I+R+ANmKUNFzOVoC6vrA2wg4o36F+A7oMk9f62KmE6fEilsYXxXWkIalBIAa
 CsKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LAscvoBUzbxYWL/Sw9h/x/xIRZsYobJ3NT1ExxgA3/4=;
 b=LTcfwegW29P15iztc/6KWWNM507oiU8LUwXnfTa4BkmEuDc/b8QYkwSy/q5iIDpTa2
 8WsARYXxpPwPI1QsWhMPfnCk8oVSBF82mJBtREcj1T4/rw5EejJqaM0uxY1Fv3wQ5Vo0
 +w+kW5qE3cvTUiheM7oMPo2Df3fHUEcJV8jfe4rE+KM1KOfeUSWROvj45kPigvxiEiy6
 wtPYbWRLXg08NrwSvk0Anh4fEKYnAfHdfeLX6A2uG0hw5T4saFFoZZtweNoiWanHhcdP
 U4zVvwbkBGLZDQyiSc/knQXonZmDwr5CGI0ZGxkMY7rZEUAul2opP+xZpZPrUsLE9vo8
 4gRA==
X-Gm-Message-State: AOAM532RvkkQkTEgkQukHCvweJpdF7jw8iG02+5Lo9PS9fZR0l7jZAPt
 5psf3DRfhHe3qhCxZgY4P7Xszw==
X-Google-Smtp-Source: ABdhPJykpJVLt3NbzY65NUKuFSJDSNQYZIT0/jgQup8cN9GyqWFxpNf5AALAGebvXjtuyZF1s8C8fQ==
X-Received: by 2002:a05:600c:4145:: with SMTP id
 h5mr4810953wmm.7.1628609396835; 
 Tue, 10 Aug 2021 08:29:56 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id f15sm22848219wrp.12.2021.08.10.08.29.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Aug 2021 08:29:56 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 10 Aug 2021 18:29:30 +0300
Message-Id: <20210810152933.178325-13-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210810152933.178325-1-razor@blackwall.org>
References: <20210810152933.178325-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 12/15] net: bridge: vlan: add support for
	mcast querier global option
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

Add support to change and retrieve global vlan multicast querier state.
We just need to pass multicast context to br_multicast_set_querier
instead of bridge device and the rest of the logic remains the same.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 include/uapi/linux/if_bridge.h |  1 +
 net/bridge/br_multicast.c      |  7 +++----
 net/bridge/br_netlink.c        |  5 +++--
 net/bridge/br_private.h        |  5 +++--
 net/bridge/br_sysfs_br.c       |  4 ++--
 net/bridge/br_vlan_options.c   | 15 ++++++++++++++-
 6 files changed, 26 insertions(+), 11 deletions(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index ea8773cce9e9..ee691a0bc067 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -560,6 +560,7 @@ enum {
 	BRIDGE_VLANDB_GOPTS_MCAST_QUERY_INTVL,
 	BRIDGE_VLANDB_GOPTS_MCAST_QUERY_RESPONSE_INTVL,
 	BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_INTVL,
+	BRIDGE_VLANDB_GOPTS_MCAST_QUERIER,
 	__BRIDGE_VLANDB_GOPTS_MAX
 };
 #define BRIDGE_VLANDB_GOPTS_MAX (__BRIDGE_VLANDB_GOPTS_MAX - 1)
diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index f30c2e5d3142..a780ad8aca37 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -4297,14 +4297,13 @@ bool br_multicast_router(const struct net_device *dev)
 }
 EXPORT_SYMBOL_GPL(br_multicast_router);
 
-int br_multicast_set_querier(struct net_bridge *br, unsigned long val)
+int br_multicast_set_querier(struct net_bridge_mcast *brmctx, unsigned long val)
 {
-	struct net_bridge_mcast *brmctx = &br->multicast_ctx;
 	unsigned long max_delay;
 
 	val = !!val;
 
-	spin_lock_bh(&br->multicast_lock);
+	spin_lock_bh(&brmctx->br->multicast_lock);
 	if (brmctx->multicast_querier == val)
 		goto unlock;
 
@@ -4327,7 +4326,7 @@ int br_multicast_set_querier(struct net_bridge *br, unsigned long val)
 #endif
 
 unlock:
-	spin_unlock_bh(&br->multicast_lock);
+	spin_unlock_bh(&brmctx->br->multicast_lock);
 
 	return 0;
 }
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 92c79eb16905..1d8ff9bbbd2f 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -1372,7 +1372,8 @@ static int br_changelink(struct net_device *brdev, struct nlattr *tb[],
 	if (data[IFLA_BR_MCAST_QUERIER]) {
 		u8 mcast_querier = nla_get_u8(data[IFLA_BR_MCAST_QUERIER]);
 
-		err = br_multicast_set_querier(br, mcast_querier);
+		err = br_multicast_set_querier(&br->multicast_ctx,
+					       mcast_querier);
 		if (err)
 			return err;
 	}
@@ -1645,7 +1646,7 @@ static int br_fill_info(struct sk_buff *skb, const struct net_device *brdev)
 	    nla_put_u8(skb, IFLA_BR_MCAST_QUERY_USE_IFADDR,
 		       br_opt_get(br, BROPT_MULTICAST_QUERY_USE_IFADDR)) ||
 	    nla_put_u8(skb, IFLA_BR_MCAST_QUERIER,
-		       READ_ONCE(br->multicast_ctx.multicast_querier)) ||
+		       br->multicast_ctx.multicast_querier) ||
 	    nla_put_u8(skb, IFLA_BR_MCAST_STATS_ENABLED,
 		       br_opt_get(br, BROPT_MULTICAST_STATS_ENABLED)) ||
 	    nla_put_u32(skb, IFLA_BR_MCAST_HASH_ELASTICITY, RHT_ELASTICITY) ||
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 25db6b02b042..76adb729e58c 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -894,7 +894,7 @@ int br_multicast_set_router(struct net_bridge *br, unsigned long val);
 int br_multicast_set_port_router(struct net_bridge_port *p, unsigned long val);
 int br_multicast_toggle(struct net_bridge *br, unsigned long val,
 			struct netlink_ext_ack *extack);
-int br_multicast_set_querier(struct net_bridge *br, unsigned long val);
+int br_multicast_set_querier(struct net_bridge_mcast *brmctx, unsigned long val);
 int br_multicast_set_hash_max(struct net_bridge *br, unsigned long val);
 int br_multicast_set_igmp_version(struct net_bridge_mcast *brmctx,
 				  unsigned long val);
@@ -1041,7 +1041,7 @@ __br_multicast_querier_exists(struct net_bridge_mcast *brmctx,
 {
 	bool own_querier_enabled;
 
-	if (READ_ONCE(brmctx->multicast_querier)) {
+	if (brmctx->multicast_querier) {
 		if (is_ipv6 && !br_opt_get(brmctx->br, BROPT_HAS_IPV6_ADDR))
 			own_querier_enabled = false;
 		else
@@ -1203,6 +1203,7 @@ br_multicast_ctx_options_equal(const struct net_bridge_mcast *brmctx1,
 	       brmctx2->multicast_query_response_interval &&
 	       brmctx1->multicast_startup_query_interval ==
 	       brmctx2->multicast_startup_query_interval &&
+	       brmctx1->multicast_querier == brmctx2->multicast_querier &&
 #if IS_ENABLED(CONFIG_IPV6)
 	       brmctx1->multicast_mld_version ==
 	       brmctx2->multicast_mld_version &&
diff --git a/net/bridge/br_sysfs_br.c b/net/bridge/br_sysfs_br.c
index 570edfd391f4..e1234bd8d5a0 100644
--- a/net/bridge/br_sysfs_br.c
+++ b/net/bridge/br_sysfs_br.c
@@ -447,13 +447,13 @@ static ssize_t multicast_querier_show(struct device *d,
 				      char *buf)
 {
 	struct net_bridge *br = to_bridge(d);
-	return sprintf(buf, "%d\n", READ_ONCE(br->multicast_ctx.multicast_querier));
+	return sprintf(buf, "%d\n", br->multicast_ctx.multicast_querier);
 }
 
 static int set_multicast_querier(struct net_bridge *br, unsigned long val,
 				 struct netlink_ext_ack *extack)
 {
-	return br_multicast_set_querier(br, val);
+	return br_multicast_set_querier(&br->multicast_ctx, val);
 }
 
 static ssize_t multicast_querier_store(struct device *d,
diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
index 7b8dfd138045..0d0db8ddae45 100644
--- a/net/bridge/br_vlan_options.c
+++ b/net/bridge/br_vlan_options.c
@@ -294,7 +294,9 @@ bool br_vlan_global_opts_fill(struct sk_buff *skb, u16 vid, u16 vid_range,
 	    nla_put_u32(skb, BRIDGE_VLANDB_GOPTS_MCAST_LAST_MEMBER_CNT,
 			v_opts->br_mcast_ctx.multicast_last_member_count) ||
 	    nla_put_u32(skb, BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_CNT,
-			v_opts->br_mcast_ctx.multicast_startup_query_count))
+			v_opts->br_mcast_ctx.multicast_startup_query_count) ||
+	    nla_put_u8(skb, BRIDGE_VLANDB_GOPTS_MCAST_QUERIER,
+		       v_opts->br_mcast_ctx.multicast_querier))
 		goto out_err;
 
 	clockval = jiffies_to_clock_t(v_opts->br_mcast_ctx.multicast_last_member_interval);
@@ -355,6 +357,7 @@ static size_t rtnl_vlan_global_opts_nlmsg_size(void)
 		+ nla_total_size(sizeof(u64)) /* BRIDGE_VLANDB_GOPTS_MCAST_QUERY_INTVL */
 		+ nla_total_size(sizeof(u64)) /* BRIDGE_VLANDB_GOPTS_MCAST_QUERY_RESPONSE_INTVL */
 		+ nla_total_size(sizeof(u64)) /* BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_INTVL */
+		+ nla_total_size(sizeof(u8)) /* BRIDGE_VLANDB_GOPTS_MCAST_QUERIER */
 #endif
 		+ nla_total_size(sizeof(u16)); /* BRIDGE_VLANDB_GOPTS_RANGE */
 }
@@ -485,6 +488,15 @@ static int br_vlan_process_global_one_opts(const struct net_bridge *br,
 		v->br_mcast_ctx.multicast_startup_query_interval = clock_t_to_jiffies(val);
 		*changed = true;
 	}
+	if (tb[BRIDGE_VLANDB_GOPTS_MCAST_QUERIER]) {
+		u8 val;
+
+		val = nla_get_u8(tb[BRIDGE_VLANDB_GOPTS_MCAST_QUERIER]);
+		err = br_multicast_set_querier(&v->br_mcast_ctx, val);
+		if (err)
+			return err;
+		*changed = true;
+	}
 #if IS_ENABLED(CONFIG_IPV6)
 	if (tb[BRIDGE_VLANDB_GOPTS_MCAST_MLD_VERSION]) {
 		u8 ver;
@@ -507,6 +519,7 @@ static const struct nla_policy br_vlan_db_gpol[BRIDGE_VLANDB_GOPTS_MAX + 1] = {
 	[BRIDGE_VLANDB_GOPTS_MCAST_SNOOPING]	= { .type = NLA_U8 },
 	[BRIDGE_VLANDB_GOPTS_MCAST_MLD_VERSION]	= { .type = NLA_U8 },
 	[BRIDGE_VLANDB_GOPTS_MCAST_QUERY_INTVL]	= { .type = NLA_U64 },
+	[BRIDGE_VLANDB_GOPTS_MCAST_QUERIER]	= { .type = NLA_U8 },
 	[BRIDGE_VLANDB_GOPTS_MCAST_IGMP_VERSION]	= { .type = NLA_U8 },
 	[BRIDGE_VLANDB_GOPTS_MCAST_LAST_MEMBER_CNT]	= { .type = NLA_U32 },
 	[BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_CNT]	= { .type = NLA_U32 },
-- 
2.31.1

