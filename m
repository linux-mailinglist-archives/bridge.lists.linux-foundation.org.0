Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54DF67D6B97
	for <lists.bridge@lfdr.de>; Wed, 25 Oct 2023 14:31:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 94A2E432F3;
	Wed, 25 Oct 2023 12:31:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 94A2E432F3
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=pei49oiX
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id voIyqPH2XA8X; Wed, 25 Oct 2023 12:31:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id ACAB943303;
	Wed, 25 Oct 2023 12:31:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ACAB943303
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 12489C0032;
	Wed, 25 Oct 2023 12:31:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1DA9DC0032
 for <bridge@lists.linux-foundation.org>; Wed, 25 Oct 2023 12:31:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E0C3170888
 for <bridge@lists.linux-foundation.org>; Wed, 25 Oct 2023 12:31:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E0C3170888
Authentication-Results: smtp3.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=pei49oiX
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QyhRk6N24oKg for <bridge@lists.linux-foundation.org>;
 Wed, 25 Oct 2023 12:31:20 +0000 (UTC)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam04on2061a.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e8b::61a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1C06C70893
 for <bridge@lists.linux-foundation.org>; Wed, 25 Oct 2023 12:31:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C06C70893
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cnZGlplKOyrx3jn2sOu1AytHWpC8D52sQou06CtfeNKkYSP07d9vBEV8YTblOj8kRji50HgWR/lOWof+zAEcC1b+WEeOwZRW4rEdLAWM5lSNSXgKJNIfj8382Xi0HuEaxgov3SfBC5YQ/HNfN2+Nyz+t63siTiMRjiURku3TI+MCG6me4MYZ2egjVPQAd4RV+e69pbVTURyfuQKb6fNswu2V51F01tkEduhZ382QX4xOe4bpbI4J4h13cJEBNpw3c+Rz2AYZdl28/KM7nOq+msstxaqvZRzCel4EnSg6ocrFSnzzWNiuGPfFni5n3QEBJ524uTDTxpyfhPYPLU2SMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZM+2gc7kqrtAMg493EL07svkmq0Gnp3RVzo7hp/UNeM=;
 b=ZhimkJjy/pB8DpHz7XZsnH1WK7jHy4wRemDxKsrUY6pnRYuG/0CG36gUP9ftws/h4cWfTGnImYhmJmKt8D7xG9m/Lkd4SLmO1D0O7fZDZyl5CwqJbyMo5dWiLZcn0M577i/NOCyM+H480TK5bZeqE4S6lwPYWrk4GJqcDoCtOYciz4hE08hrk9hWMTPqNloh2qFc49tU65TaKwXtIOA7gzqswEZKO2H2ViGYlDQ0rZiDLeUT19Nrix98j8/5CFgtYGhpcwo3pF75QCPD3oCUyPyxlXvz/gO/2waKqJvuLAS0v/3N4osDrJi55OFSiQcRcBtDowvsddo1IM6GZQT9fQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZM+2gc7kqrtAMg493EL07svkmq0Gnp3RVzo7hp/UNeM=;
 b=pei49oiXZvJiUcDDVjaIxbv7Z5qkcSeINuvj1ChMSdwvDh+gQX+2p3r/xYp8/qF/rCv6U1cuOFdSINLA82+H1ffweU2Jl+PzRYVtVwW5qoh4PzgkEkfBNVO8vXHeDJAJexBH3VCC/68mDiuWfVMEvKqcros4Orw4/jEWcMRA2lFNko3cpz0G4iMvW3BDXLTizEINoENcNXxSh4aWphPzH/UT1C1FdeLTrmT2WwsS86+rB51qaLgsr1nLDwiZNN5zzOu0lb71tOoOJknVhT08/uSa22lVAHbvMSa8Ew3lvN/3KX0KsJYlVLCn/6pmsVB7a6WewZBj+OTqm6Lxh/GtlQ==
