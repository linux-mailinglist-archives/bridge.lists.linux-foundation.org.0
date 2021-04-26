Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4B536C0A2
	for <lists.bridge@lfdr.de>; Tue, 27 Apr 2021 10:08:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C8DAB60B12;
	Tue, 27 Apr 2021 08:08:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sI9s3hEpZbXt; Tue, 27 Apr 2021 08:08:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1823760AFF;
	Tue, 27 Apr 2021 08:08:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B3E88C001E;
	Tue, 27 Apr 2021 08:08:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9D6A6C000B
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 17:04:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8CB9A83443
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 17:04:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20150623.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CoP4dwrDw0cn for <bridge@lists.linux-foundation.org>;
 Mon, 26 Apr 2021 17:04:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 68261834E1
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 17:04:55 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id w9so5491968lfr.12
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 10:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=yKMCo3mPhrZ7sJPdBS64GxI1OnhjCpUrX0VbNAl+h84=;
 b=LOlH96YAZjSjX+pTnrjjLbz1OUNxMfEVOSOcKxp/tsjp9n1t1Zjx0r5u8ihoOv00D5
 uCLzTk/gNmNw5JBPuzaFt8RPD+agNDnbRmg/8WyqjYxOHxrzsJgWEpq4B29cYLFNOa1T
 3G3/1FDJY2GkehMdncswfhP4hRa83LSWVIUsuekIKJeTOcZnuZVyOoWPHkGQlWJQ0O4D
 pIoSmdyZKlMTfIvADyFaFFpf3YlGaZ+Wml8kYwp/xUa6C0wIr4zMT/Pot5oFtxm1OD7u
 +m6h/XWUSCOB6K9OVCykPBKgxC+tLMK8i1ejQ6Njl4bVwI5SG5O92WDX3yhij2MyykCq
 ACmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=yKMCo3mPhrZ7sJPdBS64GxI1OnhjCpUrX0VbNAl+h84=;
 b=O1g5xF5SnyijRX/Fx7SOZQDtZX9xBBpJSrXQCS1OCzuhYfTdERwwf6eFtE+r9QYERW
 +x+K6VSOnclI1v2vMpXjZBpgj3QR+HlWiHoLHv5DrTM3i0mx9UAZkqaQHMQJWYy4yFGC
 WZKPu2YzqmKFG/ucWLcP+WoJR0sjvbnsn+D0/l/UrI4o1HCOUkDV5jGibQZOEx5oBxHm
 4ZVyPqakB7isyZ0ERCwpjfBWT7FMXpN4QulsqgkBXG7qKn19BkjS8h36uTgcjj++/HUE
 MKyDAmhS80Hw9lLrkC9zUz16D9oMlPAV2dH0GdvpZL5/M1LOkjBFdqvQkVSfzKY4nwWu
 dwPw==
X-Gm-Message-State: AOAM5306/brNFWsgdGbXQPPJNVm2Gi3fhdz7+5aCiLZiQ45DReFcSm9r
 BSvaRn0yUUYxZ1/uVJgjSf79a1a4Uv97sA==
X-Google-Smtp-Source: ABdhPJxqOTMcL7SlRN+5JOCgPnJrZNhi9qvc1VVqJ46aydzwhI2e/PhlwK/ZEoed314+ZEfESHPkkQ==
X-Received: by 2002:ac2:5f42:: with SMTP id 2mr6995959lfz.85.1619456693328;
 Mon, 26 Apr 2021 10:04:53 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89])
 by smtp.gmail.com with ESMTPSA id c18sm59140ljd.66.2021.04.26.10.04.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Apr 2021 10:04:52 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Mon, 26 Apr 2021 19:04:09 +0200
Message-Id: <20210426170411.1789186-8-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210426170411.1789186-1-tobias@waldekranz.com>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 27 Apr 2021 08:08:26 +0000
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org, idosch@idosch.org,
 nikolay@nvidia.com, roopa@nvidia.com, olteanv@gmail.com,
 vivien.didelot@gmail.com
Subject: [Bridge] [RFC net-next 7/9] net: dsa: mv88e6xxx: Allocate a virtual
	DSA port for each bridge
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

In the near future we want to offload transmission of both unicasts
and multicasts from a bridge by sending a single FORWARD and use the
switches' config to determine the destination(s). Much in the same way
as we have already relied on them to do between user ports in the
past.

As isolation between bridges must still be maintained, we need to pass
an identifier in the DSA tag that the switches can use to determine
the set of physical ports that make up a particular flooding domain.

