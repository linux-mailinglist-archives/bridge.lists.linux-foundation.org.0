Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D93044D4967
	for <lists.bridge@lfdr.de>; Thu, 10 Mar 2022 15:23:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E34A41529;
	Thu, 10 Mar 2022 14:23:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3m1CuvqQGujI; Thu, 10 Mar 2022 14:23:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id D27C0414C6;
	Thu, 10 Mar 2022 14:23:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A8C57C0073;
	Thu, 10 Mar 2022 14:23:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F3F2FC000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 14:23:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CF65E81D73
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 14:23:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MRbK5vTN4dyZ for <bridge@lists.linux-foundation.org>;
 Thu, 10 Mar 2022 14:23:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9A06681337
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 14:23:52 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id w12so9690225lfr.9
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 06:23:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=07et7HwSY9BHxN5Q8Cx8ST5Jg0BuLcxMuRIlXW2fIcQ=;
 b=ck7d7Ixtes0T6imc+MFhHEuci+p6XMi1jVkv0oQgX4c/a0RHwucBs/ikAk9n0LHeGw
 2h0mrhbjG+oTaEZ+C4qlu1SyjvybAGOhsWPMpgqfjwmqU0NG+tCG9df08ZIAhE1JEto+
 FYz6cJGsbjVoD8omWIzxMjC0Fud9Q/i7Ey30Dfu62vFw5owRDTPQ8kL2iNxVzXY86k3U
 WuAUNkFmYFJI4mVW514rJx6Gb9nMiDEeUfC8ifsw92UpUJZgkVuXXOEZqym2KbDuIn61
 B2okrjkJK4GKRAMSuEmMTy8LPeQ+7RLUBJi9jKqzYsgsPpo6PJ1wdG31m0tcNpbV+zWa
 1qOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=07et7HwSY9BHxN5Q8Cx8ST5Jg0BuLcxMuRIlXW2fIcQ=;
 b=8K5ocGSr+kM8uvZOU65MWCbG/715YX9NTExFM4ai0NwUpY+JcxqCKtT3yTdYNbGLA9
 k1yqrQVww6CRytKEopp26r+gzOfRo7NeOQ0NNeZsX2igBjechuJO5a4HGUoThTQzRT/i
 RXAchwPT9wJyK2hn6+BIIle71EH9+RupNO/IGQDg37QK7KsjMWf3Xi2aqqJa+2u4Xql1
 eLyMPec3W/QQo9L6FCube/aicAM02bE6Ee2pp8MK1N0RNXkYAr2QnEGMWWD15pzLx8QL
 N3+gI4C25ahB7f73FQaDqyAoNpdgT2/axpcgHmgrYjCtFaTe9rg7FdPIYv6dxQcZfkbQ
 VHMA==
X-Gm-Message-State: AOAM532f+YnWwWwh/N9/YBxC6cgV+uEoYc/RH24ha0vxPDyeezn40mAQ
 fvOvBYaBFAIaFFiEk3dnIQE=
X-Google-Smtp-Source: ABdhPJyy/jn+6tMfQIsZVFwUZZV+QETTJ/CnrVbOxOmnnzG9gICK/yXmLQOnk8FS8iWeR6Jfi2pjAQ==
X-Received: by 2002:a05:6512:4015:b0:448:2d9a:14f with SMTP id
 br21-20020a056512401500b004482d9a014fmr3111728lfb.156.1646922230642; 
 Thu, 10 Mar 2022 06:23:50 -0800 (PST)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id
 10-20020a2e080a000000b00247f82bbc6fsm1088932lji.54.2022.03.10.06.23.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 06:23:50 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Thu, 10 Mar 2022 15:23:20 +0100
Message-Id: <20220310142320.611738-4-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
References: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>, Roopa Prabhu <roopa@nvidia.com>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH net-next 3/3] net: dsa: mv88e6xxx: mac-auth/MAB
	implementation
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

