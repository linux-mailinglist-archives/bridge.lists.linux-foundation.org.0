Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB5F148BD0
	for <lists.bridge@lfdr.de>; Fri, 24 Jan 2020 17:19:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 412FA880C0;
	Fri, 24 Jan 2020 16:19:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zv0AkIV+EwBa; Fri, 24 Jan 2020 16:19:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id A9DD0880C1;
	Fri, 24 Jan 2020 16:19:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 89789C0174;
	Fri, 24 Jan 2020 16:19:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 71F4EC18DD
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 16:19:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6E1B2228A4
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 16:19:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jjmGJk1-xgRz for <bridge@lists.linux-foundation.org>;
 Fri, 24 Jan 2020 16:19:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by silver.osuosl.org (Postfix) with ESMTPS id CAF672288E
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 16:19:50 +0000 (UTC)
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Horatiu.Vultur@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Horatiu.Vultur@microchip.com";
 x-sender="Horatiu.Vultur@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Horatiu.Vultur@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Horatiu.Vultur@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 1JPYT53oAV1jOip3/IPJRU/lPeFO1ilCVciS8MM2cVJPZKbYcatXw4bdtaUMxWCYkSrUvuzVT9
 LG+6TwxY1X924jkt++0GPZJ6X8uVmk8uUAVV8p3UzyPPXVyWxGpV28Q8il13L8/pjelx68R+Ym
 bgO17W7DVCDAR9U+zd+1hfVYx2FF52pXWrRlHCOTdb9BrQEvuUGzTVLzFYkONtJyATFk3ksR5E
 ho6geLUJbTWHcP21AqosEHT6LNGaOZAnGmoy9aByFMh2Mjf57k2VHL5Abi6TrwWDtVqi0nUg6s
 aD8=
X-IronPort-AV: E=Sophos;i="5.70,358,1574146800"; 
   d="scan'208";a="19416"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Jan 2020 09:19:49 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 24 Jan 2020 09:19:49 -0700
