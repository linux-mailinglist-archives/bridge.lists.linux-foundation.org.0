Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C59150E2FE
	for <lists.bridge@lfdr.de>; Mon, 25 Apr 2022 16:25:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A57060E1E;
	Mon, 25 Apr 2022 14:25:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id voQY-Tx_ej3N; Mon, 25 Apr 2022 14:25:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id C291260E0B;
	Mon, 25 Apr 2022 14:25:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 867E7C007F;
	Mon, 25 Apr 2022 14:25:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D0BCBC002D
 for <bridge@lists.linux-foundation.org>; Mon, 25 Apr 2022 14:25:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A9A4F60761
 for <bridge@lists.linux-foundation.org>; Mon, 25 Apr 2022 14:25:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xMnBW4XdngRa for <bridge@lists.linux-foundation.org>;
 Mon, 25 Apr 2022 14:25:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A052760E0B
 for <bridge@lists.linux-foundation.org>; Mon, 25 Apr 2022 14:25:23 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 m22-20020a05600c3b1600b00393ed50777aso1355931wms.3
 for <bridge@lists.linux-foundation.org>; Mon, 25 Apr 2022 07:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q9GjZpj5z4jQoVWPWHRM4WbdBaEqGH0PEUyIAbHtSwY=;
 b=Aqi7vR6ihgqfYqPsmldk5DK+0A5zdzRZQzPNC4LKgszXDDxVy6y1vz6mMTsXPBbYMM
 F0gCjYP+d3xO0mgu6MEZ8yMq5rPoZZdZmHOXfd6ojmLh0C2sA5bHVlR3u+vNAHV5PL0Q
 sYMF4c6+czR2bypahbXrJQC4UWbPr9dBM2tEPMPWkOjrHXJNVIS0r5uVFFomyT4BOw5D
 N9mV6fbnlFFkVlwQk5ImHVC58ISD88BShydYBTqbfPWBFKC81XleMz4cZjJpJtfhF0vK
 TVoQNE82dPJ6jbF0+9vd+AHsY7uU3Xi6rN/lm5j3CQCFwM7ZCtv6f9DJe5r7XtmCFsLR
 fv7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q9GjZpj5z4jQoVWPWHRM4WbdBaEqGH0PEUyIAbHtSwY=;
 b=pFZInFU14uF5ls0xWWLumUY0M4IYOPjgK4GmP1f92HbGBe7KKzVjKpxcWR9klOLIQK
 EvbrhqcGibV3VnRpE0+eXNpRVTO9+z5vIszmmPl5xj5YjjGUqEAEZnFZIpEzDmAGNkaV
 W4UBYycWOPtucIbTOb74mSgeL4dLSfRxVpCoEAZJvzLJZDAxYpvHOs3aHFR35yJCSOPj
 G+3ERb68tG5lPovGINr36ZSKimj1ewN8ZgDUWC8GdTW9rOtnb++Bef8RkC19x9v1ZtVi
 /wz0V5zwzq1I2Zfz4cCYChDRXu4Hra7LqBj6C5Qt4ihrTme/1wlXzHSqzmuMVXbOrM+l
 RzDQ==
X-Gm-Message-State: AOAM533RuMKYynuqpkhn6VgYaNDSAE+AgRTgE6x7E/f/g93OnGH9lCVy
 r02UR8fUKMgaZq8jhAJNm6g=
X-Google-Smtp-Source: ABdhPJyQrI3zdocd1+gbRNvigWyjitW9lEJ0/QhC74dvZrP+hXE9/EOjdKDUHkZvxsITSI8Qb0ysIQ==
X-Received: by 2002:a1c:4e08:0:b0:38e:d3ac:b527 with SMTP id
 g8-20020a1c4e08000000b0038ed3acb527mr16875708wmh.104.1650896721666; 
 Mon, 25 Apr 2022 07:25:21 -0700 (PDT)
Received: from alaa-emad ([197.57.226.213]) by smtp.gmail.com with ESMTPSA id
 e4-20020adfa444000000b0020ac74da5c5sm9081988wra.87.2022.04.25.07.25.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 07:25:21 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: netdev@vger.kernel.org
Date: Mon, 25 Apr 2022 16:25:06 +0200
Message-Id: <8847c5d670c7ee11890d75f58a4922c5cb542f20.1650896000.git.eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <cover.1650896000.git.eng.alaamohamedsoliman.am@gmail.com>
References: <cover.1650896000.git.eng.alaamohamedsoliman.am@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: eng.alaamohamedsoliman.am@gmail.com, shshaikh@marvell.com,
 jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com, manishc@marvell.com,
 alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 vladimir.oltean@nxp.com, razor@blackwall.org,
 bridge@lists.linux-foundation.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, sbrivio@redhat.com, claudiu.manoil@nxp.com,
 anthony.l.nguyen@intel.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, UNGLinuxDriver@microchip.com,
 intel-wired-lan@lists.osuosl.org
Subject: [Bridge] [PATCH net-next v4 1/2] rtnetlink: add extack support in
	fdb del handlers
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

Add extack support to .ndo_fdb_del in netdevice.h and
all related methods.

Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
---
changes in V3:
        fix errors reported by checkpatch.pl
---
changes in V4:
        fix errors reported by checkpatch.pl
