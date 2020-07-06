Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE0D215487
	for <lists.bridge@lfdr.de>; Mon,  6 Jul 2020 11:21:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7998886F89;
	Mon,  6 Jul 2020 09:21:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eX5coWmQZGKZ; Mon,  6 Jul 2020 09:21:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DC15686FAF;
	Mon,  6 Jul 2020 09:21:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D1156C016F;
	Mon,  6 Jul 2020 09:21:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 102DAC016F
 for <bridge@lists.linux-foundation.org>; Mon,  6 Jul 2020 09:21:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F327688685
 for <bridge@lists.linux-foundation.org>; Mon,  6 Jul 2020 09:21:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TA493PTxM264 for <bridge@lists.linux-foundation.org>;
 Mon,  6 Jul 2020 09:21:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2862F88677
 for <bridge@lists.linux-foundation.org>; Mon,  6 Jul 2020 09:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1594027265; x=1625563265;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hhjb7b7BFHDhGUIJfkFuTZrIsTfwhOn+hS3mtT2Mho8=;
 b=Ee8cuP+Ir4nmid3FMTDVDBgslqmWR7+CrP9Niisk+b/8CSZtIITtfObL
 kdYBfkBdJ2C4sPfsIN0vfe5e7HzMf6MwMFytidCjdrQ46AGgUUJEAu3pM
 v2/geNnYk4pidh5ZrdBgX1Fu1TNSvd0+GVaFwNXBnQ3juLxCkP6uDubfu
 QnoMiyDgm1NXrxJpDdUVIwpktkFzw337nbSkvjyifT5duat7tR50EvGeF
 eC1i//+ZJ5mQViGc93vG/2DD8oJw82sIQ3aWzl4KH3FWk+nCyj3ZzJFy5
 Rz6kNM3dfC9X4slCnJbpBV9nEved0loKP3ubpXw3anMD1FJUgtzGtPS+l A==;
IronPort-SDR: w9U+6/cUH2dtwm/VYMdwAwOIawfcEpxhAwmh9hSpGToVWmzRPzpu2yH5vxnKfhfWeh4szXKwsn
 +MgwNIi7s+M2EwlFhQvDX2lW/aRzBQe3b8wZ9+7ko+TqYQqdxXdt6Dfn0Hfxd9///uHOPjC/Ba
 hxZg08ljskOdSkGhu+ZJQEoiVDRIfGMMI+rh+wetj/rZ6uq1eSoJwC+Ra90+eWe5YwpeearZli
 G3KkXU20MHF0FCXQsBG1MY5K4huGD9IcAVZe6a5eN4OvIHbiSQ5Vx6UurmsQBeW9dRpg6vLlqR
 +dc=
X-IronPort-AV: E=Sophos;i="5.75,318,1589266800"; d="scan'208";a="18109009"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Jul 2020 02:21:04 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 6 Jul 2020 02:21:04 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Mon, 6 Jul 2020 02:20:38 -0700
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <jiri@resnulli.us>,
 <ivecera@redhat.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Mon, 6 Jul 2020 11:18:37 +0200
Message-ID: <20200706091842.3324565-8-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200706091842.3324565-1-horatiu.vultur@microchip.com>
References: <20200706091842.3324565-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next 07/12] bridge: switchdev: mrp: Extend MRP
	API for switchdev for MRP Interconnect
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

Implement the MRP API for interconnect switchdev. Similar with the other
br_mrp_switchdev function, these function will just eventually call the
switchdev functions: switchdev_port_obj_add/del.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_mrp_switchdev.c | 62 +++++++++++++++++++++++++++++++++++
 net/bridge/br_private_mrp.h   |  7 ++++
 2 files changed, 69 insertions(+)

