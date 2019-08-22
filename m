Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A4999F67
	for <lists.bridge@lfdr.de>; Thu, 22 Aug 2019 21:08:16 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 33C58D97;
	Thu, 22 Aug 2019 19:08:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6EA4DAF7
	for <bridge@lists.linux-foundation.org>;
	Thu, 22 Aug 2019 19:08:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
	[68.232.153.233])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0B2B367F
	for <bridge@lists.linux-foundation.org>;
	Thu, 22 Aug 2019 19:08:02 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
	Horatiu.Vultur@microchip.com designates 198.175.253.82 as
	permitted sender) identity=mailfrom;
	client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
	envelope-from="Horatiu.Vultur@microchip.com";
	x-sender="Horatiu.Vultur@microchip.com";
	x-conformance=spf_only; x-record-type="v=spf1";
	x-record-text="v=spf1 mx a:ushub1.microchip.com
	a:smtpout.microchip.com a:mx1.microchip.iphmx.com
	a:mx2.microchip.iphmx.com include:servers.mcsv.net
	include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
	authenticity information available from domain of
	postmaster@email.microchip.com) identity=helo;
	client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
	envelope-from="Horatiu.Vultur@microchip.com";
	x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
	dkim=none (message not signed) header.i=none;
	spf=Pass smtp.mailfrom=Horatiu.Vultur@microchip.com;
	spf=None smtp.helo=postmaster@email.microchip.com;
	dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 3j/s0R80uTH2/iiwh3/Aq50sL9TGuK21EoqkCrGTKS/2wpZS/H/2ik5hBFQkEdNc+EtUWKH71i
	NWoJQBpa8udfutd8IWtcJOand3f4nWYNMHaptQ9u32IPCEk8qpBO6GNPDdotaKTJ3+hySTT0I/
	Vwhv3U4ao/mslKdtB3id8jFSudKHBHlF/pqphCSoo0YTq2a60mB9C7Ota15PbxwMD86Z2t45Qv
	vt9G/FvKYm3hLpTAn7Be9fXqrq9MRNYm4thJFepCCsOUSacCuwmzfw1r8GB2Os1zXdL8wly1iE
	P6w=
X-IronPort-AV: E=Sophos;i="5.64,417,1559545200"; d="scan'208";a="46283497"
Received: from smtpout.microchip.com (HELO email.microchip.com)
	([198.175.253.82])
	by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
	22 Aug 2019 12:08:02 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
	chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
	15.1.1713.5; Thu, 22 Aug 2019 12:08:00 -0700
Received: from soft-dev3.microsemi.net (10.10.85.251) by
	chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
	15.1.1713.5 via Frontend Transport; Thu, 22 Aug 2019 12:07:58 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <roopa@cumulusnetworks.com>, <nikolay@cumulusnetworks.com>,
	<davem@davemloft.net>, <UNGLinuxDriver@microchip.com>,
	<alexandre.belloni@bootlin.com>, <allan.nielsen@microchip.com>,
	<netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<bridge@lists.linux-foundation.org>
Date: Thu, 22 Aug 2019 21:07:27 +0200
Message-ID: <1566500850-6247-1-git-send-email-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH 0/3] Add NETIF_F_HW_BRIDGE feature
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

Current implementation of the SW bridge is setting the interfaces in
promisc mode when they are added to bridge if learning of the frames is
enabled.
In case of Ocelot which has HW capabilities to switch frames, it is not
needed to set the ports in promisc mode because the HW already capable of
doing that. Therefore add NETIF_F_HW_BRIDGE feature to indicate that the
HW has bridge capabilities. Therefore the SW bridge doesn't need to set
the ports in promisc mode to do the switching.
This optimization takes places only if all the interfaces that are part
of the bridge have this flag and have the same network driver.

If the bridge interfaces is added in promisc mode then also the ports part
of the bridge are set in promisc mode.

Horatiu Vultur (3):
  net: Add HW_BRIDGE offload feature
  net: mscc: Use NETIF_F_HW_BRIDGE
  net: mscc: Implement promisc mode.

 drivers/net/ethernet/mscc/ocelot.c | 26 ++++++++++++++++++++++++--
 include/linux/netdev_features.h    |  3 +++
 net/bridge/br_if.c                 | 29 ++++++++++++++++++++++++++++-
 net/core/ethtool.c                 |  1 +
 4 files changed, 56 insertions(+), 3 deletions(-)

-- 
2.7.4

