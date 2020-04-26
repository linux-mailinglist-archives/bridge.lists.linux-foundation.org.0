Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B05541B9077
	for <lists.bridge@lfdr.de>; Sun, 26 Apr 2020 15:23:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B5C38859EF;
	Sun, 26 Apr 2020 13:23:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4ZS1nip5zV1Q; Sun, 26 Apr 2020 13:23:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3D1AB859CC;
	Sun, 26 Apr 2020 13:23:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2188EC0172;
	Sun, 26 Apr 2020 13:23:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 83C8EC0172
 for <bridge@lists.linux-foundation.org>; Sun, 26 Apr 2020 13:23:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7385585465
 for <bridge@lists.linux-foundation.org>; Sun, 26 Apr 2020 13:23:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l3ofyZjOakYR for <bridge@lists.linux-foundation.org>;
 Sun, 26 Apr 2020 13:23:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DF2E68543B
 for <bridge@lists.linux-foundation.org>; Sun, 26 Apr 2020 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587907433; x=1619443433;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=Cs2IxwzEDfKTybGbgmEWRRh58Im0y8KqYjlGzy87Z/Q=;
 b=Qw5JHa85EsWgcvJvWy5BQwjDkz9xYuCHaOLowQfLgMB2TghMZgH149N7
 NCdYL2LBBKS+Oyvll5usMTXezBwAzaftLrOrsU/wJrPkw+3gQHTi2u4h7
 dsiYUEDC72G8K1gOkiZzHoXAY5ewI4u+3ndwAy1mo1kOZQ3F6LaMnfcKP
 BPUjLIWQpEyYu1wfd9PKEr0sajpjwDpGhKgsHqT6mBSvtltbDaqies3mN
 ivh+aRpMu21JBWfj5EOQVcqI9Vy6xELDVODWIlyXNUat6EPe8CmxGWjRf
 g0EroI6VgaHrAH5pchdd5qNIi0ptn+4yUtkJf49VP4YKmYop9ru989Rha Q==;
IronPort-SDR: 2ItX9eYv8BBI3uZwjpfd8PX8qSAUazK/xWCRreiUnaawradijSJjTiEoSRi/bPeE2HHV1fgoWL
 vETVN7EUo/HSsBDFKi8HP7txb/B4XfjcMYJcmVMShilWoHB3CLEHlVblrVyr8crQP24HupCsks
 EDpoeTfpHkLP8Ywt031hCIuPtVV83Rm+vSvRyJSZqs3oOYyLRb8x/79lSdOs+PNzDARt/gxh7K
 WNYRN0Og4/JIaAt2ICevGnPndGOtcywtFDTGIr8i4f7cFHlUhyCcaOJ2lZtTTJDHXmFWIJD0TQ
 aEA=
X-IronPort-AV: E=Sophos;i="5.73,320,1583218800"; d="scan'208";a="74586822"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Apr 2020 06:23:53 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 26 Apr 2020 06:23:53 -0700
Received: from soft-dev3.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Sun, 26 Apr 2020 06:23:50 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <nikolay@cumulusnetworks.com>, <davem@davemloft.net>, <jiri@resnulli.us>, 
 <ivecera@redhat.com>, <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <olteanv@gmail.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Sun, 26 Apr 2020 15:21:59 +0200
Message-ID: <20200426132208.3232-3-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200426132208.3232-1-horatiu.vultur@microchip.com>
References: <20200426132208.3232-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v4 02/11] bridge: mrp: Update Kconfig
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

Add the option BRIDGE_MRP to allow to build in or not MRP support.
The default value is N.

Reviewed-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/Kconfig | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/net/bridge/Kconfig b/net/bridge/Kconfig
index e4fb050e2078..51a6414145d2 100644
--- a/net/bridge/Kconfig
+++ b/net/bridge/Kconfig
@@ -61,3 +61,15 @@ config BRIDGE_VLAN_FILTERING
 	  Say N to exclude this support and reduce the binary size.
 
 	  If unsure, say Y.
+
+config BRIDGE_MRP
+	bool "MRP protocol"
+	depends on BRIDGE
+	default n
+	help
+	  If you say Y here, then the Ethernet bridge will be able to run MRP
+	  protocol to detect loops
+
+	  Say N to exclude this support and reduce the binary size.
+
+	  If unsure, say N.
-- 
2.17.1

