Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C54656885D8
	for <lists.bridge@lfdr.de>; Thu,  2 Feb 2023 19:00:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B9E241CED;
	Thu,  2 Feb 2023 18:00:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B9E241CED
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=AUwQVNjR
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yVimz0LmpogM; Thu,  2 Feb 2023 18:00:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 913C041CEB;
	Thu,  2 Feb 2023 18:00:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 913C041CEB
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2842AC0078;
	Thu,  2 Feb 2023 18:00:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0E0B9C002B
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 18:00:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BE896611E6
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 18:00:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE896611E6
Authentication-Results: smtp3.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=AUwQVNjR
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lpYg_v0sqPtl for <bridge@lists.linux-foundation.org>;
 Thu,  2 Feb 2023 18:00:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 120B9611EF
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2062a.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e88::62a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 120B9611EF
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 18:00:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QPLSQidI/k18ihOCCE0rc9jfyfTF85YSSK/R6hnOIziqnwtkpdPnR3Iih8tcLSXii88xdrxA4IU+sm7Ph2YizPhvBOL6nJ2qfKwS3BZuZEIfFIwLlz5WOtRTUdQS7sUdqlKTb6K2b7YldhixQzP0QJpxQpslAvFqjy0zN0LvtxHEtclz+/Q4LYrdrBND6xF9zjkWKfa0twNbP8FixlWZ6qp5cV5VULjzveik8WKDIBXiUsyV0hocTcFoSVi4YcLNIYTDjvXbXF1hswpBhE1PBNT9mNFuiIgq+paTl4q5dhX9/wd/5Tf4Az1zj1P3zCJxggP1jbOXKv/hV+Su5qrPAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e3Afw2Xez+FIQKEQo3lqKv+Eo0xyTlcJx0ejHMFjpoQ=;
 b=VflezXVkWiXqGeb93x3Gq8gLBjQtANLSYFhgaizBk8pYXcvT+NnnSZkJ21gyAb+pS7N46x/9rz7dPRRJI4lj31AUS59V1kxOIJnwzy1VsxsmGzzj74raeqOgH19bxymxDNfEn1/zvPxJFBTHoM6PFBURHM+SQp1p+KLVG9MNHCFOZooref5uwnOxAwYTrBfOOVJCtcn8BrueFS7Ypy2m414Qa9Tkp5KHMIWz2YeoCYSo20xvxUDf5vV0g/ePGbCkF/AeKc3Np/rWEJ0ksu5A9LsmN0B8L+X2YMzhAk88f9f10pCtUYoidwCu4oj8/PWmhjlX3JSpcDYoY2SigI/bdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e3Afw2Xez+FIQKEQo3lqKv+Eo0xyTlcJx0ejHMFjpoQ=;
 b=AUwQVNjRJtYnZ1KV2IeRK7xzbJuvmKIGwToUz3VChJl6ZQ2+yPHyG52nl5TNpxExnekI6lo8z7KgVtTrRfwjFn9MyFKj5Ptcagm1f9ubS6lXJOZSM+7jtz0reGTVdyAQ7ooc2VEpU5IVKeUSBwY7RVu5K0esU5E2ZODDrgLEtJBUteyy2UCOLRZ26PC6+HUv+56ei4666UkrGhC1vQkMTzTXtlJTKtjlQOBG0iFcQZPJbVHX+or42cqt3LL1cjGbjllaLiq2Uj74RVYb+TQpUBuxX2a5mbPNRPuhaxpYiXjK8qLDI7jTdnPcvSM9wOBnSeRjeeujvoPeMTM1NU9wUQ==
