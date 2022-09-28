Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 105075EDFAB
	for <lists.bridge@lfdr.de>; Wed, 28 Sep 2022 17:06:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 01AC9417C2;
	Wed, 28 Sep 2022 15:06:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01AC9417C2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qhAauIXVkDnr; Wed, 28 Sep 2022 15:06:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 7EDA74177D;
	Wed, 28 Sep 2022 15:06:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7EDA74177D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2B131C0078;
	Wed, 28 Sep 2022 15:06:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2CC29C007B
 for <bridge@lists.linux-foundation.org>; Wed, 28 Sep 2022 15:06:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E2DB5415FF
 for <bridge@lists.linux-foundation.org>; Wed, 28 Sep 2022 15:06:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2DB5415FF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9mfQ5KdkPdfF for <bridge@lists.linux-foundation.org>;
 Wed, 28 Sep 2022 15:06:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2DD994177D
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2DD994177D
 for <bridge@lists.linux-foundation.org>; Wed, 28 Sep 2022 15:06:26 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 05D081884BE9;
 Wed, 28 Sep 2022 15:06:25 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id F062625005A8;
 Wed, 28 Sep 2022 15:06:24 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id E018A9EC0009; Wed, 28 Sep 2022 15:06:24 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
Received: from fujitsu.vestervang (2-104-116-184-cable.dk.customer.tdc.net
 [2.104.116.184])
 by smtp.gigahost.dk (Postfix) with ESMTPSA id 13E1C9120FED;
 Wed, 28 Sep 2022 15:06:24 +0000 (UTC)
From: Hans Schultz <netdev@kapio-technology.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Wed, 28 Sep 2022 17:02:51 +0200
Message-Id: <20220928150256.115248-5-netdev@kapio-technology.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220928150256.115248-1-netdev@kapio-technology.com>
References: <20220928150256.115248-1-netdev@kapio-technology.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org,
 "Hans J. Schultz" <netdev@kapio-technology.com>,
 Joachim Wiberg <troglobit@gmail.com>, Shuah Khan <shuah@kernel.org>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Roopa Prabhu <roopa@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Amit Cohen <amcohen@nvidia.com>, Christian Marangi <ansuelsmth@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Schultz <schultz.hans@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 Petr Machata <petrm@nvidia.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Vladimir Oltean <olteanv@gmail.com>,
 Florent Fourcot <florent.fourcot@wifirst.fr>
Subject: [Bridge] [PATCH v6 net-next 4/9] net: switchdev: support offloading
	of the FDB blackhole flag
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

From: "Hans J. Schultz" <netdev@kapio-technology.com>

Add support for offloading of the FDB blackhole flag.

Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
---
 include/net/dsa.h         |  1 +
 include/net/switchdev.h   |  1 +
 net/bridge/br.c           |  3 ++-
 net/bridge/br_fdb.c       | 19 ++++++++++++++++---
 net/bridge/br_private.h   |  3 ++-
 net/bridge/br_switchdev.c |  1 +
 net/dsa/dsa_priv.h        |  4 ++--
 net/dsa/port.c            | 22 ++++++++++++----------
 net/dsa/slave.c           |  6 ++++--
 9 files changed, 41 insertions(+), 19 deletions(-)

diff --git a/include/net/dsa.h b/include/net/dsa.h
index 09abb6f08a4c..26d82d71988e 100644
--- a/include/net/dsa.h
+++ b/include/net/dsa.h
@@ -824,6 +824,7 @@ static inline bool dsa_port_tree_same(const struct dsa_port *a,
 }
 
 #define DSA_FDB_FLAG_LOCKED		(1 << 0)
+#define DSA_FDB_FLAG_BLACKHOLE		(1 << 1)
 
 typedef int dsa_fdb_dump_cb_t(const unsigned char *addr, u16 vid,
 			      bool is_static, void *data);
diff --git a/include/net/switchdev.h b/include/net/switchdev.h
index ca0312b78294..39727902354e 100644
--- a/include/net/switchdev.h
+++ b/include/net/switchdev.h
@@ -249,6 +249,7 @@ struct switchdev_notifier_fdb_info {
 	u8 added_by_user:1,
 	   is_local:1,
 	   locked:1,
+	   blackhole:1,
 	   offloaded:1;
 };
 
diff --git a/net/bridge/br.c b/net/bridge/br.c
index e0e2df2fa278..85fc529b6a9f 100644
--- a/net/bridge/br.c
+++ b/net/bridge/br.c
@@ -166,7 +166,8 @@ static int br_switchdev_event(struct notifier_block *unused,
 	case SWITCHDEV_FDB_ADD_TO_BRIDGE:
 		fdb_info = ptr;
 		err = br_fdb_external_learn_add(br, p, fdb_info->addr, fdb_info->vid,
-						fdb_info->locked, false);
+						fdb_info->locked, fdb_info->is_local,
+						fdb_info->blackhole, false);
 		if (err) {
 			err = notifier_from_errno(err);
 			break;
diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 86fa60cbc26c..d6f22e2e018a 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -1148,7 +1148,7 @@ static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
 					   "FDB entry towards bridge must be permanent");
 			return -EINVAL;
 		}
