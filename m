Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7B63E7C42
	for <lists.bridge@lfdr.de>; Tue, 10 Aug 2021 17:30:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5F9AB8381F;
	Tue, 10 Aug 2021 15:30:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZqJ-LrS0Dizh; Tue, 10 Aug 2021 15:30:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id D5789834DE;
	Tue, 10 Aug 2021 15:30:11 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A0A5EC001F;
	Tue, 10 Aug 2021 15:30:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 12B4EC001C
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:30:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 046E540469
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:30:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O_chJBxO-hpt for <bridge@lists.linux-foundation.org>;
 Tue, 10 Aug 2021 15:30:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 89315403B2
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:30:01 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 m28-20020a05600c3b1cb02902b5a8c22575so2857668wms.0
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 08:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0U8ioPcKzi2jt/DpEgccopIlJARByWOltx48kXuPcYI=;
 b=kh5L/JWBjVVX4qw5w0ujY9XuKUAA07r7Ic8m9ki46oKaf5YlGdAEMySZlKZgUbRi3f
 eLwBWw9M4TM+6HB+b8qpu0bC6jQgO8MWZqsbQM2mgBa9ZLfGx+98t07ah13JqfnuyR2r
 Lb9YtCbNJD1sDLzN4hcoTjRZZ8lsqRuvLhSNja9Ny3ZAVd9jilDt96cBJfMTw+KL6n0g
 EOY5zVt36u07rbleTpuvtCD6cb0M5HEFFgo9r1WUQarzEiTZCF3RFf6hXKF15MXhYcSS
 +hl4SO7x1yCOuCNNi7dkHVDY+KO4KR+zoAUSoHoH1ujbK/9YZ3BcoBwSNo6m8znFUO1J
 M5Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0U8ioPcKzi2jt/DpEgccopIlJARByWOltx48kXuPcYI=;
 b=GSVPZPPl/S9n+y1jO/3k8cBYra/G+NX0145VRJAVr7rj/wEvbBZ/YNdGnWaMQPqMGa
 YO4EXdnkGITjU8KZCbryw/yL87FzeTDx90O90TuBndzG0sMsQ7YdgIiOgtAE8Cfma0ws
 HlvNvHW/RebxLe/qRggGBRudtaviHpLhUtfsijQsm5mgkX39usTezvlnOtiz8QCMHbYo
 Bwv5BQGOtOzVeGy4wHXNKo3BmSeDsgNnQbP0OJez1KIrgAOwzfUk9MWBmBiqANBEr2hn
 3j8Wi8BluBrKvSE7ZKFOoPWzZNB9foA+DLo0oRmm59zXZ+3iJ/mSgXSardZF4jmsdMZD
 7vzQ==
X-Gm-Message-State: AOAM53082wT97Mnsq8ZLtCSnJgL6hwXdH/oAxEkr1/fJStMMtMoAYsRM
 qfysyCA0okgdqZfNYFDCBrQWbjD1grMZJfRR
X-Google-Smtp-Source: ABdhPJz40ns1utPPP7KryyUQIlGnjnhCNIYvVZBTqha+LY0zDCnYn3WSnzqmu42ZcLbEGELUPqpxVg==
X-Received: by 2002:a05:600c:4eca:: with SMTP id
 g10mr22571013wmq.16.1628609399520; 
 Tue, 10 Aug 2021 08:29:59 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id f15sm22848219wrp.12.2021.08.10.08.29.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Aug 2021 08:29:59 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 10 Aug 2021 18:29:33 +0300
Message-Id: <20210810152933.178325-16-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210810152933.178325-1-razor@blackwall.org>
References: <20210810152933.178325-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 15/15] net: bridge: vlan: use
	br_rports_fill_info() to export mcast router ports
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

Embed the standard multicast router port export by br_rports_fill_info()
into a new global vlan attribute BRIDGE_VLANDB_GOPTS_MCAST_ROUTER_PORTS.
In order to have the same format for the global bridge mcast context and
the per-vlan mcast context we need a double-nesting:
 - BRIDGE_VLANDB_GOPTS_MCAST_ROUTER_PORTS
   - MDBA_ROUTER

Currently we don't compare router lists, if any router port exists in
the bridge mcast contexts we consider their option sets as different and
export them separately.

