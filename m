Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 258021B0F77
	for <lists.bridge@lfdr.de>; Mon, 20 Apr 2020 17:12:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4DFE987E38;
	Mon, 20 Apr 2020 15:12:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ASiRL6rPMIVE; Mon, 20 Apr 2020 15:12:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 106AF87E41;
	Mon, 20 Apr 2020 15:12:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EF091C0177;
	Mon, 20 Apr 2020 15:11:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 796B7C0177
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 15:11:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6949387E25
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 15:11:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tPT8l5DUYW8f for <bridge@lists.linux-foundation.org>;
 Mon, 20 Apr 2020 15:11:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DB4A987E24
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 15:11:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587395517; x=1618931517;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=xoMFGgH5DELLbtoeobiA873J6IsfnJEOZCpVd+LRec0=;
 b=yJCzIVIJ0iaaRXr9NF+wjn/48ndoGk74JT+oPtw7R4f8nNY+oCZiCA2c
 iijINzVM/QxmirgoiD5Hz9E80n2KODLAZ2hOEIq5bPvmmCVxR9gqxBSZx
 TgADaLnGclK5VjHIVXFYqOnhPgNGP8mdhhcLAOw+gV+VJD9qu3CTTMeB4
 lGd3KYsPeDAxqrVOVjdMb35SjkwMhhH2QrKDn7uOrx+Sb8Uhn8s3rSZ5m
 0ndjuraLWZpS98DROnOZKmdRLYOABSP/cL/Agy7JfQcQxajudP6crudCE
 8CvmNC80FHzaWkzGJzKlaENkP0g83PWs1pdkPSfHzVLp7Xzhyq+odJwlz g==;
IronPort-SDR: f9c6UtfmsTQvwhLTF2AOtrCsYp8sFoitjbbIc31etdZvkz+Vrk0k41Fp7w/nP9+ETCQ3yKr4Yl
 RufnuOBX1Ng47KYQdfpFTd67PtvMBygOV2/nXiwQSfIHHVGrHjAhPXov4a+sh4NxBghDsUcYIS
 gSNjV14J6JB23vc6dwvCcYR/x987VxhZpi+qUfhVVqZFojmLdw5VKeqAKByocGGyazyvmCZU/j
 DqbKHL2ZbGB1dZt+xkwnyEyoJQYmfTM62YSULZDklM0NPiNVDvVwDkSHorKbSCfZQmJKjt9xb4
 8DA=
X-IronPort-AV: E=Sophos;i="5.72,406,1580799600"; d="scan'208";a="73911539"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Apr 2020 08:11:49 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 20 Apr 2020 08:11:55 -0700
Received: from soft-dev3.microsemi.net (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 20 Apr 2020 08:11:18 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <nikolay@cumulusnetworks.com>, <davem@davemloft.net>, <jiri@resnulli.us>, 
 <ivecera@redhat.com>, <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <olteanv@gmail.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Mon, 20 Apr 2020 17:09:37 +0200
Message-ID: <20200420150947.30974-4-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200420150947.30974-1-horatiu.vultur@microchip.com>
References: <20200420150947.30974-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next 03/13] bridge: mrp: Update Kconfig
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

Add the option BRIDGE_MRP to allow to build in or not MRP support.
The default value is N.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/Kconfig | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/net/bridge/Kconfig b/net/bridge/Kconfig
index e4fb050e2078..51a6414145d2 100644
--- a/net/bridge/Kconfig
+++ b/net/bridge/Kconfig
@@ -61,3 +61,15 @@ config BRIDGE_VLAN_FILTERING
 	  Say N to exclude this support and reduce the binary size.
 
 	  If unsure, say Y.
+
+config BRIDGE_MRP
+	bool "MRP protocol"
+	depends on BRIDGE
+	default n
+	help
+	  If you say Y here, then the Ethernet bridge will be able to run MRP
+	  protocol to detect loops
+
+	  Say N to exclude this support and reduce the binary size.
+
+	  If unsure, say N.
-- 
2.17.1

