Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B41F1A7957
	for <lists.bridge@lfdr.de>; Tue, 14 Apr 2020 13:27:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 81AAD87695;
	Tue, 14 Apr 2020 11:27:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3VF-zUEM54b6; Tue, 14 Apr 2020 11:27:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id DA1098739E;
	Tue, 14 Apr 2020 11:27:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C8476C0172;
	Tue, 14 Apr 2020 11:27:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5BD4EC0172
 for <bridge@lists.linux-foundation.org>; Tue, 14 Apr 2020 11:27:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4B57A8464C
 for <bridge@lists.linux-foundation.org>; Tue, 14 Apr 2020 11:27:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pX360xZNhe_P for <bridge@lists.linux-foundation.org>;
 Tue, 14 Apr 2020 11:27:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D9E90850E1
 for <bridge@lists.linux-foundation.org>; Tue, 14 Apr 2020 11:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586863637; x=1618399637;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=bgal25Q2GLlB11cf7TVsL0b4pEAKBlQgQ2+f0ocKzAw=;
 b=2AwyDrd7zSLDlCq/kpl2L+PU4PdOgAw9MwikaDSOyMyOtl/+EOiyP9qg
 7WdHs2WA+NcEOse26b0qe27IWDXEjRq+Sat5UcTRPcB6yFuzQ/URBV+z/
 pafcnLHsgbCKe8BRUcW/RRFILbMVJnuyRxdzJyS6YI8N0idBAKUGfbYJr
 wvKyu6+LhD4rqajLD7tTIhxULsyGHnjdhshydYwrLA8AFPcGLZbq5sERS
 CnoTP93wV2vKicR4/Elfq5HeKuPkgNiyzDgQz6qRGilWSoC11unrZ/mE6
 +FQjkcDKfHn6q5xb1mE6JVD/gK+e9DootCTuxmX+i/tMYP8QB6UMmZnSk A==;
IronPort-SDR: FyX6K0vNEkVdhwRsCL9eiSdv7aItkODXd3Lk3HnNjfVx3Ql4HoDErhwnrIzoJgVV1nvzILIPgW
 lctKj78CbMqvGjgZ7laVmI2I7CJMlp9K5RCRs+JG3GaHAhgPhkO6EHYGBLj5Ae5kDYYPYaZI8E
 JiZgZsh35IhX4FoiXCPmXs60xvosDQtlKDmsApiJIEgV2zFPoNrEMPrxriL264luDHtMuqHzP2
 5tBkAcj36BSXuwYUASUXAYRV3WOpKFVmkDGwVvwP/Qg8c6B3FhX1fLX/AxiH94EDel/ldcgAL8
 vyc=
X-IronPort-AV: E=Sophos;i="5.72,382,1580799600"; d="scan'208";a="75809061"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Apr 2020 04:27:16 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 14 Apr 2020 04:27:03 -0700
Received: from soft-dev3.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 14 Apr 2020 04:27:14 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <nikolay@cumulusnetworks.com>, <davem@davemloft.net>, <jiri@resnulli.us>, 
 <ivecera@redhat.com>, <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <olteanv@gmail.com>, <andrew@lunn.ch>, <linux-kernel@vger.kernel.org>,
 <netdev@vger.kernel.org>, <bridge@lists.linux-foundation.org>,
 <UNGLinuxDriver@microchip.com>
Date: Tue, 14 Apr 2020 13:26:11 +0200
Message-ID: <20200414112618.3644-3-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414112618.3644-1-horatiu.vultur@microchip.com>
References: <20200414112618.3644-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [RFC net-next v5 2/9] bridge: mrp: Update Kconfig and
	Makefile
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
 net/bridge/Kconfig  | 12 ++++++++++++
 net/bridge/Makefile |  2 ++
 2 files changed, 14 insertions(+)

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
diff --git a/net/bridge/Makefile b/net/bridge/Makefile
index 49da7ae6f077..9bf3e1be3328 100644
--- a/net/bridge/Makefile
+++ b/net/bridge/Makefile
@@ -25,3 +25,5 @@ bridge-$(CONFIG_BRIDGE_VLAN_FILTERING) += br_vlan.o br_vlan_tunnel.o br_vlan_opt
 bridge-$(CONFIG_NET_SWITCHDEV) += br_switchdev.o
 
 obj-$(CONFIG_NETFILTER) += netfilter/
+
+bridge-$(CONFIG_BRIDGE_MRP)	+= br_mrp.o br_mrp_netlink.o br_mrp_switchdev.o
-- 
2.17.1

