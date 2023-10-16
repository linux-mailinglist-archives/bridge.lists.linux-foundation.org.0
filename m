Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B97B87CA90F
	for <lists.bridge@lfdr.de>; Mon, 16 Oct 2023 15:14:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EAAF3408EC;
	Mon, 16 Oct 2023 13:14:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EAAF3408EC
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=bazPTwSS
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NRsqyc-6hZxy; Mon, 16 Oct 2023 13:14:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 01E0D41817;
	Mon, 16 Oct 2023 13:14:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01E0D41817
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A8618C0088;
	Mon, 16 Oct 2023 13:14:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5E45DC0071
 for <bridge@lists.linux-foundation.org>; Mon, 16 Oct 2023 13:14:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 11FC582143
 for <bridge@lists.linux-foundation.org>; Mon, 16 Oct 2023 13:14:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 11FC582143
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=bazPTwSS
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dzvbTjia8rhy for <bridge@lists.linux-foundation.org>;
 Mon, 16 Oct 2023 13:14:12 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2061a.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e8a::61a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 411DF820F7
 for <bridge@lists.linux-foundation.org>; Mon, 16 Oct 2023 13:14:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 411DF820F7
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zw7pkhh1U/4paHBqAcQdyNN3PAzKKilHt18EPlsu8/DTKKOYk7btow1b74ghPo/XX86MJM3jsPwmoUXCi/i2+ZbIgsIG7S2+OYJPuT1+cV1it1Lf5yG22pSIRgxlqTcVSwEkq0gf+B+TiZNmGbYhYtsFAd6snshCezQnTGzHHKzP93E287g7+wG3dq3oBNnthAzxkFwYA57On3lc3GwEo4q6dk22VfhBPUNLhTLrLU/tizjrT/MezqF5IfMXYkozIxoREit05Ve9MbPsjcp87HYoJSFZqckFGp+SZQvrAhBbX4LyDoEzPy9PhRp+Lt9wSdlW44RV8aEUBeJDTKgJSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0yjMJB5rcJ+8MrWeQsljB0+d7+3hGEcxUAz/vBZ1bvo=;
 b=EODZZDwqvUNvg9892QkUEo3uVB9M8cr7HafyfofhQz5yHnSURowuwwdZRhS1PYawgKRRLJvHutoBJIVRwb5BwiqQOWmF0LOSnsd1XMGGpQyUWG/undc8kRFXZ5t0cVIrkOAgnWNRRmZGKCEr53faw++qAuJ9qm1Eqnu2KpmMCNUUmKKMwyZxrF66l4Uk9nbekNQD3OxYGGGZsWLKXWPTzPFZSgT7ejmz+w7aliI8McmwfpntB/XMjJfbUVCQA3fntmZEwUkWJ+V2wOc+Q/tRbTJVRPiLiPL2tlGhUAhe6XtNqVm4aPZMZ5MNcmb7VSowES0YCAAQ6NGUsGV1tqRsSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0yjMJB5rcJ+8MrWeQsljB0+d7+3hGEcxUAz/vBZ1bvo=;
 b=bazPTwSSHt+gkLbygiQjlEbhxeaxCwKg1Uan1roIIRyR0Ifgll6HCOZchtm2vf1Y2CtWCvkRBdk370Zvj99NFykUvUY4d4xbbG5Mt/bSTcyzOd45+1RRlC7girqrWcbkz9QS26CFMkEJFuJx7AVCmWGimiw2+8TznxsnZsUIe9QSVquL4J+rioK81lnL7F9rvTIw0Vd+QrmqOmOk80mj+1T41uErS2r6BKUmqeBu6sps1v5UT3HT5BshBTSKbP/l7jZH5mEYHQBAP6X6n2Gpgj9/BWH0E5okdhLZoJpKoQ8oz8gTClVOsm4/Vdqj/BGbUoTu94/PhWbV11RJXw0qbQ==
