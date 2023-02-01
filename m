Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C538686CE3
	for <lists.bridge@lfdr.de>; Wed,  1 Feb 2023 18:29:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 443F341992;
	Wed,  1 Feb 2023 17:29:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 443F341992
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=gdjHSZgO
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GNJ_nT5W7DVD; Wed,  1 Feb 2023 17:29:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 59139419AE;
	Wed,  1 Feb 2023 17:29:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59139419AE
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 186DCC007C;
	Wed,  1 Feb 2023 17:29:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 585BAC002B
 for <bridge@lists.linux-foundation.org>; Wed,  1 Feb 2023 17:29:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 16D7F40A37
 for <bridge@lists.linux-foundation.org>; Wed,  1 Feb 2023 17:29:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16D7F40A37
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=gdjHSZgO
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id djztizKQMoZV for <bridge@lists.linux-foundation.org>;
 Wed,  1 Feb 2023 17:29:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 399D7403EA
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on20615.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e8a::615])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 399D7403EA
 for <bridge@lists.linux-foundation.org>; Wed,  1 Feb 2023 17:29:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ilNfjHlnS5tWmouypDP8k1z4XCvazPzjLwK869rFlaNMRTjHz2Zp+G3zxkmD9DK3YaI+EC1PpoOvoPEVPeUFCM1ys1ju9MZi/m0yTs1HlSMPpAL11HK3FQDoJVfeoF/bEt8QZ6MsHdBIe3ra4OXxeNNt4/5WyrLAwiXrg4eH9Zm26NlhWoPeKXXmIOCFpTR+bGLYbzCWH09EvUT0hxt69kEyVXOd2AQ9rHZjGe+E2aiLIVwDhKqze+ZJP3YgbzttdKRjCWr2cWIaWWUZaCKZkkYodgBx+wk56ax0OthwpfjjPvSqgFlD93753HGbUL88QO+UTywW7+Wi6qYU2XfBJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=upzR7VV2sJ9tAyioqhC27xFIDvYZi0sCsX60QZBE1Go=;
 b=O1SxmgjoZo81c6TEa1tqtpmwqnW3xKnlH6QqAQVtl1eXmvFMGY4tN+2Lw9gI5VhMSqLrhk1n5k2kFfGFzwbP0H3GFhSifJybpfSpYuMvMgr/fEU2Ji4tPYkOb3IrHK5puxiDCqJ3OxujpWtqlBBNtQ6fPiLv6f7SZqe8oHQ5uNVnaVj9J0ZoYgd8HEIbvHMt8GJCQ7Eur0tHxdDFLG/2pFtWP5zgcDVgfyXVyxxbx6LWYxfYGHLOCjroEtszqDgPLTXOmF+YFHmn/HJ1cmLNhY1Cw/fizBIt9Kiw2m2wOg5UN/1AtkTS6sjMdHWYxTo2FcdXHF5mm2GMhOsI40kl2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=upzR7VV2sJ9tAyioqhC27xFIDvYZi0sCsX60QZBE1Go=;
 b=gdjHSZgOThZaaslMWA2B/LN+XomiRic0mf+bEoybXDiM/mtJ/n+PDmkWyJBeWCKkWa8NMQUFWJGWZwvrBkKfk3APooN4Xfyh9d8y2+RllHifSxRFcHI9NupTcjEh6updSaCzzoVOUpnYXk8eXXPCVYmhVSK0xtqZumGZz2SqJUadq1XXyOITb8baCHeD05AIRkGmbsfhRPa6z6SlXjhXPFKXF4hZ/xfQli3Khsh4vFq9DP4qDe0aQpSpZar4RH3yyqs6/8yl022XGtF1/CkVhhmnIfPgYklNEZ5nIQ07AAc9zozKPPTtlyjGdE/0ZOBbF8LmHM2nVO+MiJLLq3ytuw==
