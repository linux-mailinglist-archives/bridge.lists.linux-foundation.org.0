Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4F64C88D7
	for <lists.bridge@lfdr.de>; Tue,  1 Mar 2022 11:04:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E175341526;
	Tue,  1 Mar 2022 10:04:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dox6atqYkWcT; Tue,  1 Mar 2022 10:04:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id BC90241524;
	Tue,  1 Mar 2022 10:04:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 819D6C0080;
	Tue,  1 Mar 2022 10:04:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1BCE4C0077
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 10:04:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4D3B641507
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 10:04:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id paK-YElvY_ir for <bridge@lists.linux-foundation.org>;
 Tue,  1 Mar 2022 10:03:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5DF474151B
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 10:03:57 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id u20so25996293lff.2
 for <bridge@lists.linux-foundation.org>; Tue, 01 Mar 2022 02:03:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=bNDwoR5UyYVkMq4l68oZNNn7ga9pQEMw2kh4eXRN9FQ=;
 b=Z0+Ug1iTClcrIGKvXQIvTKt6TDxVL7gY4aH8KqK01xoCj2LarbakN3YbOYSZMDR4GE
 RJQOlf4qnw+yks+NtSiBUSyZXbk92hwje1WF1qO5aTcbL+DyLnhAHnwUAOl+lS49Fb+g
 AX2Mx5lDbHGHUIoYc8j4VY09JzTmB96KuG6n4QrE4OLP3TZns5MzEx/1eE6bwaHXQqTi
 sYxojEcLvpXr4vRhIyQxSCkeXV/XV27j9RT82he0A59cAczOEmYAuzTytxkoYcZwjT8p
 Kl/E+zUkMQKHRC+PZ9SZCskd1IJq/Gi1we1A+oZLMvhbK4OO/KyBFe7JoxNu5Onr0TFo
 iApQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=bNDwoR5UyYVkMq4l68oZNNn7ga9pQEMw2kh4eXRN9FQ=;
 b=XKczuvSZnGoedLUDuArRafsn1FABrWSWg+UbqJg+EdEz1RdcCwxlXrvWVh+liJ/DDp
 whBJBCds9KuqeLlWmkb4rfglXKJfI8/I9/urPnf4LjC1Mkeb/OwYjzk6i4G7ndxqgoSD
 TfLljBStEEKjdwCRhiqBEqFDgiRwDiph9LHOHH2Qq68dIMANh7YyNwcw6RpHdl2/Kjpl
 yW3OD4JyPf35eLVELhKCNsTjPXR4MTJDoKOCnFBVeWMuE2K7Ko2gk3LUOUYqmeTs2+fK
 1OL2XG7FoGU03aLQuxfYnKeL++PaExwKMkW197gsyj5E4IBcflUbSdsY9V70YhusMJjP
 ohRQ==
X-Gm-Message-State: AOAM530aUJw6g0d1P2kOlSXf7aNNqqJPruiQJejRitvHx0D/FMfsnFeU
 J1cCCqDP86bUuHrIJZ98M17OjQ==
X-Google-Smtp-Source: ABdhPJxs/Pf3hkfXe7QOobx7y6Sq636fFSYvAn/zGYkAH32rw7ZnvIID7MPrnR+MnStX5L8pcpAECg==
X-Received: by 2002:a05:6512:36d0:b0:442:4cb2:df5 with SMTP id
 e16-20020a05651236d000b004424cb20df5mr14909460lfs.648.1646129035115; 
 Tue, 01 Mar 2022 02:03:55 -0800 (PST)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 s27-20020a05651c049b00b002460fd4252asm1826822ljc.100.2022.03.01.02.03.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Mar 2022 02:03:54 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue,  1 Mar 2022 11:03:19 +0100
Message-Id: <20220301100321.951175-9-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220301100321.951175-1-tobias@waldekranz.com>
References: <20220301100321.951175-1-tobias@waldekranz.com>
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
Subject: [Bridge] [PATCH v2 net-next 08/10] net: dsa: mv88e6xxx: Disentangle
	STU from VTU
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

In early LinkStreet silicon (e.g. 6095/6185), the per-VLAN STP states
were kept in the VTU - there was no concept of a SID. Later, the
information was split into two tables, where the VTU only tracked
memberships and deferred the STP state tracking to the STU via a
pointer (SID). This meant that a group of VLANs could share the same
STU entry. Most likely, this was done to align with MSTP (802.1Q-2018,
Clause 13), which is built on this principle.

While the VTU is still 4k lines on most devices, the STU is capped at
64 entries. This means that the current stategy, updating STU info
whenever a VTU entry is updated, can not easily support MSTP because:

- The maximum number of VIDs would also be capped at 64, as we would
  have to allocate one SID for every VTU entry - even if many VLANs
  would effectively share the same MST.

- MSTP updates would be unnecessarily slow as you would have to
  iterate over all VLANs that share the same MST.

In order to support MSTP offloading in the future, manage the STU as a
separate entity from the VTU.

