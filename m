Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA0F3016B9
	for <lists.bridge@lfdr.de>; Sat, 23 Jan 2021 17:20:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 19D7E8713D;
	Sat, 23 Jan 2021 16:20:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aHmn0QMUU5Xv; Sat, 23 Jan 2021 16:20:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id CE0CB87159;
	Sat, 23 Jan 2021 16:20:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BDF08C013A;
	Sat, 23 Jan 2021 16:20:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6D70CC08A1
 for <bridge@lists.linux-foundation.org>; Sat, 23 Jan 2021 16:19:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 47B6E2012F
 for <bridge@lists.linux-foundation.org>; Sat, 23 Jan 2021 16:19:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c9XQu2pY6PYn for <bridge@lists.linux-foundation.org>;
 Sat, 23 Jan 2021 16:19:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.153.233])
 by silver.osuosl.org (Postfix) with ESMTPS id C679220469
 for <bridge@lists.linux-foundation.org>; Sat, 23 Jan 2021 16:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1611418797; x=1642954797;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qTtsLy9WYlJggMUpOJdxbLdFGX/eib7pjLItnhe6z7Q=;
 b=pLGxYz63+s38F1TV8p3is24J0SMXgUo+Rh737TYOUNc/7essocpeWX5k
 lJhLO9lGb0V00UXR0ro6/DIgEwx8PHFa9zbRzLgGG1u1ePOJ+xBdBta3f
 haYISe4wrJXZ6Zrk3eAA+kG3NAjTqPXh5lFS48FmceXgFdxUHOQ/dub89
 6YSVMLo5qO7n/FpFNHS9f4AHkZmOVUQ/jPRvzFSQC3z3K+nmPKtSeDbY4
 Prc8an9Ci4h/SoyKfy7Yw68vZJpEKD+sNBXi0GVGyZZmfq9nnzcgRLwpI
 /pzVlqukZrO1cTPWGtgb+LuuDlAuZIZ6r3Dx0uljMBpHOwhXfV0y0iObj A==;
IronPort-SDR: aye/YBb1IajPmPuc/7mxm7V5kLJrma67pMwlCnf+3E1TlHuKNBgO/ytqtkQPqj+LFXz3prGY0K
 QpkgtdKfd2R6eAzoWUqgTxKswLCd/UTZnZ9ZaKPyuGZYiGZCczQQwHQpAPGicZUEbuD+wfNHZ7
 KM0o/vfdpUjpkzfZ4qKaoNfkGoNIbP45J8FJvF5/LlylkptcVcpgo8DYODRUvVeE81eFgyTMyp
 DFv7mqaY+5q2Dw0hx479qAwHFEVXPjRQafObq5gIiV77vAoH+ddUSYf5i7bp11GCpvLudAEup2
 qaM=
X-IronPort-AV: E=Sophos;i="5.79,369,1602572400"; d="scan'208";a="107044714"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jan 2021 09:19:56 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Sat, 23 Jan 2021 09:19:56 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Sat, 23 Jan 2021 09:19:54 -0700
To: <jiri@resnulli.us>, <ivecera@redhat.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <roopa@nvidia.com>, <nikolay@nvidia.com>,
 <rasmus.villemoes@prevas.dk>, <andrew@lunn.ch>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Sat, 23 Jan 2021 17:18:11 +0100
Message-ID: <20210123161812.1043345-4-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210123161812.1043345-1-horatiu.vultur@microchip.com>
References: <20210123161812.1043345-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next 3/4] bridge: mrp: Extend br_mrp_switchdev
	to detect better the errors
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

This patch extends the br_mrp_switchdev functions to be able to have a
better understanding what cause the issue and if the SW needs to be used
as a backup.

There are the following cases:
- when the code is compiled without CONFIG_NET_SWITCHDEV. In this case
  return success so the SW can continue with the protocol. Depending on
  the function it returns 0 or BR_MRP_SW.
- when code is compiled with CONFIG_NET_SWITCHDEV and the driver doesn't
  implement any MRP callbacks, then the HW can't run MRP so it just
  returns -EOPNOTSUPP. So the SW will stop further to configure the
  node.
