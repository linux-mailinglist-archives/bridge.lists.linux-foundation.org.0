Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 219433016B8
	for <lists.bridge@lfdr.de>; Sat, 23 Jan 2021 17:19:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CB3D687331;
	Sat, 23 Jan 2021 16:19:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4RRJpBQcTHvT; Sat, 23 Jan 2021 16:19:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 97CDF87357;
	Sat, 23 Jan 2021 16:19:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8003EC013A;
	Sat, 23 Jan 2021 16:19:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2B439C013A
 for <bridge@lists.linux-foundation.org>; Sat, 23 Jan 2021 16:19:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2252E20469
 for <bridge@lists.linux-foundation.org>; Sat, 23 Jan 2021 16:19:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xoGMYT6yGfj4 for <bridge@lists.linux-foundation.org>;
 Sat, 23 Jan 2021 16:19:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by silver.osuosl.org (Postfix) with ESMTPS id 111552012F
 for <bridge@lists.linux-foundation.org>; Sat, 23 Jan 2021 16:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1611418795; x=1642954795;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x1dQhUol+8VUXh7OWgoJGUChQ9yRIXGyOFo+E8lOWP0=;
 b=z07oDgvmawvnAcPBmBgBt4C4idl1BNjFncXMGF4eNgr7SYRoqeCGLMd/
 SxKCejG4P+vDPzk02fQRODKTD7DiJu9sstBzJbPfMfik+TB5QV2tseFEP
 etl7UJprgb/2idPCqQyJEfHl4ejgswL0OkPgRCyLFaVgQMeO1E9wpnE8J
 NOw9nWDVmCEgQsSlAMsFAt9LhMRurNyNAQZLIAizZOVju/tXRlCFI/bNS
 upYXa1aDSrlG87GMhEIQO0cb+1T0BCJLXRxskQbsVdpLT1sdt+/aCSm23
 FH+DrBJGEuvgTw0TJBhmOg6mZXTCVlpx5DDRw0ZWxWszRrhGT9HwSOfDj g==;
IronPort-SDR: 17Ql66CSHJhtCeqvHZkPXt/HGhDRp6yHMB7D2a8DlI4UXkQ9qPoaEUp/h3uehpztihvpkh5mxb
 m1XRTAKv0M4UX60edrRJwmCBr2r8dxbHbh/VQ0QWkYX+C1znSBFe0KXVm6/pzYf/YvUOF1bKXe
 2a4yy6HYsYwxDopqLVd6hECzeXA4f3EApcNT2BZEvH5quempu9vDW+zrYdN7MmTqHGBC++RL9H
 RS5euOrgNUxJatNIkoEpI3P4cSWjbAHyx4Lnw6TGm9Ssh/O24t46YCJuWu6SNu0NSzS8zKydpM
 ReA=
X-IronPort-AV: E=Sophos;i="5.79,369,1602572400"; d="scan'208";a="103959007"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jan 2021 09:19:54 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Sat, 23 Jan 2021 09:19:54 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Sat, 23 Jan 2021 09:19:51 -0700
To: <jiri@resnulli.us>, <ivecera@redhat.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <roopa@nvidia.com>, <nikolay@nvidia.com>,
 <rasmus.villemoes@prevas.dk>, <andrew@lunn.ch>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Sat, 23 Jan 2021 17:18:10 +0100
Message-ID: <20210123161812.1043345-3-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210123161812.1043345-1-horatiu.vultur@microchip.com>
References: <20210123161812.1043345-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next 2/4] bridge: mrp: Add 'enum
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
functions to allow the SW to detect better the cases where the HW can't
implement this or when the SW is used as a backup.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_private_mrp.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/net/bridge/br_private_mrp.h b/net/bridge/br_private_mrp.h
index 1883118aae55..31e666ae6955 100644
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