Received: from soft-dev3.microsemi.net (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 24 Jan 2020 09:19:46 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <jiri@resnulli.us>,
 <ivecera@redhat.com>, <davem@davemloft.net>, <roopa@cumulusnetworks.com>,
 <nikolay@cumulusnetworks.com>, <anirudh.venkataramanan@intel.com>,
 <olteanv@gmail.com>, <andrew@lunn.ch>, <jeffrey.t.kirsher@intel.com>,
 <UNGLinuxDriver@microchip.com>
Date: Fri, 24 Jan 2020 17:18:25 +0100
Message-ID: <20200124161828.12206-8-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200124161828.12206-1-horatiu.vultur@microchip.com>
References: <20200124161828.12206-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [RFC net-next v3 07/10] net: bridge: mrp: switchdev:
	Implement MRP API for switchdev
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

Implement the MRP api for switchdev.
These functions will just eventually call the switchdev functions:
switchdev_port_obj_add/del and switchdev_port_attr_set.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_mrp_switchdev.c | 147 ++++++++++++++++++++++++++++++++++
 1 file changed, 147 insertions(+)
 create mode 100644 net/bridge/br_mrp_switchdev.c

diff --git a/net/bridge/br_mrp_switchdev.c b/net/bridge/br_mrp_switchdev.c
new file mode 100644
index 000000000000..2226d98806de
--- /dev/null
+++ b/net/bridge/br_mrp_switchdev.c
@@ -0,0 +1,147 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include <net/switchdev.h>
+
+#include "br_private_mrp.h"
+
+int br_mrp_port_switchdev_add(struct net_bridge_port *p, u32 ring_nr)
+{
+	struct net_bridge *br = p->br;
+	struct switchdev_obj_port_mrp mrp = {
+		.obj.orig_dev = br->dev,
+		.obj.id = SWITCHDEV_OBJ_ID_PORT_MRP,
+		.port = p->dev,
+		.ring_nr = ring_nr,
+	};
+	int err = 0;
+
+	err = switchdev_port_obj_add(br->dev, &mrp.obj, NULL);
+
+	if (err && err != -EOPNOTSUPP)
+		return err;
+
+	return 0;
+}
+
+int br_mrp_switchdev_set_ring_role(struct br_mrp *mrp,
+				   enum br_mrp_ring_role_type role)
+{
+	struct switchdev_obj_ring_role_mrp mrp_role = {
+		.obj.orig_dev = mrp->br->dev,
+		.obj.id = SWITCHDEV_OBJ_ID_RING_ROLE_MRP,
+		.ring_role = role,
+		.ring_nr = mrp->ring_nr,
+	};
+	int err = 0;
+
+	pr_info("%s role: %d\n", __func__, role);
+
+	if (role == BR_MRP_RING_ROLE_DISABLED)
+		err = switchdev_port_obj_del(mrp->br->dev, &mrp_role.obj);
+	else
+		err = switchdev_port_obj_add(mrp->br->dev, &mrp_role.obj, NULL);
+
+	if (err && err != -EOPNOTSUPP)
+		return err;
+
+	return 0;
+}
+
+int br_mrp_switchdev_send_ring_test(struct br_mrp *mrp, u32 interval,
+				    u8 max_miss)
+{
+	struct switchdev_obj_ring_test_mrp test = {
+		.obj.orig_dev = mrp->br->dev,
+		.obj.id = SWITCHDEV_OBJ_ID_RING_TEST_MRP,
+		.interval = interval,
+		.max_miss = max_miss,
+		.ring_nr = mrp->ring_nr,
+	};
+	int err = 0;
+
+	if (interval == 0)
+		err = switchdev_port_obj_del(mrp->br->dev, &test.obj);
+	else
+		err = switchdev_port_obj_add(mrp->br->dev, &test.obj, NULL);
+
+	return err;
+}
+
+int br_mrp_port_switchdev_del(struct net_bridge_port *p, u32 ring_nr)
+{
+	struct net_bridge *br = p->br;
+	struct switchdev_obj_port_mrp mrp = {
+		.obj.orig_dev = br->dev,
+		.obj.id = SWITCHDEV_OBJ_ID_PORT_MRP,
+		.port = p->dev,
+		.ring_nr = ring_nr,
+	};
+	int err = 0;
+
+	err = switchdev_port_obj_del(br->dev, &mrp.obj);
+
+	if (err && err != -EOPNOTSUPP)
+		return err;
+
+	return 0;
+}
+
+int br_mrp_port_switchdev_set_state(struct net_bridge_port *p,
+				    enum br_mrp_port_state_type state)
+{
+	struct switchdev_attr attr = {
+		.orig_dev = p->dev,
+		.id = SWITCHDEV_ATTR_ID_MRP_PORT_STATE,
+		.u.mrp_port_state = state,
+	};
+	int err = 0;
+
+	pr_info("%s port: %s, state: %d\n", __func__, p->dev->name, state);
+
+	err = switchdev_port_attr_set(p->dev, &attr);
+	if (err && err != -EOPNOTSUPP)
+		br_warn(p->br, "error setting offload MRP state on port %u(%s)\n",
+			(unsigned int)p->port_no, p->dev->name);
+
+	return err;
+}
+
+int br_mrp_port_switchdev_set_role(struct net_bridge_port *p,
+				   enum br_mrp_port_role_type role)
+{
+	struct switchdev_attr attr = {
+		.orig_dev = p->dev,
+		.id = SWITCHDEV_ATTR_ID_MRP_PORT_ROLE,
+		.u.mrp_port_role = role,
+	};
+	int err;
+
+	err = switchdev_port_attr_set(p->dev, &attr);
+	if (err && err != -EOPNOTSUPP)
+		return err;
+
+	return 0;
+}
+
+int br_mrp_switchdev_set_ring_state(struct br_mrp *mrp,
+				    enum br_mrp_ring_state_type state)
+{
+	struct switchdev_attr attr = {
+		.id = SWITCHDEV_ATTR_ID_MRP_RING_STATE,
+		.u.mrp_ring_state = state,
+	};
+	int err = 0;
+
+	attr.orig_dev = mrp->p_port->dev,
+	err = switchdev_port_attr_set(mrp->p_port->dev, &attr);
+	if (err && err != -EOPNOTSUPP)
+		return err;
+
+	attr.orig_dev = mrp->s_port->dev;
+	err = switchdev_port_attr_set(mrp->s_port->dev, &attr);
+	if (err && err != -EOPNOTSUPP)
+		return err;
+
+	return err;
+}
+
-- 
2.17.1

