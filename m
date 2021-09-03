Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B99313FFD33
	for <lists.bridge@lfdr.de>; Fri,  3 Sep 2021 11:34:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E1F44407C7;
	Fri,  3 Sep 2021 09:34:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DU9HOKHvyKjp; Fri,  3 Sep 2021 09:34:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 0B4B04251A;
	Fri,  3 Sep 2021 09:34:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B34AFC0022;
	Fri,  3 Sep 2021 09:34:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A15E3C000E
 for <bridge@lists.linux-foundation.org>; Fri,  3 Sep 2021 09:34:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 830ED61541
 for <bridge@lists.linux-foundation.org>; Fri,  3 Sep 2021 09:34:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nqm8VUGDZM9F for <bridge@lists.linux-foundation.org>;
 Fri,  3 Sep 2021 09:34:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4331D606CB
 for <bridge@lists.linux-foundation.org>; Fri,  3 Sep 2021 09:34:40 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id dm15so7144470edb.10
 for <bridge@lists.linux-foundation.org>; Fri, 03 Sep 2021 02:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aiR23CdvX/YW7ASJTZF8b+8Ds0NXrhmWhy57VeViwyo=;
 b=QLeBRmfebetUgt50tunwIMdWH6Xh1XJU9NxhzbFJAB/SEky4PZPW1vehsAR9QpJ1jd
 xnwHiEdsUpkVp20AXnOhuhqv4wrkuEjJUMej4dHJCqo87Bx5RtJ50Pnt35QfLSCW110V
 O6BT5W/I6LvhXGAadQUXekqC7NFdbPWz9lVQPpHVuoA0aJpWuoBz6Jd7GOm+epqC4AxX
 BzNWPn8aBkBPVwINR4Sk3omo8C/M1BzSgwWTODeAs0P52L0HMrc3Yz4637W0bbelGtZL
 LVCDk8IijuC90eH7mP8I5Yp5mCNT7b3nb8tFBQ/9QP6h/CqUf1mxAdjMfYpjFlRMLi4B
 oHCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aiR23CdvX/YW7ASJTZF8b+8Ds0NXrhmWhy57VeViwyo=;
 b=qxFcx1n28tqPZfem7tbt5RacnhL+FhizVuzaL8ZU6jowgab+ls3HVmfIM4AJgx56ex
 MSG83G8vbiSRic38zcddwnc7AlHsrSVbanvUkWFNRGOSv0+e1wtMWbEYUca3REuvA6t/
 cP6UtmUX3bAM3se2nWaudqbC9PWG5eJ/Dr4UOwSSSYumo5mqiuXD+WeV5YUdbZPMAf6V
 Ww1JyayQ6J7K/SabaAoo4EL3gX7bJaGeNOnduK8kOcGLcBe3fRH2mpHhYjNVrXKsrz50
 Mb4/gdpCGmkfgYxfZ3O7Oo7nUuPs6ySYpMa5FeHOXj6hgWvnQdpDjlN/gbmdUAfpkgN8
 ttSQ==
X-Gm-Message-State: AOAM532YzvpHtqf1XMoOWdwkEA6aeLO+DYY95CSRRnTvEOIPuJUQoQns
 hSOwaCZEQ6xWbBSCw6kF9tzxZQ==
X-Google-Smtp-Source: ABdhPJzGrUF6AYGm5GxlQiWgn7mYn1S8u6cNLXl+74+F+FMUItvxWJaejiL4PMudXeR6R8o86OePeQ==
X-Received: by 2002:aa7:c903:: with SMTP id b3mr3061137edt.23.1630661678298;
 Fri, 03 Sep 2021 02:34:38 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id ck4sm2586391edb.67.2021.09.03.02.34.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Sep 2021 02:34:37 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Fri,  3 Sep 2021 12:34:15 +0300
Message-Id: <20210903093415.1544837-1-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net] net: bridge: mcast: fix vlan port router
	deadlock
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

Before vlan/port mcast router support was added
br_multicast_set_port_router was used only with bh already disabled due
to the bridge port lock, but that is no longer the case and when it is
called to configure a vlan/port mcast router we can deadlock with the
timer, so always disable bh to make sure it can be called from contexts
with both enabled and disabled bh.

Fixes: 2796d846d74a ("net: bridge: vlan: convert mcast router global option to per-vlan entry")
Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 9231617a16e4..3523c8c7068f 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -4255,7 +4255,7 @@ int br_multicast_set_port_router(struct net_bridge_mcast_port *pmctx,
 	bool del = false;
 
 	brmctx = br_multicast_port_ctx_get_global(pmctx);
-	spin_lock(&brmctx->br->multicast_lock);
+	spin_lock_bh(&brmctx->br->multicast_lock);
 	if (pmctx->multicast_router == val) {
 		/* Refresh the temp router port timer */
 		if (pmctx->multicast_router == MDB_RTR_TYPE_TEMP) {
@@ -4305,7 +4305,7 @@ int br_multicast_set_port_router(struct net_bridge_mcast_port *pmctx,
 	}
 	err = 0;
 unlock:
-	spin_unlock(&brmctx->br->multicast_lock);
+	spin_unlock_bh(&brmctx->br->multicast_lock);
 
 	return err;
 }
-- 
2.31.1

