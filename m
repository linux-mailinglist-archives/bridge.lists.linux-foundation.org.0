Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 508933E7C38
	for <lists.bridge@lfdr.de>; Tue, 10 Aug 2021 17:30:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 979E040471;
	Tue, 10 Aug 2021 15:30:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h_VeeSgMZPDM; Tue, 10 Aug 2021 15:30:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id EB8864046C;
	Tue, 10 Aug 2021 15:29:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 089ACC0025;
	Tue, 10 Aug 2021 15:29:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E7C5BC000E
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:29:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D53C64044C
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:29:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0iu_md_xKRp6 for <bridge@lists.linux-foundation.org>;
 Tue, 10 Aug 2021 15:29:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D196940372
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:29:54 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id b13so26884985wrs.3
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 08:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FRJhzG+cEIRbT4/LQ62e1+8W0JTppHYxGCmJbZbispU=;
 b=gipQ4023jUeQy9gcR0lV2JyzzhQcxZLpfvNu9LrlNYESzT9yove3IRBaSo71doGxDM
 kDHggvklSkxxbs26sO4KxbK4vyB504vP9XBor3U5h18pUOKZSqWVeeDoZb6cqwoSHFll
 VomMmUPcRDQtbjJmjW3bVFuvDDjzKBRqK7EjT7pmqbMTbzQ4yYW2YYohwrWQV4Mfp2wR
 41WmGcf6nwTs64uHm+vR8dqSfPEzVhDIXlc4BAsq51ivdJNEO9wkYHagorJac2zxWPWw
 XtWpWuYcuYZsr19a8XeNEr2mStg3YTpOBLUtKRFB30VaOktVjeql04A9MpWl/ruWgdoJ
 qPxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FRJhzG+cEIRbT4/LQ62e1+8W0JTppHYxGCmJbZbispU=;
 b=S/cp1ZNqMIiTS7ENPgZ2+UX5sRDa5HfETVOZpHN6WT7w8WPjMDH7o2Xf+njr/4MPR9
 0LudVr9msS1+NPiYXqWjmRzF8Wh9s7vNQHQs80XF8hl/7bewjf3QDDWEEs7JikrGLFQT
 YPJ1E0kpoWmHZiqnif2YsiRP7PXuk7/o3fMMeNpgamzBFuTyDSYKD0kRssC14Dya+tQk
 pKFr/Rs+ofx8qrjihZjFY+T210rKDkT3rEydKhAfMG5khm9oFnUw3E09y+GgZa1aLjm+
 Zm7rCHsm0B1WfJrGXH4uC5DP6piCO9VD24u9TKQNB8HJ33jxt8UaN6TA0VCQrcREyPKq
 8HGg==
X-Gm-Message-State: AOAM530GDQI40p92T8++IJgZz883qJjvjuyA2K6pg9LMw1ULog47XfY6
 zPoi03mr2jnNurTxpbdxMkIkHQ==
X-Google-Smtp-Source: ABdhPJzd6GTIn95p1nzRbheHX5UsuAo6sfFFDTr1hkh/SVzlzwITQnaEPk5u+sOx0yyKT3cuujr0sg==
X-Received: by 2002:adf:f741:: with SMTP id z1mr18461905wrp.201.1628609393011; 
 Tue, 10 Aug 2021 08:29:53 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id f15sm22848219wrp.12.2021.08.10.08.29.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Aug 2021 08:29:52 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 10 Aug 2021 18:29:26 +0300
Message-Id: <20210810152933.178325-9-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210810152933.178325-1-razor@blackwall.org>
References: <20210810152933.178325-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 08/15] net: bridge: vlan: add support for
	mcast query response interval global option
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

