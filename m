Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D21A204D8C
	for <lists.bridge@lfdr.de>; Tue, 23 Jun 2020 11:08:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AB8E320481;
	Tue, 23 Jun 2020 09:08:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8PBZS5qoT1CC; Tue, 23 Jun 2020 09:08:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id B256C20498;
	Tue, 23 Jun 2020 09:08:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 970CAC016F;
	Tue, 23 Jun 2020 09:08:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 21527C016F
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 09:08:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0F1DB87FAF
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 09:08:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K7LFNVAurFze for <bridge@lists.linux-foundation.org>;
 Tue, 23 Jun 2020 09:08:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7AA2987E77
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 09:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592903323; x=1624439323;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Vab59iB18cUXfZdY2UKkw5U/rizieclL7eIH6pZwzYE=;
 b=hAg3TKcxMgMtv6DFI+R0/Cpr52TsR2tJcnKylFGme43BmX16OMNRNoYa
 bDuYT/NQyg8BslBtfPipgjyIeqh0tZlnadXM3nMVYThNPf/ihcA8QQVbX
 7/QAPA7RsDXZHHblujxAGysdeiWERtc74E3qdozhkHrG+lbxCsDN0cZi9
 BdTVvWnNHYzmi3EMHsZIFaGsLYh0iS0PL2yjAR4XnExagnKKx2hNG6osC
 3mp5igljac3FvjoQow5rA/SrcuBbJDae/41DwrSYuVf//Zjhf2nRUttuS
 tikSc7TsosxF5/Mg46kajiWzppWBckBEjx8teDabzeg9E4D9VvlPVqp1e w==;
IronPort-SDR: At4OI2cnKjuQjIQHDaHNMhMYRBKgl5PtZezd8g1/i78LKxmOMm5XU3JW9P1KkqZdpvtsqjANK+
 IRy5ZsEhUkMeRf+NNSaeV2iZUoETw1Yj7fsCfpFwxfY20st4c4K6KkQKbfBWeSEyec4QOxhQzO
 NI9JkgLQCWogzuxwfeAGHsQiIhFkyvzkFTY1+wn9iMTfpQ2MsDRBzMBggM9k4R8CAtd18M/H4S
 oTpeNYe/wgcAIQAopoDKhsn10yVXPsnZhB+ab42jP3eJFnSHUVAT4HNGGXxkc+SYTS7POjdg/l
 A7A=
X-IronPort-AV: E=Sophos;i="5.75,270,1589266800"; d="scan'208";a="79436711"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jun 2020 02:08:42 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 23 Jun 2020 02:08:31 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 23 Jun 2020 02:08:40 -0700
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <linux-kernel@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <netdev@vger.kernel.org>,
 <UNGLinuxDriver@microchip.com>
Date: Tue, 23 Jun 2020 11:05:41 +0200
Message-ID: <20200623090541.2964760-3-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200623090541.2964760-1-horatiu.vultur@microchip.com>
References: <20200623090541.2964760-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net v2 2/2] bridge: mrp: Validate when setting the
	port role
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

This patch adds specific checks for primary(0x0) and secondary(0x1) when
setting the port role. For any other value the function
'br_mrp_set_port_role' will return -EINVAL.

Fixes: 20f6a05ef63594 ("bridge: mrp: Rework the MRP netlink interface")
Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_mrp.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
index 24986ec7d38cc..779e1eb754430 100644
--- a/net/bridge/br_mrp.c
+++ b/net/bridge/br_mrp.c
@@ -411,10 +411,16 @@ int br_mrp_set_port_role(struct net_bridge_port *p,
 	if (!mrp)
 		return -EINVAL;
 
-	if (role == BR_MRP_PORT_ROLE_PRIMARY)
+	switch (role) {
+	case BR_MRP_PORT_ROLE_PRIMARY:
 		rcu_assign_pointer(mrp->p_port, p);
-	else
+		break;
+	case BR_MRP_PORT_ROLE_SECONDARY:
 		rcu_assign_pointer(mrp->s_port, p);
+		break;
+	default:
+		return -EINVAL;
+	}
 
 	br_mrp_port_switchdev_set_role(p, role);
 
-- 
2.26.2