-		err = br_fdb_external_learn_add(br, p, addr, vid, false, true);
+		err = br_fdb_external_learn_add(br, p, addr, vid, false, false, false, true);
 	} else if ((ext_flags & NTF_EXT_BLACKHOLE) && p) {
 		NL_SET_ERR_MSG_MOD(extack, "Blackhole FDB entry cannot be applied on a port");
 		return -EINVAL;
@@ -1390,7 +1390,7 @@ void br_fdb_unsync_static(struct net_bridge *br, struct net_bridge_port *p)
 
 int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
 			      const unsigned char *addr, u16 vid, bool locked,
-			      bool swdev_notify)
+			      bool local, bool blackhole, bool swdev_notify)
 {
 	struct net_bridge_fdb_entry *fdb;
 	bool modified = false;
@@ -1407,12 +1407,15 @@ int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
 		if (swdev_notify)
 			flags |= BIT(BR_FDB_ADDED_BY_USER);
 
-		if (!p)
+		if (!p || local)
 			flags |= BIT(BR_FDB_LOCAL);
 
 		if (locked)
 			flags |= BIT(BR_FDB_LOCKED);
 
+		if (blackhole)
+			flags |= BIT(BR_FDB_BLACKHOLE);
+
 		fdb = fdb_create(br, p, addr, vid, flags);
 		if (!fdb) {
 			err = -ENOMEM;
@@ -1436,11 +1439,21 @@ int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
 			modified = true;
 		}
 
+		if (local != test_bit(BR_FDB_LOCAL, &fdb->flags)) {
+			change_bit(BR_FDB_LOCAL, &fdb->flags);
+			modified = true;
+		}
+
 		if (locked != test_bit(BR_FDB_LOCKED, &fdb->flags)) {
 			change_bit(BR_FDB_LOCKED, &fdb->flags);
 			modified = true;
 		}
 
+		if (blackhole != test_bit(BR_FDB_BLACKHOLE, &fdb->flags)) {
+			change_bit(BR_FDB_BLACKHOLE, &fdb->flags);
+			modified = true;
+		}
+
 		if (swdev_notify)
 			set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
 
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 3e9f4d1fbd60..4202c80e465e 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -812,7 +812,8 @@ int br_fdb_sync_static(struct net_bridge *br, struct net_bridge_port *p);
 void br_fdb_unsync_static(struct net_bridge *br, struct net_bridge_port *p);
 int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
 			      const unsigned char *addr, u16 vid,
-			      bool locked, bool swdev_notify);
+			      bool locked, bool local, bool blackhole,
+			      bool swdev_notify);
 int br_fdb_external_learn_del(struct net_bridge *br, struct net_bridge_port *p,
 			      const unsigned char *addr, u16 vid,
 			      bool swdev_notify);
diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
index ccf1b4cffdd0..ce7b80c782ec 100644
--- a/net/bridge/br_switchdev.c
+++ b/net/bridge/br_switchdev.c
@@ -137,6 +137,7 @@ static void br_switchdev_fdb_populate(struct net_bridge *br,
 	item->offloaded = test_bit(BR_FDB_OFFLOADED, &fdb->flags);
 	item->is_local = test_bit(BR_FDB_LOCAL, &fdb->flags);
 	item->locked = test_bit(BR_FDB_LOCKED, &fdb->flags);
+	item->blackhole = test_bit(BR_FDB_BLACKHOLE, &fdb->flags);
 	item->info.dev = (!p || item->is_local) ? br->dev : p->dev;
 	item->info.ctx = ctx;
 }
diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
index cf9bada44ded..b8b9d6de45ba 100644
--- a/net/dsa/dsa_priv.h
+++ b/net/dsa/dsa_priv.h
@@ -251,9 +251,9 @@ int dsa_port_standalone_host_fdb_add(struct dsa_port *dp,
 int dsa_port_standalone_host_fdb_del(struct dsa_port *dp,
 				     const unsigned char *addr, u16 vid);
 int dsa_port_bridge_host_fdb_add(struct dsa_port *dp, const unsigned char *addr,
-				 u16 vid);
+				 u16 vid, u16 fdb_flags);
 int dsa_port_bridge_host_fdb_del(struct dsa_port *dp, const unsigned char *addr,
-				 u16 vid);
+				 u16 vid, u16 fdb_flags);
 int dsa_port_lag_fdb_add(struct dsa_port *dp, const unsigned char *addr,
 			 u16 vid);
 int dsa_port_lag_fdb_del(struct dsa_port *dp, const unsigned char *addr,
diff --git a/net/dsa/port.c b/net/dsa/port.c
index ff19e3a1a0d7..7351a2608108 100644
--- a/net/dsa/port.c
+++ b/net/dsa/port.c
@@ -1001,12 +1001,13 @@ int dsa_port_fdb_del(struct dsa_port *dp, const unsigned char *addr,
 
 static int dsa_port_host_fdb_add(struct dsa_port *dp,
 				 const unsigned char *addr, u16 vid,
-				 struct dsa_db db)
+				 u16 fdb_flags, struct dsa_db db)
 {
 	struct dsa_notifier_fdb_info info = {
 		.dp = dp,
 		.addr = addr,
 		.vid = vid,
+		.fdb_flags = fdb_flags,
 		.db = db,
 	};
 
@@ -1024,11 +1025,11 @@ int dsa_port_standalone_host_fdb_add(struct dsa_port *dp,
 		.dp = dp,
 	};
 
-	return dsa_port_host_fdb_add(dp, addr, vid, db);
+	return dsa_port_host_fdb_add(dp, addr, vid, 0, db);
 }
 
-int dsa_port_bridge_host_fdb_add(struct dsa_port *dp,
-				 const unsigned char *addr, u16 vid)
+int dsa_port_bridge_host_fdb_add(struct dsa_port *dp, const unsigned char *addr,
+				 u16 vid, u16 fdb_flags)
 {
 	struct net_device *master = dsa_port_to_master(dp);
 	struct dsa_db db = {
@@ -1047,17 +1048,18 @@ int dsa_port_bridge_host_fdb_add(struct dsa_port *dp,
 			return err;
 	}
 
-	return dsa_port_host_fdb_add(dp, addr, vid, db);
+	return dsa_port_host_fdb_add(dp, addr, vid, fdb_flags, db);
 }
 
 static int dsa_port_host_fdb_del(struct dsa_port *dp,
 				 const unsigned char *addr, u16 vid,
-				 struct dsa_db db)
+				 u16 fdb_flags, struct dsa_db db)
 {
 	struct dsa_notifier_fdb_info info = {
 		.dp = dp,
 		.addr = addr,
 		.vid = vid,
+		.fdb_flags = fdb_flags,
 		.db = db,
 	};
 
@@ -1075,11 +1077,11 @@ int dsa_port_standalone_host_fdb_del(struct dsa_port *dp,
 		.dp = dp,
 	};
 
-	return dsa_port_host_fdb_del(dp, addr, vid, db);
+	return dsa_port_host_fdb_del(dp, addr, vid, 0, db);
 }
 
-int dsa_port_bridge_host_fdb_del(struct dsa_port *dp,
-				 const unsigned char *addr, u16 vid)
+int dsa_port_bridge_host_fdb_del(struct dsa_port *dp, const unsigned char *addr,
+				 u16 fdb_flags, u16 vid)
 {
 	struct net_device *master = dsa_port_to_master(dp);
 	struct dsa_db db = {
@@ -1094,7 +1096,7 @@ int dsa_port_bridge_host_fdb_del(struct dsa_port *dp,
 			return err;
 	}
 
-	return dsa_port_host_fdb_del(dp, addr, vid, db);
+	return dsa_port_host_fdb_del(dp, addr, vid, fdb_flags, db);
 }
 
 int dsa_port_lag_fdb_add(struct dsa_port *dp, const unsigned char *addr,
diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index 2ffc7043e143..2aeab4fc3738 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -3258,7 +3258,7 @@ static void dsa_slave_switchdev_event_work(struct work_struct *work)
 	switch (switchdev_work->event) {
 	case SWITCHDEV_FDB_ADD_TO_DEVICE:
 		if (switchdev_work->host_addr)
-			err = dsa_port_bridge_host_fdb_add(dp, addr, vid);
+			err = dsa_port_bridge_host_fdb_add(dp, addr, vid, fdb_flags);
 		else if (dp->lag)
 			err = dsa_port_lag_fdb_add(dp, addr, vid);
 		else
@@ -3274,7 +3274,7 @@ static void dsa_slave_switchdev_event_work(struct work_struct *work)
 
 	case SWITCHDEV_FDB_DEL_TO_DEVICE:
 		if (switchdev_work->host_addr)
-			err = dsa_port_bridge_host_fdb_del(dp, addr, vid);
+			err = dsa_port_bridge_host_fdb_del(dp, addr, vid, fdb_flags);
 		else if (dp->lag)
 			err = dsa_port_lag_fdb_del(dp, addr, vid);
 		else
@@ -3365,6 +3365,8 @@ static int dsa_slave_fdb_event(struct net_device *dev,
 
 	if (fdb_info->locked)
 		fdb_flags |= DSA_FDB_FLAG_LOCKED;
+	if (fdb_info->blackhole)
+		fdb_flags |= DSA_FDB_FLAG_BLACKHOLE;
 
 	INIT_WORK(&switchdev_work->work, dsa_slave_switchdev_event_work);
 	switchdev_work->event = event;
-- 
2.34.1

