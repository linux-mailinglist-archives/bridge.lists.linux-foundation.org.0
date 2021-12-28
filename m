Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EC9480AD6
	for <lists.bridge@lfdr.de>; Tue, 28 Dec 2021 16:28:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B566960AEA;
	Tue, 28 Dec 2021 15:28:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 278pXKtBWCKX; Tue, 28 Dec 2021 15:28:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 570EF60AEB;
	Tue, 28 Dec 2021 15:28:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 15EFBC006E;
	Tue, 28 Dec 2021 15:28:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 95A5CC0012
 for <bridge@lists.linux-foundation.org>; Tue, 28 Dec 2021 15:28:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7D13160AEB
 for <bridge@lists.linux-foundation.org>; Tue, 28 Dec 2021 15:28:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cficxpLJOSoa for <bridge@lists.linux-foundation.org>;
 Tue, 28 Dec 2021 15:28:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2060a.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eaa::60a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 37CD760AEA
 for <bridge@lists.linux-foundation.org>; Tue, 28 Dec 2021 15:28:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ziq17QtMpMyDLMw0r1g3nGPd9SDmrximITj7kV8WdpVxhzP6NvEWN+z1F74AWCXENJkINDXobmlWS5s0/wQJRXrLYmIwM9ugpoRdrZX6Yok6jntQQU7LWQ8vP4XKIZyHDe9sc60Zj1AH27lCyrMZqIOHG8KkyyYnQp6F5hwiSCBJ3Rug+zAbSMZtE5BZnJ+UDGABUkZLD6PEjYziuM9hE/fgPtIYiIC2/lAofHH8L6clNCEddsUTcVCASs/fKJ7FwfUa2qZJMFyZfMy38he7nXLA8zrhZM0pWY8YzSFEXUXuvvUjAgEeo3G+t4zTIahElnWuRhVI9b26pfD8m0z0kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NoXpSSQW7IdRbVP+BTC9wyNpcTmNKbZ1lDIYNUz/d4k=;
 b=gQR0movN7CoToL+L7ZkFmZ/s1biHcI7ULAV6iaO35lFv/yF3ZOpPH2SmDYCbZlOqcB0aCw4vi0/IeEt4BMOdStkN7TG/IpYHkzmTUY+SqpQbLjYSQALgrl2f6sv7mT7EnySA6p9y3ZGXDqQ3aL7R8MFOdUjyV5OLgH6par1UuxJkZGu5D/PK1GC8N9G0N2TuehbNhF2ZeVZbomA6EjZjwy8OmeFiOoAZ6B/g45WzxdkdkekKxGc7iXvmgUXVOX/JNuT6JUJZC8PNC6TeIwk+onlHLT2PR7rFKcGuz/ocJ847V6eBP2aqRq+qnGcJXSFV8VOB3mL4VV5wUCBU49yB/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 12.22.5.236) smtp.rcpttodomain=lists.linux-foundation.org
 smtp.mailfrom=nvidia.com; dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NoXpSSQW7IdRbVP+BTC9wyNpcTmNKbZ1lDIYNUz/d4k=;
 b=ImUCMw1MsjXhlNhnWDZB1OVKafV/GbtRf0D/aXIVzMSdnowlozESpAnnxny3w0NNcOnwdXdo+bqXVx09dVjCE7Sjw0BZZTSAD2H2FDLb1cL4pU87wMbvsCGfmbxw7Fu3a4lHIEvAINK/YL0F2Z1w7hTjwuqaJNPYP32B+HNhCeWH+OoKeGvLjhhiJNDZvdeloLSq5TyOCEaj+B+6Wg/u60cwyGDWWVt+eefyQ3vzcYcxVRutQMC9JUFAAmfaJAkuekCRyN+2o0xBV1EqMPOinLSrXg2NUI2xH5ksPEILeYPPkClYryE9S0rNEGaJ0Pb4Kk0lwcp22DQa4nT3OFMVfQ==
Received: from BN6PR2001CA0005.namprd20.prod.outlook.com
 (2603:10b6:404:b4::15) by CH2PR12MB4824.namprd12.prod.outlook.com
 (2603:10b6:610:b::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4823.19; Tue, 28 Dec
 2021 15:28:39 +0000
Received: from BN8NAM11FT009.eop-nam11.prod.protection.outlook.com
 (2603:10b6:404:b4:cafe::39) by BN6PR2001CA0005.outlook.office365.com
 (2603:10b6:404:b4::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4823.18 via Frontend
 Transport; Tue, 28 Dec 2021 15:28:39 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 12.22.5.236)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 12.22.5.236 as permitted sender) receiver=protection.outlook.com;
 client-ip=12.22.5.236; helo=mail.nvidia.com;
Received: from mail.nvidia.com (12.22.5.236) by
 BN8NAM11FT009.mail.protection.outlook.com (10.13.176.65) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4823.18 via Frontend Transport; Tue, 28 Dec 2021 15:28:38 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by DRHQMAIL109.nvidia.com
 (10.27.9.19) with Microsoft SMTP Server (TLS) id 15.0.1497.18;
 Tue, 28 Dec 2021 15:28:37 +0000
