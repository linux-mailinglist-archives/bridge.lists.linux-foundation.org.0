Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3757C03C2
	for <lists.bridge@lfdr.de>; Tue, 10 Oct 2023 20:53:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E8588228B;
	Tue, 10 Oct 2023 18:53:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E8588228B
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=sBZgEZ0c
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id na91cI1ysrds; Tue, 10 Oct 2023 18:53:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id B85478229A;
	Tue, 10 Oct 2023 18:53:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B85478229A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3FEF4C0088;
	Tue, 10 Oct 2023 18:53:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 48745C0032
 for <bridge@lists.linux-foundation.org>; Mon,  9 Oct 2023 10:07:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1629582010
 for <bridge@lists.linux-foundation.org>; Mon,  9 Oct 2023 10:07:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1629582010
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ErJw4pExW6Md for <bridge@lists.linux-foundation.org>;
 Mon,  9 Oct 2023 10:07:19 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on20621.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e8a::621])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A8E9481EF8
 for <bridge@lists.linux-foundation.org>; Mon,  9 Oct 2023 10:07:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8E9481EF8
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZAbxBD47Y2u2GW7lpVt5fsm0OlXt4JaU/aGF37GpDp8Fd62/IJqkRhCoXcj8p8jhkg3pPNkqoM1d31z+F/D4cxGQTMZu4wpeYMcm9LmOGakTWd/wgnt/HtgnJn95ePqU0VikIBu93tO8ysGyP6DvLgt+C4KM097LBixGXNdcuo9MAXZMkVfMF+7h9kCz9ZiNSesrZYUCc4NuF4TiCfWzm7yK8uaQxd2MEl4u3LUhEW7Q14lhI0zBlDkVnUPI9XNDer6rKGptMIUU/KV7eTG5KGwhlUHFZsgPZStuhLwmxwJHEvyQBVKc+wlYkYzsOlGSDS21piDuvhbuCfFCsWmzNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6W/GVUeEAPw+17+kc4Dg0u8hpieRTRnlYPZ0koB/I0I=;
 b=D60ZBi8oqMSC/chYeT8mdXMUPmx0keq3ESKNg5Xadczoo0bg8gB+o/0kLcMsQ3oLAzOyiN37ookNxEx2s6Z7GljO1/alxHcI4Bh3EbE665ESi/qxZ01VIDabfnLC/z1s/eVL4JkxxsoHkDxPoBkcR3r3zZCJ6S3zet5QLHt+KzbmELwBCK9F4Lsi3Gr9VcY7we9SWNyYgc1M4KWwegg0i9uriqnlJXFldElfSwZ4iouZyEWvdFaCN5byIQjKvfxCeyw3DoiLK3KHNn84D5tgCWEQmpd63cVVI4LXtOacpCZi0fCZnyAZInuAS+oB6PrJNH10947qg1XNhFIgt2jaig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6W/GVUeEAPw+17+kc4Dg0u8hpieRTRnlYPZ0koB/I0I=;
 b=sBZgEZ0cOCh1BQF+xHR/vDIWPnzDJHalYkc1RjiYK6+fcOp0MB1G9dXRRX60jNuRqdOvZXqdtRYxxXcUEK5nf6vHIkWXSyu2i6HCC+Gf6gQjcNq+3Y1jyWPqgfHiFrpWvAV1UXARxJz4n1GaaBrzAC14K8ZCaFM97I0Iczb3jcA7Mg767lCzW6/Fc2Ai20UrLgZjhC+YJwEzIYE4USdvdi1YvuFwhggzWP1Fl62ww/Xr2xP8fXoWGBwiwZ5s1mYF1eUHMeDnZpsfVC1zGxlgYYHds6rOHCMxX4AjoIO0IrZlr3BbxiE1CT8E+zU7OYwghMpGfzzXGiGYxRexBo7bSg==
