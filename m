Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 646363161EF
	for <lists.bridge@lfdr.de>; Wed, 10 Feb 2021 10:19:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4F9A684519;
	Wed, 10 Feb 2021 09:19:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A3a9mpH5DSQF; Wed, 10 Feb 2021 09:19:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0776884553;
	Wed, 10 Feb 2021 09:19:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DC106C013A;
	Wed, 10 Feb 2021 09:19:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 326F2C013A
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 09:19:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 21391866F7
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 09:19:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uuiO1TIhsUh5 for <bridge@lists.linux-foundation.org>;
 Wed, 10 Feb 2021 09:19:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com
 [209.85.218.46])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 896B085C7D
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 09:19:15 +0000 (UTC)
Received: by mail-ej1-f46.google.com with SMTP id w2so2741333ejk.13
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 01:19:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ofMEhxMiCqoUxSdxQGlg/4fbYnTq6VRKlipmzktyglE=;
 b=DNc4ZMfUPTMxhOlufkOpA7zgX+G+m3fUf5tNwkzpXRNJF7X5zUPiEfJ9l0hMgwzqvD
 PFADy3Slpv34ezNKoJLyc4wd13Di3YF7kCeZ1pKZDE1FBQYYqYwkTCFm9UnzPkFTNwBW
 jaFsSF5wFCd1BwsJmdg0HQbaPWoJSqFqT4e699xTjK3+p5yz2akkow0p594WxDPfOnmK
 c0ajFqfGMPEBd7Vl71mu6s4/dcvEgjUz26rGhjtdegcFKxSHM6QQr0xA3Sx+/D00IzhY
 kVtUHCk1NLbl0O4y59JLCC3sL7pRC7WQdKB+goA+i/OjQwfE0ERMCRUQCb3geKJ3bShb
 UUlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ofMEhxMiCqoUxSdxQGlg/4fbYnTq6VRKlipmzktyglE=;
 b=e/FBAU7f8XK59SOpfSguAgz2C2VG8JiV/TzaVgDwHeaICRBNOVBb5DG0BOoxbdBjKh
 dyJpRvSzpJUY8A3lUELvXWc39nT8yACHVFgmIMKT+fivd2S8nhs3MBGK/i05FEit3oFD
 T7ENQ9VH64pXMlX8QkwEXFHRO9O7uW+B8pUTQZW67JmHQ5r6NAJ8C8NiDqx/ZTGzV35h
 QX99sAZN3O3EBoUTu6w0+4uLmITqveIojcV9Eag/9Vt4Fh/6JFziz5z03i6il8vrg5i+
 R7E6R4jKfvqKexGcXU4gecJ32XMy0pVbSSbdYjTUX3JolvrEUJJmqwyy+ZKRIRCHkTx/
 PvLg==
X-Gm-Message-State: AOAM533hvPrXc/soVj2mdJsa7FeSXNH3yRutrk9UrnZ5OwJM4Sc/bRtW
 waazSrPqdMBn2PnGl7/kGH8=
X-Google-Smtp-Source: ABdhPJwIbcfyGXTW6Rrkd4z46Iqso4r4/kBMI989QbAv80kvpDifPCN3Y8U6mup+NyI/Ycv68/Ly8w==
X-Received: by 2002:a17:906:cc56:: with SMTP id
 mm22mr2008438ejb.181.1612948754098; 
 Wed, 10 Feb 2021 01:19:14 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id u2sm701801ejb.65.2021.02.10.01.19.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 01:19:13 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Date: Wed, 10 Feb 2021 11:14:35 +0200
Message-Id: <20210210091445.741269-2-olteanv@gmail.com>
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
Subject: [Bridge] [PATCH v3 net-next 01/11] net: switchdev: propagate extack
	to port attributes
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

When a struct switchdev_attr is notified through switchdev, there is no
way to report informational messages, unlike for struct switchdev_obj.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Reviewed-by: Ido Schimmel <idosch@nvidia.com>
---
Changes in v3:
None.

Changes in v2:
Patch is new.

 .../ethernet/marvell/prestera/prestera_switchdev.c    |  3 ++-
 .../net/ethernet/mellanox/mlxsw/spectrum_switchdev.c  |  3 ++-
 drivers/net/ethernet/mscc/ocelot_net.c                |  3 ++-
 drivers/net/ethernet/ti/cpsw_switchdev.c              |  3 ++-
 include/net/switchdev.h                               |  6 ++++--
 net/dsa/slave.c                                       |  3 ++-
 net/switchdev/switchdev.c                             | 11 ++++++++---
 7 files changed, 22 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c b/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c
index 8c2b03151736..2c1619715a4b 100644
--- a/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c
+++ b/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c
@@ -695,7 +695,8 @@ static int prestera_port_attr_stp_state_set(struct prestera_port *port,
 }
 
 static int prestera_port_obj_attr_set(struct net_device *dev,
-				      const struct switchdev_attr *attr)
+				      const struct switchdev_attr *attr,
+				      struct netlink_ext_ack *extack)
 {
 	struct prestera_port *port = netdev_priv(dev);
 	int err = 0;
diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c b/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
index 20c4f3c2cf23..18e4f1cd5587 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
@@ -887,7 +887,8 @@ mlxsw_sp_port_attr_br_mrouter_set(struct mlxsw_sp_port *mlxsw_sp_port,
 }
 
 static int mlxsw_sp_port_attr_set(struct net_device *dev,
-				  const struct switchdev_attr *attr)
+				  const struct switchdev_attr *attr,
+				  struct netlink_ext_ack *extack)
 {
 	struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);
 	int err;
