Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B40A3E7C34
	for <lists.bridge@lfdr.de>; Tue, 10 Aug 2021 17:30:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD68A40435;
	Tue, 10 Aug 2021 15:30:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5MEBZg68aZT9; Tue, 10 Aug 2021 15:30:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 32FB740448;
	Tue, 10 Aug 2021 15:29:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 51869C0026;
	Tue, 10 Aug 2021 15:29:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CFDD6C000E
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:29:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BEAE1607E4
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:29:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0M7M30XYzGrk for <bridge@lists.linux-foundation.org>;
 Tue, 10 Aug 2021 15:29:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E8038606CE
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:29:55 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id i4so9383940wru.0
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 08:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Zy+5j+qnJPP2DcQ6ppQltCiNmcX/igd0j9tkuJSlWao=;
 b=TNiJBiTYzPvblJXXa6uu/WugVsjzum3kaqyZI6xRSd/PHP95DmvLvf9GDjM7FCRcRE
 K/Y13m7TKFYgy39C8vwhjMw7rRn6QTYvexzAsBLpM1UCtYg3GUfb8CSgqay7Eyglhgpm
 efxC00gAJu/c7uQ5MjAuBnnEd3DHpop7KKxPTlPCosxnXCgv9niVlHJPgAwshn0eoA2d
 SkG3HIUCE9W2nv0RoRgbgNnQlX2tWdDuGK9B7somdJajPN063sPSLAB7ccsOqH+cnLTz
 zFDicoluFQthXNPguiR7t3bx2dIjNf3eQOZIaEzs+a49buY4nEVPM8hcKSdCQ+bXj7cb
 +/ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Zy+5j+qnJPP2DcQ6ppQltCiNmcX/igd0j9tkuJSlWao=;
 b=RvA93AnoW8/RoLz48EGTshPHtwR1fv7hgWu9T0z6Xx2vKsvaHVQsne2V6GTRvDjEnb
 EaGB+z2jY5+PRaHjfOHlCQqB+K7FyusxkOBUNjSwdb6S9go2M53CG2Yzsw9DgnoaqgkI
 iA+vRQ/EYS9NfLyVSDEhgshtiBB3kq1IGfFJbwXIVi6qr0JkGm1Lo+hlOBoEnUE44BQL
 jLgy/H+V/F5hHxv+vZHdTIiqDca7DjDrpcNu+IpbbMmIsvqocMZc2AL5FAf112GPYsXB
 +By0Gd+WsDY087AYHvjjVaGxd8NLDqSFQkWsZ+NUeo/aoB918kjEWIZirNLT0uTyfcs2
 60IQ==
X-Gm-Message-State: AOAM530kdpL0Gm4eqNA1vDqS30aM1BfKEXu4JXLurJoJXQdcW/lRMdyt
 Fl04sAiqQTyoGzOnYMOmuxsWmFEdxERfaLsY
X-Google-Smtp-Source: ABdhPJxC4Q3tJQJEiIQbnbdPbwkIpqoXknmGIHhW7+FY6Z9YJY9/fGO6yAqZ63oL9yEKiCXNWnmXNQ==
X-Received: by 2002:a5d:5343:: with SMTP id t3mr19266580wrv.273.1628609394058; 
 Tue, 10 Aug 2021 08:29:54 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id f15sm22848219wrp.12.2021.08.10.08.29.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Aug 2021 08:29:53 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 10 Aug 2021 18:29:27 +0300
