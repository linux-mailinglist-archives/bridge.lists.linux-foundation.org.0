Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF351B0F75
	for <lists.bridge@lfdr.de>; Mon, 20 Apr 2020 17:11:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1A4A486E15;
	Mon, 20 Apr 2020 15:11:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BUl6TK+LdUSl; Mon, 20 Apr 2020 15:11:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8DF5186E4E;
	Mon, 20 Apr 2020 15:11:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 76009C0177;
	Mon, 20 Apr 2020 15:11:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 359C4C0177
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 15:11:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2484487E1D
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 15:11:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oAG2LDncgzGH for <bridge@lists.linux-foundation.org>;
 Mon, 20 Apr 2020 15:11:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 24DB087CB2
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 15:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587395512; x=1618931512;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=I+CGxBoZd30PrmJpCWLZZXkNEaYyfUWmvp7NQzpTBRk=;
 b=1X3ERxk5lIa5Y7kTBarcvh2s4QmL/gc5RYAviz3DsIpADFSs7lHlPZXr
 iwIvfGD+7+uekc152wZrPfgBT2QsrSIYHN0VNoSK5p14D/4bvqe88xxcN
 LljC6vb9xNnIKrENch2aHDxGla6L39p1kcOUSIOZrDQJ8726lSVNjllHQ
 JxgYKhzZbp7kcQw+V8K+rx7+oZEiZZudiseTG0QoRTSHFzFzITUXzHo4Y
 F5LEHnCpWzUHssLoc0VnvK2WwFUimOrv9iZwVqr385jC1sXqGjV/jJx8U
 PIDv4lNio7JC3XqOy9sSSmOTpNtDatn2u0/4E3rWRZPK+sPZXJiQp1JUt g==;
IronPort-SDR: /ydmGUUHXU9Onq5ymUShgIFnmjIen0HgEpyWhpT0Vu8nSDHO3uv2TcCIj0v8w74fLaffs321Dg
 Ay97oQbZkkdQl/wzt/zBEh/H5w+UCXMJ9RhBa/qVX5Txbst9LAO2cMM3+7Tcvlb59WPe9IIIAt
 ticHxHhxcEFLE574GAyPf4CXHKnpHyxx4ghHBClI9TxjQgQFg28GYcFuql4Y/8HnVlO5YW0YCh
 JYL0YeB7xhdXSopL/gCfRPwo4o2zGPxwfFOtDn+pneHvlVq38jiF18GB3tKHT+68wfMPTp17MA
 8C0=
X-IronPort-AV: E=Sophos;i="5.72,406,1580799600"; d="scan'208";a="72755073"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Apr 2020 08:11:52 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 20 Apr 2020 08:11:52 -0700
Received: from soft-dev3.microsemi.net (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 20 Apr 2020 08:11:21 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <nikolay@cumulusnetworks.com>, <davem@davemloft.net>, <jiri@resnulli.us>, 
 <ivecera@redhat.com>, <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <olteanv@gmail.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Mon, 20 Apr 2020 17:09:38 +0200
Message-ID: <20200420150947.30974-5-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200420150947.30974-1-horatiu.vultur@microchip.com>
References: <20200420150947.30974-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next 04/13] bridge: mrp: Expose function
	br_mrp_port_open
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

In case the HW is capable to detect when the MRP ring is open or closed. It is
expected that the network driver will notify the SW that the ring is open or
closed.

The function br_mrp_port_open is used to notify the kernel that one of the ports
stopped receiving MRP_Test frames. The argument 'loc' has a value of '1' when
the port stopped receiving MRP_Test and '0' when it started to receive MRP_Test.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 include/linux/mrp_bridge.h | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)
 create mode 100644 include/linux/mrp_bridge.h

diff --git a/include/linux/mrp_bridge.h b/include/linux/mrp_bridge.h
new file mode 100644
index 000000000000..61c1f0d395c7
--- /dev/null
+++ b/include/linux/mrp_bridge.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef _LINUX_MRP_BRIDGE_H
+#define _LINUX_MRO_BRIDGE_H
+
+#include <linux/netdevice.h>
+
+/* The drivers are responsible to call this function when it detects that the
+ * MRP port stopped receiving MRP_Test frames or it started to receive MRP_Test.
+ * The argument dev represents the port and loc(Lost of Continuity) has a value
+ * of 1 when it stopped receiving MRP_Test frames and a value of 0 when it
+ * started to receive frames.
+ * Needs to be called with rcu_read_lock().
+ *
+ * This eventually notify the userspace which is required to react on these
+ * changes.
+ */
+
+#if IS_ENABLED(CONFIG_BRIDGE_MRP)
+int br_mrp_port_open(struct net_device *dev, u8 loc);
+#else
+static inline int br_mrp_port_open(struct net_device *dev, u8 loc)
+{
+}
+#endif
+
+#endif
-- 
2.17.1

