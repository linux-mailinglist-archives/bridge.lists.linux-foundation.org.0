Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CC651C37C
	for <lists.bridge@lfdr.de>; Thu,  5 May 2022 17:10:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A309E400DB;
	Thu,  5 May 2022 15:10:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ifNy6297AHHA; Thu,  5 May 2022 15:10:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 1C3B740C1C;
	Thu,  5 May 2022 15:10:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CC2A3C0081;
	Thu,  5 May 2022 15:10:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 364DAC002D
 for <bridge@lists.linux-foundation.org>; Thu,  5 May 2022 15:10:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 25CC483F94
 for <bridge@lists.linux-foundation.org>; Thu,  5 May 2022 15:10:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6kvzfH7PCMr9 for <bridge@lists.linux-foundation.org>;
 Thu,  5 May 2022 15:10:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 262E584013
 for <bridge@lists.linux-foundation.org>; Thu,  5 May 2022 15:10:12 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 i20-20020a05600c355400b0039456976dcaso2706453wmq.1
 for <bridge@lists.linux-foundation.org>; Thu, 05 May 2022 08:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=i9qtO8+wEHvEFlgaxTfu3fZrh/1vEN5OoUor60j7zaI=;
 b=IrOspQzMnmkD2mFnHlxZG+PigmCkPMc/KQ4rbL6wEhhafhSsL0ZLwz34TamZzx9zRC
 JBBFOPrELOfaIVyzGx+PjWGiMl4LpZjRXYg4y0j883W7K9tQfaYF5sW305P0B7dLhLUp
 VoAehL4MYKQxdkgJk1MJG3cHrFHuAoTbAfbdb/yF12Zc7rddVrCuwqdEdQywOJpN7ZzZ
 gFN8eCWU/pOlcZPvQcTYXtj4vHcbXKls/0Y50fI809bMRX1EzbeE3S2aBd/j25HscM0W
 E4BAL2+cEgUyyZipgxC1FP1j8wYZlTKjeX6AQxccH9LKnOdwLBuy15XER94Vo1mcA8VY
 tI5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=i9qtO8+wEHvEFlgaxTfu3fZrh/1vEN5OoUor60j7zaI=;
 b=ncYRSwd5EnRbIbvj+p3v4sr9MssaGDNtLewjYeBSK1Kz9Fkv9qNHHQCxbLcnscUzok
 BVSMwgg2RV+yYoh/Q2zQEKBA+n7qCsGvwkyOlQVBO1G7vxwkQbSmg6UP48qBs7TK6NX7
 TO1nxeaQI2mf6iE9RGCwPOumoJu1aTzG1FV6IYvZrxHVZlIHZT01McyTznuI+jfaB1aN
 K0fmLFCUVYDyDpGLhszkP8ogq7tx6Bf1It7Mc1BHKx8W0PtK0Xu7sJtYZOhW98xfXja5
 WHNlaN/e7PLCOb5Y1Btc3rbxN5AkDbIm/ygGJov/nwm5pmwptMnQ5wXoHrpWxp33yJ94
 qnzg==
X-Gm-Message-State: AOAM533xo6MnQH3FaVP6mqHKrrHQHxDB+Wp+kEpCaVtYePOtd9IxWhZU
 z9DRsfGbLmASWSAw/EikSYM=
X-Google-Smtp-Source: ABdhPJy8mRiJN4SMXkNFBKa1c/BQbSZan0uqMZ9hi5XbQ2MRyDUVwAa4VtRpe6TU6yVa7FxNKZPjvA==
X-Received: by 2002:a05:600c:2258:b0:394:2045:bed with SMTP id
 a24-20020a05600c225800b0039420450bedmr5510174wmm.174.1651763410271; 
 Thu, 05 May 2022 08:10:10 -0700 (PDT)
Received: from alaa-emad ([197.57.200.226]) by smtp.gmail.com with ESMTPSA id
 n18-20020a05600c465200b003942a244f4esm6013539wmo.39.2022.05.05.08.10.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 May 2022 08:10:09 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: netdev@vger.kernel.org
Date: Thu,  5 May 2022 17:09:57 +0200
Message-Id: <1ff7bb13d4b762249d8695b707490decafb3f8ae.1651762830.git.eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <cover.1651762829.git.eng.alaamohamedsoliman.am@gmail.com>
References: <cover.1651762829.git.eng.alaamohamedsoliman.am@gmail.com>
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
Subject: [Bridge] [PATCH net-next v6 1/2] rtnetlink: add extack support in
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
changes in V5:
	resubmit after rebase.
---
changes in V6:
	update the kdoc on ice_fdb_del
