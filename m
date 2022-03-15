Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5E84D9161
	for <lists.bridge@lfdr.de>; Tue, 15 Mar 2022 01:26:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8B6E7408DD;
	Tue, 15 Mar 2022 00:26:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0rz0kKK6AWCZ; Tue, 15 Mar 2022 00:26:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id DDCEE408F9;
	Tue, 15 Mar 2022 00:26:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A4073C0084;
	Tue, 15 Mar 2022 00:26:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2BE70C000B
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 653EE415AC
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bddDWGdXCtct for <bridge@lists.linux-foundation.org>;
 Tue, 15 Mar 2022 00:26:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com
 [IPv6:2a00:1450:4864:20::229])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 51DCD415BF
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:37 +0000 (UTC)
Received: by mail-lj1-x229.google.com with SMTP id z26so24328208lji.8
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 17:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=ubTDrM/HLQcbgKJhKkseLppPojCwlLcGyvEvWGWRMWk=;
 b=DDBB4A6mlCEz5d22AzgJU2vOSYyiAlsidTYqeCh78dRcmjKI5yiIoGSCypoKw+fEGH
 7agQTH1VDaX+SZ/zj+NAFMT2ycO+vnZ/J6TJzZw2XyYFPTN1Pe/CR0ccGGiVzJ1hfjki
 QyKPblRC2wL7Q7uqmHp88SMIkPky0CcAcnnXuP5WMOZV2Mq1IwtEbA4JVMjC71SEaNX3
 yTkACpFlZ/CvqyBZhbwNc5Vvq6Eo3KQIf8bTwcQ/WqYkPLcix2k3rZlZg5Kndm1kqbgt
 jAFPMCbQZWDRyzeZGZGk7SPhzVqbvX5b7fh5NfF3uUjAy2lmDxgGIieZ3Ymcss8WcC6P
 ffVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=ubTDrM/HLQcbgKJhKkseLppPojCwlLcGyvEvWGWRMWk=;
 b=3XdlMTVxH/0elEeWxiXduucDjIqL+7/2ev6XDCWrZof5kqgvhhX9HL6PyhMJd1jXjd
 gZ5GBXmWxH23k3foM6FmfZ+JwTYV4aEoEBdBsqeDqBefg6mzQaCV98LLXp6IO3Sk1MwS
 iZSPPtfY+zs6xCqxma6w68t1x5/GUz9//R1QLCb7YpLbIUnXG7THOqPVXnszxbBfaepg
 0m/1OP95l/CTTeeYy0reswhaEx8EkR9cWOr4pMsOPQkxzOWKtrHveybDswYgh4J4zKtD
 9gh4chnyuIAtlrOb5tJj9ETQFlfAVmS7wjvoLneBMOf++c0HpTV7ACr7LeXWDq0fn1Ko
 D8TA==
X-Gm-Message-State: AOAM532jA7z5H7rGHRy6FAumRQGChbXdDb0HjQlLTNBCsF8xynID6IwC
 ku80Hh5aECzxhDcujejMaCVHCQ==
X-Google-Smtp-Source: ABdhPJwLEsNlyu8/gjfljgGdni4K15/kccNkkRqHHIlf1N8mfMWUT5A3wVu5guPjZELF5HFdFN7X+g==
X-Received: by 2002:a05:651c:506:b0:22d:b44b:113e with SMTP id
 o6-20020a05651c050600b0022db44b113emr15667243ljp.32.1647303995280; 
 Mon, 14 Mar 2022 17:26:35 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 y14-20020a2e544e000000b0024800f8286bsm4219923ljd.78.2022.03.14.17.26.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 17:26:34 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue, 15 Mar 2022 01:25:43 +0100
Message-Id: <20220315002543.190587-16-tobias@waldekranz.com>
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
Subject: [Bridge] [PATCH v4 net-next 15/15] net: dsa: mv88e6xxx: MST
	Offloading
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
 drivers/net/dsa/mv88e6xxx/chip.c | 250 ++++++++++++++++++++++++++++++-
 drivers/net/dsa/mv88e6xxx/chip.h |  13 ++
 2 files changed, 255 insertions(+), 8 deletions(-)

diff --git a/drivers/net/dsa/mv88e6xxx/chip.c b/drivers/net/dsa/mv88e6xxx/chip.c
index c14a62aa6a6c..bed1a5658eac 100644
--- a/drivers/net/dsa/mv88e6xxx/chip.c
+++ b/drivers/net/dsa/mv88e6xxx/chip.c
@@ -1667,24 +1667,31 @@ static int mv88e6xxx_pvt_setup(struct mv88e6xxx_chip *chip)
 	return 0;
 }
 