- when code is compiled with CONFIG_NET_SWITCHDEV and the driver fully
  supports any MRP functionality then the SW doesn't need to do
  anything.  The functions will return 0 or BR_MRP_HW.
- when code is compiled with CONFIG_NET_SWITCHDEV and the HW can't run
  completely the protocol but it can help the SW to run it.  For
  example, the HW can't support completely MRM role(can't detect when it
  stops receiving MRP Test frames) but it can redirect these frames to
  CPU. In this case it is possible to have a SW fallback. The SW will
  try initially to call the driver with sw_backup set to false, meaning
  that the HW can implement completely the role. If the driver returns
  -EOPNOTSUPP, the SW will try again with sw_backup set to false,
  meaning that the SW will detect when it stops receiving the frames. In
  case the driver returns 0 then the SW will continue to configure the
  node accordingly.

In this way is more clear when the SW needs to stop configuring the
node, or when the SW is used as a backup or the HW can implement the
functionality.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_mrp_switchdev.c | 189 +++++++++++++++++++++++++---------
 net/bridge/br_private_mrp.h   |  24 +++--
 2 files changed, 152 insertions(+), 61 deletions(-)

diff --git a/net/bridge/br_mrp_switchdev.c b/net/bridge/br_mrp_switchdev.c
index ed547e03ace1..e93a84532a4e 100644
--- a/net/bridge/br_mrp_switchdev.c
+++ b/net/bridge/br_mrp_switchdev.c
@@ -14,14 +14,12 @@ int br_mrp_switchdev_add(struct net_bridge *br, struct br_mrp *mrp)
 		.ring_id = mrp->ring_id,
 		.prio = mrp->prio,
 	};
-	int err;
-
-	err = switchdev_port_obj_add(br->dev, &mrp_obj.obj, NULL);
 
-	if (err && err != -EOPNOTSUPP)
-		return err;
+	/* If switchdev is not enabled then just run in SW */
+	if (!IS_ENABLED(CONFIG_NET_SWITCHDEV))
+		return 0;
 
-	return 0;
+	return switchdev_port_obj_add(br->dev, &mrp_obj.obj, NULL);
 }
 
 int br_mrp_switchdev_del(struct net_bridge *br, struct br_mrp *mrp)
@@ -33,40 +31,69 @@ int br_mrp_switchdev_del(struct net_bridge *br, struct br_mrp *mrp)
 		.s_port = NULL,
 		.ring_id = mrp->ring_id,
 	};
-	int err;
 
-	err = switchdev_port_obj_del(br->dev, &mrp_obj.obj);
+	/* If switchdev is not enabled then just run in SW */
+	if (!IS_ENABLED(CONFIG_NET_SWITCHDEV))
+		return 0;
 
-	if (err && err != -EOPNOTSUPP)
-		return err;
-
-	return 0;
+	return switchdev_port_obj_del(br->dev, &mrp_obj.obj);
 }
 
-int br_mrp_switchdev_set_ring_role(struct net_bridge *br,
-				   struct br_mrp *mrp,
-				   enum br_mrp_ring_role_type role)
+enum br_mrp_hw_support
+br_mrp_switchdev_set_ring_role(struct net_bridge *br, struct br_mrp *mrp,
+			       enum br_mrp_ring_role_type role)
 {
 	struct switchdev_obj_ring_role_mrp mrp_role = {
 		.obj.orig_dev = br->dev,
 		.obj.id = SWITCHDEV_OBJ_ID_RING_ROLE_MRP,
 		.ring_role = role,
 		.ring_id = mrp->ring_id,
+		.sw_backup = false,
 	};
 	int err;
 
+	/* If switchdev is not enabled then just run in SW */
+	if (!IS_ENABLED(CONFIG_NET_SWITCHDEV))
+		return BR_MRP_SW;
+
+	/* First try to see if HW can implement comptletly the role in HW */
 	if (role == BR_MRP_RING_ROLE_DISABLED)
 		err = switchdev_port_obj_del(br->dev, &mrp_role.obj);
 	else
 		err = switchdev_port_obj_add(br->dev, &mrp_role.obj, NULL);
 
-	return err;
+	/* In case of success then just return and notify the SW that doesn't
+	 * need to do anything
+	 */
+	if (!err)
+		return BR_MRP_HW;
+
+	/* There was some issue then is not possible at all to have this role so
+	 * just return failire
+	 */
+	if (err != -EOPNOTSUPP)
+		return BR_MRP_NONE;
+
+	/* In case the HW can't run complety in HW the protocol, we try again
+	 * and this time to allow the SW to help, but the HW needs to redirect
+	 * the frames to CPU.
+	 */
+	mrp_role.sw_backup = true;
+	err = switchdev_port_obj_add(br->dev, &mrp_role.obj, NULL);
+
+	/* In case of success then notify the SW that it needs to help with the
+	 * protocol
+	 */
+	if (!err)
+		return BR_MRP_SW;
+
+	return BR_MRP_NONE;
 }
 
