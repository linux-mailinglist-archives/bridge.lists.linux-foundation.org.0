Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D323F2C5E
	for <lists.bridge@lfdr.de>; Fri, 20 Aug 2021 14:44:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0CC28613F7;
	Fri, 20 Aug 2021 12:44:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bKN-f-n6EbFa; Fri, 20 Aug 2021 12:44:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 9F851613E3;
	Fri, 20 Aug 2021 12:44:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 75EBCC0022;
	Fri, 20 Aug 2021 12:44:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 79163C000E
 for <bridge@lists.linux-foundation.org>; Fri, 20 Aug 2021 12:44:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6943940466
 for <bridge@lists.linux-foundation.org>; Fri, 20 Aug 2021 12:44:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sz8ZdkyhPZ88 for <bridge@lists.linux-foundation.org>;
 Fri, 20 Aug 2021 12:44:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3792E40433
 for <bridge@lists.linux-foundation.org>; Fri, 20 Aug 2021 12:44:01 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id bq25so19926356ejb.11
 for <bridge@lists.linux-foundation.org>; Fri, 20 Aug 2021 05:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n/xXaP86OQ6aA4f7HKy+IYr/tYhPkArpBKf71oj6eyQ=;
 b=zNZ4HP6eAol6yE1f8NAWaafWuSJFfWpnUTneQVp7A0KSybg/dhpotSQNQFEbnaodVG
 M7rro7r5iP8LrsayWdZs4mxBUY/SUA6c/LF1c12kVB88UPLQfHvfaWo3s53yzxpapvFU
 xhV49DM9DHJvfS7GfOQG84ITTnmPck/X0Wdyuav2vRwj91WtgH35TdpbOlfs7HYrUSq9
 /U5fk6lKcx9RuParIbMT+FsKrNrkq0h0qE23GaXb1V71N7BR0Qn7feU2mk/RLOyfM66q
 fGkR+KXnI5EHMjwSc9NQ+dAv3XCTClrh+ZqdVOc80FDUN/jssJiogye0Sp82HvahksJT
 ElQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n/xXaP86OQ6aA4f7HKy+IYr/tYhPkArpBKf71oj6eyQ=;
 b=OwT5L4kuQiS4mlr4Y0Ha/4QVvq7ujigPWpHC77Hks9zmeVQ61FOAb52HSv7AwmbEvE
 qx6Xr63S+BG9a6N3vhhXtOXyBsgVqaSk5BCWppbcC32v7PkMP3dwkglXwUF0szW4rW7a
 d8RJ7Gs/mSh4leUks4uUWGsSj+ClQhZAQv8aJv7roHsx50R3J7J577E1TgujN0ddIQJl
 oEBpTGTQYzPF4U2nO+H0hzfo7SDCuTAPmamX1g36Td34gyRWLb0vNVyhbi23K2ht0/qY
 au0cp3Uke1dVJcQL7Dk/u72Bj+r0RLW99nk8d4gE4N3mP+9SisrgsUwylURv2eVdeXjC
 KGWw==
X-Gm-Message-State: AOAM531V3yeCSZb8g+9jg2ZuMYsxFHdpB7j1OYlx4Ta1gu5/X6fjFXcJ
 pHl7DolEWchKF4SyMXI+1Cnerw==
X-Google-Smtp-Source: ABdhPJzlHED3LAOKishrI0nK19ZMu7umSZkvh2288oAvIfP79r2VOW15/AG0NitVHtL+Kkuepop2/w==
X-Received: by 2002:a17:906:b08e:: with SMTP id
 x14mr21098410ejy.40.1629463439344; 
 Fri, 20 Aug 2021 05:43:59 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id ci19sm676627ejc.109.2021.08.20.05.43.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Aug 2021 05:43:58 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Fri, 20 Aug 2021 15:42:54 +0300
Message-Id: <20210820124255.1465672-2-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210820124255.1465672-1-razor@blackwall.org>
References: <20210820124255.1465672-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 1/2] net: bridge: mcast:
	br_multicast_set_port_router takes multicast context as argument
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