diff --git a/net/bridge/br_mrp_switchdev.c b/net/bridge/br_mrp_switchdev.c
index 0da68a0da4b5a..ed547e03ace17 100644
--- a/net/bridge/br_mrp_switchdev.c
+++ b/net/bridge/br_mrp_switchdev.c
@@ -107,6 +107,68 @@ int br_mrp_switchdev_set_ring_state(struct net_bridge *br,
 	return 0;
 }
 
+int br_mrp_switchdev_set_in_role(struct net_bridge *br, struct br_mrp *mrp,
+				 u16 in_id, u32 ring_id,
+				 enum br_mrp_in_role_type role)
+{
+	struct switchdev_obj_in_role_mrp mrp_role = {
+		.obj.orig_dev = br->dev,
+		.obj.id = SWITCHDEV_OBJ_ID_IN_ROLE_MRP,
+		.in_role = role,
+		.in_id = mrp->in_id,
+		.ring_id = mrp->ring_id,
+		.i_port = rtnl_dereference(mrp->i_port)->dev,
+	};
+	int err;
+
+	if (role == BR_MRP_IN_ROLE_DISABLED)
+		err = switchdev_port_obj_del(br->dev, &mrp_role.obj);
+	else
+		err = switchdev_port_obj_add(br->dev, &mrp_role.obj, NULL);
+
+	return err;
+}
+
+int br_mrp_switchdev_set_in_state(struct net_bridge *br, struct br_mrp *mrp,
+				  enum br_mrp_in_state_type state)
+{
+	struct switchdev_obj_in_state_mrp mrp_state = {
+		.obj.orig_dev = br->dev,
+		.obj.id = SWITCHDEV_OBJ_ID_IN_STATE_MRP,
+		.in_state = state,
+		.in_id = mrp->in_id,
+	};
+	int err;
+
+	err = switchdev_port_obj_add(br->dev, &mrp_state.obj, NULL);
+
+	if (err && err != -EOPNOTSUPP)
+		return err;
+
+	return 0;
+}
+
+int br_mrp_switchdev_send_in_test(struct net_bridge *br, struct br_mrp *mrp,
+				  u32 interval, u8 max_miss, u32 period)
+{
+	struct switchdev_obj_in_test_mrp test = {
+		.obj.orig_dev = br->dev,
+		.obj.id = SWITCHDEV_OBJ_ID_IN_TEST_MRP,
+		.interval = interval,
+		.max_miss = max_miss,
+		.in_id = mrp->in_id,
+		.period = period,
+	};
+	int err;
+
+	if (interval == 0)
+		err = switchdev_port_obj_del(br->dev, &test.obj);
+	else
+		err = switchdev_port_obj_add(br->dev, &test.obj, NULL);
+
+	return err;
+}
+
 int br_mrp_port_switchdev_set_state(struct net_bridge_port *p,
 				    enum br_mrp_port_state_type state)
 {
diff --git a/net/bridge/br_private_mrp.h b/net/bridge/br_private_mrp.h
index 384cb69b47e02..50dbf046a9be3 100644
--- a/net/bridge/br_private_mrp.h
+++ b/net/bridge/br_private_mrp.h
@@ -72,6 +72,13 @@ int br_mrp_port_switchdev_set_state(struct net_bridge_port *p,
 				    enum br_mrp_port_state_type state);
 int br_mrp_port_switchdev_set_role(struct net_bridge_port *p,
 				   enum br_mrp_port_role_type role);
+int br_mrp_switchdev_set_in_role(struct net_bridge *br, struct br_mrp *mrp,
+				 u16 in_id, u32 ring_id,
+				 enum br_mrp_in_role_type role);
+int br_mrp_switchdev_set_in_state(struct net_bridge *br, struct br_mrp *mrp,
+				  enum br_mrp_in_state_type state);
+int br_mrp_switchdev_send_in_test(struct net_bridge *br, struct br_mrp *mrp,
+				  u32 interval, u8 max_miss, u32 period);
 
 /* br_mrp_netlink.c  */
 int br_mrp_ring_port_open(struct net_device *dev, u8 loc);
-- 
2.27.0

