Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D409D4C9
	for <lists.bridge@lfdr.de>; Mon, 26 Aug 2019 19:15:21 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id AD5CBAF7;
	Mon, 26 Aug 2019 17:13:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4732C1171
	for <bridge@lists.linux-foundation.org>;
	Mon, 26 Aug 2019 08:14:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
	[68.232.154.123])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5564389B
	for <bridge@lists.linux-foundation.org>;
	Mon, 26 Aug 2019 08:14:43 +0000 (UTC)
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
IronPort-SDR: z3+gMa6lHQJiOt2w+Y+z1SBhMnOd+ErKsQoMCsa7YeEyO0N88kZ96F8NUPmha3S5TN8Qn8QrPl
	Yi/ypLXTd7XiKpe4Cg25m3UCFshDhY+1jXPuVWE2cdCqB+cCDB/K3V9CAMFKfdPARv7AO83Faa
	GmHGV3sBZ+PW/y2YEeW3k8ZWDFdmL8quLnsU2IVR0cfiKLmDES10wZok9k7jGAAK7MAxObF63m
	L18H6KWqg+wfSex0oR6JjCDS/aQ9qeo+c488iIL+wgFY9y8k2A/FvFklZksRwFJ7AhrnBWx28I
	xBQ=
X-IronPort-AV: E=Sophos;i="5.64,431,1559545200"; d="scan'208";a="45573013"
Received: from smtpout.microchip.com (HELO email.microchip.com)
	([198.175.253.82])
	by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
	26 Aug 2019 01:14:42 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
	chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
	15.1.1713.5; Mon, 26 Aug 2019 01:14:41 -0700
Received: from soft-dev3.microsemi.net (10.10.85.251) by
	chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
	15.1.1713.5 via Frontend Transport; Mon, 26 Aug 2019 01:14:39 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <roopa@cumulusnetworks.com>, <nikolay@cumulusnetworks.com>,
	<davem@davemloft.net>, <UNGLinuxDriver@microchip.com>,
	<alexandre.belloni@bootlin.com>, <allan.nielsen@microchip.com>,
	<andrew@lunn.ch>, <f.fainelli@gmail.com>, <netdev@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Mon, 26 Aug 2019 10:11:12 +0200
Message-ID: <1566807075-775-1-git-send-email-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH v2 0/3] Add NETIF_F_HW_BR_CAP feature
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

When a network port is added to a bridge then the port is added in
promisc mode. Some HW that has bridge capabilities(can learn, forward,
flood etc the frames) they are disabling promisc mode in the network
driver when the port is added to the SW bridge.

This patch adds the feature NETIF_F_HW_BR_CAP so that the network ports
that have this feature will not be set in promisc mode when they are
added to a SW bridge.

In this way the HW that has bridge capabilities don't need to send all the
traffic to the CPU and can also implement the promisc mode and toggle it
using the command 'ip link set dev swp promisc on'

v1 -> v2
  - rename feature to NETIF_F_HW_BR_CAP
  - add better description in the commit message and in the code
  - remove the check that all network driver have same netdev_ops and
    just check for the feature NETIF_F_HW_BR_CAP when setting the network
    port in promisc mode.


Horatiu Vultur (3):
  net: Add NETIF_HW_BR_CAP feature
  net: mscc: Use NETIF_F_HW_BR_CAP
  net: mscc: Implement promisc mode.

 drivers/net/ethernet/mscc/ocelot.c | 26 ++++++++++++++++++++++++--
 include/linux/netdev_features.h    |  6 ++++++
 net/bridge/br_if.c                 | 11 ++++++++++-
 net/core/ethtool.c                 |  1 +
 4 files changed, 41 insertions(+), 3 deletions(-)

-- 
2.7.4