Only add support for newer hardware with separate VTU and
STU. VTU-only devices can also be supported, but essentially this
requires a software implementation of an STU (fanning out state
changed to all VLANs tied to the same MST).

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 drivers/net/dsa/mv88e6xxx/chip.c        |  54 ++++
 drivers/net/dsa/mv88e6xxx/chip.h        |  24 ++
 drivers/net/dsa/mv88e6xxx/global1.h     |  10 +
 drivers/net/dsa/mv88e6xxx/global1_vtu.c | 311 ++++++++++++++----------
 4 files changed, 264 insertions(+), 135 deletions(-)

diff --git a/drivers/net/dsa/mv88e6xxx/chip.c b/drivers/net/dsa/mv88e6xxx/chip.c
index 84b90fc36c58..c14a62aa6a6c 100644
--- a/drivers/net/dsa/mv88e6xxx/chip.c
+++ b/drivers/net/dsa/mv88e6xxx/chip.c
@@ -1791,6 +1791,33 @@ static int mv88e6xxx_atu_new(struct mv88e6xxx_chip *chip, u16 *fid)
 	return mv88e6xxx_g1_atu_flush(chip, *fid, true);
 }
 
+static int mv88e6xxx_stu_loadpurge(struct mv88e6xxx_chip *chip,
+				   struct mv88e6xxx_stu_entry *entry)
+{
+	if (!chip->info->ops->stu_loadpurge)
+		return -EOPNOTSUPP;
+
+	return chip->info->ops->stu_loadpurge(chip, entry);
+}
+
+static int mv88e6xxx_stu_setup(struct mv88e6xxx_chip *chip)
+{
+	struct mv88e6xxx_stu_entry stu = {
+		.valid = true,
+		.sid = 0
+	};
+
+	if (!mv88e6xxx_has_stu(chip))
+		return 0;
+
+	/* Make sure that SID 0 is always valid. This is used by VTU
+	 * entries that do not make use of the STU, e.g. when creating
+	 * a VLAN upper on a port that is also part of a VLAN
+	 * filtering bridge.
+	 */
+	return mv88e6xxx_stu_loadpurge(chip, &stu);
+}
+
 static int mv88e6xxx_port_check_hw_vlan(struct dsa_switch *ds, int port,
 					u16 vid)
 {
@@ -3427,6 +3454,13 @@ static int mv88e6xxx_setup(struct dsa_switch *ds)
 	if (err)
 		goto unlock;
 
+	/* Must be called after mv88e6xxx_vtu_setup (which flushes the
+	 * VTU, thereby also flushing the STU).
+	 */
+	err = mv88e6xxx_stu_setup(chip);
+	if (err)
+		goto unlock;
+
 	/* Setup Switch Port Registers */
 	for (i = 0; i < mv88e6xxx_num_ports(chip); i++) {
 		if (dsa_is_unused_port(ds, i))
@@ -3882,6 +3916,8 @@ static const struct mv88e6xxx_ops mv88e6097_ops = {
 	.vtu_getnext = mv88e6352_g1_vtu_getnext,
 	.vtu_loadpurge = mv88e6352_g1_vtu_loadpurge,
 	.phylink_get_caps = mv88e6095_phylink_get_caps,
+	.stu_getnext = mv88e6352_g1_stu_getnext,
+	.stu_loadpurge = mv88e6352_g1_stu_loadpurge,
 	.set_max_frame_size = mv88e6185_g1_set_max_frame_size,
 };
 
@@ -4968,6 +5004,8 @@ static const struct mv88e6xxx_ops mv88e6352_ops = {
 	.atu_set_hash = mv88e6165_g1_atu_set_hash,
 	.vtu_getnext = mv88e6352_g1_vtu_getnext,
 	.vtu_loadpurge = mv88e6352_g1_vtu_loadpurge,
+	.stu_getnext = mv88e6352_g1_stu_getnext,
+	.stu_loadpurge = mv88e6352_g1_stu_loadpurge,
 	.serdes_get_lane = mv88e6352_serdes_get_lane,
 	.serdes_pcs_get_state = mv88e6352_serdes_pcs_get_state,
 	.serdes_pcs_config = mv88e6352_serdes_pcs_config,
@@ -5033,6 +5071,8 @@ static const struct mv88e6xxx_ops mv88e6390_ops = {
 	.atu_set_hash = mv88e6165_g1_atu_set_hash,
 	.vtu_getnext = mv88e6390_g1_vtu_getnext,
 	.vtu_loadpurge = mv88e6390_g1_vtu_loadpurge,
+	.stu_getnext = mv88e6390_g1_stu_getnext,
+	.stu_loadpurge = mv88e6390_g1_stu_loadpurge,
 	.serdes_power = mv88e6390_serdes_power,
 	.serdes_get_lane = mv88e6390_serdes_get_lane,
 	/* Check status register pause & lpa register */
@@ -5098,6 +5138,8 @@ static const struct mv88e6xxx_ops mv88e6390x_ops = {
 	.atu_set_hash = mv88e6165_g1_atu_set_hash,
 	.vtu_getnext = mv88e6390_g1_vtu_getnext,
 	.vtu_loadpurge = mv88e6390_g1_vtu_loadpurge,
+	.stu_getnext = mv88e6390_g1_stu_getnext,
+	.stu_loadpurge = mv88e6390_g1_stu_loadpurge,
 	.serdes_power = mv88e6390_serdes_power,
 	.serdes_get_lane = mv88e6390x_serdes_get_lane,
 	.serdes_pcs_get_state = mv88e6390_serdes_pcs_get_state,
@@ -5166,6 +5208,8 @@ static const struct mv88e6xxx_ops mv88e6393x_ops = {
 	.atu_set_hash = mv88e6165_g1_atu_set_hash,
 	.vtu_getnext = mv88e6390_g1_vtu_getnext,
 	.vtu_loadpurge = mv88e6390_g1_vtu_loadpurge,
+	.stu_getnext = mv88e6390_g1_stu_getnext,
+	.stu_loadpurge = mv88e6390_g1_stu_loadpurge,
 	.serdes_power = mv88e6393x_serdes_power,
 	.serdes_get_lane = mv88e6393x_serdes_get_lane,
 	.serdes_pcs_get_state = mv88e6393x_serdes_pcs_get_state,
@@ -5234,6 +5278,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.num_ports = 11,
 		.num_internal_phys = 8,
 		.max_vid = 4095,
+		.max_sid = 63,
 		.port_base_addr = 0x10,
 		.phy_base_addr = 0x0,
 		.global1_addr = 0x1b,
@@ -5487,6 +5532,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.num_internal_phys = 9,
 		.num_gpio = 16,
 		.max_vid = 8191,
+		.max_sid = 63,
 		.port_base_addr = 0x0,
 		.phy_base_addr = 0x0,
 		.global1_addr = 0x1b,
@@ -5510,6 +5556,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.num_internal_phys = 9,
 		.num_gpio = 16,
 		.max_vid = 8191,
+		.max_sid = 63,
 		.port_base_addr = 0x0,
 		.phy_base_addr = 0x0,
 		.global1_addr = 0x1b,
@@ -5532,6 +5579,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.num_ports = 11,	/* 10 + Z80 */
 		.num_internal_phys = 9,
 		.max_vid = 8191,
+		.max_sid = 63,
 		.port_base_addr = 0x0,
 		.phy_base_addr = 0x0,
 		.global1_addr = 0x1b,
@@ -5554,6 +5602,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.num_ports = 11,	/* 10 + Z80 */
 		.num_internal_phys = 9,
 		.max_vid = 8191,
+		.max_sid = 63,
 		.port_base_addr = 0x0,
 		.phy_base_addr = 0x0,
 		.global1_addr = 0x1b,
@@ -5576,6 +5625,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.num_ports = 11,	/* 10 + Z80 */
 		.num_internal_phys = 9,
 		.max_vid = 8191,
+		.max_sid = 63,
 		.port_base_addr = 0x0,
 		.phy_base_addr = 0x0,
 		.global1_addr = 0x1b,
@@ -5815,6 +5865,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.num_internal_phys = 5,
 		.num_gpio = 15,
 		.max_vid = 4095,
+		.max_sid = 63,
 		.port_base_addr = 0x10,
 		.phy_base_addr = 0x0,
 		.global1_addr = 0x1b,
@@ -5839,6 +5890,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.num_internal_phys = 9,
 		.num_gpio = 16,
 		.max_vid = 8191,
+		.max_sid = 63,
 		.port_base_addr = 0x0,
 		.phy_base_addr = 0x0,
 		.global1_addr = 0x1b,
@@ -5863,6 +5915,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.num_internal_phys = 9,
 		.num_gpio = 16,
 		.max_vid = 8191,
+		.max_sid = 63,
 		.port_base_addr = 0x0,
 		.phy_base_addr = 0x0,
 		.global1_addr = 0x1b,
@@ -5886,6 +5939,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.num_ports = 11,	/* 10 + Z80 */
 		.num_internal_phys = 9,
 		.max_vid = 8191,
+		.max_sid = 63,
 		.port_base_addr = 0x0,
 		.phy_base_addr = 0x0,
 		.global1_addr = 0x1b,
diff --git a/drivers/net/dsa/mv88e6xxx/chip.h b/drivers/net/dsa/mv88e6xxx/chip.h
index 30b92a265613..be654be69982 100644
--- a/drivers/net/dsa/mv88e6xxx/chip.h
+++ b/drivers/net/dsa/mv88e6xxx/chip.h
@@ -20,6 +20,7 @@
 
 #define EDSA_HLEN		8
 #define MV88E6XXX_N_FID		4096
+#define MV88E6XXX_N_SID		64
 
 #define MV88E6XXX_FID_STANDALONE	0
 #define MV88E6XXX_FID_BRIDGED		1
@@ -130,6 +131,7 @@ struct mv88e6xxx_info {
 	unsigned int num_internal_phys;
 	unsigned int num_gpio;
 	unsigned int max_vid;
+	unsigned int max_sid;
 	unsigned int port_base_addr;
 	unsigned int phy_base_addr;
 	unsigned int global1_addr;
@@ -181,6 +183,12 @@ struct mv88e6xxx_vtu_entry {
 	bool	valid;
 	bool	policy;
 	u8	member[DSA_MAX_PORTS];
+	u8	state[DSA_MAX_PORTS];	/* Older silicon has no STU */
+};
+
+struct mv88e6xxx_stu_entry {
+	u8	sid;
+	bool	valid;
 	u8	state[DSA_MAX_PORTS];
 };
 
@@ -602,6 +610,12 @@ struct mv88e6xxx_ops {
 	int (*vtu_loadpurge)(struct mv88e6xxx_chip *chip,
 			     struct mv88e6xxx_vtu_entry *entry);
 
+	/* Spanning Tree Unit operations */
+	int (*stu_getnext)(struct mv88e6xxx_chip *chip,
+			   struct mv88e6xxx_stu_entry *entry);
+	int (*stu_loadpurge)(struct mv88e6xxx_chip *chip,
+			     struct mv88e6xxx_stu_entry *entry);
+
 	/* GPIO operations */
 	const struct mv88e6xxx_gpio_ops *gpio_ops;
 
@@ -700,6 +714,11 @@ struct mv88e6xxx_hw_stat {
 	int type;
 };
 
+static inline bool mv88e6xxx_has_stu(struct mv88e6xxx_chip *chip)
+{
+	return chip->info->max_sid > 0;
+}
+
 static inline bool mv88e6xxx_has_pvt(struct mv88e6xxx_chip *chip)
 {
 	return chip->info->pvt;
@@ -730,6 +749,11 @@ static inline unsigned int mv88e6xxx_max_vid(struct mv88e6xxx_chip *chip)
 	return chip->info->max_vid;
 }
 
+static inline unsigned int mv88e6xxx_max_sid(struct mv88e6xxx_chip *chip)
+{
+	return chip->info->max_sid;
+}
+
 static inline u16 mv88e6xxx_port_mask(struct mv88e6xxx_chip *chip)
 {
 	return GENMASK((s32)mv88e6xxx_num_ports(chip) - 1, 0);
diff --git a/drivers/net/dsa/mv88e6xxx/global1.h b/drivers/net/dsa/mv88e6xxx/global1.h
index 2c1607c858a1..65958b2a0d3a 100644
--- a/drivers/net/dsa/mv88e6xxx/global1.h
+++ b/drivers/net/dsa/mv88e6xxx/global1.h
@@ -348,6 +348,16 @@ int mv88e6390_g1_vtu_getnext(struct mv88e6xxx_chip *chip,
 int mv88e6390_g1_vtu_loadpurge(struct mv88e6xxx_chip *chip,
 			       struct mv88e6xxx_vtu_entry *entry);
 int mv88e6xxx_g1_vtu_flush(struct mv88e6xxx_chip *chip);
+int mv88e6xxx_g1_stu_getnext(struct mv88e6xxx_chip *chip,
+			     struct mv88e6xxx_stu_entry *entry);
+int mv88e6352_g1_stu_getnext(struct mv88e6xxx_chip *chip,
+			     struct mv88e6xxx_stu_entry *entry);
+int mv88e6352_g1_stu_loadpurge(struct mv88e6xxx_chip *chip,
+			       struct mv88e6xxx_stu_entry *entry);
+int mv88e6390_g1_stu_getnext(struct mv88e6xxx_chip *chip,
+			     struct mv88e6xxx_stu_entry *entry);
+int mv88e6390_g1_stu_loadpurge(struct mv88e6xxx_chip *chip,
+			       struct mv88e6xxx_stu_entry *entry);
 int mv88e6xxx_g1_vtu_prob_irq_setup(struct mv88e6xxx_chip *chip);
 void mv88e6xxx_g1_vtu_prob_irq_free(struct mv88e6xxx_chip *chip);
 int mv88e6xxx_g1_atu_get_next(struct mv88e6xxx_chip *chip, u16 fid);
diff --git a/drivers/net/dsa/mv88e6xxx/global1_vtu.c b/drivers/net/dsa/mv88e6xxx/global1_vtu.c
index b1bd9274a562..38e18f5811bf 100644
--- a/drivers/net/dsa/mv88e6xxx/global1_vtu.c
+++ b/drivers/net/dsa/mv88e6xxx/global1_vtu.c
@@ -44,8 +44,7 @@ static int mv88e6xxx_g1_vtu_fid_write(struct mv88e6xxx_chip *chip,
 
 /* Offset 0x03: VTU SID Register */
 
-static int mv88e6xxx_g1_vtu_sid_read(struct mv88e6xxx_chip *chip,
-				     struct mv88e6xxx_vtu_entry *entry)
+static int mv88e6xxx_g1_vtu_sid_read(struct mv88e6xxx_chip *chip, u8 *sid)
 {
 	u16 val;
 	int err;
@@ -54,15 +53,14 @@ static int mv88e6xxx_g1_vtu_sid_read(struct mv88e6xxx_chip *chip,
 	if (err)
 		return err;
 
-	entry->sid = val & MV88E6352_G1_VTU_SID_MASK;
+	*sid = val & MV88E6352_G1_VTU_SID_MASK;
 
 	return 0;
 }
 
-static int mv88e6xxx_g1_vtu_sid_write(struct mv88e6xxx_chip *chip,
-				      struct mv88e6xxx_vtu_entry *entry)
+static int mv88e6xxx_g1_vtu_sid_write(struct mv88e6xxx_chip *chip, u8 sid)
 {
-	u16 val = entry->sid & MV88E6352_G1_VTU_SID_MASK;
+	u16 val = sid & MV88E6352_G1_VTU_SID_MASK;
 
 	return mv88e6xxx_g1_write(chip, MV88E6352_G1_VTU_SID, val);
 }
@@ -91,7 +89,7 @@ static int mv88e6xxx_g1_vtu_op(struct mv88e6xxx_chip *chip, u16 op)
 /* Offset 0x06: VTU VID Register */
 
 static int mv88e6xxx_g1_vtu_vid_read(struct mv88e6xxx_chip *chip,
-				     struct mv88e6xxx_vtu_entry *entry)
+				     bool *valid, u16 *vid)
 {
 	u16 val;
 	int err;
@@ -100,25 +98,28 @@ static int mv88e6xxx_g1_vtu_vid_read(struct mv88e6xxx_chip *chip,
 	if (err)
 		return err;
 
-	entry->vid = val & 0xfff;
+	if (vid) {
+		*vid = val & 0xfff;
 
-	if (val & MV88E6390_G1_VTU_VID_PAGE)
-		entry->vid |= 0x1000;
+		if (val & MV88E6390_G1_VTU_VID_PAGE)
+			*vid |= 0x1000;
+	}
 
-	entry->valid = !!(val & MV88E6XXX_G1_VTU_VID_VALID);
+	if (valid)
+		*valid = !!(val & MV88E6XXX_G1_VTU_VID_VALID);
 
 	return 0;
 }
 
 static int mv88e6xxx_g1_vtu_vid_write(struct mv88e6xxx_chip *chip,
-				      struct mv88e6xxx_vtu_entry *entry)
+				      bool valid, u16 vid)
 {
-	u16 val = entry->vid & 0xfff;
+	u16 val = vid & 0xfff;
 
-	if (entry->vid & 0x1000)
+	if (vid & 0x1000)
 		val |= MV88E6390_G1_VTU_VID_PAGE;
 
-	if (entry->valid)
+	if (valid)
 		val |= MV88E6XXX_G1_VTU_VID_VALID;
 
 	return mv88e6xxx_g1_write(chip, MV88E6XXX_G1_VTU_VID, val);
@@ -147,7 +148,7 @@ static int mv88e6185_g1_vtu_stu_data_read(struct mv88e6xxx_chip *chip,
 }
 
 static int mv88e6185_g1_vtu_data_read(struct mv88e6xxx_chip *chip,
-				      struct mv88e6xxx_vtu_entry *entry)
+				      u8 *member, u8 *state)
 {
 	u16 regs[3];
 	int err;
@@ -160,36 +161,20 @@ static int mv88e6185_g1_vtu_data_read(struct mv88e6xxx_chip *chip,
 	/* Extract MemberTag data */
 	for (i = 0; i < mv88e6xxx_num_ports(chip); ++i) {
 		unsigned int member_offset = (i % 4) * 4;
+		unsigned int state_offset = member_offset + 2;
 
-		entry->member[i] = (regs[i / 4] >> member_offset) & 0x3;
-	}
-
-	return 0;
-}
-
-static int mv88e6185_g1_stu_data_read(struct mv88e6xxx_chip *chip,
-				      struct mv88e6xxx_vtu_entry *entry)
-{
-	u16 regs[3];
-	int err;
-	int i;
-
-	err = mv88e6185_g1_vtu_stu_data_read(chip, regs);
-	if (err)
-		return err;
+		if (member)
+			member[i] = (regs[i / 4] >> member_offset) & 0x3;
 
-	/* Extract PortState data */
-	for (i = 0; i < mv88e6xxx_num_ports(chip); ++i) {
-		unsigned int state_offset = (i % 4) * 4 + 2;
-
-		entry->state[i] = (regs[i / 4] >> state_offset) & 0x3;
+		if (state)
+			state[i] = (regs[i / 4] >> state_offset) & 0x3;
 	}
 
 	return 0;
 }
 
 static int mv88e6185_g1_vtu_data_write(struct mv88e6xxx_chip *chip,
-				       struct mv88e6xxx_vtu_entry *entry)
+				       u8 *member, u8 *state)
 {
 	u16 regs[3] = { 0 };
 	int i;
@@ -199,8 +184,11 @@ static int mv88e6185_g1_vtu_data_write(struct mv88e6xxx_chip *chip,
 		unsigned int member_offset = (i % 4) * 4;
 		unsigned int state_offset = member_offset + 2;
 
-		regs[i / 4] |= (entry->member[i] & 0x3) << member_offset;
-		regs[i / 4] |= (entry->state[i] & 0x3) << state_offset;
+		if (member)
+			regs[i / 4] |= (member[i] & 0x3) << member_offset;
+
+		if (state)
+			regs[i / 4] |= (state[i] & 0x3) << state_offset;
 	}
 
 	/* Write all 3 VTU/STU Data registers */
@@ -268,48 +256,6 @@ static int mv88e6390_g1_vtu_data_write(struct mv88e6xxx_chip *chip, u8 *data)
 
 /* VLAN Translation Unit Operations */
 
-static int mv88e6xxx_g1_vtu_stu_getnext(struct mv88e6xxx_chip *chip,
-					struct mv88e6xxx_vtu_entry *entry)
-{
-	int err;
-
-	err = mv88e6xxx_g1_vtu_sid_write(chip, entry);
-	if (err)
-		return err;
-
-	err = mv88e6xxx_g1_vtu_op(chip, MV88E6XXX_G1_VTU_OP_STU_GET_NEXT);
-	if (err)
-		return err;
-
-	err = mv88e6xxx_g1_vtu_sid_read(chip, entry);
-	if (err)
-		return err;
-
-	return mv88e6xxx_g1_vtu_vid_read(chip, entry);
-}
-
-static int mv88e6xxx_g1_vtu_stu_get(struct mv88e6xxx_chip *chip,
-				    struct mv88e6xxx_vtu_entry *vtu)
-{
-	struct mv88e6xxx_vtu_entry stu;
-	int err;
-
-	err = mv88e6xxx_g1_vtu_sid_read(chip, vtu);
-	if (err)
-		return err;
-
-	stu.sid = vtu->sid - 1;
-
-	err = mv88e6xxx_g1_vtu_stu_getnext(chip, &stu);
-	if (err)
-		return err;
-
-	if (stu.sid != vtu->sid || !stu.valid)
-		return -EINVAL;
-
-	return 0;
-}
-
 int mv88e6xxx_g1_vtu_getnext(struct mv88e6xxx_chip *chip,
 			     struct mv88e6xxx_vtu_entry *entry)
 {
@@ -327,7 +273,7 @@ int mv88e6xxx_g1_vtu_getnext(struct mv88e6xxx_chip *chip,
 	 * write the VID only once, when the entry is given as invalid.
 	 */
 	if (!entry->valid) {
-		err = mv88e6xxx_g1_vtu_vid_write(chip, entry);
+		err = mv88e6xxx_g1_vtu_vid_write(chip, false, entry->vid);
 		if (err)
 			return err;
 	}
@@ -336,7 +282,7 @@ int mv88e6xxx_g1_vtu_getnext(struct mv88e6xxx_chip *chip,
 	if (err)
 		return err;
 
-	return mv88e6xxx_g1_vtu_vid_read(chip, entry);
+	return mv88e6xxx_g1_vtu_vid_read(chip, &entry->valid, &entry->vid);
 }
 
 int mv88e6185_g1_vtu_getnext(struct mv88e6xxx_chip *chip,
@@ -350,11 +296,7 @@ int mv88e6185_g1_vtu_getnext(struct mv88e6xxx_chip *chip,
 		return err;
 
 	if (entry->valid) {
-		err = mv88e6185_g1_vtu_data_read(chip, entry);
-		if (err)
-			return err;
-
-		err = mv88e6185_g1_stu_data_read(chip, entry);
+		err = mv88e6185_g1_vtu_data_read(chip, entry->member, entry->state);
 		if (err)
 			return err;
 
@@ -384,7 +326,7 @@ int mv88e6352_g1_vtu_getnext(struct mv88e6xxx_chip *chip,
 		return err;
 
 	if (entry->valid) {
-		err = mv88e6185_g1_vtu_data_read(chip, entry);
+		err = mv88e6185_g1_vtu_data_read(chip, entry->member, NULL);
 		if (err)
 			return err;
 
@@ -392,12 +334,7 @@ int mv88e6352_g1_vtu_getnext(struct mv88e6xxx_chip *chip,
 		if (err)
 			return err;
 
-		/* Fetch VLAN PortState data from the STU */
-		err = mv88e6xxx_g1_vtu_stu_get(chip, entry);
-		if (err)
-			return err;
-
-		err = mv88e6185_g1_stu_data_read(chip, entry);
+		err = mv88e6xxx_g1_vtu_sid_read(chip, &entry->sid);
 		if (err)
 			return err;
 	}
@@ -420,16 +357,11 @@ int mv88e6390_g1_vtu_getnext(struct mv88e6xxx_chip *chip,
 		if (err)
 			return err;
 
-		/* Fetch VLAN PortState data from the STU */
-		err = mv88e6xxx_g1_vtu_stu_get(chip, entry);
-		if (err)
-			return err;
-
-		err = mv88e6390_g1_vtu_data_read(chip, entry->state);
+		err = mv88e6xxx_g1_vtu_fid_read(chip, entry);
 		if (err)
 			return err;
 
-		err = mv88e6xxx_g1_vtu_fid_read(chip, entry);
+		err = mv88e6xxx_g1_vtu_sid_read(chip, &entry->sid);
 		if (err)
 			return err;
 	}
@@ -447,12 +379,12 @@ int mv88e6185_g1_vtu_loadpurge(struct mv88e6xxx_chip *chip,
 	if (err)
 		return err;
 
-	err = mv88e6xxx_g1_vtu_vid_write(chip, entry);
+	err = mv88e6xxx_g1_vtu_vid_write(chip, entry->valid, entry->vid);
 	if (err)
 		return err;
 
 	if (entry->valid) {
-		err = mv88e6185_g1_vtu_data_write(chip, entry);
+		err = mv88e6185_g1_vtu_data_write(chip, entry->member, entry->state);
 		if (err)
 			return err;
 
@@ -479,27 +411,21 @@ int mv88e6352_g1_vtu_loadpurge(struct mv88e6xxx_chip *chip,
 	if (err)
 		return err;
 
-	err = mv88e6xxx_g1_vtu_vid_write(chip, entry);
+	err = mv88e6xxx_g1_vtu_vid_write(chip, entry->valid, entry->vid);
 	if (err)
 		return err;
 
 	if (entry->valid) {
-		/* Write MemberTag and PortState data */
-		err = mv88e6185_g1_vtu_data_write(chip, entry);
-		if (err)
-			return err;
-
-		err = mv88e6xxx_g1_vtu_sid_write(chip, entry);
+		/* Write MemberTag data */
+		err = mv88e6185_g1_vtu_data_write(chip, entry->member, NULL);
 		if (err)
 			return err;
 
-		/* Load STU entry */
-		err = mv88e6xxx_g1_vtu_op(chip,
-					  MV88E6XXX_G1_VTU_OP_STU_LOAD_PURGE);
+		err = mv88e6xxx_g1_vtu_fid_write(chip, entry);
 		if (err)
 			return err;
 
-		err = mv88e6xxx_g1_vtu_fid_write(chip, entry);
+		err = mv88e6xxx_g1_vtu_sid_write(chip, entry->sid);
 		if (err)
 			return err;
 	}
@@ -517,41 +443,113 @@ int mv88e6390_g1_vtu_loadpurge(struct mv88e6xxx_chip *chip,
 	if (err)
 		return err;
 
-	err = mv88e6xxx_g1_vtu_vid_write(chip, entry);
+	err = mv88e6xxx_g1_vtu_vid_write(chip, entry->valid, entry->vid);
 	if (err)
 		return err;
 
 	if (entry->valid) {
-		/* Write PortState data */
-		err = mv88e6390_g1_vtu_data_write(chip, entry->state);
+		/* Write MemberTag data */
+		err = mv88e6390_g1_vtu_data_write(chip, entry->member);
 		if (err)
 			return err;
 
-		err = mv88e6xxx_g1_vtu_sid_write(chip, entry);
+		err = mv88e6xxx_g1_vtu_fid_write(chip, entry);
 		if (err)
 			return err;
 
-		/* Load STU entry */
-		err = mv88e6xxx_g1_vtu_op(chip,
-					  MV88E6XXX_G1_VTU_OP_STU_LOAD_PURGE);
+		err = mv88e6xxx_g1_vtu_sid_write(chip, entry->sid);
 		if (err)
 			return err;
+	}
 
-		/* Write MemberTag data */
-		err = mv88e6390_g1_vtu_data_write(chip, entry->member);
+	/* Load/Purge VTU entry */
+	return mv88e6xxx_g1_vtu_op(chip, MV88E6XXX_G1_VTU_OP_VTU_LOAD_PURGE);
+}
+
+int mv88e6xxx_g1_vtu_flush(struct mv88e6xxx_chip *chip)
+{
+	int err;
+
+	err = mv88e6xxx_g1_vtu_op_wait(chip);
+	if (err)
+		return err;
+
+	return mv88e6xxx_g1_vtu_op(chip, MV88E6XXX_G1_VTU_OP_FLUSH_ALL);
+}
+
+/* Spanning Tree Unit Operations */
+
+int mv88e6xxx_g1_stu_getnext(struct mv88e6xxx_chip *chip,
+			     struct mv88e6xxx_stu_entry *entry)
+{
+	int err;
+
+	err = mv88e6xxx_g1_vtu_op_wait(chip);
+	if (err)
+		return err;
+
+	/* To get the next higher active SID, the STU GetNext operation can be
+	 * started again without setting the SID registers since it already
+	 * contains the last SID.
+	 *
+	 * To save a few hardware accesses and abstract this to the caller,
+	 * write the SID only once, when the entry is given as invalid.
+	 */
+	if (!entry->valid) {
+		err = mv88e6xxx_g1_vtu_sid_write(chip, entry->sid);
 		if (err)
 			return err;
+	}
 
-		err = mv88e6xxx_g1_vtu_fid_write(chip, entry);
+	err = mv88e6xxx_g1_vtu_op(chip, MV88E6XXX_G1_VTU_OP_STU_GET_NEXT);
+	if (err)
+		return err;
+
+	err = mv88e6xxx_g1_vtu_vid_read(chip, &entry->valid, NULL);
+	if (err)
+		return err;
+
+	if (entry->valid) {
+		err = mv88e6xxx_g1_vtu_sid_read(chip, &entry->sid);
 		if (err)
 			return err;
 	}
 
-	/* Load/Purge VTU entry */
-	return mv88e6xxx_g1_vtu_op(chip, MV88E6XXX_G1_VTU_OP_VTU_LOAD_PURGE);
+	return 0;
 }
 
-int mv88e6xxx_g1_vtu_flush(struct mv88e6xxx_chip *chip)
+int mv88e6352_g1_stu_getnext(struct mv88e6xxx_chip *chip,
+			     struct mv88e6xxx_stu_entry *entry)
+{
+	int err;
+
+	err = mv88e6xxx_g1_stu_getnext(chip, entry);
+	if (err)
+		return err;
+
+	if (!entry->valid)
+		return 0;
+
+	return mv88e6185_g1_vtu_data_read(chip, NULL, entry->state);
+}
+
+int mv88e6390_g1_stu_getnext(struct mv88e6xxx_chip *chip,
+			     struct mv88e6xxx_stu_entry *entry)
+{
+	int err;
+
+	err = mv88e6xxx_g1_stu_getnext(chip, entry);
+	if (err)
+		return err;
+
+	if (!entry->valid)
+		return 0;
+
+	return mv88e6390_g1_vtu_data_read(chip, entry->state);
+}
+
+int mv88e6352_g1_stu_loadpurge(struct mv88e6xxx_chip *chip,
+			       struct mv88e6xxx_stu_entry *entry)
 {
 	int err;
 
@@ -559,16 +557,59 @@ int mv88e6xxx_g1_vtu_flush(struct mv88e6xxx_chip *chip)
 	if (err)
 		return err;
 
-	return mv88e6xxx_g1_vtu_op(chip, MV88E6XXX_G1_VTU_OP_FLUSH_ALL);
+	err = mv88e6xxx_g1_vtu_vid_write(chip, entry->valid, 0);
+	if (err)
+		return err;
+
+	err = mv88e6xxx_g1_vtu_sid_write(chip, entry->sid);
+	if (err)
+		return err;
+
+	if (entry->valid) {
+		err = mv88e6185_g1_vtu_data_write(chip, NULL, entry->state);
+		if (err)
+			return err;
+	}
+
+	/* Load/Purge STU entry */
+	return mv88e6xxx_g1_vtu_op(chip, MV88E6XXX_G1_VTU_OP_STU_LOAD_PURGE);
+}
+
+int mv88e6390_g1_stu_loadpurge(struct mv88e6xxx_chip *chip,
+			       struct mv88e6xxx_stu_entry *entry)
+{
+	int err;
+
+	err = mv88e6xxx_g1_vtu_op_wait(chip);
+	if (err)
+		return err;
+
+	err = mv88e6xxx_g1_vtu_vid_write(chip, entry->valid, 0);
+	if (err)
+		return err;
+
+	err = mv88e6xxx_g1_vtu_sid_write(chip, entry->sid);
+	if (err)
+		return err;
+
+	if (entry->valid) {
+		err = mv88e6390_g1_vtu_data_write(chip, entry->state);
+		if (err)
+			return err;
+	}
+
+	/* Load/Purge STU entry */
+	return mv88e6xxx_g1_vtu_op(chip, MV88E6XXX_G1_VTU_OP_STU_LOAD_PURGE);
 }
 
+/* VTU Violation Management */
+
 static irqreturn_t mv88e6xxx_g1_vtu_prob_irq_thread_fn(int irq, void *dev_id)
 {
 	struct mv88e6xxx_chip *chip = dev_id;
-	struct mv88e6xxx_vtu_entry entry;
+	u16 val, vid;
 	int spid;
 	int err;
-	u16 val;
 
 	mv88e6xxx_reg_lock(chip);
 
@@ -580,7 +621,7 @@ static irqreturn_t mv88e6xxx_g1_vtu_prob_irq_thread_fn(int irq, void *dev_id)
 	if (err)
 		goto out;
 
-	err = mv88e6xxx_g1_vtu_vid_read(chip, &entry);
+	err = mv88e6xxx_g1_vtu_vid_read(chip, NULL, &vid);
 	if (err)
 		goto out;
 
@@ -588,13 +629,13 @@ static irqreturn_t mv88e6xxx_g1_vtu_prob_irq_thread_fn(int irq, void *dev_id)
 
 	if (val & MV88E6XXX_G1_VTU_OP_MEMBER_VIOLATION) {
 		dev_err_ratelimited(chip->dev, "VTU member violation for vid %d, source port %d\n",
-				    entry.vid, spid);
+				    vid, spid);
 		chip->ports[spid].vtu_member_violation++;
 	}
 
 	if (val & MV88E6XXX_G1_VTU_OP_MISS_VIOLATION) {
 		dev_dbg_ratelimited(chip->dev, "VTU miss violation for vid %d, source port %d\n",
-				    entry.vid, spid);
+				    vid, spid);
 		chip->ports[spid].vtu_miss_violation++;
 	}
 
-- 
2.25.1