Add support to change and retrieve global vlan multicast query response
interval option.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 include/uapi/linux/if_bridge.h |  1 +
 net/bridge/br_private.h        |  2 ++
 net/bridge/br_vlan_options.c   | 13 +++++++++++++
 3 files changed, 16 insertions(+)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 371f4f93aaa1..9a30c4d92626 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -558,6 +558,7 @@ enum {
 	BRIDGE_VLANDB_GOPTS_MCAST_MEMBERSHIP_INTVL,
 	BRIDGE_VLANDB_GOPTS_MCAST_QUERIER_INTVL,
 	BRIDGE_VLANDB_GOPTS_MCAST_QUERY_INTVL,
+	BRIDGE_VLANDB_GOPTS_MCAST_QUERY_RESPONSE_INTVL,
 	__BRIDGE_VLANDB_GOPTS_MAX
 };
 #define BRIDGE_VLANDB_GOPTS_MAX (__BRIDGE_VLANDB_GOPTS_MAX - 1)
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index e72805d32458..d63520718ae9 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1199,6 +1199,8 @@ br_multicast_ctx_options_equal(const struct net_bridge_mcast *brmctx1,
 	       brmctx2->multicast_querier_interval &&
 	       brmctx1->multicast_query_interval ==
 	       brmctx2->multicast_query_interval &&
+	       brmctx1->multicast_query_response_interval ==
+	       brmctx2->multicast_query_response_interval &&
 #if IS_ENABLED(CONFIG_IPV6)
 	       brmctx1->multicast_mld_version ==
 	       brmctx2->multicast_mld_version &&
diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
index 10ed84336fd7..cd8320b22a89 100644
--- a/net/bridge/br_vlan_options.c
+++ b/net/bridge/br_vlan_options.c
@@ -313,6 +313,10 @@ bool br_vlan_global_opts_fill(struct sk_buff *skb, u16 vid, u16 vid_range,
 	if (nla_put_u64_64bit(skb, BRIDGE_VLANDB_GOPTS_MCAST_QUERY_INTVL,
 			      clockval, BRIDGE_VLANDB_GOPTS_PAD))
 		goto out_err;
+	clockval = jiffies_to_clock_t(v_opts->br_mcast_ctx.multicast_query_response_interval);
+	if (nla_put_u64_64bit(skb, BRIDGE_VLANDB_GOPTS_MCAST_QUERY_RESPONSE_INTVL,
+			      clockval, BRIDGE_VLANDB_GOPTS_PAD))
+		goto out_err;
 
 #if IS_ENABLED(CONFIG_IPV6)
 	if (nla_put_u8(skb, BRIDGE_VLANDB_GOPTS_MCAST_MLD_VERSION,
@@ -345,6 +349,7 @@ static size_t rtnl_vlan_global_opts_nlmsg_size(void)
 		+ nla_total_size(sizeof(u64)) /* BRIDGE_VLANDB_GOPTS_MCAST_MEMBERSHIP_INTVL */
 		+ nla_total_size(sizeof(u64)) /* BRIDGE_VLANDB_GOPTS_MCAST_QUERIER_INTVL */
 		+ nla_total_size(sizeof(u64)) /* BRIDGE_VLANDB_GOPTS_MCAST_QUERY_INTVL */
+		+ nla_total_size(sizeof(u64)) /* BRIDGE_VLANDB_GOPTS_MCAST_QUERY_RESPONSE_INTVL */
 #endif
 		+ nla_total_size(sizeof(u16)); /* BRIDGE_VLANDB_GOPTS_RANGE */
 }
@@ -461,6 +466,13 @@ static int br_vlan_process_global_one_opts(const struct net_bridge *br,
 		v->br_mcast_ctx.multicast_query_interval = clock_t_to_jiffies(val);
 		*changed = true;
 	}
+	if (tb[BRIDGE_VLANDB_GOPTS_MCAST_QUERY_RESPONSE_INTVL]) {
+		u64 val;
+
+		val = nla_get_u64(tb[BRIDGE_VLANDB_GOPTS_MCAST_QUERY_RESPONSE_INTVL]);
+		v->br_mcast_ctx.multicast_query_response_interval = clock_t_to_jiffies(val);
+		*changed = true;
+	}
 #if IS_ENABLED(CONFIG_IPV6)
 	if (tb[BRIDGE_VLANDB_GOPTS_MCAST_MLD_VERSION]) {
 		u8 ver;
@@ -489,6 +501,7 @@ static const struct nla_policy br_vlan_db_gpol[BRIDGE_VLANDB_GOPTS_MAX + 1] = {
 	[BRIDGE_VLANDB_GOPTS_MCAST_LAST_MEMBER_INTVL]	= { .type = NLA_U64 },
 	[BRIDGE_VLANDB_GOPTS_MCAST_MEMBERSHIP_INTVL]	= { .type = NLA_U64 },
 	[BRIDGE_VLANDB_GOPTS_MCAST_QUERIER_INTVL]	= { .type = NLA_U64 },
+	[BRIDGE_VLANDB_GOPTS_MCAST_QUERY_RESPONSE_INTVL] = { .type = NLA_U64 },
 };
 
 int br_vlan_rtm_process_global_options(struct net_device *dev,
-- 
2.31.1

