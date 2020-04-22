Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B017F1B4A43
	for <lists.bridge@lfdr.de>; Wed, 22 Apr 2020 18:21:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 125C286DEB;
	Wed, 22 Apr 2020 16:21:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NFIOYTUWzcKw; Wed, 22 Apr 2020 16:21:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id AB76787620;
	Wed, 22 Apr 2020 16:21:50 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8D7BFC0175;
	Wed, 22 Apr 2020 16:21:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A0DE9C0175
 for <bridge@lists.linux-foundation.org>; Wed, 22 Apr 2020 16:21:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9D2E1863AC
 for <bridge@lists.linux-foundation.org>; Wed, 22 Apr 2020 16:21:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sISCcSnD2giq for <bridge@lists.linux-foundation.org>;
 Wed, 22 Apr 2020 16:21:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 68F2F86403
 for <bridge@lists.linux-foundation.org>; Wed, 22 Apr 2020 16:21:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587572508; x=1619108508;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=xoMFGgH5DELLbtoeobiA873J6IsfnJEOZCpVd+LRec0=;
 b=Kh6eHupfzz5RVxor0yr5pi9QV7FdB3j/YZSAvrFrbMcxG4a0oo3px8gk
 SsfKJ8BQ+SUd3CljZKnknjJ1ZFldqnPZaBHTALnYHIIvo2WtyIFtIkDxj
 CG+AqmQOKOwtvncubuCoQ92RNzgXNtYrfLfKL/N43kYp+iwqcEQCKVWaE
 b+daLKvb6U+7E7swiNCjyIQm+siY42iBP5ju7Y7n+GiljXxVLcDQfjsNh
 WVvMU4a3SxItfIDjLf335cZLVXeP/Pt2WskSf/u12Y034TtEEO13TnyZj
 KZ7CPcnYU+agxyiYcpMdfFJ3jv0jI8K1Nz3nS5K9tsVTOgKVkuRlizpWP A==;
IronPort-SDR: DN94evDVfPz+jYpaexez0GVVMpuHEi6Nl6OgCEy0+wA5Yx7UcNnSPFbigXdHT4U/INSprDlr9I
 KhtZ6qMW1/KBO9im2S1PlkWujOrN0u00fiPrLHODcQOr4+Qs0L2utnWP8yLLSBzTQ6CShZk6Ai
 CiVx9sAt2912S4VtCrWIZaUflOq137zOvWhBH/RqzCWnf0RU3zVLT4H9S6FoFGCkm2a9f2rhDk
 ATdKyC/kXSo603YN0QVSLk5svO06PFe1LmD5lbE1ZMGPo5kaW4BTqNZcop3+TbV4K6Tuny7kXF
 Ia4=
X-IronPort-AV: E=Sophos;i="5.73,304,1583218800"; d="scan'208";a="73007263"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 22 Apr 2020 09:21:47 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 22 Apr 2020 09:21:47 -0700
Received: from soft-dev3.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 22 Apr 2020 09:21:46 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <nikolay@cumulusnetworks.com>, <davem@davemloft.net>, <jiri@resnulli.us>, 
 <ivecera@redhat.com>, <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <olteanv@gmail.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Wed, 22 Apr 2020 18:18:24 +0200
Message-ID: <20200422161833.1123-3-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200422161833.1123-1-horatiu.vultur@microchip.com>
References: <20200422161833.1123-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v3 02/11] bridge: mrp: Update Kconfig
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

