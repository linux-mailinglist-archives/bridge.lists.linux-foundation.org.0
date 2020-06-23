Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D8D204D88
	for <lists.bridge@lfdr.de>; Tue, 23 Jun 2020 11:08:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E438D8634C;
	Tue, 23 Jun 2020 09:08:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lro1dvcw6UUI; Tue, 23 Jun 2020 09:08:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 798F186C69;
	Tue, 23 Jun 2020 09:08:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 559CBC016F;
	Tue, 23 Jun 2020 09:08:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CFDF1C016F
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 09:08:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CCE0E87EB0
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 09:08:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CamsLc8SPcPL for <bridge@lists.linux-foundation.org>;
 Tue, 23 Jun 2020 09:08:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4CA6D87E77
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 09:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592903319; x=1624439319;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kQsP/yVJQUNUJxvLd2o3N1wn7VHKUz9qL3WSHlmLZFk=;
 b=Q32xHsQzTgNH2EuW1l8323hHiq8nbGoY+7E0kvW23MxGdHyms5JnXIRX
 v0eJ463QXjI83mk6JpYrwOaILy/b71RrrmcP3yj5JU11Qo3zKZdFT41KF
 BgZvUoifY9B0hX+QjXt73+rxJ1rlgFYHBLu9m/d+P36rgJkdFvj0vi6Vr
 PK/409M8SD3KEy+k/W7W1XL9wssRoF51CbnXbzZDvsx0HiEw1ftzwqnkO
 0YriJccKhTvXZXpjCaytz/IitYQpapFxqpY2MsW3Zb3qUoyACkWBA8SgN
 BzBXZPLcqTst/azEKATiLayEhN5tet7WJnVhKV+dPe+Cw6o346Amzy0QI Q==;
IronPort-SDR: ZWC3iHEXC8SuJzWR7KqfKAYgTV8gCEBoinHxCA/wRpTju48DhbOMQuMmaFF6baDAQIHa6jyR0R
 ItgadKISWBj4rfI6qA4seVAKqkdIKbQT/fhX5VVrtFIiXRiygefHaPlsfnqOWNU8PryRO0Vn/q
 3nB6XHKROq6L0+VhPrNCwlP6UNPBQhHQ0xp8Q2r3iRXJ5dwez7h25IM3Rs97Vu3a2xR+zqTKOQ
 UvJyXX6Q2c/xi1IQeoqSB+87y24+WhSXBeo9OnyZ47tDJxp2up85aPEDf1PBar6VgCIrsixSxu
 DFk=
X-IronPort-AV: E=Sophos;i="5.75,270,1589266800"; d="scan'208";a="79436705"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jun 2020 02:08:38 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 23 Jun 2020 02:08:27 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 23 Jun 2020 02:08:36 -0700
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <linux-kernel@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <netdev@vger.kernel.org>,
 <UNGLinuxDriver@microchip.com>
Date: Tue, 23 Jun 2020 11:05:40 +0200
Message-ID: <20200623090541.2964760-2-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200623090541.2964760-1-horatiu.vultur@microchip.com>
References: <20200623090541.2964760-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net v2 1/2] bridge: uapi: mrp: Fix MRP_PORT_ROLE
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

Currently the MRP_PORT_ROLE_NONE has the value 0x2 but this is in conflict
with the IEC 62439-2 standard. The standard defines the following port
roles: primary (0x0), secondary(0x1), interconnect(0x2).
Therefore remove the port role none.

Fixes: 4714d13791f831 ("bridge: uapi: mrp: Add mrp attributes.")
Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 include/uapi/linux/mrp_bridge.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/uapi/linux/mrp_bridge.h b/include/uapi/linux/mrp_bridge.h
index 84f15f48a7cb1..bee3665402129 100644
--- a/include/uapi/linux/mrp_bridge.h
+++ b/include/uapi/linux/mrp_bridge.h
@@ -36,7 +36,6 @@ enum br_mrp_port_state_type {
 enum br_mrp_port_role_type {
 	BR_MRP_PORT_ROLE_PRIMARY,
 	BR_MRP_PORT_ROLE_SECONDARY,
-	BR_MRP_PORT_ROLE_NONE,
 };
 
 enum br_mrp_tlv_header_type {
-- 
2.26.2

