Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F89B31D23D
	for <lists.bridge@lfdr.de>; Tue, 16 Feb 2021 22:43:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 397F7871C1;
	Tue, 16 Feb 2021 21:43:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VI4IhPI2yGGn; Tue, 16 Feb 2021 21:43:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 05DC387165;
	Tue, 16 Feb 2021 21:43:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E17A0C0FA7;
	Tue, 16 Feb 2021 21:43:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 29695C013A
 for <bridge@lists.linux-foundation.org>; Tue, 16 Feb 2021 21:43:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EDA7687165
 for <bridge@lists.linux-foundation.org>; Tue, 16 Feb 2021 21:43:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g0Fgw-FbSGwE for <bridge@lists.linux-foundation.org>;
 Tue, 16 Feb 2021 21:43:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5C8B286F8E
 for <bridge@lists.linux-foundation.org>; Tue, 16 Feb 2021 21:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1613511794; x=1645047794;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=toNEZFJJYd5FgfnhWtjPWmHGIkQV7vwszU+NWqwwudI=;
 b=PhaZNro/o/9aH9RSjG7ikWDwZGZOGMXMV1PAl9tbRP9n2rXuGbMZLKm8
 laC7064I07K/9HK+WMDHh97ddVoL3o6RacuA+f0RlDTlA7M++jUtACqbj
 8dRRiX4QDDov4H4e/M+Q7BatnHUi23pRAjBZMjkpfbCNxWgI2UBF+MX14
 xI5G+nkeGVeLX5lVXZDPB2hAkp9QaxTI4kCY1gERgB9isW1RPcUaLCq07
 CHSiFedNgEpFCcR7g0nowiSPVeVb11Yq70o+INChIvulRMc2bvJxZYB3M
 g0qHFt2jZSEky0Zq0FmWY/1hJqVrf8zE2OJ8i2TKc8ue3arSMVlDjXrv7 A==;
IronPort-SDR: b0zLDWUHjEvUgiw3w7f8O2hbeXxYYe4e0cdQBfwktt3ItbTUeaxYI/3nT1v3lPmXGIqN1ztZr/
 UIU8dLw3RNPLHqISe9imU9lTlQbXWgt0aCWDJ4Z7rDJmQDpRVfEwAGAPjwm4mCcDpmPFcHskAO
 8ByIDm9gwbeV2fwq5SB8Ml3IlFDu0oP0dlm00SSAEHUFL0sVXpE/lHb7qRmU1Dny62GADbdU4V
 P+NI2D7UAWPGw7a0ZjrXX9W9FDVbUGEbKsNtg6eXYhX+uSn+nHzTo/Fh21OA1Ci1330CFMKhd3
 U24=
X-IronPort-AV: E=Sophos;i="5.81,184,1610434800"; d="scan'208";a="44324933"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Feb 2021 14:43:14 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 16 Feb 2021 14:43:06 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 16 Feb 2021 14:43:03 -0700
To: <davem@davemloft.net>, <kuba@kernel.org>
Date: Tue, 16 Feb 2021 22:41:59 +0100
Message-ID: <20210216214205.32385-3-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210216214205.32385-1-horatiu.vultur@microchip.com>
References: <20210216214205.32385-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: ivecera@redhat.com, andrew@lunn.ch, alexandre.belloni@bootlin.com,
 f.fainelli@gmail.com, jiri@resnulli.us, rasmus.villemoes@prevas.dk,
 vladimir.oltean@nxp.com, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 claudiu.manoil@nxp.com, netdev@vger.kernel.org, nikolay@nvidia.com,
 roopa@nvidia.com, Horatiu Vultur <horatiu.vultur@microchip.com>,
 vivien.didelot@gmail.com
Subject: [Bridge] [PATCH net-next v4 2/8] switchdev: mrp: Extend
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
index 465362d9d063..b7fc7d0f54e2 100644
--- a/include/net/switchdev.h
+++ b/include/net/switchdev.h
@@ -127,6 +127,7 @@ struct switchdev_obj_ring_role_mrp {
 	struct switchdev_obj obj;
 	u8 ring_role;
 	u32 ring_id;
+	u8 sw_backup;
 };
 
 #define SWITCHDEV_OBJ_RING_ROLE_MRP(OBJ) \
@@ -161,6 +162,7 @@ struct switchdev_obj_in_role_mrp {
 	u32 ring_id;
 	u16 in_id;
 	u8 in_role;
+	u8 sw_backup;
 };
 
 #define SWITCHDEV_OBJ_IN_ROLE_MRP(OBJ) \
-- 
2.27.0

