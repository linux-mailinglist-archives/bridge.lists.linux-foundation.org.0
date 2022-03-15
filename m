Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C01784D915F
	for <lists.bridge@lfdr.de>; Tue, 15 Mar 2022 01:26:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70E338411B;
	Tue, 15 Mar 2022 00:26:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dzPqh0tqKLHs; Tue, 15 Mar 2022 00:26:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id D6ACB84124;
	Tue, 15 Mar 2022 00:26:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 25FC7C000B;
	Tue, 15 Mar 2022 00:26:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1343BC0033
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 25DEE60F4A
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rGX5qI2Hwr74 for <bridge@lists.linux-foundation.org>;
 Tue, 15 Mar 2022 00:26:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3F10660F3D
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:36 +0000 (UTC)
Received: by mail-lj1-x231.google.com with SMTP id o6so24340736ljp.3
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 17:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=9aG6JPCK/sc9cnjNg+7v1niwfwPA6zUyJ/dRYHoXrdI=;
 b=uy3R5jhUJzpAwGhUkjggLIi7vXRxc1+qMldaDhVjdaoBVywZZVHqGIGYV1HNy6g9qU
 ia6Ll/TfPAttG35knFAxoaAovK3k8Ge6LdsdkhL4mJWqkLM36M9zOmxyozuW878w7Ugi
 rt/3RHyPhvtkYbJ8r0vx9e0rIRKCQpVN9XkuiAnJCiqeFIq3BnhlbRbxBozFCXDilNU7
 pmJIZJ+eFpc76WyrOJ8MvNW+ABgXpShpjJUC4qnXQx2qn9kSMGbV0+sRA0GHvwCLfO8e
 LtN8WVSV8CxJDGxmIgJXnz55hFJg9V3ieujeet9Tjt90BUcOm65KZvpA5VveixBiDWkk
 RWCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=9aG6JPCK/sc9cnjNg+7v1niwfwPA6zUyJ/dRYHoXrdI=;
 b=L8wEHODiD11LsRrJJQsq+W6jeF4+15kJB7QY9fOcYjV9hNYFoenguoq0KT6Wx55BKs
 ALGHgq2Rdak+8XO+2Jxs0EzMyCfjjH51rFq9PFXGmdQfiSIeBbRGvLMgVlbqc4cqI7pX
 x5SaU3jiue6U4gxta6CWgLuay0J+nYzGnx16EU96M1yqsksWtBUjgx1Y/Bui+PwIDWa7
 WLgc2A/E0OXJ149cCdpQLxkaaekgvk6xe9c3vwz5LrsWbgzKZwAf5xfdwsTY+PeDumUl
 YkVd6aXanLdYHZMyyPi6HVtRYINpNyih8xrU/AV5RKvYF+fD3vcXal0hlDusfOsZv9wQ
 pxTg==
X-Gm-Message-State: AOAM532TwrGjXCMUWB6XFI385t0kwNKPTmATaRmuIKwnSknkk0NXmdh/
 rs32XkcOXvdHKp9N1YUz6tA89w==
X-Google-Smtp-Source: ABdhPJzrA+yT1+p0Raqv25lkg7wOevZs2p/W4zfvC3rBgqdoqrlcNfNnNT6p+7smZf9CElR+6R2KlQ==
X-Received: by 2002:a2e:960e:0:b0:247:ec4c:29d6 with SMTP id
 v14-20020a2e960e000000b00247ec4c29d6mr15162507ljh.268.1647303994179; 
 Mon, 14 Mar 2022 17:26:34 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 y14-20020a2e544e000000b0024800f8286bsm4219923ljd.78.2022.03.14.17.26.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 17:26:33 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue, 15 Mar 2022 01:25:42 +0100
Message-Id: <20220315002543.190587-15-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220315002543.190587-1-tobias@waldekranz.com>
References: <20220315002543.190587-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, Matt Johnston <matt@codeconstruct.com.au>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH v4 net-next 14/15] net: dsa: mv88e6xxx: Export STU
	as devlink region
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