This implementation for the Marvell mv88e6xxx chip series, is
based on handling ATU miss violations occurring when packets
ingress on a port that is locked. The mac address triggering
the ATU miss violation is communicated through switchdev to
the bridge module, which adds a fdb entry with the fdb locked
flag set.
Note: The locked port must have learning enabled for the ATU
miss violation to occur.

Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
---
 drivers/net/dsa/mv88e6xxx/Makefile            |  1 +
 drivers/net/dsa/mv88e6xxx/chip.c              | 10 +--
 drivers/net/dsa/mv88e6xxx/chip.h              |  5 ++
 drivers/net/dsa/mv88e6xxx/global1.h           |  1 +
 drivers/net/dsa/mv88e6xxx/global1_atu.c       | 29 +++++++-
 .../net/dsa/mv88e6xxx/mv88e6xxx_switchdev.c   | 67 +++++++++++++++++++
 .../net/dsa/mv88e6xxx/mv88e6xxx_switchdev.h   | 20 ++++++
 drivers/net/dsa/mv88e6xxx/port.c              | 11 +++
 drivers/net/dsa/mv88e6xxx/port.h              |  1 +
 9 files changed, 138 insertions(+), 7 deletions(-)
 create mode 100644 drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.c
 create mode 100644 drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.h

diff --git a/drivers/net/dsa/mv88e6xxx/Makefile b/drivers/net/dsa/mv88e6xxx/Makefile
index c8eca2b6f959..3ca57709730d 100644
--- a/drivers/net/dsa/mv88e6xxx/Makefile
+++ b/drivers/net/dsa/mv88e6xxx/Makefile
@@ -15,3 +15,4 @@ mv88e6xxx-objs += port_hidden.o
 mv88e6xxx-$(CONFIG_NET_DSA_MV88E6XXX_PTP) += ptp.o
 mv88e6xxx-objs += serdes.o
 mv88e6xxx-objs += smi.o
+mv88e6xxx-objs += mv88e6xxx_switchdev.o
\ No newline at end of file
diff --git a/drivers/net/dsa/mv88e6xxx/chip.c b/drivers/net/dsa/mv88e6xxx/chip.c
index 84b90fc36c58..e1b6bd738085 100644
--- a/drivers/net/dsa/mv88e6xxx/chip.c
+++ b/drivers/net/dsa/mv88e6xxx/chip.c
@@ -1714,11 +1714,11 @@ static int mv88e6xxx_vtu_get(struct mv88e6xxx_chip *chip, u16 vid,
 	return err;
 }
 
-static int mv88e6xxx_vtu_walk(struct mv88e6xxx_chip *chip,
-			      int (*cb)(struct mv88e6xxx_chip *chip,
-					const struct mv88e6xxx_vtu_entry *entry,
-					void *priv),
-			      void *priv)
+int mv88e6xxx_vtu_walk(struct mv88e6xxx_chip *chip,
+		       int (*cb)(struct mv88e6xxx_chip *chip,
+				 const struct mv88e6xxx_vtu_entry *entry,
+				 void *priv),
+		       void *priv)
 {
 	struct mv88e6xxx_vtu_entry entry = {
 		.vid = mv88e6xxx_max_vid(chip),
diff --git a/drivers/net/dsa/mv88e6xxx/chip.h b/drivers/net/dsa/mv88e6xxx/chip.h
index 30b92a265613..64e8fc470fdf 100644
--- a/drivers/net/dsa/mv88e6xxx/chip.h
+++ b/drivers/net/dsa/mv88e6xxx/chip.h
@@ -763,6 +763,11 @@ static inline void mv88e6xxx_reg_unlock(struct mv88e6xxx_chip *chip)
 	mutex_unlock(&chip->reg_lock);
 }
 
+int mv88e6xxx_vtu_walk(struct mv88e6xxx_chip *chip,
+		       int (*cb)(struct mv88e6xxx_chip *chip,
+				 const struct mv88e6xxx_vtu_entry *entry,
+				 void *priv),
+		       void *priv);
 int mv88e6xxx_fid_map(struct mv88e6xxx_chip *chip, unsigned long *bitmap);
 
 #endif /* _MV88E6XXX_CHIP_H */
diff --git a/drivers/net/dsa/mv88e6xxx/global1.h b/drivers/net/dsa/mv88e6xxx/global1.h
index 2c1607c858a1..729cc0610d9a 100644
--- a/drivers/net/dsa/mv88e6xxx/global1.h
+++ b/drivers/net/dsa/mv88e6xxx/global1.h
@@ -136,6 +136,7 @@
 #define MV88E6XXX_G1_ATU_DATA_TRUNK				0x8000
 #define MV88E6XXX_G1_ATU_DATA_TRUNK_ID_MASK			0x00f0
 #define MV88E6XXX_G1_ATU_DATA_PORT_VECTOR_MASK			0x3ff0
+#define MV88E6XXX_G1_ATU_DATA_PORT_VECTOR_NO_EGRESS		0x0000
 #define MV88E6XXX_G1_ATU_DATA_STATE_MASK			0x000f
 #define MV88E6XXX_G1_ATU_DATA_STATE_UC_UNUSED			0x0000
 #define MV88E6XXX_G1_ATU_DATA_STATE_UC_AGE_1_OLDEST		0x0001
diff --git a/drivers/net/dsa/mv88e6xxx/global1_atu.c b/drivers/net/dsa/mv88e6xxx/global1_atu.c
index 40bd67a5c8e9..afa54fe8667e 100644
--- a/drivers/net/dsa/mv88e6xxx/global1_atu.c
+++ b/drivers/net/dsa/mv88e6xxx/global1_atu.c
@@ -12,6 +12,8 @@
 
 #include "chip.h"
 #include "global1.h"
+#include "port.h"
+#include "mv88e6xxx_switchdev.h"
 
 /* Offset 0x01: ATU FID Register */
 
@@ -114,6 +116,18 @@ static int mv88e6xxx_g1_atu_op_wait(struct mv88e6xxx_chip *chip)
 	return mv88e6xxx_g1_wait_bit(chip, MV88E6XXX_G1_ATU_OP, bit, 0);
 }
 
