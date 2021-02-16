Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E185731D243
	for <lists.bridge@lfdr.de>; Tue, 16 Feb 2021 22:43:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D82A6F4C3
	for <lists.bridge@lfdr.de>; Tue, 16 Feb 2021 21:43:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nLu0exKFiCEN for <lists.bridge@lfdr.de>;
	Tue, 16 Feb 2021 21:43:53 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 38E746F604; Tue, 16 Feb 2021 21:43:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 085676F488;
	Tue, 16 Feb 2021 21:43:43 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D3EB4C013A;
	Tue, 16 Feb 2021 21:43:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6C624C013A
 for <bridge@lists.linux-foundation.org>; Tue, 16 Feb 2021 21:43:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4860B6E6C5
 for <bridge@lists.linux-foundation.org>; Tue, 16 Feb 2021 21:43:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8a_onDJ8PrB0 for <bridge@lists.linux-foundation.org>;
 Tue, 16 Feb 2021 21:43:39 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id C4A886F52B; Tue, 16 Feb 2021 21:43:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.153.233])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 11D0C6E6C5
 for <bridge@lists.linux-foundation.org>; Tue, 16 Feb 2021 21:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1613511819; x=1645047819;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Gp4caLKlfnoLVZRpF6jlM07fPL/2zmo4pnd4nWdMjJ0=;
 b=Ieg0hK0Nn8xR0ZWbgUKafI04jtwqz1E1lL61+aWLdkVaNk8Qz8zfYcm7
 ASwDvINf9gDDtlZLoYYeO3Q5HEHFkJiooASjfWUCvVsiv4qR2R2Aod/Ld
 6ne4xuZK/u8woNH7cPI6v0zXkjHw1szVK8jfoi51uoOkmmxvDJY5m1Yj/
 rOnDIjy5ZT1sgTrUVTK2Huw7poT2bS/ZaobBL0KanDTP9eH+brVbLQ47T
 N3GPJ4eApZ2/687oKh9m2c1kUfCfSFnjRB+AWMSGjkX3HSLJA9AT4tTIN
 2aY00sH8uCcPUIPI/9QKW8s+ek22EaTnLEnsKkmdUP3K/5+4EsxPHdEyk A==;
IronPort-SDR: AYi1YPRFLf5chRfkxx/IRY1hD3qTT8SDzekiduiY5dIKaIdxlPXUBk1BHtBZit+s5UjBpHsjK9
 5wcUzbPQ6MoPF9bb6+Ksp0f51PQZFqkAEMmHY9hBIABJsPK5BumznccIlsCxLgwJ/24zz9BfDL
 WxzznHxBdzTWwm2kg4BGkN6cp/PCrB7IFN94Lr5RgQ4vDa0jZIl80vQW/WzlysZC8rk3OOjiPs
 Fqm0IyuXDX5+a4c/RxyXa0gK2+QMbX5py4MRws9zcrCI+26NBokMeyQN2Sx8BaDKVdREJocy8u
 Fhg=
X-IronPort-AV: E=Sophos;i="5.81,184,1610434800"; d="scan'208";a="109421063"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Feb 2021 14:43:38 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 16 Feb 2021 14:43:25 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 16 Feb 2021 14:43:21 -0700
To: <davem@davemloft.net>, <kuba@kernel.org>
Date: Tue, 16 Feb 2021 22:42:04 +0100
Message-ID: <20210216214205.32385-8-horatiu.vultur@microchip.com>
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
Subject: [Bridge] [PATCH net-next v4 7/8] net: dsa: add MRP support
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

Add support for offloading MRP in HW. Currently implement the switchdev
calls 'SWITCHDEV_OBJ_ID_MRP', 'SWITCHDEV_OBJ_ID_RING_ROLE_MRP',
to allow to create MRP instances and to set the role of these instances.

Add DSA_NOTIFIER_MRP_ADD/DEL and DSA_NOTIFIER_MRP_ADD/DEL_RING_ROLE
which calls to .port_mrp_add/del and .port_mrp_add/del_ring_role in the
DSA driver for the switch.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 include/net/dsa.h  |  12 ++++++
 net/dsa/dsa_priv.h |  26 +++++++++++
 net/dsa/port.c     |  48 +++++++++++++++++++++
 net/dsa/slave.c    |  22 ++++++++++
 net/dsa/switch.c   | 105 +++++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 213 insertions(+)

