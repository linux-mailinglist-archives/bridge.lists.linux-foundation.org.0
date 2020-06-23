Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB0B204D87
	for <lists.bridge@lfdr.de>; Tue, 23 Jun 2020 11:08:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BB333893BC;
	Tue, 23 Jun 2020 09:08:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0ZP9xvi2xrCG; Tue, 23 Jun 2020 09:08:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3F29989358;
	Tue, 23 Jun 2020 09:08:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 19BCFC0891;
	Tue, 23 Jun 2020 09:08:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3F4E0C016F
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 09:08:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2A0D687FAF
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 09:08:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cS5cSqnw0Dyo for <bridge@lists.linux-foundation.org>;
 Tue, 23 Jun 2020 09:08:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 75DC887E77
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 09:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592903317; x=1624439317;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Hf1oiWAZW47J1FDqvjaGVKeQoXmDU3F9JmfEwLpOK8A=;
 b=mNMCpDFQ/ZlUK35Xj75Q6McXc5Aua3ghekcAFyjU4ujMco7N9BfjX21m
 m57kg8sOQB+wuj69QVrRQt6TmSDA+PXNF7U763w06rlP32ZG7P/ZVTzRz
 zHrD5YhZztOpvb3NhbEJeXJu2BJ3DPmsNCwHHA2GaEx7pZWpHgEEqEIwh
 JvQqSvCCaYdsqpJ1lZUz9jGIx/+gv1qw7MeahAU7d4w1/WkQucZJFh0VI
 AzJwoxrGIxdJsq/x8SoSeeh0Ptc1Gpo9F2V3hHS3TeujlbGzVsse6jwAN
 c3LAndnisSKSM5t6PLkypZITWFuFby5xG16Srr4RciCwLysdK5EiaNGZN w==;
IronPort-SDR: bAhNFfnu/8crGk787M99eNYA9w+l0xyHYdtsp5D4SrMsOMrq/6I365Ggvw21oPBRnpsk18eHbV
 h7uaw5r7dckQA0mFLaG5GhkO5y+PPbGZI1mzvrxRPnficwBB/5ft8VT99ZeM47zoP6YlSoMP/A
 iMvTosg9kA3WlDdRwzfe98tQSwhm1gJjg2ige+TVLOJdKw0AuPFiKeUTBmi22J0pxm9ksQYutN
 N5OenKFSSdE5V4pcgKMbG8fxQPS9JbXfR/9L/cbYG6PckSB8CCrR8VlHd43k4eoRJwv9QJtZps
 CaQ=
X-IronPort-AV: E=Sophos;i="5.75,270,1589266800"; d="scan'208";a="79436702"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jun 2020 02:08:36 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 23 Jun 2020 02:08:25 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 23 Jun 2020 02:08:34 -0700
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <linux-kernel@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <netdev@vger.kernel.org>,
 <UNGLinuxDriver@microchip.com>
Date: Tue, 23 Jun 2020 11:05:39 +0200
Message-ID: <20200623090541.2964760-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net v2 0/2] bridge: mrp: Update MRP_PORT_ROLE
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

This patch series does the following:
- fixes the enum br_mrp_port_role_type. It removes the port role none(0x2)
  because this is in conflict with the standard. The standard defines the
  interconnect port role as value 0x2.
- adds checks regarding current defined port roles: primary(0x0) and
  secondary(0x1).

v2:
 - add the validation code when setting the port role.

Horatiu Vultur (2):
  bridge: uapi: mrp: Fix MRP_PORT_ROLE
  bridge: mrp: Validate when setting the port role

 include/uapi/linux/mrp_bridge.h |  1 -
 net/bridge/br_mrp.c             | 10 ++++++++--
 2 files changed, 8 insertions(+), 3 deletions(-)

-- 
2.26.2