---
 drivers/net/ethernet/intel/ice/ice_main.c        | 3 ++-
 drivers/net/ethernet/mscc/ocelot_net.c           | 3 ++-
 drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c | 3 ++-
 drivers/net/macvlan.c                            | 3 ++-
 drivers/net/vxlan/vxlan_core.c                   | 3 ++-
 include/linux/netdevice.h                        | 2 +-
 net/bridge/br_fdb.c                              | 3 ++-
 net/bridge/br_private.h                          | 3 ++-
 net/core/rtnetlink.c                             | 4 ++--
 9 files changed, 17 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index fde839ef0613..95f6c9610372 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5674,11 +5674,12 @@ ice_fdb_add(struct ndmsg *ndm, struct nlattr __always_unused *tb[],
  * @dev: the net device pointer
  * @addr: the MAC address entry being added
  * @vid: VLAN ID
+ * @extack: netlink extended ack
  */
 static int
 ice_fdb_del(struct ndmsg *ndm, __always_unused struct nlattr *tb[],
 	    struct net_device *dev, const unsigned char *addr,
-	    __always_unused u16 vid)
+	    __always_unused u16 vid, struct netlink_ext_ack *extack)
 {
 	int err;

diff --git a/drivers/net/ethernet/mscc/ocelot_net.c b/drivers/net/ethernet/mscc/ocelot_net.c
index 247bc105bdd2..616d8127ef51 100644
--- a/drivers/net/ethernet/mscc/ocelot_net.c
+++ b/drivers/net/ethernet/mscc/ocelot_net.c
@@ -774,7 +774,8 @@ static int ocelot_port_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],

 static int ocelot_port_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
 			       struct net_device *dev,
-			       const unsigned char *addr, u16 vid)
+			       const unsigned char *addr, u16 vid,
+				   struct netlink_ext_ack *extack)
 {
 	struct ocelot_port_private *priv = netdev_priv(dev);
 	struct ocelot_port *ocelot_port = &priv->port;
diff --git a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
index d320567b2cca..28476b982bab 100644
--- a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
+++ b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
@@ -368,7 +368,8 @@ static int qlcnic_set_mac(struct net_device *netdev, void *p)

 static int qlcnic_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
 			struct net_device *netdev,
-			const unsigned char *addr, u16 vid)
+			const unsigned char *addr, u16 vid,
+			struct netlink_ext_ack *extack)
 {
 	struct qlcnic_adapter *adapter = netdev_priv(netdev);
 	int err = -EOPNOTSUPP;
diff --git a/drivers/net/macvlan.c b/drivers/net/macvlan.c
index b00bc8173abe..cb27631c3a4d 100644
--- a/drivers/net/macvlan.c
+++ b/drivers/net/macvlan.c
@@ -1021,7 +1021,8 @@ static int macvlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],

 static int macvlan_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
 			   struct net_device *dev,
-			   const unsigned char *addr, u16 vid)
+			   const unsigned char *addr, u16 vid,
+			   struct netlink_ext_ack *extack)
 {
 	struct macvlan_dev *vlan = netdev_priv(dev);
 	int err = -EINVAL;
diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index 8a5e3a6d32d7..ad0f2150cfdb 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -1280,7 +1280,8 @@ int __vxlan_fdb_delete(struct vxlan_dev *vxlan,
 /* Delete entry (via netlink) */
 static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
 			    struct net_device *dev,
-			    const unsigned char *addr, u16 vid)
+			    const unsigned char *addr, u16 vid,
+				struct netlink_ext_ack *extack)
 {
 	struct vxlan_dev *vxlan = netdev_priv(dev);
 	union vxlan_addr ip;
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 7dccbfd1bf56..23731804a4b0 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1513,7 +1513,7 @@ struct net_device_ops {
 					       struct nlattr *tb[],
 					       struct net_device *dev,
 					       const unsigned char *addr,
-					       u16 vid);
+					       u16 vid, struct netlink_ext_ack *extack);
 	int			(*ndo_fdb_del_bulk)(struct ndmsg *ndm,
 						    struct nlattr *tb[],
 						    struct net_device *dev,
diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 1a3d583fbc8e..e7f4fccb6adb 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -1253,7 +1253,8 @@ static int __br_fdb_delete(struct net_bridge *br,
 /* Remove neighbor entry with RTM_DELNEIGH */
 int br_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
 		  struct net_device *dev,
-		  const unsigned char *addr, u16 vid)
+		  const unsigned char *addr, u16 vid,
+		  struct netlink_ext_ack *extack)
 {
 	struct net_bridge_vlan_group *vg;
 	struct net_bridge_port *p = NULL;
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 6ae882cfae1c..06e5f6faa431 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -793,7 +793,8 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
 		   const unsigned char *addr, u16 vid, unsigned long flags);

 int br_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
-		  struct net_device *dev, const unsigned char *addr, u16 vid);
+		  struct net_device *dev, const unsigned char *addr, u16 vid,
+		  struct netlink_ext_ack *extack);
 int br_fdb_delete_bulk(struct ndmsg *ndm, struct nlattr *tb[],
 		       struct net_device *dev, u16 vid,
 		       struct netlink_ext_ack *extack);
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 73f2cbc440c9..3130df52b56a 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -4240,7 +4240,7 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 		ops = br_dev->netdev_ops;
 		if (!del_bulk) {
 			if (ops->ndo_fdb_del)
-				err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid);
+				err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid, extack);
 		} else {
 			if (ops->ndo_fdb_del_bulk)
 				err = ops->ndo_fdb_del_bulk(ndm, tb, dev, vid,
@@ -4258,7 +4258,7 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 		ops = dev->netdev_ops;
 		if (!del_bulk) {
 			if (ops->ndo_fdb_del)
-				err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid);
+				err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid, extack);
 			else
 				err = ndo_dflt_fdb_del(ndm, tb, dev, addr, vid);
 		} else {
--
2.36.0

