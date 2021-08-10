Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B7ACB3E7C30
	for <lists.bridge@lfdr.de>; Tue, 10 Aug 2021 17:29:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F40383576;
	Tue, 10 Aug 2021 15:29:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id voh6pEVCV4ra; Tue, 10 Aug 2021 15:29:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 06EBD835B9;
	Tue, 10 Aug 2021 15:29:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 37CF8C0020;
	Tue, 10 Aug 2021 15:29:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 11D35C0026
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:29:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3CBF8403A7
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:29:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pI_LZqoDt-ot for <bridge@lists.linux-foundation.org>;
 Tue, 10 Aug 2021 15:29:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3FE87401C9
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:29:50 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 h24-20020a1ccc180000b029022e0571d1a0so2809280wmb.5
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 08:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IZO6z66xLg3R8sWrzBKsMRKlDrBnbnQRa4M++exAkMo=;
 b=U3YhjEsyGh+3W1n7NDESfIfndxgRvy02BBNO91BdSVT4m3GoViD/inNT5so3wdY2Ha
 v+Nk2Xzdte5gbGxNzod489of6jsm+trOKm1iZknoev0889LOyq0PtreBqYKXuDfvJTRb
 7HiGitzf/yhQP3hgcQNivLVe59B1Kc9y6YLfnP0kvS8kmmnGnvPXAE1cxV/G6jlzBT/a
 IOyEKGWReMASxm6EzQ1LS5siGd6keBxcjvBWX3tY1kKhFaiCX846YViz+opD57g+/wkG
 OVYlW74GtSbrrTNNKRkqgN1xZl2BMuD+4AtnlshWrmEA3XUyTF/2hQHNI7YlmtESndQ9
 v0mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IZO6z66xLg3R8sWrzBKsMRKlDrBnbnQRa4M++exAkMo=;
 b=W6HiTomn/RdJjgyVeyU5O0nzPVH4bCiRuxU6TCHW0yJOh54xGqNjaDaRrZSDvhdJQ3
 6MmjnmUzeeCXaiJOR480ONxwOVZWWVs5cr1QqP73tPd7v9MeFaTzb7gDm0VYUfxdlcwz
 N88hghnL6ttW4spgEy7uXtoSnfaCic+ZSPKkK08t0DD/BOunGDTw2Z5uuOQDc062pdu7
 PgKsm263Vx4ZJsTnE89m5PHa32IDYGLrdNQ9la5i8DA09XV2RITT8b70jQ4EI992X55H
 LfPxaLT9IgQhAmpNF2hMqkXqUAYxQokgTO/iDH/vJCSXmbRz+/cTV9MHtnB1rR0mA7eQ
 14IA==
X-Gm-Message-State: AOAM530Pie6JGL9jPpAMZNmhoT/AsUoYcJBTnqPz4KUe0QXLPdsthdS/
 H5J7Xyj0IyNJANFTnssiSqgV2A==
X-Google-Smtp-Source: ABdhPJy2hKalajQuYJnbAAAITOVv59wG3BSgqH1DpZP+sygDzMRyD2qVy88dxQsxviQRRxlYTapDVg==
X-Received: by 2002:a1c:4b12:: with SMTP id y18mr5224754wma.67.1628609388355; 
 Tue, 10 Aug 2021 08:29:48 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id f15sm22848219wrp.12.2021.08.10.08.29.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Aug 2021 08:29:47 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 10 Aug 2021 18:29:21 +0300
Message-Id: <20210810152933.178325-4-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210810152933.178325-1-razor@blackwall.org>
References: <20210810152933.178325-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 03/15] net: bridge: vlan: add support for
	mcast startup query count global option
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

