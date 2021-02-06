Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C21F7312032
	for <lists.bridge@lfdr.de>; Sat,  6 Feb 2021 22:50:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3D62585DCA;
	Sat,  6 Feb 2021 21:49:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id feCrtBbD8Z1Y; Sat,  6 Feb 2021 21:49:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 33B3885DCF;
	Sat,  6 Feb 2021 21:49:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 282D2C013A;
	Sat,  6 Feb 2021 21:49:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 74C0BC013A
 for <bridge@lists.linux-foundation.org>; Sat,  6 Feb 2021 21:49:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5F229204AF
 for <bridge@lists.linux-foundation.org>; Sat,  6 Feb 2021 21:49:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7WIPqy5oxXl9 for <bridge@lists.linux-foundation.org>;
 Sat,  6 Feb 2021 21:49:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by silver.osuosl.org (Postfix) with ESMTPS id 58138204A8
 for <bridge@lists.linux-foundation.org>; Sat,  6 Feb 2021 21:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1612648189; x=1644184189;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y0LF0QiYzcdX2y6gwZ07FxsFEt3swqe56rzuZlawFZY=;
 b=iNsxw4lRLNj7Bk+TVUCxJOHEx8Jkdu1BDA8SXMNFYIcU9SrBDPhwIql7
 34nfnkQcRnjLAY0inT2dG/MKz/xv8t6o/9EFa90GMu94Ki56/I6IWIPre
 sd40xslRz/wCinpWJ+6d+K1S089icMoQ4XFbKnf1zvbVtXYJsdHx6B+pb
 tzdNeuMXp5OrylmJdKm8zO6mAfo+QkqkiSbm5RKOK7x5ucwiZcxywSqGf
 anQqa7hNxVIgaTPYB4IwfXwlTQe8CGkWAz660rSPy0G1P5xyNUu+ruERN
 DiKT1RGRGuw8YVVGkUvTfAsWnlbc6SdY2hnpC8PwfFi04Ghm68z3JmiYW w==;
IronPort-SDR: gcsT9Pl+dqnMyULVGuASekAJ8cQq3N7GU2uvRFbX2u22exT5uskHtEuInH4D1G92ZidNUElUCj
 UsVlloBGTnVKheEQPtsV942divjR9FZLY1mSfEvrF31jIoXOZxcyhzCg0B6k74tQ9pU9SLQWbu
 v3xeNizgY5SUCsJV9nGOSZkXh73an31+crWYTENs0hbeLf7YYkPBy6rg54V9JC8Is/qgQNF/M6
 TGBaIkIAFNQJobu9Q5SaVxIBhH9VFU+dSfPZ4Zb+Dur/dNMG0Sen3jqSF0Gflx84n79ktffPQK
 nns=
X-IronPort-AV: E=Sophos;i="5.81,158,1610434800"; d="scan'208";a="102871017"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Feb 2021 14:49:48 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Sat, 6 Feb 2021 14:49:48 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Sat, 6 Feb 2021 14:49:46 -0700
To: <jiri@resnulli.us>, <ivecera@redhat.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <roopa@nvidia.com>, <nikolay@nvidia.com>,
 <rasmus.villemoes@prevas.dk>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Sat, 6 Feb 2021 22:47:34 +0100
Message-ID: <20210206214734.1577849-3-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210206214734.1577849-1-horatiu.vultur@microchip.com>
References: <20210206214734.1577849-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net 2/2] switchdev: mrp: Remove
	SWITCHDEV_ATTR_ID_MRP_PORT_STAT
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

Now that MRP started to use also SWITCHDEV_ATTR_ID_PORT_STP_STATE to
notify HW, then SWITCHDEV_ATTR_ID_MRP_PORT_STAT is not used anywhere
else, therefore we can remove it.

Fixes: c284b545900830 ("switchdev: mrp: Extend switchdev API to offload MRP")
Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 include/net/switchdev.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/net/switchdev.h b/include/net/switchdev.h
index 99cd538d6519..afdf8bd1b4fe 100644
--- a/include/net/switchdev.h
+++ b/include/net/switchdev.h
@@ -42,7 +42,6 @@ enum switchdev_attr_id {
 	SWITCHDEV_ATTR_ID_BRIDGE_MC_DISABLED,
 	SWITCHDEV_ATTR_ID_BRIDGE_MROUTER,
 #if IS_ENABLED(CONFIG_BRIDGE_MRP)
-	SWITCHDEV_ATTR_ID_MRP_PORT_STATE,
 	SWITCHDEV_ATTR_ID_MRP_PORT_ROLE,
 #endif
 };
@@ -62,7 +61,6 @@ struct switchdev_attr {
 		u16 vlan_protocol;			/* BRIDGE_VLAN_PROTOCOL */
 		bool mc_disabled;			/* MC_DISABLED */
 #if IS_ENABLED(CONFIG_BRIDGE_MRP)
-		u8 mrp_port_state;			/* MRP_PORT_STATE */
 		u8 mrp_port_role;			/* MRP_PORT_ROLE */
 #endif
 	} u;
-- 
2.27.0

