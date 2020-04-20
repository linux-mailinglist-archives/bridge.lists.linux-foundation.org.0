Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ABDBF1B0F7F
	for <lists.bridge@lfdr.de>; Mon, 20 Apr 2020 17:12:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4CCDA86E89;
	Mon, 20 Apr 2020 15:12:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5LafAUeTU43u; Mon, 20 Apr 2020 15:12:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id E43A586E7F;
	Mon, 20 Apr 2020 15:12:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D9816C0177;
	Mon, 20 Apr 2020 15:12:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 27A36C0177
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 15:12:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 570E52152A
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 15:12:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pRNhIOCo8At4 for <bridge@lists.linux-foundation.org>;
 Mon, 20 Apr 2020 15:12:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by silver.osuosl.org (Postfix) with ESMTPS id 5D95F21532
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 15:12:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587395536; x=1618931536;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=/a06eLKwrmchk7Eu2hL2TIyOwHuzsjEV6uhDIv8BGsk=;
 b=yo+eGNJ0lPBpHgq2pff2JbEIRb33+sd5+UUf9/tENWf+RwQwK/2Zv+9L
 3a2NA/zZq1KHrnBgP43N/YX0Npmeck2sbgRlVLQ6nHKEnWJsSW2KKOF/m
 0G9KBVWfTiqBqNbcIzwtk+DuIHfxYjz36dFyzyRHHMPTHwAot3MV4qjtG
 J57+9A1JCL6xKys6SU0QZtzQFXQqY/tvmWWuQ/+ytsELqW7YwtbKk1UBb
 w+j7/aAFIGYPPUW1+egPrljugdKsCDXS6an2pdyz5d8jEvQ0FfZpRqxZ8
 tgM69MEaJK+JpAHS3wArgryrLLu8uHTzI30O3zn2RnLg8txG6bibGko87 Q==;
IronPort-SDR: QTG2gt5Sku8tnRuUixmFxtlfSHod/6/4tG7OhdeCjOQRG4WWPb7JDvgf4QX70/jku/aAblMpi+
 ZwBuuyProCI3JHRs2POjGPaCZRhDi+c/i0Zng2wlyRoKBJrC9piLWcrKjtpamKF6LX0R9GTrI5
 4dR2KlJZFd+wvOPMtmw5jjn/whG4SA7utAB2I2QytxaDYAwLm22CeceycoZtxMsSlwsma9RIqG
 hOEfL0qGyicS9sBdorl2M9dpMNNAHUY2VmQeKq9+x0tkJbdnd/2DbJL9vxcgTcOQO8tqODf08A
 t2A=
X-IronPort-AV: E=Sophos;i="5.72,406,1580799600"; d="scan'208";a="73911640"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Apr 2020 08:12:15 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 20 Apr 2020 08:12:22 -0700
Received: from soft-dev3.microsemi.net (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 20 Apr 2020 08:11:45 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <nikolay@cumulusnetworks.com>, <davem@davemloft.net>, <jiri@resnulli.us>, 
 <ivecera@redhat.com>, <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <olteanv@gmail.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Mon, 20 Apr 2020 17:09:45 +0200
Message-ID: <20200420150947.30974-12-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200420150947.30974-1-horatiu.vultur@microchip.com>
References: <20200420150947.30974-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next 11/13] bridge: mrp: Update Makefile
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

Add all new mrp files to be compiled.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/bridge/Makefile b/net/bridge/Makefile
index 49da7ae6f077..9bf3e1be3328 100644
--- a/net/bridge/Makefile
+++ b/net/bridge/Makefile
@@ -25,3 +25,5 @@ bridge-$(CONFIG_BRIDGE_VLAN_FILTERING) += br_vlan.o br_vlan_tunnel.o br_vlan_opt
 bridge-$(CONFIG_NET_SWITCHDEV) += br_switchdev.o
 
 obj-$(CONFIG_NETFILTER) += netfilter/
+
+bridge-$(CONFIG_BRIDGE_MRP)	+= br_mrp.o br_mrp_netlink.o br_mrp_switchdev.o
-- 
2.17.1

