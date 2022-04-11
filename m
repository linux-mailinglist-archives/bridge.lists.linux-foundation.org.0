Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8684FC36E
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 19:30:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C5F9140144;
	Mon, 11 Apr 2022 17:30:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5H6Tcxmvg5yY; Mon, 11 Apr 2022 17:30:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 420EB40A9B;
	Mon, 11 Apr 2022 17:30:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 66452C0033;
	Mon, 11 Apr 2022 17:30:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3D582C002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:30:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2BC1140144
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:30:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yw9EYdSaXGuF for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 17:30:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7154B40629
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:30:05 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id k23so32328495ejd.3
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 10:30:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4pZGl1wOEf7Qv3VZG+DB1PDq+c4kDTX/aMWvmPeV+KQ=;
 b=I1YA9Xc9lyeZ5hUtEQiOREQlD9bTjb3CHHxPkiPiQvv4qw+JwijFa5Vr/qe15UrGsG
 5FQoTiFLJbSlhqkLxpYhrMvsPvPS8w1vlzqL+irD+AiTXGh86sRtefkoodiAhtAkyjms
 QBIaLOGMPgm4w36JTiKn2+vP7TH//56RMuBQ7fi7Clcj7DQB/l3wY5+iWQqqUmyXR+qC
 Hr76h5BVPnPmrmwGHHv3Nh7ZLTzK4ILrQnROOj+UtxfGBmytXdlUeo649vdOs243b16z
 6qsdIshaoFwM8jUYdy15jGX15FObz8C352chK99eDFH5iCBZWx7qX/zS22x2mfkjMNKh
 NQLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4pZGl1wOEf7Qv3VZG+DB1PDq+c4kDTX/aMWvmPeV+KQ=;
 b=bc4l2d19yxHjEEbIxafLHBbb2sk5TbZi8k7/x07g3EK/Zl1hdziFN22sVhbzTO2A1V
 9MIFg7Hd0HPb5evSvWEikiFgIlELZM0OEGj3a8IzbF7ugCxnP3V4Bl3CbxXcXh48gSCJ
 C+1u+Nq9Zez5aUZX3gSBy0Jd5Ch4cbIfDDckREMn431sIF8NZA0855+Ih2rXL701aY6h
 GbBHaRjxF3PSeciQeFXkjH7TUsXigGJAm67JzA0WaXvzUMin/fJGuG7Y/OmyooZfuN9E
 1L7qNZ93HLZySSYabWbWMlJ2lddbjc7VsgjZqTt+52kvr15CXcGdggwiFrRjpKUNKEFg
 f6gA==
X-Gm-Message-State: AOAM5308kcXH7YCIeKNgFabTqA8SMyONEpZxCTSq/cuizmWjIeYKG3M3
 wGGYzeI9NPHf0hq8Kp1pwvxQ8A==
X-Google-Smtp-Source: ABdhPJy+tAX6NtjZxMVDpD+T1GIkuvjN+DnrXDB7NMxQULs1GKLE6sZ49HWkT+IP1gCHrD0WmnzW5g==
X-Received: by 2002:a17:907:3f86:b0:6db:b745:f761 with SMTP id
 hr6-20020a1709073f8600b006dbb745f761mr30264401ejc.610.1649698203595; 
 Mon, 11 Apr 2022 10:30:03 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 u6-20020a17090626c600b006e74ef7f092sm10325084ejc.176.2022.04.11.10.30.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 10:30:03 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 11 Apr 2022 20:29:33 +0300
Message-Id: <20220411172934.1813604-8-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220411172934.1813604-1-razor@blackwall.org>
References: <20220411172934.1813604-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 7/8] net: bridge: fdb: add support for
	flush filtering based on ndm flags and state
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

Add support for fdb flush filtering based on ndm flags and state. NDM
state and flags are mapped to bridge-specific flags and matched
according to the specified masks. NTF_USE is used to represent
added_by_user flag since it sets it on fdb add and we don't have a 1:1
mapping for it. Only allowed bits can be set, NTF_USE and NTF_MASTER are
ignored.

Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
v2: ignore NTF_USE/NTF_MASTER and reject unknown flags

 net/bridge/br_fdb.c     | 58 ++++++++++++++++++++++++++++++++++++++---
 net/bridge/br_private.h |  5 ++++
 2 files changed, 60 insertions(+), 3 deletions(-)

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 045eb61e833e..2cea03cbc55f 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -594,13 +594,40 @@ void __br_fdb_flush(struct net_bridge *br,
 	rcu_read_unlock();
 }
 
