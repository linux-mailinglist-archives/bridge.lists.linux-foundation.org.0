Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 836104B8A01
	for <lists.bridge@lfdr.de>; Wed, 16 Feb 2022 14:30:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A44D833CE;
	Wed, 16 Feb 2022 13:30:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AdgYF3Y-d58I; Wed, 16 Feb 2022 13:30:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id E05EC833A8;
	Wed, 16 Feb 2022 13:30:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A083AC000B;
	Wed, 16 Feb 2022 13:30:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 23523C000B
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 13:30:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F0BFC833A8
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 13:30:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zQN6F2yvZ7et for <bridge@lists.linux-foundation.org>;
 Wed, 16 Feb 2022 13:30:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 03168833AE
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 13:30:34 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id b11so3802893lfb.12
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 05:30:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=u25luItvkqFvSc0IbNowHTs0MkxngGGoablxIWJFpwU=;
 b=3zRscAoQJZnIioqtBwiIL/vS+HSuL/8Cha1JTBeTnsScmyJWJL6yPWMHWoYiXnhWK5
 uClzxydU8kDbfamIU2QAvn66jwTS9se1S9KE+Qc6olXMszJVdb388rvoUTUI4+G9Uigz
 9Bbbg5EuMDXE6kbHFdvtedX8085umN9i0vcxL+qCGJf/oz2vLQ2PcUWfyX1Z1CJwJ/pM
 l7Zr4mfmdpJLVfnU982RcZOY+OtCZoyml37YU6+6WD1Tk45qdsFH+IhlSMHVcGt6f7V6
 26OKdqv703p/W3YtC5RgXMyWs018GU69RHGsOtXGQ8Zd43hpnpbcAS9OCz4JeEi1lvOA
 IhXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=u25luItvkqFvSc0IbNowHTs0MkxngGGoablxIWJFpwU=;
 b=y2tWLfHZ4dYpuTwncn5KD2VcvpCd9FibLJYb4Hntl+2kk6Xp5Ebz9MDDgBz+7bvMlH
 w1RLqbuV2X+dne437bKzbfzXIO46e+rHOwHpizjgE+bQ3rwAf8guzdSLXCRW3Qrcopbu
 aytRJXlbkWHtrpQ5HassLflBoBFn/Wb1hNLIcSgGtmFOnobxu+IVpAWG44q69TV6y4PL
 TlsHyKluYH98gfOi56XwdxAbhF2FUyrWg3FIqrnjpt3tU9UraLOSMvz02h8cvOXFwlO7
 6n0cSV+sMGK2NEImO3ilgXlHB8j65NLtDFvM/MHIGJXz8D3XzQGh5W52H0DownlsmGPf
 TKng==
X-Gm-Message-State: AOAM5330kV3HYXtWCiminVbxqlsoSNk0SH0ULyFoA04qzOT1+nXdfzCO
 H7lt0IgczMhd5MFABF/0VZ6sBA==
X-Google-Smtp-Source: ABdhPJwfxAkbPMUou9xRm+3FfBXpZIFVnjko/BOIfxWn7VkxklvEIWdQabyQpHhC/gj2gb5biiHKtw==
X-Received: by 2002:a05:6512:10d6:b0:443:1439:2615 with SMTP id
 k22-20020a05651210d600b0044314392615mr2070897lfg.602.1645018232955; 
 Wed, 16 Feb 2022 05:30:32 -0800 (PST)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89])
 by smtp.gmail.com with ESMTPSA id v6sm234780ljd.86.2022.02.16.05.30.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Feb 2022 05:30:32 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Wed, 16 Feb 2022 14:29:34 +0100
Message-Id: <20220216132934.1775649-10-tobias@waldekranz.com>
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
Subject: [Bridge] [RFC net-next 9/9] net: dsa: mv88e6xxx: MST Offloading
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

Allocate a SID in the STU for each MSTID in use by a bridge and handle
the mapping of MSTIDs to VLANs using the SID field of each VTU entry.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 drivers/net/dsa/mv88e6xxx/chip.c | 169 +++++++++++++++++++++++++++++++
 drivers/net/dsa/mv88e6xxx/chip.h |  13 +++
 2 files changed, 182 insertions(+)

diff --git a/drivers/net/dsa/mv88e6xxx/chip.c b/drivers/net/dsa/mv88e6xxx/chip.c
index 39cf1bae161e..7d9ef041252d 100644
--- a/drivers/net/dsa/mv88e6xxx/chip.c
+++ b/drivers/net/dsa/mv88e6xxx/chip.c
@@ -1817,6 +1817,128 @@ static int mv88e6xxx_stu_setup(struct mv88e6xxx_chip *chip)
 	return mv88e6xxx_stu_loadpurge(chip, &stu);
 }
 