Change br_multicast_set_port_router to take port multicast context as
its first argument so we can later use it to control port/vlan mcast
router option.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast.c | 11 ++++++-----
 net/bridge/br_netlink.c   |  3 ++-
 net/bridge/br_private.h   |  3 ++-
 net/bridge/br_sysfs_if.c  |  2 +-
 4 files changed, 11 insertions(+), 8 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 16e686f5b9e9..be9d1376e249 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -4246,15 +4246,16 @@ br_multicast_rport_del_notify(struct net_bridge_mcast_port *pmctx, bool deleted)
 		pmctx->multicast_router = MDB_RTR_TYPE_TEMP_QUERY;
 }
 
-int br_multicast_set_port_router(struct net_bridge_port *p, unsigned long val)
+int br_multicast_set_port_router(struct net_bridge_mcast_port *pmctx,
+				 unsigned long val)
 {
-	struct net_bridge_mcast *brmctx = &p->br->multicast_ctx;
-	struct net_bridge_mcast_port *pmctx = &p->multicast_ctx;
+	struct net_bridge_mcast *brmctx;
 	unsigned long now = jiffies;
 	int err = -EINVAL;
 	bool del = false;
 
-	spin_lock(&p->br->multicast_lock);
+	brmctx = br_multicast_port_ctx_get_global(pmctx);
+	spin_lock(&brmctx->br->multicast_lock);
 	if (pmctx->multicast_router == val) {
 		/* Refresh the temp router port timer */
 		if (pmctx->multicast_router == MDB_RTR_TYPE_TEMP) {
@@ -4304,7 +4305,7 @@ int br_multicast_set_port_router(struct net_bridge_port *p, unsigned long val)
 	}
 	err = 0;
 unlock:
-	spin_unlock(&p->br->multicast_lock);
+	spin_unlock(&brmctx->br->multicast_lock);
 
 	return err;
 }
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 2f184ad8ae29..6c58fc14d2cb 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -932,7 +932,8 @@ static int br_setport(struct net_bridge_port *p, struct nlattr *tb[],
 	if (tb[IFLA_BRPORT_MULTICAST_ROUTER]) {
 		u8 mcast_router = nla_get_u8(tb[IFLA_BRPORT_MULTICAST_ROUTER]);
 
-		err = br_multicast_set_port_router(p, mcast_router);
+		err = br_multicast_set_port_router(&p->multicast_ctx,
+						   mcast_router);
 		if (err)
 			return err;
 	}
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 21b292eb2b3e..fcc0fcf44a95 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -879,7 +879,8 @@ void br_multicast_flood(struct net_bridge_mdb_entry *mdst, struct sk_buff *skb,
 			struct net_bridge_mcast *brmctx,
 			bool local_rcv, bool local_orig);
 int br_multicast_set_router(struct net_bridge_mcast *brmctx, unsigned long val);
-int br_multicast_set_port_router(struct net_bridge_port *p, unsigned long val);
+int br_multicast_set_port_router(struct net_bridge_mcast_port *pmctx,
+				 unsigned long val);
 int br_multicast_toggle(struct net_bridge *br, unsigned long val,
 			struct netlink_ext_ack *extack);
 int br_multicast_set_querier(struct net_bridge_mcast *brmctx, unsigned long val);
diff --git a/net/bridge/br_sysfs_if.c b/net/bridge/br_sysfs_if.c
index e9e3aedd3178..07fa76080512 100644
--- a/net/bridge/br_sysfs_if.c
+++ b/net/bridge/br_sysfs_if.c
@@ -250,7 +250,7 @@ static ssize_t show_multicast_router(struct net_bridge_port *p, char *buf)
 static int store_multicast_router(struct net_bridge_port *p,
 				      unsigned long v)
 {
-	return br_multicast_set_port_router(p, v);
+	return br_multicast_set_port_router(&p->multicast_ctx, v);
 }
 static BRPORT_ATTR(multicast_router, 0644, show_multicast_router,
 		   store_multicast_router);
-- 
2.31.1

