Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0B299F6E
	for <lists.bridge@lfdr.de>; Thu, 22 Aug 2019 21:08:32 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D05FADA3;
	Thu, 22 Aug 2019 19:08:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 668BCD88
	for <bridge@lists.linux-foundation.org>;
	Thu, 22 Aug 2019 19:08:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
	[68.232.153.233])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DB6BE67F
	for <bridge@lists.linux-foundation.org>;
	Thu, 22 Aug 2019 19:08:04 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
	Horatiu.Vultur@microchip.com designates 198.175.253.82 as
	permitted sender) identity=mailfrom;
	client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
	envelope-from="Horatiu.Vultur@microchip.com";
	x-sender="Horatiu.Vultur@microchip.com";
	x-conformance=spf_only; x-record-type="v=spf1";
	x-record-text="v=spf1 mx a:ushub1.microchip.com
	a:smtpout.microchip.com a:mx1.microchip.iphmx.com
	a:mx2.microchip.iphmx.com include:servers.mcsv.net
	include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
	authenticity information available from domain of
	postmaster@email.microchip.com) identity=helo;
	client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
	envelope-from="Horatiu.Vultur@microchip.com";
	x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
	dkim=none (message not signed) header.i=none;
	spf=Pass smtp.mailfrom=Horatiu.Vultur@microchip.com;
	spf=None smtp.helo=postmaster@email.microchip.com;
	dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: T6Ah67mpIuhR2Gk7/jInGITH6aLli7Idi0AX8T/n+Bi6whsvGIB7qNSm0PplyZBimIjSmQxPqR
	SQH53qc5GUj1xgju9QJvHLR7G7bXYCci9MJLWAEhju+ZPdLKpHtU4YnczI86bgtmqNopPspfzG
	INjcrob4MkuansLamg0sz6f1ZiKxozCj9gsGLRfUzuVXUP4Wt4MsjPxCvVqU5facJAb0xsWp9A
	1RNRLeUTnCRBuZ1gybK31QY+iqx0nVjOWQN9EriUcsM4o/YFPmiLXqSjo7cwLHVBHn8dvevAQn
	ZIc=
X-IronPort-AV: E=Sophos;i="5.64,417,1559545200"; d="scan'208";a="46283506"
Received: from smtpout.microchip.com (HELO email.microchip.com)
	([198.175.253.82])
	by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
	22 Aug 2019 12:08:04 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
	chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
	15.1.1713.5; Thu, 22 Aug 2019 12:08:02 -0700
Received: from soft-dev3.microsemi.net (10.10.85.251) by
	chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
	15.1.1713.5 via Frontend Transport; Thu, 22 Aug 2019 12:08:00 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <roopa@cumulusnetworks.com>, <nikolay@cumulusnetworks.com>,
	<davem@davemloft.net>, <UNGLinuxDriver@microchip.com>,
	<alexandre.belloni@bootlin.com>, <allan.nielsen@microchip.com>,
	<netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<bridge@lists.linux-foundation.org>
Date: Thu, 22 Aug 2019 21:07:28 +0200
Message-ID: <1566500850-6247-2-git-send-email-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566500850-6247-1-git-send-email-horatiu.vultur@microchip.com>
References: <1566500850-6247-1-git-send-email-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH 1/3] net: Add HW_BRIDGE offload feature
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

This patch adds a netdev feature to configure the HW as a switch.
The purpose of this flag is to show that the hardware can do switching
of the frames.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 include/linux/netdev_features.h |  3 +++
 net/bridge/br_if.c              | 29 ++++++++++++++++++++++++++++-
 net/core/ethtool.c              |  1 +
 3 files changed, 32 insertions(+), 1 deletion(-)

diff --git a/include/linux/netdev_features.h b/include/linux/netdev_features.h
index 4b19c54..34274de 100644
--- a/include/linux/netdev_features.h
+++ b/include/linux/netdev_features.h
@@ -78,6 +78,8 @@ enum {
 	NETIF_F_HW_TLS_TX_BIT,		/* Hardware TLS TX offload */
 	NETIF_F_HW_TLS_RX_BIT,		/* Hardware TLS RX offload */
 
+	NETIF_F_HW_BRIDGE_BIT,		/* Bridge offload support */
+
 	NETIF_F_GRO_HW_BIT,		/* Hardware Generic receive offload */
 	NETIF_F_HW_TLS_RECORD_BIT,	/* Offload TLS record */
 
@@ -150,6 +152,7 @@ enum {
 #define NETIF_F_GSO_UDP_L4	__NETIF_F(GSO_UDP_L4)
 #define NETIF_F_HW_TLS_TX	__NETIF_F(HW_TLS_TX)
 #define NETIF_F_HW_TLS_RX	__NETIF_F(HW_TLS_RX)
+#define NETIF_F_HW_BRIDGE	__NETIF_F(HW_BRIDGE)
 
 /* Finds the next feature with the highest number of the range of start till 0.
  */
diff --git a/net/bridge/br_if.c b/net/bridge/br_if.c
index 4fe30b1..975a34c 100644
--- a/net/bridge/br_if.c
+++ b/net/bridge/br_if.c
@@ -127,6 +127,31 @@ static void br_port_clear_promisc(struct net_bridge_port *p)
 	p->flags &= ~BR_PROMISC;
 }
 
+/* Determin if the SW bridge can be offloaded to HW. Return true if all
+ * the interfaces of the bridge have the feature NETIF_F_HW_SWITCHDEV set
+ * and have the same netdev_ops.
+ */
+static int br_hw_offload(struct net_bridge *br)
+{
+	const struct net_device_ops *ops = NULL;
+	struct net_bridge_port *p;
+
+	list_for_each_entry(p, &br->port_list, list) {
+		if (!(p->dev->hw_features & NETIF_F_HW_BRIDGE))
+			return 0;
+
+		if (!ops) {
+			ops = p->dev->netdev_ops;
+			continue;
+		}
+
+		if (ops != p->dev->netdev_ops)
+			return 0;
+	}
+
+	return 1;
+}
+
 /* When a port is added or removed or when certain port flags
  * change, this function is called to automatically manage
  * promiscuity setting of all the bridge ports.  We are always called
@@ -134,6 +159,7 @@ static void br_port_clear_promisc(struct net_bridge_port *p)
  */
 void br_manage_promisc(struct net_bridge *br)
 {
+	bool hw_offload = br_hw_offload(br);
 	struct net_bridge_port *p;
 	bool set_all = false;
 
@@ -161,7 +187,8 @@ void br_manage_promisc(struct net_bridge *br)
 			    (br->auto_cnt == 1 && br_auto_port(p)))
 				br_port_clear_promisc(p);
 			else
-				br_port_set_promisc(p);
+				if (!hw_offload)
+					br_port_set_promisc(p);
 		}
 	}
 }
diff --git a/net/core/ethtool.c b/net/core/ethtool.c
index 6288e69..4e224fe 100644
--- a/net/core/ethtool.c
+++ b/net/core/ethtool.c
@@ -111,6 +111,7 @@ static const char netdev_features_strings[NETDEV_FEATURE_COUNT][ETH_GSTRING_LEN]
 	[NETIF_F_HW_TLS_RECORD_BIT] =	"tls-hw-record",
 	[NETIF_F_HW_TLS_TX_BIT] =	 "tls-hw-tx-offload",
 	[NETIF_F_HW_TLS_RX_BIT] =	 "tls-hw-rx-offload",
+	[NETIF_F_HW_BRIDGE_BIT] =	 "hw-bridge-offload",
 };
 
 static const char
-- 
2.7.4

