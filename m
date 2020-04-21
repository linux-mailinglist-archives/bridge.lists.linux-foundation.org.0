Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB401B2A3E
	for <lists.bridge@lfdr.de>; Tue, 21 Apr 2020 16:42:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2ABC986B59;
	Tue, 21 Apr 2020 14:42:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VlNUWXlC0HPa; Tue, 21 Apr 2020 14:42:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1C37986B3A;
	Tue, 21 Apr 2020 14:42:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 05B31C0175;
	Tue, 21 Apr 2020 14:42:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CF775C1797
 for <bridge@lists.linux-foundation.org>; Tue, 21 Apr 2020 14:42:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BD4B922926
 for <bridge@lists.linux-foundation.org>; Tue, 21 Apr 2020 14:42:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VAYDqfmDVBuE for <bridge@lists.linux-foundation.org>;
 Tue, 21 Apr 2020 14:42:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by silver.osuosl.org (Postfix) with ESMTPS id C463821539
 for <bridge@lists.linux-foundation.org>; Tue, 21 Apr 2020 14:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587480168; x=1619016168;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=PD8IUS1EdZAMiLoRRlRU8vrEN2R88F6dLZkoxx8iJGI=;
 b=X8AgOT0bhukJadnQuFc2RzGlrSPhC1C+rnpi+obwY4mRj8abHFQWjrGF
 HqGmycdL33/F+f6LA9yBkZExLPuYHNVaHTX6XhvmiRH4fAzK5ahmsMkNg
 gHnexguPFI2KHjKOGTzco8fwsunQJDqempRem5R8ITmlOIOB4G9Wj3tDX
 2WFNoReRshWFGenAQWBEHFmzW6PsshAxz/nmknbgkCH3gwJ+qQ43qF7jm
 a9mPd0meRJ32eXUZyEh5GwmjB6imKsCDMrbJaHB1/GKb9GQsv5kq00WFs
 acV/cf/gkrqIlmn+iZzx75ZNQepjCiFdJQrOk2AfdP0zEJrONT24yGTv7 g==;
IronPort-SDR: QcslMF8L4zudT808oQczwXTzbpDUpGnJOVMgFBakG11weubHvUKCznLnN9nmGIaWniwujrfMr9
 Ul8pC/KGwn++talAurfvN20OhTL3zhoHEms6Te6Ff+GBNxT9kq/IQRg0lfYyKFE6kDX6Y3D0xj
 PhhkCalbZspgWootGKUoADMchmgIhYBP6h1hFU5oMxBnumNKo0ShB/v7EAB4WF+1DRzLcNfzhV
 5vjspFDkHNG3E7HOpS3l7iXKLcd8vl5/Uveip4nLx0Kxy1nHeOnrZSxIph0aDKJvX91amDyeUM
 c/0=
X-IronPort-AV: E=Sophos;i="5.72,410,1580799600"; d="scan'208";a="71040865"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Apr 2020 07:42:47 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Apr 2020 07:42:47 -0700
Received: from soft-dev3.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 21 Apr 2020 07:42:44 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <nikolay@cumulusnetworks.com>, <davem@davemloft.net>, <jiri@resnulli.us>, 
 <ivecera@redhat.com>, <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <olteanv@gmail.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Tue, 21 Apr 2020 16:37:44 +0200
Message-ID: <20200421143752.2248-4-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200421143752.2248-1-horatiu.vultur@microchip.com>
References: <20200421143752.2248-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v2 03/11] bridge: mrp: Extend bridge
	interface
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

To integrate MRP into the bridge, first the bridge needs to be aware of ports
that are part of an MRP ring and which rings are on the bridge.
Therefore extend bridge interface with the following:
- add new flag(BR_MPP_AWARE) to the net bridge ports, this bit will be
  set when the port is added to an MRP instance. In this way it knows if
  the frame was received on MRP ring port
- add new flag(BR_MRP_LOST_CONT) to the net bridge ports, this bit will be set
  when the port lost the continuity of MRP Test frames.
- add a list of MRP instances

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 include/linux/if_bridge.h | 2 ++
 net/bridge/br_private.h   | 4 ++++
 2 files changed, 6 insertions(+)

diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
index 9e57c4411734..b3a8d3054af0 100644
--- a/include/linux/if_bridge.h
+++ b/include/linux/if_bridge.h
@@ -47,6 +47,8 @@ struct br_ip_list {
 #define BR_BCAST_FLOOD		BIT(14)
 #define BR_NEIGH_SUPPRESS	BIT(15)
 #define BR_ISOLATED		BIT(16)
+#define BR_MRP_AWARE		BIT(17)
+#define BR_MRP_LOST_CONT	BIT(18)
 
 #define BR_DEFAULT_AGEING_TIME	(300 * HZ)
 
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 1f97703a52ff..835a70f8d3ea 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -428,6 +428,10 @@ struct net_bridge {
 	int offload_fwd_mark;
 #endif
 	struct hlist_head		fdb_list;
+
+#if IS_ENABLED(CONFIG_BRIDGE_MRP)
+	struct list_head		__rcu mrp_list;
+#endif
 };
 
 struct br_input_skb_cb {
-- 
2.17.1

