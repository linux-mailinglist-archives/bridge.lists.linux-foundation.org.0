Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 037A9215478
	for <lists.bridge@lfdr.de>; Mon,  6 Jul 2020 11:20:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D56A78562A;
	Mon,  6 Jul 2020 09:20:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sDpbBqQ6bHnO; Mon,  6 Jul 2020 09:20:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 65463860C6;
	Mon,  6 Jul 2020 09:20:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 495A5C0893;
	Mon,  6 Jul 2020 09:20:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 37636C0893
 for <bridge@lists.linux-foundation.org>; Mon,  6 Jul 2020 09:20:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 30F662283C
 for <bridge@lists.linux-foundation.org>; Mon,  6 Jul 2020 09:20:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UNU4r0nnzOyO for <bridge@lists.linux-foundation.org>;
 Mon,  6 Jul 2020 09:20:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by silver.osuosl.org (Postfix) with ESMTPS id 80FD720021
 for <bridge@lists.linux-foundation.org>; Mon,  6 Jul 2020 09:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1594027243; x=1625563243;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F/Xu5OUeCzkImk52f/kRtq2F+oAA5VX9yTd6BUssrkU=;
 b=v+OlmN0KsZH7k7+JmunBfik1zg8iNPQYfuNeI0HwIhrF6wZKC7RJFPWS
 X/+gha5RSsKzuDWKDuwnqJPLTut1RRfLozl0W4oGsLOcoxS96trHkZiMJ
 YbJE7CkBC6xKF8PQ6dxK/cfFLKvNNcptvajaMhn0yHKacmgFt6FznMwJn
 fnE6D8cEIhpEiclpnINbqbMzlTGU5kVS46yTAnnV5OkluFlBtkKTfoQ9w
 oF08jqBirpFNPAwMTYIIUUXE/0yXIb28ZknKkzxFLSRT4lim1BHXE6uhK
 ccE9fE90YArKdWiDnLgS6zXTHb5+mwuqEcCc8cTqlxR4BUic66fQFr2yQ A==;
IronPort-SDR: NBhGs8IV6chOlyzHO4L7hk7Vnt3huHNlogQnN+1u40qyaV1cVLLd8ZNOyPGrro8LYqfQgg65o9
 r5jWdznidPEnpQ/RwRgr4tLUdMw1/0+GNbCei2FhzFAUXsqKWPknASmFQrXflz7bIG/jVYtZlk
 2F6JntiwTMFjsrnYEpnX2IAFvwh7wjSpSMyZo2iVdEOVt4LtKfflYeH0LofA/MIFKr6LWrHgI7
 ZcF/8VuezG+Z2IWauaTAxLLFYcCbvvbTjpY/b5EfJJGgR3IYKZGTYo7yhuTjLjY5IQgKJuRBgp
 r2I=
X-IronPort-AV: E=Sophos;i="5.75,318,1589266800"; d="scan'208";a="18108964"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Jul 2020 02:20:43 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 6 Jul 2020 02:20:18 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Mon, 6 Jul 2020 02:20:16 -0700
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <jiri@resnulli.us>,
 <ivecera@redhat.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Mon, 6 Jul 2020 11:18:31 +0200
Message-ID: <20200706091842.3324565-2-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200706091842.3324565-1-horatiu.vultur@microchip.com>
References: <20200706091842.3324565-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next 01/12] switchdev: mrp: Extend switchdev
	API for MRP Interconnect
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

Extend switchdev API to add support for MRP interconnect. The HW is
notified in the following cases:

SWITCHDEV_OBJ_ID_IN_ROLE_MRP: This is used when the interconnect role
  of the node changes. The supported roles are MIM and MIC.

SWITCHDEV_OBJ_ID_IN_STATE_MRP: This is used when the interconnect ring
  changes it states to open or closed.

SWITCHDEV_OBJ_ID_IN_TEST_MRP: This is used to start/stop sending
  MRP_InTest frames on all MRP ports. This is called only on nodes that
  have the interconnect role MIM.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 include/net/switchdev.h | 38 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/include/net/switchdev.h b/include/net/switchdev.h
index b8c059b4e06d9..ffa2706d8bc6f 100644
--- a/include/net/switchdev.h
+++ b/include/net/switchdev.h
@@ -76,6 +76,10 @@ enum switchdev_obj_id {
 	SWITCHDEV_OBJ_ID_RING_TEST_MRP,
 	SWITCHDEV_OBJ_ID_RING_ROLE_MRP,
 	SWITCHDEV_OBJ_ID_RING_STATE_MRP,
+	SWITCHDEV_OBJ_ID_IN_TEST_MRP,
+	SWITCHDEV_OBJ_ID_IN_ROLE_MRP,
+	SWITCHDEV_OBJ_ID_IN_STATE_MRP,
+
 #endif
 };
 
@@ -155,6 +159,40 @@ struct switchdev_obj_ring_state_mrp {
 #define SWITCHDEV_OBJ_RING_STATE_MRP(OBJ) \
 	container_of((OBJ), struct switchdev_obj_ring_state_mrp, obj)
 
+/* SWITCHDEV_OBJ_ID_IN_TEST_MRP */
+struct switchdev_obj_in_test_mrp {
+	struct switchdev_obj obj;
+	/* The value is in us and a value of 0 represents to stop */
+	u32 interval;
+	u8 max_miss;
+	u32 in_id;
+	u32 period;
+};
+
+#define SWITCHDEV_OBJ_IN_TEST_MRP(OBJ) \
+	container_of((OBJ), struct switchdev_obj_in_test_mrp, obj)
+
+/* SWICHDEV_OBJ_ID_IN_ROLE_MRP */
+struct switchdev_obj_in_role_mrp {
+	struct switchdev_obj obj;
+	u16 in_id;
+	u32 ring_id;
+	u8 in_role;
+	struct net_device *i_port;
+};
+
+#define SWITCHDEV_OBJ_IN_ROLE_MRP(OBJ) \
+	container_of((OBJ), struct switchdev_obj_in_role_mrp, obj)
+
+struct switchdev_obj_in_state_mrp {
+	struct switchdev_obj obj;
+	u8 in_state;
+	u32 in_id;
+};
+
+#define SWITCHDEV_OBJ_IN_STATE_MRP(OBJ) \
+	container_of((OBJ), struct switchdev_obj_in_state_mrp, obj)
+
 #endif
 
 typedef int switchdev_obj_dump_cb_t(struct switchdev_obj *obj);
-- 
2.27.0

