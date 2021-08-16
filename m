Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1197A3ED94D
	for <lists.bridge@lfdr.de>; Mon, 16 Aug 2021 16:57:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F420D6086F;
	Mon, 16 Aug 2021 14:57:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id satAekyst6qo; Mon, 16 Aug 2021 14:57:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 113646087C;
	Mon, 16 Aug 2021 14:57:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DF606C0024;
	Mon, 16 Aug 2021 14:57:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B5C79C0026
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 14:57:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9EE804030C
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 14:57:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pPWjuJFQ2vGV for <bridge@lists.linux-foundation.org>;
 Mon, 16 Aug 2021 14:57:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BB5D3402DF
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 14:57:20 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id by4so27012864edb.0
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 07:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gu3qPVqazrfPsLrdaA6zNjrUNMRsdA16rRPDc2bNkUw=;
 b=FuV+Ic3USr2PZi1PnKLkMugVAAt5b6+5NCSahnq3tBRmBe/bcNvT2wFZVSDo+FzS8D
 cM5uGmbJq7o1jfdbiMacajfbGNb1f5R+Smvdjtzrv5N0gitZG+KFycHfxnQWU3eQrLRB
 6dd6lfis26okjtBo811z5I8wcdLqoIVkrBaMuwHmp8CTl0GsaIy5JWFL8X5SxWM36hqG
 o2w6cQecfztfIUAS9pd0m0xmUPAzuu2HMUj1Uq1StplPP9WUozgBq7wwXYmgcA2PMVUc
 tcnvz1IL9FhSnI2v0GR3HBY3541g2J988f3/Cjq2nyQ8wXz4b1/FSZhSZGinCEHG+XQj
 Lyww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gu3qPVqazrfPsLrdaA6zNjrUNMRsdA16rRPDc2bNkUw=;
 b=iNIGMxAi8uCo/qt4rlkAcNrIyb5utBxwzGiwLfzpNCwfLEY2kpYE8Dr1n4Tl+u7h9i
 DaU6IIXp4qDXWR+TNIiKi1tcz2+nM/weF0Epo3bSkuT0lvF8QxIgdq5XAEukGUHu8QQe
 YDlrmfFrEWTMTfQqwQGyw5tnAn7O2mOv6igNxnC+6PmlymzM3srlxd0VcKIIQZGo/Y2i
 HNoRpkuuu7HrK45k1kYQZrvsqP1VNMmAka98RRoxUNNlxKlNXe1Nf6H9bkcAc1arP9p1
 RXW4RAnycBG/n6lb9VrP5PFoflKOpa9Y4TxJnVUlLbzHAe9/WtahvqZspn9M/jWYKiyG
 JnOQ==
X-Gm-Message-State: AOAM533WPyscjbWJE/O1RIl1d61aV0Q/ORbxkRPKTpoO2AJViv1BgIk3
 fjd+/jiqGR9ZsnVsdNDLJPm+5Q==
X-Google-Smtp-Source: ABdhPJyfgtxQkZ0H+1ivIO/PeQ3LyKrGyE4V8lSLn5Iir/ILYPFes8w0JiOPJ/cwAAoZX6yFwfbx8w==
X-Received: by 2002:a05:6402:14d1:: with SMTP id
 f17mr20183567edx.167.1629125838855; 
 Mon, 16 Aug 2021 07:57:18 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id t25sm4946076edi.65.2021.08.16.07.57.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Aug 2021 07:57:18 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 16 Aug 2021 17:57:05 +0300
Message-Id: <20210816145707.671901-3-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210816145707.671901-1-razor@blackwall.org>
References: <20210816145707.671901-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 2/4] net: bridge: vlan: account for router
	port lists when notifying
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

When sending a global vlan notification we should account for the number
of router ports when allocating the skb, otherwise we might end up
losing notifications.

Fixes: dc002875c22b ("net: bridge: vlan: use br_rports_fill_info() to export mcast router ports")
Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_mdb.c          | 30 ++++++++++++++++++++++++++++++
 net/bridge/br_private.h      |  1 +
 net/bridge/br_vlan_options.c | 17 +++++++++--------
 3 files changed, 40 insertions(+), 8 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 389ff3c1e9d9..0281453f7766 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -37,6 +37,36 @@ br_ip6_rports_get_timer(struct net_bridge_mcast_port *pmctx,
 #endif
 }
 