+static unsigned long __ndm_state_to_fdb_flags(u16 ndm_state)
+{
+	unsigned long flags = 0;
+
+	if (ndm_state & NUD_PERMANENT)
+		__set_bit(BR_FDB_LOCAL, &flags);
+	if (ndm_state & NUD_NOARP)
+		__set_bit(BR_FDB_STATIC, &flags);
+
+	return flags;
+}
+
+static unsigned long __ndm_flags_to_fdb_flags(u8 ndm_flags)
+{
+	unsigned long flags = 0;
+
+	if (ndm_flags & NTF_USE)
+		__set_bit(BR_FDB_ADDED_BY_USER, &flags);
+	if (ndm_flags & NTF_EXT_LEARNED)
+		__set_bit(BR_FDB_ADDED_BY_EXT_LEARN, &flags);
+	if (ndm_flags & NTF_OFFLOADED)
+		__set_bit(BR_FDB_OFFLOADED, &flags);
+	if (ndm_flags & NTF_STICKY)
+		__set_bit(BR_FDB_STICKY, &flags);
+
+	return flags;
+}
+
 int br_fdb_flush(struct ndmsg *ndm, struct nlattr *tb[],
 		 struct net_device *dev, u16 vid,
 		 struct netlink_ext_ack *extack)
 {
-	struct net_bridge_fdb_flush_desc desc = {
-		.flags_mask = BR_FDB_STATIC
-	};
+	u8 ndm_flags = ndm->ndm_flags & ~FDB_FLUSH_IGNORED_NDM_FLAGS;
+	struct net_bridge_fdb_flush_desc desc = {};
 	struct net_bridge *br;
 
 	if (netif_is_bridge_master(dev)) {
@@ -615,6 +642,31 @@ int br_fdb_flush(struct ndmsg *ndm, struct nlattr *tb[],
 		br = p->br;
 	}
 
+	if (ndm_flags & ~FDB_FLUSH_ALLOWED_NDM_FLAGS) {
+		NL_SET_ERR_MSG(extack, "Unsupported fdb flush ndm flag bits set");
+		return -EINVAL;
+	}
+	if (ndm->ndm_state & ~FDB_FLUSH_ALLOWED_NDM_STATES) {
+		NL_SET_ERR_MSG(extack, "Unsupported fdb flush ndm state bits set");
+		return -EINVAL;
+	}
+
+	desc.flags |= __ndm_state_to_fdb_flags(ndm->ndm_state);
+	desc.flags |= __ndm_flags_to_fdb_flags(ndm_flags);
+	if (tb[NDFA_NDM_STATE_MASK]) {
+		u16 ndm_state_mask = nla_get_u16(tb[NDFA_NDM_STATE_MASK]);
+
+		desc.flags_mask |= __ndm_state_to_fdb_flags(ndm_state_mask);
+	}
+	if (tb[NDFA_NDM_FLAGS_MASK]) {
+		u8 ndm_flags_mask = nla_get_u8(tb[NDFA_NDM_FLAGS_MASK]);
+
+		desc.flags_mask |= __ndm_flags_to_fdb_flags(ndm_flags_mask);
+	}
+
+	br_debug(br, "flushing port ifindex: %d vlan id: %u flags: 0x%lx flags mask: 0x%lx\n",
+		 desc.port_ifindex, desc.vlan_id, desc.flags, desc.flags_mask);
+
 	__br_fdb_flush(br, &desc);
 
 	return 0;
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 9fb9abdbd3f4..fd5cbd00e12d 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -762,6 +762,11 @@ static inline void br_netpoll_disable(struct net_bridge_port *p)
 #endif
 
 /* br_fdb.c */
+#define FDB_FLUSH_IGNORED_NDM_FLAGS (NTF_MASTER | NTF_SELF)
+#define FDB_FLUSH_ALLOWED_NDM_STATES (NUD_PERMANENT | NUD_NOARP)
+#define FDB_FLUSH_ALLOWED_NDM_FLAGS (NTF_USE | NTF_EXT_LEARNED | \
+				     NTF_STICKY | NTF_OFFLOADED)
+
 int br_fdb_init(void);
 void br_fdb_fini(void);
 int br_fdb_hash_init(struct net_bridge *br);
-- 
2.35.1