Add support to change and retrieve global vlan multicast startup query
count option.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 include/uapi/linux/if_bridge.h |  1 +
 net/bridge/br_private.h        |  2 ++
 net/bridge/br_vlan_options.c   | 13 ++++++++++++-
 3 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 68099c6bc186..62d30153e343 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -552,6 +552,7 @@ enum {
 	BRIDGE_VLANDB_GOPTS_MCAST_IGMP_VERSION,
 	BRIDGE_VLANDB_GOPTS_MCAST_MLD_VERSION,
 	BRIDGE_VLANDB_GOPTS_MCAST_LAST_MEMBER_CNT,
+	BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_CNT,
 	__BRIDGE_VLANDB_GOPTS_MAX
 };
 #define BRIDGE_VLANDB_GOPTS_MAX (__BRIDGE_VLANDB_GOPTS_MAX - 1)
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index ca88609c51b7..560c57dd33db 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1189,6 +1189,8 @@ br_multicast_ctx_options_equal(const struct net_bridge_mcast *brmctx1,
 	       brmctx2->multicast_igmp_version &&
 	       brmctx1->multicast_last_member_count ==
 	       brmctx2->multicast_last_member_count &&
+	       brmctx1->multicast_startup_query_count ==
+	       brmctx2->multicast_startup_query_count &&
 #if IS_ENABLED(CONFIG_IPV6)
 	       brmctx1->multicast_mld_version ==
 	       brmctx2->multicast_mld_version &&
diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
index 75733b5bc6f4..81a0988b97c1 100644
--- a/net/bridge/br_vlan_options.c
+++ b/net/bridge/br_vlan_options.c
@@ -291,7 +291,9 @@ bool br_vlan_global_opts_fill(struct sk_buff *skb, u16 vid, u16 vid_range,
 	    nla_put_u8(skb, BRIDGE_VLANDB_GOPTS_MCAST_IGMP_VERSION,
 		       v_opts->br_mcast_ctx.multicast_igmp_version) ||
 	    nla_put_u32(skb, BRIDGE_VLANDB_GOPTS_MCAST_LAST_MEMBER_CNT,
-			v_opts->br_mcast_ctx.multicast_last_member_count))
+			v_opts->br_mcast_ctx.multicast_last_member_count) ||
+	    nla_put_u32(skb, BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_CNT,
+			v_opts->br_mcast_ctx.multicast_startup_query_count))
 		goto out_err;
 
 #if IS_ENABLED(CONFIG_IPV6)
@@ -320,6 +322,7 @@ static size_t rtnl_vlan_global_opts_nlmsg_size(void)
 		+ nla_total_size(sizeof(u8)) /* BRIDGE_VLANDB_GOPTS_MCAST_IGMP_VERSION */
 		+ nla_total_size(sizeof(u8)) /* BRIDGE_VLANDB_GOPTS_MCAST_MLD_VERSION */
 		+ nla_total_size(sizeof(u32)) /* BRIDGE_VLANDB_GOPTS_MCAST_LAST_MEMBER_CNT */
+		+ nla_total_size(sizeof(u32)) /* BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_CNT */
 #endif
 		+ nla_total_size(sizeof(u16)); /* BRIDGE_VLANDB_GOPTS_RANGE */
 }
@@ -401,6 +404,13 @@ static int br_vlan_process_global_one_opts(const struct net_bridge *br,
 		v->br_mcast_ctx.multicast_last_member_count = cnt;
 		*changed = true;
 	}
+	if (tb[BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_CNT]) {
+		u32 cnt;
+
+		cnt = nla_get_u32(tb[BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_CNT]);
+		v->br_mcast_ctx.multicast_startup_query_count = cnt;
+		*changed = true;
+	}
 #if IS_ENABLED(CONFIG_IPV6)
 	if (tb[BRIDGE_VLANDB_GOPTS_MCAST_MLD_VERSION]) {
 		u8 ver;
@@ -424,6 +434,7 @@ static const struct nla_policy br_vlan_db_gpol[BRIDGE_VLANDB_GOPTS_MAX + 1] = {
 	[BRIDGE_VLANDB_GOPTS_MCAST_MLD_VERSION]	= { .type = NLA_U8 },
 	[BRIDGE_VLANDB_GOPTS_MCAST_IGMP_VERSION]	= { .type = NLA_U8 },
 	[BRIDGE_VLANDB_GOPTS_MCAST_LAST_MEMBER_CNT]	= { .type = NLA_U32 },
+	[BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_CNT]	= { .type = NLA_U32 },
 };
 
 int br_vlan_rtm_process_global_options(struct net_device *dev,
-- 
2.31.1

