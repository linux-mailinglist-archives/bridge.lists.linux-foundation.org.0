Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8E13016B6
	for <lists.bridge@lfdr.de>; Sat, 23 Jan 2021 17:19:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BA40D87337;
	Sat, 23 Jan 2021 16:19:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zYDoNmum4pci; Sat, 23 Jan 2021 16:19:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1F5FD8733A;
	Sat, 23 Jan 2021 16:19:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0E6A0C013A;
	Sat, 23 Jan 2021 16:19:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 36B76C013A
 for <bridge@lists.linux-foundation.org>; Sat, 23 Jan 2021 16:19:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 256208659E
 for <bridge@lists.linux-foundation.org>; Sat, 23 Jan 2021 16:19:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Opn8J7dAWr6N for <bridge@lists.linux-foundation.org>;
 Sat, 23 Jan 2021 16:19:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6D8EE86559
 for <bridge@lists.linux-foundation.org>; Sat, 23 Jan 2021 16:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1611418790; x=1642954790;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DN5eZjnAtCOTKv9CtTf6bYhkgWAbYsnIlHVD1aItLxU=;
 b=Ez95UUFbEtTqez/LwjygPamH1i80WEZuX1O0JOPMNwHH5ZRvuK4Bi6Au
 m54G0fCaaIfMfZ4ZMsgtVnE+yjGOLvDUxJU8iwXjKwizGdwMniOqcd7YC
 5pEcnpndbKuPNonYtBzB3aKZ7C9UGG/boB1W5cOa0zGqOIyH0XMCpIMIW
 ODeENWqVB6LABRGZv8yC/Hw81L0M9iu7CVqcy6sGW9ygdubmBWhmZuhUe
 e9GemXHraqQta8jvkdvHzR8BYrrS3RKBsOgOhWgyAnb7QQolVF0O1PZ4W
 gezL8TZgw+tnnePINWLdWxoteenqQJS90T7ozcl0z35b/EZ/BSJnJza/C Q==;
IronPort-SDR: S9FsRNdB6VpSL9CyITAgYJscmf/93TSVW4UI6FFgclGg6xMlVZJB2NluurEl6aJO5WsoVatvUI
 2VAo42ejPGaQlOZcnw2iQ9CDQ0dU2de1AtJSlPA0MhCYCkGNt76waXsRjDrPXQB9lIwdFnAQyT
 YJLUqSH/IL29xbkHyhm+ZNV2It+qYjO/GLtF4ukVd2Cbzq6oH6quaXhF8Gg9gZCnviqEyfrqN4
 cmLAcQKw5Y5jcUG12qhRhliVOYmwBJQdxafQ0IT4Yh1aax1Q+uKEGTukS56DICb1FdyrtQvsHr
 1TU=
X-IronPort-AV: E=Sophos;i="5.79,369,1602572400"; d="scan'208";a="101164367"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jan 2021 09:19:49 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Sat, 23 Jan 2021 09:19:49 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Sat, 23 Jan 2021 09:19:46 -0700
To: <jiri@resnulli.us>, <ivecera@redhat.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <roopa@nvidia.com>, <nikolay@nvidia.com>,
 <rasmus.villemoes@prevas.dk>, <andrew@lunn.ch>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Sat, 23 Jan 2021 17:18:08 +0100
Message-ID: <20210123161812.1043345-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next 0/4] bridge: mrp: Extend br_mrp_switchdev_*
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

This patch series extends MRP switchdev to allow the SW to have a better
understanding if the HW can implment the MRP functionality or it needs to
help the HW to run it. There are 3 cases:
- when HW can't implement at all the functionality.
- when HW can implement a part of the functionality but needs the SW
  implement the rest. For example if it can't detect when it stops
  receiving MRP Test frames but it can copy the MRP frames to CPU to
  allow the SW to determin this.  Another example is generating the MRP
  Test frames. If HW can't do that then the SW is used as backup.
- when HW can implement completely the functionality.

So, initially the SW tries to offload the entire functionality in HW, if
that fails it tries offload parts of the functionality in HW and use the
SW as helper and if also this fails then MRP can't run on this HW.

Horatiu Vultur (4):
  switchdev: mrp: Extend ring_role_mrp and in_role_mrp
  bridge: mrp: Add 'enum br_mrp_hw_support'
  bridge: mrp: Extend br_mrp_switchdev to detect better the errors
  bridge: mrp: Update br_mrp to use new return values of
    br_mrp_switchdev

 include/net/switchdev.h       |   2 +
 net/bridge/br_mrp.c           |  43 +++++---
 net/bridge/br_mrp_switchdev.c | 189 +++++++++++++++++++++++++---------
 net/bridge/br_private_mrp.h   |  38 +++++--
 4 files changed, 195 insertions(+), 77 deletions(-)

-- 
2.27.0

