Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E453157A6
	for <lists.bridge@lfdr.de>; Tue,  9 Feb 2021 21:24:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1495187262;
	Tue,  9 Feb 2021 20:24:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s5M6FoO5IpSS; Tue,  9 Feb 2021 20:24:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id B56F487264;
	Tue,  9 Feb 2021 20:24:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 944EBC0174;
	Tue,  9 Feb 2021 20:24:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 28CAAC013A
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 20:24:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1D3D86F4BE
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 20:24:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nn2_kEWTnPBU for <bridge@lists.linux-foundation.org>;
 Tue,  9 Feb 2021 20:24:21 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 4C4186F5C4; Tue,  9 Feb 2021 20:24:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1D51A6F4BE
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 20:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1612902260; x=1644438260;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IhUdd2jlbfwy16e6uNnfyIi6STcN4Cush5DPbsaIFTY=;
 b=GZ2zAO/50GsTLSEgGWsPIeJkx9UddsXqcr1IOBRd5KleRKVlbc6GWTvP
 KcKMyG98U8R+7sQLJtrFUHA9VH2YZrDdImXhDUkfIVheL0xrTa4W9y0OZ
 lhiQNb0YJgVVAirDrDBJF9pzpB9xdNpZ3ChLbI9eqIoW39A4gzakkFWnR
 f3VpEF2Lsv/6lCrvTW/1gqcXGI7OEM8Ae8ef5QZgfszu/fGfMMXQXoz9z
 /JD9masAN5uwafqld9diTkogav1lYwDaggC4MLrTgPjWXYjuke62yjnSF
 i1d8d/HXONX28G8CITyaufpymQFiOJ+v3pMkzG6kgNxdpt2C3SJQTeBiu A==;
IronPort-SDR: O/2fqCzSvt06FAhn1bRmmaudCFo6rtgtKGyugMyzBemGzVfnpoQIZPn+WHQfDJ2Rsu4OJ2PMf6
 ILStXzz4o7pMsZSUv2LqqpG58GSMHSom9P/mDU40qQL0R887zeMey0TtZBH+DDqBmGdf8hJCeS
 r1j1R61aFGcA6hnpS8mKmxlODOpVqoYSOI0JjftaD8UPrI/2REd1ehIGQOKHMIcawzk2VuT0dj
 KXy1QEOWVoS8Ao9ysEal2HXBk+AI46q6RYmaXFe99K9P6+blPDQ3ZAIv/VLi7g0JLisYdyrrEO
 a7Y=
X-IronPort-AV: E=Sophos;i="5.81,166,1610434800"; d="scan'208";a="106029120"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Feb 2021 13:24:19 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 9 Feb 2021 13:24:19 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 9 Feb 2021 13:24:16 -0700
To: <jiri@resnulli.us>, <ivecera@redhat.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <roopa@nvidia.com>, <nikolay@nvidia.com>,
 <rasmus.villemoes@prevas.dk>, <andrew@lunn.ch>, <vladimir.oltean@nxp.com>,
 <claudiu.manoil@nxp.com>, <alexandre.belloni@bootlin.com>,
 <UNGLinuxDriver@microchip.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Tue, 9 Feb 2021 21:21:08 +0100
Message-ID: <20210209202112.2545325-2-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210209202112.2545325-1-horatiu.vultur@microchip.com>
References: <20210209202112.2545325-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v3 1/5] switchdev: mrp: Extend
	ring_role_mrp and in_role_mrp
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

Add the member sw_backup to the structures switchdev_obj_ring_role_mrp
and switchdev_obj_in_role_mrp. In this way the SW can call the driver in
2 ways, once when sw_backup is set to false, meaning that the driver
should implement this completely in HW. And if that is not supported the
SW will call again but with sw_backup set to true, meaning that the
HW should help or allow the SW to run the protocol.

For example when role is MRM, if the HW can't detect when it stops
receiving MRP Test frames but it can trap these frames to CPU, then it
needs to return -EOPNOTSUPP when sw_backup is false and return 0 when
sw_backup is true.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 include/net/switchdev.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/net/switchdev.h b/include/net/switchdev.h
index 6dcfc4c51a6e..067f259279e1 100644
--- a/include/net/switchdev.h
+++ b/include/net/switchdev.h
@@ -130,6 +130,7 @@ struct switchdev_obj_ring_role_mrp {
 	struct switchdev_obj obj;
 	u8 ring_role;
 	u32 ring_id;
+	u8 sw_backup;
 };
 
 #define SWITCHDEV_OBJ_RING_ROLE_MRP(OBJ) \
@@ -164,6 +165,7 @@ struct switchdev_obj_in_role_mrp {
 	u32 ring_id;
 	u16 in_id;
 	u8 in_role;
+	u8 sw_backup;
 };
 
 #define SWITCHDEV_OBJ_IN_ROLE_MRP(OBJ) \
-- 
2.27.0