---
 drivers/net/ethernet/intel/ice/ice_main.c        | 2 +-
 drivers/net/ethernet/mscc/ocelot_net.c           | 4 ++--
 drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c | 2 +-
 drivers/net/macvlan.c                            | 2 +-
 drivers/net/vxlan/vxlan_core.c                   | 2 +-
 include/linux/netdevice.h                        | 2 +-
 net/bridge/br_fdb.c                              | 2 +-
 net/bridge/br_private.h                          | 3 ++-
 net/core/rtnetlink.c                             | 4 ++--
 9 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d768925785ca..4fd32163729e 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5678,7 +5678,7 @@ ice_fdb_add(struct ndmsg *ndm, struct nlattr __always_unused *tb[],
 static int
 ice_fdb_del(struct ndmsg *ndm, __always_unused struct nlattr *tb[],
 	    struct net_device *dev, const unsigned char *addr,
-	    __always_unused u16 vid)
+	    __always_unused u16 vid, struct netlink_ext_ack *extack)
 {
 	int err;

diff --git a/drivers/net/ethernet/mscc/ocelot_net.c b/drivers/net/ethernet/mscc/ocelot_net.c
index 247bc105bdd2..e07c64e3159c 100644
--- a/drivers/net/ethernet/mscc/ocelot_net.c
+++ b/drivers/net/ethernet/mscc/ocelot_net.c
@@ -774,14 +774,14 @@ static int ocelot_port_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],

 static int ocelot_port_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
 			       struct net_device *dev,
-			       const unsigned char *addr, u16 vid)
+			       const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack)
 {
 	struct ocelot_port_private *priv = netdev_priv(dev);
 	struct ocelot_port *ocelot_port = &priv->port;
 	struct ocelot *ocelot = ocelot_port->ocelot;
 	int port = priv->chip_port;

-	return ocelot_fdb_del(ocelot, port, addr, vid, ocelot_port->bridge);
+	return ocelot_fdb_del(ocelot, port, addr, vid, ocelot_port->bridge, extack);
 }

 static int ocelot_port_fdb_dump(struct sk_buff *skb,
diff --git a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
index d320567b2cca..51fa23418f6a 100644
--- a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
+++ b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
@@ -368,7 +368,7 @@ static int qlcnic_set_mac(struct net_device *netdev, void *p)

 static int qlcnic_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
 			struct net_device *netdev,
-			const unsigned char *addr, u16 vid)
+			const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack)
 {
 	struct qlcnic_adapter *adapter = netdev_priv(netdev);
 	int err = -EOPNOTSUPP;
diff --git a/drivers/net/macvlan.c b/drivers/net/macvlan.c
index 069e8824c264..ffd34d9f7049 100644
--- a/drivers/net/macvlan.c
+++ b/drivers/net/macvlan.c
@@ -1017,7 +1017,7 @@ static int macvlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],

 static int macvlan_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
 			   struct net_device *dev,
-			   const unsigned char *addr, u16 vid)
+			   const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack)
 {
 	struct macvlan_dev *vlan = netdev_priv(dev);
 	int err = -EINVAL;
diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index de97ff98d36e..cf2f60037340 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -1280,7 +1280,7 @@ int __vxlan_fdb_delete(struct vxlan_dev *vxlan,
 /* Delete entry (via netlink) */
 static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
 			    struct net_device *dev,
-			    const unsigned char *addr, u16 vid)
+			    const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack)
 {
 	struct vxlan_dev *vxlan = netdev_priv(dev);
 	union vxlan_addr ip;
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 28ea4f8269d4..d0d2a8f33c73 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1509,7 +1509,7 @@ struct net_device_ops {
 					       struct nlattr *tb[],
 					       struct net_device *dev,
 					       const unsigned char *addr,
-					       u16 vid);
+					       u16 vid, struct netlink_ext_ack *extack);
 	int			(*ndo_fdb_dump)(struct sk_buff *skb,
 						struct netlink_callback *cb,
 						struct net_device *dev,
diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 6ccda68bd473..5bfce2e9a553 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -1110,7 +1110,7 @@ static int __br_fdb_delete(struct net_bridge *br,
 /* Remove neighbor entry with RTM_DELNEIGH */
 int br_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
 		  struct net_device *dev,
-		  const unsigned char *addr, u16 vid)
+		  const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack)
 {
 	struct net_bridge_vlan_group *vg;
 	struct net_bridge_port *p = NULL;
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 18ccc3d5d296..14ea6e73d786 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -780,7 +780,8 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
 		   const unsigned char *addr, u16 vid, unsigned long flags);

 int br_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
-		  struct net_device *dev, const unsigned char *addr, u16 vid);
+		  struct net_device *dev, const unsigned char *addr, u16 vid,
+		  struct netlink_ext_ack *extack);
 int br_fdb_add(struct ndmsg *nlh, struct nlattr *tb[], struct net_device *dev,
 	       const unsigned char *addr, u16 vid, u16 nlh_flags,
 	       struct netlink_ext_ack *extack);
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 4041b3e2e8ec..99b30ae58a47 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -4223,7 +4223,7 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 		const struct net_device_ops *ops = br_dev->netdev_ops;

 		if (ops->ndo_fdb_del)
-			err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid);
+			err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid, extack);

 		if (err)
 			goto out;
@@ -4235,7 +4235,7 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 	if (ndm->ndm_flags & NTF_SELF) {
 		if (dev->netdev_ops->ndo_fdb_del)
 			err = dev->netdev_ops->ndo_fdb_del(ndm, tb, dev, addr,
-							   vid);
+							   vid, extack);
 		else
 			err = ndo_dflt_fdb_del(ndm, tb, dev, addr, vid);

--
2.36.0

