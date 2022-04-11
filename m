Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB11D4FBD53
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 15:39:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 754AA40A7A;
	Mon, 11 Apr 2022 13:38:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mbZABMxngECS; Mon, 11 Apr 2022 13:38:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id F017940A77;
	Mon, 11 Apr 2022 13:38:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C3A1AC0084;
	Mon, 11 Apr 2022 13:38:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3D616C002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 13:38:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1E31A81CD0
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 13:38:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BdpDtHKFcA7C for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 13:38:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3F58981CA5
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 13:38:55 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id bq30so13931835lfb.3
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 06:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=WN01e0l1+WdxQJa+iowT/x59ccthHRPG+MX9yqwnNBA=;
 b=k6eQUW56l8UrIWz2VghKJwhoP+InVqCMGkWpqHj8IB5vnlckcn1NfXqeDIn++xGzlB
 TZpLNsGKadS121SKMl1/k7fKlFEG8nt1DuoJyoovAJ4f16DqP+RGMaqdt9BCzUmJaNj/
 +PFK+YGtiPdrBSE//1i+jCmxh6PUDJcj0lps/RZsXNS8R3lWzTWXmB8CK8G+j5ylrI9N
 E4NMTCIFy70mWuO4uo4gQFAZgjKKBPfKBiGA5ZHWieT6Tg7ncfYvtUPJWIv09VaCCNSO
 ek/MIL8VLbZaIbMON+6Q3Iw2BXmg1QF5zg1J0MHa2v7Cx+iFzYL2FzrNP9mbYxMNgZAp
 Jtaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=WN01e0l1+WdxQJa+iowT/x59ccthHRPG+MX9yqwnNBA=;
 b=jZFOtgVGsaSUi/ixn5oQAy3MuLQUvT4Cz+HjYbOVHVfMmGbt/soRPR4IbbNgJy3RQH
 Jf5nJ/yKViBfBpdMA2j+J2Bqlxe+rqEluUAfhecXJdrwZrugllBylRWadUtvdM0wAuzq
 T9kHFtMNnEeRhEwG3KF16aIzrXZmU1n2TNJkgKR0wGsLOyhC+LDzMELuw8Ozz1PSDrbK
 XSppVHdMAVq7VEJQcebEiohMbQ7MNqcvBJ4jcx0bEj9lljVTldE071Fw6a07MC0oRE4D
 etZAPV125aFkbjIsIGoixSOSXhIrLix/lgxIr79plxDWhMe4ZoFBvOyfdDdK/TZ+6woF
 EOtw==
X-Gm-Message-State: AOAM533wGiBdrrEO3xEfDL+tLQCmokzHYuyKmqufU5VgvGREpxE0yKcj
 qf1x/s+862vh+9iTzSRKl8s=
X-Google-Smtp-Source: ABdhPJxL1DL50hKc+7ns26+XXgUelg2bDzOAYxg04ol0LvoKPy/1y7xh9WY/lhwoxpLiyuj+09tBTg==
X-Received: by 2002:a05:6512:3046:b0:44b:121:4541 with SMTP id
 b6-20020a056512304600b0044b01214541mr21189810lfb.313.1649684333105; 
 Mon, 11 Apr 2022 06:38:53 -0700 (PDT)
Received: from wbg.labs.westermo.se (h-158-174-22-128.NA.cust.bahnhof.se.
 [158.174.22.128]) by smtp.gmail.com with ESMTPSA id
 p12-20020a056512138c00b0044833f1cd85sm3336847lfa.62.2022.04.11.06.38.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 06:38:52 -0700 (PDT)
From: Joachim Wiberg <troglobit@gmail.com>
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>
Date: Mon, 11 Apr 2022 15:38:25 +0200
Message-Id: <20220411133837.318876-2-troglobit@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220411133837.318876-1-troglobit@gmail.com>
References: <20220411133837.318876-1-troglobit@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Joachim Wiberg <troglobit@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: [Bridge] [PATCH RFC net-next 01/13] net: bridge: add control of bum
	flooding to bridge itself
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

The bridge itself is also a port, but unfortunately it does not (yet)
have a 'struct net_bridge_port'.  However, in many cases we want to
treat it as a proper port so concessions have been made, e.g., NULL
port or host_joined attributes.

This patch is an attempt to more of the same by adding support for
controlling flooding of unknown broadcast/unicast/multicast to the
bridge.  Something we often also want to control in an offloaded
switching fabric.

Signed-off-by: Joachim Wiberg <troglobit@gmail.com>
---
 net/bridge/br_device.c  |  4 ++++
 net/bridge/br_input.c   | 11 ++++++++---
 net/bridge/br_private.h |  3 +++
 3 files changed, 15 insertions(+), 3 deletions(-)

diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
index 8d6bab244c4a..0aa7d21ac82c 100644
--- a/net/bridge/br_device.c
+++ b/net/bridge/br_device.c
@@ -526,6 +526,10 @@ void br_dev_setup(struct net_device *dev)
 	br->bridge_ageing_time = br->ageing_time = BR_DEFAULT_AGEING_TIME;
 	dev->max_mtu = ETH_MAX_MTU;
 
+	br_opt_toggle(br, BROPT_UNICAST_FLOOD, 1);
+	br_opt_toggle(br, BROPT_MCAST_FLOOD, 1);
+	br_opt_toggle(br, BROPT_BCAST_FLOOD, 1);
+
 	br_netfilter_rtable_init(br);
 	br_stp_timer_init(br);
 	br_multicast_init(br);
diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index 196417859c4a..d439b876bdf5 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -118,7 +118,8 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 		/* by definition the broadcast is also a multicast address */
 		if (is_broadcast_ether_addr(eth_hdr(skb)->h_dest)) {
 			pkt_type = BR_PKT_BROADCAST;
-			local_rcv = true;
+			if (br_opt_get(br, BROPT_BCAST_FLOOD))
+				local_rcv = true;
 		} else {
 			pkt_type = BR_PKT_MULTICAST;
 			if (br_multicast_rcv(&brmctx, &pmctx, vlan, skb, vid))
@@ -161,12 +162,16 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 			}
 			mcast_hit = true;
 		} else {
-			local_rcv = true;
-			br->dev->stats.multicast++;
+			if (br_opt_get(br, BROPT_MCAST_FLOOD)) {
+				local_rcv = true;
+				br->dev->stats.multicast++;
+			}
 		}
 		break;
 	case BR_PKT_UNICAST:
 		dst = br_fdb_find_rcu(br, eth_hdr(skb)->h_dest, vid);
+		if (!dst && br_opt_get(br, BROPT_UNICAST_FLOOD))
+			local_rcv = true;
 		break;
 	default:
 		break;
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 18ccc3d5d296..683bd0ee4c64 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -449,6 +449,9 @@ enum net_bridge_opts {
 	BROPT_VLAN_BRIDGE_BINDING,
 	BROPT_MCAST_VLAN_SNOOPING_ENABLED,
 	BROPT_MST_ENABLED,
+	BROPT_UNICAST_FLOOD,
+	BROPT_MCAST_FLOOD,
+	BROPT_BCAST_FLOOD,
 };
 
 struct net_bridge {
-- 
2.25.1

