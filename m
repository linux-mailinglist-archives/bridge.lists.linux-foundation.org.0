Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D56C1B2A3D
	for <lists.bridge@lfdr.de>; Tue, 21 Apr 2020 16:42:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0C63D854E3;
	Tue, 21 Apr 2020 14:42:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aVZ87EvWthSX; Tue, 21 Apr 2020 14:42:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id EADAB87C5A;
	Tue, 21 Apr 2020 14:42:48 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D53EAC0175;
	Tue, 21 Apr 2020 14:42:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3CB25C0175
 for <bridge@lists.linux-foundation.org>; Tue, 21 Apr 2020 14:42:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2682087F79
 for <bridge@lists.linux-foundation.org>; Tue, 21 Apr 2020 14:42:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b9sYFpeB8nEe for <bridge@lists.linux-foundation.org>;
 Tue, 21 Apr 2020 14:42:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 54D0787D14
 for <bridge@lists.linux-foundation.org>; Tue, 21 Apr 2020 14:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587480165; x=1619016165;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=xoMFGgH5DELLbtoeobiA873J6IsfnJEOZCpVd+LRec0=;
 b=WOSuVKIV33vm/UttnJYZpB0KT/O5/Nhh4PMn4h7TkqyVOL1QqRnUFuHd
 V9FJJSX2nA08Oj9WfVwHa05gAcpPCc5tJ6OHvcKf8wD1IVkfIWrZ5QQ5T
 TtYvSNXNHCTt8dUPpV6OCOaT0gHppdU/Fa6fvY5L/TBnwMqPpum0QwR3y
 odf9+KkDufliAg1amOJmu0SyNGbQKbDLPENDrwAZsKRxbnpcCD8jBaB9r
 VGH6mLbmXG5P05kyNhuAvQHS46Qo76iY4yVMkFzCgPhnPAr3CSAMgqbhd
 Xh9l7QBMRbczXX2t8n7dPy3tGK9Q4yKSUQbgWEt8CfzsdwCWY9aOHtYld w==;
IronPort-SDR: i4+4A8EGK6183R9m4abc5K3SWHnsHWvDvXQs4vG/ARhOAJ5fkoR+rjaL3bgd0CmjrldolEe29U
 KG1iKFqPaaoiYG1+J/+VwJchVHJ1hCnaDcSSN+5oqrVlp5JDpk/tDvpbqxNlXdsH7J9ULqeXaK
 YJI42JLmyCBVXBdoYtPBFA6SxZrZgxvZ9A4kUdKI3idhab4vCK1nDSHDSIXWcVoM1csINSqLSd
 6BksY9cPVBljeA8xM5UXJZ9cm22dwcbH5VlD+bVC4ZQg/liVlxJDTfFbYip9yzxfbWKqGwJsFy
 zZc=
X-IronPort-AV: E=Sophos;i="5.72,410,1580799600"; d="scan'208";a="72862605"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Apr 2020 07:42:44 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Apr 2020 07:42:44 -0700
Received: from soft-dev3.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 21 Apr 2020 07:42:42 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <nikolay@cumulusnetworks.com>, <davem@davemloft.net>, <jiri@resnulli.us>, 
 <ivecera@redhat.com>, <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <olteanv@gmail.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Tue, 21 Apr 2020 16:37:43 +0200
Message-ID: <20200421143752.2248-3-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200421143752.2248-1-horatiu.vultur@microchip.com>
References: <20200421143752.2248-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v2 02/11] bridge: mrp: Update Kconfig
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

