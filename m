Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 551DA7CA907
	for <lists.bridge@lfdr.de>; Mon, 16 Oct 2023 15:14:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B950820C9;
	Mon, 16 Oct 2023 13:14:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B950820C9
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=B1NOxvt8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3YivF8_kAgyt; Mon, 16 Oct 2023 13:14:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 35DA3820C4;
	Mon, 16 Oct 2023 13:14:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35DA3820C4
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F103AC0032;
	Mon, 16 Oct 2023 13:14:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 74F4AC0032
 for <bridge@lists.linux-foundation.org>; Mon, 16 Oct 2023 13:14:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 500F5611B1
 for <bridge@lists.linux-foundation.org>; Mon, 16 Oct 2023 13:14:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 500F5611B1
Authentication-Results: smtp3.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=B1NOxvt8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u2BwcWgCdnvt for <bridge@lists.linux-foundation.org>;
 Mon, 16 Oct 2023 13:13:58 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2060f.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe5b::60f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 54ACF611CC
 for <bridge@lists.linux-foundation.org>; Mon, 16 Oct 2023 13:13:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 54ACF611CC
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GPxKERaRUEPUHTjS3iz5XfIL2DqBgw8LtSPx4jdl0X23xyoIScCdaHWz7yL7nlzhtCdiPxIlDt6qgvvLMtZSIyU1meA3H06awVN8kjz9MAK86KHn+DHijDwGL+eYyAcysqUctRwP2LnDT2d1s5nBK0mrK0V9s+BJPJ3jddcOEXSHzw9AyhpviGbPGV7Hlh9cvOTOkrMJZhpy2iXTwB24mUs2Hx4hjqOaKfymtjCDOI9dtLDJKSmp3Sc/PJoODYx0P2SWcdw5krIZFlSJByDXvXkrspXeAhUGWpZgVZHglnYFKj04FNs4NjhkcjGizw2hECLParREKLp2/lnZGfH/pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C2lx4a/YsnaaU6/p/tzyWjrkHfRHP9a5+qb6DI6gwiY=;
 b=a/QFUfo8fxhzk22Amdr2f9jlwnjAp/cx6P/4Kk6y6ICpXDAj1h0WkaHGmgeiUOMrAD3InKpAKOiG7bZyMGvRZf2Wyu5QMrxEIcKEXcBMFFfo1bsp33LkhMwkYwaMkC9+JXcUrtF6q9wuCMFS+2Imm0Olh5YL4mxUuLo30yo05jQXrxsJl8aRsJ1RX1cGtm3nmJWOkMLS5ogPX9P9cdKTavF03wUA9X9MJww3y6Hr3PsXxdronye5AlG6u9zXWWijM5biDo//kj2itUsB6AoVAtRI2qcATJMBYCzeway9ZNCczRqF7hLB9/3cPJmmlJ9cIvFueJhvMKZBRozQ/m398A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C2lx4a/YsnaaU6/p/tzyWjrkHfRHP9a5+qb6DI6gwiY=;
 b=B1NOxvt8BUgAcewDDgz752ksdrfk1t5hNLmAo1D/UCMqL9/2hHDy5yxwrgxGCpIwP+n6cta0APT9j/QT3Sqr6Bop2vUJxE8hg7mR7jlzndMyaLO8RRQVMLMM8lfFi2zUCbXQYuDxh8gUhBDrbaqxwN1lN8WmY7wuXxyaM0/qt1UNVNZTVswtbBHZtuLzicjlsb0u48TYPhW8K7AjEfAvi9+fssDcNJrKhyNMV7+jJdUD/ykQmQABFIKJ+Ohi3HyTifj4zIeFDror+yL30DYV5Gizn1LpUBl1dVs42auNpbDJAzSE3NSSbfjVH1BUHK8PVAU1fMLL0NmLvuumechAWA==