Therefore: allocate a DSA device/port tuple that is not used by any
physical device to each bridge we are offloading. We can then in
upcoming changes use this tuple to setup cross-chip port based VLANs
to restrict the set of valid egress ports to only contain the ports
that are offloading the same bridge.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 drivers/net/dsa/mv88e6xxx/Makefile |   1 +
 drivers/net/dsa/mv88e6xxx/chip.c   |  11 +++
 drivers/net/dsa/mv88e6xxx/dst.c    | 127 +++++++++++++++++++++++++++++
 drivers/net/dsa/mv88e6xxx/dst.h    |  12 +++
 include/net/dsa.h                  |   5 ++
 5 files changed, 156 insertions(+)
 create mode 100644 drivers/net/dsa/mv88e6xxx/dst.c
 create mode 100644 drivers/net/dsa/mv88e6xxx/dst.h

diff --git a/drivers/net/dsa/mv88e6xxx/Makefile b/drivers/net/dsa/mv88e6xxx/Makefile
index c8eca2b6f959..20e00695b28d 100644
--- a/drivers/net/dsa/mv88e6xxx/Makefile
+++ b/drivers/net/dsa/mv88e6xxx/Makefile
@@ -2,6 +2,7 @@
 obj-$(CONFIG_NET_DSA_MV88E6XXX) += mv88e6xxx.o
 mv88e6xxx-objs := chip.o
 mv88e6xxx-objs += devlink.o
+mv88e6xxx-objs += dst.o
 mv88e6xxx-objs += global1.o
 mv88e6xxx-objs += global1_atu.o
 mv88e6xxx-objs += global1_vtu.o
diff --git a/drivers/net/dsa/mv88e6xxx/chip.c b/drivers/net/dsa/mv88e6xxx/chip.c
index eca285aaf72f..06ef654472b7 100644
--- a/drivers/net/dsa/mv88e6xxx/chip.c
+++ b/drivers/net/dsa/mv88e6xxx/chip.c
@@ -33,6 +33,7 @@
 
 #include "chip.h"
 #include "devlink.h"
+#include "dst.h"
 #include "global1.h"
 #include "global2.h"
 #include "hwtstamp.h"