Received: from MW2PR2101CA0001.namprd21.prod.outlook.com (2603:10b6:302:1::14)
 by SA3PR12MB7783.namprd12.prod.outlook.com (2603:10b6:806:314::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.27; Thu, 2 Feb
 2023 18:00:46 +0000
Received: from CO1NAM11FT003.eop-nam11.prod.protection.outlook.com
 (2603:10b6:302:1:cafe::2e) by MW2PR2101CA0001.outlook.office365.com
 (2603:10b6:302:1::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.13 via Frontend
 Transport; Thu, 2 Feb 2023 18:00:46 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 CO1NAM11FT003.mail.protection.outlook.com (10.13.175.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6064.27 via Frontend Transport; Thu, 2 Feb 2023 18:00:46 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Thu, 2 Feb 2023
 10:00:27 -0800
Received: from localhost.localdomain (10.126.230.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Thu, 2 Feb 2023
 10:00:25 -0800
From: Petr Machata <petrm@nvidia.com>
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov
 <razor@blackwall.org>, <netdev@vger.kernel.org>
Date: Thu, 2 Feb 2023 18:59:23 +0100
Message-ID: <519175434f6f015f62b29e5fc54b098fe6d5a989.1675359453.git.petrm@nvidia.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1675359453.git.petrm@nvidia.com>
References: <cover.1675359453.git.petrm@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.230.37]
X-ClientProxiedBy: rnnvmail203.nvidia.com (10.129.68.9) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1NAM11FT003:EE_|SA3PR12MB7783:EE_
X-MS-Office365-Filtering-Correlation-Id: d704499f-7a95-48a7-ec89-08db054768e8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IGNpI2uSx3rvyK61cPer16axbz4hf2ym3TduFbrGEqiP+6Z+3oan41ovR1n4YcfBu4XW2n5MSOGcWmiZeAFvthGRQVEEZWuTaq5pvdFPTlJnLjCgwmIV48oHnhc77K1eLSS2uo/5ZVx5O4ejoN2+ZFjJvD2tx112i26hmFk+ee5G3mdFBcxxgUzKzk/8i1Ti1ZDsRHsWURQPz0Y3VrtO5tHJqm/20cVKI6EcTa25MN9OA7euHXMrlTwVFpnpZQ5xMN288/lY12AN/FhARqyM4ivBtCniYdOe0U1TAr1jDN9L//fBdVBvhOAIyPrcRpT/X09BUQro4B1mVBgRQwi5kqqHPCyZaGwXrp+DZjWd2tC6zdbMBFIPVoam5v59msgKPTDw7cTy6hjJqLXihe4LD3/fJrlSIjujdlA3sfCDZ/hckP4xpOQ0+88lOB3kseuaSwh1I8qNPRzs+MefGA42m+YL5fxevZ1Pr36/ibWD7K+2yMDuROGpeUYgkSP4yn2oFYowBc0WnRuRR4YiolkDyKuJIusEWb2L2CC6JESnzjmHQRezWuBwRTDzx3lLKBjTPjoyCz2PdVRPIFL71hZ30YDOUafB3IPGijYT0FJNdianqYz8EulYjRsp5DeNn3boGV5AiXY7NW0HZis9PGewen9/k0h6UcTeAMm+gxblaLxrPtqRGkHYlv655Ub7tTmgsIUmYzLAvRXhLGW+bjJwXw==
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230025)(4636009)(136003)(346002)(376002)(39860400002)(396003)(451199018)(46966006)(36840700001)(40470700004)(7636003)(40460700003)(36756003)(356005)(86362001)(70206006)(8676002)(70586007)(54906003)(4326008)(316002)(8936002)(41300700001)(82310400005)(5660300002)(47076005)(478600001)(40480700001)(82740400003)(2906002)(186003)(26005)(36860700001)(16526019)(110136005)(336012)(107886003)(426003)(83380400001)(2616005);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2023 18:00:46.2407 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d704499f-7a95-48a7-ec89-08db054768e8
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT003.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR12MB7783
Cc: Petr Machata <petrm@nvidia.com>, Ido
 Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: [Bridge] [PATCH net-next v3 05/16] net: bridge: Change a cleanup in
	br_multicast_new_port_group() to goto
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

This function is getting more to clean up in the following patches.
Structuring the cleanups in one labeled block will allow reusing the same
cleanup from several places.

Signed-off-by: Petr Machata <petrm@nvidia.com>
Reviewed-by: Ido Schimmel <idosch@nvidia.com>
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 net/bridge/br_multicast.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 08da724ebfdd..51b622afdb67 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1309,8 +1309,7 @@ struct net_bridge_port_group *br_multicast_new_port_group(
 	    rhashtable_lookup_insert_fast(&port->br->sg_port_tbl, &p->rhnode,
 					  br_sg_port_rht_params)) {
 		NL_SET_ERR_MSG_MOD(extack, "Couldn't insert new port group");
-		kfree(p);
-		return NULL;
+		goto free_out;
 	}
 
 	rcu_assign_pointer(p->next, next);
@@ -1324,6 +1323,10 @@ struct net_bridge_port_group *br_multicast_new_port_group(
 		eth_broadcast_addr(p->eth_addr);
 
 	return p;
+
+free_out:
+	kfree(p);
+	return NULL;
 }
 
 void br_multicast_del_port_group(struct net_bridge_port_group *p)
-- 
2.39.0

