Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 26DDD30656A
	for <lists.bridge@lfdr.de>; Wed, 27 Jan 2021 21:54:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D3D318494E;
	Wed, 27 Jan 2021 20:54:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9esB3S4Y3q1Z; Wed, 27 Jan 2021 20:54:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6948C84EEA;
	Wed, 27 Jan 2021 20:54:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4DBE9C013A;
	Wed, 27 Jan 2021 20:54:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4FCD4C013A
 for <bridge@lists.linux-foundation.org>; Wed, 27 Jan 2021 20:54:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4C51E8738C
 for <bridge@lists.linux-foundation.org>; Wed, 27 Jan 2021 20:54:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HMPkvpjWCPK1 for <bridge@lists.linux-foundation.org>;
 Wed, 27 Jan 2021 20:54:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.153.233])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8ED2E8737A
 for <bridge@lists.linux-foundation.org>; Wed, 27 Jan 2021 20:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1611780845; x=1643316845;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4l7QtdDF30xMuMl5WJwjk9QOHeOUIvPqe++9uZvWWQ4=;
 b=QSYxuokVAJy89Zh3NShBIohg0a2kb6eDy1SWarqFMqnxPME+YILN++A6
 aNVu9Fuv/lUdQG6ltaHAoVRRC0dBFycJmO8lnC5D/y5Yl04e3konLJr6b
 LRMSC8K1QbIH7ji96xbdhM/G1MYlQONjcivN8XTZAkXWtx1HWlSckHi+B
 Bf9tIzbMRRi9I4pF1Nu9iriu7EUnnAcuWZSxTqgmVPvvZ88YA8h9f5JPR
 ETWpQ+3Ahs8sfouz6qNEzxO/DCzCERdYVTCrvTVAFy/QsbKYtvkYgI3w7
 6zOeyoafFQAuFqZg5ZppE+tbCLHR40AA7BpIqLGlzrixao6M9NeBOPWgQ w==;
IronPort-SDR: ovy3c0dmtRwYTZo0ZxQWJRKhoBaNXy0J9xj725GGN99/o3jcMr0B9qwK3BpIGvoeKZ1VpeXD/2
 P/LuVqdAVslbtp0QeRe1wZwlo7m32s7qWH0tfE7NUZt2ANQGIaw4aR1PEqD25fqfnwiuSn25aW
 L47qK+Nmv65uCKxVyUX0ponve+MuPj1/WtUxF3/9U5/ljBDfX0/X5K+fRGWDjQA/lqsR9vfskH
 2eY9Q4KRx1BSc0IMUQScFLrkitdgQ0HtQ5n4x0WyfXse9zyugFtsWwuYP8tb/G8T/lD3sjtrBA
 dT0=
X-IronPort-AV: E=Sophos;i="5.79,380,1602572400"; d="scan'208";a="112760419"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 Jan 2021 13:54:04 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 27 Jan 2021 13:54:04 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Wed, 27 Jan 2021 13:54:02 -0700
To: <jiri@resnulli.us>, <ivecera@redhat.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <roopa@nvidia.com>, <nikolay@nvidia.com>,
 <rasmus.villemoes@prevas.dk>, <andrew@lunn.ch>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Wed, 27 Jan 2021 21:52:39 +0100
Message-ID: <20210127205241.2864728-3-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210127205241.2864728-1-horatiu.vultur@microchip.com>
References: <20210127205241.2864728-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v2 2/4] bridge: mrp: Add 'enum
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
index 1883118aae55..31e666ae6955 100644
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

