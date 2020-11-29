Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9642C7937
	for <lists.bridge@lfdr.de>; Sun, 29 Nov 2020 14:01:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 76466863E2;
	Sun, 29 Nov 2020 13:00:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7eMv90GvoVqB; Sun, 29 Nov 2020 13:00:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F13D18638F;
	Sun, 29 Nov 2020 13:00:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E3983C0052;
	Sun, 29 Nov 2020 13:00:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EAF4FC0052
 for <bridge@lists.linux-foundation.org>; Sun, 29 Nov 2020 13:00:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AD428204DD
 for <bridge@lists.linux-foundation.org>; Sun, 29 Nov 2020 13:00:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 08AAw-tUQwCs for <bridge@lists.linux-foundation.org>;
 Sun, 29 Nov 2020 13:00:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by silver.osuosl.org (Postfix) with ESMTPS id ED6D8203F7
 for <bridge@lists.linux-foundation.org>; Sun, 29 Nov 2020 13:00:53 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id A9CDD5806A9;
 Sun, 29 Nov 2020 07:54:44 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Sun, 29 Nov 2020 07:54:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=2W1zOzV8vwqD5mcj0ElSCJx7G8UJmzHzIMBQBmZcUfw=; b=qpg92gUd
 j5geiy9Hcg2E+t+82w/aap+8H8H8vtZIBlAany6QcjQ29uyL4eoKCifiC1Hr0D5T
 tQpCr+bgc77Jg5kGzBwC7kZHurKU0KwM19IvTrQm88bpoXwQdT578v9rpWv99uD+
 n/tlhegJ4XCx90t58J/5fBSL/wtMjon78uDsHH18nn/FKxiD5HyDcZ1sIQvUd7/B
 gQEn3KDErkIqhgNafYG+9fopagF5gSQw/45Eb+E4SW8EZ7rEI3uPVpHtfQ36w2X7
 /+gEppPdYyAMMiU4D6dQMYNVha0YfRDyIyMQ+ZhLII9hOABC4IA8x6fVPFwZXCIS
 Mdy7EorM3AtetQ==
X-ME-Sender: <xms:FJrDX9qPBpjhk7ULsUTdHcSlGb_POr84cIVBeCMwjk19BQnc6woY5w>
 <xme:FJrDX_o395AjFmsGr3PiWGfUZtR0i0EXFQ-HAri7uUFgs_fzmdlLc_Y7d6yO_Ik8s
 3mml8xD5jnOT_0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudehkedggeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepkfguohcuufgthhhimhhmvghluceoihguohhstghhsehiugho
 shgthhdrohhrgheqnecuggftrfgrthhtvghrnhepudetieevffffveelkeeljeffkefhke
 ehgfdtffethfelvdejgffghefgveejkefhnecukfhppeekgedrvddvledrudehgedrudeg
 jeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:FJrDX6PJZTP3Mivf90TwKD-CWncYU6C_D3_L4xSYbScV8J3SbbQt0w>
 <xmx:FJrDX464ptaXnNKOjynJ6ETXDrC5G2p1JXXTI5n6Ej7Mv-gipwzg7g>
 <xmx:FJrDX87s97EZ7pl3Iz3B9oI61x1dgkbvwQesFpqzq1G53Ktv4XSQ2Q>
 <xmx:FJrDX9EYM8vwAKeUPehtRQWuI6w51ZBJPcfRy8n3NRsl1Xol2UCIgg>
Received: from shredder.lan (igld-84-229-154-147.inter.net.il [84.229.154.147])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8A87A3064AAE;
 Sun, 29 Nov 2020 07:54:42 -0500 (EST)
From: Ido Schimmel <idosch@idosch.org>
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Sun, 29 Nov 2020 14:54:00 +0200
Message-Id: <20201129125407.1391557-3-idosch@idosch.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201129125407.1391557-1-idosch@idosch.org>
References: <20201129125407.1391557-1-idosch@idosch.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ivecera@redhat.com, petrm@nvidia.com, amcohen@nvidia.com,
 danieller@nvidia.com, mlxsw@nvidia.com, Ido Schimmel <idosch@nvidia.com>,
 jiri@nvidia.com, nikolay@nvidia.com, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 2/9] mlxsw: reg: Add et_vlan field to
	SPVID register
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

et_vlan field is used to configure which EtherType is used when VLAN is
pushed at ingress (for untagged packets or for QinQ push mode).

It will be used to configure tagging with ether_type1 (i.e., 0x88A8) for
QinQ mode.

Signed-off-by: Amit Cohen <amcohen@nvidia.com>
Reviewed-by: Petr Machata <petrm@nvidia.com>
Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 drivers/net/ethernet/mellanox/mlxsw/reg.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/net/ethernet/mellanox/mlxsw/reg.h b/drivers/net/ethernet/mellanox/mlxsw/reg.h
index 5248532c3999..bea919b92f76 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/reg.h
+++ b/drivers/net/ethernet/mellanox/mlxsw/reg.h
@@ -834,6 +834,17 @@ MLXSW_ITEM32(reg, spvid, local_port, 0x00, 16, 8);
  */
 MLXSW_ITEM32(reg, spvid, sub_port, 0x00, 8, 8);
 
+/* reg_spvid_et_vlan
+ * EtherType used for when VLAN is pushed at ingress (for untagged
+ * packets or for QinQ push mode).
+ * 0: ether_type0 - (default)
+ * 1: ether_type1
+ * 2: ether_type2 - Reserved when Spectrum-1, supported by Spectrum-2
+ * Ethertype IDs are configured by SVER.
+ * Access: RW
+ */
+MLXSW_ITEM32(reg, spvid, et_vlan, 0x04, 16, 2);
+
 /* reg_spvid_pvid
  * Port default VID
  * Access: RW
-- 
2.28.0

