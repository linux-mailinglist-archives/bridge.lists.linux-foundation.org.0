Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1FC7D6B9A
	for <lists.bridge@lfdr.de>; Wed, 25 Oct 2023 14:31:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A2B0708A7;
	Wed, 25 Oct 2023 12:31:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A2B0708A7
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=mnkwiWLm
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BQsrUoQ1FP8x; Wed, 25 Oct 2023 12:31:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id DB179708A2;
	Wed, 25 Oct 2023 12:31:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB179708A2
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8E60FC008C;
	Wed, 25 Oct 2023 12:31:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C5F00C0032
 for <bridge@lists.linux-foundation.org>; Wed, 25 Oct 2023 12:31:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A18FE4F3B7
 for <bridge@lists.linux-foundation.org>; Wed, 25 Oct 2023 12:31:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A18FE4F3B7
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=mnkwiWLm
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z3K4-V1BIUQm for <bridge@lists.linux-foundation.org>;
 Wed, 25 Oct 2023 12:31:28 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on20614.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eaa::614])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F12864F37D
 for <bridge@lists.linux-foundation.org>; Wed, 25 Oct 2023 12:31:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F12864F37D
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LKfQ4LbIPjYFQEyFcDw2jIY3K6StsXI/8IgqPO8Qb43tAk0Nsd+h7/2K++UcaOMWQB2npzEl0oy9BR0bmPHYuBrEGGxGeXN4TEvN87ca0+9+vttenxP6AkSXGQTAYVAI/8u4f0QYwOPuvGqFjzHj4K20WotPqGkNqkmW/zMlkFU/Rn8lpe6jnxr8YSYZj9cxDcvNk+c5w1OVEPgejAQeHuLF0m76+PPcJSGOaRukDPkFQyJnlHjCpCvjRe4ivhR5nbsCpkCkvTMYbC7KEhhQDothkJc3lKBW7sU1670DpuSgfNZ8rjKDczsdWPX4iJGaQXh2jd2BvzIgQi5k2UjFpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NgAYaQzNS2YTUXSPafmhLLsXR7g31zwrW17O7KOHwfI=;
 b=gp73FmPciyHqmddA3Lm4gbrZ7tv5bVTNh8by6gH0S2XXqwJqrJJnigr8VVgews4p84r+SFF3AezQbyeOsAZ/eOPhQML/7HhU47ogR6v4ifkr8CRWr5uj14MnmvRijHaZ0HRcaSafdaRBVdKiIuoMhymIOivIJaBpQgVj/5bC4LtsgiJwku7XOCK2uE3rpqYoyHU8PEzNSxOas5uO9C19WUya8Si0Yni3gOIqD+l510CPmeBWCGNs8agWFhVgFCi7kb9AKRMij56isRpNci/XwINnjXJ09AWTBJ/XvxssDd8YFmNlvZUEb1CaY//C4zNl7g/YUhcG6rApY3V0+YTfpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NgAYaQzNS2YTUXSPafmhLLsXR7g31zwrW17O7KOHwfI=;
 b=mnkwiWLm2K4HDpixTEJ2rnPhydSRT0bZ5yYqJWcrqpB0POsHmL3sewI1I78jc7p/evxGe1is+s7rCRdI95gXDzkFQxtXxsWNZ19fn4XL3hV/wNOcVg1hNOqPkkbN7n/DpFxN1nV+AYmUOAZmFTvp1vDJP0PJLa3TrPMwwQX6cIGh3KMriyaRsL6HpCBkpN8alKo/udDp5B9Q3eSkcdcjK8itQKqM81GJR/ju7Bq/+ClFjFoYoUDGVkYq03Ot9wYWYtbTkuqVnboeMPHXoVRY4hTo83Y/FdG3Wppx2gElE8npRlQdQoPFv1TqriMoqQ9RXHzEwZnMxaEIyRfKNJnU1w==
