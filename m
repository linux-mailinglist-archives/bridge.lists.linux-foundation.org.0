Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C31A3161F5
	for <lists.bridge@lfdr.de>; Wed, 10 Feb 2021 10:19:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B2EC387285;
	Wed, 10 Feb 2021 09:19:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UO7HOH4ezjAZ; Wed, 10 Feb 2021 09:19:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7DC288727D;
	Wed, 10 Feb 2021 09:19:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 63753C0FA7;
	Wed, 10 Feb 2021 09:19:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 79267C013A
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 09:19:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6832687227
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 09:19:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d3v+r+JuH9dF for <bridge@lists.linux-foundation.org>;
 Wed, 10 Feb 2021 09:19:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
 [209.85.218.41])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0D0AC8726C
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 09:19:26 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id lg21so2827279ejb.3
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 01:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nqM+4Yr8F4+GxUXddkhAIS+khdj8bCCJ5YLHti1P+HU=;
 b=t1iDYvmnaAH3vkKod3rlfHYrB22+6raztYFdCkY0RnPZc1dOHA/yevv2oPYrc+DWvI
 VjU8cpj9gN7VU7tteqZdiv3BioQVyL9e6PTS51cXYhQfoCJFcKV85quRsaZgVCVzuYhK
 dXCenpS7r7AIPWdtzVKmHr1ktYGQU4nlkSC/9twTVc0SFTAmqZ/jGyPr3elV+G1FMR0L
 sqMI/EzunQM3dygBPtSXHf+pRfL96XzcKJ9sLeKLt4op3PwQm7aBV2rZCIhHKUEf3Nud
 LDXwOv0KktTgIv23+rDowtMNZ2t3zsxyCLvJ/3Z0Y1ANpexOuulTW9IvS0E1x/jRZ/6X
 EVeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nqM+4Yr8F4+GxUXddkhAIS+khdj8bCCJ5YLHti1P+HU=;
 b=WGRHQV46gzYsIIDEFzAx4kdesUxlpVFRXgt00+fXORaudHsPKifkSzCKckZrGFSDXr
 hsccOmHbOPKTGpjMactzCa7AcVz+VDiAa/Sr5k1kLoG8FaxRvp3cTN6drW3r3m4gUHW0
 HxfoB8u4Pxt43HmcB+4lfl+IPMweVGB7iJqwZSDIelIxkdAsLCKrTzXzQXEY0Bf9xkNy
 MoIRpdZCi3k5uj+WGD4bNNf+eBXw0QdTPI09z4lQ6zyer+UnIPnxFEDlLw3Mljd7wUco
 99RhLhsiA+uF446LaEjKUA6qMLUqwpFlmB9sXOzDHrRNyVGqJZbRIqvX+zCamiNx7lyh
 sCSQ==
X-Gm-Message-State: AOAM532u/CcBLReuuBNzVAMzC55M0seEor73+40/6d8aK38nQ9QXqO8d
 L6I3kEgik86Ufvv1X6jBHP4=
X-Google-Smtp-Source: ABdhPJyB8ABrW/EpJlY1kB//5lvfpH+84Uu0gquf8YModSDLQh0167tcKrRSdygSPMrW+wHfKIRtJg==
X-Received: by 2002:a17:906:259a:: with SMTP id
 m26mr2042269ejb.399.1612948764529; 
 Wed, 10 Feb 2021 01:19:24 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id u2sm701801ejb.65.2021.02.10.01.19.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 01:19:24 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Date: Wed, 10 Feb 2021 11:14:41 +0200
Message-Id: <20210210091445.741269-8-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210210091445.741269-1-olteanv@gmail.com>
References: <20210210091445.741269-1-olteanv@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Taras Chornyi <tchornyi@marvell.com>, Ido Schimmel <idosch@idosch.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 linux-omap@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH v3 net-next 07/11] net: prep switchdev drivers for
	concurrent SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS
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

From: Vladimir Oltean <vladimir.oltean@nxp.com>

Because the bridge will start offloading SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS
while not serialized by any lock such as the br->lock spinlock, existing
drivers that treat that attribute and cache the brport flags might no
longer work correctly.

The issue is that the brport flags are a single unsigned long bitmask,
and the bridge only guarantees the validity of the changed bits, not the
full state. So when offloading two concurrent switchdev attributes, such
as one for BR_LEARNING and another for BR_FLOOD, it might happen that
the flags having BR_FLOOD are written into the cached value, and this in
turn disables the BR_LEARNING bit which was set previously.

