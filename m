Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FEA2C793F
	for <lists.bridge@lfdr.de>; Sun, 29 Nov 2020 14:06:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9E9D087740;
	Sun, 29 Nov 2020 13:06:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1gIZIWulGQEj; Sun, 29 Nov 2020 13:06:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 625B687700;
	Sun, 29 Nov 2020 13:06:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 48AAEC163C;
	Sun, 29 Nov 2020 13:06:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3F585C1DA1
 for <bridge@lists.linux-foundation.org>; Sun, 29 Nov 2020 13:05:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 20ADE20504
 for <bridge@lists.linux-foundation.org>; Sun, 29 Nov 2020 13:05:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bA0L4tIIXEFx for <bridge@lists.linux-foundation.org>;
 Sun, 29 Nov 2020 13:05:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by silver.osuosl.org (Postfix) with ESMTPS id 8DC70204FF
 for <bridge@lists.linux-foundation.org>; Sun, 29 Nov 2020 13:05:54 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 6A1365806D3;
 Sun, 29 Nov 2020 07:54:53 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Sun, 29 Nov 2020 07:54:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=kNqS7yhDpJd+ZnqcatE/dfDQ3IbwSAHshT7DVEZ9ZRQ=; b=bc6GTzBd
 1S6qxSbNt7KzDFQkgCkmfQ+KsEQT5J5zVv7e30yiiYGyHh2X/TldYf6VmFC93+hG
 D+VACwjtorg6ITulXuwPoIwhcfUQxxvq7b1k3S94Fj5tQH5cmeoJPqVeK/C1Jiy4
 QFqMx1G7xP0Btjv0i48QPGTRVHfb7S8EUg68YQ9gVWpLJthcMZxGFCh++HFraPv9
 HLpWluu5lS4KNg7oP6FkDmw9LET+/l2CHW81aYOJkxeCEUR2uIBjrLeLEimxVc7e
 V+GNs2eO6PwAEPPp7p3JTuHV2TK3iZ0cN4htRXscyLvh2zEhqeQB15QhpgcQ3v/B
 G5O2DWk28ayLRg==
X-ME-Sender: <xms:HZrDX2Ov0yfBdZe2BFQKjm_bBS1P1TtDKqt_rQNIAYZTx8Dcrthr8Q>
 <xme:HZrDX0-77vVHSJkdOe7e90vG_hoBvZtSEJlvko7NraAHZv_yHnDfyy0L2RH6wbzLX
 nFeESnG7QTKPS8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudehkedggeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepkfguohcuufgthhhimhhmvghluceoihguohhstghhsehiugho
 shgthhdrohhrgheqnecuggftrfgrthhtvghrnhepudetieevffffveelkeeljeffkefhke
 ehgfdtffethfelvdejgffghefgveejkefhnecukfhppeekgedrvddvledrudehgedrudeg
 jeenucevlhhushhtvghrufhiiigvpeefnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:HZrDX9QSI1kkRuR-n4f9eesLZ2obm-j0wxGVVAAiBm5tSCXrK3tA6g>
 <xmx:HZrDX2voLO-3cvlLXBWqGAxcD7_FsSqZPvfIjrL7ibWwYzEzNNM-_w>
 <xmx:HZrDX-fb1nd6mEyCCHwQ-nwCKPkK2AsmZxVDEOjccTNYkmzeP0x13Q>
 <xmx:HZrDX-75yKHqDK74wI_kNNXCi-N2xXkXxwZRs2HEGoHRYMA_-NANcg>
Received: from shredder.lan (igld-84-229-154-147.inter.net.il [84.229.154.147])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4B6083064AAA;
 Sun, 29 Nov 2020 07:54:51 -0500 (EST)
From: Ido Schimmel <idosch@idosch.org>
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Sun, 29 Nov 2020 14:54:04 +0200
Message-Id: <20201129125407.1391557-7-idosch@idosch.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201129125407.1391557-1-idosch@idosch.org>
References: <20201129125407.1391557-1-idosch@idosch.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ivecera@redhat.com, petrm@nvidia.com, amcohen@nvidia.com,
 danieller@nvidia.com, mlxsw@nvidia.com, Ido Schimmel <idosch@nvidia.com>,
 jiri@nvidia.com, nikolay@nvidia.com, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 6/9] mlxsw: spectrum_switchdev: Add
	support of QinQ traffic
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

802.1ad, also known as QinQ is an extension to the 802.1q standard, which
is concerned with passing possibly 802.1q-tagged packets through another
VLAN-like tunnel. The format of 802.1ad tag is the same as 802.1q, except
it uses the EtherType of 0x88a8, unlike 802.1q's 0x8100.

Add support for 802.1ad protocol. Most of the configuration is the same
as 802.1q. The difference is that before a port joins an 802.1ad bridge it
needs to be configured to recognize 802.1ad packets as tagged and other
packets (e.g., 802.1q) as untagged.

VXLAN is not currently supported with 802.1ad bridge, so return an error
with an appropriate extack message.

Signed-off-by: Amit Cohen <amcohen@nvidia.com>
Reviewed-by: Petr Machata <petrm@nvidia.com>
Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 .../net/ethernet/mellanox/mlxsw/spectrum.c    |  2 +-
 .../net/ethernet/mellanox/mlxsw/spectrum.h    |  4 ++
 .../mellanox/mlxsw/spectrum_switchdev.c       | 61 ++++++++++++++++++-
 3 files changed, 65 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum.c b/drivers/net/ethernet/mellanox/mlxsw/spectrum.c
index 6ecd9a4dceee..fe954e87c5a7 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum.c
@@ -1411,7 +1411,7 @@ static int mlxsw_sp_port_overheat_init_val_set(struct mlxsw_sp_port *mlxsw_sp_po
 	return 0;
 }
 
