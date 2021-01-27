Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA71306568
	for <lists.bridge@lfdr.de>; Wed, 27 Jan 2021 21:54:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6779B8624A;
	Wed, 27 Jan 2021 20:54:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k_ilNndL3kx7; Wed, 27 Jan 2021 20:54:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EA6998626B;
	Wed, 27 Jan 2021 20:54:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CDFC4C013A;
	Wed, 27 Jan 2021 20:54:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 94A12C013A
 for <bridge@lists.linux-foundation.org>; Wed, 27 Jan 2021 20:54:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 791A0866D7
 for <bridge@lists.linux-foundation.org>; Wed, 27 Jan 2021 20:54:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1s5A79sKcG3O for <bridge@lists.linux-foundation.org>;
 Wed, 27 Jan 2021 20:54:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7D9528666A
 for <bridge@lists.linux-foundation.org>; Wed, 27 Jan 2021 20:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1611780840; x=1643316840;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vm0CrJTo/kb0nUxUNkkuwbyYmWL4gU6mgVkXg9ndpHg=;
 b=q/uAUf6DkyrWOW3374AQb/+lvRbFtQoG1RfrDeFkvt6/tjHxbrRdua3V
 H8rjWmPpV+IGwdGjAGJRKDtKr8WEKo5HHxltM2kCZUP5pjDd4Ca0WAEe/
 jLCHsPfJlsIUqc7xzof0+PXR47P5u7lfEUm1B1IhmvVAl3Q4Nt+5O5ugW
 uBcLcN7ACWYYb6AFYHhKwBXZkdqpNB8lSZk0TQU7t09Y3RP8Xp/EKz3Rn
 Tl87Or1ivIwTVUJvhy0yP0EtC9Rq1v2GomfglmQWhZKp5CtH4qJbuC+mO
 ZOntkaxkophCiJflGfZWpPhTfPUwnE/2IRHjU2tl4LmvHiQHvyOMkC31s Q==;
IronPort-SDR: IAvxKCBZPGmeA9e4rmrEgkpHvQKhvZb551K2uBe0KlwcyAhAiDb5iESmPTLml9Ls61ar5yhlJ9
 varKrus5ZCJwiCpGhzcA4FcKACvibHzrGY8rSGoc7qh6ZGZ75EiF2cKdT1SFM7wdxFAklkXhQ1
 EgGOmzX0giDiVKVoAJ8KIPyqNLvQKjQrXr51fsP36wC1VBJfIVvMExoRs7SAq0oMrNh0Oc9Je+
 +e0paNW5biU83XNAkmyHBJ/WDvgCL5cQqWa2PFamf8K5PVp+pSleYLCcmCYH0UxbwVhCyzBdu/
 Hs8=
X-IronPort-AV: E=Sophos;i="5.79,380,1602572400"; d="scan'208";a="101667246"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 Jan 2021 13:53:59 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 27 Jan 2021 13:53:59 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Wed, 27 Jan 2021 13:53:57 -0700
To: <jiri@resnulli.us>, <ivecera@redhat.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <roopa@nvidia.com>, <nikolay@nvidia.com>,
 <rasmus.villemoes@prevas.dk>, <andrew@lunn.ch>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Wed, 27 Jan 2021 21:52:37 +0100
Message-ID: <20210127205241.2864728-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v2 0/4] bridge: mrp: Extend
	br_mrp_switchdev_*
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
understanding if the HW can implement the MRP functionality or it needs
to help the HW to run it. There are 3 cases:
- when HW can't implement at all the functionality.
- when HW can implement a part of the functionality but needs the SW
  implement the rest. For example if it can't detect when it stops
  receiving MRP Test frames but it can copy the MRP frames to CPU to
  allow the SW to determine this.  Another example is generating the MRP
  Test frames. If HW can't do that then the SW is used as backup.
- when HW can implement completely the functionality.

So, initially the SW tries to offload the entire functionality in HW, if
that fails it tries offload parts of the functionality in HW and use the
SW as helper and if also this fails then MRP can't run on this HW.

v2:
 - fix typos in comments and in commit messages
 - remove some of the comments
 - move repeated code in helper function
 - fix issue when deleting a node when sw_backup was true

Horatiu Vultur (4):
  switchdev: mrp: Extend ring_role_mrp and in_role_mrp
  bridge: mrp: Add 'enum br_mrp_hw_support'
  bridge: mrp: Extend br_mrp_switchdev to detect better the errors
  bridge: mrp: Update br_mrp to use new return values of
    br_mrp_switchdev

 include/net/switchdev.h       |   2 +
 net/bridge/br_mrp.c           |  43 +++++----
 net/bridge/br_mrp_switchdev.c | 171 +++++++++++++++++++++-------------
 net/bridge/br_private_mrp.h   |  38 ++++++--
 4 files changed, 161 insertions(+), 93 deletions(-)

-- 
2.27.0

