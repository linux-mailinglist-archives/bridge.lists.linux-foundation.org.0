Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 709EA2C793D
	for <lists.bridge@lfdr.de>; Sun, 29 Nov 2020 14:06:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 083CD87729;
	Sun, 29 Nov 2020 13:06:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yS0zkRh3yWh2; Sun, 29 Nov 2020 13:05:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2025E876FA;
	Sun, 29 Nov 2020 13:05:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 132DCC0052;
	Sun, 29 Nov 2020 13:05:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9DD6EC0052
 for <bridge@lists.linux-foundation.org>; Sun, 29 Nov 2020 13:05:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 72CFF20504
 for <bridge@lists.linux-foundation.org>; Sun, 29 Nov 2020 13:05:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qNPGVl1+FwcW for <bridge@lists.linux-foundation.org>;
 Sun, 29 Nov 2020 13:05:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by silver.osuosl.org (Postfix) with ESMTPS id 8A1EB204E4
 for <bridge@lists.linux-foundation.org>; Sun, 29 Nov 2020 13:05:54 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 2BC145806D5;
 Sun, 29 Nov 2020 07:54:51 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Sun, 29 Nov 2020 07:54:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=sSjjoOHJidT9/pIgLFsq3W+LBsl+cz9iS4/agq0LRNc=; b=dCE5BE0K
 JTFEB+bRKm0TMx+68B7cLds0eFst7oR9KhXl+39XxK03m7vd9f1nOjYe/L7UqPHQ
 tNY4C9juXW8p+Z5OfnM6ear4Li4lFbnXm1RQ8DAhi5xEQ2VR4aGMbzC5OUY540Ha
 KDXn4pYTcu23FkpKhFHkf9KzsKAZrPqBCS3SQDbec86LPxk5i0w8W46DMdYfjYKy
 wEhrKxaH2kYKg0C3vczVzVi/daIbxktOrQhlFLKD62OAzvSxR/N1uSq6uZUpBZRp
 lEHZg3qLM106HdA7qzp+YD7bAM27fX4o5FjjxKLF34/FenT5ppsaUyJIhrlfWmLW
 H4j58Q7jriiYxA==
X-ME-Sender: <xms:G5rDX9bK1K7_DIX2e0Qq9S00WALT73fx11_thWz-wpIhmLE8xKKQ-g>
 <xme:G5rDX0a9FHjQ4XzT3ELSnuJDmmYYh7mJ4zfOihUYimoyJYJnLEyGOm8CVHgYLfeRD
 XJr5MdDJrX3sfo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudehkedggeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepkfguohcuufgthhhimhhmvghluceoihguohhstghhsehiugho
 shgthhdrohhrgheqnecuggftrfgrthhtvghrnhepudetieevffffveelkeeljeffkefhke
 ehgfdtffethfelvdejgffghefgveejkefhnecukfhppeekgedrvddvledrudehgedrudeg
 jeenucevlhhushhtvghrufhiiigvpeefnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:G5rDX__Syeqo_b26UFSX90kF2eyqxMt9yOndELkKaaTcie3KFYpA4Q>
 <xmx:G5rDX7pcdzX4wEtaJJk9sAMkV7QzWjireWLukiUyYGqUIe02YSjtJQ>
 <xmx:G5rDX4pb3QQH-ObW74nJ7cs_T4GK3ExlcRDRI1IQiN_l9jCLyFSOXQ>
 <xmx:G5rDX_0fZWOgMKVE8EQdEA_gqtEoPLqHwD8wL_7KqUrmPg2IZTNAyg>
Received: from shredder.lan (igld-84-229-154-147.inter.net.il [84.229.154.147])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1ED253064AB3;
 Sun, 29 Nov 2020 07:54:48 -0500 (EST)
