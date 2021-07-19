Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C97CC3CE73B
	for <lists.bridge@lfdr.de>; Mon, 19 Jul 2021 19:10:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DAC41837AC;
	Mon, 19 Jul 2021 17:10:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZlKWkmuW-Q2D; Mon, 19 Jul 2021 17:10:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id BC3E7837B6;
	Mon, 19 Jul 2021 17:10:11 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 772BBC0025;
	Mon, 19 Jul 2021 17:10:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0CB42C000E
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 17:10:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CF89C403CA
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 17:10:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jHDaJz6AM2D1 for <bridge@lists.linux-foundation.org>;
 Mon, 19 Jul 2021 17:10:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 516FA4030D
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 17:10:06 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id c17so29853399ejk.13
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 10:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fZz7pbaMFBXMMthY41Q8WXcS+BZF9NZr318RJ38DIsk=;
 b=yhsXLFla7f+RYUqMuSi67fHFv/I/NIox181f3t4PaOeMA4hR2IjEUrCjfyqH+WJT5M
 sllGYxNIOCqfaoB7fIO5dpmFHq/xrYip6StSRwUOtHXpBT7Q19ltG1H30GoU/QvgG7No
 xVtjXvMltMkxnyno9Tz3nuHHoA6tY7bJXGC0KLuxSVKvTL39DF8qFf4YOraieqIAqfez
 SAPhkbl/j4hKfhl/Zy3Px74M2pp6csBi35ShRGS40tveH9BXkkzS2rjNF5I8I2Jj853D
 0It0t90cFpvnlJX53YNLoWZIrFJw0m4TKax4IlHV/AKhtyl1kteizoNdnqjj9e91m2un
 CxXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fZz7pbaMFBXMMthY41Q8WXcS+BZF9NZr318RJ38DIsk=;
 b=BI+xIBTmVzuYca8oZ8RL1+L9WYIkYZyVDLOhfV4uNVgNpm8PPZhND6Nyr8YXz8dY/O
 KYtgbxU7E9gM/PXkA/oRDjCwV9mugx2FLKN4vLJij5c600+n2PQK82z6k5a+SjSIUrF5
 8Ea6lfUG7Y4/xtUH8zkXj8XYIRpVF2lv4V/zx4fTYcugw/LO6AKxCU2CBASKGju0s09n
 9G8NLbFk6wMjGELdWYwsDV9xugpS0GzeODC3jGDvYduMQpTMFGjHoLXDYlZV/AuMmLpj
 MgOHlY0FVNdBmk1tLsmANcEWttJ7szg7whjLuTKGzFoE5++MU/l6cpT+RAsKqzcvvbaW
 Y1tw==
X-Gm-Message-State: AOAM532fGBRR/bSsw3QpQ91aOlfM9Plb9mfA+Hg3JDOlq+HLY524mZ9P
 Vi7DpJtLG0uS8ayCv5pIkMg2fw==
X-Google-Smtp-Source: ABdhPJwlPD9prqAhy84rIzgV4ClGf/UkQez1Xn5Ho2M/obGixL/BaeOQG2pyEYpj1y2PIK2FVZXiFw==
X-Received: by 2002:a17:906:6814:: with SMTP id
 k20mr28028206ejr.381.1626714604410; 
 Mon, 19 Jul 2021 10:10:04 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id nc29sm6073896ejc.10.2021.07.19.10.10.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Jul 2021 10:10:03 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 19 Jul 2021 20:06:30 +0300
Message-Id: <20210719170637.435541-9-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210719170637.435541-1-razor@blackwall.org>
References: <20210719170637.435541-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 08/15] net: bridge: multicast: use the
	port group to port context helper
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

We need to use the new port group to port context helper in places where
we cannot pass down the proper context (i.e. functions that can be
called by timers or outside the packet snooping paths).

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 353406f2971a..e61e23c0ce17 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -309,7 +309,9 @@ void br_multicast_star_g_handle_mode(struct net_bridge_port_group *pg,
 	mp = br_mdb_ip_get(br, &pg->key.addr);
 	if (!mp)
 		return;
-	pmctx = &pg->key.port->multicast_ctx;
+	pmctx = br_multicast_pg_to_port_ctx(pg);
+	if (!pmctx)
+		return;
 
 	memset(&sg_ip, 0, sizeof(sg_ip));
 	sg_ip = pg->key.addr;
@@ -435,7 +437,6 @@ void br_multicast_sg_add_exclude_ports(struct net_bridge_mdb_entry *star_mp,
 	br_multicast_sg_host_state(star_mp, sg);
 	memset(&sg_key, 0, sizeof(sg_key));
 	sg_key.addr = sg->key.addr;
-	brmctx = &br->multicast_ctx;
 	/* we need to add all exclude ports to the S,G */
 	for (pg = mlock_dereference(star_mp->ports, br);
 	     pg;
@@ -449,7 +450,11 @@ void br_multicast_sg_add_exclude_ports(struct net_bridge_mdb_entry *star_mp,
 		if (br_sg_port_find(br, &sg_key))
 			continue;
 
-		pmctx = &pg->key.port->multicast_ctx;
+		pmctx = br_multicast_pg_to_port_ctx(pg);
+		if (!pmctx)
+			continue;
+		brmctx = br_multicast_port_ctx_get_global(pmctx);
+
 		src_pg = __br_multicast_add_group(brmctx, pmctx,
 						  &sg->key.addr,
 						  sg->eth_addr,
@@ -473,7 +478,9 @@ static void br_multicast_fwd_src_add(struct net_bridge_group_src *src)
 		return;
 
 	memset(&sg_ip, 0, sizeof(sg_ip));
-	pmctx = &src->pg->key.port->multicast_ctx;
+	pmctx = br_multicast_pg_to_port_ctx(src->pg);
+	if (!pmctx)
+		return;
 	brmctx = br_multicast_port_ctx_get_global(pmctx);
 	sg_ip = src->pg->key.addr;
 	sg_ip.src = src->addr.src;
@@ -1696,8 +1703,10 @@ static void br_multicast_port_group_rexmit(struct timer_list *t)
 	    !br_opt_get(br, BROPT_MULTICAST_QUERIER))
 		goto out;
 
-	brmctx = &br->multicast_ctx;
-	pmctx = &pg->key.port->multicast_ctx;
+	pmctx = br_multicast_pg_to_port_ctx(pg);
+	if (!pmctx)
+		goto out;
+	brmctx = br_multicast_port_ctx_get_global(pmctx);
 	if (pg->key.addr.proto == htons(ETH_P_IP))
 		other_query = &brmctx->ip4_other_query;
 #if IS_ENABLED(CONFIG_IPV6)
-- 
2.31.1

