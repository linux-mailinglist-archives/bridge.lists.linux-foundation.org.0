Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 368E221EA44
	for <lists.bridge@lfdr.de>; Tue, 14 Jul 2020 09:39:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C0D3522703;
	Tue, 14 Jul 2020 07:39:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nm8GSu8xURqO; Tue, 14 Jul 2020 07:39:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 97BC122775;
	Tue, 14 Jul 2020 07:39:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 689CFC0733;
	Tue, 14 Jul 2020 07:39:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E06E2C0733
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 07:39:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CFCE089D05
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 07:39:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SmCcJofToRRI for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jul 2020 07:39:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 51DAF88861
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 07:39:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1594712353; x=1626248353;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KjQ2iHRIZX7SIVan+FkPjPmVkFfe4NagZdbP3cThDGA=;
 b=0FuaKqBg2IGfUaAdf8ZSlhP8VPOjz/uQVSAGqK/ZffaUzb22EtuQtLHF
 Dl07m7N7I3Vmng6lX0yuvsniiB70rNULQVrEfhN+784+QFXcsXCBdlncM
 bPvjlQyuGs3g3pVFdRe9kcvDctOEblV+WQ9WzRj0rtMDcsO0n4QGt2Yxh
 aZBGTBRLQjk6dEY+OkjJRx/NjZ/OQ+mj7n/NYIW5TEeq3mvzaPPm2uYC6
 O6oZnw0X+GyXL2ah7VuYPVwmZI6PLttd5XBHDfd5dUsekv0zwo82H/V8/
 ZwzneN8lOVEBBCWEl3Nh3wjlc30hWO4FGf+zPXMa77Frp3DTegJqgzwH8 w==;
IronPort-SDR: iUlTzjjFsGf2UOs2oYwm74sTQx6P4icejpw/4NfJf+94+IdDw8GhAua1mkcyq8DfpspsejmjP9
 I3yeCsWFFj6gVRyLTXfyBCrB1cqPU5ZjVKFtjE6/0o53Z2aEs865H3Jva8mtbNjzDB7UrzYAVj
 6cJIfVGa7OW+JB4tFo9UxeUIIvjPRtKI34VfuTo8Aff7j0U181xGlRzM1B8dicu+tlC5/Zhn7r
 6FrUgcK/ot6Tay/+1u6AjKpyZ+aIutqQwmJXZrw9KC+RupmiL6o/6tBTAFJHMA+CSsBmKmn1vR
 rI8=
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="83761207"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Jul 2020 00:39:12 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 14 Jul 2020 00:39:12 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 14 Jul 2020 00:39:09 -0700
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <jiri@resnulli.us>,
 <ivecera@redhat.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Tue, 14 Jul 2020 09:34:50 +0200
Message-ID: <20200714073458.1939574-5-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200714073458.1939574-1-horatiu.vultur@microchip.com>
References: <20200714073458.1939574-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v4 04/12] bridge: mrp: Extend br_mrp for
	MRP interconnect
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

This patch extends the 'struct br_mrp' to contain information regarding
the MRP interconnect. It contains the following:
- the interconnect port 'i_port', which is NULL if the node doesn't have
  a interconnect role
- the interconnect id, which is similar with the ring id, but this field
  is also part of the MRP_InTest frames.
- the interconnect role, which can be MIM or MIC.
- the interconnect state, which can be open or closed.
- the interconnect delayed_work for sending MRP_InTest frames and check
  for lost of continuity.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_private_mrp.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/net/bridge/br_private_mrp.h b/net/bridge/br_private_mrp.h
index 315eb37d89f0f..8841ba847fb29 100644
--- a/net/bridge/br_private_mrp.h
+++ b/net/bridge/br_private_mrp.h
@@ -12,8 +12,10 @@ struct br_mrp {
 
 	struct net_bridge_port __rcu	*p_port;
 	struct net_bridge_port __rcu	*s_port;
+	struct net_bridge_port __rcu	*i_port;
 
 	u32				ring_id;
+	u16				in_id;
 	u16				prio;
 
 	enum br_mrp_ring_role_type	ring_role;
@@ -21,6 +23,11 @@ struct br_mrp {
 	enum br_mrp_ring_state_type	ring_state;
 	u32				ring_transitions;
 
+	enum br_mrp_in_role_type	in_role;
+	u8				in_role_offloaded;
+	enum br_mrp_in_state_type	in_state;
+	u32				in_transitions;
+
 	struct delayed_work		test_work;
 	u32				test_interval;
 	unsigned long			test_end;
@@ -28,6 +35,12 @@ struct br_mrp {
 	u32				test_max_miss;
 	bool				test_monitor;
 
+	struct delayed_work		in_test_work;
+	u32				in_test_interval;
+	unsigned long			in_test_end;
+	u32				in_test_count_miss;
+	u32				in_test_max_miss;
+
 	u32				seq_id;
 
 	struct rcu_head			rcu;
-- 
2.27.0

