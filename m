Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B273459CD
	for <lists.bridge@lfdr.de>; Tue, 23 Mar 2021 09:35:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03C1440499;
	Tue, 23 Mar 2021 08:35:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nqd2PXa6Yo2p; Tue, 23 Mar 2021 08:35:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTP id 53F7540496;
	Tue, 23 Mar 2021 08:35:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 42F95C0012;
	Tue, 23 Mar 2021 08:35:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C9F61C0001
 for <bridge@lists.linux-foundation.org>; Tue, 23 Mar 2021 08:35:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B79566067E
 for <bridge@lists.linux-foundation.org>; Tue, 23 Mar 2021 08:35:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=microchip.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QTYQoQZcidur for <bridge@lists.linux-foundation.org>;
 Tue, 23 Mar 2021 08:35:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.153.233])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 27CF96065F
 for <bridge@lists.linux-foundation.org>; Tue, 23 Mar 2021 08:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1616488538; x=1648024538;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9lxgTCKRb/dXejM+dtq7XdfnshCfyP/EiqkevaxcJeg=;
 b=la+h9dmkbJRiJYttmM9x2qiqRZqOKWfolWah80JYH8s/3MJz5wPD06Iy
 i6oC0KKJbDL9aPJcfR7seU540GB3gAP0R5ZvT85pAAghKZehS+BwyAqut
 bU1PNPuwLLOX6KBa2W8MKQN/B5vLguAyd6P1G70wML3qEsLBqWvsy3bNV
 oJwkECr1YB5VOFNuGlisnZxwaVU7dvwvT4Js5Mx3/YqRclNszIUQTkolw
 dn3pSGRT/CScV7X9XwYK3hS+SZETL9PCbNrHWDBUYd9D/MlTdacQeqpq8
 jw3uZw+6lV3ZV3lVA9eAE0tMTIj2V7iuKYqJ5LOeeI7tPKujRUybXAW3C w==;
IronPort-SDR: 8dyTKFYqqY3KjC9tnK/tpkWhd6yRDjFuKIF+fU34EY1QNDJfhc27pPJpNpK5jhol+KlyVmK3Tr
 N659v615CFxBCEzcxupmwEcyg8pWF76Obfcke9lvKkbEfqwbQ02ZtPmiqB0qenDGNA4RXorOT8
 QrYaeSndgU/n6HTEPM7z8yzxiTKjGN2+CcOry52+NueIE9VWvDZ2dkCp8XGOwJB29e335p6+E4
 SS+PEGWCHS5/4iwByLjQLxHvWVZIOeMhZiF1dPSGhypNbR9s2rz9LvAZMYqTLXK7b9pgIrbZG/
 PxA=
X-IronPort-AV: E=Sophos;i="5.81,271,1610434800"; d="scan'208";a="120052714"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Mar 2021 01:35:37 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Tue, 23 Mar 2021 01:35:37 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2176.2 via Frontend Transport; Tue, 23 Mar 2021 01:35:35 -0700
To: <davem@davemloft.net>, <kuba@kernel.org>, <roopa@nvidia.com>,
 <nikolay@nvidia.com>, <vladimir.oltean@nxp.com>, <claudiu.manoil@nxp.com>,
 <alexandre.belloni@bootlin.com>
Date: Tue, 23 Mar 2021 09:33:46 +0100
Message-ID: <20210323083347.1474883-2-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210323083347.1474883-1-horatiu.vultur@microchip.com>
References: <20210323083347.1474883-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org, Horatiu
 Vultur <horatiu.vultur@microchip.com>, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com
Subject: [Bridge] [PATCH net-next 1/2] bridge: mrp: Disable roles before
	deleting the MRP instance
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

When an MRP instance was created, the driver was notified that the
instance is created and then in a different callback about role of the
instance. But when the instance was deleted the driver was notified only
that the MRP instance is deleted and not also that the role is disabled.

This patch make sure that the driver is notified that the role is
changed to disabled before the MRP instance is deleted to have similar
callbacks with the creating of the instance. In this way it would
simplify the logic in the drivers.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_mrp.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
index 12487f6fe9b4..cd2b1e424e54 100644
--- a/net/bridge/br_mrp.c
+++ b/net/bridge/br_mrp.c
@@ -411,6 +411,13 @@ static void br_mrp_del_impl(struct net_bridge *br, struct br_mrp *mrp)
 	cancel_delayed_work_sync(&mrp->in_test_work);
 	br_mrp_switchdev_send_in_test(br, mrp, 0, 0, 0);
 
+	/* Disable the roles */
+	br_mrp_switchdev_set_ring_role(br, mrp, BR_MRP_RING_ROLE_DISABLED);
+	p = rtnl_dereference(mrp->i_port);
+	if (p)
+		br_mrp_switchdev_set_in_role(br, mrp, mrp->in_id, mrp->ring_id,
+					     BR_MRP_IN_ROLE_DISABLED);
+
 	br_mrp_switchdev_del(br, mrp);
 
 	/* Reset the ports */
-- 
2.30.1

