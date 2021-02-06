Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E54E4312030
	for <lists.bridge@lfdr.de>; Sat,  6 Feb 2021 22:49:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 49B32204AC;
	Sat,  6 Feb 2021 21:49:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xG6Iy7REp0oD; Sat,  6 Feb 2021 21:49:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id E2EB6204A7;
	Sat,  6 Feb 2021 21:49:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C1A79C013A;
	Sat,  6 Feb 2021 21:49:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C2E8AC013A
 for <bridge@lists.linux-foundation.org>; Sat,  6 Feb 2021 21:49:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A926A204AC
 for <bridge@lists.linux-foundation.org>; Sat,  6 Feb 2021 21:49:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PyllCzRSd3pv for <bridge@lists.linux-foundation.org>;
 Sat,  6 Feb 2021 21:49:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by silver.osuosl.org (Postfix) with ESMTPS id 62A57204A7
 for <bridge@lists.linux-foundation.org>; Sat,  6 Feb 2021 21:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1612648185; x=1644184185;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yLgapeK5FwV5IDNMOCWuPlVIbCFeQL0vs9X/eGhKGDw=;
 b=yT/k3nnFIaQMXkjb+ImaJBY7xPG5U5jS4cK3VXZ5cqY8a2GXv3jY/ZAI
 AGkEX4gzPWSgJtob41WGST+Z5wV/8/DDyFH4NqbHEMz3Y7DiPl0nMNVBX
 rJzxklvR62tJqCudFhvFqE2EfoCj/P7kIEqrnXsHxLyAg7Yh08ftzivWO
 j1q0IbNQpX5rcs76jgNZKDgJHq4+GBALtB9mJn1CmKiSVfrJ9615A3ACy
 Lz8/uuLLVbEy1NgikV+XdvtB38JgXDhbcYs4Nh7dk0eawJ49sKZpJxnWz
 XUQsQW8NWpM/C01WECWdr8aCrIS3eAO81PzeYo/YY0v5vG8N34jBJbVeY Q==;
IronPort-SDR: YmJ/oDt3+SBNYBAY6gWeJNWLicpAhR7vZUZflDiYzRewKDMrtz2XW+aLleG+9xkL9276Sg8g6e
 asul7v0x3QbSUdF8q2R1P33Qgn0Un0r+2NY40MI2XnM+uXjtNYyQR95WVAPGoV+HPWJtAeSR0G
 g9W/9aTncmRKBqp1LjPLCfUsEcRvhC5VrS66CX2aSbEeE6Vi3MhM4IuC1CK6hkk6KqzSSVUjFJ
 tgfSQ9QTi6fYFRzwL9sUmSJkmAIQAAanGBvqzGbMWfTZbPzj0VDuzZevfzJPA64IlVzGwYRuKX
 37w=
X-IronPort-AV: E=Sophos;i="5.81,158,1610434800"; d="scan'208";a="102871012"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Feb 2021 14:49:44 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Sat, 6 Feb 2021 14:49:43 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Sat, 6 Feb 2021 14:49:41 -0700
To: <jiri@resnulli.us>, <ivecera@redhat.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <roopa@nvidia.com>, <nikolay@nvidia.com>,
 <rasmus.villemoes@prevas.dk>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Sat, 6 Feb 2021 22:47:32 +0100
Message-ID: <20210206214734.1577849-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net 0/2] bridge: mrp: Fix
	br_mrp_port_switchdev_set_state
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

Based on the discussion here[1], there was a problem with the function
br_mrp_port_switchdev_set_state. The problem was that it was called
both with BR_STATE* and BR_MRP_PORT_STATE* types. This patch series
fixes this issue and removes SWITCHDEV_ATTR_ID_MRP_PORT_STAT because
is not used anymore.

[1] https://www.spinics.net/lists/netdev/msg714816.html

Horatiu Vultur (2):
  bridge: mrp: Fix the usage of br_mrp_port_switchdev_set_state
  switchdev: mrp: Remove SWITCHDEV_ATTR_ID_MRP_PORT_STAT

 include/net/switchdev.h       | 2 --
 net/bridge/br_mrp.c           | 9 ++++++---
 net/bridge/br_mrp_switchdev.c | 7 +++----
 net/bridge/br_private_mrp.h   | 3 +--
 4 files changed, 10 insertions(+), 11 deletions(-)

-- 
2.27.0