Received: from DM6PR04CA0005.namprd04.prod.outlook.com (2603:10b6:5:334::10)
 by CY5PR12MB6033.namprd12.prod.outlook.com (2603:10b6:930:2f::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.31; Wed, 25 Oct
 2023 12:31:25 +0000
Received: from DS2PEPF0000343A.namprd02.prod.outlook.com
 (2603:10b6:5:334:cafe::19) by DM6PR04CA0005.outlook.office365.com
 (2603:10b6:5:334::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33 via Frontend
 Transport; Wed, 25 Oct 2023 12:31:25 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 DS2PEPF0000343A.mail.protection.outlook.com (10.167.18.37) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6933.18 via Frontend Transport; Wed, 25 Oct 2023 12:31:25 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Wed, 25 Oct
 2023 05:31:11 -0700
Received: from dev-r-vrt-155.mtr.labs.mlnx (10.126.231.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.41; Wed, 25 Oct 2023 05:31:08 -0700
To: <netdev@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Wed, 25 Oct 2023 15:30:12 +0300
Message-ID: <20231025123020.788710-6-idosch@nvidia.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231025123020.788710-1-idosch@nvidia.com>
References: <20231025123020.788710-1-idosch@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.231.35]
X-ClientProxiedBy: rnnvmail201.nvidia.com (10.129.68.8) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS2PEPF0000343A:EE_|CY5PR12MB6033:EE_
X-MS-Office365-Filtering-Correlation-Id: b4a7bfcc-f753-4d6f-28a1-08dbd5564e30
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2RvPoDJ0o+VilqURmduDDXEfMKHgtWs99kZaZEW5TakNXMxYt2EvLqIsnEQb8P1YCE6ESdFoay6gemYb+0667k3dWBfhR+tmFVam/m6lOQzmh9+IYNGS//vYS7kf08x96FQZOaWBmKgc1N4UVg49D0PQeX8/zpFtIJ2U0RRHXcaeTVufqRqainOkr8xhOiQLRk8POBQ9xujfOWaXGb2Hghg9c9e1Wrcef86kDwqgB+WjghIsjJ37Jbgoun0n/uiV7GFk2dYo/E/Jt2QdvIfO4D0xWV7PnOD8JNVWxOLDnqlmDpDnoMZvTqWSBQpN3nppLWu8QRRAIjDO1H22hfmhX0r/MjcLVveg4GqhgA7Q+ZflpXl3K/MSPJDYiwEWy79veGIxZhkMuM4cvjgZmbwfAhgNPc8ikMf2i1ndngJUYy4PFU69sAnBQoZssW/lvIrHwoiyByglDi1q6V5iFrw+9nXek2XuCsI6aCNyjeD/Q15M38i8VnJgfNNGAfoPOqpSy9vgVwkCJL5NBZokhLb1QM5cnmNV3ss5PeEFmk0HuoMHgZsWo4zRMop+6iTEjfNA876AHnvxGJcaOmNLw1NrRGPPcnUoLoPliolivnn1kdtYkVa4sYdpIO/bFgCThgMOlPnCsPhQAm0g9Xm2Ti/KEMWqAcvFC3+SB5pw+0ozlsoNRd6X0EWMI6VOzfd3TgLnjzzbl3NS2r+x+V/NafycL5QCZPxspw6jDVqq8Uw+1F1jc2ucmazjxVHMQwwBcWwR
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230031)(4636009)(136003)(396003)(376002)(346002)(39860400002)(230922051799003)(82310400011)(64100799003)(451199024)(1800799009)(186009)(40470700004)(36840700001)(46966006)(36860700001)(2906002)(54906003)(70586007)(82740400003)(70206006)(478600001)(16526019)(1076003)(107886003)(316002)(7636003)(6666004)(47076005)(336012)(40480700001)(426003)(83380400001)(110136005)(86362001)(40460700003)(41300700001)(36756003)(8676002)(5660300002)(2616005)(4326008)(356005)(8936002)(26005);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2023 12:31:25.6864 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b4a7bfcc-f753-4d6f-28a1-08dbd5564e30
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DS2PEPF0000343A.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6033
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 05/13] vxlan: mdb: Adjust function
	arguments
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
From: Ido Schimmel via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Ido Schimmel <idosch@nvidia.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Adjust the function's arguments and rename it to allow it to be reused
by future call sites that only have access to 'struct
vxlan_mdb_entry_key', but not to 'struct vxlan_mdb_config'.

No functional changes intended.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 drivers/net/vxlan/vxlan_mdb.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/net/vxlan/vxlan_mdb.c b/drivers/net/vxlan/vxlan_mdb.c
index 5e041622261a..0b6043e1473b 100644
--- a/drivers/net/vxlan/vxlan_mdb.c
+++ b/drivers/net/vxlan/vxlan_mdb.c
@@ -370,12 +370,10 @@ static bool vxlan_mdb_is_valid_source(const struct nlattr *attr, __be16 proto,
 	return true;
 }
 
-static void vxlan_mdb_config_group_set(struct vxlan_mdb_config *cfg,
-				       const struct br_mdb_entry *entry,
-				       const struct nlattr *source_attr)
+static void vxlan_mdb_group_set(struct vxlan_mdb_entry_key *group,
+				const struct br_mdb_entry *entry,
+				const struct nlattr *source_attr)
 {
-	struct vxlan_mdb_entry_key *group = &cfg->group;
-
 	switch (entry->addr.proto) {
 	case htons(ETH_P_IP):
 		group->dst.sa.sa_family = AF_INET;
@@ -503,7 +501,7 @@ static int vxlan_mdb_config_attrs_init(struct vxlan_mdb_config *cfg,
 				       entry->addr.proto, extack))
 		return -EINVAL;
 
-	vxlan_mdb_config_group_set(cfg, entry, mdbe_attrs[MDBE_ATTR_SOURCE]);
+	vxlan_mdb_group_set(&cfg->group, entry, mdbe_attrs[MDBE_ATTR_SOURCE]);
 
 	/* rtnetlink code only validates that IPv4 group address is
 	 * multicast.
-- 
2.40.1