@@ -2371,6 +2372,10 @@ static int mv88e6xxx_port_bridge_join(struct dsa_switch *ds, int port,
 	struct mv88e6xxx_chip *chip = ds->priv;
 	int err;
 
+	err = mv88e6xxx_dst_bridge_join(ds->dst, br);
+	if (err)
+		return err;
+
 	mv88e6xxx_reg_lock(chip);
 	err = mv88e6xxx_bridge_map(chip, br);
 	mv88e6xxx_reg_unlock(chip);
@@ -2388,6 +2393,8 @@ static void mv88e6xxx_port_bridge_leave(struct dsa_switch *ds, int port,
 	    mv88e6xxx_port_vlan_map(chip, port))
 		dev_err(ds->dev, "failed to remap in-chip Port VLAN\n");
 	mv88e6xxx_reg_unlock(chip);
+
+	mv88e6xxx_dst_bridge_leave(ds->dst, br);
 }
 
 static int mv88e6xxx_crosschip_bridge_join(struct dsa_switch *ds,
@@ -3027,6 +3034,10 @@ static int mv88e6xxx_setup(struct dsa_switch *ds)
 
 	mv88e6xxx_reg_lock(chip);
 
+	err = mv88e6xxx_dst_add_chip(chip);
+	if (err)
+		goto unlock;
+
 	if (chip->info->ops->setup_errata) {
 		err = chip->info->ops->setup_errata(chip);
 		if (err)
diff --git a/drivers/net/dsa/mv88e6xxx/dst.c b/drivers/net/dsa/mv88e6xxx/dst.c
new file mode 100644
index 000000000000..399a818063bf
--- /dev/null
+++ b/drivers/net/dsa/mv88e6xxx/dst.c
@@ -0,0 +1,127 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * mv88e6xxx global DSA switch tree state
+ */
+
+#include <linux/bitmap.h>
+#include <linux/dsa/mv88e6xxx.h>
+#include <linux/list.h>
+#include <linux/module.h>
+#include <linux/netdevice.h>
+#include <net/dsa.h>
+
+#include "chip.h"
+#include "dst.h"
+#include "global2.h"
+
+struct mv88e6xxx_br {
+	struct list_head list;
+
+	struct net_device *brdev;
+	u8 dev;
+	u8 port;
+};
+
+struct mv88e6xxx_dst {
+	struct list_head bridges;
+
+	DECLARE_BITMAP(busy_ports, MV88E6XXX_MAX_PVT_ENTRIES);
+
+#define DEV_PORT_TO_BIT(_dev, _port)			\
+	((_dev) * MV88E6XXX_MAX_PVT_PORTS + (_port))
+#define DEV_FROM_BIT(_bit) ((_bit) / MV88E6XXX_MAX_PVT_PORTS)
+#define PORT_FROM_BIT(_bit) ((_bit) % (MV88E6XXX_MAX_PVT_PORTS))
+};
+
+int mv88e6xxx_dst_bridge_join(struct dsa_switch_tree *dst,
+			      struct net_device *brdev)
+{
+	struct mv88e6xxx_dst *mvdst = dst->priv;
+	struct mv88e6xxx_br *mvbr;
+	unsigned int bit;
+
+	list_for_each_entry(mvbr, &mvdst->bridges, list) {
+		if (mvbr->brdev == brdev)
+			return 0;
+	}
+
+	bit = find_first_zero_bit(mvdst->busy_ports,
+				  MV88E6XXX_MAX_PVT_ENTRIES);
+
+	if (bit >= MV88E6XXX_MAX_PVT_ENTRIES) {
+		pr_err("Unable to allocate virtual port for %s in DSA tree %d\n",
+		       netdev_name(brdev), dst->index);
+		return -ENOSPC;
+	}
+
+	mvbr = kzalloc(sizeof(*mvbr), GFP_KERNEL);
+	if (!mvbr)
+		return -ENOMEM;
+
+	mvbr->brdev = brdev;
+	mvbr->dev = DEV_FROM_BIT(bit);
+	mvbr->port = PORT_FROM_BIT(bit);
+
+	INIT_LIST_HEAD(&mvbr->list);
+	list_add_tail(&mvbr->list, &mvdst->bridges);
+	set_bit(bit, mvdst->busy_ports);
+	return 0;
+}
+
+void mv88e6xxx_dst_bridge_leave(struct dsa_switch_tree *dst,
+				struct net_device *brdev)
+{
+	struct mv88e6xxx_dst *mvdst = dst->priv;
+	struct mv88e6xxx_br *mvbr;
+	struct dsa_port *dp;
+
+	list_for_each_entry(dp, &dst->ports, list) {
+		if (dp->bridge_dev == brdev)
+			return;
+	}
+
+	list_for_each_entry(mvbr, &mvdst->bridges, list) {
+		if (mvbr->brdev == brdev) {
+			clear_bit(DEV_PORT_TO_BIT(mvbr->dev, mvbr->port),
+				  mvdst->busy_ports);
+			list_del(&mvbr->list);
+			kfree(mvbr);
+			return;
+		}
+	}
+}
+
+static struct mv88e6xxx_dst *mv88e6xxx_dst_get(struct dsa_switch_tree *dst)
+{
+	struct mv88e6xxx_dst *mvdst;
+
+	if (dst->priv)
+		return dst->priv;
+
+	mvdst = kzalloc(sizeof(*mvdst), GFP_KERNEL);
+	if (!mvdst)
+		return ERR_PTR(-ENOMEM);
+
+	INIT_LIST_HEAD(&mvdst->bridges);
+
+	bitmap_set(mvdst->busy_ports,
+		   DEV_PORT_TO_BIT(MV88E6XXX_G2_PVT_ADDR_DEV_TRUNK, 0),
+		   MV88E6XXX_MAX_PVT_PORTS);
+
+	dst->priv = mvdst;
+	return mvdst;
+}
+
+int mv88e6xxx_dst_add_chip(struct mv88e6xxx_chip *chip)
+{
+	struct dsa_switch_tree *dst = chip->ds->dst;
+	struct mv88e6xxx_dst *mvdst;
+
+	mvdst = mv88e6xxx_dst_get(dst);
+	if (IS_ERR(mvdst))
+		return PTR_ERR(mvdst);
+
+	bitmap_set(mvdst->busy_ports, DEV_PORT_TO_BIT(chip->ds->index, 0),
+		   MV88E6XXX_MAX_PVT_PORTS);
+	return 0;
+}
diff --git a/drivers/net/dsa/mv88e6xxx/dst.h b/drivers/net/dsa/mv88e6xxx/dst.h
new file mode 100644
index 000000000000..3845a19192ef
--- /dev/null
+++ b/drivers/net/dsa/mv88e6xxx/dst.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef _MV88E6XXX_DST_H
+#define _MV88E6XXX_DST_H
+
+int mv88e6xxx_dst_bridge_join(struct dsa_switch_tree *dst,
+			      struct net_device *brdev);
+void mv88e6xxx_dst_bridge_leave(struct dsa_switch_tree *dst,
+				struct net_device *brdev);
+int mv88e6xxx_dst_add_chip(struct mv88e6xxx_chip *chip);
+
+#endif /* _MV88E6XXX_DST_H */
diff --git a/include/net/dsa.h b/include/net/dsa.h
index 77d4df819299..c01e74d6e134 100644
--- a/include/net/dsa.h
+++ b/include/net/dsa.h
@@ -172,6 +172,11 @@ struct dsa_switch_tree {
 	 */
 	struct net_device **lags;
 	unsigned int lags_len;
+
+	/* Give the switch driver somewhere to hang its tree-wide
+	 * private data structure.
+	 */
+	void *priv;
 };
 
 #define dsa_lags_foreach_id(_id, _dst)				\
-- 
2.25.1