diff --git a/include/net/dsa.h b/include/net/dsa.h
index 68f8159564a3..83a933e563fe 100644
--- a/include/net/dsa.h
+++ b/include/net/dsa.h
@@ -792,6 +792,18 @@ struct dsa_switch_ops {
 				 struct net_device *hsr);
 	int	(*port_hsr_leave)(struct dsa_switch *ds, int port,
 				  struct net_device *hsr);
+
+	/*
+	 * MRP integration
+	 */
+	int	(*port_mrp_add)(struct dsa_switch *ds, int port,
+				const struct switchdev_obj_mrp *mrp);
+	int	(*port_mrp_del)(struct dsa_switch *ds, int port,
+				const struct switchdev_obj_mrp *mrp);
+	int	(*port_mrp_add_ring_role)(struct dsa_switch *ds, int port,
+					  const struct switchdev_obj_ring_role_mrp *mrp);
+	int	(*port_mrp_del_ring_role)(struct dsa_switch *ds, int port,
+					  const struct switchdev_obj_ring_role_mrp *mrp);
 };
 
 #define DSA_DEVLINK_PARAM_DRIVER(_id, _name, _type, _cmodes)		\
diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
index e9d1e76c42ba..2eeaa42f2e08 100644
--- a/net/dsa/dsa_priv.h
+++ b/net/dsa/dsa_priv.h
@@ -31,6 +31,10 @@ enum {
 	DSA_NOTIFIER_VLAN_DEL,
 	DSA_NOTIFIER_MTU,
 	DSA_NOTIFIER_TAG_PROTO,
+	DSA_NOTIFIER_MRP_ADD,
+	DSA_NOTIFIER_MRP_DEL,
+	DSA_NOTIFIER_MRP_ADD_RING_ROLE,
+	DSA_NOTIFIER_MRP_DEL_RING_ROLE,
 };
 
 /* DSA_NOTIFIER_AGEING_TIME */
@@ -91,6 +95,20 @@ struct dsa_notifier_tag_proto_info {
 	const struct dsa_device_ops *tag_ops;
 };
 