-static void mv88e6xxx_port_fast_age(struct dsa_switch *ds, int port)
+static int mv88e6xxx_port_fast_age_fid(struct mv88e6xxx_chip *chip, int port,
+				       u16 fid)
 {
-	struct mv88e6xxx_chip *chip = ds->priv;
-	int err;
-
-	if (dsa_to_port(ds, port)->lag)
+	if (dsa_to_port(chip->ds, port)->lag)
 		/* Hardware is incapable of fast-aging a LAG through a
 		 * regular ATU move operation. Until we have something
 		 * more fancy in place this is a no-op.
 		 */
-		return;
+		return -EOPNOTSUPP;
+
+	return mv88e6xxx_g1_atu_remove(chip, fid, port, false);
+}
+
+static void mv88e6xxx_port_fast_age(struct dsa_switch *ds, int port)
+{
+	struct mv88e6xxx_chip *chip = ds->priv;
+	int err;
 
 	mv88e6xxx_reg_lock(chip);
-	err = mv88e6xxx_g1_atu_remove(chip, 0, port, false);
+	err = mv88e6xxx_port_fast_age_fid(chip, port, 0);
 	mv88e6xxx_reg_unlock(chip);
 
 	if (err)
-		dev_err(ds->dev, "p%d: failed to flush ATU\n", port);
+		dev_err(chip->ds->dev, "p%d: failed to flush ATU: %d\n",
+			port, err);
 }
 
 static int mv88e6xxx_vtu_setup(struct mv88e6xxx_chip *chip)
@@ -1818,6 +1825,160 @@ static int mv88e6xxx_stu_setup(struct mv88e6xxx_chip *chip)
 	return mv88e6xxx_stu_loadpurge(chip, &stu);
 }
 
