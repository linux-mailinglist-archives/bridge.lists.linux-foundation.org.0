Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E4C308895
	for <lists.bridge@lfdr.de>; Fri, 29 Jan 2021 12:52:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C78CF27256;
	Fri, 29 Jan 2021 11:51:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XuQRaCQHX3Hb; Fri, 29 Jan 2021 11:51:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 56D7C2725F;
	Fri, 29 Jan 2021 11:51:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3AB89C08A1;
	Fri, 29 Jan 2021 11:51:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 00AB9C08A1
 for <bridge@lists.linux-foundation.org>; Fri, 29 Jan 2021 11:51:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EFE67869D9
 for <bridge@lists.linux-foundation.org>; Fri, 29 Jan 2021 11:51:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i35yg0ctbjJb for <bridge@lists.linux-foundation.org>;
 Fri, 29 Jan 2021 11:51:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com
 [209.85.218.53])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C7247869FE
 for <bridge@lists.linux-foundation.org>; Fri, 29 Jan 2021 11:51:53 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id rv9so12525995ejb.13
 for <bridge@lists.linux-foundation.org>; Fri, 29 Jan 2021 03:51:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=W+AoUXtDRqmvCnzMPgUsFve3ZW9qFjze1BaacgAckyQ=;
 b=rP7bBBZ1y4rd4WfGTlIm+GisET+CW5rLxqmHCokDkYwVzZePgFY5fSj9316v4KKNjm
 51gkDjnuaT5LGRN1GJvODnoLAKomScvIzrnLbLJx1EJE194d7fTqkcnJNXw8Y8z2LTwy
 no0BDxl/TyxRwRrijqB1yR1srEqxWMNc11ILC3jy0ZhIBSSlxCkZlA4pirKFaEpwio4f
 F9J3iwWXddGMsyBiudQkShN9NUn2aihtJcyaDuDNJBU6LdMf3+oBbN18enZqq8P14wDI
 PS5uwcBTI2iXYsw9bIeSNeqct/vK1Lc9czduDJs8WlignzTUGeMsFM+Dto8k7Ix4vMf3
 xMcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W+AoUXtDRqmvCnzMPgUsFve3ZW9qFjze1BaacgAckyQ=;
 b=sg4D8kHRQ7fm2y3jCEZeUYBNHlHkUovH/R+vGYw1Vqulu12z7QL0C4emkrhpTIi36k
 8G3ukdGZMY7s07I+XTS1vuO0mF6BQ5edf9YyiNztCwBr7doGicxMBSU09AGBJrL76ow3
 m1YD248zfxrReKRME3o9MBCsePPF5qCWVtT0aMyUqxfGyLItx/kvtazqGvxMSUPmFYzv
 cO6saKXU1yVzPnFX52JaZ8cwvoSZItNPtm666txY+p4INN+TS1tOxg9F9a9hAcOub5jF
 tjNIuesIgmIiX9XN0cSrMTooHtyzBPHjwQw9AitIQ9RuPwuOX/j/5AT6FJAz2DK8rTAd
 8mpg==
X-Gm-Message-State: AOAM53157oa81wvQ/Z5cZX3EipH4Hc/9UzVjgvEhFWxHgogl9jcdoUGB
 vGkLbbCwyqcaePPDVFjw1OTzBg==
X-Google-Smtp-Source: ABdhPJzykpfYOLoKVtG9t7sWcnMN1AImUAoa606abQ+tJgkMFwGfZATd223/UpA9Rsa3lfVzGrVzFg==
X-Received: by 2002:a17:907:7255:: with SMTP id
 ds21mr4169186ejc.258.1611921112197; 
 Fri, 29 Jan 2021 03:51:52 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id u23sm4450130edt.87.2021.01.29.03.51.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Jan 2021 03:51:51 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Fri, 29 Jan 2021 13:51:41 +0200
Message-Id: <20210129115142.188455-2-razor@blackwall.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210129115142.188455-1-razor@blackwall.org>
References: <20210129115142.188455-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 1/2] net: bridge: mcast: drop hosts limit
	sysfs support
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

We decided to stop adding new sysfs bridge options and continue with
netlink only, so remove hosts limit sysfs support.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_sysfs_if.c | 26 --------------------------
 1 file changed, 26 deletions(-)

diff --git a/net/bridge/br_sysfs_if.c b/net/bridge/br_sysfs_if.c
index b66305fae26b..7a59cdddd3ce 100644
--- a/net/bridge/br_sysfs_if.c
+++ b/net/bridge/br_sysfs_if.c
@@ -16,7 +16,6 @@
 #include <linux/sched/signal.h>
 
 #include "br_private.h"
-#include "br_private_mcast_eht.h"
 
 struct brport_attribute {
 	struct attribute	attr;
@@ -246,29 +245,6 @@ static int store_multicast_router(struct net_bridge_port *p,
 static BRPORT_ATTR(multicast_router, 0644, show_multicast_router,
 		   store_multicast_router);
 
-static ssize_t show_multicast_eht_hosts_limit(struct net_bridge_port *p,
-					      char *buf)
-{
-	return sprintf(buf, "%u\n", p->multicast_eht_hosts_limit);
-}
-
-static int store_multicast_eht_hosts_limit(struct net_bridge_port *p,
-					   unsigned long v)
-{
-	return br_multicast_eht_set_hosts_limit(p, v);
-}
-static BRPORT_ATTR(multicast_eht_hosts_limit, 0644,
-		   show_multicast_eht_hosts_limit,
-		   store_multicast_eht_hosts_limit);
-
-static ssize_t show_multicast_eht_hosts_cnt(struct net_bridge_port *p,
-					    char *buf)
-{
-	return sprintf(buf, "%u\n", p->multicast_eht_hosts_cnt);
-}
-static BRPORT_ATTR(multicast_eht_hosts_cnt, 0444, show_multicast_eht_hosts_cnt,
-		   NULL);
-
 BRPORT_ATTR_FLAG(multicast_fast_leave, BR_MULTICAST_FAST_LEAVE);
 BRPORT_ATTR_FLAG(multicast_to_unicast, BR_MULTICAST_TO_UNICAST);
 #endif
@@ -298,8 +274,6 @@ static const struct brport_attribute *brport_attrs[] = {
 	&brport_attr_multicast_router,
 	&brport_attr_multicast_fast_leave,
 	&brport_attr_multicast_to_unicast,
-	&brport_attr_multicast_eht_hosts_limit,
-	&brport_attr_multicast_eht_hosts_cnt,
 #endif
 	&brport_attr_proxyarp,
 	&brport_attr_proxyarp_wifi,
-- 
2.29.2