In addition we export the router port vlan id when dumping similar to
the router port notification format.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 include/uapi/linux/if_bridge.h |  1 +
 net/bridge/br_mdb.c            | 17 ++++-------------
 net/bridge/br_private.h        | 15 +++++++++++++++
 net/bridge/br_vlan_options.c   | 18 ++++++++++++++++++
 4 files changed, 38 insertions(+), 13 deletions(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 716ce30b3ca8..4a57d063768d 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -562,6 +562,7 @@ enum {
 	BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_INTVL,
 	BRIDGE_VLANDB_GOPTS_MCAST_QUERIER,
 	BRIDGE_VLANDB_GOPTS_MCAST_ROUTER,
+	BRIDGE_VLANDB_GOPTS_MCAST_ROUTER_PORTS,
 	__BRIDGE_VLANDB_GOPTS_MAX
 };
 #define BRIDGE_VLANDB_GOPTS_MAX (__BRIDGE_VLANDB_GOPTS_MAX - 1)
diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 7c16e2c76220..389ff3c1e9d9 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -16,16 +16,6 @@
 
 #include "br_private.h"
 
-static bool br_rports_have_mc_router(const struct net_bridge_mcast *brmctx)
-{
-#if IS_ENABLED(CONFIG_IPV6)
-	return !hlist_empty(&brmctx->ip4_mc_router_list) ||
-	       !hlist_empty(&brmctx->ip6_mc_router_list);
-#else
-	return !hlist_empty(&brmctx->ip4_mc_router_list);
-#endif
-}
-
 static bool
 br_ip4_rports_get_timer(struct net_bridge_mcast_port *pmctx,
 			unsigned long *timer)
@@ -47,8 +37,8 @@ br_ip6_rports_get_timer(struct net_bridge_mcast_port *pmctx,
 #endif
 }
 
-static int br_rports_fill_info(struct sk_buff *skb,
-			       const struct net_bridge_mcast *brmctx)
+int br_rports_fill_info(struct sk_buff *skb,
+			const struct net_bridge_mcast *brmctx)
 {
 	u16 vid = brmctx->vlan ? brmctx->vlan->vid : 0;
 	bool have_ip4_mc_rtr, have_ip6_mc_rtr;
@@ -97,7 +87,8 @@ static int br_rports_fill_info(struct sk_buff *skb,
 				 ip4_timer)) ||
 		    (have_ip6_mc_rtr &&
 		     nla_put_u32(skb, MDBA_ROUTER_PATTR_INET6_TIMER,
-				 ip6_timer))) {
+				 ip6_timer)) ||
+		    (vid && nla_put_u16(skb, MDBA_ROUTER_PATTR_VID, vid))) {
 			nla_nest_cancel(skb, port_nest);
 			goto fail;
 		}
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index f5af6b56be8f..6f5106ab6f20 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -958,6 +958,8 @@ bool br_multicast_toggle_global_vlan(struct net_bridge_vlan *vlan, bool on);
 int br_mdb_replay(struct net_device *br_dev, struct net_device *dev,
 		  const void *ctx, bool adding, struct notifier_block *nb,
 		  struct netlink_ext_ack *extack);
+int br_rports_fill_info(struct sk_buff *skb,
+			const struct net_bridge_mcast *brmctx);
 
 static inline bool br_group_is_l2(const struct br_ip *group)
 {
@@ -1181,6 +1183,17 @@ br_multicast_port_ctx_state_stopped(const struct net_bridge_mcast_port *pmctx)
 		pmctx->vlan->state == BR_STATE_BLOCKING);
 }
 
+static inline bool
+br_rports_have_mc_router(const struct net_bridge_mcast *brmctx)
+{
+#if IS_ENABLED(CONFIG_IPV6)
+	return !hlist_empty(&brmctx->ip4_mc_router_list) ||
+	       !hlist_empty(&brmctx->ip6_mc_router_list);
+#else
+	return !hlist_empty(&brmctx->ip4_mc_router_list);
+#endif
+}
+
 static inline bool
 br_multicast_ctx_options_equal(const struct net_bridge_mcast *brmctx1,
 			       const struct net_bridge_mcast *brmctx2)
@@ -1205,6 +1218,8 @@ br_multicast_ctx_options_equal(const struct net_bridge_mcast *brmctx1,
 	       brmctx2->multicast_startup_query_interval &&
 	       brmctx1->multicast_querier == brmctx2->multicast_querier &&
 	       brmctx1->multicast_router == brmctx2->multicast_router &&
+	       !br_rports_have_mc_router(brmctx1) &&
+	       !br_rports_have_mc_router(brmctx2) &&
 #if IS_ENABLED(CONFIG_IPV6)
 	       brmctx1->multicast_mld_version ==
 	       brmctx2->multicast_mld_version &&
diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
index 6ba45b73931f..b4fd5fa441b7 100644
--- a/net/bridge/br_vlan_options.c
+++ b/net/bridge/br_vlan_options.c
@@ -272,6 +272,7 @@ bool br_vlan_global_opts_can_enter_range(const struct net_bridge_vlan *v_curr,
 bool br_vlan_global_opts_fill(struct sk_buff *skb, u16 vid, u16 vid_range,
 			      const struct net_bridge_vlan *v_opts)
 {
+	struct nlattr *nest2 __maybe_unused;
 	u64 clockval __maybe_unused;
 	struct nlattr *nest;
 
@@ -326,6 +327,23 @@ bool br_vlan_global_opts_fill(struct sk_buff *skb, u16 vid, u16 vid_range,
 			      clockval, BRIDGE_VLANDB_GOPTS_PAD))
 		goto out_err;
 
+	if (br_rports_have_mc_router(&v_opts->br_mcast_ctx)) {
+		nest2 = nla_nest_start(skb,
+				       BRIDGE_VLANDB_GOPTS_MCAST_ROUTER_PORTS);
+		if (!nest2)
+			goto out_err;
+
+		rcu_read_lock();
+		if (br_rports_fill_info(skb, &v_opts->br_mcast_ctx)) {
+			rcu_read_unlock();
+			nla_nest_cancel(skb, nest2);
+			goto out_err;
+		}
+		rcu_read_unlock();
+
+		nla_nest_end(skb, nest2);
+	}
+
 #if IS_ENABLED(CONFIG_IPV6)
 	if (nla_put_u8(skb, BRIDGE_VLANDB_GOPTS_MCAST_MLD_VERSION,
 		       v_opts->br_mcast_ctx.multicast_mld_version))
-- 
2.31.1

