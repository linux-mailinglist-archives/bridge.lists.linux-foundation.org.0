Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E172C686CE7
	for <lists.bridge@lfdr.de>; Wed,  1 Feb 2023 18:29:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C82C610B4;
	Wed,  1 Feb 2023 17:29:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C82C610B4
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=AcQC/eMT
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MhjEKoGta8ce; Wed,  1 Feb 2023 17:29:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id EDDD5610A2;
	Wed,  1 Feb 2023 17:29:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EDDD5610A2
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8FF9AC007F;
	Wed,  1 Feb 2023 17:29:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 37ABAC002B
 for <bridge@lists.linux-foundation.org>; Wed,  1 Feb 2023 17:29:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 05F4540AA6
 for <bridge@lists.linux-foundation.org>; Wed,  1 Feb 2023 17:29:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 05F4540AA6
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=AcQC/eMT
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nOVcKdmaqgp0 for <bridge@lists.linux-foundation.org>;
 Wed,  1 Feb 2023 17:29:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 47C5E40A37
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on20624.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eab::624])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 47C5E40A37
 for <bridge@lists.linux-foundation.org>; Wed,  1 Feb 2023 17:29:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RtbwJE9pbn+0OxCvzfqu6RORGNy22/40CHapzzntke2oJwX0mEW9UKd8cbr/0oer+aMvYK/QAktYxUXpGroIf9TsUG8KrSizu2zHtvTHdPAPn/lwggTZ7Pe1WUJ+A9aFal/AgLnreukhCiibgzgTFHvUlJT58qA2U9lLz6jX4YoDze03E4Iv9SYR0MBNFoMcBNp7XwtyFk8H76lOWg9NLDmB8SLCwiTMqjjKqGliYKPixjxzI5AIFfawe4sug0kiPaK+LHdvpBs7iCkPrRZoRkpoIzd7yNOFBLeErCPt0SOhVAcfRGlR0f+7Hd39UAfKfW2sPq5XB0MZwTCOFytXOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e3Afw2Xez+FIQKEQo3lqKv+Eo0xyTlcJx0ejHMFjpoQ=;
 b=M8wYjYUAL/o3k6JXSe4LWCASnwE2EveQotsHBV820RkCAfrRMg0m+jlqpES9JwLvxt5KskjR1qgXsm93POIP50XgkUjqzYEz5EJnW/GivmxXmReWUHU6EK8JvBen1ycqHXEgSeKj2UtD3fjrNooeCSfb1mmeMqFvDMny07BLnGIJApYRdGs2TykeJLVupcDYou6vFbn2Nmh2AU95cH2jrFq9M43bTzG5wT6vxySxLbzJ7UhOzLy466AFPt7ZGgXzCwxtt/jRjiHoft2k/9RB46Upajy7nuB7BzxZj37XG3hyfU3QmXxH/FGac/skQ9jkXC+uzr4OV35DNL8ZZPZvfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e3Afw2Xez+FIQKEQo3lqKv+Eo0xyTlcJx0ejHMFjpoQ=;
 b=AcQC/eMTuP//hArD+a0PmtgQdAWYb1cZQbHj+ngD3OkoIOauRPv7QKHcxmmhfx6Svkn3WXPOKlTSGMpFbE4yMU1h2QL3xBioag8PNO0fzVt1u4NWVyhlSa1HQ9wc39ZDW7qUyCvllD2qDwRYoiVuZ9oqgZoWPUKT82bhTOYMAt8NXC8w5rNELqiAwtLjiSr81orG5fgi6rwmouTYl+PwQhi05x0bPPGZiTPpRYi0xPb9+xNd1fbZAcuOhSP2R9Mzv6/QFnnVpK4AcWbj1d08Rb9Ey+lwkOE8yf4wiwWPggDPricwNPrTlQoKqI0dW0MbWB3iuUVBGwl9d+OSIiid4A==
