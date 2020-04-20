Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CE21B0F78
	for <lists.bridge@lfdr.de>; Mon, 20 Apr 2020 17:12:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 71A3787E37;
	Mon, 20 Apr 2020 15:12:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gpbJbDtZf93J; Mon, 20 Apr 2020 15:12:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3559E87E3C;
	Mon, 20 Apr 2020 15:12:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1DF51C0177;
	Mon, 20 Apr 2020 15:12:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 12367C0177
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 15:12:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EDA0987E37
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 15:12:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6groMHFdbI-k for <bridge@lists.linux-foundation.org>;
 Mon, 20 Apr 2020 15:12:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7E56787E3C
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 15:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587395520; x=1618931520;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=f83042ZIqutNYkKufvnkcdocBQbp4ZWpcUIFE5BjUho=;
 b=1ZJBsVrm6RoOpk+4ZWR7UmjlbDRHLQjucjN8kbN0f8a15AruEizRUYsl
 SLuB2NpMYkc3wEJPOJvakV7na9+xipJnnvRC7JG6g2FGoDLvkCRaNjU13
 cKjT5YLp6oeujAyn2uQr/NLp9wpIe/XlqoshMh2L+9nPwN+lO/GiraLDB
 rmXKSmoc+CHfx/tvcqa0Kel2wpcHI11/FVPj1YYJQWdPcrt2GsqpGBP8V
 +S3OiEXW7foZLCWMgAkmEsB41x9Sarhe3IHzt6797OQ+2S3GN2df0WpsO
 Lr46ORexsfLxvOsD5Suifwi/6zRFDR1WJoJQuPGfKlPPzvP9PhhlMq1KB w==;
IronPort-SDR: QKhBxYRncQotaAJiTaV9P4lO93wKL2eAzJ93otF1Ug9g2ZDSXbcS1McJsZLoxtuAmSHBzK+THr
 5XOzkwzhvi2/61t01bmr8GJ1+O1R2D2EFpJ1z2TJJwtC7htFmgOTkM0I4zByrFj+THILEmcvgb
 PQPI8DZ2Qua8/j709SHQ6a0xQI6yGnU5CF6Io7IEewIvo7091r1JgDZOzQHpFxO4d5hMCKO5gh
 HlTvAgE5a/oCLpSn2wmwphyspG0u16P7FRnj7eoXcjs3fWvnxk3nxBsRS8cxZ3ZFMUT+DHgh5r
 BUM=
X-IronPort-AV: E=Sophos;i="5.72,406,1580799600"; d="scan'208";a="73911570"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Apr 2020 08:11:59 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 20 Apr 2020 08:12:05 -0700
Received: from soft-dev3.microsemi.net (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 20 Apr 2020 08:11:28 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <nikolay@cumulusnetworks.com>, <davem@davemloft.net>, <jiri@resnulli.us>, 
 <ivecera@redhat.com>, <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <olteanv@gmail.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Mon, 20 Apr 2020 17:09:40 +0200
Message-ID: <20200420150947.30974-7-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200420150947.30974-1-horatiu.vultur@microchip.com>
References: <20200420150947.30974-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next 06/13] bridge: mrp: Extend bridge interface
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
- add a list of MRP instances

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 include/linux/if_bridge.h | 1 +
 net/bridge/br_private.h   | 4 ++++
 2 files changed, 5 insertions(+)

diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
index 9e57c4411734..10baa9efdae8 100644
--- a/include/linux/if_bridge.h
+++ b/include/linux/if_bridge.h
@@ -47,6 +47,7 @@ struct br_ip_list {
 #define BR_BCAST_FLOOD		BIT(14)
 #define BR_NEIGH_SUPPRESS	BIT(15)
 #define BR_ISOLATED		BIT(16)
+#define BR_MRP_AWARE		BIT(17)
 
 #define BR_DEFAULT_AGEING_TIME	(300 * HZ)
 
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 735ec6ff86cc..b3c176a0a136 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -432,6 +432,10 @@ struct net_bridge {
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

