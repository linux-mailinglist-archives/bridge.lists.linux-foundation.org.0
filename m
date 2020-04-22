Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF44F1B4A45
	for <lists.bridge@lfdr.de>; Wed, 22 Apr 2020 18:21:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3398681BE0;
	Wed, 22 Apr 2020 16:21:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d9LErqd-TkgE; Wed, 22 Apr 2020 16:21:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id E8BC387EA9;
	Wed, 22 Apr 2020 16:21:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D09FEC0175;
	Wed, 22 Apr 2020 16:21:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EBDDBC0175
 for <bridge@lists.linux-foundation.org>; Wed, 22 Apr 2020 16:21:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D5BDC87DF3
 for <bridge@lists.linux-foundation.org>; Wed, 22 Apr 2020 16:21:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PKcLYCSjNpB4 for <bridge@lists.linux-foundation.org>;
 Wed, 22 Apr 2020 16:21:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4DAD482241
 for <bridge@lists.linux-foundation.org>; Wed, 22 Apr 2020 16:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587572511; x=1619108511;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=PD8IUS1EdZAMiLoRRlRU8vrEN2R88F6dLZkoxx8iJGI=;
 b=qefHXdUvVO3ZeUHyaLexHPkwee1TtzdwyNqYQG/xeFEJj6vLW4MAIP3D
 cp9tRY03AD8XOBYshXSPuS/oGIf75G5XJ5s+/+wY4suyPL3m3ZGL5/8p7
 eg+Gjzk45Q0c9jVnXyqnsGijs0ZB1o81Tqm2PRGshTC7B/NbeKBmOahgm
 WEFBUByqKXR5n233/MildlistmihETSLX8jGwdB+NK58/93YPij290yUS
 uUM0xdHsHW5urN9vFUROMlpu99XjwC3p9WobqgbyO2VkpKTpzFq9RebPm
 tOtnetTegpEfIHrLaYm/hmP4JcVh9fPUZreQowtqQrFbtEJ0UwaV8Y1ZK g==;
IronPort-SDR: balzNi6XcS3EdcDjIm7WHQ3S4KTxbweFy2PPSew945s3xWqdhVaWzcFCCAxfeCiLmL90EfzuA1
 59CVxW+EEitXgpsmZ6oE5Um3rFt6BqvaexKX0MEPGr1tzsSKnSHUzK7VX9yJrbue7ZO8nCifAO
 hGJQCRCV5tMIy4Iiy5crG2UL5qt4IFWHmR+2yRXPpejR11KOHn6OfrhqX19rOUQnqQqZLpioh8
 8wmE1fnINZw+FS+i81KBYax8mF3mawta4BxJllE88tBbaWCe4iSzaODjKpG5SB3uvbvlb5zOzK
 YVQ=
X-IronPort-AV: E=Sophos;i="5.73,304,1583218800"; d="scan'208";a="76894561"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 22 Apr 2020 09:21:50 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 22 Apr 2020 09:21:49 -0700
Received: from soft-dev3.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 22 Apr 2020 09:21:49 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <nikolay@cumulusnetworks.com>, <davem@davemloft.net>, <jiri@resnulli.us>, 
 <ivecera@redhat.com>, <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <olteanv@gmail.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Wed, 22 Apr 2020 18:18:25 +0200
Message-ID: <20200422161833.1123-4-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200422161833.1123-1-horatiu.vultur@microchip.com>
References: <20200422161833.1123-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v3 03/11] bridge: mrp: Extend bridge
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