We can fix this across the board by keeping individual boolean variables
for each brport flag. Note that mlxsw and prestera were setting the
BR_LEARNING_SYNC flag too, but that appears to be just dead code, so I
removed it.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
Changes in v3:
Patch is new.

 .../marvell/prestera/prestera_switchdev.c     | 32 ++++++++++------
 .../mellanox/mlxsw/spectrum_switchdev.c       | 38 ++++++++++++-------
 drivers/net/ethernet/rocker/rocker.h          |  2 +-
 drivers/net/ethernet/rocker/rocker_main.c     |  2 +-
 drivers/net/ethernet/rocker/rocker_ofdpa.c    | 26 +++++++------
 net/bridge/br_switchdev.c                     |  3 +-
 6 files changed, 62 insertions(+), 41 deletions(-)

diff --git a/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c b/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c
index a797a7ff0cfe..76030c4c1546 100644
--- a/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c
+++ b/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c
@@ -49,7 +49,9 @@ struct prestera_bridge_port {
 	struct prestera_bridge *bridge;
 	struct list_head vlan_list;
 	refcount_t ref_count;
-	unsigned long flags;
+	bool learning;
+	bool ucast_flood;
+	bool mcast_flood;
 	u8 stp_state;
 };
 
@@ -339,8 +341,9 @@ prestera_bridge_port_create(struct prestera_bridge *bridge,
 	if (!br_port)
 		return NULL;
 
-	br_port->flags = BR_LEARNING | BR_FLOOD | BR_LEARNING_SYNC |
-				BR_MCAST_FLOOD;
+	br_port->learning = true;
+	br_port->ucast_flood = true;
+	br_port->mcast_flood = true;
 	br_port->stp_state = BR_STATE_DISABLED;
 	refcount_set(&br_port->ref_count, 1);
 	br_port->bridge = bridge;
@@ -404,11 +407,11 @@ prestera_bridge_1d_port_join(struct prestera_bridge_port *br_port)
 	if (err)
 		return err;
 
-	err = prestera_hw_port_flood_set(port, br_port->flags & BR_FLOOD);
+	err = prestera_hw_port_flood_set(port, br_port->ucast_flood);
 	if (err)
 		goto err_port_flood_set;
 
-	err = prestera_hw_port_learning_set(port, br_port->flags & BR_LEARNING);
+	err = prestera_hw_port_learning_set(port, br_port->learning);
 	if (err)
 		goto err_port_learning_set;
 
@@ -594,19 +597,24 @@ static int prestera_port_attr_br_flags_set(struct prestera_port *port,
 		return 0;
 
 	if (flags.mask & BR_FLOOD) {
-		err = prestera_hw_port_flood_set(port, flags.val & BR_FLOOD);
+		bool ucast_flood = !!(flags.val & BR_FLOOD);
+
+		err = prestera_hw_port_flood_set(port, ucast_flood);
 		if (err)
 			return err;
+
+		br_port->ucast_flood = ucast_flood;
 	}
 
 	if (flags.mask & BR_LEARNING) {
-		err = prestera_hw_port_learning_set(port,
-						    flags.val & BR_LEARNING);
+		bool learning = !!(flags.val & BR_LEARNING);
+
+		err = prestera_hw_port_learning_set(port, learning);
 		if (err)
 			return err;
-	}
 
-	memcpy(&br_port->flags, &flags.val, sizeof(flags.val));
+		br_port->learning = learning;
+	}
 
 	return 0;
 }
