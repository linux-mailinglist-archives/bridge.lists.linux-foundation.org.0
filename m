Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B22F9211DD4
	for <lists.bridge@lfdr.de>; Thu,  2 Jul 2020 10:13:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5D3748B277;
	Thu,  2 Jul 2020 08:13:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hUUnneTWh+wF; Thu,  2 Jul 2020 08:13:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8D2AB8B27F;
	Thu,  2 Jul 2020 08:13:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6A3E9C0733;
	Thu,  2 Jul 2020 08:13:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6DCBCC0890
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 08:13:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 577DA26881
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 08:13:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RmR3YK8cvjxb for <bridge@lists.linux-foundation.org>;
 Thu,  2 Jul 2020 08:13:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by silver.osuosl.org (Postfix) with ESMTPS id 5E13D26808
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 08:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1593677618; x=1625213618;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BL6dmHjTIatkptYTqN6do+i//9TqaErPS26wVkNOrWk=;
 b=PFt2hlK40XjtXVLrV6t1XajMAAJtANFGWX8sCEaGjaBeXxj3w9Ebxdf7
 z/zxJAxgENT/ZrB+V+O5ZXBvwW2GoZ67z75JDoLeWa++hgCv3EcnKtAa+
 kjagdmqIVvHSntsS7mH/KtxpL/epcC492QZFbmWWgezjV4iibanVVvMaL
 9Wk7HEDF95qbJiyS3TBCW4048htsMyENUhhDL6jVJov9PmE6ceWCqxH/L
 w3K0RV5PuuB346jz51I9gs2/ovpqVDpfHN2UJ7s1q93hgxv3R8fzEvUIM
 7Ef+2Ju8MHgx7kkJsR68PXGTb75KSxInrw6JF4UOBAW/MvQrsu+1qUSPG Q==;
IronPort-SDR: JIEfNMWW1xZoF3Xx4NeeaAVj+JVt1pd8o5VLqI3jBWV7pdTaknxIySAj2/tmodyOMvigG9BR+L
 HC+ZTXvaepLgV9tigK0rIGUL78Km1eOHZpE/tvhCjxX3Dih2SHjR/reZ/4AXLdZit7wZTT1M5T
 WGWPeMxHvSPdEqyOdB+lkF3I8s/NxgROQlIeHC66YERJHl6Q+AC8KF/K5kftHM576/34s3w3c2
 TvUuVmIXA+4AhT0jUt0RZCWRobDhNusLjo+HSRTW/B5McyrrEsETCJBr7lTTS5ACcv6KAl0YnS
 +dk=
X-IronPort-AV: E=Sophos;i="5.75,303,1589266800"; d="scan'208";a="80467659"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Jul 2020 01:13:20 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 2 Jul 2020 01:13:20 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Thu, 2 Jul 2020 01:12:56 -0700
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <jiri@mellanox.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <UNGLinuxDriver@microchip.com>
Date: Thu, 2 Jul 2020 10:13:06 +0200
Message-ID: <20200702081307.933471-3-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200702081307.933471-1-horatiu.vultur@microchip.com>
References: <20200702081307.933471-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v3 2/3] bridge: mrp: Add br_mrp_fill_info
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

Add the function br_mrp_fill_info which populates the MRP attributes
regarding the status of each MRP instance.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_mrp_netlink.c | 64 +++++++++++++++++++++++++++++++++++++
 net/bridge/br_private.h     |  7 ++++
 2 files changed, 71 insertions(+)

diff --git a/net/bridge/br_mrp_netlink.c b/net/bridge/br_mrp_netlink.c
index 34b3a8776991f..c4f5c356811f3 100644
--- a/net/bridge/br_mrp_netlink.c
+++ b/net/bridge/br_mrp_netlink.c
@@ -304,6 +304,70 @@ int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
 	return 0;
 }
 
+int br_mrp_fill_info(struct sk_buff *skb, struct net_bridge *br)
+{
+	struct nlattr *tb, *mrp_tb;
+	struct br_mrp *mrp;
+
+	mrp_tb = nla_nest_start_noflag(skb, IFLA_BRIDGE_MRP);
+	if (!mrp_tb)
+		return -EMSGSIZE;
+
+	list_for_each_entry_rcu(mrp, &br->mrp_list, list) {
+		struct net_bridge_port *p;
+
+		tb = nla_nest_start_noflag(skb, IFLA_BRIDGE_MRP_INFO);
+		if (!tb)
+			goto nla_info_failure;
+
+		if (nla_put_u32(skb, IFLA_BRIDGE_MRP_INFO_RING_ID,
+				mrp->ring_id))
+			goto nla_put_failure;
+
+		p = rcu_dereference(mrp->p_port);
+		if (p && nla_put_u32(skb, IFLA_BRIDGE_MRP_INFO_P_IFINDEX,
+				     p->dev->ifindex))
+			goto nla_put_failure;
+
+		p = rcu_dereference(mrp->s_port);
+		if (p && nla_put_u32(skb, IFLA_BRIDGE_MRP_INFO_S_IFINDEX,
+				     p->dev->ifindex))
+			goto nla_put_failure;
+
+		if (nla_put_u16(skb, IFLA_BRIDGE_MRP_INFO_PRIO,
+				mrp->prio))
+			goto nla_put_failure;
+		if (nla_put_u32(skb, IFLA_BRIDGE_MRP_INFO_RING_STATE,
+				mrp->ring_state))
+			goto nla_put_failure;
+		if (nla_put_u32(skb, IFLA_BRIDGE_MRP_INFO_RING_ROLE,
+				mrp->ring_role))
+			goto nla_put_failure;
+		if (nla_put_u32(skb, IFLA_BRIDGE_MRP_INFO_TEST_INTERVAL,
+				mrp->test_interval))
+			goto nla_put_failure;
+		if (nla_put_u32(skb, IFLA_BRIDGE_MRP_INFO_TEST_MAX_MISS,
+				mrp->test_max_miss))
+			goto nla_put_failure;
+		if (nla_put_u32(skb, IFLA_BRIDGE_MRP_INFO_TEST_MONITOR,
+				mrp->test_monitor))
+			goto nla_put_failure;
+
+		nla_nest_end(skb, tb);
+	}
+	nla_nest_end(skb, mrp_tb);
+
+	return 0;
+
+nla_put_failure:
+	nla_nest_cancel(skb, tb);
+
+nla_info_failure:
+	nla_nest_cancel(skb, mrp_tb);
+
+	return -EMSGSIZE;
+}
+
 int br_mrp_port_open(struct net_device *dev, u8 loc)
 {
 	struct net_bridge_port *p;
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 6a7d8e218ae7e..65d2c163a24ab 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1317,6 +1317,7 @@ int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
 int br_mrp_process(struct net_bridge_port *p, struct sk_buff *skb);
 bool br_mrp_enabled(struct net_bridge *br);
 void br_mrp_port_del(struct net_bridge *br, struct net_bridge_port *p);
+int br_mrp_fill_info(struct sk_buff *skb, struct net_bridge *br);
 #else
 static inline int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
 			       struct nlattr *attr, int cmd,
@@ -1339,6 +1340,12 @@ static inline void br_mrp_port_del(struct net_bridge *br,
 				   struct net_bridge_port *p)
 {
 }
+
+static inline int br_mrp_fill_info(struct sk_buff *skb, struct net_bridge *br)
+{
+	return 0;
+}
+
 #endif
 
 /* br_netlink.c */
-- 
2.27.0