From: Ido Schimmel <idosch@idosch.org>
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Sun, 29 Nov 2020 14:54:03 +0200
Message-Id: <20201129125407.1391557-6-idosch@idosch.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201129125407.1391557-1-idosch@idosch.org>
References: <20201129125407.1391557-1-idosch@idosch.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ivecera@redhat.com, petrm@nvidia.com, amcohen@nvidia.com,
 danieller@nvidia.com, mlxsw@nvidia.com, Ido Schimmel <idosch@nvidia.com>,
 jiri@nvidia.com, nikolay@nvidia.com, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 5/9] mlxsw: spectrum_switchdev: Create
	common functions for VLAN-aware bridge
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

From: Amit Cohen <amcohen@nvidia.com>

The code in mlxsw_sp_bridge_8021q_port_{join, leave}() can be used also
for 802.1ad bridge.

Move the code to functions called
mlxsw_sp_bridge_vlan_aware_port_{join, leave}() and call them from
mlxsw_sp_bridge_8021q_port_{join, leave}() respectively to enable code
reuse.

Signed-off-by: Amit Cohen <amcohen@nvidia.com>
Reviewed-by: Petr Machata <petrm@nvidia.com>
Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 .../mellanox/mlxsw/spectrum_switchdev.c       | 29 ++++++++++++++-----
 1 file changed, 22 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c b/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
index a4aa2f620066..dfb97a847efc 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
@@ -1979,10 +1979,9 @@ static struct mlxsw_sp_port *mlxsw_sp_lag_rep_port(struct mlxsw_sp *mlxsw_sp,
 }
 
 static int
-mlxsw_sp_bridge_8021q_port_join(struct mlxsw_sp_bridge_device *bridge_device,
-				struct mlxsw_sp_bridge_port *bridge_port,
-				struct mlxsw_sp_port *mlxsw_sp_port,
-				struct netlink_ext_ack *extack)
+mlxsw_sp_bridge_vlan_aware_port_join(struct mlxsw_sp_bridge_port *bridge_port,
+				     struct mlxsw_sp_port *mlxsw_sp_port,
+				     struct netlink_ext_ack *extack)
 {
 	if (is_vlan_dev(bridge_port->dev)) {
 		NL_SET_ERR_MSG_MOD(extack, "Can not enslave a VLAN device to a VLAN-aware bridge");
@@ -1996,16 +1995,32 @@ mlxsw_sp_bridge_8021q_port_join(struct mlxsw_sp_bridge_device *bridge_device,
 	return 0;
 }
 
+static int
+mlxsw_sp_bridge_8021q_port_join(struct mlxsw_sp_bridge_device *bridge_device,
+				struct mlxsw_sp_bridge_port *bridge_port,
+				struct mlxsw_sp_port *mlxsw_sp_port,
+				struct netlink_ext_ack *extack)
+{
+	return mlxsw_sp_bridge_vlan_aware_port_join(bridge_port, mlxsw_sp_port,
+						    extack);
+}
+
 static void
-mlxsw_sp_bridge_8021q_port_leave(struct mlxsw_sp_bridge_device *bridge_device,
-				 struct mlxsw_sp_bridge_port *bridge_port,
-				 struct mlxsw_sp_port *mlxsw_sp_port)
+mlxsw_sp_bridge_vlan_aware_port_leave(struct mlxsw_sp_port *mlxsw_sp_port)
 {
 	/* Make sure untagged frames are allowed to ingress */
 	mlxsw_sp_port_pvid_set(mlxsw_sp_port, MLXSW_SP_DEFAULT_VID,
 			       ETH_P_8021Q);
 }
 
+static void
+mlxsw_sp_bridge_8021q_port_leave(struct mlxsw_sp_bridge_device *bridge_device,
+				 struct mlxsw_sp_bridge_port *bridge_port,
+				 struct mlxsw_sp_port *mlxsw_sp_port)
+{
+	mlxsw_sp_bridge_vlan_aware_port_leave(mlxsw_sp_port);
+}
+
 static int
 mlxsw_sp_bridge_8021q_vxlan_join(struct mlxsw_sp_bridge_device *bridge_device,
 				 const struct net_device *vxlan_dev, u16 vid,
-- 
2.28.0

