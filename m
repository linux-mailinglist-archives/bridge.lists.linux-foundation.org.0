Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DAEFA211DCB
	for <lists.bridge@lfdr.de>; Thu,  2 Jul 2020 10:13:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 71FC18B271;
	Thu,  2 Jul 2020 08:13:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bXumucJWUakB; Thu,  2 Jul 2020 08:13:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id BFDEC8B25F;
	Thu,  2 Jul 2020 08:13:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9FE22C0733;
	Thu,  2 Jul 2020 08:13:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 14633C0733
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 08:13:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F033387D00
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 08:13:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uLQFZZ0q4sBT for <bridge@lists.linux-foundation.org>;
 Thu,  2 Jul 2020 08:13:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 718E687CFE
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 08:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1593677595; x=1625213595;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Yl2VuSGjDWMQiuL7KQmLjM60vMbdhACMmPH2M/uS8AI=;
 b=batYJHqlTSoj+8oEM6UrLZIAI6V+9yPHqbrD7x1SSDNos+NsvuvBigiC
 5pcxJtPBgEUhUSzyuO/LtdqELJrnh8lt1UEjtrcbfhC4kfP85cWUxmuwt
 63LfG98uEsMuK2dKh3X0K01G4742//3SRqSrZ8WnHGXz7Wzyh/A6WOHq2
 HAHWQ6670WXr8HOhCYPldWJIkfM8df1MFNK0jqCMJChXknDwD49wSFJKp
 zrJEV+MpX1evyewcU0IDO7FfmEqq6tssBQKZdYj5TtwqRMJmksQZTaf62
 Z8mkTx+ICyBL5OdRNumDTg1eHgupTdM3sBGRYQGvYiHkqKrtbLi20IW1j g==;
IronPort-SDR: d27XaLuMzYw/vdevJ2B/WamZccilcKMA0wEBvK45ggmZFnkAqv4RoHQKQRTIdMbSs/t4O/y9uX
 wjfWpDWBJojBJkFqQrGCH/zgTrr1AhJFc4NQKU7nz6Ns1ZjkAaOjTA2/oY4baFGqfQeFuyI5ki
 R1iirTvd5/+oDPQ2fR2vOHWjirkHAvL6B8tDryTE0LqyrK7WjWtAZLd5zzmur4ieAJTog7+78j
 uHD4mNU+JYPzalIep4KwLIHp+vkb4AwDwxKs41E8ec0Q+traMWj848D6UXq0zO33ixWlqEhm7B
 itU=
X-IronPort-AV: E=Sophos;i="5.75,303,1589266800"; d="scan'208";a="80467644"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Jul 2020 01:13:13 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 2 Jul 2020 01:13:13 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Thu, 2 Jul 2020 01:12:50 -0700
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <jiri@mellanox.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <UNGLinuxDriver@microchip.com>
Date: Thu, 2 Jul 2020 10:13:04 +0200
Message-ID: <20200702081307.933471-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v3 0/3] bridge: mrp: Add support for
	getting the status
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

v3:
  - remove misleading comment
  - fix to use correctly the RCU

v2:
  - fix sparse warnings

Horatiu Vultur (3):
  bridge: uapi: mrp: Extend MRP attributes to get the status
  bridge: mrp: Add br_mrp_fill_info
  bridge: Extend br_fill_ifinfo to return MPR status

 include/uapi/linux/if_bridge.h | 17 +++++++++
 include/uapi/linux/rtnetlink.h |  1 +
 net/bridge/br_mrp_netlink.c    | 64 ++++++++++++++++++++++++++++++++++
 net/bridge/br_netlink.c        | 25 ++++++++++++-
 net/bridge/br_private.h        |  7 ++++
 5 files changed, 113 insertions(+), 1 deletion(-)

-- 
2.27.0

