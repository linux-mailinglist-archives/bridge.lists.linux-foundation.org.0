Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF9320F608
	for <lists.bridge@lfdr.de>; Tue, 30 Jun 2020 15:45:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A9E0E86F22;
	Tue, 30 Jun 2020 13:45:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j6CMLVaSVxrc; Tue, 30 Jun 2020 13:45:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7333D86ACB;
	Tue, 30 Jun 2020 13:45:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 56F71C016E;
	Tue, 30 Jun 2020 13:45:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4EAB8C016E
 for <bridge@lists.linux-foundation.org>; Tue, 30 Jun 2020 13:45:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3497B2156E
 for <bridge@lists.linux-foundation.org>; Tue, 30 Jun 2020 13:45:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vzSYrSnI3-wa for <bridge@lists.linux-foundation.org>;
 Tue, 30 Jun 2020 13:45:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by silver.osuosl.org (Postfix) with ESMTPS id B1A292035B
 for <bridge@lists.linux-foundation.org>; Tue, 30 Jun 2020 13:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1593524740; x=1625060740;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DT8RPyRP9mmuQ6a31TkFhh6MXoc72CoyHoSonfX6oCE=;
 b=xrZ0sg8i0PhCsg11vxAhZLUQE9CdRAp8Yt/9/fM+tvQ4ob32GhzdefqY
 amfZK9Xi22mS4OpcyVoBl9dcvfcbuP8qlosrItIg/8mXdUZZZqb1iSF3U
 4zGUoLv3eGixV4p3bvdYdGiuLRnmW6PGsMIxzPWrkbYkvNc89IGGibYSS
 EY1gDtZoOLT1bHBaVoBGD4Swg3ZzDXmpYW6hKAA+k/F0nJNjnlyYi8zY0
 Cqh8T+CHRtl+xgcGw/foLKHRQolGfJPOJzW0HmfkyW7NkrisIoPTA6f1d
 Iss23yQMNuJsTVaZYIngOL4EfuDnfh5lam8GQXarztX+MqEo5gMOAhPmQ Q==;
IronPort-SDR: k278jIGgNuSItG6ZZMWkoL5B3lvaDH1hn94M2bDyspiat0WYQmNDp7nlHxWw1NM47bGAm3nnHu
 q1rwsu8vqYenlV82/jNO6Dot6H+SdojwUHLup6McjCW48AlXmenFAOcnbUGM2yuQCR24REEuWR
 HLoJ+KIdTZIx7KTBPCsk9443DHn2aajPxyx7mWleGMu+6L/5ln7BqVqKAp8LBFTLqqqkrGDF7F
 uh3X2vyb+FyB25xMi61T/+3YVxZBZwO2qONRXZj1+PFBmYYoriIqVod/7q1ZSIDaSuCrmjNr7/
 jxc=
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; d="scan'208";a="78274295"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 30 Jun 2020 06:45:39 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 30 Jun 2020 06:45:21 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 30 Jun 2020 06:45:36 -0700
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <jiri@mellanox.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <UNGLinuxDriver@microchip.com>
Date: Tue, 30 Jun 2020 15:44:21 +0200
Message-ID: <20200630134424.4114086-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next 0/3] bridge: mrp: Add support for getting
	the status
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

This patch series extends the MRP netlink interface to allow the userspace
daemon to get the status of the MRP instances in the kernel.

Horatiu Vultur (3):
  bridge: uapi: mrp: Extend MRP attributes to get the status
  bridge: mrp: Add br_mrp_fill_info
  bridge: Extend br_fill_ifinfo to return MPR status

 include/uapi/linux/if_bridge.h | 17 ++++++++++
 include/uapi/linux/rtnetlink.h |  1 +
 net/bridge/br_mrp_netlink.c    | 57 ++++++++++++++++++++++++++++++++++
 net/bridge/br_netlink.c        | 29 ++++++++++++++++-
 net/bridge/br_private.h        |  7 +++++
 5 files changed, 110 insertions(+), 1 deletion(-)

-- 
2.27.0

