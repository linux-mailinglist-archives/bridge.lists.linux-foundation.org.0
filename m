Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D9931528A
	for <lists.bridge@lfdr.de>; Tue,  9 Feb 2021 16:20:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4C5D385F9D;
	Tue,  9 Feb 2021 15:20:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f8uHvecU14GG; Tue,  9 Feb 2021 15:20:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 18DF885FA2;
	Tue,  9 Feb 2021 15:20:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F3B5DC013A;
	Tue,  9 Feb 2021 15:20:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1DA9FC013A
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 15:20:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 18D448719E
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 15:20:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NS62uG-V4KrE for <bridge@lists.linux-foundation.org>;
 Tue,  9 Feb 2021 15:20:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
 [209.85.208.45])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 73B9E8716F
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 15:20:00 +0000 (UTC)
Received: by mail-ed1-f45.google.com with SMTP id z22so24154042edb.9
 for <bridge@lists.linux-foundation.org>; Tue, 09 Feb 2021 07:20:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BxwwjjuJAKa8oLNLk8GTQHL+CIMSe0t0LZ6GZhVbXbs=;
 b=PXUrKYH6Ch4P+WmP189zmfJ38GZmSVLsTgVtFDTUGDyFIWlsQmLeSQcAAgsDJ+Obkx
 T1M1oDBmvw8EP4C8f+rOfeEwJtHnBo6EisB1pA4wHeVS06ZTzxQEQqRG6yQzrAR3Nc2C
 9fCsckDlN9UHhQt0T22a8O+U0rcyeNH52qUdIBlGThdpMDZmoVtAWRCrhzJafHT2yUUB
 IZc8gzSzo0TmD3Y9B/HhI3DWxLK9OBZLA38ojarnPv3wXZK4nxM/cGOMAESXl5IIqUeo
 diUwIS4S7QtRIuwQPZ83Msi+7FYANgKBnd1F3uCjnqNFXUWHpU/P8GsoOcur/HgJfHKp
 8XXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BxwwjjuJAKa8oLNLk8GTQHL+CIMSe0t0LZ6GZhVbXbs=;
 b=Nrt6rK7rkEUSv9LXCVkzJERlOPBi/iNx5zVyzGkwqpfdzuAtngKwA3L4NG+GG3XQNy
 R6mpHOuC6t9NHqB19MnTUWRe9Tg5SNmKGxKMfHcExiL0+uHTM5u/ytXNufNuwq1pKtJO
 IGSnIU157HcWZCHbRr+IZDSHeJFXckG5HZXLSUu6ymxsMOK7eKjtL38Gm046V8TVpA2O
 YkvlSSez5XbGOhEVf5DTyr2mvi9Z4KGeswcibJwY0HaSn9aXbHWhAUCgU2omc3Lqb7BE
 NiKZ80ezNA4X6NfWqtJXGQohIpFtb8tdJHO50KygMnuHTa4XpuX7pZ1t1O6yoYwHn0KE
 gSHg==
X-Gm-Message-State: AOAM532RoI1ToNqklWVVZc37bcsk8hbasa3kW/JZ44uxRIunaSZ+oC3w
 gGOiaJ1Hv+N2ALa2r+oRiq8=
X-Google-Smtp-Source: ABdhPJyErKU0zEOTUZsiUvjfMpmB55KIQ7H+LRyI2js5bBunaGDaWn13kp9lQID/SPIAN10h7n0UIg==
X-Received: by 2002:a05:6402:617:: with SMTP id
 n23mr23800014edv.257.1612883998889; 
 Tue, 09 Feb 2021 07:19:58 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id q2sm11686108edv.93.2021.02.09.07.19.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 07:19:57 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Date: Tue,  9 Feb 2021 17:19:31 +0200
Message-Id: <20210209151936.97382-7-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210209151936.97382-1-olteanv@gmail.com>
References: <20210209151936.97382-1-olteanv@gmail.com>
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
Subject: [Bridge] [PATCH v2 net-next 06/11] net: squash switchdev attributes
	PRE_BRIDGE_FLAGS and BRIDGE_FLAGS
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

There does not appear to be any strong reason why
br_switchdev_set_port_flag issues a separate notification for checking
the supported brport flags rather than just attempting to apply them and
propagating the error if that fails.

