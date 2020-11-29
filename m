Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0C22C7936
	for <lists.bridge@lfdr.de>; Sun, 29 Nov 2020 14:00:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 75CA48636D;
	Sun, 29 Nov 2020 13:00:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9h562I4_rddy; Sun, 29 Nov 2020 13:00:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CB0588638F;
	Sun, 29 Nov 2020 13:00:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AE019C1D9F;
	Sun, 29 Nov 2020 13:00:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DC8BAC0859
 for <bridge@lists.linux-foundation.org>; Sun, 29 Nov 2020 13:00:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CAB118636D
 for <bridge@lists.linux-foundation.org>; Sun, 29 Nov 2020 13:00:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hezvep8bNUle for <bridge@lists.linux-foundation.org>;
 Sun, 29 Nov 2020 13:00:54 +0000 (UTC)
X-Greylist: delayed  by SQLgrey-1.7.6
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E5EB886355
 for <bridge@lists.linux-foundation.org>; Sun, 29 Nov 2020 13:00:53 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 7AD4D580681;
 Sun, 29 Nov 2020 07:54:42 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Sun, 29 Nov 2020 07:54:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=wefPYKeg9f3jB6pW76coXo3/Je1bg6qX0vrK5Wyoam8=; b=reCrLwLl
 /ChUMyeT2JLcvuZ+ao9tC/XaUiKZGJvPz/UMJ8Q2X+llhUzjlMLJTLn17h48JG8s
 g5/6Yty9mxD18m7b8hjGjcnDfjiLdualbel+sISn1NbyuzJ41LMRgs6TES47FQAz
 QiO6f1/KH0OgVaL63tRR+d6mYkVNSyV8IN+Wj1UeeUWPPDtVrXGW2Ums1c7Yh2on
 M6yrI4xre579PK59BtEpN44ySIfLklzEYiMdIfdnSFZW6LD2VSG0KA1DArM5Xax2
 9Z4o6x27IG0YUa6Qo3ZVXWIN37q6xosgDtJzw4DfC9YtZO60xcRADRHonXcZQv4g
 dRvmYifTMfj0yQ==
X-ME-Sender: <xms:EprDX1iEgweppZCvGt_Qm4DO0e-2BhXkUIPlwRZhyeLkZQ2DPeSsHw>
 <xme:EprDX6CF_PTwDLqKPkGZThAVDLzX4Fy9G3vJPQD0OlCzVtvJ7Tk1Fe_3LXLg-WH0J
 mpbjJn-FhAH6B0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudehkedggeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepkfguohcuufgthhhimhhmvghluceoihguohhstghhsehiugho
 shgthhdrohhrgheqnecuggftrfgrthhtvghrnhepudetieevffffveelkeeljeffkefhke
 ehgfdtffethfelvdejgffghefgveejkefhnecukfhppeekgedrvddvledrudehgedrudeg
 jeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:EprDX1H9chazrgrk2uu6QmxmCtDMv7kqbvlWdmItYMCNENLo2Y0IZQ>
 <xmx:EprDX6QNHOh2Ztio0pPDMDCFUmVlgQANXIUCEaXcXwBy0L22Ke6UxA>
 <xmx:EprDXyzrpg9jROzyWlBtqlGv4XOk2mkZZ54C4kGpkJNF4crHFUv3sw>
 <xmx:EprDX2ffn_Ilex_DR74MFPeKlJ6tsuvDxvCj1tEP9QROJ5Y4zN7cBQ>
Received: from shredder.lan (igld-84-229-154-147.inter.net.il [84.229.154.147])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5CF633064AB5;
 Sun, 29 Nov 2020 07:54:40 -0500 (EST)
From: Ido Schimmel <idosch@idosch.org>
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Sun, 29 Nov 2020 14:53:59 +0200
Message-Id: <20201129125407.1391557-2-idosch@idosch.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201129125407.1391557-1-idosch@idosch.org>
References: <20201129125407.1391557-1-idosch@idosch.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ivecera@redhat.com, petrm@nvidia.com, amcohen@nvidia.com,
 danieller@nvidia.com, mlxsw@nvidia.com, Ido Schimmel <idosch@nvidia.com>,
 jiri@nvidia.com, nikolay@nvidia.com, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 1/9] mlxsw: reg: Add Switch Port VLAN
	Classification Register
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

SPVC configures the port to identify packets as untagged / single tagged /
double tagged packets based on the packet EtherTypes.

It will be used to classify 802.1q packets as untagged and 802.1ad packets
as tagged when received by ports member in a 802.1ad bridge.

Signed-off-by: Amit Cohen <amcohen@nvidia.com>
Reviewed-by: Petr Machata <petrm@nvidia.com>
Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 drivers/net/ethernet/mellanox/mlxsw/reg.h | 99 +++++++++++++++++++++++
 1 file changed, 99 insertions(+)