-int br_mrp_switchdev_send_ring_test(struct net_bridge *br,
-				    struct br_mrp *mrp, u32 interval,
-				    u8 max_miss, u32 period,
-				    bool monitor)
+enum br_mrp_hw_support
+br_mrp_switchdev_send_ring_test(struct net_bridge *br, struct br_mrp *mrp,
+				u32 interval, u8 max_miss, u32 period,
+				bool monitor)
 {
 	struct switchdev_obj_ring_test_mrp test = {
 		.obj.orig_dev = br->dev,
@@ -79,12 +106,29 @@ int br_mrp_switchdev_send_ring_test(struct net_bridge *br,
 	};
 	int err;
 
+	/* If switchdev is not enabled then just run in SW */
+	if (!IS_ENABLED(CONFIG_NET_SWITCHDEV))
+		return BR_MRP_SW;
+
 	if (interval == 0)
 		err = switchdev_port_obj_del(br->dev, &test.obj);
 	else
 		err = switchdev_port_obj_add(br->dev, &test.obj, NULL);
 
-	return err;
+	/* If everything succeed then the HW can send this frames, so the SW
+	 * doesn't need to generate them
+	 */
+	if (!err)
+		return BR_MRP_HW;
+
+	/* There was an error when the HW was configured so the SW return
+	 * failure
+	 */
+	if (err != -EOPNOTSUPP)
+		return BR_MRP_NONE;
+
+	/* So the HW can't generate these frames so allow the SW to do that */
+	return BR_MRP_SW;
 }
 
 int br_mrp_switchdev_set_ring_state(struct net_bridge *br,
@@ -97,19 +141,18 @@ int br_mrp_switchdev_set_ring_state(struct net_bridge *br,
 		.ring_state = state,
 		.ring_id = mrp->ring_id,
 	};
-	int err;
 
-	err = switchdev_port_obj_add(br->dev, &mrp_state.obj, NULL);
+	/* If switchdev is not enabled then just run in SW */
+	if (!IS_ENABLED(CONFIG_NET_SWITCHDEV))
+		return 0;
 
-	if (err && err != -EOPNOTSUPP)
-		return err;
-
-	return 0;
+	return switchdev_port_obj_add(br->dev, &mrp_state.obj, NULL);
 }
 
-int br_mrp_switchdev_set_in_role(struct net_bridge *br, struct br_mrp *mrp,
-				 u16 in_id, u32 ring_id,
-				 enum br_mrp_in_role_type role)
+enum br_mrp_hw_support
+br_mrp_switchdev_set_in_role(struct net_bridge *br, struct br_mrp *mrp,
+			     u16 in_id, u32 ring_id,
+			     enum br_mrp_in_role_type role)
 {
 	struct switchdev_obj_in_role_mrp mrp_role = {
 		.obj.orig_dev = br->dev,
@@ -118,15 +161,46 @@ int br_mrp_switchdev_set_in_role(struct net_bridge *br, struct br_mrp *mrp,
 		.in_id = mrp->in_id,
 		.ring_id = mrp->ring_id,
 		.i_port = rtnl_dereference(mrp->i_port)->dev,
+		.sw_backup = false,
 	};
 	int err;
 
+	/* If switchdev is not enabled then just run in SW */
+	if (!IS_ENABLED(CONFIG_NET_SWITCHDEV))
+		return BR_MRP_SW;
+
+	/* First try to see if HW can implement comptletly the role in HW */
 	if (role == BR_MRP_IN_ROLE_DISABLED)
 		err = switchdev_port_obj_del(br->dev, &mrp_role.obj);
 	else
 		err = switchdev_port_obj_add(br->dev, &mrp_role.obj, NULL);
 
-	return err;
+	/* In case of success then just return and notify the SW that doesn't
+	 * need to do anything
+	 */
+	if (!err)
+		return BR_MRP_HW;
+
+	/* There was some issue then is not possible at all to have this role so
+	 * just return failire
+	 */
+	if (err != -EOPNOTSUPP)
+		return BR_MRP_NONE;
+
+	/* In case the HW can't run complety in HW the protocol, we try again
+	 * and this time to allow the SW to help, but the HW needs to redirect
+	 * the frames to CPU.
+	 */
+	mrp_role.sw_backup = true;
+	err = switchdev_port_obj_add(br->dev, &mrp_role.obj, NULL);
+
+	/* In case of success then notify the SW that it needs to help with the
+	 * protocol
+	 */
+	if (!err)
+		return BR_MRP_SW;
+
+	return BR_MRP_NONE;
 }
 
 int br_mrp_switchdev_set_in_state(struct net_bridge *br, struct br_mrp *mrp,
@@ -138,18 +212,17 @@ int br_mrp_switchdev_set_in_state(struct net_bridge *br, struct br_mrp *mrp,
 		.in_state = state,
 		.in_id = mrp->in_id,
 	};
-	int err;
 
-	err = switchdev_port_obj_add(br->dev, &mrp_state.obj, NULL);
+	/* If switchdev is not enabled then just run in SW */
+	if (!IS_ENABLED(CONFIG_NET_SWITCHDEV))
+		return 0;
 
-	if (err && err != -EOPNOTSUPP)
-		return err;
-
-	return 0;
+	return switchdev_port_obj_add(br->dev, &mrp_state.obj, NULL);
 }
 
-int br_mrp_switchdev_send_in_test(struct net_bridge *br, struct br_mrp *mrp,
-				  u32 interval, u8 max_miss, u32 period)
+enum br_mrp_hw_support
+br_mrp_switchdev_send_in_test(struct net_bridge *br, struct br_mrp *mrp,
+			      u32 interval, u8 max_miss, u32 period)
 {
 	struct switchdev_obj_in_test_mrp test = {
 		.obj.orig_dev = br->dev,
@@ -161,12 +234,29 @@ int br_mrp_switchdev_send_in_test(struct net_bridge *br, struct br_mrp *mrp,
 	};
 	int err;
 
+	/* If switchdev is not enabled then just run in SW */
+	if (!IS_ENABLED(CONFIG_NET_SWITCHDEV))
+		return BR_MRP_SW;
+
 	if (interval == 0)
 		err = switchdev_port_obj_del(br->dev, &test.obj);
 	else
 		err = switchdev_port_obj_add(br->dev, &test.obj, NULL);
 
-	return err;
+	/* If everything succeed then the HW can send this frames, so the SW
+	 * doesn't need to generate them
+	 */
+	if (!err)
+		return BR_MRP_HW;
+
+	/* There was an error when the HW was configured so the SW return
+	 * failure
+	 */
+	if (err != -EOPNOTSUPP)
+		return BR_MRP_NONE;
+
+	/* So the HW can't generate these frames so allow the SW to do that */
+	return BR_MRP_SW;
 }
 
 int br_mrp_port_switchdev_set_state(struct net_bridge_port *p,
@@ -177,14 +267,12 @@ int br_mrp_port_switchdev_set_state(struct net_bridge_port *p,
 		.id = SWITCHDEV_ATTR_ID_MRP_PORT_STATE,
 		.u.mrp_port_state = state,
 	};
-	int err;
 
-	err = switchdev_port_attr_set(p->dev, &attr);
-	if (err && err != -EOPNOTSUPP)
-		br_warn(p->br, "error setting offload MRP state on port %u(%s)\n",
-			(unsigned int)p->port_no, p->dev->name);
+	/* If switchdev is not enabled then just run in SW */
+	if (!IS_ENABLED(CONFIG_NET_SWITCHDEV))
+		return 0;
 
-	return err;
+	return switchdev_port_attr_set(p->dev, &attr);
 }
 
 int br_mrp_port_switchdev_set_role(struct net_bridge_port *p,
@@ -195,11 +283,10 @@ int br_mrp_port_switchdev_set_role(struct net_bridge_port *p,
 		.id = SWITCHDEV_ATTR_ID_MRP_PORT_ROLE,
 		.u.mrp_port_role = role,
 	};
-	int err;
 
-	err = switchdev_port_attr_set(p->dev, &attr);
-	if (err && err != -EOPNOTSUPP)
-		return err;
+	/* If switchdev is not enabled then just run in SW */
+	if (!IS_ENABLED(CONFIG_NET_SWITCHDEV))
+		return 0;
 
-	return 0;
+	return switchdev_port_attr_set(p->dev, &attr);
 }
diff --git a/net/bridge/br_private_mrp.h b/net/bridge/br_private_mrp.h
index 31e666ae6955..e941dad398cf 100644
--- a/net/bridge/br_private_mrp.h
+++ b/net/bridge/br_private_mrp.h
@@ -79,24 +79,28 @@ int br_mrp_start_in_test(struct net_bridge *br,
 /* br_mrp_switchdev.c */
 int br_mrp_switchdev_add(struct net_bridge *br, struct br_mrp *mrp);
 int br_mrp_switchdev_del(struct net_bridge *br, struct br_mrp *mrp);
-int br_mrp_switchdev_set_ring_role(struct net_bridge *br, struct br_mrp *mrp,
-				   enum br_mrp_ring_role_type role);
+enum br_mrp_hw_support
+br_mrp_switchdev_set_ring_role(struct net_bridge *br, struct br_mrp *mrp,
+			       enum br_mrp_ring_role_type role);
 int br_mrp_switchdev_set_ring_state(struct net_bridge *br, struct br_mrp *mrp,
 				    enum br_mrp_ring_state_type state);
-int br_mrp_switchdev_send_ring_test(struct net_bridge *br, struct br_mrp *mrp,
-				    u32 interval, u8 max_miss, u32 period,
-				    bool monitor);
+enum br_mrp_hw_support
+br_mrp_switchdev_send_ring_test(struct net_bridge *br, struct br_mrp *mrp,
+				u32 interval, u8 max_miss, u32 period,
+				bool monitor);
 int br_mrp_port_switchdev_set_state(struct net_bridge_port *p,
 				    enum br_mrp_port_state_type state);
 int br_mrp_port_switchdev_set_role(struct net_bridge_port *p,
 				   enum br_mrp_port_role_type role);
-int br_mrp_switchdev_set_in_role(struct net_bridge *br, struct br_mrp *mrp,
-				 u16 in_id, u32 ring_id,
-				 enum br_mrp_in_role_type role);
+enum br_mrp_hw_support
+br_mrp_switchdev_set_in_role(struct net_bridge *br, struct br_mrp *mrp,
+			     u16 in_id, u32 ring_id,
+			     enum br_mrp_in_role_type role);
 int br_mrp_switchdev_set_in_state(struct net_bridge *br, struct br_mrp *mrp,
 				  enum br_mrp_in_state_type state);
-int br_mrp_switchdev_send_in_test(struct net_bridge *br, struct br_mrp *mrp,
-				  u32 interval, u8 max_miss, u32 period);
+enum br_mrp_hw_support
+br_mrp_switchdev_send_in_test(struct net_bridge *br, struct br_mrp *mrp,
+			      u32 interval, u8 max_miss, u32 period);
 
 /* br_mrp_netlink.c  */
 int br_mrp_ring_port_open(struct net_device *dev, u8 loc);
-- 
2.27.0

