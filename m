Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C331A795B
	for <lists.bridge@lfdr.de>; Tue, 14 Apr 2020 13:27:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8FF0587834;
	Tue, 14 Apr 2020 11:27:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5-B0v9J4XdTX; Tue, 14 Apr 2020 11:27:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id EB7FF87404;
	Tue, 14 Apr 2020 11:27:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C8373C1D7D;
	Tue, 14 Apr 2020 11:27:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7DA37C0172
 for <bridge@lists.linux-foundation.org>; Tue, 14 Apr 2020 11:27:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6DB6E867ED
 for <bridge@lists.linux-foundation.org>; Tue, 14 Apr 2020 11:27:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3iIcK1C5730P for <bridge@lists.linux-foundation.org>;
 Tue, 14 Apr 2020 11:27:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9CD5C86833
 for <bridge@lists.linux-foundation.org>; Tue, 14 Apr 2020 11:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586863646; x=1618399646;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=Wk5W6JOrVyShu0Bu566DjA/nJMtV0L8hDnh56QYpSOM=;
 b=tyCIgc+GlkAGy2SvX8CQDvqdenComncHwn4KJvlErPaG4vLFv3O7mk4f
 LBfxsNhgH6cY6Hy2OjZ1W4NLNiWtU4zmOOC0COngm5i+whvgV3j6V3xyY
 xMFjZpEsbV1EfSqHSjQs/R/G5DrTFKfsxe1TGgNFbZIBzGkQnwLFUm3PC
 1NDC0JPBUHyjjIGSfYZ3EHvcbT2ibjqEr/mmJjG9RkX/BMCiDn9gqHLxK
 uIT0ib05uXly5u3VFQ0JnKSA4iXTfoUxP47Y26sFnQaP1C5v1YGpN+reC
 eoQ2n8V2L5+uVFyw+Fc5S8L+7VZW4Pw7qxghbPqItleyiyvymomQI6xvH g==;
IronPort-SDR: /F8BP7LwDCcPgcvjIrvHkla1gFwZo+sHQeC/OkwDcaNdpQM2GEamktJMbud1adCGKchoWuhh8/
 G1oW/cVAQhCG447aaLtLUfD4rH2x28jWBoJci+esRyZTJhf1PCDmVUM8ext67Dtvk4vL7k0uaY
 /9BX36aWPpBiaApElq11NWbXm+kaQBtumtNFMD0Zl+s9jZKpowC8dKYVJG+BKz/cn9TfePoO7X
 s5EUIPECi/EvAP+lmB5yRo2MafQfg1E7ZXr3p21L8/24NFFBHrP/Hjf/nGAueV3OIXXDY49bSB
 4t0=
X-IronPort-AV: E=Sophos;i="5.72,382,1580799600"; 
   d="scan'208";a="9066832"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Apr 2020 04:27:26 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 14 Apr 2020 04:27:12 -0700
Received: from soft-dev3.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 14 Apr 2020 04:27:23 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <nikolay@cumulusnetworks.com>, <davem@davemloft.net>, <jiri@resnulli.us>, 
 <ivecera@redhat.com>, <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <olteanv@gmail.com>, <andrew@lunn.ch>, <linux-kernel@vger.kernel.org>,
 <netdev@vger.kernel.org>, <bridge@lists.linux-foundation.org>,
 <UNGLinuxDriver@microchip.com>
Date: Tue, 14 Apr 2020 13:26:14 +0200
Message-ID: <20200414112618.3644-6-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414112618.3644-1-horatiu.vultur@microchip.com>
References: <20200414112618.3644-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [RFC net-next v5 5/9] switchdev: mrp: Extend switchdev API
	to offload MRP
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

Extend switchdev API to add support for MRP. The HW is notified in
following cases:

SWITCHDEV_OBJ_ID_MRP: This is used when a MRP instance is added/removed
  from the MRP ring.

SWITCHDEV_OBJ_ID_RING_ROLE_MRP: This is used when the role of the node
  changes. The current supported roles are MRM and MRC.

SWITCHDEV_OBJ_ID_RING_TEST_MRP: This is used when to start/stop sending
  MRP_Test frames on the mrp ring ports. This is called only on nodes that have
  the role MRM. In case this fails then the SW will generate the frames.

SWITCHDEV_OBJ_ID_RING_STATE_STATE: This is used when the ring changes it states
  to open or closed. This is required to notify HW because the MRP_Test frame
  contains the field MRP_InState which contains this information.

SWITCHDEV_ATTR_ID_MRP_PORT_STATE: This is used when the port's state is
  changed. It can be in blocking/forwarding mode.

