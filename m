Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 470193E7C2F
	for <lists.bridge@lfdr.de>; Tue, 10 Aug 2021 17:29:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 01385402BA;
	Tue, 10 Aug 2021 15:29:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NfTKyssNLHqq; Tue, 10 Aug 2021 15:29:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 913A040231;
	Tue, 10 Aug 2021 15:29:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BA639C0020;
	Tue, 10 Aug 2021 15:29:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 38840C000E
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:29:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 25B5740357
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:29:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N8yBgNRcMcnk for <bridge@lists.linux-foundation.org>;
 Tue, 10 Aug 2021 15:29:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 32C5F401C9
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:29:49 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id k29so14055866wrd.7
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 08:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=x2ddN55QW8ss1GIleq39Orvx1idPr5wWLIOP8DxelRQ=;
 b=eZMyxB9VVve1mnWXRYqd3nY69gpXjy2E4D72oDNfv8iUmcTuWFAwnDHOUOxTeVDKw9
 pNdBWGf8RHzGX8a34oYo1tGXx9NPI2ZdVe5vCsYDQLHndYR0c1JM/J6vRp6ooKpl1V/z
 9nWfJLiduWS6jI2KgyQhDxI9J5N4ytt/GmDBLiZqwD+W4T8X9ddOmhn4QJZdcupFuwjF
 saQah3SPa5+AQZWKeyadXKYpz0x8SjtrhTm955Cc4bYvQabDjXQR+Fu8/0tg8GUjT5K0
 LNKj8BNpNHQ6gSgTqhQT9AQGqeQeaReihYiVbVCIgdQddaf8UnKcIK73BS6rIDYow02K
 OVCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=x2ddN55QW8ss1GIleq39Orvx1idPr5wWLIOP8DxelRQ=;
 b=Z6e3Chp7JsnlUnPv/iT1107BTHrhltJtHk0zdpdxIE8s/DYoihm24FpbDsD1LAd5uM
 d3NR8muyxqpYjFpfqtQvisZr6w/E4vGE7BEVqxwsD4ba/GurVuORc8Hfv4GajB+dUUl7
 2qDWA5vMn4GcGCCXQWC3+YhnB+qj4gptZc2hFW+CEArcbAX421fjCvIMlpXCEuFWw5gt
 fgQq3FEhiHLhyaEc4r78oFZOwmNTBr2pYo6II8PLiGrXlWIrkzmFFm3YSgV2raM2qC2V
 HG9zlxi7A+COoRRcbYOi+jmH+mxasIuvT/ddXjO/wSXPsHFxR+Y5szz1TJnruS019GM6
 ojcw==
X-Gm-Message-State: AOAM5300dEewvhAegQ5LmroqNkTuFvxRq3NBORzlDDKVJoPzMHbvsIMl
 jN2yY0cFd14dbYiIv1yPmdQHDA==
X-Google-Smtp-Source: ABdhPJzfYycbf9Qc8Dlej1cQh88b6a88y5mVJyHi1n8wFD2B2FkXxFxeeXHUEmaiIIV1jcj3rFD5ww==
X-Received: by 2002:a5d:6991:: with SMTP id g17mr32087677wru.253.1628609387323; 
 Tue, 10 Aug 2021 08:29:47 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id f15sm22848219wrp.12.2021.08.10.08.29.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Aug 2021 08:29:46 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 10 Aug 2021 18:29:20 +0300
Message-Id: <20210810152933.178325-3-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210810152933.178325-1-razor@blackwall.org>
References: <20210810152933.178325-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 02/15] net: bridge: vlan: add support for
	mcast last member count global option
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

