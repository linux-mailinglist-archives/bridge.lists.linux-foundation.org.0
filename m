Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF2B4D4829
	for <lists.bridge@lfdr.de>; Thu, 10 Mar 2022 14:36:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3D97418F4;
	Thu, 10 Mar 2022 13:36:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FyN_9eHuZD9Z; Thu, 10 Mar 2022 13:36:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 558B34186E;
	Thu, 10 Mar 2022 13:36:50 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 239EEC0070;
	Thu, 10 Mar 2022 13:36:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 01165C000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 13:36:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5B4B1817C3
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 13:36:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X6q2UZT32qx5 for <bridge@lists.linux-foundation.org>;
 Thu, 10 Mar 2022 13:36:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com
 [IPv6:2a00:1450:4864:20::22e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 02E1E84222
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 13:36:46 +0000 (UTC)
Received: by mail-lj1-x22e.google.com with SMTP id q5so7717892ljb.11
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 05:36:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=da086JP55rsZQrttnyPrbRnmSrzYkA4tf6FDeCXSGn8=;
 b=T3pCfhXKeJNPFF0Ywe6LZn1pHA44EqA9YxKjTmKKlVDrLjYJWDLgL/YgInvMe9CI4d
 y5cbZq+hAcb/sOWKO7QNrlYXygu0vvN3KPsUayvBLomowlmUFcNgmnLhY+rtiZeQnq2j
 F9pzKkWJn9jdtiWABNokozCAGPie45oFqMO1lWYIAC45t+ljL2JdnCVrC1MHBQeBFfyX
 ZLeIM1lduvNIlZQKqJpWEF3r2Bhjn7w2hCzgaHiD2pI/evOFLW2Y7drMW4pGtZ8/vYfR
 Fy3qoxitky7UGvbcRKDh+hR64MjZMKsy88AM+dZlr0WO99jsLbWBEtXP3vcl/XYKRpAy
 e3gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=da086JP55rsZQrttnyPrbRnmSrzYkA4tf6FDeCXSGn8=;
 b=8JrqWCO81nkGM0ryUZI5qX2ux+Jwp8H8iJmLzPTb8JSQ/XOrhvtYw8W9MdantlX6hA
 yKrqPqtI5foZyGCw4i2HNyM3sVDQhdlTCmnGgcJoHXc334TKjvvPX205rc/Kv7hYDEo5
 HuOknaD9z9l18G8ceugb2sDKfJcY7jhgHIxFUacO1a/n4ul4asOiZuuR7NHgpvr0UD4r
 51hwpkJ++NUZbKTeHtBpD+m4tCtP3kFQgj5XEqx3xYGzvfnIKHSp9zgcIrkI59d3sDW1
 hb1g4jPB0x3eul2eQkAdaN1nyLMyhFgcuL6/mkayj1OeSr3w96yFJSkmn/uqjTJlKKi5
 QFoA==
X-Gm-Message-State: AOAM530M6jLZe1LkUho6KD/wORd3/t+5X1s3rUre0cr2BBBrQaNEi6A6
 EGfiffy4+N6Q1jPjCTIBcdY=
X-Google-Smtp-Source: ABdhPJzMizES4JCUEafTa3GjIxPUTNg/1is32WNPQdEpeGG0FGKWVqDSV1WqeRRKdpXtSbUrHy47Ng==
X-Received: by 2002:a2e:b386:0:b0:249:1446:4ead with SMTP id
 f6-20020a2eb386000000b0024914464eadmr1057058lje.263.1646919404870; 
 Thu, 10 Mar 2022 05:36:44 -0800 (PST)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id
 i2-20020a05651c120200b00247d22bc318sm1060299lja.22.2022.03.10.05.36.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 05:36:44 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Thu, 10 Mar 2022 14:36:15 +0100
Message-Id: <20220310133617.575673-2-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220310133617.575673-1-schultz.hans+netdev@gmail.com>
References: <20220310133617.575673-1-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>, Roopa Prabhu <roopa@nvidia.com>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH iproute2-next 1/3] net: bridge: add fdb flag to
	extent locked port feature
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

