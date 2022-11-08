Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6A7620DA9
	for <lists.bridge@lfdr.de>; Tue,  8 Nov 2022 11:48:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 569B781B6D;
	Tue,  8 Nov 2022 10:48:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 569B781B6D
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=DFwVXOCf
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xOzAMQmBgqvh; Tue,  8 Nov 2022 10:48:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id DB5F781B71;
	Tue,  8 Nov 2022 10:48:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB5F781B71
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 84644C0077;
	Tue,  8 Nov 2022 10:48:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 46DC1C0032
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 10:48:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 13E8F408E5
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 10:48:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 13E8F408E5
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=DFwVXOCf
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K3-b9zEWBr1t for <bridge@lists.linux-foundation.org>;
 Tue,  8 Nov 2022 10:48:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 50C07408D5
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2061.outbound.protection.outlook.com [40.107.223.61])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 50C07408D5
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 10:48:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KFy9RmnHK9AOZ9C1vjP4jPtrqqpNnDJNh7NYjTHolvqlFxNIoUXls2MvkUGlut38JMbZBpeiqHB//kFyGeujEu0dNHyxQkvsFNBbI1j4FC+a1YEl1+B9EDX9K2fWmMMeZFeOwiNvA/3sE86w4nK8tw0ZUZEX6itq+WFBek99+Rx9CSlqPpvyunKDfyl1BRAuXp6aYCwKPIh2buoJ1Pbe1j5qp2v5oCZztoQ0cZRtBW0RM05ogy2J9120a89/sdnJDUDZxBQ9h2dSpfKEokgVzekfxfggeXw97XaEl9oDG+Zv5u3ip5qMTq52m1VWEnGEipKIxDhZuZ2CRe27ViihBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g4Hrp23UtQD1B7K2NarNKAQiXcs8o/7u/87dkXWarc4=;
 b=ijc/0hKJa/sPVxTLlk+HTxmtZepX5pcotVE4hYGc5rtK+/jYP9/6VtVZ4S50aUchArtBisaCbTjgHklk93ScpHOAcP9ON3CQlJULhsUy3TmTmEsvGHvX/zCNiglRibKDWpnQkcvjw3CNXa/slOp1yxKG62WVM5MnEuM8QB59G7OuFUAnmrzuMEeN28ZeMBz9qnO55+O3+x6iPffa/+836qanP/sNAf3vgqrAcHHTbC+U0i2Z14Tt8+jJjrpO97arNqF89T3f6yGlZKUmK90awUBqDtXix8R+LgP3YfE8EbXxUPIi0FmSLREAsv4Fn3tBZql9Ug7TWBiBIRMf1zmt9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g4Hrp23UtQD1B7K2NarNKAQiXcs8o/7u/87dkXWarc4=;
 b=DFwVXOCfX+qICrhu+b2L2zPXnfpfgMF+0kuuCPiPoJkWXCOeYJXrgIIgM2zgzGpijDnwosCgcChfax6sSCXp5t9X7ikuJ2xBBuxt6vQUTjcYttZEJ1L+QsfFUkYKbGaWC4nYVuTkZjy3QrNSbR2QUIOV8KwGt9eJ2orcEGZdKPVM1G/lpMsQATltargPOhx4LbGGcu9AoD3MR734hwPsAjAsadfC+3+U209XvwslGAbJxX1M7y26hvQiCvLv95daJIdCKlqhjpQWMWdX/j3KhZPDkVhG5Bfl2L+w7gscBMBwqjj9ruKxwBd6uwWRjL51Zb7VQFiPoVqF0UQjTcr8HA==
