Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA0E21C9A9
	for <lists.bridge@lfdr.de>; Sun, 12 Jul 2020 16:09:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5EB892600E;
	Sun, 12 Jul 2020 14:09:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6AAeboHq9EW1; Sun, 12 Jul 2020 14:09:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 2D843261BE;
	Sun, 12 Jul 2020 14:09:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 21BF1C0733;
	Sun, 12 Jul 2020 14:09:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E4A9CC0733
 for <bridge@lists.linux-foundation.org>; Sun, 12 Jul 2020 14:09:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DB779893EB
 for <bridge@lists.linux-foundation.org>; Sun, 12 Jul 2020 14:09:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ngiF0+aLS90F for <bridge@lists.linux-foundation.org>;
 Sun, 12 Jul 2020 14:09:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 65744893E4
 for <bridge@lists.linux-foundation.org>; Sun, 12 Jul 2020 14:09:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1594562965; x=1626098965;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uci+63N0XBlAvV0QBr++Adpov2aPMsyTOj+m1Y0wXT8=;
 b=KefjtlJKT9lbEweOYeEf6ktOcc49+IysD7EJeeQTJ0X1LhGKRhR2G7Z6
 2XEJg0YXwOfmDhUIN/uxMdXtI+G4whbe/yC8DDWAUDrHGpzWGh04141Je
 /TjreG75DRG/Ss8E3LI1EhOqCympVrsdxPFdDwc9XIfngnB5uz5Ty6FDP
 Q3KUqAW++xi4GVnXNA9x/Ayy06jxLhaUDA7P1ivDmp18LxSAf3IO1rFok
 ZRftM4t5czxrmdNtpeUG7MCwKfs4huqfDttz8UqmTncaPzvCWXzCfG5NE
 fxfZANSpHtnnt5GQSTy2Qmm0/A30kT3Q70f4OGS/hJLdv5CawxgbfNsKy Q==;
IronPort-SDR: D/r03IT90FREUMh1iVqM6jf8lzyjPi51aj8ebZKHklO8A6px6fRggRZQlTaetx3YgpHgcdvmco
 kfGpJi+2xPwi9fTCKpF7VMTb3l/0KYIBl3zsqWBELWTYmeMmSCxFG9as6S2z7jMftF5h59WWBm
 xJ4wI4CrAb0UgFt7Cvn4XxiI3BWOPm2Eu67gnAZXEdXwX/MiLaJW/enoLn3zT1uXRZPqu7o3W5
 dKmKHaY0PBroCjFGLYfTmr8PbthT6jWR3C64uPwgh+nc1l7VVxHsWRcLiz/Bvafi7xOChCahGx
 hrs=
X-IronPort-AV: E=Sophos;i="5.75,343,1589266800"; d="scan'208";a="81541613"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Jul 2020 07:09:24 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Sun, 12 Jul 2020 07:08:55 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Sun, 12 Jul 2020 07:08:53 -0700
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <jiri@resnulli.us>,
 <ivecera@redhat.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Sun, 12 Jul 2020 16:05:45 +0200
Message-ID: <20200712140556.1758725-2-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200712140556.1758725-1-horatiu.vultur@microchip.com>
References: <20200712140556.1758725-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v3 01/12] switchdev: mrp: Extend switchdev
	API for MRP Interconnect
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
From: Horatiu Vultur via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Horatiu Vultur <horatiu.vultur@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Extend switchdev API to add support for MRP interconnect. The HW is
notified in the following cases:

SWITCHDEV_OBJ_ID_IN_ROLE_MRP: This is used when the interconnect role
  of the node changes. The supported roles are MIM and MIC.

SWITCHDEV_OBJ_ID_IN_STATE_MRP: This is used when the interconnect ring
  changes it states to open or closed.

SWITCHDEV_OBJ_ID_IN_TEST_MRP: This is used to start/stop sending
  MRP_InTest frames on all MRP ports. This is called only on nodes that
  have the interconnect role MIM.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 include/net/switchdev.h | 38 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/include/net/switchdev.h b/include/net/switchdev.h
index b8c059b4e06d9..ff22469143013 100644
--- a/include/net/switchdev.h
+++ b/include/net/switchdev.h
@@ -76,6 +76,10 @@ enum switchdev_obj_id {
 	SWITCHDEV_OBJ_ID_RING_TEST_MRP,
 	SWITCHDEV_OBJ_ID_RING_ROLE_MRP,
 	SWITCHDEV_OBJ_ID_RING_STATE_MRP,
+	SWITCHDEV_OBJ_ID_IN_TEST_MRP,
+	SWITCHDEV_OBJ_ID_IN_ROLE_MRP,
+	SWITCHDEV_OBJ_ID_IN_STATE_MRP,
+
 #endif
 };
 
@@ -155,6 +159,40 @@ struct switchdev_obj_ring_state_mrp {
 #define SWITCHDEV_OBJ_RING_STATE_MRP(OBJ) \
 	container_of((OBJ), struct switchdev_obj_ring_state_mrp, obj)
 
+/* SWITCHDEV_OBJ_ID_IN_TEST_MRP */
+struct switchdev_obj_in_test_mrp {
+	struct switchdev_obj obj;
+	/* The value is in us and a value of 0 represents to stop */
+	u32 interval;
+	u32 in_id;
+	u32 period;
+	u8 max_miss;
+};
+
+#define SWITCHDEV_OBJ_IN_TEST_MRP(OBJ) \
+	container_of((OBJ), struct switchdev_obj_in_test_mrp, obj)
+
+/* SWICHDEV_OBJ_ID_IN_ROLE_MRP */
+struct switchdev_obj_in_role_mrp {
+	struct switchdev_obj obj;
+	struct net_device *i_port;
+	u32 ring_id;
+	u16 in_id;
+	u8 in_role;
+};
+
+#define SWITCHDEV_OBJ_IN_ROLE_MRP(OBJ) \
+	container_of((OBJ), struct switchdev_obj_in_role_mrp, obj)
+
+struct switchdev_obj_in_state_mrp {
+	struct switchdev_obj obj;
+	u32 in_id;
+	u8 in_state;
+};
+
+#define SWITCHDEV_OBJ_IN_STATE_MRP(OBJ) \
+	container_of((OBJ), struct switchdev_obj_in_state_mrp, obj)
+
 #endif
 
 typedef int switchdev_obj_dump_cb_t(struct switchdev_obj *obj);
-- 
2.27.0

