Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C903C31D241
	for <lists.bridge@lfdr.de>; Tue, 16 Feb 2021 22:43:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 83F1986DA3;
	Tue, 16 Feb 2021 21:43:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZE2zAnWkuLn3; Tue, 16 Feb 2021 21:43:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 713CE86DB2;
	Tue, 16 Feb 2021 21:43:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5744CC013A;
	Tue, 16 Feb 2021 21:43:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E589EC013A
 for <bridge@lists.linux-foundation.org>; Tue, 16 Feb 2021 21:43:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C42B66E6C5
 for <bridge@lists.linux-foundation.org>; Tue, 16 Feb 2021 21:43:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O9BeJoMifXO1 for <bridge@lists.linux-foundation.org>;
 Tue, 16 Feb 2021 21:43:32 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 42F946F5E3; Tue, 16 Feb 2021 21:43:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.153.233])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9B7026F5F4
 for <bridge@lists.linux-foundation.org>; Tue, 16 Feb 2021 21:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1613511810; x=1645047810;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wxaZ+oFouMIlD++Ya4A3lCy6Byj/pc01kek30h+ocik=;
 b=Co6oMN3H0e2pKnyGgn1qvSNfTdRFQPFAFDEPAvAOfvGI/9Snji2/2/vQ
 TG4eRi8vRsVIa2D6qGLw9zK7xfJIcpS4YV5QzwjbZS4nd9AbAfFrTJyRy
 y96oMSU6zF0y7pLSSJginyIFhJyKcJun1kU2NSxPTMgHsBYSybWRLbi1W
 ojYyxeZPs8phfoPgIIDe5tINTkx6e5ABlHR0SnDIs0T22G9EjfuKwqBHY
 A4ybzUv+F7OkfsTIj6lRooOFBh4I7ZZxah0XuiGeYJLnzqPBV0VIzKyCQ
 iwEMvnTcXNOK3TSDNJ3nvJH/tzcA1wL5gg+sORq7ro5muiRV3pniyYvHd g==;
IronPort-SDR: fhmvXUjmvdrHmPmuGHn5v2YRSZwTK5+8+kksuXVDwt0RN/6iPZhwTmsiiuKd5GI6NKzw7wpHzk
 y+/LkG/j4ZM52O9vYL85xqLK/hIDGuIERg3xgWqXz7LD6PissmaklGHGO4vy7qLa1/b1cLvYt4
 MwSOWwPni+H8sC3UPeJelLNw57689KPDwtyhCkq8vMhaEmGXhhz+h1Ne2DK/H4+avljBZEn80a
 aDjbRlxMU207okR1hqTPaHzD1hr8UdVKX0AkYos4LTsybUhJ5F60OxEvifPIBr8ec4huCZVnPE
 HIA=
X-IronPort-AV: E=Sophos;i="5.81,184,1610434800"; d="scan'208";a="109421002"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Feb 2021 14:43:28 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 16 Feb 2021 14:43:21 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 16 Feb 2021 14:43:18 -0700
To: <davem@davemloft.net>, <kuba@kernel.org>
Date: Tue, 16 Feb 2021 22:42:03 +0100
Message-ID: <20210216214205.32385-7-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210216214205.32385-1-horatiu.vultur@microchip.com>
References: <20210216214205.32385-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: ivecera@redhat.com, andrew@lunn.ch, alexandre.belloni@bootlin.com,
 f.fainelli@gmail.com, jiri@resnulli.us, rasmus.villemoes@prevas.dk,
 vladimir.oltean@nxp.com, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 claudiu.manoil@nxp.com, netdev@vger.kernel.org, nikolay@nvidia.com,
 roopa@nvidia.com, Horatiu Vultur <horatiu.vultur@microchip.com>,
 vivien.didelot@gmail.com
Subject: [Bridge] [PATCH net-next v4 6/8] net: mscc: ocelot: Add support for
	MRP
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
From: Horatiu Vultur via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Horatiu Vultur <horatiu.vultur@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Add basic support for MRP. The HW will just trap all MRP frames on the
ring ports to CPU and allow the SW to process them. In this way it is
possible to for this node to behave both as MRM and MRC.