diff --git a/drivers/net/ethernet/mscc/ocelot_net.c b/drivers/net/ethernet/mscc/ocelot_net.c
index 8f12fa45b1b5..f9da4aa39444 100644
--- a/drivers/net/ethernet/mscc/ocelot_net.c
+++ b/drivers/net/ethernet/mscc/ocelot_net.c
@@ -1005,7 +1005,8 @@ static void ocelot_port_attr_mc_set(struct ocelot *ocelot, int port, bool mc)
 }
 
 static int ocelot_port_attr_set(struct net_device *dev,
-				const struct switchdev_attr *attr)
+				const struct switchdev_attr *attr,
+				struct netlink_ext_ack *extack)
 {
 	struct ocelot_port_private *priv = netdev_priv(dev);
 	struct ocelot *ocelot = priv->port.ocelot;
diff --git a/drivers/net/ethernet/ti/cpsw_switchdev.c b/drivers/net/ethernet/ti/cpsw_switchdev.c
index 9967cf985728..13524cbaa8b6 100644
--- a/drivers/net/ethernet/ti/cpsw_switchdev.c
+++ b/drivers/net/ethernet/ti/cpsw_switchdev.c
@@ -83,7 +83,8 @@ static int cpsw_port_attr_br_flags_pre_set(struct net_device *netdev,
 }
 
 static int cpsw_port_attr_set(struct net_device *ndev,
-			      const struct switchdev_attr *attr)
+			      const struct switchdev_attr *attr,
+			      struct netlink_ext_ack *extack)
 {
 	struct cpsw_priv *priv = netdev_priv(ndev);
 	int ret;
diff --git a/include/net/switchdev.h b/include/net/switchdev.h
index 88fcac140966..84c765312001 100644
--- a/include/net/switchdev.h
+++ b/include/net/switchdev.h
@@ -283,7 +283,8 @@ int switchdev_handle_port_attr_set(struct net_device *dev,
 			struct switchdev_notifier_port_attr_info *port_attr_info,
 			bool (*check_cb)(const struct net_device *dev),
 			int (*set_cb)(struct net_device *dev,
-				      const struct switchdev_attr *attr));
+				      const struct switchdev_attr *attr,
+				      struct netlink_ext_ack *extack));
 #else
 
 static inline void switchdev_deferred_process(void)
@@ -374,7 +375,8 @@ switchdev_handle_port_attr_set(struct net_device *dev,
 			struct switchdev_notifier_port_attr_info *port_attr_info,
 			bool (*check_cb)(const struct net_device *dev),
 			int (*set_cb)(struct net_device *dev,
-				      const struct switchdev_attr *attr))
+				      const struct switchdev_attr *attr,
+				      struct netlink_ext_ack *extack))
 {
 	return 0;
 }
diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index 431bdbdd8473..8f4c7c232e2c 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -271,7 +271,8 @@ static int dsa_slave_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
 }
 
 static int dsa_slave_port_attr_set(struct net_device *dev,
-				   const struct switchdev_attr *attr)
+				   const struct switchdev_attr *attr,
+				   struct netlink_ext_ack *extack)
 {
 	struct dsa_port *dp = dsa_slave_to_port(dev);
 	int ret;
diff --git a/net/switchdev/switchdev.c b/net/switchdev/switchdev.c
index 94113ca29dcf..0b84f076591e 100644
--- a/net/switchdev/switchdev.c
+++ b/net/switchdev/switchdev.c
@@ -488,14 +488,18 @@ static int __switchdev_handle_port_attr_set(struct net_device *dev,
 			struct switchdev_notifier_port_attr_info *port_attr_info,
 			bool (*check_cb)(const struct net_device *dev),
 			int (*set_cb)(struct net_device *dev,
-				      const struct switchdev_attr *attr))
+				      const struct switchdev_attr *attr,
+				      struct netlink_ext_ack *extack))
 {
+	struct netlink_ext_ack *extack;
 	struct net_device *lower_dev;
 	struct list_head *iter;
 	int err = -EOPNOTSUPP;
 
+	extack = switchdev_notifier_info_to_extack(&port_attr_info->info);
+
 	if (check_cb(dev)) {
-		err = set_cb(dev, port_attr_info->attr);
+		err = set_cb(dev, port_attr_info->attr, extack);
 		if (err != -EOPNOTSUPP)
 			port_attr_info->handled = true;
 		return err;
@@ -525,7 +529,8 @@ int switchdev_handle_port_attr_set(struct net_device *dev,
 			struct switchdev_notifier_port_attr_info *port_attr_info,
 			bool (*check_cb)(const struct net_device *dev),
 			int (*set_cb)(struct net_device *dev,
-				      const struct switchdev_attr *attr))
+				      const struct switchdev_attr *attr,
+				      struct netlink_ext_ack *extack))
 {
 	int err;
 
-- 
2.25.1

