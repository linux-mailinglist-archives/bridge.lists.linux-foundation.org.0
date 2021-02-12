Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D15B131A14A
	for <lists.bridge@lfdr.de>; Fri, 12 Feb 2021 16:16:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7B28887313;
	Fri, 12 Feb 2021 15:16:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U0Z98YTkz576; Fri, 12 Feb 2021 15:16:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 735B18746C;
	Fri, 12 Feb 2021 15:16:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5B633C013A;
	Fri, 12 Feb 2021 15:16:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3896AC013A
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 15:16:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 22AD087356
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 15:16:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xiHxXZQIm7Mm for <bridge@lists.linux-foundation.org>;
 Fri, 12 Feb 2021 15:16:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
 [209.85.218.49])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EC58E8738E
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 15:16:11 +0000 (UTC)
Received: by mail-ej1-f49.google.com with SMTP id jt13so3625465ejb.0
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 07:16:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zlnjjFKVXOU0oDaJe+Eu8LG96OjY+3k7oZOIep+RtFc=;
 b=AIi+qIRyj6gQAHfCJw1wD5QNm2KIo3AWJW58DjXGAYsHdp3nWp6JoVnfd1cUvTMqNq
 C3GBfMMW7hJaYsvqhD7ft7yF9TsPci6nvI4V/+3qfPbHp25fuJjDJDnDhWd56LATg089
 C1QKyJ9b/7GuMpv161MNp1szF+QWgJCqYbLOdyQ2QpGFfdl2kE7PxylqzVapcpxbUBe1
 Ei05eyIF/bR0Cym981XcIabKgmJd1hn4z67Z1ra9ev62+nBmj8jIBdvQyBNoRrFGealn
 /Rdayvj6qls3zRiFOYswgwz/DHcICbq4bjnAdzKmzt/Jap3jGXOkW+/ihZBO69+gJ2eo
 X4+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zlnjjFKVXOU0oDaJe+Eu8LG96OjY+3k7oZOIep+RtFc=;
 b=JdN4Hadba0NDJfeKqjVusnImIaZeRV37Rv3fEczrfmFZPaUCVBky8MzoYxrqaBMHHs
 XPpXbUdGp3qbsPcjSBodmZdq00kLUCAIDXCMD6v0U/Gkb5s+03wdDGMS6T7CdIv5848c
 LtUm1yc9Yt9xX09rZZdK0oXJ0R0FBRIgDxs7aommncfaLPWR2NsZ8/B+P+N+Encl2jml
 Hx9N/PPuGSrC14GVkAXxJ34VqVnqN9ZfAtgUXo8iJ92fQz41/Wl4/ceAos4F93vnX+Kb
 WkVzXdmKdoyTJeV7armH+EqzyPHV2ON7+mqaPJT/7mW2GHyQ+z9dW7pSza0Nm8eC14tr
 89zw==
X-Gm-Message-State: AOAM530G2O7qxaxvrw7U7P3cT8Pxl2nxMUX4222AbpMWltKeThgVvsi7
 +qyrsN72dM26oA0ll2ntmk8=
X-Google-Smtp-Source: ABdhPJxeCyxi9KPbcyN3yxNJUfpgpxfqZIf4SjJr31ziOyajmsidlG4SisiFvs2XHeADyKmNgalz4A==
X-Received: by 2002:a17:906:8159:: with SMTP id
 z25mr3527245ejw.270.1613142970463; 
 Fri, 12 Feb 2021 07:16:10 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id z19sm6515456edr.69.2021.02.12.07.16.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Feb 2021 07:16:10 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Date: Fri, 12 Feb 2021 17:15:51 +0200
Message-Id: <20210212151600.3357121-2-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210212151600.3357121-1-olteanv@gmail.com>
References: <20210212151600.3357121-1-olteanv@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Vignesh Raghavendra <vigneshr@ti.com>, Vadym Kochan <vkochan@marvell.com>,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Taras Chornyi <tchornyi@marvell.com>,
 Ido Schimmel <idosch@idosch.org>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 linux-omap@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH v5 net-next 01/10] net: switchdev: propagate extack
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
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
---
Changes in v5:
Rebased on top of AM65 CPSW driver merge.

Changes in v4:
None.

Changes in v3:
None.

Changes in v2:
Patch is new.

 .../ethernet/marvell/prestera/prestera_switchdev.c    |  3 ++-
 .../net/ethernet/mellanox/mlxsw/spectrum_switchdev.c  |  3 ++-
 drivers/net/ethernet/mscc/ocelot_net.c                |  3 ++-
 drivers/net/ethernet/ti/am65-cpsw-switchdev.c         |  3 ++-
 drivers/net/ethernet/ti/cpsw_switchdev.c              |  3 ++-
 include/net/switchdev.h                               |  6 ++++--
 net/dsa/slave.c                                       |  3 ++-
 net/switchdev/switchdev.c                             | 11 ++++++++---
 8 files changed, 24 insertions(+), 11 deletions(-)

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
diff --git a/drivers/net/ethernet/ti/am65-cpsw-switchdev.c b/drivers/net/ethernet/ti/am65-cpsw-switchdev.c
index 1067e7772dbf..314825acf0a0 100644
--- a/drivers/net/ethernet/ti/am65-cpsw-switchdev.c
+++ b/drivers/net/ethernet/ti/am65-cpsw-switchdev.c
@@ -81,7 +81,8 @@ static int am65_cpsw_port_attr_br_flags_pre_set(struct net_device *netdev,
 }
 
 static int am65_cpsw_port_attr_set(struct net_device *ndev,
-				   const struct switchdev_attr *attr)
+				   const struct switchdev_attr *attr,
+				   struct netlink_ext_ack *extack)
 {
 	struct am65_cpsw_port *port = am65_ndev_to_port(ndev);
 	int ret;
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
index a95e78d59740..be29008477d3 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -272,7 +272,8 @@ static int dsa_slave_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
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

