Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0CE3E7C33
	for <lists.bridge@lfdr.de>; Tue, 10 Aug 2021 17:30:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D1116083E;
	Tue, 10 Aug 2021 15:29:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SE2TrSSU_-zo; Tue, 10 Aug 2021 15:29:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 7663460852;
	Tue, 10 Aug 2021 15:29:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8D5FEC0010;
	Tue, 10 Aug 2021 15:29:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 10159C0020
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:29:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C1C79606CE
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:29:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pqcVAxfHWSQX for <bridge@lists.linux-foundation.org>;
 Tue, 10 Aug 2021 15:29:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0FACC60726
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:29:52 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id g138so1530553wmg.4
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 08:29:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5Jpb4hMQMXBG+9lrXYyA9pshH9Cm5F4c6nhvqppjODo=;
 b=sqOXSDJlzug7wtrS9UjmYsmoE4XY6Vy9LYMGnE9g0ZSffoFMTVfnNk8NlYkZgEdD+q
 NDciUuSVwTuwCy0ooW8YPgik6jAvVO6rZyrP6W9sQt52KWNbNrR1cuIQqTXIc1Rny1Ul
 hlFcNRBH/ybJ6ei2ea6Yun869XWQCGa0gdnx1He085n3lx8M5bY9aAAihcrzYtdg1gDy
 c9G5JQxFS33tDIgg//Flidexzy6ic58+33Hfl6HBRJJvEgoY0nyMJFw7eNnAtm/cunA+
 RrwexcDRFlblqZJxtFO6uHlpcixA7o9ASjXZ1Pzb4GHOKtYBQrCy1JTvGDaLArVatci2
 z77A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5Jpb4hMQMXBG+9lrXYyA9pshH9Cm5F4c6nhvqppjODo=;
 b=QKIOq28+OWsQJOdliO60bC8A5gg4IFshY1ubd/7KT4nUOpFyoEHvV5CjNLT/ea6j3d
 v32Fk41Q1y/fsL2XyYb67olfYh2SE7OjIWanjKnlAUsjmNWUI0z8uawFW3bNcFpGQWhr
 ljOrXyQOObIx2hU3B2rXrdb73eYwlQx3TZ3ZG/dhArz4QjLRrWa+EHXfCIik/SozO8dr
 xPCStjJq57oPj+5a+SowFXYSZTnlsE1iJ1fjrwdhqrCqKFIw71KhwiuB3d1CMRhq5yVk
 LwwqLrbMQuaR9J8VONFFj2LuA+xiNKPxDAv35hU7VV89NaE4XZlIVTr5lnLCgXC4Rwap
 l5ew==
X-Gm-Message-State: AOAM5319QTdt6fznAxQ/NbN8HOILXtSvx0CvnqKXBE72Rb2koRej8PkF
 ZP0U4lOPg4UqEEkMUtSkcthxOA==
X-Google-Smtp-Source: ABdhPJzrQdpL13Tt18MA20xS5ecNxiSYYqU90VKMMJtbUbhnq+5seUR1g6FKFc3c7SiFVLaT0Ee/4Q==
X-Received: by 2002:a7b:cb02:: with SMTP id u2mr2407038wmj.103.1628609391053; 
 Tue, 10 Aug 2021 08:29:51 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id f15sm22848219wrp.12.2021.08.10.08.29.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Aug 2021 08:29:50 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 10 Aug 2021 18:29:24 +0300
Message-Id: <20210810152933.178325-7-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210810152933.178325-1-razor@blackwall.org>
References: <20210810152933.178325-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 06/15] net: bridge: vlan: add support for
	mcast querier interval global option
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