Received: from MN2PR20CA0060.namprd20.prod.outlook.com (2603:10b6:208:235::29)
 by DM4PR12MB5771.namprd12.prod.outlook.com (2603:10b6:8:62::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.35; Mon, 16 Oct
 2023 13:14:07 +0000
Received: from BL6PEPF0001AB71.namprd02.prod.outlook.com
 (2603:10b6:208:235:cafe::61) by MN2PR20CA0060.outlook.office365.com
 (2603:10b6:208:235::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36 via Frontend
 Transport; Mon, 16 Oct 2023 13:14:07 +0000
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
 15.20.6838.22 via Frontend Transport; Mon, 16 Oct 2023 13:14:07 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Mon, 16 Oct
 2023 06:13:50 -0700
Received: from dev-r-vrt-155.mtr.labs.mlnx (10.126.230.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.41; Mon, 16 Oct 2023 06:13:46 -0700
To: <netdev@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Mon, 16 Oct 2023 16:12:51 +0300
Message-ID: <20231016131259.3302298-6-idosch@nvidia.com>
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
X-MS-TrafficTypeDiagnostic: BL6PEPF0001AB71:EE_|DM4PR12MB5771:EE_
X-MS-Office365-Filtering-Correlation-Id: 83568a1e-1c91-41a8-4843-08dbce49c738
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SVemNRXMNUuX1pfhnZGd5F1lPxBFTrASaCleUrMD1QZyk9qLi6pc4bcaon4sepbm0LmWn5xo/F1MlvCEfYupJVu578o2D37ruEg+IUj+4FYJx7jQ4ifZLq0A7iqdX2EwPmTXVhZSJbx+d46OWDLG8vSS99Qb/KVfqRsikKelBp6jdvFmNnDcyvxaYTAVX0d4b+TLtFhYFdQevFiXtHR05IxsLypv0zJiC2LB3fQ8jsXZc4OG+pJdT27N5aFxt5u6xr+P5MCFZ7HvZBWbIBFjP91lDWydYKLpz3Bk2/Nrcqog1JJp6YR/9H54ohRbXFE1vDa6wpFVM9MNEIkRkSw8k6gpXiTQLXiQGcRC4h/BRCcRVjmxd7+k9KTu0dp3vSmH/yusz9HLhG6OhvVHjO+phRcdYb21J1KlHoI1pfOx/EMY7TiBgME5q7CJbZ6W5SzrFiAFLNavtffFbY43IXMdC2nbDWLRR1YvgTIOqVZSg9fjG6IKlqQYBwNX1IeOGCoigMsoodje5uZgd57r6qKgjSNHUurna5sP+EB6PlGFYF0JsVfe5U0SPfa3qb+6KhhSgyUlFXjZZrAIK+BhKLVOZoiPPuLJW3uCLU2GYiONmqXuBEvDzcqjsQymtEr4l5tFBgRuaM76MiV4uvPRYT389ju5YIdMwnJqPJUxKa8Xg7RckVrgSSnkKwNUCLuo9/IKwnv5fR5bleOH4XUrXpaWTx4yh511Jue2mkyZfWXET399lycQF19STlYDUtg4qPOv
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230031)(4636009)(39860400002)(346002)(376002)(396003)(136003)(230922051799003)(186009)(82310400011)(1800799009)(451199024)(64100799003)(40470700004)(36840700001)(46966006)(41300700001)(110136005)(70206006)(478600001)(70586007)(54906003)(6666004)(107886003)(1076003)(26005)(16526019)(336012)(426003)(316002)(2616005)(8936002)(4326008)(8676002)(2906002)(5660300002)(36756003)(86362001)(7636003)(47076005)(36860700001)(83380400001)(82740400003)(356005)(40460700003)(40480700001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2023 13:14:07.1158 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 83568a1e-1c91-41a8-4843-08dbce49c738
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BL6PEPF0001AB71.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5771
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 05/13] vxlan: mdb: Adjust function
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