diff --git a/drivers/net/ethernet/mellanox/mlxsw/reg.h b/drivers/net/ethernet/mellanox/mlxsw/reg.h
index fcf9095b3f55..5248532c3999 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/reg.h
+++ b/drivers/net/ethernet/mellanox/mlxsw/reg.h
@@ -1857,6 +1857,104 @@ static inline void mlxsw_reg_spvmlr_pack(char *payload, u8 local_port,
 	}
 }
 
+/* SPVC - Switch Port VLAN Classification Register
+ * -----------------------------------------------
+ * Configures the port to identify packets as untagged / single tagged /
+ * double packets based on the packet EtherTypes.
+ * Ethertype IDs are configured by SVER.
+ */
+#define MLXSW_REG_SPVC_ID 0x2026
+#define MLXSW_REG_SPVC_LEN 0x0C
+
+MLXSW_REG_DEFINE(spvc, MLXSW_REG_SPVC_ID, MLXSW_REG_SPVC_LEN);
+
+/* reg_spvc_local_port
+ * Local port.
+ * Access: Index
+ *
+ * Note: applies both to Rx port and Tx port, so if a packet traverses
+ * through Rx port i and a Tx port j then port i and port j must have the
+ * same configuration.
+ */
+MLXSW_ITEM32(reg, spvc, local_port, 0x00, 16, 8);
+
+/* reg_spvc_inner_et2
+ * Vlan Tag1 EtherType2 enable.
+ * Packet is initially classified as double VLAN Tag if in addition to
+ * being classified with a tag0 VLAN Tag its tag1 EtherType value is
+ * equal to ether_type2.
+ * 0: disable (default)
+ * 1: enable
+ * Access: RW
+ */
+MLXSW_ITEM32(reg, spvc, inner_et2, 0x08, 17, 1);
+
+/* reg_spvc_et2
+ * Vlan Tag0 EtherType2 enable.
+ * Packet is initially classified as VLAN Tag if its tag0 EtherType is
+ * equal to ether_type2.
+ * 0: disable (default)
+ * 1: enable
+ * Access: RW
+ */
+MLXSW_ITEM32(reg, spvc, et2, 0x08, 16, 1);
+
+/* reg_spvc_inner_et1
+ * Vlan Tag1 EtherType1 enable.
+ * Packet is initially classified as double VLAN Tag if in addition to
+ * being classified with a tag0 VLAN Tag its tag1 EtherType value is
+ * equal to ether_type1.
+ * 0: disable
+ * 1: enable (default)
+ * Access: RW
+ */
+MLXSW_ITEM32(reg, spvc, inner_et1, 0x08, 9, 1);
+
+/* reg_spvc_et1
+ * Vlan Tag0 EtherType1 enable.
+ * Packet is initially classified as VLAN Tag if its tag0 EtherType is
+ * equal to ether_type1.
+ * 0: disable
+ * 1: enable (default)
+ * Access: RW
+ */
+MLXSW_ITEM32(reg, spvc, et1, 0x08, 8, 1);
+
+/* reg_inner_et0
+ * Vlan Tag1 EtherType0 enable.
+ * Packet is initially classified as double VLAN Tag if in addition to
+ * being classified with a tag0 VLAN Tag its tag1 EtherType value is
+ * equal to ether_type0.
+ * 0: disable
+ * 1: enable (default)
+ * Access: RW
+ */
+MLXSW_ITEM32(reg, spvc, inner_et0, 0x08, 1, 1);
+
+/* reg_et0
+ * Vlan Tag0 EtherType0 enable.
+ * Packet is initially classified as VLAN Tag if its tag0 EtherType is
+ * equal to ether_type0.
+ * 0: disable
+ * 1: enable (default)
+ * Access: RW
+ */
+MLXSW_ITEM32(reg, spvc, et0, 0x08, 0, 1);
+
+static inline void mlxsw_reg_spvc_pack(char *payload, u8 local_port, bool et1,
+				       bool et0)
+{
+	MLXSW_REG_ZERO(spvc, payload);
+	mlxsw_reg_spvc_local_port_set(payload, local_port);
+	/* Enable inner_et1 and inner_et0 to enable identification of double
+	 * tagged packets.
+	 */
+	mlxsw_reg_spvc_inner_et1_set(payload, 1);
+	mlxsw_reg_spvc_inner_et0_set(payload, 1);
+	mlxsw_reg_spvc_et1_set(payload, et1);
+	mlxsw_reg_spvc_et0_set(payload, et0);
+}
+
 /* CWTP - Congetion WRED ECN TClass Profile
  * ----------------------------------------
  * Configures the profiles for queues of egress port and traffic class
@@ -11212,6 +11310,7 @@ static const struct mlxsw_reg_info *mlxsw_reg_infos[] = {
 	MLXSW_REG(svpe),
 	MLXSW_REG(sfmr),
 	MLXSW_REG(spvmlr),
+	MLXSW_REG(spvc),
 	MLXSW_REG(cwtp),
 	MLXSW_REG(cwtpm),
 	MLXSW_REG(pgcr),
-- 
2.28.0

