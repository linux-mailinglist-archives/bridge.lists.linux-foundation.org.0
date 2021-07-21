Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC703D106F
	for <lists.bridge@lfdr.de>; Wed, 21 Jul 2021 16:02:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BC6960899;
	Wed, 21 Jul 2021 14:02:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id axjgFyAu02Ej; Wed, 21 Jul 2021 14:02:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id A7DCA606F6;
	Wed, 21 Jul 2021 14:02:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1394BC000E;
	Wed, 21 Jul 2021 14:02:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1B262C001A
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jul 2021 14:02:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EEBF06067C
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jul 2021 14:02:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ntZ2h36tpfdo for <bridge@lists.linux-foundation.org>;
 Wed, 21 Jul 2021 14:02:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 363DA606F6
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jul 2021 14:02:40 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id ec55so2550494edb.1
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jul 2021 07:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LfptcPBAYX0XhZdNHSy9bCep6fygv+/dGc7yUbbpivY=;
 b=tPzfUROJpfPxtn5NDGuRsLr0LgX/7zCT7p3xJLZyn3uh+3WOwUSpPJJ/q1B6jKZ2ih
 vNOUeLRiLOUfVBaUjvw8fMtJDXgDfUyaT+DBst12kTsRkoFioi8BiBH0LSpYkVNBclW1
 ZJ0ZpdbUdv0cSHZHvHgs1C9WJnj4MBWREsneHrPFg4F4bYBxsUnfYg95JXAfrq67nKE1
 Ek/VPnGlT2T5TK6/zUFeT+WZZ2cHqiuNjOFsTtC0vo6Mo5YjywW0Z3UqPV1+SrFBuMHL
 4J6epLZZRO5+PQ/saO9eeQiS2f25Y7EM+ub5LStvSsQnVbGMhySMQFtiev50zRVR8E0h
 YNQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LfptcPBAYX0XhZdNHSy9bCep6fygv+/dGc7yUbbpivY=;
 b=pEuv8KZgnbLj7RKEqBXgTZhNYF33PAIi9wfAvlPsgd4j1kx5MVcRLVvYQ+u3gBBzI4
 utz3DmqO7/xRN75beSaD517hS2sWNuloFq6ziUIFJChacuj/J3aJYn3Sr8pakuX6w+To
 A8z51OMLQTQuwErjJR/VluiL1DCaB+7ZawklAPk4Vdat7GL5lMmcrkCg25NYj247RdLh
 FqoRIG/HriOGA0puIZ4H+nbgplXe8e6uClqj1r5elAnqfEWIInL3dfKAcugTI9/sRpWl
 UrZ8s7jMAOL7vhSpRoypPk42O6Pr+AYmAR05lyhR6vbi8JeKkpU/E51XWNLX9h+GGn6Y
 AR0A==
X-Gm-Message-State: AOAM533ftzwjQBEOohxTtc3ZC13F/fTkQPuYTV/fCzDqStJ1QwosK+LU
 Ui3X18duUE3h/PSGSo56pCfktA==
X-Google-Smtp-Source: ABdhPJxZXQrVmrNF5JExcv2srRYuC902Expj95CbBopvl0rNECDdB2m65ran5yLzVh3POG6EROrD1g==
X-Received: by 2002:a05:6402:1bc6:: with SMTP id
 ch6mr49123596edb.267.1626876158376; 
 Wed, 21 Jul 2021 07:02:38 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id f15sm8362925ejc.61.2021.07.21.07.02.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jul 2021 07:02:38 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Wed, 21 Jul 2021 17:01:27 +0300
Message-Id: <20210721140127.773194-3-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140127.773194-1-razor@blackwall.org>
References: <20210721140127.773194-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 2/2] net: bridge: multicast: add context
	support for host-joined groups
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

Adding bridge multicast context support for host-joined groups is easy
because we only need the proper timer value. We pass the already chosen
context and use its timer value.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_mdb.c       | 2 +-
 net/bridge/br_multicast.c | 8 ++++----
 net/bridge/br_private.h   | 3 ++-
 3 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 7b6c3b91d272..25d690b96cec 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -1105,7 +1105,7 @@ static int br_mdb_add_group(struct net_bridge *br, struct net_bridge_port *port,
 			return -EEXIST;
 		}
 
-		br_multicast_host_join(mp, false);
+		br_multicast_host_join(brmctx, mp, false);
 		br_mdb_notify(br->dev, mp, NULL, RTM_NEWMDB);
 
 		return 0;
diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 214d1bf854ad..470f1ec3b579 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1312,7 +1312,8 @@ struct net_bridge_port_group *br_multicast_new_port_group(
 	return p;
 }
 
-void br_multicast_host_join(struct net_bridge_mdb_entry *mp, bool notify)
+void br_multicast_host_join(const struct net_bridge_mcast *brmctx,
+			    struct net_bridge_mdb_entry *mp, bool notify)
 {
 	if (!mp->host_joined) {
 		mp->host_joined = true;
@@ -1325,8 +1326,7 @@ void br_multicast_host_join(struct net_bridge_mdb_entry *mp, bool notify)
 	if (br_group_is_l2(&mp->addr))
 		return;
 
-	mod_timer(&mp->timer,
-		  jiffies + mp->br->multicast_ctx.multicast_membership_interval);
+	mod_timer(&mp->timer, jiffies + brmctx->multicast_membership_interval);
 }
 
 void br_multicast_host_leave(struct net_bridge_mdb_entry *mp, bool notify)
@@ -1363,7 +1363,7 @@ __br_multicast_add_group(struct net_bridge_mcast *brmctx,
 		return ERR_CAST(mp);
 
 	if (!pmctx) {
-		br_multicast_host_join(mp, true);
+		br_multicast_host_join(brmctx, mp, true);
 		goto out;
 	}
 
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index af1f5c1c6b88..30fb56637049 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -900,7 +900,8 @@ void br_multicast_get_stats(const struct net_bridge *br,
 			    struct br_mcast_stats *dest);
 void br_mdb_init(void);
 void br_mdb_uninit(void);
-void br_multicast_host_join(struct net_bridge_mdb_entry *mp, bool notify);
+void br_multicast_host_join(const struct net_bridge_mcast *brmctx,
+			    struct net_bridge_mdb_entry *mp, bool notify);
 void br_multicast_host_leave(struct net_bridge_mdb_entry *mp, bool notify);
 void br_multicast_star_g_handle_mode(struct net_bridge_port_group *pg,
 				     u8 filter_mode);
-- 
2.31.1

