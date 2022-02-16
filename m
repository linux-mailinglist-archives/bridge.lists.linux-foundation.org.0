Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDB34B8A00
	for <lists.bridge@lfdr.de>; Wed, 16 Feb 2022 14:30:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 22D0961B8D;
	Wed, 16 Feb 2022 13:30:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KGJIjqvDSgQ2; Wed, 16 Feb 2022 13:30:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 953EB610DF;
	Wed, 16 Feb 2022 13:30:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 69362C0073;
	Wed, 16 Feb 2022 13:30:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 56623C001A
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 13:30:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 429C6402D0
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 13:30:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RldY8zux6xZG for <bridge@lists.linux-foundation.org>;
 Wed, 16 Feb 2022 13:30:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 218EC405D9
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 13:30:34 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id o2so3894380lfd.1
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 05:30:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=9aG6JPCK/sc9cnjNg+7v1niwfwPA6zUyJ/dRYHoXrdI=;
 b=GNtYHMmflkakwZq6i29RsDao3BrZgSdMt7dT6HQzznhCZixxEG4L5+AACLMCgtmOw+
 BI9wm+/9nQOAtYxgsHh3DTWOQJ5lwf97Rv0atJp/dPjzFGbAs8yAbL/aQkJOONiwRgnh
 6LyCkyyQ11vk8AHBIL9pavnlsyGIU6b9h7oq+TjxKi65VNRfv+dHMiZ3d+uQ4ftFomEM
 hSGRuaZ3xnyUh5Hikuh0aUFit7zHWcH3XwzY1lcNN8sKT53oRFjpOPrsskfoyTB/Mv1E
 4YmEhpNXHdHnaKmoJ51SuNhAxucOm8hoC9sl2zopI+sN1eRjGUDQC2V3byXyg9cHoLxo
 +Ozw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=9aG6JPCK/sc9cnjNg+7v1niwfwPA6zUyJ/dRYHoXrdI=;
 b=jhEqFp1aXl/+Hkpj6jJHfJ2eWTOTeo5aYjKIVta0q6058ZRtoqi+3NCuxOJjInXhlK
 hcB5mdvANS2ItjoFic5riyQ84zpkX6EmaZTAKR/GXy33G8t5rf3bgPKfX0MutK+AJe0q
 7G33AcaG5XakgG303rePhjb2klO0rEhbktPru72bAyuI3+hM/9NI3U53XR/t8RSdJOWd
 fLbieaL27GHRJD4KpYv1Pi/pSR1yY69aTsYH/DGg7JX3OgyVzhG7jXPLjemJL7ix1oA7
 xmnd8IBh7zUYyOvvVswvnn/xylhS2fSF2GWA1LH8/fr2dauq/F1kTzv5GW3Wq3nBm+Kg
 c7cQ==
X-Gm-Message-State: AOAM530us3c/urpeHV8GAr3cWwxr4RwGtpKYLv5tbtPbBpNx80RUSf2H
 9eClf9T/yxyJwrwiBqsEJ6AtBQ==
X-Google-Smtp-Source: ABdhPJyg+scehAihayVhY44Bgyvv+/FzyTQyajhhfVYNAwXSUcRrxMD/t+haHu8aNvmZhZ5P/vQH3w==
X-Received: by 2002:a05:6512:3d94:b0:43e:af37:af96 with SMTP id
 k20-20020a0565123d9400b0043eaf37af96mr1973403lfv.469.1645018231909; 
 Wed, 16 Feb 2022 05:30:31 -0800 (PST)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89])
 by smtp.gmail.com with ESMTPSA id v6sm234780ljd.86.2022.02.16.05.30.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Feb 2022 05:30:31 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Wed, 16 Feb 2022 14:29:33 +0100
Message-Id: <20220216132934.1775649-9-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220216132934.1775649-1-tobias@waldekranz.com>
References: <20220216132934.1775649-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [RFC net-next 8/9] net: dsa: mv88e6xxx: Export STU as
	devlink region
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

Export the raw STU data in a devlink region so that it can be
inspected from userspace and compared to the current bridge
configuration.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 drivers/net/dsa/mv88e6xxx/chip.h    |  1 +
 drivers/net/dsa/mv88e6xxx/devlink.c | 94 +++++++++++++++++++++++++++++
 2 files changed, 95 insertions(+)

