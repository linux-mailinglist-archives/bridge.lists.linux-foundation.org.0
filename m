Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F037D3197B1
	for <lists.bridge@lfdr.de>; Fri, 12 Feb 2021 02:05:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E7EAD86FC4;
	Fri, 12 Feb 2021 01:05:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XT003Dyl4OFy; Fri, 12 Feb 2021 01:05:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F3F5986F99;
	Fri, 12 Feb 2021 01:05:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CD42CC013A;
	Fri, 12 Feb 2021 01:05:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 02A1AC013A
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 01:05:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D9598600CC
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 01:05:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y_AysxTjZ_YQ for <bridge@lists.linux-foundation.org>;
 Fri, 12 Feb 2021 01:05:48 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 977066F6CA; Fri, 12 Feb 2021 01:05:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com
 [209.85.218.42])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DEF446F6CA
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 01:05:46 +0000 (UTC)
Received: by mail-ej1-f42.google.com with SMTP id jj19so13064097ejc.4
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 17:05:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NsYYUoZirikxAfZHJuEiC70aCOck9XBnivP9XJTWXCE=;
 b=BXMn0rOx9X7XegIpk2IcxDqSSuscQfwbNBXd9qbKBYm1SlJY27Tmdv7gldMckrifvV
 J/PDJYd2XOet3dhV0hmvAzJC52Jp1gfAHBH0XzNFe5/Rz5Eq7lWMPkH91TPAIvaEHCj0
 SirsLoaXkhFhPbjKvmFPa03f4IPyI1BSKFw1qH5R6K1x3kyNhjcm1EW2J8qb9GNyoH80
 HgkjuptGopiqaYjJtko7mf0ir28rBXhbNBMVVB4aeIrMq7lowaTiYEwmhmy3vupz/rNd
 Yp9lczZIsPu/9DYoevi7WUQD52zsCPsG0r2fMmh/OJRTSY6Eb0qV41uHPGZAxxhLt7Y1
 9qLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NsYYUoZirikxAfZHJuEiC70aCOck9XBnivP9XJTWXCE=;
 b=NUQPpO/QupHUsf3nCwRIL1F9+RxJKVUDRKYzBBXabENJrkleSekUDrVkiGUIsYZxjU
 5KEUJOy8r9KKtcL41k/ICRVmDrFADJwKJzGIB2n6LgX20nZ8SjK4IEmCriYczwn/Pv3g
 nkhEJdAYPDnIr0y1O8z56Rz1ZDYu01DKLa9NpesvAE8h87Ltw6hGr7JHs5R+ae3Xxlcy
 r0urQDik3UohtTbJhAzvVHWXzL9jGkqM4w0VkD0RGTGIZaXdEbEyxxZGfELam3dOcP5z
 rBj2IYMv1EQ8sOCQ1YRl6cAz1aaPUl3EkjrL+g5TttbR2oO8+LUgDU7vBAKXNUgDsHkK
 VFGg==
X-Gm-Message-State: AOAM530e0+5imZbbOyVlXvValSD6PlYzvoeartMIVfqFv85OYW6DT/nf
 g222hTs1dXInpe2/BF/bIHI=
X-Google-Smtp-Source: ABdhPJzdhTBKTee0VKd2IHvm3rpatEQarF1x8QltJ7Bqj2h1N/JKQwTlJ1O5eGRJV7Q6/rBEiKVHog==
X-Received: by 2002:a17:906:1355:: with SMTP id
 x21mr456420ejb.53.1613091944897; 
 Thu, 11 Feb 2021 17:05:44 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id z13sm5019580edc.73.2021.02.11.17.05.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Feb 2021 17:05:44 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Date: Fri, 12 Feb 2021 03:05:23 +0200
Message-Id: <20210212010531.2722925-2-olteanv@gmail.com>
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
Subject: [Bridge] [PATCH v4 net-next 1/9] net: switchdev: propagate extack
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
index 6dcfc4c51a6e..9279d4245bab 100644
--- a/include/net/switchdev.h
+++ b/include/net/switchdev.h
@@ -281,7 +281,8 @@ int switchdev_handle_port_attr_set(struct net_device *dev,
 			struct switchdev_notifier_port_attr_info *port_attr_info,
 			bool (*check_cb)(const struct net_device *dev),
 			int (*set_cb)(struct net_device *dev,
-				      const struct switchdev_attr *attr));
+				      const struct switchdev_attr *attr,
+				      struct netlink_ext_ack *extack));
 #else
 
 static inline void switchdev_deferred_process(void)
@@ -372,7 +373,8 @@ switchdev_handle_port_attr_set(struct net_device *dev,
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