Received: from DM6PR02CA0078.namprd02.prod.outlook.com (2603:10b6:5:1f4::19)
 by CY8PR12MB7100.namprd12.prod.outlook.com (2603:10b6:930:60::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.31; Wed, 25 Oct
 2023 12:31:18 +0000
Received: from DS2PEPF0000343F.namprd02.prod.outlook.com
 (2603:10b6:5:1f4:cafe::21) by DM6PR02CA0078.outlook.office365.com
 (2603:10b6:5:1f4::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.19 via Frontend
 Transport; Wed, 25 Oct 2023 12:31:17 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 DS2PEPF0000343F.mail.protection.outlook.com (10.167.18.42) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6933.18 via Frontend Transport; Wed, 25 Oct 2023 12:31:17 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Wed, 25 Oct
 2023 05:31:05 -0700
Received: from dev-r-vrt-155.mtr.labs.mlnx (10.126.231.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.41; Wed, 25 Oct 2023 05:31:02 -0700
To: <netdev@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Wed, 25 Oct 2023 15:30:10 +0300
Message-ID: <20231025123020.788710-4-idosch@nvidia.com>
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
X-MS-TrafficTypeDiagnostic: DS2PEPF0000343F:EE_|CY8PR12MB7100:EE_
X-MS-Office365-Filtering-Correlation-Id: 6c8e536d-9afc-4980-aa47-08dbd556496e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DuKgQxR9qKMnUsqg32pbwj6/6/SYP8KM5SkZakBrTVGcG6gYwAJAdmC3ya5CT5oYxLpqe/PZBBQ5juCF6jGe3uqOeas/9Q/3wa5IG+INJTXb8sAWgCZzk9Kkroak7opRTQY/NENgzt/f7/o1WF4tkIrvEwBCuDd7SsVH6I1dYdWkwZp6m+KfZ5Aa1Bchcn9r1HX0rElCIkT0oQ5UCksURO+DH6qLL5cunx3ilT4xAvQJdhnR0ewIDOiFqnXdeDqgWCuPl+LnhkcBIOALVJdZu2BGJ8HQQib+ncmJKKpxBMYcd4PcOJXUQZ9IAAVDgh39eKKpAwGvaf+bXhlHwOGW5BM2aGVumGg1LM0+OnlYDHNkzkj6vufw1xzbBRdhxgsBg3qpH0w3i5HE9no/ObiDX8zkFLbCazKa+DrcMfRXOqYPrbxjNsEI1IB7Dw0NirLXrsw/Dw3kczC6yRVIijID1n8Uy+1Bb0oWlxsZN8sFv6eKZCTWwlrgCzlwxXQa8luO1WUKP0yiHbghs9UMMi9HaJacUNyK8bmukKmWpX5JU/kXbHDSl0z5vuEwFCmV5U8d+XCRlSzGrnag6SlkGtJGFsKw3M2fbMYqQqqMg622nXPj0aN7U+5Vy8Gg2+3/lGa25ZlrKPew+gqV8ZHY3rzaAA+xs6yziMdKW5VDc9giPiLnFCR7awp9cWmBilGq2TPL6mPGeEWFVomBK3qjP4SAQ/AZj/CQbaiykw5RysVEGORDwgGfO64X3mavdagjEo6C
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230031)(4636009)(136003)(39860400002)(396003)(346002)(376002)(230922051799003)(1800799009)(82310400011)(64100799003)(186009)(451199024)(40470700004)(36840700001)(46966006)(2906002)(2616005)(40460700003)(356005)(82740400003)(7636003)(36756003)(36860700001)(86362001)(336012)(16526019)(426003)(41300700001)(4326008)(107886003)(6666004)(47076005)(1076003)(478600001)(40480700001)(83380400001)(8936002)(26005)(8676002)(5660300002)(70586007)(54906003)(110136005)(70206006)(316002);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2023 12:31:17.7387 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c8e536d-9afc-4980-aa47-08dbd556496e
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DS2PEPF0000343F.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7100
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 03/13] bridge: mcast: Factor out a
	helper for PG entry size calculation
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

Currently, netlink notifications are sent for individual port group
entries and not for the entire MDB entry itself.

Subsequent patches are going to add MDB get support which will require
the bridge driver to reply with an entire MDB entry.

Therefore, as a preparation, factor out an helper to calculate the size
of an individual port group entry. When determining the size of the
reply this helper will be invoked for each port group entry in the MDB
entry.

No functional changes intended.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 net/bridge/br_mdb.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 08de94bffc12..42983f6a0abd 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -450,18 +450,13 @@ static int nlmsg_populate_mdb_fill(struct sk_buff *skb,
 	return -EMSGSIZE;
 }
 
-static size_t rtnl_mdb_nlmsg_size(struct net_bridge_port_group *pg)
+static size_t rtnl_mdb_nlmsg_pg_size(const struct net_bridge_port_group *pg)
 {
 	struct net_bridge_group_src *ent;
 	size_t nlmsg_size, addr_size = 0;
 
-	nlmsg_size = NLMSG_ALIGN(sizeof(struct br_port_msg)) +
-		     /* MDBA_MDB */
-		     nla_total_size(0) +
-		     /* MDBA_MDB_ENTRY */
-		     nla_total_size(0) +
 		     /* MDBA_MDB_ENTRY_INFO */
-		     nla_total_size(sizeof(struct br_mdb_entry)) +
+	nlmsg_size = nla_total_size(sizeof(struct br_mdb_entry)) +
 		     /* MDBA_MDB_EATTR_TIMER */
 		     nla_total_size(sizeof(u32));
 
@@ -511,6 +506,17 @@ static size_t rtnl_mdb_nlmsg_size(struct net_bridge_port_group *pg)
 	return nlmsg_size;
 }
 
+static size_t rtnl_mdb_nlmsg_size(const struct net_bridge_port_group *pg)
+{
+	return NLMSG_ALIGN(sizeof(struct br_port_msg)) +
+	       /* MDBA_MDB */
+	       nla_total_size(0) +
+	       /* MDBA_MDB_ENTRY */
+	       nla_total_size(0) +
+	       /* Port group entry */
+	       rtnl_mdb_nlmsg_pg_size(pg);
+}
+
 void br_mdb_notify(struct net_device *dev,
 		   struct net_bridge_mdb_entry *mp,
 		   struct net_bridge_port_group *pg,
-- 
2.40.1