+static int mv88e6xxx_g1_read_atu_violation(struct mv88e6xxx_chip *chip)
+{
+	int err;
+
+	err = mv88e6xxx_g1_write(chip, MV88E6XXX_G1_ATU_OP,
+				 MV88E6XXX_G1_ATU_OP_BUSY | MV88E6XXX_G1_ATU_OP_GET_CLR_VIOLATION);
+	if (err)
+		return err;
+
+	return mv88e6xxx_g1_atu_op_wait(chip);
+}
+
 static int mv88e6xxx_g1_atu_op(struct mv88e6xxx_chip *chip, u16 fid, u16 op)
 {
 	u16 val;
@@ -356,11 +370,11 @@ static irqreturn_t mv88e6xxx_g1_atu_prob_irq_thread_fn(int irq, void *dev_id)
 	int spid;
 	int err;
 	u16 val;
+	u16 fid;
 
 	mv88e6xxx_reg_lock(chip);
 
-	err = mv88e6xxx_g1_atu_op(chip, 0,
-				  MV88E6XXX_G1_ATU_OP_GET_CLR_VIOLATION);
+	err = mv88e6xxx_g1_read_atu_violation(chip);
 	if (err)
 		goto out;
 
@@ -368,6 +382,10 @@ static irqreturn_t mv88e6xxx_g1_atu_prob_irq_thread_fn(int irq, void *dev_id)
 	if (err)
 		goto out;
 
+	err = mv88e6xxx_g1_read(chip, MV88E6352_G1_ATU_FID, &fid);
+	if (err)
+		goto out;
+
 	err = mv88e6xxx_g1_atu_data_read(chip, &entry);
 	if (err)
 		goto out;
@@ -396,6 +414,13 @@ static irqreturn_t mv88e6xxx_g1_atu_prob_irq_thread_fn(int irq, void *dev_id)
 				    "ATU miss violation for %pM portvec %x spid %d\n",
 				    entry.mac, entry.portvec, spid);
 		chip->ports[spid].atu_miss_violation++;