-static int
+int
 mlxsw_sp_port_vlan_classification_set(struct mlxsw_sp_port *mlxsw_sp_port,
 				      bool is_8021ad_tagged,
 				      bool is_8021q_tagged)
diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum.h b/drivers/net/ethernet/mellanox/mlxsw/spectrum.h
index 338a4c9e329c..ce26cc41831f 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum.h
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum.h
@@ -428,6 +428,10 @@ int mlxsw_sp_port_get_stats_raw(struct net_device *dev, int grp,
 				int prio, char *ppcnt_pl);
 int mlxsw_sp_port_admin_status_set(struct mlxsw_sp_port *mlxsw_sp_port,
 				   bool is_up);
+int
+mlxsw_sp_port_vlan_classification_set(struct mlxsw_sp_port *mlxsw_sp_port,
+				      bool is_8021ad_tagged,
+				      bool is_8021q_tagged);
 
 /* spectrum_buffers.c */
 struct mlxsw_sp_hdroom_prio {
diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c b/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
index dfb97a847efc..d8ee8801331c 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
@@ -41,6 +41,7 @@ struct mlxsw_sp_bridge {
 	DECLARE_BITMAP(mids_bitmap, MLXSW_SP_MID_MAX);
 	const struct mlxsw_sp_bridge_ops *bridge_8021q_ops;
 	const struct mlxsw_sp_bridge_ops *bridge_8021d_ops;
+	const struct mlxsw_sp_bridge_ops *bridge_8021ad_ops;
 };
 
 struct mlxsw_sp_bridge_device {
@@ -228,8 +229,14 @@ mlxsw_sp_bridge_device_create(struct mlxsw_sp_bridge *bridge,
 	bridge_device->mrouter = br_multicast_router(br_dev);
 	INIT_LIST_HEAD(&bridge_device->ports_list);
 	if (vlan_enabled) {
+		u16 proto;
+
 		bridge->vlan_enabled_exists = true;
-		bridge_device->ops = bridge->bridge_8021q_ops;
+		br_vlan_get_proto(br_dev, &proto);
+		if (proto == ETH_P_8021AD)
+			bridge_device->ops = bridge->bridge_8021ad_ops;
+		else
+			bridge_device->ops = bridge->bridge_8021q_ops;
 	} else {
 		bridge_device->ops = bridge->bridge_8021d_ops;
 	}
@@ -2266,6 +2273,57 @@ static const struct mlxsw_sp_bridge_ops mlxsw_sp_bridge_8021d_ops = {
 	.fid_vid	= mlxsw_sp_bridge_8021d_fid_vid,
 };
 
+static int
+mlxsw_sp_bridge_8021ad_port_join(struct mlxsw_sp_bridge_device *bridge_device,
+				 struct mlxsw_sp_bridge_port *bridge_port,
+				 struct mlxsw_sp_port *mlxsw_sp_port,
+				 struct netlink_ext_ack *extack)
+{
+	int err;
+
+	err = mlxsw_sp_port_vlan_classification_set(mlxsw_sp_port, true, false);
+	if (err)
+		return err;
+
+	err = mlxsw_sp_bridge_vlan_aware_port_join(bridge_port, mlxsw_sp_port,
+						   extack);
+	if (err)
+		goto err_bridge_vlan_aware_port_join;
+
+	return 0;
+
+err_bridge_vlan_aware_port_join:
+	mlxsw_sp_port_vlan_classification_set(mlxsw_sp_port, false, true);
+	return err;
+}
+
+static void
+mlxsw_sp_bridge_8021ad_port_leave(struct mlxsw_sp_bridge_device *bridge_device,
+				  struct mlxsw_sp_bridge_port *bridge_port,
+				  struct mlxsw_sp_port *mlxsw_sp_port)
+{
+	mlxsw_sp_bridge_vlan_aware_port_leave(mlxsw_sp_port);
+	mlxsw_sp_port_vlan_classification_set(mlxsw_sp_port, false, true);
+}
+
+static int
+mlxsw_sp_bridge_8021ad_vxlan_join(struct mlxsw_sp_bridge_device *bridge_device,
+				  const struct net_device *vxlan_dev, u16 vid,
+				  struct netlink_ext_ack *extack)
+{
+	NL_SET_ERR_MSG_MOD(extack, "VXLAN is not supported with 802.1ad");
+	return -EOPNOTSUPP;
+}
+
+static const struct mlxsw_sp_bridge_ops mlxsw_sp_bridge_8021ad_ops = {
+	.port_join	= mlxsw_sp_bridge_8021ad_port_join,
+	.port_leave	= mlxsw_sp_bridge_8021ad_port_leave,
+	.vxlan_join	= mlxsw_sp_bridge_8021ad_vxlan_join,
+	.fid_get	= mlxsw_sp_bridge_8021q_fid_get,
+	.fid_lookup	= mlxsw_sp_bridge_8021q_fid_lookup,
+	.fid_vid	= mlxsw_sp_bridge_8021q_fid_vid,
+};
+
 int mlxsw_sp_port_bridge_join(struct mlxsw_sp_port *mlxsw_sp_port,
 			      struct net_device *brport_dev,
 			      struct net_device *br_dev,
@@ -3527,6 +3585,7 @@ int mlxsw_sp_switchdev_init(struct mlxsw_sp *mlxsw_sp)
 
 	bridge->bridge_8021q_ops = &mlxsw_sp_bridge_8021q_ops;
 	bridge->bridge_8021d_ops = &mlxsw_sp_bridge_8021d_ops;
+	bridge->bridge_8021ad_ops = &mlxsw_sp_bridge_8021ad_ops;
 
 	return mlxsw_sp_fdb_init(mlxsw_sp);
 }
-- 
2.28.0

