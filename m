Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF7C33C3E3
	for <lists.bridge@lfdr.de>; Mon, 15 Mar 2021 18:15:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 947F3835A6;
	Mon, 15 Mar 2021 17:15:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F8JmsqprMNGG; Mon, 15 Mar 2021 17:15:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E7CE834FE;
	Mon, 15 Mar 2021 17:15:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DB683C000C;
	Mon, 15 Mar 2021 17:15:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AB86DC0013
 for <bridge@lists.linux-foundation.org>; Mon, 15 Mar 2021 17:15:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8AE0E834D3
 for <bridge@lists.linux-foundation.org>; Mon, 15 Mar 2021 17:15:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O_HEKs7rBAJv for <bridge@lists.linux-foundation.org>;
 Mon, 15 Mar 2021 17:15:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8D646834C7
 for <bridge@lists.linux-foundation.org>; Mon, 15 Mar 2021 17:15:36 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id e19so67656721ejt.3
 for <bridge@lists.linux-foundation.org>; Mon, 15 Mar 2021 10:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/2Hp6zM1W+LZN6PtbeaytmNBZutIvxwrSMkcgkNRVFc=;
 b=y7/FYlZX0XlIs2bnp//8qtDAYl+ORuCg5XJWBd3TkwDtffTeiKnTvX9uf2FOjqP+wy
 6gnm9OvgBIlgcV0xVMl2tEwXsDyI78CDBhdyt0VAjt3UQIBcniYbpZKjaRF1DQR4xoZq
 PAfsPHYxM7PFkt9sNJRBm3+XiKIH3jGd9ag7z2qi8K++CHjBm/StoutTqEdsE4lZPoPy
 L62oxACq+mLhN4fQ00hQSXNNRxZMPQc6mTIWZyYUS11Ae7vaMsjMJOHOWkufm2JUBkyK
 WI1AloadLRrCNulh2DwwyEYd5twa4gN95TEWv8JtHULA0WtnFcIP+NSZEgWzdJP2BPhD
 SHzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/2Hp6zM1W+LZN6PtbeaytmNBZutIvxwrSMkcgkNRVFc=;
 b=rFNm4jLYeQUYkpdQpL/i1RFsq4CTY5RWIYIQsybcVbK2isVnzExnQv9+7996ybqm03
 G6sbVMtFKXqoRUJ2hR2ZUJypJpjM902xYHuZbAiBkyHEHNbs/lH4Lhq0D61lDQjOyH/T
 qHNo8QOyHV4tw6MvNplv/nCHhDCX82EK1kx4RJFF3cP7LgfFKyVm1jG1VUMWKz6poWDG
 v1+wi4T3oBG55Zon6GEvQha5tRbiDV64gzs9nIblcFdp7Sjkgi5fKMa0xfOmkbCpVV7F
 tdLgj8bDYrcdz4aP7t6RvVZM2cZ4R6cjxHhia5sT6WkMyuroJIEYsVCALj9ObEyxwbwe
 wSjg==
X-Gm-Message-State: AOAM5310hpyQklCkaEtnWjcgUVxdlrwUiZ3IK+Y4kIisie5yDUhN1uUY
 PvAtppN4X+slv09ZeeiEMRtAL+qBQt2cJMXK
X-Google-Smtp-Source: ABdhPJx2l0KqSx1w+S0TOdHg2bqxoN6O0tne4O3EuAYPJLCiKK4dbnFqmIDgWkYos9FjiQ+iRLh+/A==
X-Received: by 2002:a17:906:a3d1:: with SMTP id
 ca17mr25040975ejb.92.1615828534280; 
 Mon, 15 Mar 2021 10:15:34 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id b12sm8297369eds.94.2021.03.15.10.15.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:15:33 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 15 Mar 2021 19:13:41 +0200
Message-Id: <20210315171342.232809-2-razor@blackwall.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210315171342.232809-1-razor@blackwall.org>
References: <20210315171342.232809-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v2 1/2] net: bridge: mcast: remove
	unreachable EHT code
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

In the initial EHT versions there were common functions which handled
allow/block messages for both INCLUDE and EXCLUDE modes, but later they
were separated. It seems I've left some common code which cannot be
reached because the filter mode is checked before calling the respective
functions, i.e. the host filter is always in EXCLUDE mode when using
__eht_allow_excl() and __eht_block_excl() thus we can drop the host_excl
checks inside and simplify the code a bit.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast_eht.c | 57 +++++++++--------------------------
 1 file changed, 15 insertions(+), 42 deletions(-)

