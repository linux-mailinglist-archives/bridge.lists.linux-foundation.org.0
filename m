Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 719F51DB113
	for <lists.bridge@lfdr.de>; Wed, 20 May 2020 13:11:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CEB3E2375C;
	Wed, 20 May 2020 11:11:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o48W3V9jYj0w; Wed, 20 May 2020 11:11:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id CFDBB235B8;
	Wed, 20 May 2020 11:11:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B3BB1C0176;
	Wed, 20 May 2020 11:11:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 29B9EC0176
 for <bridge@lists.linux-foundation.org>; Wed, 20 May 2020 11:11:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 19011873DE
 for <bridge@lists.linux-foundation.org>; Wed, 20 May 2020 11:11:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H5C4Gyl7YvcK for <bridge@lists.linux-foundation.org>;
 Wed, 20 May 2020 11:11:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7A83886D63
 for <bridge@lists.linux-foundation.org>; Wed, 20 May 2020 11:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589973083; x=1621509083;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x3JarY+Ofxg1Q/ChDZn1X4VP9ONVcoEd86Sl35tMr3w=;
 b=b9wi4IiV/um4xSnVBpT4NOXnLkDXJtRLSx4J0C6d6NfCHvgKpf9pErx3
 JAyOOXx4etoD4OS8/c6ldhzaoku2q6DOU+9RtFiRFkYkA3tvW8L15jYKY
 dMHxSmElkTPzcafJP9H4O4QvrSDAfF7P0IMr8nkfPQHXXvDiCS6Lbc44m
 EBUkxxmFGB9hSNt8bMiBs1SCGLMcVYS5uAqFBcbNK5BeUUdm69NA0m4+6
 8IN1xq84K3x225+aHBAwldC0FkC7wixLJpxBdxWtMO1i3yX0OZtjP6LVv
 1uRntY4+TNmE2csmEwYfGp1QXpNQ5b1Gbo9Db6IiSnyK6IKcu7khSRCbT Q==;
IronPort-SDR: Q2C/pm8Eu/hUlgmAeslzNkKkT5tbKIIfo/TnZd0RXTUM1xSVl9/JWgT5ndCKURI3NqUq7BO+Fb
 KhdZe3EBpF0n1GOsuyidDU5xiKbT+DPWtRGYjtWZZLHrH03Aci0D6TP1D6rlpJRwYu0pWBov5V
 1doNLuAXz8X2mkGD4VAaKymfrmcAh/ijD4WSIia+yPaqbp+qau3DWeiRL06Tm2XYTZCo/8qa6Q
 yEHbcK2Bb01s8ZC5sem4baWLhqYX6Jjd19kKr5hQs2Wv+ou6eqTyb6jh/XErBj/78SPf1RTfaR
 +30=
X-IronPort-AV: E=Sophos;i="5.73,413,1583218800"; d="scan'208";a="80358668"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 May 2020 04:11:22 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 20 May 2020 04:11:22 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 20 May 2020 04:11:19 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <jiri@resnulli.us>, <ivecera@redhat.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <nikolay@cumulusnetworks.com>, <andrew@lunn.ch>,
 <UNGLinuxDriver@microchip.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Wed, 20 May 2020 13:09:22 +0000
Message-ID: <20200520130923.3196432-3-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200520130923.3196432-1-horatiu.vultur@microchip.com>
References: <20200520130923.3196432-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH 2/3] switchdev: mrp: Remove the variable
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

