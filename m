Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E39F21E927C
	for <lists.bridge@lfdr.de>; Sat, 30 May 2020 18:11:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8DA0087DA2;
	Sat, 30 May 2020 16:11:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lJXpBoihRgon; Sat, 30 May 2020 16:11:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 513A28795A;
	Sat, 30 May 2020 16:11:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 38A0BC016F;
	Sat, 30 May 2020 16:11:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EB90FC016F
 for <bridge@lists.linux-foundation.org>; Sat, 30 May 2020 16:11:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D89A88795A
 for <bridge@lists.linux-foundation.org>; Sat, 30 May 2020 16:11:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kvsl1Vgr1gJY for <bridge@lists.linux-foundation.org>;
 Sat, 30 May 2020 16:11:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CB67B87951
 for <bridge@lists.linux-foundation.org>; Sat, 30 May 2020 16:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590855077; x=1622391077;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tPH1x0kmwkLhsh44hhxU/ZfYVRSXnJ4NnEaEZr8D7fA=;
 b=IaX0C7Kq7xJrAmk9L8lhyQyoMk2Mawo7IYXuNZz8squcctIh1y/ChFol
 /u9S9W6tTasvcxLveOm65k26jmZikoDJqOnOmEWtQTSBJh0D6snld+LV3
 9DIJWX9ia0FnSRF0qKQvm47311Z7PkwB/uPlhZGKRhl4NS9+xg3Aq9jVK
 hXC+lbD/i5gzdSXiTnJQT0k6KCrEC95Qm25RLNOUyElHSy+HiuSW1iqXq
 ryyBSow1SFfR4L8bf02NaJW+jjajWqnE79zpwf+4uDz/QbksK5c4OiYUE
 WHTP/RzDJjaVfn+UHvBzFbt1qgYpJRgzS6yIxswLDnd4IRfNWu3lqj+C5 w==;
IronPort-SDR: a1C1ua8E8b9geEXYHec2ly9Evewif6MIKH29kLowfKfll64bhbQv0jeMx+xeNo44DTSaoo/DG4
 zHLbH9IVHD/jh62ungE64jjaL81/AP5WeR7nIsnJgFZdBOYVczoeBl6cMbAswJu2fKYckHS6fL
 AnwiQgu2oQIRXv7NLLAvn0QjiElq0gT8plimNWk9uf7/COKEHb4P4cxBpv8eYzpSJqxg+hu6Xp
 8x38lae8T321db8b+/cYLfqP0yLSwHOZRkNJ+Gt36cg+wCt4Cr3UEol5aWjbQT1KpXgPkvHRJs
 15E=
X-IronPort-AV: E=Sophos;i="5.73,452,1583218800"; d="scan'208";a="81667389"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 30 May 2020 09:11:16 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 30 May 2020 09:11:06 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Sat, 30 May 2020 09:11:14 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <jiri@resnulli.us>, <ivecera@redhat.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <UNGLinuxDriver@microchip.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Sat, 30 May 2020 18:09:46 +0000
Message-ID: <20200530180948.1194569-2-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200530180948.1194569-1-horatiu.vultur@microchip.com>
References: <20200530180948.1194569-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v2 1/3] bridge: mrp: Update MRP frame type
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

Replace u16/u32 with be16/be32 in the MRP frame types.
This fixes sparse warnings like:
warning: cast to restricted __be16

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 include/uapi/linux/mrp_bridge.h | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/include/uapi/linux/mrp_bridge.h b/include/uapi/linux/mrp_bridge.h
index 2600cdf5a2848..bcad42128d625 100644
--- a/include/uapi/linux/mrp_bridge.h
+++ b/include/uapi/linux/mrp_bridge.h
@@ -55,30 +55,30 @@ struct br_mrp_end_hdr {
 };
 
 struct br_mrp_common_hdr {
-	__u16 seq_id;
+	__be16 seq_id;
 	__u8 domain[MRP_DOMAIN_UUID_LENGTH];
 };
 
 struct br_mrp_ring_test_hdr {
-	__u16 prio;
+	__be16 prio;
 	__u8 sa[ETH_ALEN];
-	__u16 port_role;
-	__u16 state;
-	__u16 transitions;
-	__u32 timestamp;
+	__be16 port_role;
+	__be16 state;
+	__be16 transitions;
+	__be32 timestamp;
 };
 
 struct br_mrp_ring_topo_hdr {
-	__u16 prio;
+	__be16 prio;
 	__u8 sa[ETH_ALEN];
-	__u16 interval;
+	__be16 interval;
 };
 
 struct br_mrp_ring_link_hdr {
 	__u8 sa[ETH_ALEN];
-	__u16 port_role;
-	__u16 interval;
-	__u16 blocked;
+	__be16 port_role;
+	__be16 interval;
+	__be16 blocked;
 };
 
 #endif
-- 
2.26.2