Received: from MN2PR20CA0048.namprd20.prod.outlook.com (2603:10b6:208:235::17)
 by MN6PR12MB8590.namprd12.prod.outlook.com (2603:10b6:208:47c::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.35; Mon, 16 Oct
 2023 13:13:55 +0000
Received: from BL6PEPF0001AB71.namprd02.prod.outlook.com
 (2603:10b6:208:235:cafe::a1) by MN2PR20CA0048.outlook.office365.com
 (2603:10b6:208:235::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36 via Frontend
 Transport; Mon, 16 Oct 2023 13:13:55 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 BL6PEPF0001AB71.mail.protection.outlook.com (10.167.242.164) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.22 via Frontend Transport; Mon, 16 Oct 2023 13:13:55 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Mon, 16 Oct
 2023 06:13:40 -0700
Received: from dev-r-vrt-155.mtr.labs.mlnx (10.126.230.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.41; Mon, 16 Oct 2023 06:13:37 -0700
To: <netdev@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Mon, 16 Oct 2023 16:12:48 +0300
Message-ID: <20231016131259.3302298-3-idosch@nvidia.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231016131259.3302298-1-idosch@nvidia.com>
References: <20231016131259.3302298-1-idosch@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.230.35]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL6PEPF0001AB71:EE_|MN6PR12MB8590:EE_
X-MS-Office365-Filtering-Correlation-Id: ede0b1db-9de5-4633-7383-08dbce49c02b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Pa4gUoYy0+W3Ab81GY11eY3bRDNu8i/PM8WW2hsvYcVT43S9HsBSCdAoIGZqfGXfJOJ1wu8Ha0sO5ciePbGzRsPOPoGAIocgyYVmIBfK3evXEdqk6815vLoPECYTgLZIM7Za7+a32HGt/tIwGCVm3PBsl8B8E+neq3muMHD7Izl7s6pmLpL+hhsFTUo+IfwKd251nZGnaj/yxs0p5dLNjoAUBCiedG0yAxjIo06KdizNq5COrvkqgQyZa2dRaRSod2IlTGvyxFoZmuySH4NFYepYqULGHIMal8mv6bgHxY1/b9dZSKQVrT7rnNYGM1VMXd/vCB+FlNu02NpTJBU8nvoVr7ni96uQp//2ktp1svb/31IoiE7l3U+nvEYb8HvENC6RgApy3gyZNnH0+4X0CUPGzY5AJFUERtbfwKtaZI0D9IvWi7I/YiNA6r6kWbJhh7EhvA/uvMFhaPPa2lvF6uLPSvg+iEtKob+FMg81LQPoJB894//BwSccZD2aQbu+pLE54ao91ktw3ce9mq2TOQ2Xp4SbdsVo+khTdOfzv0Bi3wBduPodGPx+0xCJJigC09AX/VqlGvQe/zT5NI5s+QFlwRu3BELSj3rEucHaomnjNzjw8bsdZdMIHiHRWwuleCK3jLehDLDfx+93wJKHPzv9iYSgCQkTMVATj4XN4UzX2js383wAaW8atg6xB1Ba1Lv0UWpdpNBzqDZYgJQ+8xMLSfXOynI7hjJX5iw2KuKRdZVYyE+M/vB3TPzIdmCa
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230031)(4636009)(376002)(39860400002)(396003)(136003)(346002)(230922051799003)(1800799009)(64100799003)(186009)(451199024)(82310400011)(36840700001)(46966006)(40470700004)(478600001)(316002)(110136005)(41300700001)(8936002)(4326008)(8676002)(70206006)(70586007)(54906003)(5660300002)(40480700001)(36860700001)(7636003)(86362001)(356005)(47076005)(2616005)(107886003)(26005)(36756003)(336012)(426003)(16526019)(83380400001)(82740400003)(40460700003)(6666004)(1076003)(2906002)(15650500001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2023 13:13:55.1783 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ede0b1db-9de5-4633-7383-08dbce49c02b
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BL6PEPF0001AB71.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR12MB8590
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 02/13] bridge: mcast: Account for missing
	attributes
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

The 'MDBA_MDB' and 'MDBA_MDB_ENTRY' nest attributes are not accounted
for when calculating the size of MDB notifications. Add them along with
comments for existing attributes.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 net/bridge/br_mdb.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index fb58bb1b60e8..08de94bffc12 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -452,11 +452,18 @@ static int nlmsg_populate_mdb_fill(struct sk_buff *skb,
 
 static size_t rtnl_mdb_nlmsg_size(struct net_bridge_port_group *pg)
 {
-	size_t nlmsg_size = NLMSG_ALIGN(sizeof(struct br_port_msg)) +
-			    nla_total_size(sizeof(struct br_mdb_entry)) +
-			    nla_total_size(sizeof(u32));
 	struct net_bridge_group_src *ent;
-	size_t addr_size = 0;
+	size_t nlmsg_size, addr_size = 0;
+
+	nlmsg_size = NLMSG_ALIGN(sizeof(struct br_port_msg)) +
+		     /* MDBA_MDB */
+		     nla_total_size(0) +
+		     /* MDBA_MDB_ENTRY */
+		     nla_total_size(0) +
+		     /* MDBA_MDB_ENTRY_INFO */
+		     nla_total_size(sizeof(struct br_mdb_entry)) +
+		     /* MDBA_MDB_EATTR_TIMER */
+		     nla_total_size(sizeof(u32));
 
 	if (!pg)
 		goto out;
-- 
2.40.1