Received: from MWH0EPF00056D06.namprd21.prod.outlook.com
 (2603:10b6:30f:fff2:0:1:0:10) by SJ2PR12MB7865.namprd12.prod.outlook.com
 (2603:10b6:a03:4cc::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.43; Mon, 9 Oct
 2023 10:07:16 +0000
Received: from MWH0EPF000989EB.namprd02.prod.outlook.com
 (2a01:111:f403:f805::) by MWH0EPF00056D06.outlook.office365.com
 (2603:1036:d20::b) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.4 via Frontend
 Transport; Mon, 9 Oct 2023 10:07:16 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 MWH0EPF000989EB.mail.protection.outlook.com (10.167.241.138) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.14 via Frontend Transport; Mon, 9 Oct 2023 10:07:16 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Mon, 9 Oct 2023
 03:07:06 -0700
Received: from dev-r-vrt-155.mtr.labs.mlnx (10.126.230.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.41; Mon, 9 Oct 2023 03:07:02 -0700
To: <netdev@vger.kernel.org>
Date: Mon, 9 Oct 2023 13:06:11 +0300
Message-ID: <20231009100618.2911374-5-amcohen@nvidia.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231009100618.2911374-1-amcohen@nvidia.com>
References: <20231009100618.2911374-1-amcohen@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.230.35]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWH0EPF000989EB:EE_|SJ2PR12MB7865:EE_
X-MS-Office365-Filtering-Correlation-Id: 75266287-bff4-4dbd-a5cc-08dbc8af8430
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GcVEKzGk4VjLpArpu9IcAOZWjz4dX+Sl6wQOkqdPYru6ClFdSPr1JfgQWnZAgjpx+HyDr8kG41T4hTLR+cQw4EmM2C8tb1K00usMMXqQhsz8jobYGewwMVB3KYy6SUEg83vdsxn+gEiMy+lj4F3JEtgQUxKMEsDsMGNeWanUAgi7L0Pyloz3irgSVTUIZHkONOnuHh7gt4vZ63fhsRc+0/nXHeWpNpfBwnmKY5n4kMxTKG7d/XoI5QBGYgZc93El8fbeeqTMFQ98ho4jaDt0dVZBHbuei/DG3klCrIbGvdmZwTLJl3tLnQO0+S0uE1Haf9+9ikDbx6Y8JEWmmxms7VW3GBd+zB3IxiClOcr+tFEGsB5ziraYkR+nSqnyV5wAJvHV4AEHVok2ZqVg3hZiTjDMi01S7UiLWdCQ0MhYOzsCC9NxLvKkf0obYuETbQ2n4iOjA2u8OguJ9LBXHVjVxJAJimNDegJZ07jognwYB6CfhQRSLysS/whoN7crVik2uly9QBRQBY0jt3pcNofTjNaOra1ODho+75ghWnkZz7hCK+vUKEkapyLJKGTFnOSGM5fGH5gaQV3L0COwdGytthkfOVaWQ4JL8eY2sv81sy4DOvvF5xIZLre9flYIoohyzDx2atggw58qsFFaB5PpubGCEylqI3wxY8CXHS5uDujOfhyoli+ekSmsQBqRNzcG7LXLCxMz73bIC7qUZJvON/GrxejBHLj8NPiRJoHsZxs=
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230031)(4636009)(376002)(346002)(136003)(39860400002)(396003)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(82310400011)(40470700004)(36840700001)(46966006)(6666004)(1076003)(107886003)(40460700003)(36756003)(86362001)(40480700001)(356005)(7636003)(36860700001)(82740400003)(26005)(2906002)(16526019)(47076005)(426003)(336012)(66574015)(83380400001)(2616005)(478600001)(8676002)(4326008)(41300700001)(70586007)(6916009)(8936002)(316002)(70206006)(5660300002)(54906003);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2023 10:07:16.4732 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 75266287-bff4-4dbd-a5cc-08dbc8af8430
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: MWH0EPF000989EB.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR12MB7865
X-Mailman-Approved-At: Tue, 10 Oct 2023 18:53:01 +0000
Cc: Petr Machata <petrm@nvidia.com>, razor@blackwall.org, Amit
 Cohen <amcohen@nvidia.com>, mlxsw@nvidia.com, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, idosch@nvidia.com,
 linux-kselftest@vger.kernel.org, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, shuah@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next 04/11] vxlan: vxlan_core: Add support for
	FDB flush
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
From: Amit Cohen via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Amit Cohen <amcohen@nvidia.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

The merge commit 92716869375b ("Merge branch 'br-flush-filtering'")
added support for FDB flushing in bridge driver only, the VXLAN driver does
not support such flushing. Extend VXLAN driver to support FDB flushing.
In this commit, add support for flushing with state and flags, which are
the fields that supported in the bridge driver.

Note that bridge driver supports 'NTF_USE' flag, but there is no point to
support this flag for flushing as it is ignored when flags are stored.
'NTF_STICKY' is not relevant for VXLAN driver.

'NTF_ROUTER' is not supported in bridge driver for flush as it is not
relevant for bridge, add it for VXLAN.