Add support to change and retrieve global vlan multicast querier interval
option.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 include/uapi/linux/if_bridge.h |  1 +
 net/bridge/br_private.h        |  2 ++
 net/bridge/br_vlan_options.c   | 13 +++++++++++++
 3 files changed, 16 insertions(+)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index fd62c5a3cffe..517967b90e1a 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -556,6 +556,7 @@ enum {
 	BRIDGE_VLANDB_GOPTS_MCAST_LAST_MEMBER_INTVL,
 	BRIDGE_VLANDB_GOPTS_PAD,
 	BRIDGE_VLANDB_GOPTS_MCAST_MEMBERSHIP_INTVL,
+	BRIDGE_VLANDB_GOPTS_MCAST_QUERIER_INTVL,
 	__BRIDGE_VLANDB_GOPTS_MAX
 };
 #define BRIDGE_VLANDB_GOPTS_MAX (__BRIDGE_VLANDB_GOPTS_MAX - 1)
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 96c080cf5bc3..df60f8ecc11d 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1195,6 +1195,8 @@ br_multicast_ctx_options_equal(const struct net_bridge_mcast *brmctx1,
 	       brmctx2->multicast_last_member_interval &&
 	       brmctx1->multicast_membership_interval ==
 	       brmctx2->multicast_membership_interval &&
+	       brmctx1->multicast_querier_interval ==
+	       brmctx2->multicast_querier_interval &&
 #if IS_ENABLED(CONFIG_IPV6)
 	       brmctx1->multicast_mld_version ==
 	       brmctx2->multicast_mld_version &&
diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
index 9d695a63732c..58ed4277cd1b 100644
--- a/net/bridge/br_vlan_options.c
+++ b/net/bridge/br_vlan_options.c
@@ -305,6 +305,10 @@ bool br_vlan_global_opts_fill(struct sk_buff *skb, u16 vid, u16 vid_range,
 	if (nla_put_u64_64bit(skb, BRIDGE_VLANDB_GOPTS_MCAST_MEMBERSHIP_INTVL,
 			      clockval, BRIDGE_VLANDB_GOPTS_PAD))
 		goto out_err;
+	clockval = jiffies_to_clock_t(v_opts->br_mcast_ctx.multicast_querier_interval);
+	if (nla_put_u64_64bit(skb, BRIDGE_VLANDB_GOPTS_MCAST_QUERIER_INTVL,
+			      clockval, BRIDGE_VLANDB_GOPTS_PAD))
+		goto out_err;
 
 #if IS_ENABLED(CONFIG_IPV6)
 	if (nla_put_u8(skb, BRIDGE_VLANDB_GOPTS_MCAST_MLD_VERSION,
@@ -335,6 +339,7 @@ static size_t rtnl_vlan_global_opts_nlmsg_size(void)
 		+ nla_total_size(sizeof(u32)) /* BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_CNT */
 		+ nla_total_size(sizeof(u64)) /* BRIDGE_VLANDB_GOPTS_MCAST_LAST_MEMBER_INTVL */
 		+ nla_total_size(sizeof(u64)) /* BRIDGE_VLANDB_GOPTS_MCAST_MEMBERSHIP_INTVL */
+		+ nla_total_size(sizeof(u64)) /* BRIDGE_VLANDB_GOPTS_MCAST_QUERIER_INTVL */
 #endif
 		+ nla_total_size(sizeof(u16)); /* BRIDGE_VLANDB_GOPTS_RANGE */
 }
@@ -437,6 +442,13 @@ static int br_vlan_process_global_one_opts(const struct net_bridge *br,
 		v->br_mcast_ctx.multicast_membership_interval = clock_t_to_jiffies(val);
 		*changed = true;
 	}
+	if (tb[BRIDGE_VLANDB_GOPTS_MCAST_QUERIER_INTVL]) {
+		u64 val;
+
+		val = nla_get_u64(tb[BRIDGE_VLANDB_GOPTS_MCAST_QUERIER_INTVL]);
+		v->br_mcast_ctx.multicast_querier_interval = clock_t_to_jiffies(val);
+		*changed = true;
+	}
 #if IS_ENABLED(CONFIG_IPV6)
 	if (tb[BRIDGE_VLANDB_GOPTS_MCAST_MLD_VERSION]) {
 		u8 ver;
@@ -463,6 +475,7 @@ static const struct nla_policy br_vlan_db_gpol[BRIDGE_VLANDB_GOPTS_MAX + 1] = {
 	[BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_CNT]	= { .type = NLA_U32 },
 	[BRIDGE_VLANDB_GOPTS_MCAST_LAST_MEMBER_INTVL]	= { .type = NLA_U64 },
 	[BRIDGE_VLANDB_GOPTS_MCAST_MEMBERSHIP_INTVL]	= { .type = NLA_U64 },
+	[BRIDGE_VLANDB_GOPTS_MCAST_QUERIER_INTVL]	= { .type = NLA_U64 },
 };
 
 int br_vlan_rtm_process_global_options(struct net_device *dev,
-- 
2.31.1

