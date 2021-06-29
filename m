Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B86E3B73CC
	for <lists.bridge@lfdr.de>; Tue, 29 Jun 2021 16:07:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BA37B40399;
	Tue, 29 Jun 2021 14:07:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kJHKgRclxT9M; Tue, 29 Jun 2021 14:07:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 4F2074037D;
	Tue, 29 Jun 2021 14:07:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 22D74C0023;
	Tue, 29 Jun 2021 14:07:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 09274C0023
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DF5B1608A1
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JKmawyUqzAuV for <bridge@lists.linux-foundation.org>;
 Tue, 29 Jun 2021 14:07:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 05B7660692
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:19 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id i5so31538999eds.1
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 07:07:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ndKg9ATVhqHRP+XyLBlEyLJKFXx1AU9l2lVP0bNXvFQ=;
 b=T7n2R3SDebIL8wwmeQq/l7XV31GhrJDyf2OAecvjBBlXBraKEaF8Eber9ZPUj0EYX2
 3QsQ73t9igXn/kgo2wKch1e0btUFWW4OGYf5tVcbANb6wSzEwUy/ud39akPkr6TXF1i3
 sSU181xplZDi2cmMznzDxAZtahtQ+sqlx4Yqb+Hi5vRgF8a05domsd/3Qfc7kXzKb5UY
 iDSjHEooE9CCChrI5Xmc9+n54qPhsmGfJxUeJGyQVY+b3oejgeY5/zsh5FEPfz+MjIme
 MCrDBO9sIGKIdbtkQaHRlIbdmDpu8hWksDWfxe1HU7uHxdRyQIAkG69lUKGP2gGljcUK
 Veiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ndKg9ATVhqHRP+XyLBlEyLJKFXx1AU9l2lVP0bNXvFQ=;
 b=Qc34gI1bpS3cI2RovcySJHAmbtQ7fQoIao+nRUDJRjczTdT0FpkP9iccK2iKEXVoUQ
 uUOEcO4VPUoV8Qsp/dD+Fif0+LkDLz/gtrPsW58zcYys0zOjOyVXergLcPjsG4s6MAbh
 /URPqU2YTy0pddlhrl5DAmknfKpVpNqRcVJd79YcNu+kKNrpOHOLU6F1lx+FDSI/EIqo
 lZ5mrUe+rKQdCRp/FZVvNnCK22WKbnL8+IZfVsGitRwktiCj7OEzfeuLeJOIDIL9QXd1
 8LSylyYL1Yy5VpHJr7375RMzGS0pzVC54bOosmuvvqL/fRl/xgjtPhbbtk/ya8FG/fUO
 cN6A==
X-Gm-Message-State: AOAM531hgfjWAr5Z45xTln7C2Ynq6CoJlGMGqnMFnU4FhuGRLp+FpC9J
 ZYWKuxeIe7H4xZaffMm8ybw=
X-Google-Smtp-Source: ABdhPJytiVx7aS3o/J0Y3yKetuikkmEATfbsyURMxQ2p9rb9XPl15VkF7kT7IBGnMFoPJQDgDDmMwA==
X-Received: by 2002:a05:6402:849:: with SMTP id
 b9mr32450071edz.270.1624975638213; 
 Tue, 29 Jun 2021 07:07:18 -0700 (PDT)
Received: from localhost.localdomain ([188.26.224.68])
 by smtp.gmail.com with ESMTPSA id b27sm8220121ejl.10.2021.06.29.07.07.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Jun 2021 07:07:17 -0700 (PDT)
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Date: Tue, 29 Jun 2021 17:06:45 +0300
Message-Id: <20210629140658.2510288-3-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210629140658.2510288-1-olteanv@gmail.com>
References: <20210629140658.2510288-1-olteanv@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, Vladimir Oltean <vladimir.oltean@nxp.com>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@idosch.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: [Bridge] [PATCH v5 net-next 02/15] net: bridge: switchdev: send FDB
	notifications for host addresses
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

From: Tobias Waldekranz <tobias@waldekranz.com>

