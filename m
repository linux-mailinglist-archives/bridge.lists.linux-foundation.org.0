Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F27E9D4BE
	for <lists.bridge@lfdr.de>; Mon, 26 Aug 2019 19:14:07 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BA0FB18A4;
	Mon, 26 Aug 2019 17:13:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6E3971171
	for <bridge@lists.linux-foundation.org>;
	Mon, 26 Aug 2019 08:14:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
	[68.232.154.123])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 098798A2
	for <bridge@lists.linux-foundation.org>;
	Mon, 26 Aug 2019 08:14:51 +0000 (UTC)
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
	Horatiu.Vultur@microchip.com designates 198.175.253.82 as
	permitted sender) identity=mailfrom;
	client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
	envelope-from="Horatiu.Vultur@microchip.com";
	x-sender="Horatiu.Vultur@microchip.com";
	x-conformance=spf_only; x-record-type="v=spf1";
	x-record-text="v=spf1 mx a:ushub1.microchip.com
	a:smtpout.microchip.com a:mx1.microchip.iphmx.com
	a:mx2.microchip.iphmx.com include:servers.mcsv.net
	include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
	authenticity information available from domain of
	postmaster@email.microchip.com) identity=helo;
	client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
	envelope-from="Horatiu.Vultur@microchip.com";
	x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
	dkim=none (message not signed) header.i=none;
	spf=Pass smtp.mailfrom=Horatiu.Vultur@microchip.com;
	spf=None smtp.helo=postmaster@email.microchip.com;
	dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: eVFsUDN/amRnlSQCZVMV4sao5p1i7DtXi/dOajpmjsNmo2fkLe9peQNFYHmxtrtpTVUdzwlfrE
	8koAe2D671vvjrafAfT0DmaXXr1RDHStmBVi6qogYWYZNwpYTTJqVPT4W5FMGV+u9mts2WnS4I
	vOHlWX1NGNBZCXkspSlDIJacL9xf5zF3J8uftWvaoKpIS2+obDiUpoQec9tvEPT/oaA8Nv+n56
	37A9y9fMCw6a+Vz7GKLHr/NKVAXGVKXfTmnh5L8+5lKU4MR1lNuwcCECo5tRvUx4SuUZPmwl+B
	M9w=
X-IronPort-AV: E=Sophos;i="5.64,431,1559545200"; d="scan'208";a="45573032"
Received: from smtpout.microchip.com (HELO email.microchip.com)
	([198.175.253.82])
	by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
	26 Aug 2019 01:14:50 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
	chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
	15.1.1713.5; Mon, 26 Aug 2019 01:14:49 -0700
Received: from soft-dev3.microsemi.net (10.10.85.251) by
	chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
	15.1.1713.5 via Frontend Transport; Mon, 26 Aug 2019 01:14:47 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <roopa@cumulusnetworks.com>, <nikolay@cumulusnetworks.com>,
	<davem@davemloft.net>, <UNGLinuxDriver@microchip.com>,
	<alexandre.belloni@bootlin.com>, <allan.nielsen@microchip.com>,
	<andrew@lunn.ch>, <f.fainelli@gmail.com>, <netdev@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Mon, 26 Aug 2019 10:11:15 +0200
Message-ID: <1566807075-775-4-git-send-email-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566807075-775-1-git-send-email-horatiu.vultur@microchip.com>
References: <1566807075-775-1-git-send-email-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH v2 3/3] net: mscc: Implement promisc mode.
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

Before when a port was added to a bridge then the port was added in
promisc mode. But because of the patches:
commit e6300374f3be6 ("net: Add NETIF_HW_BR_CAP feature")
commit 764866d46cc81 ("net: mscc: Use NETIF_F_HW_BR_CAP")'

The port is not needed to be in promisc mode to be part of the bridge.
So it is possible to togle the promisc mode of the port even if it is or
not part of the bridge.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 drivers/net/ethernet/mscc/ocelot.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/net/ethernet/mscc/ocelot.c b/drivers/net/ethernet/mscc/ocelot.c
index 7d7c94b..8a18eef 100644
--- a/drivers/net/ethernet/mscc/ocelot.c
+++ b/drivers/net/ethernet/mscc/ocelot.c
@@ -691,6 +691,25 @@ static void ocelot_set_rx_mode(struct net_device *dev)
 	__dev_mc_sync(dev, ocelot_mc_sync, ocelot_mc_unsync);
 }
 
+static void ocelot_change_rx_flags(struct net_device *dev, int flags)
+{
+	struct ocelot_port *port = netdev_priv(dev);
+	struct ocelot *ocelot = port->ocelot;
+	u32 val;
+
+	if (!(flags & IFF_PROMISC))
+		return;
+
+	val = ocelot_read_gix(ocelot, ANA_PORT_CPU_FWD_CFG,
+			      port->chip_port);
+	if (dev->flags & IFF_PROMISC)
+		val |= ANA_PORT_CPU_FWD_CFG_CPU_SRC_COPY_ENA;
+	else
+		val &= ~(ANA_PORT_CPU_FWD_CFG_CPU_SRC_COPY_ENA);
+
+	ocelot_write_gix(ocelot, val, ANA_PORT_CPU_FWD_CFG, port->chip_port);
+}
+
 static int ocelot_port_get_phys_port_name(struct net_device *dev,
 					  char *buf, size_t len)
 {
@@ -1070,6 +1089,7 @@ static const struct net_device_ops ocelot_port_netdev_ops = {
 	.ndo_stop			= ocelot_port_stop,
 	.ndo_start_xmit			= ocelot_port_xmit,
 	.ndo_set_rx_mode		= ocelot_set_rx_mode,
+	.ndo_change_rx_flags		= ocelot_change_rx_flags,
 	.ndo_get_phys_port_name		= ocelot_port_get_phys_port_name,
 	.ndo_set_mac_address		= ocelot_port_set_mac_address,
 	.ndo_get_stats64		= ocelot_get_stats64,
-- 
2.7.4

