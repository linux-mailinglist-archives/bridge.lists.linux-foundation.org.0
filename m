Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 70208524993
	for <lists.bridge@lfdr.de>; Thu, 12 May 2022 11:56:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 82ED460B12;
	Thu, 12 May 2022 09:56:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Q4EazAEHgEm; Thu, 12 May 2022 09:56:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id E7D3560FA6;
	Thu, 12 May 2022 09:56:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B4905C007E;
	Thu, 12 May 2022 09:56:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CE38BC002D
 for <bridge@lists.linux-foundation.org>; Thu, 12 May 2022 09:56:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BCABD61094
 for <bridge@lists.linux-foundation.org>; Thu, 12 May 2022 09:56:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qkAhZTfVTKai for <bridge@lists.linux-foundation.org>;
 Thu, 12 May 2022 09:56:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8868860D72
 for <bridge@lists.linux-foundation.org>; Thu, 12 May 2022 09:56:16 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 125-20020a1c1983000000b003941f354c62so2690124wmz.0
 for <bridge@lists.linux-foundation.org>; Thu, 12 May 2022 02:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qI3oXWeBiZQ3s0yJXR/Iw74/6l7ydEbTwN0ORi2PrK0=;
 b=KzEWi7vjnxdxQBJlJDO0DiuyF9DtJfntrDKUKeI93BZiV6D+RQWoCdzKw+i4jLb9bm
 xgwleuEEPQDLntBcJXA5PkBTXaHNvdz04neDI6FGLhdXBFolFF5XBccTM6wfRBLuuKLx
 W3+NIJueyMz0GwUPAIhs3KAgx7S7YyDZeN2s8/zN0Cj1eArabJzkNhPTvdSf/o7hfFki
 byBdeWwmXpwEr5yPIT+K2Evj4IHDvvueM9bCMNd/zQpcPbJMuJ62FCRvWoVv0Pq+kQ5J
 7PAQAsaHZpZmh5LCSX9hokxYhh+prd50kEOtg+KmDK9EcDAai2iCtxs9CdmLF27mWzNT
 ZGXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qI3oXWeBiZQ3s0yJXR/Iw74/6l7ydEbTwN0ORi2PrK0=;
 b=HyItsTa4mRG4w67uv42feiuS4nCD3QfjOs9GjwuD0EmNzwGAlBXtik7zdcCFUZXQd0
 UHOBznTDLifd32MVIDJMi7eBF6bGHXa5sBLSgLSHYJGH6o6VaBG3nR52BSw2Uo1A2DT+
 mUaJxpogpYMhiFfqVy5aDFBow6JKjTkxlPGg2KkRAJqgY5Jo8JKXaiywx5WLyrziczB2
 H1eXqKPLJfa+8WQONs2fuJRVMjmSoZOXqCR5bZdUQiJL4nqQZZgi7/ghCcaqwqcfgBL9
 IP7Y70QYgjb4dVaHkzNE/SlthE/9lXQIgXksuRTCRnFHThuST27GgY336ubDT+qcFB3p
 xd3g==
X-Gm-Message-State: AOAM532+eKubG7Bw7imnE6V1A06UuwGRc+WKaC7HRWqNTpViUF9PAvXN
 79/+cGn400XJxROMBJSB2PA=
X-Google-Smtp-Source: ABdhPJy/QeQxp3dWsBwoanSCYPJ6iJInm5XAFqgaNwlAqEbT29lisDl26cEBlRq+b1dNjftuGwKQnA==
X-Received: by 2002:a05:600c:3b04:b0:394:6150:db8f with SMTP id
 m4-20020a05600c3b0400b003946150db8fmr9149320wms.183.1652349374575; 
 Thu, 12 May 2022 02:56:14 -0700 (PDT)
Received: from alaa-emad ([197.57.250.210]) by smtp.gmail.com with ESMTPSA id
 d1-20020a05600c34c100b003942a244f3bsm2296610wmq.20.2022.05.12.02.56.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 May 2022 02:56:14 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: netdev@vger.kernel.org
Date: Thu, 12 May 2022 11:55:53 +0200
Message-Id: <9b124f0393a8ea2db2333235bbd7129ac08b8c34.1652348962.git.eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1652348961.git.eng.alaamohamedsoliman.am@gmail.com>
References: <cover.1652348961.git.eng.alaamohamedsoliman.am@gmail.com>
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
Subject: [Bridge] [PATCH net-next v7 1/2] rtnetlink: add extack support in
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
changes in V7:
	fix alignments in ocelot_port_fdb_del and
 vxlan_fdb_delete.
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
index 247bc105bdd2..32d0a9e0a4b0 100644
--- a/drivers/net/ethernet/mscc/ocelot_net.c
+++ b/drivers/net/ethernet/mscc/ocelot_net.c
@@ -774,7 +774,8 @@ static int ocelot_port_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],

 static int ocelot_port_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
 			       struct net_device *dev,
-			       const unsigned char *addr, u16 vid)
+			       const unsigned char *addr, u16 vid,
+			       struct netlink_ext_ack *extack)
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
index 8a5e3a6d32d7..c58c48de4cf4 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -1280,7 +1280,8 @@ int __vxlan_fdb_delete(struct vxlan_dev *vxlan,
 /* Delete entry (via netlink) */
 static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
 			    struct net_device *dev,
-			    const unsigned char *addr, u16 vid)
+			    const unsigned char *addr, u16 vid,
+			    struct netlink_ext_ack *extack)
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
2.36.1

