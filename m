Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BA51620F609
	for <lists.bridge@lfdr.de>; Tue, 30 Jun 2020 15:45:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B1E882035B;
	Tue, 30 Jun 2020 13:45:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PmtTV+P3-gsu; Tue, 30 Jun 2020 13:45:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id B69E722219;
	Tue, 30 Jun 2020 13:45:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8CC2FC016E;
	Tue, 30 Jun 2020 13:45:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 749ACC0865
 for <bridge@lists.linux-foundation.org>; Tue, 30 Jun 2020 13:45:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5A9C186F04
 for <bridge@lists.linux-foundation.org>; Tue, 30 Jun 2020 13:45:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GYCsuLcpn2uW for <bridge@lists.linux-foundation.org>;
 Tue, 30 Jun 2020 13:45:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F3C0F86ACB
 for <bridge@lists.linux-foundation.org>; Tue, 30 Jun 2020 13:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1593524743; x=1625060743;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CBHDKe17OWh23IN1qsZyil4P/7Q7BPKQEEmOkyRy9rQ=;
 b=lA8CbRVN6iu5tG/DdE4/+Kz2bsCgh3RapnIoDNvPSZUDXdWIHt3PzK2c
 imHL83mVAuncASXXgaVfG8L+ydJoKiLcJIJKyeHvs8qns2VAAmops5zYp
 soBum6kvSsrpPoxCgiB21soIznBFXBEAZkgbav3oTD93YXrjqkVJsj+dC
 No2ShAhCZ5D/hPn8govMBsaPRvt0OPnsxRqDUqBL78KaBtJV7RIxkEBE/
 n3xJwAekDMxTEqE1ecde8QvoJCwsVqgz/ho+EdvFDfZnfhpMj34huIEKY
 FMyWhuQrXEvLDYV9N8/juRfd7zRemwJTLLjSXBXNfgyTaiXdREjRW/1mH A==;
IronPort-SDR: ShV7w/bvt3WeZxL/eZIO1kIlTteNSSGYWuUcZTJUjhLUu1YktFFvJO9iLU4slq8+YB3dd/xLsS
 3TX7Qhxtt6ShRTWPx04rrxeMTUH3QutjCmDsPN/igcfVtC9WvkL6XXfsJ8n+uQvEgozzq+Egxr
 PAPnlidYFS10Of8gqwIdhCM1OtWb1VUHyg2XJ5e4yVaA1Z4BST5Wf1epqiUPQSMeg0luJ5juOh
 ABfTZGgmfsAX+eJm2n83iSZXeBruBxEl4GFbFhY3i5Tem20pVJW5QRb1qA/v08tNhk8hA6ywxK
 hJI=
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; d="scan'208";a="85638706"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 30 Jun 2020 06:45:42 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 30 Jun 2020 06:45:42 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 30 Jun 2020 06:45:39 -0700
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <jiri@mellanox.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <UNGLinuxDriver@microchip.com>
Date: Tue, 30 Jun 2020 15:44:22 +0200
Message-ID: <20200630134424.4114086-2-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200630134424.4114086-1-horatiu.vultur@microchip.com>
References: <20200630134424.4114086-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next 1/3] bridge: uapi: mrp: Extend MRP
	attributes to get the status
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

Add MRP attribute IFLA_BRIDGE_MRP_INFO to allow the userspace to get the
current state of the MRP instances. This is a nested attribute that
contains other attributes like, ring id, index of primary and secondary
port, priority, ring state, ring role.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 include/uapi/linux/if_bridge.h | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index caa6914a3e53a..c114c1c2bd533 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -166,6 +166,7 @@ enum {
 	IFLA_BRIDGE_MRP_RING_STATE,
 	IFLA_BRIDGE_MRP_RING_ROLE,
 	IFLA_BRIDGE_MRP_START_TEST,
+	IFLA_BRIDGE_MRP_INFO,
 	__IFLA_BRIDGE_MRP_MAX,
 };
 
@@ -228,6 +229,22 @@ enum {
 
 #define IFLA_BRIDGE_MRP_START_TEST_MAX (__IFLA_BRIDGE_MRP_START_TEST_MAX - 1)
 
+enum {
+	IFLA_BRIDGE_MRP_INFO_UNSPEC,
+	IFLA_BRIDGE_MRP_INFO_RING_ID,
+	IFLA_BRIDGE_MRP_INFO_P_IFINDEX,
+	IFLA_BRIDGE_MRP_INFO_S_IFINDEX,
+	IFLA_BRIDGE_MRP_INFO_PRIO,
+	IFLA_BRIDGE_MRP_INFO_RING_STATE,
+	IFLA_BRIDGE_MRP_INFO_RING_ROLE,
+	IFLA_BRIDGE_MRP_INFO_TEST_INTERVAL,
+	IFLA_BRIDGE_MRP_INFO_TEST_MAX_MISS,
+	IFLA_BRIDGE_MRP_INFO_TEST_MONITOR,
+	__IFLA_BRIDGE_MRP_INFO_MAX,
+};
+
+#define IFLA_BRIDGE_MRP_INFO_MAX (__IFLA_BRIDGE_MRP_INFO_MAX - 1)
+
 struct br_mrp_instance {
 	__u32 ring_id;
 	__u32 p_ifindex;
-- 
2.27.0