Current limitations are:
- it doesn't support Interconnect roles.
- it supports only a single ring.
- the HW should be able to do forwarding of MRP Test frames so the SW
  will not need to do this. So it would be able to have the role MRC
  without SW support.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 drivers/net/ethernet/mscc/Makefile     |   1 +
 drivers/net/ethernet/mscc/ocelot.c     |  10 +-
 drivers/net/ethernet/mscc/ocelot_mrp.c | 175 +++++++++++++++++++++++++
 drivers/net/ethernet/mscc/ocelot_net.c |  60 +++++++++
 include/linux/dsa/ocelot.h             |   5 +
 include/soc/mscc/ocelot.h              |  45 +++++++
 6 files changed, 295 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/ethernet/mscc/ocelot_mrp.c

diff --git a/drivers/net/ethernet/mscc/Makefile b/drivers/net/ethernet/mscc/Makefile
index 346bba2730ad..722c27694b21 100644
--- a/drivers/net/ethernet/mscc/Makefile
+++ b/drivers/net/ethernet/mscc/Makefile
@@ -8,6 +8,7 @@ mscc_ocelot_switch_lib-y := \
 	ocelot_flower.o \
 	ocelot_ptp.o \
 	ocelot_devlink.o
+mscc_ocelot_switch_lib-$(CONFIG_BRIDGE_MRP) += ocelot_mrp.o
 obj-$(CONFIG_MSCC_OCELOT_SWITCH) += mscc_ocelot.o
 mscc_ocelot-y := \
 	ocelot_vsc7514.o \
