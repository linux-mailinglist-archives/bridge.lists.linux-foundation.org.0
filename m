Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8E53197B4
	for <lists.bridge@lfdr.de>; Fri, 12 Feb 2021 02:06:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 99D5586FD7;
	Fri, 12 Feb 2021 01:05:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AJMiw_3WWD-H; Fri, 12 Feb 2021 01:05:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 98D2686FCF;
	Fri, 12 Feb 2021 01:05:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 817B7C013A;
	Fri, 12 Feb 2021 01:05:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 94D00C1825
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 01:05:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 89FC087583
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 01:05:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7RGAkRcsdR4t for <bridge@lists.linux-foundation.org>;
 Fri, 12 Feb 2021 01:05:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
 [209.85.218.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 477C787561
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 01:05:52 +0000 (UTC)
Received: by mail-ej1-f43.google.com with SMTP id l25so13009837eja.9
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 17:05:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cSIWjlM+uUUZccQnLbiLxfGaU8rBoH7Rff7Py/C030s=;
 b=aNeR/bS5OaakoCZWi1Ocr+xcLSweDhPj5jiTnkSsDx5XhunaO/OV2ZqxvKKclZK9Jb
 lMqK/l2oT8gKGB+Fcd2xg8uT9DHcW1LSKcqftGWKYISvDovIN/J0Oe+RmIncT3UArbom
 CHu74j1v9+6A7XnBlNWoa1nt4KFZ8Z96aHvAHEwCzHhOEM0MFgRlZqlFaRgAQkUjc68G
 OntgTKYGMa+i5PHL9TMfnym/1JjTlM558hieEbWJqrD66xLeaX4dTiv9B3/N0Req8hIr
 PEdjLIbfOfGEssPYXXquas6qBWK/kNMPUPMPDuE+DmXlMfYqMyupDseoyR6/jfAAWmXW
 /gVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cSIWjlM+uUUZccQnLbiLxfGaU8rBoH7Rff7Py/C030s=;
 b=Sn8Qi7fk1vxgyPKnkRU7T8TRlptJ0JfFfafyeXSdznOpTqf3VxRuVgDFglYHy4QEQc
 6RhHIy3F1D9ED+o6E/uXFn3rRxx/Eek2nuaDJuwFxRz6y9Sn+3vlNE4DXLxiPUniz7Bc
 I4hangwU+OyTwLDfaKOZlJ8dn6nW9weB6KkDyxB5et7uBqWYXx+HgobHX8BGjnwj5cS9
 p9zEHYe7mb4meE9Qq1X64h63KnCzIYrWjspk9Ru/psb2qrAHNddGLWoi6oKvZpuz2DzL
 YzY3byDfuycHorTJgWaNvaXXlYJAeRF/+HHZtXkCZ0gbGvDpeB7WwygJv7y4OYUBDdKa
 aAHA==
X-Gm-Message-State: AOAM530zhwKVVYBH38YpWVER38tkkPeaHCQbDwmqHKNuv1Z6stV5zULO
 Vb+XJyVjCZ0RiP5nt1trScY=
X-Google-Smtp-Source: ABdhPJzHNs4anrNt7RqqnKob2xF4wYsXP4YBL2CAvljshjsnhCOrdMK8VNFFhwGTBbEpqwei3WJTLQ==
X-Received: by 2002:a17:906:c08a:: with SMTP id
 f10mr502507ejz.52.1613091950779; 
 Thu, 11 Feb 2021 17:05:50 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id z13sm5019580edc.73.2021.02.11.17.05.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Feb 2021 17:05:50 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Date: Fri, 12 Feb 2021 03:05:27 +0200
Message-Id: <20210212010531.2722925-6-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210212010531.2722925-1-olteanv@gmail.com>
References: <20210212010531.2722925-1-olteanv@gmail.com>
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
Subject: [Bridge] [PATCH v4 net-next 5/9] net: switchdev: pass flags and
	mask to both {PRE_, }BRIDGE_FLAGS attributes
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

This switchdev attribute offers a counterproductive API for a driver
writer, because although br_switchdev_set_port_flag gets passed a
"flags" and a "mask", those are passed piecemeal to the driver, so while
the PRE_BRIDGE_FLAGS listener knows what changed because it has the
"mask", the BRIDGE_FLAGS listener doesn't, because it only has the final
value. But certain drivers can offload only certain combinations of
settings, like for example they cannot change unicast flooding
independently of multicast flooding - they must be both on or both off.
The way the information is passed to switchdev makes drivers not
expressive enough, and unable to reject this request ahead of time, in
the PRE_BRIDGE_FLAGS notifier, so they are forced to reject it during
the deferred BRIDGE_FLAGS attribute, where the rejection is currently
ignored.

This patch also changes drivers to make use of the "mask" field for edge
detection when possible.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 .../marvell/prestera/prestera_switchdev.c     | 23 +++++----
 .../mellanox/mlxsw/spectrum_switchdev.c       | 50 +++++++++++--------
 drivers/net/ethernet/rocker/rocker_main.c     | 10 ++--
 drivers/net/ethernet/ti/cpsw_switchdev.c      | 24 +++++----
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c       | 34 ++++++++-----
 include/net/switchdev.h                       |  7 ++-
 net/bridge/br_switchdev.c                     |  6 +--
 net/dsa/dsa_priv.h                            |  6 ++-
 net/dsa/port.c                                | 34 +++++++------
 9 files changed, 115 insertions(+), 79 deletions(-)

diff --git a/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c b/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c
index 2c1619715a4b..49e052273f30 100644
--- a/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c
+++ b/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c
@@ -581,7 +581,7 @@ int prestera_bridge_port_event(struct net_device *dev, unsigned long event,
 
 static int prestera_port_attr_br_flags_set(struct prestera_port *port,
 					   struct net_device *dev,
-					   unsigned long flags)
+					   struct switchdev_brport_flags flags)
 {
 	struct prestera_bridge_port *br_port;
 	int err;
@@ -590,15 +590,20 @@ static int prestera_port_attr_br_flags_set(struct prestera_port *port,
 	if (!br_port)
 		return 0;
 
-	err = prestera_hw_port_flood_set(port, flags & BR_FLOOD);
-	if (err)
-		return err;
+	if (flags.mask & BR_FLOOD) {
+		err = prestera_hw_port_flood_set(port, flags.val & BR_FLOOD);
+		if (err)
+			return err;
+	}
 
-	err = prestera_hw_port_learning_set(port, flags & BR_LEARNING);
-	if (err)
-		return err;
+	if (flags.mask & BR_LEARNING) {
+		err = prestera_hw_port_learning_set(port,
+						    flags.val & BR_LEARNING);
+		if (err)
+			return err;
+	}
 
-	memcpy(&br_port->flags, &flags, sizeof(flags));
+	memcpy(&br_port->flags, &flags.val, sizeof(flags.val));
 
 	return 0;
 }
@@ -707,7 +712,7 @@ static int prestera_port_obj_attr_set(struct net_device *dev,
 						       attr->u.stp_state);
 		break;
 	case SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS:
-		if (attr->u.brport_flags &
+		if (attr->u.brport_flags.mask &
 		    ~(BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD))
 			err = -EINVAL;
 		break;
diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c b/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
index 18e4f1cd5587..23b7e8d6386b 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
@@ -653,11 +653,11 @@ mlxsw_sp_bridge_port_learning_set(struct mlxsw_sp_port *mlxsw_sp_port,
 	return err;
 }
 
-static int mlxsw_sp_port_attr_br_pre_flags_set(struct mlxsw_sp_port
-					       *mlxsw_sp_port,
-					       unsigned long brport_flags)
+static int
+mlxsw_sp_port_attr_br_pre_flags_set(struct mlxsw_sp_port *mlxsw_sp_port,
+				    struct switchdev_brport_flags flags)
 {
-	if (brport_flags & ~(BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD))
+	if (flags.mask & ~(BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD))
 		return -EINVAL;
 
 	return 0;
@@ -665,7 +665,7 @@ static int mlxsw_sp_port_attr_br_pre_flags_set(struct mlxsw_sp_port
 
 static int mlxsw_sp_port_attr_br_flags_set(struct mlxsw_sp_port *mlxsw_sp_port,
 					   struct net_device *orig_dev,
-					   unsigned long brport_flags)
+					   struct switchdev_brport_flags flags)
 {
 	struct mlxsw_sp_bridge_port *bridge_port;
 	int err;
@@ -675,29 +675,37 @@ static int mlxsw_sp_port_attr_br_flags_set(struct mlxsw_sp_port *mlxsw_sp_port,
 	if (!bridge_port)
 		return 0;
 
-	err = mlxsw_sp_bridge_port_flood_table_set(mlxsw_sp_port, bridge_port,
-						   MLXSW_SP_FLOOD_TYPE_UC,
-						   brport_flags & BR_FLOOD);
-	if (err)
-		return err;
+	if (flags.mask & BR_FLOOD) {
+		err = mlxsw_sp_bridge_port_flood_table_set(mlxsw_sp_port,
+							   bridge_port,
+							   MLXSW_SP_FLOOD_TYPE_UC,
+							   flags.val & BR_FLOOD);
+		if (err)
+			return err;
+	}
 
-	err = mlxsw_sp_bridge_port_learning_set(mlxsw_sp_port, bridge_port,
-						brport_flags & BR_LEARNING);
-	if (err)
-		return err;
+	if (flags.mask & BR_LEARNING) {
+		err = mlxsw_sp_bridge_port_learning_set(mlxsw_sp_port,
+							bridge_port,
+							flags.val & BR_LEARNING);
+		if (err)
+			return err;
+	}
 
 	if (bridge_port->bridge_device->multicast_enabled)
 		goto out;
 
-	err = mlxsw_sp_bridge_port_flood_table_set(mlxsw_sp_port, bridge_port,
-						   MLXSW_SP_FLOOD_TYPE_MC,
-						   brport_flags &
-						   BR_MCAST_FLOOD);
-	if (err)
-		return err;
+	if (flags.mask & BR_MCAST_FLOOD) {
+		err = mlxsw_sp_bridge_port_flood_table_set(mlxsw_sp_port,
+							   bridge_port,
+							   MLXSW_SP_FLOOD_TYPE_MC,
+							   flags.val & BR_MCAST_FLOOD);
+		if (err)
+			return err;
+	}
 
 out:
-	memcpy(&bridge_port->flags, &brport_flags, sizeof(brport_flags));
+	memcpy(&bridge_port->flags, &flags.val, sizeof(flags.val));
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/rocker/rocker_main.c b/drivers/net/ethernet/rocker/rocker_main.c
index 740a715c49c6..3473d296b2e2 100644
--- a/drivers/net/ethernet/rocker/rocker_main.c
+++ b/drivers/net/ethernet/rocker/rocker_main.c
@@ -1576,7 +1576,7 @@ rocker_world_port_attr_bridge_flags_support_get(const struct rocker_port *
 
 static int
 rocker_world_port_attr_pre_bridge_flags_set(struct rocker_port *rocker_port,
-					    unsigned long brport_flags)
+					    struct switchdev_brport_flags flags)
 {
 	struct rocker_world_ops *wops = rocker_port->rocker->wops;
 	unsigned long brport_flags_s;
@@ -1590,7 +1590,7 @@ rocker_world_port_attr_pre_bridge_flags_set(struct rocker_port *rocker_port,
 	if (err)
 		return err;
 
-	if (brport_flags & ~brport_flags_s)
+	if (flags.mask & ~brport_flags_s)
 		return -EINVAL;
 
 	return 0;
@@ -1598,14 +1598,14 @@ rocker_world_port_attr_pre_bridge_flags_set(struct rocker_port *rocker_port,
 
 static int
 rocker_world_port_attr_bridge_flags_set(struct rocker_port *rocker_port,
-					unsigned long brport_flags)
+					struct switchdev_brport_flags flags)
 {
 	struct rocker_world_ops *wops = rocker_port->rocker->wops;
 
 	if (!wops->port_attr_bridge_flags_set)
 		return -EOPNOTSUPP;
 
-	return wops->port_attr_bridge_flags_set(rocker_port, brport_flags);
+	return wops->port_attr_bridge_flags_set(rocker_port, flags.val);
 }
 
 static int
@@ -2058,7 +2058,7 @@ static int rocker_port_attr_set(struct net_device *dev,
 		break;
 	case SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS:
 		err = rocker_world_port_attr_pre_bridge_flags_set(rocker_port,
-							      attr->u.brport_flags);
+								  attr->u.brport_flags);
 		break;
 	case SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS:
 		err = rocker_world_port_attr_bridge_flags_set(rocker_port,
diff --git a/drivers/net/ethernet/ti/cpsw_switchdev.c b/drivers/net/ethernet/ti/cpsw_switchdev.c
index 13524cbaa8b6..a72bb570756f 100644
--- a/drivers/net/ethernet/ti/cpsw_switchdev.c
+++ b/drivers/net/ethernet/ti/cpsw_switchdev.c
@@ -57,26 +57,30 @@ static int cpsw_port_stp_state_set(struct cpsw_priv *priv, u8 state)
 
 static int cpsw_port_attr_br_flags_set(struct cpsw_priv *priv,
 				       struct net_device *orig_dev,
-				       unsigned long brport_flags)
+				       struct switchdev_brport_flags flags)
 {
 	struct cpsw_common *cpsw = priv->cpsw;
-	bool unreg_mcast_add = false;
 
-	if (brport_flags & BR_MCAST_FLOOD)
-		unreg_mcast_add = true;
-	dev_dbg(priv->dev, "BR_MCAST_FLOOD: %d port %u\n",
-		unreg_mcast_add, priv->emac_port);
+	if (flags.mask & BR_MCAST_FLOOD) {
+		bool unreg_mcast_add = false;
 
-	cpsw_ale_set_unreg_mcast(cpsw->ale, BIT(priv->emac_port),
-				 unreg_mcast_add);
+		if (flags.val & BR_MCAST_FLOOD)
+			unreg_mcast_add = true;
+
+		dev_dbg(priv->dev, "BR_MCAST_FLOOD: %d port %u\n",
+			unreg_mcast_add, priv->emac_port);
+
+		cpsw_ale_set_unreg_mcast(cpsw->ale, BIT(priv->emac_port),
+					 unreg_mcast_add);
+	}
 
 	return 0;
 }
 
 static int cpsw_port_attr_br_flags_pre_set(struct net_device *netdev,
-					   unsigned long flags)
+					   struct switchdev_brport_flags flags)
 {
-	if (flags & ~(BR_LEARNING | BR_MCAST_FLOOD))
+	if (flags.mask & ~(BR_LEARNING | BR_MCAST_FLOOD))
 		return -EINVAL;
 
 	return 0;
diff --git a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
index ca3d07fe7f58..703055e063ff 100644
--- a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
+++ b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
@@ -908,31 +908,39 @@ static int dpaa2_switch_port_attr_stp_state_set(struct net_device *netdev,
 	return dpaa2_switch_port_set_stp_state(port_priv, state);
 }
 
-static int dpaa2_switch_port_attr_br_flags_pre_set(struct net_device *netdev,
-						   unsigned long flags)
+static int
+dpaa2_switch_port_attr_br_flags_pre_set(struct net_device *netdev,
+					struct switchdev_brport_flags flags)
 {
-	if (flags & ~(BR_LEARNING | BR_FLOOD))
+	if (flags.mask & ~(BR_LEARNING | BR_FLOOD))
 		return -EINVAL;
 
 	return 0;
 }
 
-static int dpaa2_switch_port_attr_br_flags_set(struct net_device *netdev,
-					       unsigned long flags)
+static int
+dpaa2_switch_port_attr_br_flags_set(struct net_device *netdev,
+				    struct switchdev_brport_flags flags)
 {
 	struct ethsw_port_priv *port_priv = netdev_priv(netdev);
 	int err = 0;
 
-	/* Learning is enabled per switch */
-	err = dpaa2_switch_set_learning(port_priv->ethsw_data,
-					!!(flags & BR_LEARNING));
-	if (err)
-		goto exit;
+	if (flags.mask & BR_LEARNING) {
+		/* Learning is enabled per switch */
+		err = dpaa2_switch_set_learning(port_priv->ethsw_data,
+						!!(flags.val & BR_LEARNING));
+		if (err)
+			return err;
+	}
 
-	err = dpaa2_switch_port_set_flood(port_priv, !!(flags & BR_FLOOD));
+	if (flags.mask & BR_FLOOD) {
+		err = dpaa2_switch_port_set_flood(port_priv,
+						  !!(flags.val & BR_FLOOD));
+		if (err)
+			return err;
+	}
 
-exit:
-	return err;
+	return 0;
 }
 
 static int dpaa2_switch_port_attr_set(struct net_device *netdev,
diff --git a/include/net/switchdev.h b/include/net/switchdev.h
index 9279d4245bab..25d9e4570934 100644
--- a/include/net/switchdev.h
+++ b/include/net/switchdev.h
@@ -32,6 +32,11 @@ enum switchdev_attr_id {
 #endif
 };
 
+struct switchdev_brport_flags {
+	unsigned long val;
+	unsigned long mask;
+};
+
 struct switchdev_attr {
 	struct net_device *orig_dev;
 	enum switchdev_attr_id id;
@@ -40,7 +45,7 @@ struct switchdev_attr {
 	void (*complete)(struct net_device *dev, int err, void *priv);
 	union {
 		u8 stp_state;				/* PORT_STP_STATE */
-		unsigned long brport_flags;		/* PORT_{PRE}_BRIDGE_FLAGS */
+		struct switchdev_brport_flags brport_flags; /* PORT_BRIDGE_FLAGS */
 		bool mrouter;				/* PORT_MROUTER */
 		clock_t ageing_time;			/* BRIDGE_AGEING_TIME */
 		bool vlan_filtering;			/* BRIDGE_VLAN_FILTERING */
diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
index bb21dd35ae85..184cf4c8b06d 100644
--- a/net/bridge/br_switchdev.c
+++ b/net/bridge/br_switchdev.c
@@ -65,7 +65,6 @@ int br_switchdev_set_port_flag(struct net_bridge_port *p,
 {
 	struct switchdev_attr attr = {
 		.orig_dev = p->dev,
-		.id = SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS,
 	};
 	struct switchdev_notifier_port_attr_info info = {
 		.attr = &attr,
@@ -76,7 +75,9 @@ int br_switchdev_set_port_flag(struct net_bridge_port *p,
 	if (!mask)
 		return 0;
 
-	attr.u.brport_flags = mask;
+	attr.id = SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS;
+	attr.u.brport_flags.val = flags;
+	attr.u.brport_flags.mask = mask;
 
 	/* We run from atomic context here */
 	err = call_switchdev_notifiers(SWITCHDEV_PORT_ATTR_SET, p->dev,
@@ -94,7 +95,6 @@ int br_switchdev_set_port_flag(struct net_bridge_port *p,
 
 	attr.id = SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS;
 	attr.flags = SWITCHDEV_F_DEFER;
-	attr.u.brport_flags = flags;
 
 	err = switchdev_port_attr_set(p->dev, &attr);
 	if (err) {
diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
index 8a1bcb2b4208..0e38f57dd648 100644
--- a/net/dsa/dsa_priv.h
+++ b/net/dsa/dsa_priv.h
@@ -174,8 +174,10 @@ int dsa_port_mdb_add(const struct dsa_port *dp,
 		     const struct switchdev_obj_port_mdb *mdb);
 int dsa_port_mdb_del(const struct dsa_port *dp,
 		     const struct switchdev_obj_port_mdb *mdb);
-int dsa_port_pre_bridge_flags(const struct dsa_port *dp, unsigned long flags);
-int dsa_port_bridge_flags(const struct dsa_port *dp, unsigned long flags);
+int dsa_port_pre_bridge_flags(const struct dsa_port *dp,
+			      struct switchdev_brport_flags flags);
+int dsa_port_bridge_flags(const struct dsa_port *dp,
+			  struct switchdev_brport_flags flags);
 int dsa_port_mrouter(struct dsa_port *dp, bool mrouter);
 int dsa_port_vlan_add(struct dsa_port *dp,
 		      const struct switchdev_obj_port_vlan *vlan);
diff --git a/net/dsa/port.c b/net/dsa/port.c
index 9f65ba11ad00..5a4f4e1cf75e 100644
--- a/net/dsa/port.c
+++ b/net/dsa/port.c
@@ -125,21 +125,22 @@ void dsa_port_disable(struct dsa_port *dp)
 static void dsa_port_change_brport_flags(struct dsa_port *dp,
 					 bool bridge_offload)
 {
-	unsigned long mask, flags;
-	int flag, err;
+	struct switchdev_brport_flags flags;
+	int flag;
 
-	mask = BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD | BR_BCAST_FLOOD;
+	flags.mask = BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD | BR_BCAST_FLOOD;
 	if (bridge_offload)
-		flags = mask;
+		flags.val = flags.mask;
 	else
-		flags = mask & ~BR_LEARNING;
+		flags.val = flags.mask & ~BR_LEARNING;
 
-	for_each_set_bit(flag, &mask, 32) {
-		err = dsa_port_pre_bridge_flags(dp, BIT(flag));
-		if (err)
-			continue;
+	for_each_set_bit(flag, &flags.mask, 32) {
+		struct switchdev_brport_flags tmp;
+
+		tmp.val = flags.val & BIT(flag);
+		tmp.mask = BIT(flag);
 
-		dsa_port_bridge_flags(dp, flags & BIT(flag));
+		dsa_port_bridge_flags(dp, tmp);
 	}
 }
 
@@ -423,26 +424,29 @@ int dsa_port_ageing_time(struct dsa_port *dp, clock_t ageing_clock)
 	return 0;
 }
 
-int dsa_port_pre_bridge_flags(const struct dsa_port *dp, unsigned long flags)
+int dsa_port_pre_bridge_flags(const struct dsa_port *dp,
+			      struct switchdev_brport_flags flags)
 {
 	struct dsa_switch *ds = dp->ds;
 
 	if (!ds->ops->port_egress_floods ||
-	    (flags & ~(BR_FLOOD | BR_MCAST_FLOOD)))
+	    (flags.mask & ~(BR_FLOOD | BR_MCAST_FLOOD)))
 		return -EINVAL;
 
 	return 0;
 }
 
-int dsa_port_bridge_flags(const struct dsa_port *dp, unsigned long flags)
+int dsa_port_bridge_flags(const struct dsa_port *dp,
+			  struct switchdev_brport_flags flags)
 {
 	struct dsa_switch *ds = dp->ds;
 	int port = dp->index;
 	int err = 0;
 
 	if (ds->ops->port_egress_floods)
-		err = ds->ops->port_egress_floods(ds, port, flags & BR_FLOOD,
-						  flags & BR_MCAST_FLOOD);
+		err = ds->ops->port_egress_floods(ds, port,
+						  flags.val & BR_FLOOD,
+						  flags.val & BR_MCAST_FLOOD);
 
 	return err;
 }
-- 
2.25.1

