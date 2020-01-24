Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5E1148BCE
	for <lists.bridge@lfdr.de>; Fri, 24 Jan 2020 17:19:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A51B185C08;
	Fri, 24 Jan 2020 16:19:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s220m_25w5jJ; Fri, 24 Jan 2020 16:19:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3350685A96;
	Fri, 24 Jan 2020 16:19:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2338FC0174;
	Fri, 24 Jan 2020 16:19:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 18AE9C0174
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 16:19:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 14370228A0
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 16:19:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Je8Cofof8ruN for <bridge@lists.linux-foundation.org>;
 Fri, 24 Jan 2020 16:19:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by silver.osuosl.org (Postfix) with ESMTPS id 4B9CB2288E
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 16:19:49 +0000 (UTC)
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
IronPort-SDR: tfc21+y1/AjHeE9A8ZBn7JKa51YtnCkYJTTm5hM3LWtsyREheCRTaNONltMYXQHcHp41HEVF2m
 +yu+tQmLoh7EPLm9CQs+IeU5bTVI7f2t0WSf/zLh7raUZRBFQ9J57PRbvuAyHvUHBKsXOuvzt2
 WAFbckxHfZ3BQ/BrGJqCn820PrpIXNq4VLgyIoCjoloIl5Cgq/aSW2eFay5e4AQ1tAM4CQI5Ru
 hAEP8Ozi2Tv9WLIjkQaP4h4TYAoXtSSzZDTf+sfgDtUoVjPJQ3f7lEBwrT83c4vVgmM5aJJ8M8
 KMY=
X-IronPort-AV: E=Sophos;i="5.70,358,1574146800"; 
   d="scan'208";a="19406"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Jan 2020 09:19:47 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 24 Jan 2020 09:19:43 -0700
Received: from soft-dev3.microsemi.net (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 24 Jan 2020 09:19:40 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <jiri@resnulli.us>,
 <ivecera@redhat.com>, <davem@davemloft.net>, <roopa@cumulusnetworks.com>,
 <nikolay@cumulusnetworks.com>, <anirudh.venkataramanan@intel.com>,
 <olteanv@gmail.com>, <andrew@lunn.ch>, <jeffrey.t.kirsher@intel.com>,
 <UNGLinuxDriver@microchip.com>
Date: Fri, 24 Jan 2020 17:18:23 +0100
Message-ID: <20200124161828.12206-6-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200124161828.12206-1-horatiu.vultur@microchip.com>
References: <20200124161828.12206-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [RFC net-next v3 05/10] net: bridge: mrp: Update MRP
	interface to add switchdev support
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

Extend the MRP interface to allow switchdev support. The following functions are
added:

br_mrp_port_switchdev_add - this corresponds to the function br_mrp_add_port,
  and will notify the HW that a port is added to a MRP ring. The function gets
  as parameter the port and the ID of the ring.

br_mrp_port_switchdev_del - this corresponds to the function br_mrp_del_port
  and will notify the HW that a port is removed from a MRP ring. The function
  gets as parameter the port and the ID of the ring.

br_mrp_port_switchdev_set_state - this corresponds to the function
  br_mrp_port_state. It would notify the HW if it should block or not non-MRP
  frames.

br_mrp_port_switchdev_set_port - this corresponds to the function
  br_mrp_port_role. It would set the port role, primary or secondary.

br_mrp_switchdev_set_role - this corresponds to the function br_mrp_ring_role
  and would set one of the role MRM or MRC.

br_mrp_switchdev_set_ring_state - this corresponds to the function
  br_mrp_ring_state and would set the ring to be open or closed.

br_mrp_switchdev_send_ring_test - this corresponds to the function
  br_mrp_start_test. This will notify the HW to start or stop generating
  MRP_Test frames. Value 0 for the interval parameter means to stop generating
  the frames.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_private_mrp.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/net/bridge/br_private_mrp.h b/net/bridge/br_private_mrp.h
index bea4ece4411c..de5ba7f730f6 100644
--- a/net/bridge/br_private_mrp.h
+++ b/net/bridge/br_private_mrp.h
@@ -35,6 +35,22 @@ int br_mrp_start_test(struct net_bridge *br, u32 ring_nr, u32 interval,
 		      u8 max_miss);
 int br_mrp_flush(struct net_bridge *br, u32 ring_nr);
 
+/* br_mrp_switchdev.c */
+int br_mrp_port_switchdev_add(struct net_bridge_port *p, u32 ring_nr);
+int br_mrp_port_switchdev_del(struct net_bridge_port *p, u32 ring_nr);
+int br_mrp_port_switchdev_set_state(struct net_bridge_port *p,
+				    enum br_mrp_port_state_type state);
+int br_mrp_port_switchdev_set_role(struct net_bridge_port *p,
+				   enum br_mrp_port_role_type role);
+
+int br_mrp_switchdev_set_ring_role(struct br_mrp *mrp,
+				   enum br_mrp_ring_role_type role);
+int br_mrp_switchdev_set_ring_state(struct br_mrp *mrp,
+				    enum br_mrp_ring_state_type state);
+
+int br_mrp_switchdev_send_ring_test(struct br_mrp *mrp, u32 interval,
+				    u8 max_miss);
+
 /* br_mrp_netlink.c */
 void br_mrp_port_open(struct net_device *dev, u8 loc);
 
-- 
2.17.1