+static int mv88e6xxx_sid_get(struct mv88e6xxx_chip *chip, u8 *sid)
+{
+	DECLARE_BITMAP(busy, MV88E6XXX_N_SID) = { 0 };
+	struct mv88e6xxx_mst *mst;
+
+	__set_bit(0, busy);
+
+	list_for_each_entry(mst, &chip->msts, node)
+		__set_bit(mst->stu.sid, busy);
+
+	*sid = find_first_zero_bit(busy, MV88E6XXX_N_SID);
+
+	return (*sid >= mv88e6xxx_max_sid(chip)) ? -ENOSPC : 0;
+}
+
+static int mv88e6xxx_mst_put(struct mv88e6xxx_chip *chip, u8 sid)
+{
+	struct mv88e6xxx_mst *mst, *tmp;
+	int err;
+
+	if (!sid)
+		return 0;
+
+	list_for_each_entry_safe(mst, tmp, &chip->msts, node) {
+		if (mst->stu.sid != sid)
+			continue;
+
+		if (!refcount_dec_and_test(&mst->refcnt))
+			return 0;
+
+		mst->stu.valid = false;
+		err = mv88e6xxx_stu_loadpurge(chip, &mst->stu);
+		if (err) {
+			refcount_set(&mst->refcnt, 1);
+			return err;
+		}
+
+		list_del(&mst->node);
+		kfree(mst);
+		return 0;
+	}
+
+	return -ENOENT;
+}
+
+static int mv88e6xxx_mst_get(struct mv88e6xxx_chip *chip, struct net_device *br,
+			     u16 msti, u8 *sid)
+{
+	struct mv88e6xxx_mst *mst;
+	int err, i;
+
+	if (!mv88e6xxx_has_stu(chip)) {
+		err = -EOPNOTSUPP;
+		goto err;
+	}
+
+	if (!msti) {
+		*sid = 0;
+		return 0;
+	}
+
+	list_for_each_entry(mst, &chip->msts, node) {
+		if (mst->br == br && mst->msti == msti) {
+			refcount_inc(&mst->refcnt);
+			*sid = mst->stu.sid;
+			return 0;
+		}
+	}
+
+	err = mv88e6xxx_sid_get(chip, sid);
+	if (err)
+		goto err;
+
+	mst = kzalloc(sizeof(*mst), GFP_KERNEL);
+	if (!mst) {
+		err = -ENOMEM;
+		goto err;
+	}
+
+	INIT_LIST_HEAD(&mst->node);
+	refcount_set(&mst->refcnt, 1);
+	mst->br = br;
+	mst->msti = msti;
+	mst->stu.valid = true;
+	mst->stu.sid = *sid;
+
+	/* The bridge starts out all ports in the disabled state. But
+	 * a STU state of disabled means to go by the port-global
+	 * state. So we set all user port's initial state to blocking,
+	 * to match the bridge's behavior.
+	 */
+	for (i = 0; i < mv88e6xxx_num_ports(chip); i++)
+		mst->stu.state[i] = dsa_is_user_port(chip->ds, i) ?
+			MV88E6XXX_PORT_CTL0_STATE_BLOCKING :
+			MV88E6XXX_PORT_CTL0_STATE_DISABLED;
+
+	err = mv88e6xxx_stu_loadpurge(chip, &mst->stu);
+	if (err)
+		goto err_free;
+
+	list_add_tail(&mst->node, &chip->msts);
+	return 0;
+
+err_free:
+	kfree(mst);
+err:
+	return err;
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
+		    mst->msti == st->msti) {
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
@@ -2437,6 +2598,12 @@ static int mv88e6xxx_port_vlan_leave(struct mv88e6xxx_chip *chip,
 	if (err)
 		return err;
 
+	if (!vlan.valid) {
+		err = mv88e6xxx_mst_put(chip, vlan.sid);
+		if (err)
+			return err;
+	}
+
 	return mv88e6xxx_g1_atu_remove(chip, vlan.fid, port, false);
 }
 
@@ -2482,6 +2649,69 @@ static int mv88e6xxx_port_vlan_del(struct dsa_switch *ds, int port,
 	return err;
 }
 
+static int mv88e6xxx_port_vlan_fast_age(struct dsa_switch *ds, int port, u16 vid)
+{
+	struct mv88e6xxx_chip *chip = ds->priv;
+	struct mv88e6xxx_vtu_entry vlan;
+	int err;
+
+	mv88e6xxx_reg_lock(chip);
+
+	err = mv88e6xxx_vtu_get(chip, vid, &vlan);
+	if (err)
+		goto unlock;
+
+	err = mv88e6xxx_port_fast_age_fid(chip, port, vlan.fid);
+
+unlock:
+	mv88e6xxx_reg_unlock(chip);
+
+	return err;
+}
+
+static int mv88e6xxx_vlan_msti_set(struct dsa_switch *ds,
+				   struct dsa_bridge bridge,
+				   const struct switchdev_vlan_msti *msti)
+{
+	struct mv88e6xxx_chip *chip = ds->priv;
+	struct mv88e6xxx_vtu_entry vlan;
+	u8 old_sid, new_sid;
+	int err;
+
+	mv88e6xxx_reg_lock(chip);
+
+	err = mv88e6xxx_vtu_get(chip, msti->vid, &vlan);
+	if (err)
+		goto unlock;
+
+	if (!vlan.valid) {
+		err = -EINVAL;
+		goto unlock;
+	}
+
+	old_sid = vlan.sid;
+
+	err = mv88e6xxx_mst_get(chip, bridge.dev, msti->msti, &new_sid);
+	if (err)
+		goto unlock;
+
+	if (new_sid != old_sid) {
+		vlan.sid = new_sid;
+
+		err = mv88e6xxx_vtu_loadpurge(chip, &vlan);
+		if (err) {
+			mv88e6xxx_mst_put(chip, new_sid);
+			goto unlock;
+		}
+	}
+
+	err = mv88e6xxx_mst_put(chip, old_sid);
+
+unlock:
+	mv88e6xxx_reg_unlock(chip);
+	return err;
+}
+
 static int mv88e6xxx_port_fdb_add(struct dsa_switch *ds, int port,
 				  const unsigned char *addr, u16 vid,
 				  struct dsa_db db)
@@ -6008,6 +6238,7 @@ static struct mv88e6xxx_chip *mv88e6xxx_alloc_chip(struct device *dev)
 	mutex_init(&chip->reg_lock);
 	INIT_LIST_HEAD(&chip->mdios);
 	idr_init(&chip->policies);
+	INIT_LIST_HEAD(&chip->msts);
 
 	return chip;
 }
@@ -6540,10 +6771,13 @@ static const struct dsa_switch_ops mv88e6xxx_switch_ops = {
 	.port_pre_bridge_flags	= mv88e6xxx_port_pre_bridge_flags,
 	.port_bridge_flags	= mv88e6xxx_port_bridge_flags,
 	.port_stp_state_set	= mv88e6xxx_port_stp_state_set,
+	.port_mst_state_set	= mv88e6xxx_port_mst_state_set,
 	.port_fast_age		= mv88e6xxx_port_fast_age,
+	.port_vlan_fast_age	= mv88e6xxx_port_vlan_fast_age,
 	.port_vlan_filtering	= mv88e6xxx_port_vlan_filtering,
 	.port_vlan_add		= mv88e6xxx_port_vlan_add,
 	.port_vlan_del		= mv88e6xxx_port_vlan_del,
+	.vlan_msti_set		= mv88e6xxx_vlan_msti_set,
 	.port_fdb_add           = mv88e6xxx_port_fdb_add,
 	.port_fdb_del           = mv88e6xxx_port_fdb_del,
 	.port_fdb_dump          = mv88e6xxx_port_fdb_dump,
diff --git a/drivers/net/dsa/mv88e6xxx/chip.h b/drivers/net/dsa/mv88e6xxx/chip.h
index 6d4daa24d3e5..6a0b66354e1d 100644
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
+	u16 msti;
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

