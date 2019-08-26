Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9869D4BD
	for <lists.bridge@lfdr.de>; Mon, 26 Aug 2019 19:13:54 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9209511C2;
	Mon, 26 Aug 2019 17:13:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B3CA91171
	for <bridge@lists.linux-foundation.org>;
	Mon, 26 Aug 2019 08:14:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
	[68.232.154.123])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5999189B
	for <bridge@lists.linux-foundation.org>;
	Mon, 26 Aug 2019 08:14:48 +0000 (UTC)
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
IronPort-SDR: YEfLqn/Rqwk5+HQ/Fg5B3zwYB8WzeYiMuwS73e8BXSVZzSi9Q1AobPH5b074WLxDicJssEBnf/
	wQ8QVtRaEbcj5bSbCMMqr1fsHvoK8WzZMduy1kDzTcEN5+JK+xiU39269Dr3LqGpdloKOd5o8o
	wYGMy2ohiQZhh7PzvkETsO6PGfyD26UuMudXE2xTdI6aAYCiHaUKvVdF+Flvv77N9iRaZ2etem
	4LpmrEyPBz+Paqeg2rhu7gR9f7y+arbQkDvJkVofFCr101XjgtQIKHwz9UequhZwcmOuexoH43
	IwQ=
X-IronPort-AV: E=Sophos;i="5.64,431,1559545200"; d="scan'208";a="45573027"
Received: from smtpout.microchip.com (HELO email.microchip.com)
	([198.175.253.82])
	by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
	26 Aug 2019 01:14:47 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
	chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
	15.1.1713.5; Mon, 26 Aug 2019 01:14:47 -0700
Received: from soft-dev3.microsemi.net (10.10.85.251) by
	chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
	15.1.1713.5 via Frontend Transport; Mon, 26 Aug 2019 01:14:44 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <roopa@cumulusnetworks.com>, <nikolay@cumulusnetworks.com>,
	<davem@davemloft.net>, <UNGLinuxDriver@microchip.com>,
	<alexandre.belloni@bootlin.com>, <allan.nielsen@microchip.com>,
	<andrew@lunn.ch>, <f.fainelli@gmail.com>, <netdev@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Mon, 26 Aug 2019 10:11:14 +0200
Message-ID: <1566807075-775-3-git-send-email-horatiu.vultur@microchip.com>
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
Subject: [Bridge] [PATCH v2 2/3] net: mscc: Use NETIF_F_HW_BR_CAP
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

Enable NETIF_F_HW_BR_CAP feature for ocelot.
Because the HW can learn and flood the frames, so there is no need for SW
bridge to do this.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 drivers/net/ethernet/mscc/ocelot.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/mscc/ocelot.c b/drivers/net/ethernet/mscc/ocelot.c
index 4d1bce4..7d7c94b 100644
--- a/drivers/net/ethernet/mscc/ocelot.c
+++ b/drivers/net/ethernet/mscc/ocelot.c
@@ -2017,8 +2017,10 @@ int ocelot_probe_port(struct ocelot *ocelot, u8 port,
 	dev->ethtool_ops = &ocelot_ethtool_ops;
 
 	dev->hw_features |= NETIF_F_HW_VLAN_CTAG_FILTER | NETIF_F_RXFCS |
-		NETIF_F_HW_TC;
-	dev->features |= NETIF_F_HW_VLAN_CTAG_FILTER | NETIF_F_HW_TC;
+		NETIF_F_HW_TC | NETIF_F_HW_BR_CAP;
+	dev->features |= NETIF_F_HW_VLAN_CTAG_FILTER | NETIF_F_HW_TC |
+		NETIF_F_HW_BR_CAP;
+	dev->priv_flags |= IFF_UNICAST_FLT;
 
 	memcpy(dev->dev_addr, ocelot->base_mac, ETH_ALEN);
 	dev->dev_addr[ETH_ALEN - 1] += port;
-- 
2.7.4