+/* DSA_NOTIFIER_MRP_* */
+struct dsa_notifier_mrp_info {
+	const struct switchdev_obj_mrp *mrp;
+	int sw_index;
+	int port;
+};
+
+/* DSA_NOTIFIER_MRP_* */
+struct dsa_notifier_mrp_ring_role_info {
+	const struct switchdev_obj_ring_role_mrp *mrp;
+	int sw_index;
+	int port;
+};
+
 struct dsa_switchdev_event_work {
 	struct dsa_switch *ds;
 	int port;
@@ -198,6 +216,14 @@ int dsa_port_vlan_add(struct dsa_port *dp,
 		      struct netlink_ext_ack *extack);
 int dsa_port_vlan_del(struct dsa_port *dp,
 		      const struct switchdev_obj_port_vlan *vlan);
+int dsa_port_mrp_add(const struct dsa_port *dp,
+		     const struct switchdev_obj_mrp *mrp);
+int dsa_port_mrp_del(const struct dsa_port *dp,
+		     const struct switchdev_obj_mrp *mrp);
+int dsa_port_mrp_add_ring_role(const struct dsa_port *dp,
+			       const struct switchdev_obj_ring_role_mrp *mrp);
+int dsa_port_mrp_del_ring_role(const struct dsa_port *dp,
+			       const struct switchdev_obj_ring_role_mrp *mrp);
 int dsa_port_link_register_of(struct dsa_port *dp);
 void dsa_port_link_unregister_of(struct dsa_port *dp);
 int dsa_port_hsr_join(struct dsa_port *dp, struct net_device *hsr);
diff --git a/net/dsa/port.c b/net/dsa/port.c
index 14a1d0d77657..c9c6d7ab3f47 100644
--- a/net/dsa/port.c
+++ b/net/dsa/port.c
@@ -564,6 +564,54 @@ int dsa_port_vlan_del(struct dsa_port *dp,
 	return dsa_port_notify(dp, DSA_NOTIFIER_VLAN_DEL, &info);
 }
 
+int dsa_port_mrp_add(const struct dsa_port *dp,
+		     const struct switchdev_obj_mrp *mrp)
+{
+	struct dsa_notifier_mrp_info info = {
+		.sw_index = dp->ds->index,
+		.port = dp->index,
+		.mrp = mrp,
+	};
+
+	return dsa_port_notify(dp, DSA_NOTIFIER_MRP_ADD, &info);
+}
+
+int dsa_port_mrp_del(const struct dsa_port *dp,
+		     const struct switchdev_obj_mrp *mrp)
+{
+	struct dsa_notifier_mrp_info info = {
+		.sw_index = dp->ds->index,
+		.port = dp->index,
+		.mrp = mrp,
+	};
+
+	return dsa_port_notify(dp, DSA_NOTIFIER_MRP_DEL, &info);
+}
+
+int dsa_port_mrp_add_ring_role(const struct dsa_port *dp,
+			       const struct switchdev_obj_ring_role_mrp *mrp)
+{
+	struct dsa_notifier_mrp_ring_role_info info = {
+		.sw_index = dp->ds->index,
+		.port = dp->index,
+		.mrp = mrp,
+	};
+
+	return dsa_port_notify(dp, DSA_NOTIFIER_MRP_ADD_RING_ROLE, &info);
+}
+
+int dsa_port_mrp_del_ring_role(const struct dsa_port *dp,
+			       const struct switchdev_obj_ring_role_mrp *mrp)
+{
+	struct dsa_notifier_mrp_ring_role_info info = {
+		.sw_index = dp->ds->index,
+		.port = dp->index,
+		.mrp = mrp,
+	};
+
+	return dsa_port_notify(dp, DSA_NOTIFIER_MRP_DEL_RING_ROLE, &info);
+}
+
 void dsa_port_set_tag_protocol(struct dsa_port *cpu_dp,
 			       const struct dsa_device_ops *tag_ops)
 {
diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index 5ecb43a1b6e0..491e3761b5f4 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -404,6 +404,17 @@ static int dsa_slave_port_obj_add(struct net_device *dev,
 	case SWITCHDEV_OBJ_ID_PORT_VLAN:
 		err = dsa_slave_vlan_add(dev, obj, extack);
 		break;
+	case SWITCHDEV_OBJ_ID_MRP:
+		if (!dsa_port_offloads_netdev(dp, obj->orig_dev))
+			return -EOPNOTSUPP;
+		err = dsa_port_mrp_add(dp, SWITCHDEV_OBJ_MRP(obj));
+		break;
+	case SWITCHDEV_OBJ_ID_RING_ROLE_MRP:
+		if (!dsa_port_offloads_netdev(dp, obj->orig_dev))
+			return -EOPNOTSUPP;
+		err = dsa_port_mrp_add_ring_role(dp,
+						 SWITCHDEV_OBJ_RING_ROLE_MRP(obj));
+		break;
 	default:
 		err = -EOPNOTSUPP;
 		break;
@@ -461,6 +472,17 @@ static int dsa_slave_port_obj_del(struct net_device *dev,
 	case SWITCHDEV_OBJ_ID_PORT_VLAN:
 		err = dsa_slave_vlan_del(dev, obj);
 		break;
+	case SWITCHDEV_OBJ_ID_MRP:
+		if (!dsa_port_offloads_netdev(dp, obj->orig_dev))
+			return -EOPNOTSUPP;
+		err = dsa_port_mrp_del(dp, SWITCHDEV_OBJ_MRP(obj));
+		break;
+	case SWITCHDEV_OBJ_ID_RING_ROLE_MRP:
+		if (!dsa_port_offloads_netdev(dp, obj->orig_dev))
+			return -EOPNOTSUPP;
+		err = dsa_port_mrp_del_ring_role(dp,
+						 SWITCHDEV_OBJ_RING_ROLE_MRP(obj));
+		break;
 	default:
 		err = -EOPNOTSUPP;
 		break;
diff --git a/net/dsa/switch.c b/net/dsa/switch.c
index db2a9b221988..4b5da89dc27a 100644
--- a/net/dsa/switch.c
+++ b/net/dsa/switch.c
@@ -372,6 +372,99 @@ static int dsa_switch_change_tag_proto(struct dsa_switch *ds,
 	return 0;
 }
 
+static bool dsa_switch_mrp_match(struct dsa_switch *ds, int port,
+				 struct dsa_notifier_mrp_info *info)
+{
+	if (ds->index == info->sw_index && port == info->port)
+		return true;
+
+	if (dsa_is_dsa_port(ds, port))
+		return true;
+
+	return false;
+}
+
+static int dsa_switch_mrp_add(struct dsa_switch *ds,
+			      struct dsa_notifier_mrp_info *info)
+{
+	int err = 0;
+	int port;
+
+	if (!ds->ops->port_mrp_add)
+		return -EOPNOTSUPP;
+
+	for (port = 0; port < ds->num_ports; port++) {
+		if (dsa_switch_mrp_match(ds, port, info)) {
+			err = ds->ops->port_mrp_add(ds, port, info->mrp);
+			if (err)
+				break;
+		}
+	}
+
+	return err;
+}
+
+static int dsa_switch_mrp_del(struct dsa_switch *ds,
+			      struct dsa_notifier_mrp_info *info)
+{
+	if (!ds->ops->port_mrp_del)
+		return -EOPNOTSUPP;
+
+	if (ds->index == info->sw_index)
+		return ds->ops->port_mrp_del(ds, info->port, info->mrp);
+
+	return 0;
+}
+
+static bool
+dsa_switch_mrp_ring_role_match(struct dsa_switch *ds, int port,
+			       struct dsa_notifier_mrp_ring_role_info *info)
+{
+	if (ds->index == info->sw_index && port == info->port)
+		return true;
+
+	if (dsa_is_dsa_port(ds, port))
+		return true;
+
+	return false;
+}
+
+static int
+dsa_switch_mrp_add_ring_role(struct dsa_switch *ds,
+			     struct dsa_notifier_mrp_ring_role_info *info)
+{
+	int err = 0;
+	int port;
+
+	if (!ds->ops->port_mrp_add)
+		return -EOPNOTSUPP;
+
+	for (port = 0; port < ds->num_ports; port++) {
+		if (dsa_switch_mrp_ring_role_match(ds, port, info)) {
+			err = ds->ops->port_mrp_add_ring_role(ds, port,
+							      info->mrp);
+			if (err)
+				break;
+		}
+	}
+
+	return err;
+}
+
+static int
+dsa_switch_mrp_del_ring_role(struct dsa_switch *ds,
+			     struct dsa_notifier_mrp_ring_role_info *info)
+{
+	if (!ds->ops->port_mrp_del)
+		return -EOPNOTSUPP;
+
+	if (ds->index == info->sw_index)
+		return ds->ops->port_mrp_del_ring_role(ds, info->port,
+						       info->mrp);
+
+	return 0;
+}
+
 static int dsa_switch_event(struct notifier_block *nb,
 			    unsigned long event, void *info)
 {
@@ -427,6 +520,18 @@ static int dsa_switch_event(struct notifier_block *nb,
 	case DSA_NOTIFIER_TAG_PROTO:
 		err = dsa_switch_change_tag_proto(ds, info);
 		break;
+	case DSA_NOTIFIER_MRP_ADD:
+		err = dsa_switch_mrp_add(ds, info);
+		break;
+	case DSA_NOTIFIER_MRP_DEL:
+		err = dsa_switch_mrp_del(ds, info);
+		break;
+	case DSA_NOTIFIER_MRP_ADD_RING_ROLE:
+		err = dsa_switch_mrp_add_ring_role(ds, info);
+		break;
+	case DSA_NOTIFIER_MRP_DEL_RING_ROLE:
+		err = dsa_switch_mrp_del_ring_role(ds, info);
+		break;
 	default:
 		err = -EOPNOTSUPP;
 		break;
-- 
2.27.0

