Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 623BC3459CE
	for <lists.bridge@lfdr.de>; Tue, 23 Mar 2021 09:35:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C65B404A0;
	Tue, 23 Mar 2021 08:35:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6o8h8BOu59uY; Tue, 23 Mar 2021 08:35:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D29F404A2;
	Tue, 23 Mar 2021 08:35:43 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 718EEC0012;
	Tue, 23 Mar 2021 08:35:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 05CCBC0001
 for <bridge@lists.linux-foundation.org>; Tue, 23 Mar 2021 08:35:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E8D2C6067E
 for <bridge@lists.linux-foundation.org>; Tue, 23 Mar 2021 08:35:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=microchip.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8r6DtA7NONkK for <bridge@lists.linux-foundation.org>;
 Tue, 23 Mar 2021 08:35:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.153.233])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 556026065F
 for <bridge@lists.linux-foundation.org>; Tue, 23 Mar 2021 08:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1616488541; x=1648024541;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eP8Cr4YL2a0w4yi+/hKrPPiwiCM67cN8kXpAO4EXfHk=;
 b=QnV544ynisfdBu1mZsQ3ws27VkyJj7Xmeo/foOawyjLpqcAoXkqTpQ8q
 UNeyXuTZQInTinNDhOvNnaasXP3O9wu5OxTS4yCFih+CfwwhVEDLDB8BP
 1b8VURN4jGXWD6mfUoMi8HpCWdVYov2UXESpE5p3LnXz30/Qbwd6DZ+YP
 a+RNRfYKWOM89RXcqKIsUAR2wmSkUODU1JvS74Wq1JJBQXe1zQSNVb+wj
 svWJIwKqr1IAk/QHkJ2VYnVSrjpLeNi3hcpjIEkstsHrwfrSpvTi3KpIc
 a3BDvPhJNiIWgL1tNWYuLy2t2FmCE7oQicY1P8CVGGgEk9MjfYRRgqA0J w==;
IronPort-SDR: JManP+JtJBQ0goaqSvSS9fR0qYHupoIfOzEivi6ZKW2BCW4C7frnFzR/KLmie3225VqH5edhc9
 7lgeZe7L2JD8KPs7q+3FE/29OnJLgPhKnZ3AwiShoo8yakkAD39SegLjWtlylBCXFWvYg5k/TC
 dSfhf1ekEddoND05nfT+InAoFxgoAGZS23luzcdrLhFA3xvT9ujCjqBVwhc8HrkBF+HuUAVOdp
 w76p2d4EcaBYNCmknp0XyQ2WtKvxa0UjjAklsH+/yJFBHMltU5ua8XMYMsJ8TkL4x8FBcOP6s3
 ET8=
X-IronPort-AV: E=Sophos;i="5.81,271,1610434800"; d="scan'208";a="120052736"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Mar 2021 01:35:40 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Tue, 23 Mar 2021 01:35:40 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2176.2 via Frontend Transport; Tue, 23 Mar 2021 01:35:37 -0700
To: <davem@davemloft.net>, <kuba@kernel.org>, <roopa@nvidia.com>,
 <nikolay@nvidia.com>, <vladimir.oltean@nxp.com>, <claudiu.manoil@nxp.com>,
 <alexandre.belloni@bootlin.com>
Date: Tue, 23 Mar 2021 09:33:47 +0100
Message-ID: <20210323083347.1474883-3-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210323083347.1474883-1-horatiu.vultur@microchip.com>
References: <20210323083347.1474883-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org, Horatiu
 Vultur <horatiu.vultur@microchip.com>, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com
Subject: [Bridge] [PATCH net-next 2/2] net: ocelot: Simplify MRP deletion
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

Now that the driver will always be notified that the role is deleted
before the ring is deleted, then we don't need to duplicate the logic of
cleaning the resources also in the delete function.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 drivers/net/ethernet/mscc/ocelot_mrp.c | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/drivers/net/ethernet/mscc/ocelot_mrp.c b/drivers/net/ethernet/mscc/ocelot_mrp.c
index c3cbcaf64bb2..08b481a93460 100644
--- a/drivers/net/ethernet/mscc/ocelot_mrp.c
+++ b/drivers/net/ethernet/mscc/ocelot_mrp.c
@@ -154,7 +154,6 @@ int ocelot_mrp_del(struct ocelot *ocelot, int port,
 		   const struct switchdev_obj_mrp *mrp)
 {
 	struct ocelot_port *ocelot_port = ocelot->ports[port];
-	int i;
 
 	if (!ocelot_port)
 		return -EOPNOTSUPP;
@@ -162,23 +161,8 @@ int ocelot_mrp_del(struct ocelot *ocelot, int port,
 	if (ocelot_port->mrp_ring_id != mrp->ring_id)
 		return 0;
 
-	ocelot_mrp_del_vcap(ocelot, port);
-	ocelot_mrp_del_vcap(ocelot, port + ocelot->num_phys_ports);
-
 	ocelot_port->mrp_ring_id = 0;
 
-	for (i = 0; i < ocelot->num_phys_ports; ++i) {
-		ocelot_port = ocelot->ports[i];
-
-		if (!ocelot_port)
-			continue;
-
-		if (ocelot_port->mrp_ring_id != 0)
-			goto out;
-	}
-
-	ocelot_mrp_del_mac(ocelot, ocelot->ports[port]);
-out:
 	return 0;
 }
 EXPORT_SYMBOL(ocelot_mrp_del);
-- 
2.30.1

