Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A6324604AE5
	for <lists.bridge@lfdr.de>; Wed, 19 Oct 2022 17:13:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20C1661207;
	Wed, 19 Oct 2022 15:12:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20C1661207
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2TNm5xxMWAMU; Wed, 19 Oct 2022 15:12:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 76EED611F7;
	Wed, 19 Oct 2022 15:12:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76EED611F7
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D7259C0082;
	Wed, 19 Oct 2022 15:12:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 974E7C0077
 for <bridge@lists.linux-foundation.org>; Wed, 19 Oct 2022 15:12:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 66AE140CE0
 for <bridge@lists.linux-foundation.org>; Wed, 19 Oct 2022 15:12:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66AE140CE0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hGKbVoxDpEvy for <bridge@lists.linux-foundation.org>;
 Wed, 19 Oct 2022 15:12:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91BDE40469
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 91BDE40469
 for <bridge@lists.linux-foundation.org>; Wed, 19 Oct 2022 15:12:53 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 5B1C41884AE0;
 Wed, 19 Oct 2022 15:12:49 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 2273C2500615;
 Wed, 19 Oct 2022 15:12:49 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 0)
 id E908E9EC0009; Wed, 19 Oct 2022 15:12:48 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
Received: from fujitsu.vestervang (2-104-116-184-cable.dk.customer.tdc.net
 [2.104.116.184])
 by smtp.gigahost.dk (Postfix) with ESMTPSA id 9D9799EC0007;
 Tue, 18 Oct 2022 16:56:58 +0000 (UTC)
From: "Hans J. Schultz" <netdev@kapio-technology.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue, 18 Oct 2022 18:56:14 +0200
Message-Id: <20221018165619.134535-8-netdev@kapio-technology.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221018165619.134535-1-netdev@kapio-technology.com>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
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
Subject: [Bridge] [PATCH v8 net-next 07/12] net: dsa: send the blackhole
	flag down through the DSA layer
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

Propagate blackhole FDB entries through the DSA layer towards the drivers,
remembering that these entries are local entries.

Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
---
 include/net/dsa.h  |  1 +
 net/dsa/dsa_priv.h |  4 ++--
 net/dsa/port.c     | 22 ++++++++++++----------
 net/dsa/slave.c    |  6 ++++--
 4 files changed, 19 insertions(+), 14 deletions(-)

diff --git a/include/net/dsa.h b/include/net/dsa.h
index e4b641b20713..d5b2aef52d93 100644
--- a/include/net/dsa.h
+++ b/include/net/dsa.h
@@ -822,6 +822,7 @@ static inline bool dsa_port_tree_same(const struct dsa_port *a,
 }
 
 #define DSA_FDB_FLAG_LOCKED		(1 << 0)
+#define DSA_FDB_FLAG_BLACKHOLE		(1 << 1)
 
 typedef int dsa_fdb_dump_cb_t(const unsigned char *addr, u16 vid,
 			      bool is_static, void *data);
diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
index c943e8934063..611833f162d1 100644
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
index ff4f66f14d39..7e77c5d6090a 100644
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
+				 u16 vid, u16 fdb_flags)
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
index 65f0c578ef44..4e22014ec469 100644
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

