Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 84BAE21548C
	for <lists.bridge@lfdr.de>; Mon,  6 Jul 2020 11:21:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 390208704F;
	Mon,  6 Jul 2020 09:21:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2RyMhmkHs70Q; Mon,  6 Jul 2020 09:21:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CB2BE8702C;
	Mon,  6 Jul 2020 09:21:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B1E31C08A8;
	Mon,  6 Jul 2020 09:21:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6DBD3C016F
 for <bridge@lists.linux-foundation.org>; Mon,  6 Jul 2020 09:21:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5D0B588677
 for <bridge@lists.linux-foundation.org>; Mon,  6 Jul 2020 09:21:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id moMIPBltA82a for <bridge@lists.linux-foundation.org>;
 Mon,  6 Jul 2020 09:21:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BE53088691
 for <bridge@lists.linux-foundation.org>; Mon,  6 Jul 2020 09:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1594027280; x=1625563280;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HVKMV+YoS0rvNMp387sg/5WAHdCOziofqNB5E+Ov/pE=;
 b=Lw37nI5SnVgqKxtcI5/MnBl3bWULGJpo4R5YKwxgVSFL36BmHK9oU0IW
 mROtexuVemQIXa0hSNpadKvoa4vH5NTH8p/V9jWnd26xy5dKGQmWsb4HF
 bCwhfvXe7zRCJZF8vC22XAm8+fQZbcTC38l1ew1hkF3XBPVn4qSIIPIKN
 RFZuEZfrcTh03isOHQKHCxEcVLn7ectyXLlcFZ+vuloQGb/WUvT4FAVMc
 tujW4WirXPdvaRWWGlO/B+HPR+UCtCM78k8NXalDBzTkblqFjImze9X9I
 g1SO3P3s2zeHg6npqjODLi1EiZUqyUlx2aVHdL7k9bbv2lh2rTHen9zn3 w==;
IronPort-SDR: 9VmU2y4nvdke+9LxY4xe6886CYWVbAmcUdf99t3/EY6dPnsbumqxRxHalgF2vEmfxFx7cFPUtD
 Mz0yuAVWzxtsMpYOsKRPJhggZJ6kSjkRWddQOqufb8m0cbZf4Z7m/23DrzpUK8oCoh2QARAVU+
 ORttA8ZAKcM7bH8w9exyAv6GGn1Ln7LtFkQXmNcqaLgSW17BCWAnxLVzjMAjV1eURuFesjQk5x
 i8/ilVncl6pAwiq+HQwJ9yKMowhWUcHsiNOniysT/34obtgbgqLgdaKNNX6k5599pWK/JwExH9
 ON0=
X-IronPort-AV: E=Sophos;i="5.75,318,1589266800"; d="scan'208";a="18109045"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Jul 2020 02:21:20 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 6 Jul 2020 02:21:19 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Mon, 6 Jul 2020 02:20:53 -0700
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <jiri@resnulli.us>,
 <ivecera@redhat.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Mon, 6 Jul 2020 11:18:41 +0200
Message-ID: <20200706091842.3324565-12-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200706091842.3324565-1-horatiu.vultur@microchip.com>
References: <20200706091842.3324565-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next 11/12] bridge: mrp: Extend br_mrp_fill_info
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

This patch extends the function br_mrp_fill_info to return also the
status for the interconnect ring.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_mrp_netlink.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/net/bridge/br_mrp_netlink.c b/net/bridge/br_mrp_netlink.c
index a006e0771e8d3..2a2fdf3500c5b 100644
--- a/net/bridge/br_mrp_netlink.c
+++ b/net/bridge/br_mrp_netlink.c
@@ -474,6 +474,11 @@ int br_mrp_fill_info(struct sk_buff *skb, struct net_bridge *br)
 				     p->dev->ifindex))
 			goto nla_put_failure;
 
+		p = rcu_dereference(mrp->i_port);
+		if (p && nla_put_u32(skb, IFLA_BRIDGE_MRP_INFO_I_IFINDEX,
+				     p->dev->ifindex))
+			goto nla_put_failure;
+
 		if (nla_put_u16(skb, IFLA_BRIDGE_MRP_INFO_PRIO,
 				mrp->prio))
 			goto nla_put_failure;
@@ -493,6 +498,19 @@ int br_mrp_fill_info(struct sk_buff *skb, struct net_bridge *br)
 				mrp->test_monitor))
 			goto nla_put_failure;
 
+		if (nla_put_u32(skb, IFLA_BRIDGE_MRP_INFO_IN_STATE,
+				mrp->in_state))
+			goto nla_put_failure;
+		if (nla_put_u32(skb, IFLA_BRIDGE_MRP_INFO_IN_ROLE,
+				mrp->in_role))
+			goto nla_put_failure;
+		if (nla_put_u32(skb, IFLA_BRIDGE_MRP_INFO_IN_TEST_INTERVAL,
+				mrp->in_test_interval))
+			goto nla_put_failure;
+		if (nla_put_u32(skb, IFLA_BRIDGE_MRP_INFO_IN_TEST_MAX_MISS,
+				mrp->in_test_max_miss))
+			goto nla_put_failure;
+
 		nla_nest_end(skb, tb);
 	}
 	nla_nest_end(skb, mrp_tb);
-- 
2.27.0