Add support to change and retrieve global vlan multicast last member
count option.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 include/uapi/linux/if_bridge.h |  1 +
 net/bridge/br_private.h        |  2 ++
 net/bridge/br_vlan_options.c   | 13 ++++++++++++-
 3 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 07acfcc0466c..68099c6bc186 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -551,6 +551,7 @@ enum {
 	BRIDGE_VLANDB_GOPTS_MCAST_SNOOPING,
 	BRIDGE_VLANDB_GOPTS_MCAST_IGMP_VERSION,
 	BRIDGE_VLANDB_GOPTS_MCAST_MLD_VERSION,
+	BRIDGE_VLANDB_GOPTS_MCAST_LAST_MEMBER_CNT,
 	__BRIDGE_VLANDB_GOPTS_MAX
 };
 #define BRIDGE_VLANDB_GOPTS_MAX (__BRIDGE_VLANDB_GOPTS_MAX - 1)
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 1cc00d2f9156..ca88609c51b7 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1187,6 +1187,8 @@ br_multicast_ctx_options_equal(const struct net_bridge_mcast *brmctx1,
 {
 	return brmctx1->multicast_igmp_version ==
 	       brmctx2->multicast_igmp_version &&
+	       brmctx1->multicast_last_member_count ==
+	       brmctx2->multicast_last_member_count &&
 #if IS_ENABLED(CONFIG_IPV6)
 	       brmctx1->multicast_mld_version ==
 	       brmctx2->multicast_mld_version &&
diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
index ac32fb40b7ba..75733b5bc6f4 100644
--- a/net/bridge/br_vlan_options.c
+++ b/net/bridge/br_vlan_options.c
@@ -289,7 +289,9 @@ bool br_vlan_global_opts_fill(struct sk_buff *skb, u16 vid, u16 vid_range,
 	if (nla_put_u8(skb, BRIDGE_VLANDB_GOPTS_MCAST_SNOOPING,
 		       !!(v_opts->priv_flags & BR_VLFLAG_GLOBAL_MCAST_ENABLED)) ||
 	    nla_put_u8(skb, BRIDGE_VLANDB_GOPTS_MCAST_IGMP_VERSION,
-		       v_opts->br_mcast_ctx.multicast_igmp_version))
+		       v_opts->br_mcast_ctx.multicast_igmp_version) ||
+	    nla_put_u32(skb, BRIDGE_VLANDB_GOPTS_MCAST_LAST_MEMBER_CNT,
+			v_opts->br_mcast_ctx.multicast_last_member_count))
 		goto out_err;
 
 #if IS_ENABLED(CONFIG_IPV6)
@@ -317,6 +319,7 @@ static size_t rtnl_vlan_global_opts_nlmsg_size(void)
 		+ nla_total_size(sizeof(u8)) /* BRIDGE_VLANDB_GOPTS_MCAST_SNOOPING */
 		+ nla_total_size(sizeof(u8)) /* BRIDGE_VLANDB_GOPTS_MCAST_IGMP_VERSION */
 		+ nla_total_size(sizeof(u8)) /* BRIDGE_VLANDB_GOPTS_MCAST_MLD_VERSION */
+		+ nla_total_size(sizeof(u32)) /* BRIDGE_VLANDB_GOPTS_MCAST_LAST_MEMBER_CNT */
 #endif
 		+ nla_total_size(sizeof(u16)); /* BRIDGE_VLANDB_GOPTS_RANGE */
 }
@@ -391,6 +394,13 @@ static int br_vlan_process_global_one_opts(const struct net_bridge *br,
 			return err;
 		*changed = true;
 	}
+	if (tb[BRIDGE_VLANDB_GOPTS_MCAST_LAST_MEMBER_CNT]) {
+		u32 cnt;
+
+		cnt = nla_get_u32(tb[BRIDGE_VLANDB_GOPTS_MCAST_LAST_MEMBER_CNT]);
+		v->br_mcast_ctx.multicast_last_member_count = cnt;
+		*changed = true;
+	}
 #if IS_ENABLED(CONFIG_IPV6)
 	if (tb[BRIDGE_VLANDB_GOPTS_MCAST_MLD_VERSION]) {
 		u8 ver;
@@ -413,6 +423,7 @@ static const struct nla_policy br_vlan_db_gpol[BRIDGE_VLANDB_GOPTS_MAX + 1] = {
 	[BRIDGE_VLANDB_GOPTS_MCAST_SNOOPING]	= { .type = NLA_U8 },
 	[BRIDGE_VLANDB_GOPTS_MCAST_MLD_VERSION]	= { .type = NLA_U8 },
 	[BRIDGE_VLANDB_GOPTS_MCAST_IGMP_VERSION]	= { .type = NLA_U8 },
+	[BRIDGE_VLANDB_GOPTS_MCAST_LAST_MEMBER_CNT]	= { .type = NLA_U32 },
 };
 
 int br_vlan_rtm_process_global_options(struct net_device *dev,
-- 
2.31.1

