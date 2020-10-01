Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF34827FD57
	for <lists.bridge@lfdr.de>; Thu,  1 Oct 2020 12:32:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CA390869CC;
	Thu,  1 Oct 2020 10:32:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id byk+rJoYyzB3; Thu,  1 Oct 2020 10:32:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4BDB9869C7;
	Thu,  1 Oct 2020 10:32:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 326B8C0051;
	Thu,  1 Oct 2020 10:32:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 629B3C0051
 for <bridge@lists.linux-foundation.org>; Thu,  1 Oct 2020 10:32:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4D931869BD
 for <bridge@lists.linux-foundation.org>; Thu,  1 Oct 2020 10:32:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Iym6JJ25wf5E for <bridge@lists.linux-foundation.org>;
 Thu,  1 Oct 2020 10:32:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 65329869B9
 for <bridge@lists.linux-foundation.org>; Thu,  1 Oct 2020 10:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1601548361; x=1633084361;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hy/X4MWlgIswHAuMy/xndHrV6UV0/kJxBVphfflqOAM=;
 b=BObZBoBRNhbGl3EAHU2Ik4CBxn+e+jWAe7sEkjQDjnENMyzTBrYnRzTb
 /daCPESEyRdbqM4up12D7dSjlEClKEeH/lkW8SXDrv7gBTxRBX/ikmQxw
 ilkc/YxQbXeCFfsiU1SJP3LeJCPUMe2aDR1pMo0MtS8yvU6SiYqhWuiG8
 9ZJKLi3lTl3uXkzBUULypTedY0gl2NQyVdill+bCWWZcFQx57nKP6LH5g
 rt12ytm1wx1QKtG/8UVqP48hbuZ7JT7xhIAgFy2gtChWs5iBVOzABe0yb
 NyWmHF42LKb8iMfFJKzp94gyRYXl+jKOE5cOS9iA4A17V2LUzs2jc3nAi w==;
IronPort-SDR: jL1SAslHADupuHTzddd9uQaB8HDaeNfYbyRVjeD8kJR/6t9lteO0hKwFT/JyksYkpsgMndv53u
 qSPFwg5wb2ettm8cF6bQm8EEpmc2Qz/5s0qNhDzVHV3Ix/8a3fjg7xNMrDuBCFgKCvSZATGZrE
 jAzONqF7+RNL1HfiVazSBmrfXlQHeqIyBb/UO5TcAr4EwzNyswi65w6eLY5cMyNCKeUhhu9Rth
 hSO2PL1uJBoGe2A5S3MvpH+6ExUid7Ym6wV3KNwwYQLn1yHjtYj370Mr66kS6CTCDjQ6Unc4NK
 e9Q=
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="91069515"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Oct 2020 03:32:40 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 1 Oct 2020 03:32:15 -0700
Received: from soft-test08.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Thu, 1 Oct 2020 03:32:13 -0700
To: <davem@davemloft.net>, <kuba@kernel.org>, <roopa@nvidia.com>,
 <nikolay@nvidia.com>, <jiri@mellanox.com>, <idosch@mellanox.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <UNGLinuxDriver@microchip.com>
Date: Thu, 1 Oct 2020 10:30:10 +0000
Message-ID: <20201001103019.1342470-3-henrik.bjoernlund@microchip.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001103019.1342470-1-henrik.bjoernlund@microchip.com>
References: <20201001103019.1342470-1-henrik.bjoernlund@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>,
 Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [net-next v2 02/11] bridge: cfm: Add BRIDGE_CFM to Kconfig.
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

Reviewed-by: Horatiu Vultur  <horatiu.vultur@microchip.com>
Signed-off-by: Henrik Bjoernlund  <henrik.bjoernlund@microchip.com>
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
index 747f6f08f439..c7b0e91547f6 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -492,6 +492,9 @@ struct net_bridge {
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