Received: from debil.mellanox.com (172.20.187.5) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.986.9; Tue, 28 Dec 2021
 07:28:34 -0800
To: <netdev@vger.kernel.org>
Date: Tue, 28 Dec 2021 17:28:11 +0200
Message-ID: <20211228152811.534521-1-nikolay@nvidia.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [172.20.187.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 25a8b197-fa6b-4fb9-c674-08d9ca16b89f
X-MS-TrafficTypeDiagnostic: CH2PR12MB4824:EE_
X-Microsoft-Antispam-PRVS: <CH2PR12MB4824AC85AFCBEC308AC4BAF8DF439@CH2PR12MB4824.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2331;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xm2TVRYTg4NQasidfYLvDgmpEHRaqgHDugJc+kWgvxIryyQPPEIlhabqrA6hcZ3BCPJ0k+9O3KjKgCvyE4eQBPOPCZF1KcRpzTWkg8pqZcy9CYJve3QhSJd1yoRdBEq1r6bUBSbkWjFxMGV37nNcAZ91IWO3Xx6x/AwYZ6hHNxP9FRvkhaCAnZGcDCQTjB6tdvmj1Jjt5cFANFeXq0eTRh+eciWMdr0WH61Qx31wJZmM/ayIwRtP5JhRLdysf+B1dWEQQ7Lfe1l1bPUPvtw4/Y3OValysUUeQFVM4Q6bwkDzbT+sMu2bIJP5niaRjqOqe4a04IzYr1nw8FAStPoFzStB2dIg8O1MRpcHgO/baE8DGSk/aHUXl6yJGTt45p/fe1dgsh1tMSJYe8ARzCIuPxq6VWn2eTrsKseO37ifO/k/6XDSAIPUAbZI1OxG4rx2fSyxGkdefHEtlKDuZJFG4ssEzgojDxMuA7IP5hdMRyusU8U1o20trVciT2fEpoScyjp6R9cfvG9cMd6UzLNYBLwqEzucQ7Yd68Q8nIhpQ3YhDxAPZK6TdjPaji18PJ3L6HdeX6Nj9YYAwjhTsWdKGvSWRZCUzBEgJLUanI03vXy+NjT6j/1idUzGkePanvWNCXIQ01WusVmTEY5/55a1IWA9jhjpIT7D69+IuqcWwIztnL3KiW5NykNUChs825ejMakvE20TRMhvjIiLo/tD+AA5rDiL6MLfBcmF/B2loZIaVQPnX2F89k+FAHuvD3ZQxN+45neScz0Fk8/wZyaYUtWwMPzC5OPbpB7uFyUF4ZA=
X-Forefront-Antispam-Report: CIP:12.22.5.236; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:mail.nvidia.com; PTR:InfoNoRecords; CAT:NONE;
 SFS:(4636009)(40470700002)(36840700001)(46966006)(70206006)(316002)(186003)(2906002)(107886003)(16526019)(70586007)(508600001)(8936002)(6916009)(86362001)(36860700001)(426003)(356005)(82310400004)(5660300002)(36756003)(1076003)(26005)(4326008)(2616005)(47076005)(336012)(81166007)(40460700001)(6666004)(83380400001)(8676002)(54906003)(36900700001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Dec 2021 15:28:38.3487 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 25a8b197-fa6b-4fb9-c674-08d9ca16b89f
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[12.22.5.236];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM11FT009.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4824
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net] net: bridge: mcast: fix
	br_multicast_ctx_vlan_global_disabled helper
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
From: Nikolay Aleksandrov via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Nikolay Aleksandrov <nikolay@nvidia.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

We need to first check if the context is a vlan one, then we need to
check the global bridge multicast vlan snooping flag, and finally the
vlan's multicast flag, otherwise we will unnecessarily enable vlan mcast
processing (e.g. querier timers).

Fixes: 7b54aaaf53cb ("net: bridge: multicast: add vlan state initialization and control")
Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_private.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 2187a0c3fd22..4c7e67d7a5b8 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1153,9 +1153,9 @@ br_multicast_port_ctx_get_global(const struct net_bridge_mcast_port *pmctx)
 static inline bool
 br_multicast_ctx_vlan_global_disabled(const struct net_bridge_mcast *brmctx)
 {
-	return br_opt_get(brmctx->br, BROPT_MCAST_VLAN_SNOOPING_ENABLED) &&
-	       br_multicast_ctx_is_vlan(brmctx) &&
-	       !(brmctx->vlan->priv_flags & BR_VLFLAG_GLOBAL_MCAST_ENABLED);
+	return br_multicast_ctx_is_vlan(brmctx) &&
+	       (!br_opt_get(brmctx->br, BROPT_MCAST_VLAN_SNOOPING_ENABLED) ||
+	        !(brmctx->vlan->priv_flags & BR_VLFLAG_GLOBAL_MCAST_ENABLED));
 }
 
 static inline bool
-- 
2.33.1