SWITCHDEV_ATTR_ID_MRP_PORT_ROLE: This is used when port's role changes. The
  roles of the port can be primary/secondary. This is required to notify HW
  because the MRP_Test frame contains the field MRP_PortRole that contains this
  information.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 include/net/switchdev.h | 62 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/include/net/switchdev.h b/include/net/switchdev.h
index aee86a189432..ae7aeb0d1f9c 100644
--- a/include/net/switchdev.h
+++ b/include/net/switchdev.h
@@ -40,6 +40,10 @@ enum switchdev_attr_id {
 	SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING,
 	SWITCHDEV_ATTR_ID_BRIDGE_MC_DISABLED,
 	SWITCHDEV_ATTR_ID_BRIDGE_MROUTER,
+#if IS_ENABLED(CONFIG_BRIDGE_MRP)
+	SWITCHDEV_ATTR_ID_MRP_PORT_STATE,
+	SWITCHDEV_ATTR_ID_MRP_PORT_ROLE,
+#endif
 };
 
 struct switchdev_attr {
@@ -55,6 +59,11 @@ struct switchdev_attr {
 		clock_t ageing_time;			/* BRIDGE_AGEING_TIME */
 		bool vlan_filtering;			/* BRIDGE_VLAN_FILTERING */
 		bool mc_disabled;			/* MC_DISABLED */
+#if IS_ENABLED(CONFIG_BRIDGE_MRP)
+		u8 mrp_port_state;			/* MRP_PORT_STATE */
+		u8 mrp_port_role;			/* MRP_PORT_ROLE */
+		u8 mrp_ring_state;			/* MRP_RING_STATE */
+#endif
 	} u;
 };
 
@@ -63,6 +72,12 @@ enum switchdev_obj_id {
 	SWITCHDEV_OBJ_ID_PORT_VLAN,
 	SWITCHDEV_OBJ_ID_PORT_MDB,
 	SWITCHDEV_OBJ_ID_HOST_MDB,
+#if IS_ENABLED(CONFIG_BRIDGE_MRP)
+	SWITCHDEV_OBJ_ID_MRP,
+	SWITCHDEV_OBJ_ID_RING_TEST_MRP,
+	SWITCHDEV_OBJ_ID_RING_ROLE_MRP,
+	SWITCHDEV_OBJ_ID_RING_STATE_MRP,
+#endif
 };
 
 struct switchdev_obj {
@@ -94,6 +109,53 @@ struct switchdev_obj_port_mdb {
 #define SWITCHDEV_OBJ_PORT_MDB(OBJ) \
 	container_of((OBJ), struct switchdev_obj_port_mdb, obj)
 
+
+#if IS_ENABLED(CONFIG_BRIDGE_MRP)
+/* SWITCHDEV_OBJ_ID_MRP */
+struct switchdev_obj_mrp {
+	struct switchdev_obj obj;
+	struct net_device *p_port;
+	struct net_device *s_port;
+	u32 ring_id;
+};
+
+#define SWITCHDEV_OBJ_MRP(OBJ) \
+	container_of((OBJ), struct switchdev_obj_mrp, obj)
+
+/* SWITCHDEV_OBJ_ID_RING_TEST_MRP */
+struct switchdev_obj_ring_test_mrp {
+	struct switchdev_obj obj;
+	/* The value is in us and a value of 0 represents to stop */
+	u32 interval;
+	u8 max_miss;
+	u32 ring_id;
+	u32 period;
+};
+
+#define SWITCHDEV_OBJ_RING_TEST_MRP(OBJ) \
+	container_of((OBJ), struct switchdev_obj_ring_test_mrp, obj)
+
+/* SWICHDEV_OBJ_ID_RING_ROLE_MRP */
+struct switchdev_obj_ring_role_mrp {
+	struct switchdev_obj obj;
+	u8 ring_role;
+	u32 ring_id;
+};
+
+#define SWITCHDEV_OBJ_RING_ROLE_MRP(OBJ) \
+	container_of((OBJ), struct switchdev_obj_ring_role_mrp, obj)
+
+struct switchdev_obj_ring_state_mrp {
+	struct switchdev_obj obj;
+	u8 ring_state;
+	u32 ring_id;
+};
+
+#define SWITCHDEV_OBJ_RING_STATE_MRP(OBJ) \
+	container_of((OBJ), struct switchdev_obj_ring_state_mrp, obj)
+
+#endif
+
 typedef int switchdev_obj_dump_cb_t(struct switchdev_obj *obj);
 
 enum switchdev_notifier_type {
-- 
2.17.1

