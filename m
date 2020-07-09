Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A79219CD6
	for <lists.bridge@lfdr.de>; Thu,  9 Jul 2020 12:03:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 91C97897AE;
	Thu,  9 Jul 2020 10:03:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bxlIm5RerlQT; Thu,  9 Jul 2020 10:03:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1632B897BB;
	Thu,  9 Jul 2020 10:03:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 04694C016F;
	Thu,  9 Jul 2020 10:03:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8F593C016F
 for <bridge@lists.linux-foundation.org>; Thu,  9 Jul 2020 10:03:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0D80226B67
 for <bridge@lists.linux-foundation.org>; Thu,  9 Jul 2020 10:02:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9J6HwtHKcf2M for <bridge@lists.linux-foundation.org>;
 Thu,  9 Jul 2020 10:02:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by silver.osuosl.org (Postfix) with ESMTPS id 1C0F426ACE
 for <bridge@lists.linux-foundation.org>; Thu,  9 Jul 2020 10:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1594288938; x=1625824938;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bDsPDcBsqLSCU8wYG3pcNrGvWrN5XQXdrnUKLu6IKAM=;
 b=ajd0g1rM0jjkrRYBpAfH8d0U40Zljyzisa1bTxrXwBl+soRcRc1HdVjO
 h21TgUbYuIwO9Hgv07VrrUsLS9WDtUHjhyJNbv56Bm9KMza2a8+guljqy
 6M2lknK2DRpdXN5eUznBSN+bBeqE5kLchLzNwaOX1FV+BfSX10RpbAXha
 iL9tJQ6U7l1FcPljuc1kMIL80akjy4iVwP1x53DfvBNn6zon98X8qKHGv
 +bQxGWoMfucU3yre+mNz3mxxlIQWYP31CkSi6sCDc7NbwFH48R6b2k490
 xGBxsPitM0IU3fnXy7MT+d+0Vk7NT5F+cPp6zyVZFlhtJj7lGojMHxryr Q==;
IronPort-SDR: Bmsu01Dh6BcY4C8ginB9CRJtxIRy7jB1/iIUCmXegdH2rwsxZMiWYxRfGgBWVmMMZ2A9l2pX0+
 QOugWCrP34kQVuLumq38agjCL6ncVKNCIqQsRjIV7I8EfZaAV4LCf97CFDxa4IBI4unbWOY40k
 BRkGFX7l1G/SZp+DIvW8kXOPbOx+KCEiYJX9ZTdR+OGjK+cBDqQpITJcYBghmy5btv90HvYWdR
 Yu/7NkTbnbm5mxI9gwp/P54fPJVkah8FFjD86we++4cNPuvOY+C5rvfYbi+NNH15v2ktbYPk/W
 qss=
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="82397798"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jul 2020 03:02:17 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 9 Jul 2020 03:02:09 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Thu, 9 Jul 2020 03:02:06 -0700
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <jiri@resnulli.us>,
 <ivecera@redhat.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Thu, 9 Jul 2020 12:00:38 +0200
Message-ID: <20200709100040.554623-11-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200709100040.554623-1-horatiu.vultur@microchip.com>
References: <20200709100040.554623-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v2 10/12] bridge: uapi: mrp: Extend
	MRP_INFO attributes for interconnect status
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

Extend the existing MRP_INFO to return status of MRP interconnect. In
case there is no MRP interconnect on the node then the role will be
disabled so the other attributes can be ignored.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 include/uapi/linux/if_bridge.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index d840a3e37a37c..c1227aecd38fd 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -243,6 +243,11 @@ enum {
 	IFLA_BRIDGE_MRP_INFO_TEST_INTERVAL,
 	IFLA_BRIDGE_MRP_INFO_TEST_MAX_MISS,
 	IFLA_BRIDGE_MRP_INFO_TEST_MONITOR,
+	IFLA_BRIDGE_MRP_INFO_I_IFINDEX,
+	IFLA_BRIDGE_MRP_INFO_IN_STATE,
+	IFLA_BRIDGE_MRP_INFO_IN_ROLE,
+	IFLA_BRIDGE_MRP_INFO_IN_TEST_INTERVAL,
+	IFLA_BRIDGE_MRP_INFO_IN_TEST_MAX_MISS,
 	__IFLA_BRIDGE_MRP_INFO_MAX,
 };
 
-- 
2.27.0