Received: from BLAPR03CA0166.namprd03.prod.outlook.com (2603:10b6:208:32f::18)
 by CO6PR12MB5396.namprd12.prod.outlook.com (2603:10b6:303:139::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.38; Wed, 1 Feb
 2023 17:29:27 +0000
Received: from BL02EPF000108E9.namprd05.prod.outlook.com
 (2603:10b6:208:32f:cafe::77) by BLAPR03CA0166.outlook.office365.com
 (2603:10b6:208:32f::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.25 via Frontend
 Transport; Wed, 1 Feb 2023 17:29:27 +0000
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
 15.20.6064.17 via Frontend Transport; Wed, 1 Feb 2023 17:29:26 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Wed, 1 Feb 2023
 09:29:12 -0800
Received: from localhost.localdomain (10.126.230.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Wed, 1 Feb 2023
 09:29:09 -0800
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov
 <razor@blackwall.org>, <netdev@vger.kernel.org>
Date: Wed, 1 Feb 2023 18:28:35 +0100
Message-ID: <62e07d61d15a3113ccbd85ef85d0fdd74a87762d.1675271084.git.petrm@nvidia.com>
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
X-MS-TrafficTypeDiagnostic: BL02EPF000108E9:EE_|CO6PR12MB5396:EE_
X-MS-Office365-Filtering-Correlation-Id: 5159f708-5412-4c9b-51d6-08db0479de21
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tTmxbcKREdlbQEzESF7FnkG6E7MM+kPLhIBVSGD3joyBPRqZBcS5/KOYvtiKuBkjNZ0O/my+ejmy8DpJx33PwVEwr6NnwU7k7qF0GO9oQtKlyegfbp1qSE/UV/z/y+JmB6Vy21ayd1jGz3PaZC/+210t6SPvLjioUEXBGzc4q1qEjS7sCBzlhyof0RoH6ZpSrADF0sdJh6wQ/ba/R3P5sP+3NJsrGuC80iaTxPoNkNG978ZApdGKgdr1itTy0lRTe4TNDmwzegcLGglPwQEIInGwMo1dwgOObajT4NyTIqJxO1BAumJ6rVeYViHfPljag8nifgdE/48sLtrRQ0y/vJlGGmLU2I3zBOwMA56NmaP+xfd+uZh9NHu21Wv3fM6sY6hiQboA+l5UKLYO7OlgIemjA1ndMb730jclKC2Cfc5zZz+XT9IhyIXEtg7jGMuP98Oqo5ADiPRlQleMoMbehKc2gPxCZtM/WHjvv4zJ6T+G1Iey2UnqDbbDCJNkoZT69HAOwB+WrJgoyrhup4WgXE6IZk/pr3TRiemAEt29R8qRIbvo5UFxePStnSzosmtkT9NNf+iUzC8D4YrW51oyXpXu46aZcA+FZGkkiKAeZ9m0RmwX4Bg2UolAt+Z0bTBU8+2QfUjbUibohAxm+qUv5GBJqCE6/e/86+XdDTmVNTz96hBuJfu7robTKK8ELZD0wdELnFBwmSewSRKEybkiMg==
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230025)(4636009)(39860400002)(346002)(396003)(376002)(136003)(451199018)(46966006)(40470700004)(36840700001)(83380400001)(426003)(40480700001)(47076005)(70206006)(70586007)(4326008)(8936002)(41300700001)(36860700001)(478600001)(8676002)(336012)(54906003)(86362001)(82740400003)(7636003)(110136005)(316002)(2616005)(82310400005)(2906002)(36756003)(6666004)(40460700003)(107886003)(5660300002)(356005)(26005)(16526019)(186003);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Feb 2023 17:29:26.5304 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5159f708-5412-4c9b-51d6-08db0479de21
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BL02EPF000108E9.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR12MB5396
Cc: Petr Machata <petrm@nvidia.com>, Ido
 Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: [Bridge] [PATCH net-next mlxsw v2 02/16] net: bridge: Add extack to
	br_multicast_new_port_group()
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

Make it possible to set an extack in br_multicast_new_port_group().
Eventually, this function will check for per-port and per-port-vlan
MDB maximums, and will use the extack to communicate the reason for
the bounce.

Signed-off-by: Petr Machata <petrm@nvidia.com>
Reviewed-by: Ido Schimmel <idosch@nvidia.com>
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 net/bridge/br_mdb.c       | 5 +++--
 net/bridge/br_multicast.c | 5 +++--
 net/bridge/br_private.h   | 3 ++-
 3 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 00e5743647b0..069061366541 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -849,7 +849,7 @@ static int br_mdb_add_group_sg(const struct br_mdb_config *cfg,
 	}
 
 	p = br_multicast_new_port_group(cfg->p, &cfg->group, *pp, flags, NULL,
-					MCAST_INCLUDE, cfg->rt_protocol);
+					MCAST_INCLUDE, cfg->rt_protocol, extack);
 	if (unlikely(!p)) {
 		NL_SET_ERR_MSG_MOD(extack, "Couldn't allocate new (S, G) port group");
 		return -ENOMEM;
@@ -1075,7 +1075,8 @@ static int br_mdb_add_group_star_g(const struct br_mdb_config *cfg,
 	}
 
 	p = br_multicast_new_port_group(cfg->p, &cfg->group, *pp, flags, NULL,
-					cfg->filter_mode, cfg->rt_protocol);
+					cfg->filter_mode, cfg->rt_protocol,
+					extack);
 	if (unlikely(!p)) {
 		NL_SET_ERR_MSG_MOD(extack, "Couldn't allocate new (*, G) port group");
 		return -ENOMEM;
diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index dea1ee1bd095..de67d176838f 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1284,7 +1284,8 @@ struct net_bridge_port_group *br_multicast_new_port_group(
 			unsigned char flags,
 			const unsigned char *src,
 			u8 filter_mode,
-			u8 rt_protocol)
+			u8 rt_protocol,
+			struct netlink_ext_ack *extack)
 {
 	struct net_bridge_port_group *p;
 
@@ -1387,7 +1388,7 @@ __br_multicast_add_group(struct net_bridge_mcast *brmctx,
 	}
 
 	p = br_multicast_new_port_group(pmctx->port, group, *pp, 0, src,
-					filter_mode, RTPROT_KERNEL);
+					filter_mode, RTPROT_KERNEL, NULL);
 	if (unlikely(!p)) {
 		p = ERR_PTR(-ENOMEM);
 		goto out;
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 15ef7fd508ee..1805c468ae03 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -956,7 +956,8 @@ br_multicast_new_port_group(struct net_bridge_port *port,
 			    const struct br_ip *group,
 			    struct net_bridge_port_group __rcu *next,
 			    unsigned char flags, const unsigned char *src,
-			    u8 filter_mode, u8 rt_protocol);
+			    u8 filter_mode, u8 rt_protocol,
+			    struct netlink_ext_ack *extack);
 int br_mdb_hash_init(struct net_bridge *br);
 void br_mdb_hash_fini(struct net_bridge *br);
 void br_mdb_notify(struct net_device *dev, struct net_bridge_mdb_entry *mp,
-- 
2.39.0

