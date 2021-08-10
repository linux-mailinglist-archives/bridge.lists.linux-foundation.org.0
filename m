Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F783E7C31
	for <lists.bridge@lfdr.de>; Tue, 10 Aug 2021 17:29:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C256D606CE;
	Tue, 10 Aug 2021 15:29:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JsPHhzdN8KWT; Tue, 10 Aug 2021 15:29:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 3DFDC6083E;
	Tue, 10 Aug 2021 15:29:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6075CC0028;
	Tue, 10 Aug 2021 15:29:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F0ECBC000E
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:29:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D278360796
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:29:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bn8NRDjNo870 for <bridge@lists.linux-foundation.org>;
 Tue, 10 Aug 2021 15:29:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F3EA260726
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:29:51 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id q11so8652437wrr.9
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 08:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UO54odsSP3VjArE2SbHfOg7evttW8AGYkv9ZXQftWqQ=;
 b=JgKsVbIsJFRGQlV4IZ73J/QXgxqfoqi4AC466q/RpxCxk86xV5QRqugie/GONRzM72
 e1zsZTuBn1d/+5/kLvuC6uDwkQ5+9UhbtONCppOMY5yeRZPrn57PTrrbzYZO08qA3Vc7
 LS5pdXEkEiiOEZoUfsRN0A69ASlN1ttH+k6jAJ/tzRvk1m/aaMZB30l5XN87cAoId1Tb
 5IXffWDcK1ipMzCh0ajeO+A/NSqr9njXr2tSDecD6/qQ1Nn1GuKDiM6KYNtYiUbGvZHb
 CcQVi31PYE/rIenXQ8+e9/zJZGPDF5cfu3y0ldvGabkBtupSFBRH5ZqzOcwCzTZP3Xn4
 9tig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UO54odsSP3VjArE2SbHfOg7evttW8AGYkv9ZXQftWqQ=;
 b=ZOX6Y86ovv9XQIsJmi0vV4c+koYE4K5UwxO1mOUpi623QBjnfxQ4szEC3cGTZ5A2Ds
 FLfsda870rEARpxmGQxTRRSTF/qBG/LBaGsp72dYS+FX/eAy1uepJMWM4GGJ6DE9qMLC
 1cW8vopPGnl/uGWjqFIeeSlCpZ1JOuTKjAM1VG/L2swlc9ovfUC5wgpJfQSxT747p1Wf
 FUwc9CJdykG2kvI4PI0TteTIzg0K1pu81UmuLXr47bukwCGWnC1pDx00RIN7sUh3zIzN
 qr7JYiUQKfmFpJh4rJdXe3IDeGaz0x8M+2LI2p8HOubKEGTBHkv7iYLqtD3jjBfAJJrk
 E8iw==
X-Gm-Message-State: AOAM531+GolesVbbNqah3C/CmeNCIoNlply8t/yuiFdwZWe2kZouWEiM
 /KLmCT3kxggporvyXO5/BfzDhg==
X-Google-Smtp-Source: ABdhPJx2nSdwWrbtvoVmQTkliH6Bf3gaRseAiGaGzvS6X06j5PVEEY8PHfHZUPmQSOS70PXSpS6xcQ==
X-Received: by 2002:a5d:5382:: with SMTP id d2mr4419978wrv.352.1628609390140; 
 Tue, 10 Aug 2021 08:29:50 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id f15sm22848219wrp.12.2021.08.10.08.29.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Aug 2021 08:29:49 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 10 Aug 2021 18:29:23 +0300
Message-Id: <20210810152933.178325-6-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210810152933.178325-1-razor@blackwall.org>
References: <20210810152933.178325-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 05/15] net: bridge: vlan: add support for
	mcast membership interval global option
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

