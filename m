Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF617C03C6
	for <lists.bridge@lfdr.de>; Tue, 10 Oct 2023 20:53:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B65C7822CC;
	Tue, 10 Oct 2023 18:53:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B65C7822CC
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=ZJU4MWNN
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IUf0GKeKxdZu; Tue, 10 Oct 2023 18:53:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id F3B908228A;
	Tue, 10 Oct 2023 18:53:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3B908228A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1F400C0DF3;
	Tue, 10 Oct 2023 18:53:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A9CC3C0DD5
 for <bridge@lists.linux-foundation.org>; Mon,  9 Oct 2023 10:07:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 83B2882043
 for <bridge@lists.linux-foundation.org>; Mon,  9 Oct 2023 10:07:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 83B2882043
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p-52OQX2do-e for <bridge@lists.linux-foundation.org>;
 Mon,  9 Oct 2023 10:07:38 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on20607.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e88::607])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F344082010
 for <bridge@lists.linux-foundation.org>; Mon,  9 Oct 2023 10:07:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F344082010
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GEnbPqte+V3D8pNyTT1Uxqelg/0XhTLXuaoo9ivPfpUUyTWmY5AZydQR9zHCW+cyri7xfF9y7rW/YgNSyx1MfLaoo9xGiXWKruqR6XiGqd7Y78XmYMzYLB9LtHsKNgfIh83f+dDYxOKN0alHkqNOBez354gR7d781XwlST0XeIAJ0hCPHL/UzeQuId6ajGzBD4zGFdCwU00mwskudEkVL8b/2hDiKvUB2TmEIprXxqmhtXjwRH1ii82Yg5RMqlR7ClyEKQNexRFg9ZZHs5rr4FBz08ZOhslYMF+UxnC6gXu/N+CFQq4Ug9Jx76ekdJauerFioVOhWI87YdGXk40lkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/diKAQ1CB+LJzeMAPD78XPOMuWnMXWCE6TPBTz9uW/Y=;
 b=lVEdgrYn7BURF86ZuVVfiEvAIXj+t6MHwEwBMvso9OphMpcseuIOfftwCzEp16V4JgtooJ6Tfo2v2sNqm//BAhb7XNcjblJM89laFRvH/ypb4TS1diOCiBfJ8Cv7G5M0f7qlj1oW3xjR+J0jX8SBVFdRxG/d72gH3PNQGDaAyUD6AX5APZ0PpLPt/jsq8Tw4U/v2Cw1X2JudW5nQgmH28lIMmc74iy2XV8B+PDCsYFxkd0ePKVKZNewkteE+BClKELvBo3YaeglgoQEONGMciaUuvQpTKj7Iq2tm/2k93DzRZKc3pZu7hE3T+f8IoaROu4fhP3yVDX8eH43Z4s1vGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/diKAQ1CB+LJzeMAPD78XPOMuWnMXWCE6TPBTz9uW/Y=;
 b=ZJU4MWNNMNWmugktdkxe2s68RVTJ3ihVMegJ+wYQAOKNhMKOASqok6ZnDWXGa98y8uTb9BmUpirwIhbz3Ygnu9yrCk2X1KxKRxRdbH9HqfIxgRB0cyRVMRJyQG1OC5kvJ5UIiaLv1iWVgRsMCM00FCaa+VYaCWxLDLyXlnFF85o1YEyZFDGjxNRdYpiLtUH6mA7p7XPbze6gRakolW9FAXCo8DRHHzyJfGZ8PhipdUC+21vOtfBPjlvuENuaIkhhZSlCCWT5MKOg+L/Vl0wL+PEgmczcEo0jbZ5jqj1KkTL6yfO+1xOiqRtIQmfdHkzgQrligwiValhWJBnilNQi5A==
