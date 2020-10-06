Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9FF284E83
	for <lists.bridge@lfdr.de>; Tue,  6 Oct 2020 16:58:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9CEC82002C;
	Tue,  6 Oct 2020 14:58:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kEB8qumf3u3h; Tue,  6 Oct 2020 14:58:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 06D80214EB;
	Tue,  6 Oct 2020 14:55:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D9651C07FF;
	Tue,  6 Oct 2020 14:55:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2FBB7C0051
 for <bridge@lists.linux-foundation.org>; Tue,  6 Oct 2020 14:55:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1E95387005
 for <bridge@lists.linux-foundation.org>; Tue,  6 Oct 2020 14:55:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GSvruv3BFmYy for <bridge@lists.linux-foundation.org>;
 Tue,  6 Oct 2020 14:55:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C971D87006
 for <bridge@lists.linux-foundation.org>; Tue,  6 Oct 2020 14:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1601996146; x=1633532146;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FHI9pF1PqUVmJKyaV+8zX2DLW8NZ18t1BrTCAp6IIdc=;
 b=xTEG65pg1CbaEw64KtnUoRYQaju5T3qF0fGPSLSx+N5K3qGmwgG8lhil
 yT2x2Hol952VXR6S3xzJaOKPOHvnit8OTkehGEATq4KUMpvxxjv7nSBEi
 4umCVx/i44BU2pZBRfaSsKmjQ847pVNb+RE/RHREry9F2CDto05/STDgL
 KXsniuhimDgyRyjluld/Y1TWu5QNAXo7wyPSV4baz1uB0E3v0o2sFKdsO
 rxWQsy20AAI29g+Ngc7/s9t25b+u4nokbKVHIEBqW4FpXw6ebwml6lc4u
 WmofQZB91MjJN60OKBcLqoahYVsZg3eSG45hBH9KxYHb5nqmGxgQyRILX w==;
IronPort-SDR: bYTjLNM32XCgMafyI5xnJwq3FCVkix9WK8CBrGQhm7BGZt8a+5+6yMmkqpTzpw6k4WgRgcApj1
 6laqznpqhW8wVRDftB+ew5BBMGtsJFIGgDzh7J1KkdZoX/CsTGgpBfe8mR3WEp2Q7sTnS4cxqp
 547FniPIm/TXFw0CCvv1xhTrTEBAgbJvQGXo4oymn/N6RA/tkTWDZd0cpT5lfE/hKf4jLh5Vwa
 pNiP51GmeQSN4Rn3JQIG6CiNQAkIehpwoa+XpGPMbKEO82nHVkMcnOU1nncSTlZN/9VE9wQLOF
 Exc=
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="94386884"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Oct 2020 07:55:45 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 6 Oct 2020 07:55:45 -0700
Received: from soft-test08.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 6 Oct 2020 07:55:43 -0700
To: <davem@davemloft.net>, <kuba@kernel.org>, <roopa@nvidia.com>,
 <nikolay@nvidia.com>, <jiri@resnulli.us>, <idosch@mellanox.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <UNGLinuxDriver@microchip.com>
Date: Tue, 6 Oct 2020 14:53:31 +0000
Message-ID: <20201006145338.1956886-3-henrik.bjoernlund@microchip.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201006145338.1956886-1-henrik.bjoernlund@microchip.com>
References: <20201006145338.1956886-1-henrik.bjoernlund@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>,
 Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [net-next v3 2/9] bridge: cfm: Add BRIDGE_CFM to Kconfig.
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
From: Henrik Bjoernlund via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

This makes it possible to include or exclude the CFM
protocol according to 802.1Q section 12.14.

Signed-off-by: Henrik Bjoernlund  <henrik.bjoernlund@microchip.com>
Reviewed-by: Horatiu Vultur  <horatiu.vultur@microchip.com>
---
 net/bridge/Kconfig      | 11 +++++++++++
 net/bridge/br_device.c  |  3 +++
 net/bridge/br_private.h |  3 +++
 3 files changed, 17 insertions(+)

diff --git a/net/bridge/Kconfig b/net/bridge/Kconfig
index 80879196560c..3c8ded7d3e84 100644
--- a/net/bridge/Kconfig
+++ b/net/bridge/Kconfig
@@ -73,3 +73,14 @@ config BRIDGE_MRP
 	  Say N to exclude this support and reduce the binary size.
 
 	  If unsure, say N.
+
+config BRIDGE_CFM
+	bool "CFM protocol"
+	depends on BRIDGE
+	help
+	  If you say Y here, then the Ethernet bridge will be able to run CFM
+	  protocol according to 802.1Q section 12.14
+
+	  Say N to exclude this support and reduce the binary size.
+
+	  If unsure, say N.
diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
index 206c4ba51cd2..2a3b316f32eb 100644
--- a/net/bridge/br_device.c
+++ b/net/bridge/br_device.c
@@ -476,6 +476,9 @@ void br_dev_setup(struct net_device *dev)
 	INIT_HLIST_HEAD(&br->frame_type_list);
 #if IS_ENABLED(CONFIG_BRIDGE_MRP)
 	INIT_LIST_HEAD(&br->mrp_list);
+#endif
+#if IS_ENABLED(CONFIG_BRIDGE_CFM)
+	INIT_HLIST_HEAD(&br->mep_list);
 #endif
 	spin_lock_init(&br->hash_lock);
 
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 3e62ce2ef8a5..95c82fce9959 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -485,6 +485,9 @@ struct net_bridge {
 #if IS_ENABLED(CONFIG_BRIDGE_MRP)
 	struct list_head		mrp_list;
 #endif
+#if IS_ENABLED(CONFIG_BRIDGE_CFM)
+	struct hlist_head		mep_list;
+#endif
 };
 
 struct br_input_skb_cb {
-- 
2.28.0