diff --git a/net/bridge/br_multicast_eht.c b/net/bridge/br_multicast_eht.c
index fea38b9a7268..982398e44658 100644
--- a/net/bridge/br_multicast_eht.c
+++ b/net/bridge/br_multicast_eht.c
@@ -522,31 +522,24 @@ static bool __eht_allow_excl(struct net_bridge_port_group *pg,
 			     u32 nsrcs,
 			     size_t addr_size)
 {
-	bool changed = false, host_excl = false;
 	union net_bridge_eht_addr eht_src_addr;
 	struct net_bridge_group_src *src_ent;
+	bool changed = false;
 	struct br_ip src_ip;
 	u32 src_idx;
 
-	host_excl = !!(br_multicast_eht_host_filter_mode(pg, h_addr) == MCAST_EXCLUDE);
 	memset(&eht_src_addr, 0, sizeof(eht_src_addr));
 	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
 		memcpy(&eht_src_addr, srcs + (src_idx * addr_size), addr_size);
-		if (!host_excl) {
-			br_multicast_create_eht_set_entry(pg, &eht_src_addr, h_addr,
-							  MCAST_INCLUDE,
-							  false);
-		} else {
-			if (!br_multicast_del_eht_set_entry(pg, &eht_src_addr,
-							    h_addr))
-				continue;
-			memcpy(&src_ip, srcs + (src_idx * addr_size), addr_size);
-			src_ent = br_multicast_find_group_src(pg, &src_ip);
-			if (!src_ent)
-				continue;
-			br_multicast_del_group_src(src_ent, true);
-			changed = true;
-		}
+		if (!br_multicast_del_eht_set_entry(pg, &eht_src_addr,
+						    h_addr))
+			continue;
+		memcpy(&src_ip, srcs + (src_idx * addr_size), addr_size);
+		src_ent = br_multicast_find_group_src(pg, &src_ip);
+		if (!src_ent)
+			continue;
+		br_multicast_del_group_src(src_ent, true);
+		changed = true;
 	}
 
 	return changed;
@@ -602,42 +595,22 @@ static bool __eht_block_incl(struct net_bridge_port_group *pg,
 	return changed;
 }
 
-static bool __eht_block_excl(struct net_bridge_port_group *pg,
+static void __eht_block_excl(struct net_bridge_port_group *pg,
 			     union net_bridge_eht_addr *h_addr,
 			     void *srcs,
 			     u32 nsrcs,
 			     size_t addr_size)
 {
-	bool changed = false, host_excl = false;
 	union net_bridge_eht_addr eht_src_addr;
-	struct net_bridge_group_src *src_ent;
-	struct br_ip src_ip;
 	u32 src_idx;
 
-	host_excl = !!(br_multicast_eht_host_filter_mode(pg, h_addr) == MCAST_EXCLUDE);
 	memset(&eht_src_addr, 0, sizeof(eht_src_addr));
-	memset(&src_ip, 0, sizeof(src_ip));
-	src_ip.proto = pg->key.addr.proto;
 	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
 		memcpy(&eht_src_addr, srcs + (src_idx * addr_size), addr_size);
-		if (host_excl) {
-			br_multicast_create_eht_set_entry(pg, &eht_src_addr, h_addr,
-							  MCAST_EXCLUDE,
-							  false);
-		} else {
-			if (!br_multicast_del_eht_set_entry(pg, &eht_src_addr,
-							    h_addr))
-				continue;
-			memcpy(&src_ip, srcs + (src_idx * addr_size), addr_size);
-			src_ent = br_multicast_find_group_src(pg, &src_ip);
-			if (!src_ent)
-				continue;
-			br_multicast_del_group_src(src_ent, true);
-			changed = true;
-		}
+		br_multicast_create_eht_set_entry(pg, &eht_src_addr, h_addr,
+						  MCAST_EXCLUDE,
+						  false);
 	}
-
-	return changed;
 }
 
 static bool br_multicast_eht_block(struct net_bridge_port_group *pg,
@@ -653,7 +626,7 @@ static bool br_multicast_eht_block(struct net_bridge_port_group *pg,
 		changed = __eht_block_incl(pg, h_addr, srcs, nsrcs, addr_size);
 		break;
 	case MCAST_EXCLUDE:
-		changed = __eht_block_excl(pg, h_addr, srcs, nsrcs, addr_size);
+		__eht_block_excl(pg, h_addr, srcs, nsrcs, addr_size);
 		break;
 	}
 
-- 
2.29.2

