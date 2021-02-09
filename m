Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 615073157AA
	for <lists.bridge@lfdr.de>; Tue,  9 Feb 2021 21:24:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5E936F693
	for <lists.bridge@lfdr.de>; Tue,  9 Feb 2021 20:24:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id riyUbvh0UbZo for <lists.bridge@lfdr.de>;
	Tue,  9 Feb 2021 20:24:54 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 3E9826F6AA; Tue,  9 Feb 2021 20:24:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 040276F67B;
	Tue,  9 Feb 2021 20:24:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D0324C1834;
	Tue,  9 Feb 2021 20:24:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 508FEC013A
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 20:24:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4BF1B87264
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 20:24:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id deRi-B4sJdZZ for <bridge@lists.linux-foundation.org>;
 Tue,  9 Feb 2021 20:24:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.153.233])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AFA9087263
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 20:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1612902263; x=1644438263;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EHLVPvUVJez21AH8PebxAXBSYM5AvLzTmtWmafYTWPs=;
 b=YwYcsCaQVyflmkG8UJZeWem+5G+C9IYXwYCXFN9/jIOQvY6t5n7OLVEg
 i3M+FMtCMTv0bbUqNs9MJRo9STlMXAmICFk4uwvsucO7NETwheNHr/red
 pjXXMzxhm2MzFAhgHWAkHFo3UCOyrf1W9TcdqgeKn87anFZFzpZio6XeJ
 P7JW7grTFta9rcbLyTtzPKJMJpXV/XxaiDVRP2oBWcX2sZZC7UYBeke7m
 2/qXgcgQeKC/3Er0nBgdzjZlLkyXbTdOzmJbgujtXL8qyJB0LmUF7lJgg
 GRPlhnnt6UhNYMAt5sHgZgxRhp5TCYzyi9p93vaH2cljtLCIJ9zrqUu7z g==;
IronPort-SDR: Oju202nIkkMU8pXEVI3BqXqb0RWdKUozUz5kt4tNCAFAd0J2XSBaRxcWdKWH6AIB6QwXo7p9nv
 IJ2b8Be5yRgZ1p+wxko5mTvhyuQ77QULLOgBSBS68lvPt0/A8/hjG0n0h2O/sRRGfgmb3Zf6oU
 r/VaFOWSeknhPem7dgzrcZnFNmE1llE6xEu+IVmhmFF/Zo2Nwj5jU37uuCuzJJYYh/elcGLQek
 JpqCTXTRK1/s4ywwO74fK8t7RGCOq5dV6TCnW04ZpJckOEG7fpbyc9NT6NAv5KvcuZs+Xw7Sk4
 G+Y=
X-IronPort-AV: E=Sophos;i="5.81,166,1610434800"; d="scan'208";a="114457590"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Feb 2021 13:24:22 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 9 Feb 2021 13:24:22 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 9 Feb 2021 13:24:19 -0700
To: <jiri@resnulli.us>, <ivecera@redhat.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <roopa@nvidia.com>, <nikolay@nvidia.com>,
 <rasmus.villemoes@prevas.dk>, <andrew@lunn.ch>, <vladimir.oltean@nxp.com>,
 <claudiu.manoil@nxp.com>, <alexandre.belloni@bootlin.com>,
 <UNGLinuxDriver@microchip.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Tue, 9 Feb 2021 21:21:09 +0100
Message-ID: <20210209202112.2545325-3-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210209202112.2545325-1-horatiu.vultur@microchip.com>
References: <20210209202112.2545325-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v3 2/5] bridge: mrp: Add 'enum
	br_mrp_hw_support'
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

Add the enum br_mrp_hw_support that is used by the br_mrp_switchdev
functions to allow the SW to detect the cases where HW can't implement
the functionality or when SW is used as a backup.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_private_mrp.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/net/bridge/br_private_mrp.h b/net/bridge/br_private_mrp.h
index 32a48e5418da..a94017f86cda 100644
--- a/net/bridge/br_private_mrp.h
+++ b/net/bridge/br_private_mrp.h
@@ -46,6 +46,20 @@ struct br_mrp {
 	struct rcu_head			rcu;
 };
 
+/* This type is returned by br_mrp_switchdev functions that allow to have a SW
+ * backup in case the HW can't implement completely the protocol.
+ * BR_MRP_NONE - means the HW can't run at all the protocol, so the SW stops
+ *               configuring the node anymore.
+ * BR_MRP_SW - the HW can help the SW to run the protocol, by redirecting MRP
+ *             frames to CPU.
+ * BR_MRP_HW - the HW can implement completely the protocol.
+ */
+enum br_mrp_hw_support {
+	BR_MRP_NONE,
+	BR_MRP_SW,
+	BR_MRP_HW,
+};
+
 /* br_mrp.c */
 int br_mrp_add(struct net_bridge *br, struct br_mrp_instance *instance);
 int br_mrp_del(struct net_bridge *br, struct br_mrp_instance *instance);
-- 
2.27.0