+static int mv88e6xxx_sid_new(struct mv88e6xxx_chip *chip, u8 *sid)
+{
+	DECLARE_BITMAP(busy, MV88E6XXX_N_SID) = { 0 };
+	struct mv88e6xxx_mst *mst;
+
+	set_bit(0, busy);
+
+	list_for_each_entry(mst, &chip->msts, node) {
+		set_bit(mst->stu.sid, busy);
+	}
+
+	*sid = find_first_zero_bit(busy, MV88E6XXX_N_SID);
+
+	return (*sid >= mv88e6xxx_max_sid(chip)) ? -ENOSPC : 0;
+}
+
+static int mv88e6xxx_sid_put(struct mv88e6xxx_chip *chip, u8 sid)
+{
+	struct mv88e6xxx_mst *mst, *tmp;
+	int err = 0;
+
+	list_for_each_entry_safe(mst, tmp, &chip->msts, node) {
+		if (mst->stu.sid == sid) {
+			if (refcount_dec_and_test(&mst->refcnt)) {
+				mst->stu.valid = false;
+				err = mv88e6xxx_stu_loadpurge(chip, &mst->stu);
+				list_del(&mst->node);
+				kfree(mst);
+			}
+
+			return err;
+		}
+	}
+
+	return -ENOENT;
+}
+
+static int mv88e6xxx_sid_get(struct mv88e6xxx_chip *chip, struct net_device *br,
+			     u16 mstid, u8 *sid)
+{
+	struct mv88e6xxx_mst *mst;
+	int err;
+
+	if (!br)
+		return 0;
+
+	if (!mv88e6xxx_has_stu(chip))
+		return -EOPNOTSUPP;
+
+	list_for_each_entry(mst, &chip->msts, node) {
+		if (mst->br == br && mst->mstid == mstid) {
+			refcount_inc(&mst->refcnt);
+			*sid = mst->stu.sid;
+			return 0;
+		}
+	}
+
+	err = mv88e6xxx_sid_new(chip, sid);
+	if (err)
+		return err;
+
+	mst = kzalloc(sizeof(*mst), GFP_KERNEL);
+	if (!mst)
+		return -ENOMEM;
+
+	INIT_LIST_HEAD(&mst->node);
+	refcount_set(&mst->refcnt, 1);
+	mst->br = br;
+	mst->mstid = mstid;
+	mst->stu.valid = true;
+	mst->stu.sid = *sid;
+	list_add_tail(&mst->node, &chip->msts);
+	return mv88e6xxx_stu_loadpurge(chip, &mst->stu);
+}
+
+static int mv88e6xxx_port_mst_state_set(struct dsa_switch *ds, int port,
+					const struct switchdev_mst_state *st)
+{
+	struct dsa_port *dp = dsa_to_port(ds, port);
+	struct mv88e6xxx_chip *chip = ds->priv;
+	struct mv88e6xxx_mst *mst;
+	u8 state;
+	int err;
+
+	if (!mv88e6xxx_has_stu(chip))
+		return -EOPNOTSUPP;
+
+	switch (st->state) {
+	case BR_STATE_DISABLED:
+		state = MV88E6XXX_PORT_CTL0_STATE_DISABLED;
+		break;
+	case BR_STATE_BLOCKING:
+	case BR_STATE_LISTENING:
+		state = MV88E6XXX_PORT_CTL0_STATE_BLOCKING;
+		break;
+	case BR_STATE_LEARNING:
+		state = MV88E6XXX_PORT_CTL0_STATE_LEARNING;
+		break;
+	case BR_STATE_FORWARDING:
+		state = MV88E6XXX_PORT_CTL0_STATE_FORWARDING;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	list_for_each_entry(mst, &chip->msts, node) {
+		if (mst->br == dsa_port_bridge_dev_get(dp) &&
+		    mst->mstid == st->mstid) {
+			if (mst->stu.state[port] == state)
+				return 0;
+
+			mst->stu.state[port] = state;
+			mv88e6xxx_reg_lock(chip);
+			err = mv88e6xxx_stu_loadpurge(chip, &mst->stu);
+			mv88e6xxx_reg_unlock(chip);
+			return err;
+		}
+	}
+
+	return -ENOENT;
+}
+
 static int mv88e6xxx_port_check_hw_vlan(struct dsa_switch *ds, int port,
 					u16 vid)
 {
@@ -2436,6 +2558,12 @@ static int mv88e6xxx_port_vlan_leave(struct mv88e6xxx_chip *chip,
 	if (err)
 		return err;
 
+	if (!vlan.valid) {
+		err = mv88e6xxx_sid_put(chip, vlan.sid);
+		if (err)
+			return err;
+	}
+
 	return mv88e6xxx_g1_atu_remove(chip, vlan.fid, port, false);
 }
 
@@ -2474,6 +2602,44 @@ static int mv88e6xxx_port_vlan_del(struct dsa_switch *ds, int port,
 	return err;
 }
 
+static int mv88e6xxx_vlan_mstid_set(struct dsa_switch *ds,
+				    const struct switchdev_attr *attr)
+{
+	const struct switchdev_vlan_attr *vattr = &attr->u.vlan_attr;
+	struct mv88e6xxx_chip *chip = ds->priv;
+	struct mv88e6xxx_vtu_entry vlan;
+	u8 new_sid;
+	int err;
+
+	mv88e6xxx_reg_lock(chip);
+
+	err = mv88e6xxx_vtu_get(chip, vattr->vid, &vlan);
+	if (err)
+		goto unlock;
+
+	if (!vlan.valid) {
+		err = -EINVAL;
+		goto unlock;
+	}
+
+	err = mv88e6xxx_sid_get(chip, attr->orig_dev, vattr->mstid, &new_sid);
+	if (err)
+		goto unlock;
+
+	if (vlan.sid) {
+		err = mv88e6xxx_sid_put(chip, vlan.sid);
+		if (err)
+			goto unlock;
+	}
+
+	vlan.sid = new_sid;
+	err = mv88e6xxx_vtu_loadpurge(chip, &vlan);
+
+unlock:
+	mv88e6xxx_reg_unlock(chip);
+	return err;
+}
+
 static int mv88e6xxx_port_fdb_add(struct dsa_switch *ds, int port,
 				  const unsigned char *addr, u16 vid)
 {
@@ -5996,6 +6162,7 @@ static struct mv88e6xxx_chip *mv88e6xxx_alloc_chip(struct device *dev)
 	mutex_init(&chip->reg_lock);
 	INIT_LIST_HEAD(&chip->mdios);
 	idr_init(&chip->policies);
+	INIT_LIST_HEAD(&chip->msts);
 
 	return chip;
 }
@@ -6518,10 +6685,12 @@ static const struct dsa_switch_ops mv88e6xxx_switch_ops = {
 	.port_pre_bridge_flags	= mv88e6xxx_port_pre_bridge_flags,
 	.port_bridge_flags	= mv88e6xxx_port_bridge_flags,
 	.port_stp_state_set	= mv88e6xxx_port_stp_state_set,
+	.port_mst_state_set	= mv88e6xxx_port_mst_state_set,
 	.port_fast_age		= mv88e6xxx_port_fast_age,
 	.port_vlan_filtering	= mv88e6xxx_port_vlan_filtering,
 	.port_vlan_add		= mv88e6xxx_port_vlan_add,
 	.port_vlan_del		= mv88e6xxx_port_vlan_del,
+	.vlan_mstid_set		= mv88e6xxx_vlan_mstid_set,
 	.port_fdb_add           = mv88e6xxx_port_fdb_add,
 	.port_fdb_del           = mv88e6xxx_port_fdb_del,
 	.port_fdb_dump          = mv88e6xxx_port_fdb_dump,
diff --git a/drivers/net/dsa/mv88e6xxx/chip.h b/drivers/net/dsa/mv88e6xxx/chip.h
index 6d4daa24d3e5..af0f53b65689 100644
--- a/drivers/net/dsa/mv88e6xxx/chip.h
+++ b/drivers/net/dsa/mv88e6xxx/chip.h
@@ -297,6 +297,16 @@ struct mv88e6xxx_region_priv {
 	enum mv88e6xxx_region_id id;
 };
 
+struct mv88e6xxx_mst {
+	struct list_head node;
+
+	refcount_t refcnt;
+	struct net_device *br;
+	u16 mstid;
+
+	struct mv88e6xxx_stu_entry stu;
+};
+
 struct mv88e6xxx_chip {
 	const struct mv88e6xxx_info *info;
 
@@ -397,6 +407,9 @@ struct mv88e6xxx_chip {
 
 	/* devlink regions */
 	struct devlink_region *regions[_MV88E6XXX_REGION_MAX];
+
+	/* Bridge MST to SID mappings */
+	struct list_head msts;
 };
 
 struct mv88e6xxx_bus_ops {
-- 
2.25.1