Received: from BLAPR03CA0155.namprd03.prod.outlook.com (2603:10b6:208:32f::13)
 by MN0PR12MB5763.namprd12.prod.outlook.com (2603:10b6:208:376::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.38; Wed, 1 Feb
 2023 17:29:34 +0000
Received: from BL02EPF000108E9.namprd05.prod.outlook.com
 (2603:10b6:208:32f:cafe::a3) by BLAPR03CA0155.outlook.office365.com
 (2603:10b6:208:32f::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.38 via Frontend
 Transport; Wed, 1 Feb 2023 17:29:34 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 BL02EPF000108E9.mail.protection.outlook.com (10.167.241.202) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6064.17 via Frontend Transport; Wed, 1 Feb 2023 17:29:34 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Wed, 1 Feb 2023
 09:29:21 -0800
Received: from localhost.localdomain (10.126.230.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Wed, 1 Feb 2023
 09:29:18 -0800
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov
 <razor@blackwall.org>, <netdev@vger.kernel.org>
Date: Wed, 1 Feb 2023 18:28:38 +0100
Message-ID: <519175434f6f015f62b29e5fc54b098fe6d5a989.1675271084.git.petrm@nvidia.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1675271084.git.petrm@nvidia.com>
References: <cover.1675271084.git.petrm@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.230.37]
X-ClientProxiedBy: rnnvmail201.nvidia.com (10.129.68.8) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF000108E9:EE_|MN0PR12MB5763:EE_
X-MS-Office365-Filtering-Correlation-Id: 464c7d7b-21f9-4b74-dd1e-08db0479e2de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ncRGJu5/na7idzhFp+P73RXwrfiqCrd3fgV10W/ww2+IOHITAM+T8t23qmjjpR0La0kWY09d2KjYANmSaQJXGpezrKBaWLY8RRKin1XF9qILMxyn/cuYu2Va+e1a6aa50LUn8ZfyCeoCt9a7B2GagqBQpP4nXlYHNeRbbKVCAOi3XDux0KJCgEw2EOI9er7kubZWjfcYgE3mUjQOHjOOy1GPpawcbDK3wKWTppifrnq1LEaNyamGeM+gVmuUgkqkU5CxZR2m3JLyO6OqSsRskendETAIQ745E4/eBBWpgmqGlKmE7QSMEZYOodJ15hknIsERxyhWFEkEyRfJnKe5r3DU23MHZWRogOWPx/n6QiD9T+Hfbc8SoyLV/9tIRNv5PGWslDmrDWMBNhJDckz4maVrwR4WKlWCMRx0K+7Mngct1qfJRatYaEsrgHUz4TPBitXobBTsMC76jVbkc53K9Rp87NiNGUt+zw0vQfS/0ZX2dlhkRnADqtIqMyfhqKpAIOcWWLjpBDlIpfk9iq7LO02EDv9D+oKHKtB05ieK3pbxgWxYHLAtnNQGOodHfEVS/5Kg2D7q3XvHs5H5+IM5NYL6Bgo/FxGga/wGTFcRGH/cOhfPveVm+bt6M7cEimlgd1XAwSpFvvQ6bxrgXpselWNdzbLmTT9mjQDFU30mld49igOp90kfu0jkHhuu0j/ANN5amYzkQtGx9W8EnEZ7wQ==
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230025)(4636009)(346002)(396003)(39860400002)(376002)(136003)(451199018)(40470700004)(36840700001)(46966006)(70206006)(86362001)(36756003)(40460700003)(426003)(316002)(83380400001)(82310400005)(47076005)(336012)(110136005)(6666004)(478600001)(26005)(107886003)(54906003)(5660300002)(8936002)(2616005)(186003)(16526019)(356005)(7636003)(40480700001)(82740400003)(8676002)(70586007)(41300700001)(4326008)(2906002)(36860700001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Feb 2023 17:29:34.4836 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 464c7d7b-21f9-4b74-dd1e-08db0479e2de
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BL02EPF000108E9.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB5763
Cc: Petr Machata <petrm@nvidia.com>, Ido
 Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: [Bridge] [PATCH net-next mlxsw v2 05/16] net: bridge: Change a
	cleanup in br_multicast_new_port_group() to goto
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