Add an intermediate state for clients behind a locked port to allow for
possible opening of the port for said clients. This feature corresponds
to the Mac-Auth and MAC Authentication Bypass (MAB) named features. The
latter defined by Cisco.

Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
---
 include/uapi/linux/neighbour.h |  1 +
 net/bridge/br_fdb.c            |  6 ++++++
 net/bridge/br_input.c          | 11 ++++++++++-
 net/bridge/br_private.h        |  3 ++-
 4 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/include/uapi/linux/neighbour.h b/include/uapi/linux/neighbour.h
index db05fb55055e..83115a592d58 100644
--- a/include/uapi/linux/neighbour.h
+++ b/include/uapi/linux/neighbour.h
@@ -208,6 +208,7 @@ enum {
 	NFEA_UNSPEC,
 	NFEA_ACTIVITY_NOTIFY,
 	NFEA_DONT_REFRESH,
+	NFEA_LOCKED,
 	__NFEA_MAX
 };
 #define NFEA_MAX (__NFEA_MAX - 1)
diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 6ccda68bd473..396dcf3084cf 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -105,6 +105,7 @@ static int fdb_fill_info(struct sk_buff *skb, const struct net_bridge *br,
 	struct nda_cacheinfo ci;
 	struct nlmsghdr *nlh;
 	struct ndmsg *ndm;
+	u8 ext_flags = 0;
 
 	nlh = nlmsg_put(skb, portid, seq, type, sizeof(*ndm), flags);
 	if (nlh == NULL)
@@ -125,11 +126,16 @@ static int fdb_fill_info(struct sk_buff *skb, const struct net_bridge *br,
 		ndm->ndm_flags |= NTF_EXT_LEARNED;
 	if (test_bit(BR_FDB_STICKY, &fdb->flags))
 		ndm->ndm_flags |= NTF_STICKY;
+	if (test_bit(BR_FDB_ENTRY_LOCKED, &fdb->flags))
+		ext_flags |= 1 << NFEA_LOCKED;
 
 	if (nla_put(skb, NDA_LLADDR, ETH_ALEN, &fdb->key.addr))
 		goto nla_put_failure;
 	if (nla_put_u32(skb, NDA_MASTER, br->dev->ifindex))
 		goto nla_put_failure;
+	if (nla_put_u8(skb, NDA_FDB_EXT_ATTRS, ext_flags))
+		goto nla_put_failure;
+
 	ci.ndm_used	 = jiffies_to_clock_t(now - fdb->used);
 	ci.ndm_confirmed = 0;
 	ci.ndm_updated	 = jiffies_to_clock_t(now - fdb->updated);
diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index e0c13fcc50ed..897908484b18 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -75,6 +75,7 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 	struct net_bridge_mcast *brmctx;
 	struct net_bridge_vlan *vlan;
 	struct net_bridge *br;
+	unsigned long flags = 0;
 	u16 vid = 0;
 	u8 state;
 
@@ -94,8 +95,16 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 			br_fdb_find_rcu(br, eth_hdr(skb)->h_source, vid);
 
 		if (!fdb_src || READ_ONCE(fdb_src->dst) != p ||
-		    test_bit(BR_FDB_LOCAL, &fdb_src->flags))
+		    test_bit(BR_FDB_LOCAL, &fdb_src->flags)) {
+			if (!fdb_src) {
+				set_bit(BR_FDB_ENTRY_LOCKED, &flags);
+				br_fdb_update(br, p, eth_hdr(skb)->h_source, vid, flags);
+			}
 			goto drop;
+		} else {
+			if (test_bit(BR_FDB_ENTRY_LOCKED, &fdb_src->flags))
+				goto drop;
+		}
 	}
 
 	nbp_switchdev_frame_mark(p, skb);
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 48bc61ebc211..f5a0b68c4857 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -248,7 +248,8 @@ enum {
 	BR_FDB_ADDED_BY_EXT_LEARN,
 	BR_FDB_OFFLOADED,
 	BR_FDB_NOTIFY,
-	BR_FDB_NOTIFY_INACTIVE
+	BR_FDB_NOTIFY_INACTIVE,
+	BR_FDB_ENTRY_LOCKED,
 };
 
 struct net_bridge_fdb_key {
-- 
2.30.2