Treat addresses added to the bridge itself in the same way as regular
ports and send out a notification so that drivers may sync it down to
the hardware FDB.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v4->v5: rebased on top of the READ_ONCE change

 net/bridge/br_fdb.c       |  4 ++--
 net/bridge/br_private.h   |  7 ++++---
 net/bridge/br_switchdev.c | 11 +++++------
 3 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index dc3ecf2d5637..bad7e84d76af 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -607,7 +607,7 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
 			/* fastpath: update of existing entry */
 			if (unlikely(source != READ_ONCE(fdb->dst) &&
 				     !test_bit(BR_FDB_STICKY, &fdb->flags))) {
-				br_switchdev_fdb_notify(fdb, RTM_DELNEIGH);
+				br_switchdev_fdb_notify(br, fdb, RTM_DELNEIGH);
 				WRITE_ONCE(fdb->dst, source);
 				fdb_modified = true;
 				/* Take over HW learned entry */
@@ -800,7 +800,7 @@ static void fdb_notify(struct net_bridge *br,
 	int err = -ENOBUFS;
 
 	if (swdev_notify)
-		br_switchdev_fdb_notify(fdb, type);
+		br_switchdev_fdb_notify(br, fdb, type);
 
 	skb = nlmsg_new(fdb_nlmsg_size(), GFP_ATOMIC);
 	if (skb == NULL)
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index a684d0cfc58c..2b48b204205e 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1654,8 +1654,8 @@ int br_switchdev_set_port_flag(struct net_bridge_port *p,
 			       unsigned long flags,
 			       unsigned long mask,
 			       struct netlink_ext_ack *extack);
-void br_switchdev_fdb_notify(const struct net_bridge_fdb_entry *fdb,
-			     int type);
+void br_switchdev_fdb_notify(struct net_bridge *br,
+			     const struct net_bridge_fdb_entry *fdb, int type);
 int br_switchdev_port_vlan_add(struct net_device *dev, u16 vid, u16 flags,
 			       struct netlink_ext_ack *extack);
 int br_switchdev_port_vlan_del(struct net_device *dev, u16 vid);
@@ -1702,7 +1702,8 @@ static inline int br_switchdev_port_vlan_del(struct net_device *dev, u16 vid)
 }
 
 static inline void
-br_switchdev_fdb_notify(const struct net_bridge_fdb_entry *fdb, int type)
+br_switchdev_fdb_notify(struct net_bridge *br,
+			const struct net_bridge_fdb_entry *fdb, int type)
 {
 }
 
diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
index 192293fe37fd..d3adee0f91f9 100644
--- a/net/bridge/br_switchdev.c
+++ b/net/bridge/br_switchdev.c
@@ -108,9 +108,11 @@ int br_switchdev_set_port_flag(struct net_bridge_port *p,
 }
 
 void
-br_switchdev_fdb_notify(const struct net_bridge_fdb_entry *fdb, int type)
+br_switchdev_fdb_notify(struct net_bridge *br,
+			const struct net_bridge_fdb_entry *fdb, int type)
 {
 	const struct net_bridge_port *dst = READ_ONCE(fdb->dst);
+	struct net_device *dev = dst ? dst->dev : br->dev;
 	struct switchdev_notifier_fdb_info info = {
 		.addr = fdb->key.addr.addr,
 		.vid = fdb->key.vlan_id,
@@ -119,17 +121,14 @@ br_switchdev_fdb_notify(const struct net_bridge_fdb_entry *fdb, int type)
 		.offloaded = test_bit(BR_FDB_OFFLOADED, &fdb->flags),
 	};
 
-	if (!dst)
-		return;
-
 	switch (type) {
 	case RTM_DELNEIGH:
 		call_switchdev_notifiers(SWITCHDEV_FDB_DEL_TO_DEVICE,
-					 dst->dev, &info.info, NULL);
+					 dev, &info.info, NULL);
 		break;
 	case RTM_NEWNEIGH:
 		call_switchdev_notifiers(SWITCHDEV_FDB_ADD_TO_DEVICE,
-					 dst->dev, &info.info, NULL);
+					 dev, &info.info, NULL);
 		break;
 	}
 }
-- 
2.25.1

