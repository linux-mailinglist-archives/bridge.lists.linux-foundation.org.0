Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E13A2C03DF
	for <lists.bridge@lfdr.de>; Mon, 23 Nov 2020 12:14:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1263320009;
	Mon, 23 Nov 2020 11:14:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k+XiENCcIkub; Mon, 23 Nov 2020 11:14:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 9C88220467;
	Mon, 23 Nov 2020 11:14:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7A988C1DA2;
	Mon, 23 Nov 2020 11:14:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 92CFBC0052
 for <bridge@lists.linux-foundation.org>; Mon, 23 Nov 2020 11:14:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7720981C39
 for <bridge@lists.linux-foundation.org>; Mon, 23 Nov 2020 11:14:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l8MGPMKp1wjR for <bridge@lists.linux-foundation.org>;
 Mon, 23 Nov 2020 11:14:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 15D92811F3
 for <bridge@lists.linux-foundation.org>; Mon, 23 Nov 2020 11:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1606130073; x=1637666073;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=knfos+BqzH4dlo+fODl7yedIW3k3ViBBu3PBL+ng7bw=;
 b=icvnS7hDhYJpHyv068QBwcQlFzNvZlQy8TLtVKiyfeV2de0i3lhIk0Bx
 j3kL9UM8Q5rQjVtR0eQJR/xwqHxMzOtl92kLcRPyj/qoK7+n8riEHjY5f
 90jDVmF+Mm7eLEz8LVlYBxXCp3lE8G5fMgmoGJ7Q+cHtD/OhfNBIxmGiQ
 GQ2LXgTVvZw/E+vAIW4peFtfD96ZdW2fPJDfRSfMxqjFAqG/yofvw8QaP
 lQdh36iaSKSo+R2xc/NBAPYvxjbYq7ZlHeG3oRf1uII1tux65uQc382yW
 3Xr7FHDQF7Yt+mhEhY1XVD3CBdzUI6TsE3m9/ntm+rZTZNrZbHXo1ZN+7 w==;
IronPort-SDR: /eekxxeuBa1IVo708k88MVQpPGekvM5vyIxrHB/2lJDG7EfQO3s0J2iEAItQ4wo/j30G4I1D0k
 2e7ojic+9xaY/Ou0wQufhDYf+rKec+4AisKMhDDq9hCT5bLGT5ibdB5MCIK9ATXsUJBENZ1iGl
 pl5i1elFijIHxFGIKxWl1yX3W6I4Y5xAuUBMvVQuIWnRUhf8JWMzYRYrmmLscs8LZZO43OW7DL
 +R8yzlIVorszjHvUNFJ/P2+3Xj59iO50ESoXE6lduo+R36ResBSXW4iVoSo6C0hiPlviFY4wun
 pl4=
X-IronPort-AV: E=Sophos;i="5.78,363,1599548400"; d="scan'208";a="34683043"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Nov 2020 04:14:32 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 23 Nov 2020 04:14:32 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Mon, 23 Nov 2020 04:14:30 -0700
To: <nikolay@nvidia.com>, <roopa@nvidia.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <linux-kernel@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <netdev@vger.kernel.org>
Date: Mon, 23 Nov 2020 12:14:01 +0100
Message-ID: <20201123111401.136952-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next] bridge: mrp: Implement LC mode for MRP
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

Extend MRP to support LC mode(link check) for the interconnect port.
This applies only to the interconnect ring.

Opposite to RC mode(ring check) the LC mode is using CFM frames to
detect when the link goes up or down and based on that the userspace
will need to react.
One advantage of the LC mode over RC mode is that there will be fewer
frames in the normal rings. Because RC mode generates InTest on all
ports while LC mode sends CFM frame only on the interconnect port.

All 4 nodes part of the interconnect ring needs to have the same mode.
And it is not possible to have running LC and RC mode at the same time
on a node.

Whenever the MIM starts it needs to detect the status of the other 3
nodes in the interconnect ring so it would send a frame called
InLinkStatus, on which the clients needs to reply with their link
status.

This patch adds the frame header for the frame InLinkStatus and
extends existing rules on how to forward this frame.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 include/uapi/linux/mrp_bridge.h |  7 +++++++
 net/bridge/br_mrp.c             | 18 +++++++++++++++---
 2 files changed, 22 insertions(+), 3 deletions(-)

diff --git a/include/uapi/linux/mrp_bridge.h b/include/uapi/linux/mrp_bridge.h
index 6aeb13ef0b1e..450f6941a5a1 100644
--- a/include/uapi/linux/mrp_bridge.h
+++ b/include/uapi/linux/mrp_bridge.h
@@ -61,6 +61,7 @@ enum br_mrp_tlv_header_type {
 	BR_MRP_TLV_HEADER_IN_TOPO = 0x7,
 	BR_MRP_TLV_HEADER_IN_LINK_DOWN = 0x8,
 	BR_MRP_TLV_HEADER_IN_LINK_UP = 0x9,
+	BR_MRP_TLV_HEADER_IN_LINK_STATUS = 0xa,
 	BR_MRP_TLV_HEADER_OPTION = 0x7f,
 };
 
@@ -156,4 +157,10 @@ struct br_mrp_in_link_hdr {
 	__be16 interval;
 };
 
+struct br_mrp_in_link_status_hdr {
+	__u8 sa[ETH_ALEN];
+	__be16 port_role;
+	__be16 id;
+};
+
 #endif
diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
index bb12fbf9aaf2..cec2c4e4561d 100644
--- a/net/bridge/br_mrp.c
+++ b/net/bridge/br_mrp.c
@@ -858,7 +858,8 @@ static bool br_mrp_in_frame(struct sk_buff *skb)
 	if (hdr->type == BR_MRP_TLV_HEADER_IN_TEST ||
 	    hdr->type == BR_MRP_TLV_HEADER_IN_TOPO ||
 	    hdr->type == BR_MRP_TLV_HEADER_IN_LINK_DOWN ||
-	    hdr->type == BR_MRP_TLV_HEADER_IN_LINK_UP)
+	    hdr->type == BR_MRP_TLV_HEADER_IN_LINK_UP ||
+	    hdr->type == BR_MRP_TLV_HEADER_IN_LINK_STATUS)
 		return true;
 
 	return false;
@@ -1126,9 +1127,9 @@ static int br_mrp_rcv(struct net_bridge_port *p,
 						goto no_forward;
 				}
 			} else {
-				/* MIM should forward IntLinkChange and
+				/* MIM should forward IntLinkChange/Status and
 				 * IntTopoChange between ring ports but MIM
-				 * should not forward IntLinkChange and
+				 * should not forward IntLinkChange/Status and
 				 * IntTopoChange if the frame was received at
 				 * the interconnect port
 				 */
@@ -1155,6 +1156,17 @@ static int br_mrp_rcv(struct net_bridge_port *p,
 			     in_type == BR_MRP_TLV_HEADER_IN_LINK_DOWN))
 				goto forward;
 
+			/* MIC should forward IntLinkStatus frames only to
+			 * interconnect port if it was received on a ring port.
+			 * If it is received on interconnect port then, it
+			 * should be forward on both ring ports
+			 */
+			if (br_mrp_is_ring_port(p_port, s_port, p) &&
+			    in_type == BR_MRP_TLV_HEADER_IN_LINK_STATUS) {
+				p_dst = NULL;
+				s_dst = NULL;
+			}
+
 			/* Should forward the InTopo frames only between the
 			 * ring ports
 			 */
-- 
2.27.0