Received: from BN0PR03CA0005.namprd03.prod.outlook.com (2603:10b6:408:e6::10)
 by CH3PR12MB7571.namprd12.prod.outlook.com (2603:10b6:610:147::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.26; Tue, 8 Nov
 2022 10:48:46 +0000
Received: from BN8NAM11FT097.eop-nam11.prod.protection.outlook.com
 (2603:10b6:408:e6:cafe::2c) by BN0PR03CA0005.outlook.office365.com
 (2603:10b6:408:e6::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.26 via Frontend
 Transport; Tue, 8 Nov 2022 10:48:46 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 BN8NAM11FT097.mail.protection.outlook.com (10.13.176.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5791.20 via Frontend Transport; Tue, 8 Nov 2022 10:48:46 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Tue, 8 Nov 2022
 02:48:33 -0800
Received: from yaviefel.vdiclient.nvidia.com (10.126.230.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.29; Tue, 8 Nov 2022 02:48:30 -0800
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Ivan Vecera <ivecera@redhat.com>,
 <netdev@vger.kernel.org>
Date: Tue, 8 Nov 2022 11:47:21 +0100
Message-ID: <9fb8b83ce2029c51c81c942f24ece789ae8fe1c1.1667902754.git.petrm@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <cover.1667902754.git.petrm@nvidia.com>
References: <cover.1667902754.git.petrm@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.230.35]
X-ClientProxiedBy: rnnvmail203.nvidia.com (10.129.68.9) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8NAM11FT097:EE_|CH3PR12MB7571:EE_
X-MS-Office365-Filtering-Correlation-Id: cc4ccf5c-f021-497d-641e-08dac176cfe3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Mp+GT51Q0c70O0xA1xqYU5lOC1txYBLJVwQS7z9JM290ZwS4jJF5VBx0hWX+HGDppik3+KQbc0UxD9OLqAjdLojWRaeRnSIYcszvr8YDumsKkAov+1v0MHcETW1NY9pzJukR7MRJk+Gl35PfEMihVsfU6g29+UBXAQcHwq1D40YP2paPzYYPlTM9VPGkNQSOjUUI3pWhWYzWpyJ3A1p2ywW1tv78qpqNDmGk7ht+02PprRGE73xr5rdGivfs1eVGGNa+MFJSqeh/MfwNs0q+oCM736wtQPKoHa8yQfLlj7+vkJhFnqfCJwvS3HI65jR5FOvTrE+H4QvQPGY6l6RXQfK5eKUZtJrBKgdWVRbwJRnlGWLGrt/5rB35UNZ5AdnDBJk2/ia00u7TinAx1dHX8+yHtjaTMS7JVyGPAWff1FIw1yycod+CAaPgVtp2auSOujD+M/Tci+VlIV8Se3T+c/gDFy8kvpHwiGIgdc12gx6kJcgNO3qBPi4oCvgTTGzYsjhpv2ffT7ljSLmqohQgECDcVfIxE4Yq16JNJ+ReWIWEDX9FYw+CtANRIgCIuEC3OlrENHbCR/ihgYttV4nxioRKTKld4xRrh6xnKhVld4xhMrh0meWET3i8+08sNydA+YL96mmY8zXNTvWGqd77rkkwOOLEloKRvqQxDocv7fJ7GI+Ot+NNgcBIkyNyeABYfs/opNz91oJJPIqTJXPCe8e+PnJikk8Tw+gH9J7g8IuQmUPa0gnVQwPgyTKNWA8I1H4dYR416Bxm0mAZ8LusXQ==
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230022)(4636009)(376002)(396003)(136003)(346002)(39860400002)(451199015)(46966006)(40470700004)(36840700001)(110136005)(8936002)(5660300002)(8676002)(2906002)(316002)(70586007)(40460700003)(16526019)(86362001)(70206006)(2616005)(186003)(4326008)(40480700001)(426003)(36860700001)(54906003)(7636003)(336012)(356005)(83380400001)(41300700001)(82740400003)(478600001)(7696005)(82310400005)(107886003)(26005)(6666004)(36756003)(47076005);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2022 10:48:46.2403 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: cc4ccf5c-f021-497d-641e-08dac176cfe3
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM11FT097.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB7571
Cc: Petr Machata <petrm@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Roopa Prabhu <roopa@nvidia.com>, mlxsw@nvidia.com,
 Jiri Pirko <jiri@nvidia.com>, "Hans J . Schultz" <netdev@kapio-technology.com>
Subject: [Bridge] [PATCH net-next 15/15] selftests: mlxsw: Add a test for
	invalid locked bridge port configurations
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
From: Petr Machata via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Petr Machata <petrm@nvidia.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

From: Ido Schimmel <idosch@nvidia.com>

Test that locked bridge port configurations that are not supported by
mlxsw are rejected.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
Reviewed-by: Petr Machata <petrm@nvidia.com>
Signed-off-by: Petr Machata <petrm@nvidia.com>
---
 .../selftests/drivers/net/mlxsw/rtnetlink.sh  | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/tools/testing/selftests/drivers/net/mlxsw/rtnetlink.sh b/tools/testing/selftests/drivers/net/mlxsw/rtnetlink.sh
index 04f03ae9d8fb..5e89657857c7 100755
--- a/tools/testing/selftests/drivers/net/mlxsw/rtnetlink.sh
+++ b/tools/testing/selftests/drivers/net/mlxsw/rtnetlink.sh
@@ -34,6 +34,7 @@ ALL_TESTS="
 	nexthop_obj_bucket_offload_test
 	nexthop_obj_blackhole_offload_test
 	nexthop_obj_route_offload_test
+	bridge_locked_port_test
 	devlink_reload_test
 "
 NUM_NETIFS=2
@@ -917,6 +918,36 @@ nexthop_obj_route_offload_test()
 	simple_if_fini $swp1 192.0.2.1/24 2001:db8:1::1/64
 }
 
+bridge_locked_port_test()
+{
+	RET=0
+
+	ip link add name br1 up type bridge vlan_filtering 0
+
+	ip link add link $swp1 name $swp1.10 type vlan id 10
+	ip link set dev $swp1.10 master br1
+
+	bridge link set dev $swp1.10 locked on
+	check_fail $? "managed to set locked flag on a VLAN upper"
+
+	ip link set dev $swp1.10 nomaster
+	ip link set dev $swp1 master br1
+
+	bridge link set dev $swp1 locked on
+	check_fail $? "managed to set locked flag on a bridge port that has a VLAN upper"
+
+	ip link del dev $swp1.10
+	bridge link set dev $swp1 locked on
+
+	ip link add link $swp1 name $swp1.10 type vlan id 10
+	check_fail $? "managed to configure a VLAN upper on a locked port"
+
+	log_test "bridge locked port"
+
+	ip link del dev $swp1.10 &> /dev/null
+	ip link del dev br1
+}
+
 devlink_reload_test()
 {
 	# Test that after executing all the above configuration tests, a
-- 
2.35.3