diff --git a/drivers/net/ethernet/mscc/ocelot.c b/drivers/net/ethernet/mscc/ocelot.c
index 5d13087c85d6..46e5c9136bac 100644
--- a/drivers/net/ethernet/mscc/ocelot.c
+++ b/drivers/net/ethernet/mscc/ocelot.c
@@ -687,7 +687,7 @@ static int ocelot_xtr_poll_xfh(struct ocelot *ocelot, int grp, u32 *xfh)
 int ocelot_xtr_poll_frame(struct ocelot *ocelot, int grp, struct sk_buff **nskb)
 {
 	struct skb_shared_hwtstamps *shhwtstamps;
-	u64 tod_in_ns, full_ts_in_ns;
+	u64 tod_in_ns, full_ts_in_ns, cpuq;
 	u64 timestamp, src_port, len;
 	u32 xfh[OCELOT_TAG_LEN / 4];
 	struct net_device *dev;
@@ -704,6 +704,7 @@ int ocelot_xtr_poll_frame(struct ocelot *ocelot, int grp, struct sk_buff **nskb)
 	ocelot_xfh_get_src_port(xfh, &src_port);
 	ocelot_xfh_get_len(xfh, &len);
 	ocelot_xfh_get_rew_val(xfh, &timestamp);
+	ocelot_xfh_get_cpuq(xfh, &cpuq);
 
 	if (WARN_ON(src_port >= ocelot->num_phys_ports))
 		return -EINVAL;
@@ -770,6 +771,13 @@ int ocelot_xtr_poll_frame(struct ocelot *ocelot, int grp, struct sk_buff **nskb)
 		skb->offload_fwd_mark = 1;
 
 	skb->protocol = eth_type_trans(skb, dev);
+
+#if IS_ENABLED(CONFIG_BRIDGE_MRP)
+	if (skb->protocol == cpu_to_be16(ETH_P_MRP) &&
+	    cpuq & BIT(OCELOT_MRP_CPUQ))
+		skb->offload_fwd_mark = 0;
+#endif
+
 	*nskb = skb;
 
 	return 0;
diff --git a/drivers/net/ethernet/mscc/ocelot_mrp.c b/drivers/net/ethernet/mscc/ocelot_mrp.c
new file mode 100644
index 000000000000..683da320bfd8
--- /dev/null
+++ b/drivers/net/ethernet/mscc/ocelot_mrp.c
@@ -0,0 +1,175 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/* Microsemi Ocelot Switch driver
+ *
+ * This contains glue logic between the switchdev driver operations and the
+ * mscc_ocelot_switch_lib.
+ *
+ * Copyright (c) 2017, 2019 Microsemi Corporation
+ * Copyright 2020-2021 NXP Semiconductors
+ */
+
+#include <linux/if_bridge.h>
+#include <linux/mrp_bridge.h>
+#include <soc/mscc/ocelot_vcap.h>
+#include <uapi/linux/mrp_bridge.h>
+#include "ocelot.h"
+#include "ocelot_vcap.h"
+
+static int ocelot_mrp_del_vcap(struct ocelot *ocelot, int port)
+{
+	struct ocelot_vcap_block *block_vcap_is2;
+	struct ocelot_vcap_filter *filter;
+
+	block_vcap_is2 = &ocelot->block[VCAP_IS2];
+	filter = ocelot_vcap_block_find_filter_by_id(block_vcap_is2, port,
+						     false);
+	if (!filter)
+		return 0;
+
+	return ocelot_vcap_filter_del(ocelot, filter);
+}
+
+int ocelot_mrp_add(struct ocelot *ocelot, int port,
+		   const struct switchdev_obj_mrp *mrp)
+{
+	struct ocelot_port *ocelot_port = ocelot->ports[port];
+	struct ocelot_port_private *priv;
+	struct net_device *dev;
+
+	if (!ocelot_port)
+		return -EOPNOTSUPP;
+
+	priv = container_of(ocelot_port, struct ocelot_port_private, port);
+	dev = priv->dev;
+
+	if (mrp->p_port != dev && mrp->s_port != dev)
+		return 0;
+
+	if (ocelot->mrp_ring_id != 0 &&
+	    ocelot->mrp_s_port &&
+	    ocelot->mrp_p_port)
+		return -EINVAL;
+
+	if (mrp->p_port == dev)
+		ocelot->mrp_p_port = dev;
+
+	if (mrp->s_port == dev)
+		ocelot->mrp_s_port = dev;
+
+	ocelot->mrp_ring_id = mrp->ring_id;
+
+	return 0;
+}
+EXPORT_SYMBOL(ocelot_mrp_add);
+
+int ocelot_mrp_del(struct ocelot *ocelot, int port,
+		   const struct switchdev_obj_mrp *mrp)
+{
+	struct ocelot_port *ocelot_port = ocelot->ports[port];
+	struct ocelot_port_private *priv;
+	struct net_device *dev;
+
+	if (!ocelot_port)
+		return -EOPNOTSUPP;
+
+	priv = container_of(ocelot_port, struct ocelot_port_private, port);
+	dev = priv->dev;
+
+	if (ocelot->mrp_p_port != dev && ocelot->mrp_s_port != dev)
+		return 0;
+
+	if (ocelot->mrp_ring_id == 0 &&
+	    !ocelot->mrp_s_port &&
+	    !ocelot->mrp_p_port)
+		return -EINVAL;
+
+	if (ocelot_mrp_del_vcap(ocelot, priv->chip_port))
+		return -EINVAL;
+
+	if (ocelot->mrp_p_port == dev)
+		ocelot->mrp_p_port = NULL;
+
+	if (ocelot->mrp_s_port == dev)
+		ocelot->mrp_s_port = NULL;
+
+	ocelot->mrp_ring_id = 0;
+
+	return 0;
+}
+EXPORT_SYMBOL(ocelot_mrp_del);
+
+int ocelot_mrp_add_ring_role(struct ocelot *ocelot, int port,
+			     const struct switchdev_obj_ring_role_mrp *mrp)
+{
+	struct ocelot_port *ocelot_port = ocelot->ports[port];
+	struct ocelot_vcap_filter *filter;
+	struct ocelot_port_private *priv;
+	struct net_device *dev;
+	int err;
+
+	if (!ocelot_port)
+		return -EOPNOTSUPP;
+
+	priv = container_of(ocelot_port, struct ocelot_port_private, port);
+	dev = priv->dev;
+
+	if (ocelot->mrp_ring_id != mrp->ring_id)
+		return -EINVAL;
+
+	if (!mrp->sw_backup)
+		return -EOPNOTSUPP;
+
+	if (ocelot->mrp_p_port != dev && ocelot->mrp_s_port != dev)
+		return 0;
+
+	filter = kzalloc(sizeof(*filter), GFP_ATOMIC);
+	if (!filter)
+		return -ENOMEM;
+
+	filter->key_type = OCELOT_VCAP_KEY_ETYPE;
+	filter->prio = 1;
+	filter->id.cookie = priv->chip_port;
+	filter->id.tc_offload = false;
+	filter->block_id = VCAP_IS2;
+	filter->type = OCELOT_VCAP_FILTER_OFFLOAD;
+	filter->ingress_port_mask = BIT(priv->chip_port);
+	*(__be16 *)filter->key.etype.etype.value = htons(ETH_P_MRP);
+	*(__be16 *)filter->key.etype.etype.mask = htons(0xffff);
+	filter->action.mask_mode = OCELOT_MASK_MODE_PERMIT_DENY;
+	filter->action.port_mask = 0x0;
+	filter->action.cpu_copy_ena = true;
+	filter->action.cpu_qu_num = OCELOT_MRP_CPUQ;
+
+	err = ocelot_vcap_filter_add(ocelot, filter, NULL);
+	if (err)
+		kfree(filter);
+
+	return err;
+}
+EXPORT_SYMBOL(ocelot_mrp_add_ring_role);
+
+int ocelot_mrp_del_ring_role(struct ocelot *ocelot, int port,
+			     const struct switchdev_obj_ring_role_mrp *mrp)
+{
+	struct ocelot_port *ocelot_port = ocelot->ports[port];
+	struct ocelot_port_private *priv;
+	struct net_device *dev;
+
+	if (!ocelot_port)
+		return -EOPNOTSUPP;
+
+	priv = container_of(ocelot_port, struct ocelot_port_private, port);
+	dev = priv->dev;
+
+	if (ocelot->mrp_ring_id != mrp->ring_id)
+		return -EINVAL;
+
+	if (!mrp->sw_backup)
+		return -EOPNOTSUPP;
+
+	if (ocelot->mrp_p_port != dev && ocelot->mrp_s_port != dev)
+		return 0;
+
+	return ocelot_mrp_del_vcap(ocelot, priv->chip_port);
+}
+EXPORT_SYMBOL(ocelot_mrp_del_ring_role);
diff --git a/drivers/net/ethernet/mscc/ocelot_net.c b/drivers/net/ethernet/mscc/ocelot_net.c
index 6518262532f0..12cb6867a2d0 100644
--- a/drivers/net/ethernet/mscc/ocelot_net.c
+++ b/drivers/net/ethernet/mscc/ocelot_net.c
@@ -1010,6 +1010,52 @@ static int ocelot_port_obj_del_mdb(struct net_device *dev,
 	return ocelot_port_mdb_del(ocelot, port, mdb);
 }
 
+static int ocelot_port_obj_mrp_add(struct net_device *dev,
+				   const struct switchdev_obj_mrp *mrp)
+{
+	struct ocelot_port_private *priv = netdev_priv(dev);
+	struct ocelot_port *ocelot_port = &priv->port;
+	struct ocelot *ocelot = ocelot_port->ocelot;
+	int port = priv->chip_port;
+
+	return ocelot_mrp_add(ocelot, port, mrp);
+}
+
+static int ocelot_port_obj_mrp_del(struct net_device *dev,
+				   const struct switchdev_obj_mrp *mrp)
+{
+	struct ocelot_port_private *priv = netdev_priv(dev);
+	struct ocelot_port *ocelot_port = &priv->port;
+	struct ocelot *ocelot = ocelot_port->ocelot;
+	int port = priv->chip_port;
+
+	return ocelot_mrp_del(ocelot, port, mrp);
+}
+
+static int
+ocelot_port_obj_mrp_add_ring_role(struct net_device *dev,
+				  const struct switchdev_obj_ring_role_mrp *mrp)
+{
+	struct ocelot_port_private *priv = netdev_priv(dev);
+	struct ocelot_port *ocelot_port = &priv->port;
+	struct ocelot *ocelot = ocelot_port->ocelot;
+	int port = priv->chip_port;
+
+	return ocelot_mrp_add_ring_role(ocelot, port, mrp);
+}
+
+static int
+ocelot_port_obj_mrp_del_ring_role(struct net_device *dev,
+				  const struct switchdev_obj_ring_role_mrp *mrp)
+{
+	struct ocelot_port_private *priv = netdev_priv(dev);
+	struct ocelot_port *ocelot_port = &priv->port;
+	struct ocelot *ocelot = ocelot_port->ocelot;
+	int port = priv->chip_port;
+
+	return ocelot_mrp_del_ring_role(ocelot, port, mrp);
+}
+
 static int ocelot_port_obj_add(struct net_device *dev,
 			       const struct switchdev_obj *obj,
 			       struct netlink_ext_ack *extack)
@@ -1024,6 +1070,13 @@ static int ocelot_port_obj_add(struct net_device *dev,
 	case SWITCHDEV_OBJ_ID_PORT_MDB:
 		ret = ocelot_port_obj_add_mdb(dev, SWITCHDEV_OBJ_PORT_MDB(obj));
 		break;
+	case SWITCHDEV_OBJ_ID_MRP:
+		ret = ocelot_port_obj_mrp_add(dev, SWITCHDEV_OBJ_MRP(obj));
+		break;
+	case SWITCHDEV_OBJ_ID_RING_ROLE_MRP:
+		ret = ocelot_port_obj_mrp_add_ring_role(dev,
+							SWITCHDEV_OBJ_RING_ROLE_MRP(obj));
+		break;
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -1044,6 +1097,13 @@ static int ocelot_port_obj_del(struct net_device *dev,
 	case SWITCHDEV_OBJ_ID_PORT_MDB:
 		ret = ocelot_port_obj_del_mdb(dev, SWITCHDEV_OBJ_PORT_MDB(obj));
 		break;
+	case SWITCHDEV_OBJ_ID_MRP:
+		ret = ocelot_port_obj_mrp_del(dev, SWITCHDEV_OBJ_MRP(obj));
+		break;
+	case SWITCHDEV_OBJ_ID_RING_ROLE_MRP:
+		ret = ocelot_port_obj_mrp_del_ring_role(dev,
+							SWITCHDEV_OBJ_RING_ROLE_MRP(obj));
+		break;
 	default:
 		return -EOPNOTSUPP;
 	}
diff --git a/include/linux/dsa/ocelot.h b/include/linux/dsa/ocelot.h
index c6bc45ae5e03..4265f328681a 100644
--- a/include/linux/dsa/ocelot.h
+++ b/include/linux/dsa/ocelot.h
@@ -160,6 +160,11 @@ static inline void ocelot_xfh_get_src_port(void *extraction, u64 *src_port)
 	packing(extraction, src_port, 46, 43, OCELOT_TAG_LEN, UNPACK, 0);
 }
 
+static inline void ocelot_xfh_get_cpuq(void *extraction, u64 *cpuq)
+{
+	packing(extraction, cpuq, 28, 20, OCELOT_TAG_LEN, UNPACK, 0);
+}
+
 static inline void ocelot_xfh_get_qos_class(void *extraction, u64 *qos_class)
 {
 	packing(extraction, qos_class, 19, 17, OCELOT_TAG_LEN, UNPACK, 0);
diff --git a/include/soc/mscc/ocelot.h b/include/soc/mscc/ocelot.h
index 1f2d90976564..425ff29d9389 100644
--- a/include/soc/mscc/ocelot.h
+++ b/include/soc/mscc/ocelot.h
@@ -112,6 +112,8 @@
 #define REG_RESERVED_ADDR		0xffffffff
 #define REG_RESERVED(reg)		REG(reg, REG_RESERVED_ADDR)
 
+#define OCELOT_MRP_CPUQ			7
+
 enum ocelot_target {
 	ANA = 1,
 	QS,
@@ -677,6 +679,12 @@ struct ocelot {
 	/* Protects the PTP clock */
 	spinlock_t			ptp_clock_lock;
 	struct ptp_pin_desc		ptp_pins[OCELOT_PTP_PINS_NUM];
+
+#if IS_ENABLED(CONFIG_BRIDGE_MRP)
+	u16				mrp_ring_id;
+	struct net_device		*mrp_p_port;
+	struct net_device		*mrp_s_port;
+#endif
 };
 
 struct ocelot_policer {
@@ -874,4 +882,41 @@ int ocelot_sb_occ_tc_port_bind_get(struct ocelot *ocelot, int port,
 				   enum devlink_sb_pool_type pool_type,
 				   u32 *p_cur, u32 *p_max);
 
+#if IS_ENABLED(CONFIG_BRIDGE_MRP)
+int ocelot_mrp_add(struct ocelot *ocelot, int port,
+		   const struct switchdev_obj_mrp *mrp);
+int ocelot_mrp_del(struct ocelot *ocelot, int port,
+		   const struct switchdev_obj_mrp *mrp);
+int ocelot_mrp_add_ring_role(struct ocelot *ocelot, int port,
+			     const struct switchdev_obj_ring_role_mrp *mrp);
+int ocelot_mrp_del_ring_role(struct ocelot *ocelot, int port,
+			     const struct switchdev_obj_ring_role_mrp *mrp);
+#else
+static inline int ocelot_mrp_add(struct ocelot *ocelot, int port,
+				 const struct switchdev_obj_mrp *mrp)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline int ocelot_mrp_del(struct ocelot *ocelot, int port,
+				 const struct switchdev_obj_mrp *mrp)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline int
+ocelot_mrp_add_ring_role(struct ocelot *ocelot, int port,
+			 const struct switchdev_obj_ring_role_mrp *mrp)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline int
+ocelot_mrp_del_ring_role(struct ocelot *ocelot, int port,
+			 const struct switchdev_obj_ring_role_mrp *mrp)
+{
+	return -EOPNOTSUPP;
+}
+#endif
+
 #endif
-- 
2.27.0