diff --git a/drivers/net/dsa/mv88e6xxx/chip.h b/drivers/net/dsa/mv88e6xxx/chip.h
index be654be69982..6d4daa24d3e5 100644
--- a/drivers/net/dsa/mv88e6xxx/chip.h
+++ b/drivers/net/dsa/mv88e6xxx/chip.h
@@ -287,6 +287,7 @@ enum mv88e6xxx_region_id {
 	MV88E6XXX_REGION_GLOBAL2,
 	MV88E6XXX_REGION_ATU,
 	MV88E6XXX_REGION_VTU,
+	MV88E6XXX_REGION_STU,
 	MV88E6XXX_REGION_PVT,
 
 	_MV88E6XXX_REGION_MAX,
diff --git a/drivers/net/dsa/mv88e6xxx/devlink.c b/drivers/net/dsa/mv88e6xxx/devlink.c
index 381068395c63..1266eabee086 100644
--- a/drivers/net/dsa/mv88e6xxx/devlink.c
+++ b/drivers/net/dsa/mv88e6xxx/devlink.c
@@ -503,6 +503,85 @@ static int mv88e6xxx_region_vtu_snapshot(struct devlink *dl,
 	return 0;
 }
 
+/**
+ * struct mv88e6xxx_devlink_stu_entry - Devlink STU entry
+ * @sid:   Global1/3:   SID, unknown filters and learning.
+ * @vid:   Global1/6:   Valid bit.
+ * @data:  Global1/7-9: Membership data and priority override.
+ * @resvd: Reserved. In case we forgot something.
+ *
+ * The STU entry format varies between chipset generations. Peridot
+ * and Amethyst packs the STU data into Global1/7-8. Older silicon
+ * spreads the information across all three VTU data registers -
+ * inheriting the layout of even older hardware that had no STU at
+ * all. Since this is a low-level debug interface, copy all data
+ * verbatim and defer parsing to the consumer.
+ */
+struct mv88e6xxx_devlink_stu_entry {
+	u16 sid;
+	u16 vid;
+	u16 data[3];
+	u16 resvd;
+};
+
+static int mv88e6xxx_region_stu_snapshot(struct devlink *dl,
+					 const struct devlink_region_ops *ops,
+					 struct netlink_ext_ack *extack,
+					 u8 **data)
+{
+	struct mv88e6xxx_devlink_stu_entry *table, *entry;
+	struct dsa_switch *ds = dsa_devlink_to_ds(dl);
+	struct mv88e6xxx_chip *chip = ds->priv;
+	struct mv88e6xxx_stu_entry stu;
+	int err;
+
+	table = kcalloc(mv88e6xxx_max_sid(chip) + 1,
+			sizeof(struct mv88e6xxx_devlink_stu_entry),
+			GFP_KERNEL);
+	if (!table)
+		return -ENOMEM;
+
+	entry = table;
+	stu.sid = mv88e6xxx_max_sid(chip);
+	stu.valid = false;
+
+	mv88e6xxx_reg_lock(chip);
+
+	do {
+		err = mv88e6xxx_g1_stu_getnext(chip, &stu);
+		if (err)
+			break;
+
+		if (!stu.valid)
+			break;
+
+		err = err ? : mv88e6xxx_g1_read(chip, MV88E6352_G1_VTU_SID,
+						&entry->sid);
+		err = err ? : mv88e6xxx_g1_read(chip, MV88E6XXX_G1_VTU_VID,
+						&entry->vid);
+		err = err ? : mv88e6xxx_g1_read(chip, MV88E6XXX_G1_VTU_DATA1,
+						&entry->data[0]);
+		err = err ? : mv88e6xxx_g1_read(chip, MV88E6XXX_G1_VTU_DATA2,
+						&entry->data[1]);
+		err = err ? : mv88e6xxx_g1_read(chip, MV88E6XXX_G1_VTU_DATA3,
+						&entry->data[2]);
+		if (err)
+			break;
+
+		entry++;
+	} while (stu.sid < mv88e6xxx_max_sid(chip));
+
+	mv88e6xxx_reg_unlock(chip);
+
+	if (err) {
+		kfree(table);
+		return err;
+	}
+
+	*data = (u8 *)table;
+	return 0;
+}
+
 static int mv88e6xxx_region_pvt_snapshot(struct devlink *dl,
 					 const struct devlink_region_ops *ops,
 					 struct netlink_ext_ack *extack,
@@ -605,6 +684,12 @@ static struct devlink_region_ops mv88e6xxx_region_vtu_ops = {
 	.destructor = kfree,
 };
 
+static struct devlink_region_ops mv88e6xxx_region_stu_ops = {
+	.name = "stu",
+	.snapshot = mv88e6xxx_region_stu_snapshot,
+	.destructor = kfree,
+};
+
 static struct devlink_region_ops mv88e6xxx_region_pvt_ops = {
 	.name = "pvt",
 	.snapshot = mv88e6xxx_region_pvt_snapshot,
@@ -640,6 +725,11 @@ static struct mv88e6xxx_region mv88e6xxx_regions[] = {
 		.ops = &mv88e6xxx_region_vtu_ops
 	  /* calculated at runtime */
 	},
+	[MV88E6XXX_REGION_STU] = {
+		.ops = &mv88e6xxx_region_stu_ops,
+		.cond = mv88e6xxx_has_stu,
+	  /* calculated at runtime */
+	},
 	[MV88E6XXX_REGION_PVT] = {
 		.ops = &mv88e6xxx_region_pvt_ops,
 		.size = MV88E6XXX_MAX_PVT_ENTRIES * sizeof(u16),
@@ -706,6 +796,10 @@ int mv88e6xxx_setup_devlink_regions_global(struct dsa_switch *ds)
 			size = (mv88e6xxx_max_vid(chip) + 1) *
 				sizeof(struct mv88e6xxx_devlink_vtu_entry);
 			break;
+		case MV88E6XXX_REGION_STU:
+			size = (mv88e6xxx_max_sid(chip) + 1) *
+				sizeof(struct mv88e6xxx_devlink_stu_entry);
+			break;
 		}
 
 		region = dsa_devlink_region_create(ds, ops, 1, size);
-- 
2.25.1

