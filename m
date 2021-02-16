Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2255331D244
	for <lists.bridge@lfdr.de>; Tue, 16 Feb 2021 22:44:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D3CAA87236;
	Tue, 16 Feb 2021 21:44:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1b8R9wb34PQX; Tue, 16 Feb 2021 21:44:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6504087232;
	Tue, 16 Feb 2021 21:44:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 59832C013A;
	Tue, 16 Feb 2021 21:44:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F2FDDC013A
 for <bridge@lists.linux-foundation.org>; Tue, 16 Feb 2021 21:44:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EF47586738
 for <bridge@lists.linux-foundation.org>; Tue, 16 Feb 2021 21:44:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JkHcJtJ-Dr7t for <bridge@lists.linux-foundation.org>;
 Tue, 16 Feb 2021 21:44:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C108885C77
 for <bridge@lists.linux-foundation.org>; Tue, 16 Feb 2021 21:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1613511840; x=1645047840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xU9OI21zE49z1khz1tGdwEbVYbu5HKURTo6lpbHNH84=;
 b=PMl5SUvdXRQPTdCjlZ9EZFqh70Kj/CfFflWjdBbHyJtKDDxavgJBlklh
 2uF8xR78xB3C/3gAap8OBjAsfhmszWDT2gqCBGmYxYrLjFstnu8L8hBac
 sQiY4xmc3JXFa+BUTgFYXnfqIOOilMNkKXTWFn/OaMXXrrOl7bf5mTzbI
 l3Yve4VJu5dGql3BVk4XB0k6qitqKs7u4EWe0oSlup5QudbjdwdDj+ODJ
 sRMcIieEkGemN0LJ8DxZ21eYactUz/ef/VmCT5zQWeQnbUvoNnKKzuChd
 U/BuKlr76Uh4MQFnAXVY7WR9ONAaq9EJuEH+6AwFkFnkmI6JNPTvsrNNa w==;
IronPort-SDR: 06hfEACKEUI4f7wqLs9M/Z8ZX8QvH+KXZ5FbrldXtvzhjNopiZnG+U8NJCRsqWM8zxtka/0Qz/
 GGyvML9/x41ic8fm68Kd3FTkSzNjZaCK3mJC2bZIHm3+hrIfPRqIIh2bHu2WUKtl+zckwf/Nrd
 Yn5kHhzkZPC8xCmoI2VWlHXdUZSYfl+kBQgbmNqVLqYeONKg/OypQJRnppJzmXAZADbgNQlgrH
 Cm35GAzBXAPVFUOvz/oTXvyzlOjTGju/NUOGUEX8eOdHusjKHcdypD8LEbgnTgWro/LzVOGV/M
 AmU=
X-IronPort-AV: E=Sophos;i="5.81,184,1610434800"; d="scan'208";a="115334519"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Feb 2021 14:43:24 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 16 Feb 2021 14:43:10 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 16 Feb 2021 14:43:07 -0700
To: <davem@davemloft.net>, <kuba@kernel.org>
Date: Tue, 16 Feb 2021 22:42:00 +0100
Message-ID: <20210216214205.32385-4-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210216214205.32385-1-horatiu.vultur@microchip.com>
References: <20210216214205.32385-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: ivecera@redhat.com, andrew@lunn.ch, alexandre.belloni@bootlin.com,
 f.fainelli@gmail.com, jiri@resnulli.us, rasmus.villemoes@prevas.dk,
 vladimir.oltean@nxp.com, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 claudiu.manoil@nxp.com, netdev@vger.kernel.org, nikolay@nvidia.com,
 roopa@nvidia.com, Horatiu Vultur <horatiu.vultur@microchip.com>,
 vivien.didelot@gmail.com
Subject: [Bridge] [PATCH net-next v4 3/8] bridge: mrp: Add 'enum
	br_mrp_hw_support'
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

Add the enum br_mrp_hw_support that is used by the br_mrp_switchdev
functions to allow the SW to detect the cases where HW can't implement
the functionality or when SW is used as a backup.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_private_mrp.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/net/bridge/br_private_mrp.h b/net/bridge/br_private_mrp.h
index 2514954c1431..966444304c38 100644
--- a/net/bridge/br_private_mrp.h
+++ b/net/bridge/br_private_mrp.h
@@ -46,6 +46,20 @@ struct br_mrp {
 	struct rcu_head			rcu;
 };
 
+/* This type is returned by br_mrp_switchdev functions that allow to have a SW
+ * backup in case the HW can't implement completely the protocol.
+ * BR_MRP_NONE - means the HW can't run at all the protocol, so the SW stops
+ *               configuring the node anymore.
+ * BR_MRP_SW - the HW can help the SW to run the protocol, by redirecting MRP
+ *             frames to CPU.
+ * BR_MRP_HW - the HW can implement completely the protocol.
+ */
+enum br_mrp_hw_support {
+	BR_MRP_NONE,
+	BR_MRP_SW,
+	BR_MRP_HW,
+};
+
 /* br_mrp.c */
 int br_mrp_add(struct net_bridge *br, struct br_mrp_instance *instance);
 int br_mrp_del(struct net_bridge *br, struct br_mrp_instance *instance);
-- 
2.27.0

