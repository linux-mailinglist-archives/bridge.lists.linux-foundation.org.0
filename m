Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77EFE1DD95E
	for <lists.bridge@lfdr.de>; Thu, 21 May 2020 23:21:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E0DC58762C;
	Thu, 21 May 2020 21:21:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qvGNzhrh-KEB; Thu, 21 May 2020 21:21:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 810A187617;
	Thu, 21 May 2020 21:21:38 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 766ADC0176;
	Thu, 21 May 2020 21:21:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CA59DC0176
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 21:21:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B931388CBF
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 21:21:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id omJVE52Kan-a for <bridge@lists.linux-foundation.org>;
 Thu, 21 May 2020 21:21:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2D70B88AA6
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 21:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590096097; x=1621632097;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TdAMOjHLIL52IjrktH/4zpMrbAD/w3CJWe4Kq01sDTk=;
 b=lbJnvqknMKmtu/4sH7/8zDBHnjUS2UpKqmLScL6oofU4KlO2OGkGCFph
 IFzghoQ1qsyUrhXOR6zEY6btO4eDEHkxWCb0Bi3lEDeA7xUINj+G54/By
 2QHmJO8/OL153a5jhOWDbo3BMqb+9/2Kz3IB1UXyRX3CBjcxiNGuarHjI
 0pyGKnS0sh+6PAh05Cmsn9MGGYbXxIE9oxtWwXXzTkg1VNwI7GnrRU8T2
 AIiaOQv2otRVmF8OJJj7BwqR4URy2sb1pPdhI+QYRU5XU2lT0Yz+fbWUf
 FknHgYYKjkONh8nXVj0cPDL1xYeOpgM3lpwGVi1+ka19oPhlNPMKeI7h+ Q==;
IronPort-SDR: T2/9xtOWlSU1VFyDJ2IQtqBie1D9DIIUdZzI0FxBCtoy6qRTmvU2nl05H1SF8gbdR71dU4GHpC
 j13NxQTGYEXA6+k4kH5iUQjTypG8iqUaPP8EPFfcfdbkHw7BATYIeMLlGZzaFukJaepsUAhfP1
 jiFU6rU2HH/Gkb3H70cBOH0+WxLiE+CYr+ir6VqE69iB8KDTQOslkGyBSTycujLalk7Szm1RHS
 9zF0manjinLlWaMBtSEgTY79oPQ2863AcR4rEA+VWHUQB+5LY5n6Sqb4+sV+gvYHh/HpHkRwz/
 LKg=
X-IronPort-AV: E=Sophos;i="5.73,419,1583218800"; d="scan'208";a="74176781"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 May 2020 14:21:36 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 21 May 2020 14:21:35 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 21 May 2020 14:21:33 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <jiri@resnulli.us>, <ivecera@redhat.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <nikolay@cumulusnetworks.com>, <andrew@lunn.ch>,
 <UNGLinuxDriver@microchip.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Thu, 21 May 2020 23:19:06 +0000
Message-ID: <20200521231907.3564679-3-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200521231907.3564679-1-horatiu.vultur@microchip.com>
References: <20200521231907.3564679-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH v2 2/3] switchdev: mrp: Remove the variable
	mrp_ring_state
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

Remove the variable mrp_ring_state from switchdev_attr because is not
used anywhere.
The ring state is set using SWITCHDEV_OBJ_ID_RING_STATE_MRP.

Fixes: c284b5459008 ("switchdev: mrp: Extend switchdev API to offload MRP")
Acked-by: Ivan Vecera <ivecera@redhat.com>
Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 include/net/switchdev.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/net/switchdev.h b/include/net/switchdev.h
index ae7aeb0d1f9ca..db519957e134b 100644
--- a/include/net/switchdev.h
+++ b/include/net/switchdev.h
@@ -62,7 +62,6 @@ struct switchdev_attr {
 #if IS_ENABLED(CONFIG_BRIDGE_MRP)
 		u8 mrp_port_state;			/* MRP_PORT_STATE */
 		u8 mrp_port_role;			/* MRP_PORT_ROLE */
-		u8 mrp_ring_state;			/* MRP_RING_STATE */
 #endif
 	} u;
 };
-- 
2.26.2

