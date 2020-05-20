Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 209B21DB112
	for <lists.bridge@lfdr.de>; Wed, 20 May 2020 13:11:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 20057871F4;
	Wed, 20 May 2020 11:11:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BNA7W4h4TNtj; Wed, 20 May 2020 11:11:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9A5F0875F9;
	Wed, 20 May 2020 11:11:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 80CA1C0176;
	Wed, 20 May 2020 11:11:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 994C8C0176
 for <bridge@lists.linux-foundation.org>; Wed, 20 May 2020 11:11:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 866EE2302C
 for <bridge@lists.linux-foundation.org>; Wed, 20 May 2020 11:11:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K09nceZvIjQP for <bridge@lists.linux-foundation.org>;
 Wed, 20 May 2020 11:11:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by silver.osuosl.org (Postfix) with ESMTPS id 9DACB22836
 for <bridge@lists.linux-foundation.org>; Wed, 20 May 2020 11:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589973080; x=1621509080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C39MMHsI3O/BWeqgZ3MtgggX0ZxcDyUus7tnUs3PLL8=;
 b=hCPDQAXkE2XLeCCsDySNraZzDboJLNWRMw3pNqYvHp5W/el2l8EojwKw
 BMfZl1hG4godSTX70Yi3JZ2ZLhbvXXXVedyLw8gm22ANIbfdR2iA09bUG
 tKCmtuus62/+n/kwkjU4dvSTt2mIZeWFBgAHWBpM74mHLGCn/2jJShWc6
 TXEBHL4uxMjMlUw1aRb1o/Xo/eRiRWpCNH430/vzipJFaDVe/OdHTmz8+
 abPId47ZOhzQQktZH2Qo5FvzI14iIUePvPtowGnd2e/7MX/nYD5p2LAIZ
 63zlPnnA06RtM51OiAIzQMy8vRgyriEIwZNUh8bMbYBK8eZk8164crx3r Q==;
IronPort-SDR: jTTD4snNdQMebfH3I9RQA3ZKf1ZOvpCIsMuA1lKGlRshoxXqD+n5z9Rt+D+PDn5SIkojdlyLYd
 AQOlTfrs3rOOWczCvEUQUIf8RWCGaWenYt+BpLQ2CYuPvC+bzzb8dmJhLlx5c9D/FvYzsbOZkk
 18WtYBh+cwml4/Tgu57xEE5BfukcZoCcF5tXGUTWJbiN0UtEkm4OMkzrJI0mFC+NDosoQq6vPu
 VXNT6Bh9PI0d8T4jsyX5bygno9ErBD+ulPnV/Fadnq2ne7hmqEyxoM/Z6pu4lQ+Q1KPPvHRDDd
 njc=
X-IronPort-AV: E=Sophos;i="5.73,413,1583218800"; d="scan'208";a="77278934"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 May 2020 04:11:19 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 20 May 2020 04:11:19 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 20 May 2020 04:11:17 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <jiri@resnulli.us>, <ivecera@redhat.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <nikolay@cumulusnetworks.com>, <andrew@lunn.ch>,
 <UNGLinuxDriver@microchip.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Wed, 20 May 2020 13:09:21 +0000
Message-ID: <20200520130923.3196432-2-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200520130923.3196432-1-horatiu.vultur@microchip.com>
References: <20200520130923.3196432-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH 1/3] bridge: mrp: Add br_mrp_unique_ifindex function
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

It is not allow to have the same net bridge port part of multiple MRP
rings. Therefore add a check if the port is used already in a different
MRP. In that case return failure.

Fixes: 9a9f26e8f7ea ("bridge: mrp: Connect MRP API with the switchdev API")
Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_mrp.c | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
index d7bc09de4c139..a5a3fa59c078a 100644
--- a/net/bridge/br_mrp.c
+++ b/net/bridge/br_mrp.c
@@ -37,6 +37,32 @@ static struct br_mrp *br_mrp_find_id(struct net_bridge *br, u32 ring_id)
 	return res;
 }
 
+static bool br_mrp_unique_ifindex(struct net_bridge *br, u32 ifindex)
+{
+	struct br_mrp *mrp;
+	bool res = true;
+
+	rcu_read_lock();
+	list_for_each_entry_rcu(mrp, &br->mrp_list, list,
+				lockdep_rtnl_is_held()) {
+		struct net_bridge_port *p;
+
+		p = rcu_dereference(mrp->p_port);
+		if (p && p->dev->ifindex == ifindex) {
+			res = false;
+			break;
+		}
+
+		p = rcu_dereference(mrp->s_port);
+		if (p && p->dev->ifindex == ifindex) {
+			res = false;
+			break;
+		}
+	}
+	rcu_read_unlock();
+	return res;
+}
+
 static struct br_mrp *br_mrp_find_port(struct net_bridge *br,
 				       struct net_bridge_port *p)
 {
@@ -255,6 +281,11 @@ int br_mrp_add(struct net_bridge *br, struct br_mrp_instance *instance)
 	    !br_mrp_get_port(br, instance->s_ifindex))
 		return -EINVAL;
 
+	/* It is not possible to have the same port part of multiple rings */
+	if (!br_mrp_unique_ifindex(br, instance->p_ifindex) ||
+	    !br_mrp_unique_ifindex(br, instance->s_ifindex))
+		return -EINVAL;
+
 	mrp = kzalloc(sizeof(*mrp), GFP_KERNEL);
 	if (!mrp)
 		return -ENOMEM;
-- 
2.26.2