+		if (mv88e6xxx_port_is_locked(chip, chip->ports[spid].port))
+			err = mv88e6xxx_switchdev_handle_atu_miss_violation(chip,
+									    chip->ports[spid].port,
+									    &entry,
+									    fid);
+		if (err)
+			goto out;
 	}
 
 	if (val & MV88E6XXX_G1_ATU_OP_FULL_VIOLATION) {
diff --git a/drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.c b/drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.c
new file mode 100644
index 000000000000..e0ca452b6f86
--- /dev/null
+++ b/drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.c
@@ -0,0 +1,67 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * mv88e6xxx_switchdev.c
+ *
+ *	Authors:
+ *	Hans J. Schultz		<hans.schultz@westermo.com>
+ *
+ */
+
+#include <net/switchdev.h>
+#include "chip.h"
+#include "global1.h"
+
+struct mv88e6xxx_fid_search_ctx {
+	u16 fid_search;
+	u16 vid_found;
+};
+
+static int mv88e6xxx_find_vid_on_matching_fid(struct mv88e6xxx_chip *chip,
+					      const struct mv88e6xxx_vtu_entry *entry,
+					      void *priv)
+{
+	struct mv88e6xxx_fid_search_ctx *ctx = priv;
+
+	if (ctx->fid_search == entry->fid) {
+		ctx->vid_found = entry->vid;
+		return 1;
+	}
+	return 0;
+}
+
+int mv88e6xxx_switchdev_handle_atu_miss_violation(struct mv88e6xxx_chip *chip,
+						  int port,
+						  struct mv88e6xxx_atu_entry *entry,
+						  u16 fid)
+{
+	struct switchdev_notifier_fdb_info info = {
+		.addr = entry->mac,
+		.vid = 0,
+		.added_by_user = false,
+		.is_local = false,
+		.offloaded = true,
+		.locked = true,
+	};
+	struct mv88e6xxx_fid_search_ctx ctx;
+	struct netlink_ext_ack *extack;
+	struct net_device *brport;
+	struct dsa_port *dp;
+	int err;
+
+	ctx.fid_search = fid;
+	err = mv88e6xxx_vtu_walk(chip, mv88e6xxx_find_vid_on_matching_fid, &ctx);
+	if (err < 0)
+		return err;
+	if (err == 1)
+		info.vid = ctx.vid_found;
+	else
+		return -ENODATA;
+
+	dp = dsa_to_port(chip->ds, port);
+	brport = dsa_port_to_bridge_port(dp);
+	err = call_switchdev_notifiers(SWITCHDEV_FDB_ADD_TO_BRIDGE, brport, &info.info, extack);
+	if (err)
+		return err;
+	entry->portvec = MV88E6XXX_G1_ATU_DATA_PORT_VECTOR_NO_EGRESS;
+	return mv88e6xxx_g1_atu_loadpurge(chip, fid, entry);
+}
diff --git a/drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.h b/drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.h
new file mode 100644
index 000000000000..127f3098f745
--- /dev/null
+++ b/drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later
+ *
+ * mv88e6xxx_switchdev.h
+ *
+ *	Authors:
+ *	Hans J. Schultz		<hans.schultz@westermo.com>
+ *
+ */
+
+#ifndef DRIVERS_NET_DSA_MV88E6XXX_MV88E6XXX_SWITCHDEV_H_
+#define DRIVERS_NET_DSA_MV88E6XXX_MV88E6XXX_SWITCHDEV_H_
+
+#include <net/switchdev.h>
+
+int mv88e6xxx_switchdev_handle_atu_miss_violation(struct mv88e6xxx_chip *chip,
+						  int port,
+						  struct mv88e6xxx_atu_entry *entry,
+						  u16 fid);
+
+#endif /* DRIVERS_NET_DSA_MV88E6XXX_MV88E6XXX_SWITCHDEV_H_ */
diff --git a/drivers/net/dsa/mv88e6xxx/port.c b/drivers/net/dsa/mv88e6xxx/port.c
index 795b3128768f..6b375b0caa2c 100644
--- a/drivers/net/dsa/mv88e6xxx/port.c
+++ b/drivers/net/dsa/mv88e6xxx/port.c
@@ -1239,6 +1239,17 @@ int mv88e6xxx_port_set_mirror(struct mv88e6xxx_chip *chip, int port,
 	return err;
 }
 
+bool mv88e6xxx_port_is_locked(struct mv88e6xxx_chip *chip, int port)
+{
+	u16 reg;
+
+	if (mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_CTL0, &reg))
+		return false;
+	if (!(reg & MV88E6XXX_PORT_CTL0_SA_FILT_DROP_ON_LOCK))
+		return false;
+	return true;
+}
+
 int mv88e6xxx_port_set_lock(struct mv88e6xxx_chip *chip, int port,
 			    bool locked)
 {
diff --git a/drivers/net/dsa/mv88e6xxx/port.h b/drivers/net/dsa/mv88e6xxx/port.h
index e0a705d82019..09ea8f1615bb 100644
--- a/drivers/net/dsa/mv88e6xxx/port.h
+++ b/drivers/net/dsa/mv88e6xxx/port.h
@@ -374,6 +374,7 @@ int mv88e6xxx_port_set_fid(struct mv88e6xxx_chip *chip, int port, u16 fid);
 int mv88e6xxx_port_get_pvid(struct mv88e6xxx_chip *chip, int port, u16 *pvid);
 int mv88e6xxx_port_set_pvid(struct mv88e6xxx_chip *chip, int port, u16 pvid);
 
+bool mv88e6xxx_port_is_locked(struct mv88e6xxx_chip *chip, int port);
 int mv88e6xxx_port_set_lock(struct mv88e6xxx_chip *chip, int port,
 			    bool locked);
 
-- 
2.30.2

