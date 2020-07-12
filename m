Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F64721C9C2
	for <lists.bridge@lfdr.de>; Sun, 12 Jul 2020 16:10:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CA58588AB6;
	Sun, 12 Jul 2020 14:09:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qQzY7TXZAsDX; Sun, 12 Jul 2020 14:09:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1FFCC88A97;
	Sun, 12 Jul 2020 14:09:47 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0833FC0733;
	Sun, 12 Jul 2020 14:09:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 35D26C0894
 for <bridge@lists.linux-foundation.org>; Sun, 12 Jul 2020 14:09:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 20DA287666
 for <bridge@lists.linux-foundation.org>; Sun, 12 Jul 2020 14:09:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ca7IWD2c2hYH for <bridge@lists.linux-foundation.org>;
 Sun, 12 Jul 2020 14:09:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 479F88764F
 for <bridge@lists.linux-foundation.org>; Sun, 12 Jul 2020 14:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1594562979; x=1626098979;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c4X1KegbRVo2rPHVO+76/AY6f9Y7hMIp5vMhUVrwmVo=;
 b=tKlSmziwLxD1OcvnL6kIyOAgPPUge10yuYfvNGnnlNYJkWGgsorhWzlD
 keT/RY438uqPPg6tPj2tTkxg5xCjJoKmYY2zuKlyJYEctJ4nqO7SWWYBu
 i+T2TFPWhpwU6EFNTg8OYN7BP1UzqR064cB+u9SFItCQultyX+IwhI2Ch
 4zvD0zKpzCfky5/BEg0vyXUUDencMNmqEWuq34LHLcEdmO8kaTEdLdcg1
 PHcTgiV+YWhc9bchxKguEZRN6LuJnCnrmI94K6TDzHuVCvSBac9db3Mpz
 g+ua4D/Me8dBMBwsnuU5nEunl8GDauS2sKMpvJQTyDhiFlYFng8234tR2 g==;
IronPort-SDR: IIhRXN5eywu8Y5HscPBc1qgFlLQgSfhR4d/B5Y6mOdJ/aLtswbQIzx9Qadn7c5NenhxEJv7p4r
 Kk3IMHxBabgGn/l/LY8yEvicM+A3kixKAsw3lFpdDpSKSC6pzU3yErM5/gd4nUqsIVMS4G+ZyV
 AS9SufZOFChDDOhFd2Orsl+cQpP9DV+OJ7c9YBZlLU6TVSL4uUmQgG/fA0W6+x0Ea47gTOIah3
 /PLIBKIK+FJZN3Vz21PvpssMbIcIeB3bq1T4GQaG3cjM/3cKzlZjfpVgy3L8YzaJyyNih+lp7E
 0fM=
X-IronPort-AV: E=Sophos;i="5.75,343,1589266800"; d="scan'208";a="79604262"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Jul 2020 07:09:38 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Sun, 12 Jul 2020 07:09:38 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Sun, 12 Jul 2020 07:09:06 -0700
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <jiri@resnulli.us>,
 <ivecera@redhat.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Sun, 12 Jul 2020 16:05:50 +0200
Message-ID: <20200712140556.1758725-7-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200712140556.1758725-1-horatiu.vultur@microchip.com>
References: <20200712140556.1758725-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v3 06/12] bridge: mrp: Add
	br_mrp_in_port_open function
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

This function notifies the userspace when the node lost the continuity
of MRP_InTest frames.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_mrp_netlink.c | 22 ++++++++++++++++++++++
 net/bridge/br_private_mrp.h |  1 +
 2 files changed, 23 insertions(+)

diff --git a/net/bridge/br_mrp_netlink.c b/net/bridge/br_mrp_netlink.c
index acce300c0cc29..4bf7aaeb29152 100644
--- a/net/bridge/br_mrp_netlink.c
+++ b/net/bridge/br_mrp_netlink.c
@@ -389,3 +389,25 @@ int br_mrp_ring_port_open(struct net_device *dev, u8 loc)
 out:
 	return err;
 }
+
+int br_mrp_in_port_open(struct net_device *dev, u8 loc)
+{
+	struct net_bridge_port *p;
+	int err = 0;
+
+	p = br_port_get_rcu(dev);
+	if (!p) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	if (loc)
+		p->flags |= BR_MRP_LOST_IN_CONT;
+	else
+		p->flags &= ~BR_MRP_LOST_IN_CONT;
+
+	br_ifinfo_notify(RTM_NEWLINK, NULL, p);
+
+out:
+	return err;
+}
diff --git a/net/bridge/br_private_mrp.h b/net/bridge/br_private_mrp.h
index e93c8f9d4df58..23da2f956ad0e 100644
--- a/net/bridge/br_private_mrp.h
+++ b/net/bridge/br_private_mrp.h
@@ -75,5 +75,6 @@ int br_mrp_port_switchdev_set_role(struct net_bridge_port *p,
 
 /* br_mrp_netlink.c  */
 int br_mrp_ring_port_open(struct net_device *dev, u8 loc);
+int br_mrp_in_port_open(struct net_device *dev, u8 loc);
 
 #endif /* _BR_PRIVATE_MRP_H */
-- 
2.27.0