However, there is a reason why this switchdev API is counterproductive
for a driver writer, and that is because although br_switchdev_set_port_flag
gets passed a "flags" and a "mask", those are passed piecemeal to the
driver, so while the PRE_BRIDGE_FLAGS listener knows what changed
because it has the "mask", the BRIDGE_FLAGS listener doesn't, because it
only has the final value. This means that "edge detection" needs to be
done by each individual BRIDGE_FLAGS listener by XOR-ing the old and the
new flags, which in turn means that copying the flags into a driver
private variable is strictly necessary.

This can be solved by passing the "flags" and the "mask" together into
a single switchdev attribute, and it also reduces some boilerplate in
the drivers that offload this.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
Changes in v2:
- Renamed "val" to "flags".
- Reworked drivers to check mask before performing any change.

 .../marvell/prestera/prestera_switchdev.c     | 29 +++++++------
 .../mellanox/mlxsw/spectrum_switchdev.c       | 28 ++++--------
 drivers/net/ethernet/rocker/rocker_main.c     | 24 ++---------
 drivers/net/ethernet/ti/cpsw_switchdev.c      | 32 ++++++--------
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c       | 43 +++++++++----------
 include/net/switchdev.h                       |  8 +++-
 net/bridge/br_switchdev.c                     | 15 ++-----
 net/dsa/dsa_priv.h                            |  4 +-
 net/dsa/port.c                                | 22 +++-------
 net/dsa/slave.c                               |  3 --
 10 files changed, 78 insertions(+), 130 deletions(-)

diff --git a/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c b/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c
index 2c1619715a4b..a797a7ff0cfe 100644
--- a/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c
+++ b/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c
@@ -581,24 +581,32 @@ int prestera_bridge_port_event(struct net_device *dev, unsigned long event,
 
 static int prestera_port_attr_br_flags_set(struct prestera_port *port,
 					   struct net_device *dev,
-					   unsigned long flags)
+					   struct switchdev_brport_flags flags)
 {
 	struct prestera_bridge_port *br_port;
 	int err;
 
+	if (flags.mask & ~(BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD))
+		err = -EINVAL;
+
 	br_port = prestera_bridge_port_by_dev(port->sw->swdev, dev);
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
@@ -706,11 +714,6 @@ static int prestera_port_obj_attr_set(struct net_device *dev,
 		err = prestera_port_attr_stp_state_set(port, attr->orig_dev,
 						       attr->u.stp_state);
 		break;
-	case SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS:
-		if (attr->u.brport_flags &
-		    ~(BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD))
-			err = -EINVAL;
-		break;
 	case SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS:
 		err = prestera_port_attr_br_flags_set(port, attr->orig_dev,
 						      attr->u.brport_flags);
diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c b/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
index 18e4f1cd5587..0a8521adb4e9 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
@@ -653,23 +653,16 @@ mlxsw_sp_bridge_port_learning_set(struct mlxsw_sp_port *mlxsw_sp_port,
 	return err;
 }
 
-static int mlxsw_sp_port_attr_br_pre_flags_set(struct mlxsw_sp_port
-					       *mlxsw_sp_port,
-					       unsigned long brport_flags)
-{
-	if (brport_flags & ~(BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD))
-		return -EINVAL;
-
-	return 0;
-}
-
 static int mlxsw_sp_port_attr_br_flags_set(struct mlxsw_sp_port *mlxsw_sp_port,
 					   struct net_device *orig_dev,
-					   unsigned long brport_flags)
+					   struct switchdev_brport_flags flags)
 {
 	struct mlxsw_sp_bridge_port *bridge_port;
 	int err;
 
+	if (flags.mask & ~(BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD))
+		return -EINVAL;
+
 	bridge_port = mlxsw_sp_bridge_port_find(mlxsw_sp_port->mlxsw_sp->bridge,
 						orig_dev);
 	if (!bridge_port)
@@ -677,12 +670,12 @@ static int mlxsw_sp_port_attr_br_flags_set(struct mlxsw_sp_port *mlxsw_sp_port,
 
 	err = mlxsw_sp_bridge_port_flood_table_set(mlxsw_sp_port, bridge_port,
 						   MLXSW_SP_FLOOD_TYPE_UC,
-						   brport_flags & BR_FLOOD);
+						   flags.val & BR_FLOOD);
 	if (err)
 		return err;
 
 	err = mlxsw_sp_bridge_port_learning_set(mlxsw_sp_port, bridge_port,
-						brport_flags & BR_LEARNING);
+						flags.val & BR_LEARNING);
 	if (err)
 		return err;
 
@@ -691,13 +684,12 @@ static int mlxsw_sp_port_attr_br_flags_set(struct mlxsw_sp_port *mlxsw_sp_port,
 
 	err = mlxsw_sp_bridge_port_flood_table_set(mlxsw_sp_port, bridge_port,
 						   MLXSW_SP_FLOOD_TYPE_MC,
-						   brport_flags &
-						   BR_MCAST_FLOOD);
+						   flags.val & BR_MCAST_FLOOD);
 	if (err)
 		return err;
 
 out:
-	memcpy(&bridge_port->flags, &brport_flags, sizeof(brport_flags));
+	memcpy(&bridge_port->flags, &flags.val, sizeof(flags.val));
 	return 0;
 }
 