Message-Id: <20210810152933.178325-10-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210810152933.178325-1-razor@blackwall.org>
References: <20210810152933.178325-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 09/15] net: bridge: vlan: add support for
	mcast startup query interval global option
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
interval option.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 include/uapi/linux/if_bridge.h |  1 +
 net/bridge/br_private.h        |  2 ++
 net/bridge/br_vlan_options.c   | 13 +++++++++++++
 3 files changed, 16 insertions(+)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 9a30c4d92626..ea8773cce9e9 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -559,6 +559,7 @@ enum {
 	BRIDGE_VLANDB_GOPTS_MCAST_QUERIER_INTVL,
 	BRIDGE_VLANDB_GOPTS_MCAST_QUERY_INTVL,
 	BRIDGE_VLANDB_GOPTS_MCAST_QUERY_RESPONSE_INTVL,
+	BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_INTVL,
 	__BRIDGE_VLANDB_GOPTS_MAX
 };
 #define BRIDGE_VLANDB_GOPTS_MAX (__BRIDGE_VLANDB_GOPTS_MAX - 1)
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index d63520718ae9..4cdd71526145 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1201,6 +1201,8 @@ br_multicast_ctx_options_equal(const struct net_bridge_mcast *brmctx1,
 	       brmctx2->multicast_query_interval &&
 	       brmctx1->multicast_query_response_interval ==
 	       brmctx2->multicast_query_response_interval &&
+	       brmctx1->multicast_startup_query_interval ==
+	       brmctx2->multicast_startup_query_interval &&
 #if IS_ENABLED(CONFIG_IPV6)
 	       brmctx1->multicast_mld_version ==
 	       brmctx2->multicast_mld_version &&
diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
index cd8320b22a89..7b8dfd138045 100644
--- a/net/bridge/br_vlan_options.c
+++ b/net/bridge/br_vlan_options.c
@@ -317,6 +317,10 @@ bool br_vlan_global_opts_fill(struct sk_buff *skb, u16 vid, u16 vid_range,
 	if (nla_put_u64_64bit(skb, BRIDGE_VLANDB_GOPTS_MCAST_QUERY_RESPONSE_INTVL,
 			      clockval, BRIDGE_VLANDB_GOPTS_PAD))
 		goto out_err;
+	clockval = jiffies_to_clock_t(v_opts->br_mcast_ctx.multicast_startup_query_interval);
+	if (nla_put_u64_64bit(skb, BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_INTVL,
+			      clockval, BRIDGE_VLANDB_GOPTS_PAD))
+		goto out_err;
 
 #if IS_ENABLED(CONFIG_IPV6)
 	if (nla_put_u8(skb, BRIDGE_VLANDB_GOPTS_MCAST_MLD_VERSION,
@@ -350,6 +354,7 @@ static size_t rtnl_vlan_global_opts_nlmsg_size(void)
 		+ nla_total_size(sizeof(u64)) /* BRIDGE_VLANDB_GOPTS_MCAST_QUERIER_INTVL */
 		+ nla_total_size(sizeof(u64)) /* BRIDGE_VLANDB_GOPTS_MCAST_QUERY_INTVL */
 		+ nla_total_size(sizeof(u64)) /* BRIDGE_VLANDB_GOPTS_MCAST_QUERY_RESPONSE_INTVL */
+		+ nla_total_size(sizeof(u64)) /* BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_INTVL */
 #endif
 		+ nla_total_size(sizeof(u16)); /* BRIDGE_VLANDB_GOPTS_RANGE */
 }
@@ -473,6 +478,13 @@ static int br_vlan_process_global_one_opts(const struct net_bridge *br,
 		v->br_mcast_ctx.multicast_query_response_interval = clock_t_to_jiffies(val);
 		*changed = true;
 	}
+	if (tb[BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_INTVL]) {
+		u64 val;
+
+		val = nla_get_u64(tb[BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_INTVL]);
+		v->br_mcast_ctx.multicast_startup_query_interval = clock_t_to_jiffies(val);
+		*changed = true;
+	}
 #if IS_ENABLED(CONFIG_IPV6)
 	if (tb[BRIDGE_VLANDB_GOPTS_MCAST_MLD_VERSION]) {
 		u8 ver;
@@ -501,6 +513,7 @@ static const struct nla_policy br_vlan_db_gpol[BRIDGE_VLANDB_GOPTS_MAX + 1] = {
 	[BRIDGE_VLANDB_GOPTS_MCAST_LAST_MEMBER_INTVL]	= { .type = NLA_U64 },
 	[BRIDGE_VLANDB_GOPTS_MCAST_MEMBERSHIP_INTVL]	= { .type = NLA_U64 },
 	[BRIDGE_VLANDB_GOPTS_MCAST_QUERIER_INTVL]	= { .type = NLA_U64 },
+	[BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_INTVL]	= { .type = NLA_U64 },
 	[BRIDGE_VLANDB_GOPTS_MCAST_QUERY_RESPONSE_INTVL] = { .type = NLA_U64 },
 };
 
-- 
2.31.1