Add support to change and retrieve global vlan multicast membership
interval option.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 include/uapi/linux/if_bridge.h |  1 +
 net/bridge/br_private.h        |  2 ++
 net/bridge/br_vlan_options.c   | 13 +++++++++++++
 3 files changed, 16 insertions(+)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index c19537d36900..fd62c5a3cffe 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -555,6 +555,7 @@ enum {
 	BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_CNT,
 	BRIDGE_VLANDB_GOPTS_MCAST_LAST_MEMBER_INTVL,
 	BRIDGE_VLANDB_GOPTS_PAD,
+	BRIDGE_VLANDB_GOPTS_MCAST_MEMBERSHIP_INTVL,
 	__BRIDGE_VLANDB_GOPTS_MAX
 };
 #define BRIDGE_VLANDB_GOPTS_MAX (__BRIDGE_VLANDB_GOPTS_MAX - 1)
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index e310aff25772..96c080cf5bc3 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1193,6 +1193,8 @@ br_multicast_ctx_options_equal(const struct net_bridge_mcast *brmctx1,
 	       brmctx2->multicast_startup_query_count &&
 	       brmctx1->multicast_last_member_interval ==
 	       brmctx2->multicast_last_member_interval &&
+	       brmctx1->multicast_membership_interval ==
+	       brmctx2->multicast_membership_interval &&
 #if IS_ENABLED(CONFIG_IPV6)
 	       brmctx1->multicast_mld_version ==
 	       brmctx2->multicast_mld_version &&
diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
index 26f242acef75..9d695a63732c 100644
--- a/net/bridge/br_vlan_options.c
+++ b/net/bridge/br_vlan_options.c
@@ -301,6 +301,10 @@ bool br_vlan_global_opts_fill(struct sk_buff *skb, u16 vid, u16 vid_range,
 	if (nla_put_u64_64bit(skb, BRIDGE_VLANDB_GOPTS_MCAST_LAST_MEMBER_INTVL,
 			      clockval, BRIDGE_VLANDB_GOPTS_PAD))
 		goto out_err;
+	clockval = jiffies_to_clock_t(v_opts->br_mcast_ctx.multicast_membership_interval);
+	if (nla_put_u64_64bit(skb, BRIDGE_VLANDB_GOPTS_MCAST_MEMBERSHIP_INTVL,
+			      clockval, BRIDGE_VLANDB_GOPTS_PAD))
+		goto out_err;
 
 #if IS_ENABLED(CONFIG_IPV6)
 	if (nla_put_u8(skb, BRIDGE_VLANDB_GOPTS_MCAST_MLD_VERSION,
@@ -330,6 +334,7 @@ static size_t rtnl_vlan_global_opts_nlmsg_size(void)
 		+ nla_total_size(sizeof(u32)) /* BRIDGE_VLANDB_GOPTS_MCAST_LAST_MEMBER_CNT */
 		+ nla_total_size(sizeof(u32)) /* BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_CNT */
 		+ nla_total_size(sizeof(u64)) /* BRIDGE_VLANDB_GOPTS_MCAST_LAST_MEMBER_INTVL */
+		+ nla_total_size(sizeof(u64)) /* BRIDGE_VLANDB_GOPTS_MCAST_MEMBERSHIP_INTVL */
 #endif
 		+ nla_total_size(sizeof(u16)); /* BRIDGE_VLANDB_GOPTS_RANGE */
 }
@@ -425,6 +430,13 @@ static int br_vlan_process_global_one_opts(const struct net_bridge *br,
 		v->br_mcast_ctx.multicast_last_member_interval = clock_t_to_jiffies(val);
 		*changed = true;
 	}
+	if (tb[BRIDGE_VLANDB_GOPTS_MCAST_MEMBERSHIP_INTVL]) {
+		u64 val;
+
+		val = nla_get_u64(tb[BRIDGE_VLANDB_GOPTS_MCAST_MEMBERSHIP_INTVL]);
+		v->br_mcast_ctx.multicast_membership_interval = clock_t_to_jiffies(val);
+		*changed = true;
+	}
 #if IS_ENABLED(CONFIG_IPV6)
 	if (tb[BRIDGE_VLANDB_GOPTS_MCAST_MLD_VERSION]) {
 		u8 ver;
@@ -450,6 +462,7 @@ static const struct nla_policy br_vlan_db_gpol[BRIDGE_VLANDB_GOPTS_MAX + 1] = {
 	[BRIDGE_VLANDB_GOPTS_MCAST_LAST_MEMBER_CNT]	= { .type = NLA_U32 },
 	[BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_CNT]	= { .type = NLA_U32 },
 	[BRIDGE_VLANDB_GOPTS_MCAST_LAST_MEMBER_INTVL]	= { .type = NLA_U64 },
+	[BRIDGE_VLANDB_GOPTS_MCAST_MEMBERSHIP_INTVL]	= { .type = NLA_U64 },
 };
 
 int br_vlan_rtm_process_global_options(struct net_device *dev,
-- 
2.31.1

