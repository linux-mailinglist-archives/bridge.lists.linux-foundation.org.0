Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 012B627FD59
	for <lists.bridge@lfdr.de>; Thu,  1 Oct 2020 12:32:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4083C86B13;
	Thu,  1 Oct 2020 10:32:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5XsJ5RCrNnxP; Thu,  1 Oct 2020 10:32:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7E31A86B18;
	Thu,  1 Oct 2020 10:32:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 60E42C0051;
	Thu,  1 Oct 2020 10:32:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EDE5CC0051
 for <bridge@lists.linux-foundation.org>; Thu,  1 Oct 2020 10:32:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D83E2869B9
 for <bridge@lists.linux-foundation.org>; Thu,  1 Oct 2020 10:32:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e+VbybMgNZON for <bridge@lists.linux-foundation.org>;
 Thu,  1 Oct 2020 10:32:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B8CE7869BB
 for <bridge@lists.linux-foundation.org>; Thu,  1 Oct 2020 10:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1601548363; x=1633084363;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X+rhw3KgzIRLpsdigUrD+tQE1r7KIIaMNAMTXbB17Qc=;
 b=yYBMcPFgAuFxb5tyRMYDcWwIBs2GV0lGq/Q4xl+H9ObOyj0MZ9gcvthR
 qA+VR1sTkCwd42IjS7ROJjIxZXhIWdcgolWHAwTSQlz/wtfXdq1F1LYsb
 1x44OVDX53UYHT/AUTDdoXPeVxDVdsbViPOkoRT2SHi15luSJp5oGZcoW
 uuRRzOm0A9MEGXGNAy4nqKOfGi/XmprDtyt34iCAnRAWuSPSjH78XNgBf
 MwYRrQtGJ+DCnJvJZUfcDP/2xIUWPOv5qBVWvh9x6jNQf9ZwStjZK7qto
 ChqytIAsmSO9t5AUDmaxVdQeGVC1rMjT2XN50t8aQabaooPbL0WOiIf/V w==;
IronPort-SDR: nfms1yhBZgOibkeecEb+ypahwB1V73fBYScyGzQ5Bz1xMgcePUWUqPM3cRaVMwdC2ut3z5gnaw
 KAknoqKdoULEHae3VYldvhUEYORvaM3rCIv+7e2Hkw8JW8B3zloP2swZx0qbPGoc6IlG+gc8nw
 ryfojKlqRVhYR7ZjrZiFFA3KRvCdNC8BheEF+00VE2DBmUw+3+sHiWIwh4bI//ZO2ofIGrpyzW
 bJIsPF9FvsvSqMZZezBkdd7rzW4rXGCL7/s3nIVo/2LKsiWhUn2jRa5ITDAPEjM0/9pobhvd+T
 6iY=
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="91069527"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Oct 2020 03:32:43 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 1 Oct 2020 03:32:18 -0700
Received: from soft-test08.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Thu, 1 Oct 2020 03:32:15 -0700
To: <davem@davemloft.net>, <kuba@kernel.org>, <roopa@nvidia.com>,
 <nikolay@nvidia.com>, <jiri@mellanox.com>, <idosch@mellanox.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <UNGLinuxDriver@microchip.com>
Date: Thu, 1 Oct 2020 10:30:11 +0000
Message-ID: <20201001103019.1342470-4-henrik.bjoernlund@microchip.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001103019.1342470-1-henrik.bjoernlund@microchip.com>
References: <20201001103019.1342470-1-henrik.bjoernlund@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>,
 Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [net-next v2 03/11] bridge: uapi: cfm: Added EtherType
	used by the CFM protocol.
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
From: Henrik Bjoernlund via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

This EtherType is used by all CFM protocal frames transmitted
according to 802.1Q section 12.14.

Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
Reviewed-by: Horatiu Vultur  <horatiu.vultur@microchip.com>
Signed-off-by: Henrik Bjoernlund  <henrik.bjoernlund@microchip.com>
---
 include/uapi/linux/if_ether.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/uapi/linux/if_ether.h b/include/uapi/linux/if_ether.h
index d6de2b167448..a0b637911d3c 100644
--- a/include/uapi/linux/if_ether.h
+++ b/include/uapi/linux/if_ether.h
@@ -99,6 +99,7 @@
 #define ETH_P_1588	0x88F7		/* IEEE 1588 Timesync */
 #define ETH_P_NCSI	0x88F8		/* NCSI protocol		*/
 #define ETH_P_PRP	0x88FB		/* IEC 62439-3 PRP/HSRv0	*/
+#define ETH_P_CFM	0x8902		/* Connectivity Fault Management */
 #define ETH_P_FCOE	0x8906		/* Fibre Channel over Ethernet  */
 #define ETH_P_IBOE	0x8915		/* Infiniband over Ethernet	*/
 #define ETH_P_TDLS	0x890D          /* TDLS */
-- 
2.28.0