@@ -899,10 +891,6 @@ static int mlxsw_sp_port_attr_set(struct net_device *dev,
 						       attr->orig_dev,
 						       attr->u.stp_state);
 		break;
-	case SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS:
-		err = mlxsw_sp_port_attr_br_pre_flags_set(mlxsw_sp_port,
-							  attr->u.brport_flags);
-		break;
 	case SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS:
 		err = mlxsw_sp_port_attr_br_flags_set(mlxsw_sp_port,
 						      attr->orig_dev,
diff --git a/drivers/net/ethernet/rocker/rocker_main.c b/drivers/net/ethernet/rocker/rocker_main.c
index 740a715c49c6..898abf3d14d0 100644
--- a/drivers/net/ethernet/rocker/rocker_main.c
+++ b/drivers/net/ethernet/rocker/rocker_main.c
@@ -1575,8 +1575,8 @@ rocker_world_port_attr_bridge_flags_support_get(const struct rocker_port *
 }
 
 static int
-rocker_world_port_attr_pre_bridge_flags_set(struct rocker_port *rocker_port,
-					    unsigned long brport_flags)
+rocker_world_port_attr_bridge_flags_set(struct rocker_port *rocker_port,
+					struct switchdev_brport_flags flags)
 {
 	struct rocker_world_ops *wops = rocker_port->rocker->wops;
 	unsigned long brport_flags_s;
@@ -1590,22 +1590,10 @@ rocker_world_port_attr_pre_bridge_flags_set(struct rocker_port *rocker_port,
 	if (err)
 		return err;
 
-	if (brport_flags & ~brport_flags_s)
+	if (flags.mask & ~brport_flags_s)
 		return -EINVAL;
 
-	return 0;
-}
-
-static int
-rocker_world_port_attr_bridge_flags_set(struct rocker_port *rocker_port,
-					unsigned long brport_flags)
-{
-	struct rocker_world_ops *wops = rocker_port->rocker->wops;
-
-	if (!wops->port_attr_bridge_flags_set)
-		return -EOPNOTSUPP;
-
-	return wops->port_attr_bridge_flags_set(rocker_port, brport_flags);
+	return wops->port_attr_bridge_flags_set(rocker_port, flags.val);
 }
 
 static int
@@ -2056,10 +2044,6 @@ static int rocker_port_attr_set(struct net_device *dev,
 		err = rocker_world_port_attr_stp_state_set(rocker_port,
 							   attr->u.stp_state);
 		break;
-	case SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS:
-		err = rocker_world_port_attr_pre_bridge_flags_set(rocker_port,
-							      attr->u.brport_flags);
-		break;
 	case SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS:
 		err = rocker_world_port_attr_bridge_flags_set(rocker_port,
 							      attr->u.brport_flags);
diff --git a/drivers/net/ethernet/ti/cpsw_switchdev.c b/drivers/net/ethernet/ti/cpsw_switchdev.c
index 13524cbaa8b6..5d8ec34f82ad 100644
--- a/drivers/net/ethernet/ti/cpsw_switchdev.c
+++ b/drivers/net/ethernet/ti/cpsw_switchdev.c
@@ -57,27 +57,25 @@ static int cpsw_port_stp_state_set(struct cpsw_priv *priv, u8 state)
 
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
+	if (flags.mask & ~(BR_LEARNING | BR_MCAST_FLOOD))
+		return -EINVAL;
 
-	cpsw_ale_set_unreg_mcast(cpsw->ale, BIT(priv->emac_port),
-				 unreg_mcast_add);
+	if (flags.mask & BR_MCAST_FLOOD) {
+		bool unreg_mcast_add = false;
 
-	return 0;
-}
+		if (flags.val & BR_MCAST_FLOOD)
+			unreg_mcast_add = true;
 
-static int cpsw_port_attr_br_flags_pre_set(struct net_device *netdev,
-					   unsigned long flags)
-{
-	if (flags & ~(BR_LEARNING | BR_MCAST_FLOOD))
-		return -EINVAL;
+		dev_dbg(priv->dev, "BR_MCAST_FLOOD: %d port %u\n",
+			unreg_mcast_add, priv->emac_port);
+
+		cpsw_ale_set_unreg_mcast(cpsw->ale, BIT(priv->emac_port),
+					 unreg_mcast_add);
+	}
 
 	return 0;
 }
@@ -92,10 +90,6 @@ static int cpsw_port_attr_set(struct net_device *ndev,
 	dev_dbg(priv->dev, "attr: id %u port: %u\n", attr->id, priv->emac_port);
 
 	switch (attr->id) {
-	case SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS:
-		ret = cpsw_port_attr_br_flags_pre_set(ndev,
-						      attr->u.brport_flags);
-		break;
 	case SWITCHDEV_ATTR_ID_PORT_STP_STATE:
 		ret = cpsw_port_stp_state_set(priv, attr->u.stp_state);
 		dev_dbg(priv->dev, "stp state: %u\n", attr->u.stp_state);
diff --git a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
index ca3d07fe7f58..f675a2ba4dce 100644
--- a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
+++ b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
@@ -908,31 +908,32 @@ static int dpaa2_switch_port_attr_stp_state_set(struct net_device *netdev,
 	return dpaa2_switch_port_set_stp_state(port_priv, state);
 }
 
-static int dpaa2_switch_port_attr_br_flags_pre_set(struct net_device *netdev,
-						   unsigned long flags)
-{
-	if (flags & ~(BR_LEARNING | BR_FLOOD))
-		return -EINVAL;
-
-	return 0;
-}
-
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
+	if (flags.mask & ~(BR_LEARNING | BR_FLOOD))
+		return -EINVAL;
+
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
@@ -945,10 +946,6 @@ static int dpaa2_switch_port_attr_set(struct net_device *netdev,
 		err = dpaa2_switch_port_attr_stp_state_set(netdev,
 							   attr->u.stp_state);
 		break;
-	case SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS:
-		err = dpaa2_switch_port_attr_br_flags_pre_set(netdev,
-							      attr->u.brport_flags);
-		break;
 	case SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS:
 		err = dpaa2_switch_port_attr_br_flags_set(netdev,
 							  attr->u.brport_flags);
diff --git a/include/net/switchdev.h b/include/net/switchdev.h
index 84c765312001..aa9cad9bad7d 100644
--- a/include/net/switchdev.h
+++ b/include/net/switchdev.h
@@ -20,7 +20,6 @@ enum switchdev_attr_id {
 	SWITCHDEV_ATTR_ID_UNDEFINED,
 	SWITCHDEV_ATTR_ID_PORT_STP_STATE,
 	SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS,
-	SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS,
 	SWITCHDEV_ATTR_ID_PORT_MROUTER,
 	SWITCHDEV_ATTR_ID_BRIDGE_AGEING_TIME,
 	SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING,
@@ -33,6 +32,11 @@ enum switchdev_attr_id {
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
@@ -41,7 +45,7 @@ struct switchdev_attr {
 	void (*complete)(struct net_device *dev, int err, void *priv);
 	union {
 		u8 stp_state;				/* PORT_STP_STATE */
-		unsigned long brport_flags;		/* PORT_{PRE}_BRIDGE_FLAGS */
+		struct switchdev_brport_flags brport_flags; /* PORT_BRIDGE_FLAGS */
 		bool mrouter;				/* PORT_MROUTER */
 		clock_t ageing_time;			/* BRIDGE_AGEING_TIME */
 		bool vlan_filtering;			/* BRIDGE_VLAN_FILTERING */
diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
index 1fae532cfbb1..bc63b10b2e67 100644
--- a/net/bridge/br_switchdev.c
+++ b/net/bridge/br_switchdev.c
@@ -64,7 +64,7 @@ int br_switchdev_set_port_flag(struct net_bridge_port *p,
 {
 	struct switchdev_attr attr = {
 		.orig_dev = p->dev,
-		.id = SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS,
+		.id = SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS,
 	};
 	struct switchdev_notifier_port_attr_info info = {
 		.attr = &attr,
@@ -76,7 +76,8 @@ int br_switchdev_set_port_flag(struct net_bridge_port *p,
 	if (!mask)
 		return 0;
 
-	attr.u.brport_flags = mask;
+	attr.u.brport_flags.val = flags;
+	attr.u.brport_flags.mask = mask;
 
 	/* We run from atomic context here */
 	err = call_switchdev_notifiers(SWITCHDEV_PORT_ATTR_SET, p->dev,
@@ -92,16 +93,6 @@ int br_switchdev_set_port_flag(struct net_bridge_port *p,
 		return -EOPNOTSUPP;
 	}
 
-	attr.id = SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS;
-	attr.flags = SWITCHDEV_F_DEFER;
-	attr.u.brport_flags = flags;
-
-	err = switchdev_port_attr_set(p->dev, &attr);
-	if (err) {
-		NL_SET_ERR_MSG_MOD(extack, "error setting offload flag on port");
-		return err;
-	}
-
 	return 0;
 }
 
diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
index 8a1bcb2b4208..63770e421e4d 100644
--- a/net/dsa/dsa_priv.h
+++ b/net/dsa/dsa_priv.h
@@ -174,8 +174,8 @@ int dsa_port_mdb_add(const struct dsa_port *dp,
 		     const struct switchdev_obj_port_mdb *mdb);
 int dsa_port_mdb_del(const struct dsa_port *dp,
 		     const struct switchdev_obj_port_mdb *mdb);
-int dsa_port_pre_bridge_flags(const struct dsa_port *dp, unsigned long flags);
-int dsa_port_bridge_flags(const struct dsa_port *dp, unsigned long flags);
+int dsa_port_bridge_flags(const struct dsa_port *dp,
+			  struct switchdev_brport_flags flags);
 int dsa_port_mrouter(struct dsa_port *dp, bool mrouter);
 int dsa_port_vlan_add(struct dsa_port *dp,
 		      const struct switchdev_obj_port_vlan *vlan);
diff --git a/net/dsa/port.c b/net/dsa/port.c
index aa1cbba7f89f..597d3d3eb507 100644
--- a/net/dsa/port.c
+++ b/net/dsa/port.c
@@ -382,28 +382,18 @@ int dsa_port_ageing_time(struct dsa_port *dp, clock_t ageing_clock)
 	return 0;
 }
 
-int dsa_port_pre_bridge_flags(const struct dsa_port *dp, unsigned long flags)
+int dsa_port_bridge_flags(const struct dsa_port *dp,
+			  struct switchdev_brport_flags flags)
 {
 	struct dsa_switch *ds = dp->ds;
+	int port = dp->index;
 
 	if (!ds->ops->port_egress_floods ||
-	    (flags & ~(BR_FLOOD | BR_MCAST_FLOOD)))
+	    (flags.mask & ~(BR_FLOOD | BR_MCAST_FLOOD)))
 		return -EINVAL;
 
-	return 0;
-}
-
-int dsa_port_bridge_flags(const struct dsa_port *dp, unsigned long flags)
-{
-	struct dsa_switch *ds = dp->ds;
-	int port = dp->index;
-	int err = 0;
-
-	if (ds->ops->port_egress_floods)
-		err = ds->ops->port_egress_floods(ds, port, flags & BR_FLOOD,
-						  flags & BR_MCAST_FLOOD);
-
-	return err;
+	return ds->ops->port_egress_floods(ds, port, flags.val & BR_FLOOD,
+					   flags.val & BR_MCAST_FLOOD);
 }
 
 int dsa_port_mrouter(struct dsa_port *dp, bool mrouter)
diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index 8f4c7c232e2c..0e1f8f1d4e2c 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -290,9 +290,6 @@ static int dsa_slave_port_attr_set(struct net_device *dev,
 	case SWITCHDEV_ATTR_ID_BRIDGE_AGEING_TIME:
 		ret = dsa_port_ageing_time(dp, attr->u.ageing_time);
 		break;
-	case SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS:
-		ret = dsa_port_pre_bridge_flags(dp, attr->u.brport_flags);
-		break;
 	case SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS:
 		ret = dsa_port_bridge_flags(dp, attr->u.brport_flags);
 		break;
-- 
2.25.1