@@ -899,11 +907,11 @@ prestera_port_vlan_bridge_join(struct prestera_port_vlan *port_vlan,
 	if (port_vlan->br_port)
 		return 0;
 
-	err = prestera_hw_port_flood_set(port, br_port->flags & BR_FLOOD);
+	err = prestera_hw_port_flood_set(port, br_port->ucast_flood);
 	if (err)
 		return err;
 
-	err = prestera_hw_port_learning_set(port, br_port->flags & BR_LEARNING);
+	err = prestera_hw_port_learning_set(port, br_port->learning);
 	if (err)
 		goto err_port_learning_set;
 
diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c b/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
index 7af79e3a3c7a..0c00754e0cb5 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
@@ -62,9 +62,11 @@ struct mlxsw_sp_bridge_port {
 	struct list_head vlans_list;
 	unsigned int ref_count;
 	u8 stp_state;
-	unsigned long flags;
 	bool mrouter;
 	bool lagged;
+	bool ucast_flood;
+	bool mcast_flood;
+	bool learning;
 	union {
 		u16 lag_id;
 		u16 system_port;
@@ -349,8 +351,9 @@ mlxsw_sp_bridge_port_create(struct mlxsw_sp_bridge_device *bridge_device,
 	bridge_port->dev = brport_dev;
 	bridge_port->bridge_device = bridge_device;
 	bridge_port->stp_state = BR_STATE_DISABLED;
-	bridge_port->flags = BR_LEARNING | BR_FLOOD | BR_LEARNING_SYNC |
-			     BR_MCAST_FLOOD;
+	bridge_port->learning = true;
+	bridge_port->ucast_flood = true;
+	bridge_port->mcast_flood = true;
 	INIT_LIST_HEAD(&bridge_port->vlans_list);
 	list_add(&bridge_port->list, &bridge_device->ports_list);
 	bridge_port->ref_count = 1;
@@ -669,36 +672,45 @@ static int mlxsw_sp_port_attr_br_flags_set(struct mlxsw_sp_port *mlxsw_sp_port,
 		return 0;
 
 	if (flags.mask & BR_FLOOD) {
+		bool ucast_flood = !!(flags.val & BR_FLOOD);
+
 		err = mlxsw_sp_bridge_port_flood_table_set(mlxsw_sp_port,
 							   bridge_port,
 							   MLXSW_SP_FLOOD_TYPE_UC,
-							   flags.val & BR_FLOOD);
+							   ucast_flood);
 		if (err)
 			return err;
+
+		bridge_port->ucast_flood = ucast_flood;
 	}
 
 	if (flags.mask & BR_LEARNING) {
+		bool learning = !!(flags.val & BR_LEARNING);
+
 		err = mlxsw_sp_bridge_port_learning_set(mlxsw_sp_port,
-							bridge_port,
-							flags.val & BR_LEARNING);
+							bridge_port, learning);
 		if (err)
 			return err;
+
+		bridge_port->learning = learning;
 	}
 
 	if (bridge_port->bridge_device->multicast_enabled)
-		goto out;
+		return 0;
 
 	if (flags.mask & BR_MCAST_FLOOD) {
+		bool mcast_flood = !!(flags.val & BR_MCAST_FLOOD);
+
 		err = mlxsw_sp_bridge_port_flood_table_set(mlxsw_sp_port,
 							   bridge_port,
 							   MLXSW_SP_FLOOD_TYPE_MC,
-							   flags.val & BR_MCAST_FLOOD);
+							   mcast_flood);
 		if (err)
 			return err;
+
+		bridge_port->mcast_flood = mcast_flood;
 	}
 
-out:
-	memcpy(&bridge_port->flags, &flags.val, sizeof(flags.val));
 	return 0;
 }
 
@@ -796,7 +808,7 @@ static bool mlxsw_sp_mc_flood(const struct mlxsw_sp_bridge_port *bridge_port)
 
 	bridge_device = bridge_port->bridge_device;
 	return bridge_device->multicast_enabled ? bridge_port->mrouter :
-					bridge_port->flags & BR_MCAST_FLOOD;
+						  bridge_port->mcast_flood;
 }
 
 static int mlxsw_sp_port_mc_disabled_set(struct mlxsw_sp_port *mlxsw_sp_port,
@@ -962,7 +974,7 @@ mlxsw_sp_port_vlan_fid_join(struct mlxsw_sp_port_vlan *mlxsw_sp_port_vlan,
 		return PTR_ERR(fid);
 
 	err = mlxsw_sp_fid_flood_set(fid, MLXSW_SP_FLOOD_TYPE_UC, local_port,
-				     bridge_port->flags & BR_FLOOD);
+				     bridge_port->ucast_flood);
 	if (err)
 		goto err_fid_uc_flood_set;
 
@@ -1043,7 +1055,7 @@ mlxsw_sp_port_vlan_bridge_join(struct mlxsw_sp_port_vlan *mlxsw_sp_port_vlan,
 		return err;
 
 	err = mlxsw_sp_port_vid_learning_set(mlxsw_sp_port, vid,
-					     bridge_port->flags & BR_LEARNING);
+					     bridge_port->learning);
 	if (err)
 		goto err_port_vid_learning_set;
 
diff --git a/drivers/net/ethernet/rocker/rocker.h b/drivers/net/ethernet/rocker/rocker.h
index 315a6e5c0f59..2f533c44fe88 100644
--- a/drivers/net/ethernet/rocker/rocker.h
+++ b/drivers/net/ethernet/rocker/rocker.h
@@ -103,7 +103,7 @@ struct rocker_world_ops {
 	int (*port_attr_stp_state_set)(struct rocker_port *rocker_port,
 				       u8 state);
 	int (*port_attr_bridge_flags_set)(struct rocker_port *rocker_port,
-					  unsigned long brport_flags);
+					  struct switchdev_brport_flags flags);
 	int (*port_attr_bridge_flags_support_get)(const struct rocker_port *
 						  rocker_port,
 						  unsigned long *
diff --git a/drivers/net/ethernet/rocker/rocker_main.c b/drivers/net/ethernet/rocker/rocker_main.c
index 898abf3d14d0..b1a67c6423a8 100644
--- a/drivers/net/ethernet/rocker/rocker_main.c
+++ b/drivers/net/ethernet/rocker/rocker_main.c
@@ -1593,7 +1593,7 @@ rocker_world_port_attr_bridge_flags_set(struct rocker_port *rocker_port,
 	if (flags.mask & ~brport_flags_s)
 		return -EINVAL;
 
-	return wops->port_attr_bridge_flags_set(rocker_port, flags.val);
+	return wops->port_attr_bridge_flags_set(rocker_port, flags);
 }
 
 static int
diff --git a/drivers/net/ethernet/rocker/rocker_ofdpa.c b/drivers/net/ethernet/rocker/rocker_ofdpa.c
index 967a634ee9ac..eb36c2a2da7b 100644
--- a/drivers/net/ethernet/rocker/rocker_ofdpa.c
+++ b/drivers/net/ethernet/rocker/rocker_ofdpa.c
@@ -198,7 +198,7 @@ struct ofdpa_port {
 	struct net_device *bridge_dev;
 	__be16 internal_vlan_id;
 	int stp_state;
-	u32 brport_flags;
+	bool learning;
 	unsigned long ageing_time;
 	bool ctrls[OFDPA_CTRL_MAX];
 	unsigned long vlan_bitmap[OFDPA_VLAN_BITMAP_LEN];
@@ -2423,7 +2423,7 @@ static int ofdpa_port_pre_init(struct rocker_port *rocker_port)
 	ofdpa_port->rocker_port = rocker_port;
 	ofdpa_port->dev = rocker_port->dev;
 	ofdpa_port->pport = rocker_port->pport;
-	ofdpa_port->brport_flags = BR_LEARNING;
+	ofdpa_port->learning = true;
 	ofdpa_port->ageing_time = BR_DEFAULT_AGEING_TIME;
 	return 0;
 }
@@ -2433,8 +2433,7 @@ static int ofdpa_port_init(struct rocker_port *rocker_port)
 	struct ofdpa_port *ofdpa_port = rocker_port->wpriv;
 	int err;
 
-	rocker_port_set_learning(rocker_port,
-				 !!(ofdpa_port->brport_flags & BR_LEARNING));
+	rocker_port_set_learning(rocker_port, ofdpa_port->learning);
 
 	err = ofdpa_port_ig_tbl(ofdpa_port, 0);
 	if (err) {
@@ -2488,20 +2487,23 @@ static int ofdpa_port_attr_stp_state_set(struct rocker_port *rocker_port,
 }
 
 static int ofdpa_port_attr_bridge_flags_set(struct rocker_port *rocker_port,
-					    unsigned long brport_flags)
+					    struct switchdev_brport_flags flags)
 {
 	struct ofdpa_port *ofdpa_port = rocker_port->wpriv;
-	unsigned long orig_flags;
-	int err = 0;
+	int err;
 
-	orig_flags = ofdpa_port->brport_flags;
-	ofdpa_port->brport_flags = brport_flags;
+	if (flags.mask & BR_LEARNING) {
+		bool learning = !!(flags.val & BR_LEARNING);
 
-	if ((orig_flags ^ ofdpa_port->brport_flags) & BR_LEARNING)
 		err = rocker_port_set_learning(ofdpa_port->rocker_port,
-					       !!(ofdpa_port->brport_flags & BR_LEARNING));
+					       learning);
+		if (err)
+			return err;
 
-	return err;
+		ofdpa_port->learning = learning;
+	}
+
+	return 0;
 }
 
 static int
diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
index 92d207c8a30e..dbd94156960f 100644
--- a/net/bridge/br_switchdev.c
+++ b/net/bridge/br_switchdev.c
@@ -72,12 +72,11 @@ int br_switchdev_set_port_flag(struct net_bridge_port *p,
 	};
 	int err;
 
-	flags &= BR_PORT_FLAGS_HW_OFFLOAD;
 	mask &= BR_PORT_FLAGS_HW_OFFLOAD;
 	if (!mask)
 		return 0;
 
-	attr.u.brport_flags.val = flags;
+	attr.u.brport_flags.val = flags & mask;
 	attr.u.brport_flags.mask = mask;
 
 	/* We run from atomic context here */
-- 
2.25.1