Signed-off-by: Amit Cohen <amcohen@nvidia.com>
Reviewed-by: Petr Machata <petrm@nvidia.com>
Reviewed-by: Ido Schimmel <idosch@nvidia.com>
---
 drivers/net/vxlan/vxlan_core.c | 56 ++++++++++++++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index 958960fdc011..0aeb973e3da7 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -3026,6 +3026,8 @@ struct vxlan_fdb_flush_desc {
 	bool				ignore_default_entry;
 	unsigned long                   state;
 	unsigned long			state_mask;
+	unsigned long                   flags;
+	unsigned long			flags_mask;
 };
 
 static bool vxlan_fdb_is_default_entry(const struct vxlan_fdb *f,
@@ -3041,6 +3043,9 @@ static bool vxlan_fdb_flush_matches(const struct vxlan_fdb *f,
 	if (desc->state_mask && (f->state & desc->state_mask) != desc->state)
 		return false;
 
+	if (desc->flags_mask && (f->flags & desc->flags_mask) != desc->flags)
+		return false;
+
 	if (desc->ignore_default_entry && vxlan_fdb_is_default_entry(f, vxlan))
 		return false;
 
@@ -3070,6 +3075,56 @@ static void vxlan_flush(struct vxlan_dev *vxlan,
 	}
 }
 
+static const struct nla_policy vxlan_del_bulk_policy[NDA_MAX + 1] = {
+	[NDA_NDM_STATE_MASK]	= { .type = NLA_U16 },
+	[NDA_NDM_FLAGS_MASK]	= { .type = NLA_U8 },
+};
+
+#define VXLAN_FDB_FLUSH_IGNORED_NDM_FLAGS (NTF_MASTER | NTF_SELF)
+#define VXLAN_FDB_FLUSH_ALLOWED_NDM_STATES (NUD_PERMANENT | NUD_NOARP)
+#define VXLAN_FDB_FLUSH_ALLOWED_NDM_FLAGS (NTF_EXT_LEARNED | NTF_OFFLOADED | \
+					   NTF_ROUTER)
+
+static int vxlan_fdb_delete_bulk(struct nlmsghdr *nlh, struct net_device *dev,
+				 struct netlink_ext_ack *extack)
+{
+	struct vxlan_dev *vxlan = netdev_priv(dev);
+	struct vxlan_fdb_flush_desc desc = {};
+	struct ndmsg *ndm = nlmsg_data(nlh);
+	struct nlattr *tb[NDA_MAX + 1];
+	u8 ndm_flags;
+	int err;
+
+	ndm_flags = ndm->ndm_flags & ~VXLAN_FDB_FLUSH_IGNORED_NDM_FLAGS;
+
+	err = nlmsg_parse(nlh, sizeof(*ndm), tb, NDA_MAX, vxlan_del_bulk_policy,
+			  extack);
+	if (err)
+		return err;
+
+	if (ndm_flags & ~VXLAN_FDB_FLUSH_ALLOWED_NDM_FLAGS) {
+		NL_SET_ERR_MSG(extack, "Unsupported fdb flush ndm flag bits set");
+		return -EINVAL;
+	}
+	if (ndm->ndm_state & ~VXLAN_FDB_FLUSH_ALLOWED_NDM_STATES) {
+		NL_SET_ERR_MSG(extack, "Unsupported fdb flush ndm state bits set");
+		return -EINVAL;
+	}
+
+	desc.state = ndm->ndm_state;
+	desc.flags = ndm_flags;
+
+	if (tb[NDA_NDM_STATE_MASK])
+		desc.state_mask = nla_get_u16(tb[NDA_NDM_STATE_MASK]);
+
+	if (tb[NDA_NDM_FLAGS_MASK])
+		desc.flags_mask = nla_get_u8(tb[NDA_NDM_FLAGS_MASK]);
+
+	vxlan_flush(vxlan, &desc);
+
+	return 0;
+}
+
 /* Cleanup timer and forwarding table on shutdown */
 static int vxlan_stop(struct net_device *dev)
 {
@@ -3172,6 +3227,7 @@ static const struct net_device_ops vxlan_netdev_ether_ops = {
 	.ndo_set_mac_address	= eth_mac_addr,
 	.ndo_fdb_add		= vxlan_fdb_add,
 	.ndo_fdb_del		= vxlan_fdb_delete,
+	.ndo_fdb_del_bulk	= vxlan_fdb_delete_bulk,
 	.ndo_fdb_dump		= vxlan_fdb_dump,
 	.ndo_fdb_get		= vxlan_fdb_get,
 	.ndo_mdb_add		= vxlan_mdb_add,
-- 
2.40.1