Received: from MW3PR05CA0028.namprd05.prod.outlook.com (2603:10b6:303:2b::33)
 by MN0PR12MB6224.namprd12.prod.outlook.com (2603:10b6:208:3c0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.36; Mon, 9 Oct
 2023 10:07:35 +0000
Received: from MWH0EPF000989E9.namprd02.prod.outlook.com
 (2603:10b6:303:2b:cafe::89) by MW3PR05CA0028.outlook.office365.com
 (2603:10b6:303:2b::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.21 via Frontend
 Transport; Mon, 9 Oct 2023 10:07:35 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 MWH0EPF000989E9.mail.protection.outlook.com (10.167.241.136) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.22 via Frontend Transport; Mon, 9 Oct 2023 10:07:35 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Mon, 9 Oct 2023
 03:07:22 -0700
Received: from dev-r-vrt-155.mtr.labs.mlnx (10.126.230.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.41; Mon, 9 Oct 2023 03:07:18 -0700
To: <netdev@vger.kernel.org>
Date: Mon, 9 Oct 2023 13:06:15 +0300
Message-ID: <20231009100618.2911374-9-amcohen@nvidia.com>
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
X-MS-TrafficTypeDiagnostic: MWH0EPF000989E9:EE_|MN0PR12MB6224:EE_
X-MS-Office365-Filtering-Correlation-Id: 96f00d90-aa87-4318-b9c7-08dbc8af8f50
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: E4Y9uZuMKDPU46RRUqpJ48IeRoHW9NqdpP2uQobRyIa5hwG2d4puphJWQstADi/eHWegqaHRHtfzucpr3hE4Ed9oGdF1K+8Vp29HNoNqxAnpDKq6rYBtXMNsYlx1T2AetQLEbeGsBSDym40wN+cc2eX2/WnGacrnPkFPqr6+56AHEc2JVMaPmRU9zWpMTqhIvalGF1LPGERVFjOtuLxIAok93FnQmPcfs1SLC3SaKPLJQfH+JUYztxmHCXsyrC7JCz3WrYnPM/iCcgSF+jeIsaMV1QWGhu6dyJPbXl2n94MvTKgkhMQXr5BDqWvY7cLkcEPYPXBDrRfwblvlTyE3y1VadOAKRUA4bYoD1oKTHOv8JpKG6pb+m03/faYT8FNhs/wulFgtwJqoKTKRFXBJ8hm2CoPe1ZEF+kUrYVDB5oWysyrug1iN635I+aAH0Sr2JnkWI1pqCj41UQQm4SQ5ii5q/BLBKQqk2BeT+L2DxgJazOuvhHNlOPT8s4MvaU3sW9q+h5tV5uPhRhCMWKvIVT/VYlTuvBpI3KvIqPTGUWG8Va8gct0TiPnur85DhIHEUqwtA6Dv/nXTMT5EV68auPxXzq8pw/Xv02OmoT8OoIzNESo2ZYl9o8MkWLTUycyi7jR8PpXkwbGlhdl2i1X13aodxvRiBrvUAZDt9P63PUFcXCoKu3+6llKSvW0TaiNqF1Ae28haJ3GAG0RkPiF4f0uj5E8ZMF+JBQL6YQxT+2W4+Ajsqr/lAI1VhdBr8WBppbQ2uX7y8t1W8gmUXLBWuA==
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230031)(4636009)(346002)(136003)(396003)(39860400002)(376002)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(82310400011)(36840700001)(40470700004)(46966006)(7636003)(356005)(86362001)(36756003)(40480700001)(82740400003)(2906002)(478600001)(41300700001)(8936002)(5660300002)(4326008)(8676002)(6666004)(83380400001)(426003)(336012)(2616005)(1076003)(107886003)(40460700003)(36860700001)(70586007)(70206006)(54906003)(6916009)(316002)(26005)(47076005)(16526019)(309714004);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2023 10:07:35.1383 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 96f00d90-aa87-4318-b9c7-08dbc8af8f50
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: MWH0EPF000989E9.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB6224
X-Mailman-Approved-At: Tue, 10 Oct 2023 18:53:02 +0000
Cc: razor@blackwall.org, Amit
 Cohen <amcohen@nvidia.com>, mlxsw@nvidia.com, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, idosch@nvidia.com,
 linux-kselftest@vger.kernel.org, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, shuah@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next 08/11] vxlan: vxlan_core: Support FDB
	flushing by destination port
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

Add support for flush VXLAN FDB entries by destination port. FDB entry
is stored as {MAC, SRC_VNI} + remote. The destination port is an attribute
of the remote. For multicast entries, the VXLAN driver stores a linked list
of remotes for a given key.

In user space, each remote is represented as a separate entry, so when
flush is sent with filter of 'destination port', flush only the match
remotes. In case that there are no additional remotes, destroy the entry.

For example, the following are stored as one entry with several remotes:
$ bridge fdb show dev vx10
00:00:00:00:00:00 dst 192.1.1.1 port 1111 vni 2000 self permanent
00:00:00:00:00:00 dst 192.1.1.1 port 1111 vni 3000 self permanent
00:00:00:00:00:00 dst 192.1.1.1 port 2222 vni 2000 self permanent
00:00:00:00:00:00 dst 192.1.1.1 vni 3000 self permanent

When user flush by port x, only the relevant remotes will be flushed:
$ bridge fdb flush dev vx10 port 1111

$ bridge fdb show dev vx10
00:00:00:00:00:00 dst 192.1.1.1 port 2222 vni 2000 self permanent
00:00:00:00:00:00 dst 192.1.1.1 vni 3000 self permanent

Signed-off-by: Amit Cohen <amcohen@nvidia.com>
Reviewed-by: Ido Schimmel <idosch@nvidia.com>
---
 drivers/net/vxlan/vxlan_core.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index f16328a0f9fe..1d6efca4ec4a 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -3031,6 +3031,7 @@ struct vxlan_fdb_flush_desc {
 	__be32				src_vni;
 	u32				nhid;
 	__be32				vni;
+	__be16				port;
 };
 
 static bool vxlan_fdb_is_default_entry(const struct vxlan_fdb *f,
@@ -3071,7 +3072,7 @@ static bool vxlan_fdb_flush_matches(const struct vxlan_fdb *f,
 static bool
 vxlan_fdb_flush_should_match_remotes(const struct vxlan_fdb_flush_desc *desc)
 {
-	return !!desc->vni;
+	return desc->vni || desc->port;
 }
 
 static bool
@@ -3081,6 +3082,9 @@ vxlan_fdb_flush_remote_matches(const struct vxlan_fdb_flush_desc *desc,
 	if (desc->vni && rd->remote_vni != desc->vni)
 		return false;
 
+	if (desc->port && rd->remote_port != desc->port)
+		return false;
+
 	return true;
 }
 
@@ -3141,6 +3145,7 @@ static const struct nla_policy vxlan_del_bulk_policy[NDA_MAX + 1] = {
 	[NDA_SRC_VNI]   = { .type = NLA_U32 },
 	[NDA_NH_ID]	= { .type = NLA_U32 },
 	[NDA_VNI]	= { .type = NLA_U32 },
+	[NDA_PORT]	= { .type = NLA_U16 },
 	[NDA_NDM_STATE_MASK]	= { .type = NLA_U16 },
 	[NDA_NDM_FLAGS_MASK]	= { .type = NLA_U8 },
 };
@@ -3194,6 +3199,9 @@ static int vxlan_fdb_delete_bulk(struct nlmsghdr *nlh, struct net_device *dev,
 	if (tb[NDA_VNI])
 		desc.vni = cpu_to_be32(nla_get_u32(tb[NDA_VNI]));
 
+	if (tb[NDA_PORT])
+		desc.port = nla_get_be16(tb[NDA_PORT]);
+
 	vxlan_flush(vxlan, &desc);
 
 	return 0;
-- 
2.40.1

