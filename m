Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FDA21E9279
	for <lists.bridge@lfdr.de>; Sat, 30 May 2020 18:11:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7DD5E886D1;
	Sat, 30 May 2020 16:11:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ChBzAn5JmCp8; Sat, 30 May 2020 16:11:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 003F588684;
	Sat, 30 May 2020 16:11:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D65CEC016F;
	Sat, 30 May 2020 16:11:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 670F2C016F
 for <bridge@lists.linux-foundation.org>; Sat, 30 May 2020 16:11:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5B61720354
 for <bridge@lists.linux-foundation.org>; Sat, 30 May 2020 16:11:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vz0yaZE30ZuS for <bridge@lists.linux-foundation.org>;
 Sat, 30 May 2020 16:11:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by silver.osuosl.org (Postfix) with ESMTPS id 2700B20349
 for <bridge@lists.linux-foundation.org>; Sat, 30 May 2020 16:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590855075; x=1622391075;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LsWUZ3Vo3pgKdES5u3EIGHNrOLkQ2RbU+615OKxy1SI=;
 b=vaTAzZmhNRFplA8xDKp4xzwCiCFUGvTH8L32zYWxHtjnh8KRD84V4Jm9
 MLyb4RcQhNuLC80KWDgZzt0lJ+N24NIzMjaIv74pllLyaNLo+y16negwU
 gKjCJc56DIFbapfhbRpeb9FDibGwrdUMI6h2+y0aKP3eq7NjaWc/qsnt9
 IsqNv504Neqhf3YLcfl07vIbLhZVc64HTMqJyUUbp5QVEefS0WrPyk803
 RR3MBxyPf5bVkriBvMSIjVc33xqG4zJfzuaYCMUeDg7BEt9HpSOarv2wo
 REGmewiL1JQ/fb3BdqLnRP+FbhqlcggCAobNAIhNFDkIc6tgLd4i/b/yM Q==;
IronPort-SDR: OqdrAnuviwCfZhiovI71506kcNq/dYqCBphoRNrogKqCaaACKhPD8eT+lm/RbeIi3TEyfP3ZbI
 e04xCbsgD7g4fYflzOWfgZbZnVifc/GBjVPcYeyt29BOTqOCTS844m39pnhaPsN1iTN1G52PYr
 Z7lnK3dJ3HlyqEme3xwL3XgcA28/QpQazrqnfXK8Jr6xg663ldDu7ccJF5j/qQoQKDujoTm2oZ
 r3H2aMcnb79bM5oUfyAIEcnIxSsuRdtWIyiJM3tz7zkWTbAaPoPj5cnPKzCwd4i3EHDUpFoTN3
 KmY=
X-IronPort-AV: E=Sophos;i="5.73,452,1583218800"; d="scan'208";a="14047729"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 30 May 2020 09:11:14 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 30 May 2020 09:11:17 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Sat, 30 May 2020 09:11:11 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <jiri@resnulli.us>, <ivecera@redhat.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <UNGLinuxDriver@microchip.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Sat, 30 May 2020 18:09:45 +0000
Message-ID: <20200530180948.1194569-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v2 0/3] bridge: mrp: Add support for MRA
	role
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
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

This patch series extends the MRP with the MRA role.
A node that has the MRA role can behave as a MRM or as a MRC. In case there are
multiple nodes in the topology that has the MRA role then only one node can
behave as MRM and all the others need to be have as MRC. The node that has the
higher priority(lower value) will behave as MRM.
A node that has the MRA role and behaves as MRC, it just needs to forward the
MRP_Test frames between the ring ports but also it needs to detect in case it
stops receiving MRP_Test frames. In that case it would try to behave as MRM.

v2:
 - add new patch that fixes sparse warnings
 - fix parsing of prio attribute

Horatiu Vultur (3):
  bridge: mrp: Update MRP frame type
  bridge: mrp: Set the priority of MRP instance
  bridge: mrp: Add support for role MRA

 include/net/switchdev.h         |   2 +
 include/uapi/linux/if_bridge.h  |   4 +
 include/uapi/linux/mrp_bridge.h |  60 ++++++++++++---
 net/bridge/br_mrp.c             | 128 +++++++++++++++++++++++++++-----
 net/bridge/br_mrp_netlink.c     |  11 +++
 net/bridge/br_mrp_switchdev.c   |   5 +-
 net/bridge/br_private_mrp.h     |   5 +-
 7 files changed, 182 insertions(+), 33 deletions(-)

-- 
2.26.2

