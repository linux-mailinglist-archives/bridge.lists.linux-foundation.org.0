Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD113459CB
	for <lists.bridge@lfdr.de>; Tue, 23 Mar 2021 09:35:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD3894049D;
	Tue, 23 Mar 2021 08:35:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8o96kkUzDxMd; Tue, 23 Mar 2021 08:35:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2562D40498;
	Tue, 23 Mar 2021 08:35:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 087D3C0001;
	Tue, 23 Mar 2021 08:35:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7EC14C0001
 for <bridge@lists.linux-foundation.org>; Tue, 23 Mar 2021 08:35:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5F33F6067E
 for <bridge@lists.linux-foundation.org>; Tue, 23 Mar 2021 08:35:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=microchip.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BWpM5CfeCRaO for <bridge@lists.linux-foundation.org>;
 Tue, 23 Mar 2021 08:35:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.153.233])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A0D266065F
 for <bridge@lists.linux-foundation.org>; Tue, 23 Mar 2021 08:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1616488536; x=1648024536;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=n0QbJ/Z7gyQ6Y1lX/uRkOsxsUGuPQPG7ECU7h9LJUZw=;
 b=05T+FMb+usenhA7BcYtaB/xBE2Acsw2hMB6nvRl38fDmQAEKYUEqk4+5
 XLLAjMalafEMVehAdovrLNEDKQaReURR1Yg+QunD/9t5ldRnhdIjXs6hf
 gHV/aOT3btRM2Z9H9oxY1Pc7rw1QJJCtKbH+fSRC+r3gvs88F1QaA6ZWv
 dUCbkHv7xTpOqOUM1EU+Zxbb4Aa4nm7BwSSIPd809UBvnkHosiubky+aN
 xOoj5NY3PjScGHAd2D4k7kUcIEIIL3uzrLbctvye+1aeOdvQY9SWDxcvv
 6Va6inxkUyYA68++e74f4AKhNtTkfUTSeDAoQkbHZa3vERzXqaBeamW46 g==;
IronPort-SDR: pjgrJFbpQTN1gVcjItgPC4kHUqNiCXV4QpL8Ld7cp756DBcXg0TSE5PlFDp3oUJRqE1gS51PdE
 dP56+XHNNgvNJtDgmvWfho8St7TQ3b4/RxCpf6UHJNnDs3GXFIlah9RCS+r+Sk9ynbJTKfxXZ8
 MSeRfw9OK4NX9ZsnF/qM0oTYJ/aCIyL51v4AWZEsoUtyA8UqxCiFS2opP1iCVc7ZX1dakzri61
 Tdx5DDp0xFavR+4J4NHwt3O/PxR9tvERyEbdIHFS6nMY4GJz9VGso7i7scf6WaF1XLyiT74aYE
 u7s=
X-IronPort-AV: E=Sophos;i="5.81,271,1610434800"; d="scan'208";a="120052697"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Mar 2021 01:35:35 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Tue, 23 Mar 2021 01:35:34 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2176.2 via Frontend Transport; Tue, 23 Mar 2021 01:35:32 -0700
To: <davem@davemloft.net>, <kuba@kernel.org>, <roopa@nvidia.com>,
 <nikolay@nvidia.com>, <vladimir.oltean@nxp.com>, <claudiu.manoil@nxp.com>,
 <alexandre.belloni@bootlin.com>
Date: Tue, 23 Mar 2021 09:33:45 +0100
Message-ID: <20210323083347.1474883-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org, Horatiu
 Vultur <horatiu.vultur@microchip.com>, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com
Subject: [Bridge] [PATCH net-next 0/2] bridge: mrp: Disable roles before
	deleting
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

The first patch in this series make sures that the driver is notified
that the role is disabled before the MRP instance is deleted. The
second patch uses this so it can simplify the driver.

Horatiu Vultur (2):
  bridge: mrp: Disable roles before deleting the MRP instance
  net: ocelot: Simplify MRP deletion

 drivers/net/ethernet/mscc/ocelot_mrp.c | 16 ----------------
 net/bridge/br_mrp.c                    |  7 +++++++
 2 files changed, 7 insertions(+), 16 deletions(-)

-- 
2.30.1