+static size_t __br_rports_one_size(void)
+{
+	return nla_total_size(sizeof(u32)) + /* MDBA_ROUTER_PORT */
+	       nla_total_size(sizeof(u32)) + /* MDBA_ROUTER_PATTR_TIMER */
+	       nla_total_size(sizeof(u8)) +  /* MDBA_ROUTER_PATTR_TYPE */
+	       nla_total_size(sizeof(u32)) + /* MDBA_ROUTER_PATTR_INET_TIMER */
+	       nla_total_size(sizeof(u32)) + /* MDBA_ROUTER_PATTR_INET6_TIMER */
+	       nla_total_size(sizeof(u32));  /* MDBA_ROUTER_PATTR_VID */
+}
+
+size_t br_rports_size(const struct net_bridge_mcast *brmctx)
+{
+	struct net_bridge_mcast_port *pmctx;
+	size_t size = nla_total_size(0); /* MDBA_ROUTER */
+
+	rcu_read_lock();
+	hlist_for_each_entry_rcu(pmctx, &brmctx->ip4_mc_router_list,
+				 ip4_rlist)
+		size += __br_rports_one_size();
+
+#if IS_ENABLED(CONFIG_IPV6)
+	hlist_for_each_entry_rcu(pmctx, &brmctx->ip6_mc_router_list,
+				 ip6_rlist)
+		size += __br_rports_one_size();
+#endif
+	rcu_read_unlock();
+
+	return size;
+}
+
 int br_rports_fill_info(struct sk_buff *skb,
 			const struct net_bridge_mcast *brmctx)
 {
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 9b1bf98a2c5a..df0fa246c80c 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -952,6 +952,7 @@ int br_multicast_dump_querier_state(struct sk_buff *skb,
 				    const struct net_bridge_mcast *brmctx,
 				    int nest_attr);
 size_t br_multicast_querier_state_size(void);
+size_t br_rports_size(const struct net_bridge_mcast *brmctx);
 
 static inline bool br_group_is_l2(const struct br_ip *group)
 {
diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
index 49dec53a4a74..a3b8a086284b 100644
--- a/net/bridge/br_vlan_options.c
+++ b/net/bridge/br_vlan_options.c
@@ -362,7 +362,7 @@ bool br_vlan_global_opts_fill(struct sk_buff *skb, u16 vid, u16 vid_range,
 	return false;
 }
 
-static size_t rtnl_vlan_global_opts_nlmsg_size(void)
+static size_t rtnl_vlan_global_opts_nlmsg_size(const struct net_bridge_vlan *v)
 {
 	return NLMSG_ALIGN(sizeof(struct br_vlan_msg))
 		+ nla_total_size(0) /* BRIDGE_VLANDB_GLOBAL_OPTIONS */
@@ -382,6 +382,8 @@ static size_t rtnl_vlan_global_opts_nlmsg_size(void)
 		+ nla_total_size(sizeof(u8)) /* BRIDGE_VLANDB_GOPTS_MCAST_QUERIER */
 		+ nla_total_size(sizeof(u8)) /* BRIDGE_VLANDB_GOPTS_MCAST_ROUTER */
 		+ br_multicast_querier_state_size() /* BRIDGE_VLANDB_GOPTS_MCAST_QUERIER_STATE */
+		+ nla_total_size(0) /* BRIDGE_VLANDB_GOPTS_MCAST_ROUTER_PORTS */
+		+ br_rports_size(&v->br_mcast_ctx) /* BRIDGE_VLANDB_GOPTS_MCAST_ROUTER_PORTS */
 #endif
 		+ nla_total_size(sizeof(u16)); /* BRIDGE_VLANDB_GOPTS_RANGE */
 }
@@ -398,7 +400,12 @@ static void br_vlan_global_opts_notify(const struct net_bridge *br,
 	/* right now notifications are done only with rtnl held */
 	ASSERT_RTNL();
 
-	skb = nlmsg_new(rtnl_vlan_global_opts_nlmsg_size(), GFP_KERNEL);
+	/* need to find the vlan due to flags/options */
+	v = br_vlan_find(br_vlan_group(br), vid);
+	if (!v)
+		return;
+
+	skb = nlmsg_new(rtnl_vlan_global_opts_nlmsg_size(v), GFP_KERNEL);
 	if (!skb)
 		goto out_err;
 
@@ -411,11 +418,6 @@ static void br_vlan_global_opts_notify(const struct net_bridge *br,
 	bvm->family = AF_BRIDGE;
 	bvm->ifindex = br->dev->ifindex;
 
-	/* need to find the vlan due to flags/options */
-	v = br_vlan_find(br_vlan_group(br), vid);
-	if (!v)
-		goto out_kfree;
-
 	if (!br_vlan_global_opts_fill(skb, vid, vid_range, v))
 		goto out_err;
 
@@ -425,7 +427,6 @@ static void br_vlan_global_opts_notify(const struct net_bridge *br,
 
 out_err:
 	rtnl_set_sk_err(dev_net(br->dev), RTNLGRP_BRVLAN, err);
-out_kfree:
 	kfree_skb(skb);
 }
 
-- 
2.31.1

