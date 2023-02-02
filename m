Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA746885E7
	for <lists.bridge@lfdr.de>; Thu,  2 Feb 2023 19:01:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B1B3F41042;
	Thu,  2 Feb 2023 18:01:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1B3F41042
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=GW1sOJTL
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OpDsYa-pze-J; Thu,  2 Feb 2023 18:01:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 41EE840C82;
	Thu,  2 Feb 2023 18:01:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 41EE840C82
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DCFEFC0078;
	Thu,  2 Feb 2023 18:01:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9CAF8C002B
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 18:01:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 77FF941D10
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 18:01:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77FF941D10
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=GW1sOJTL
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zWa52Kl5lxEa for <bridge@lists.linux-foundation.org>;
 Thu,  2 Feb 2023 18:01:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D98641D0D
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on20609.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe5b::609])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3D98641D0D
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 18:01:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oaFZvd8/iTPOVjoNwtNl7CguC6qp2HTFq2A4QkNTj/R+DKAjiHNFr0+H2MjZSMYMmLv99/HsR/Tkm8yH2Cft91uhRNUTbAtiXLItBLrERBnJu6E4J+ArS5qerz5SxpV7p92mGseAB7FYKkriI4frmDun9NsJzgoqtgaiviRkqp8Gd1bBhG6hkPrsqS3XhnMTD56sKgMxn+RKvMz+2Q+3ICS7HFCQmAHA9K6emX7lfd1gP4DFZrZeYvnvNJnp5WicDXHkIC4VwBW1AV1s7ZrNx1FxXL+v8RsEK/oFUNSP/Cq7eFWJtHzXVhTdNahtHZER4YSEDrne1ZkzCqBxtibBnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KaO7FyK2OwQD4JbLKs6GXiMXyTVLodrTsmyEdNFE22g=;
 b=jZjUp3A7R7h9qec2ntCagB/s8KLgtI1LJ0lyqTquqqhY2JkNubSdxrrtHbUwkF/qAILVNvB8Ca5jJZTbPQR42qT114PewqZl/aqT7/oFnfsgl8YMSOVPTh7daj9/PwpOVt9Dwr6B/nXPl5CXo3gjVBlKYwspADfqkgLy0J8tEU1UfgS4ugkTZCPhzK8Fsl9tH6dNA2JJZaBZVejHICBxfuufc4qYhYbVwptFcuvTqgIUbo26CPI6nAwVlkVOMuNGM6fe5Wshqs3ZpBthZrddsZrezzWCMn2ofh9IuVKZ7ZRPaAb/ql7YEUxDWxawTHJxEMxaR7FVQ0UMqbIVlvnB0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KaO7FyK2OwQD4JbLKs6GXiMXyTVLodrTsmyEdNFE22g=;
 b=GW1sOJTLe5zhFRfeqMiOpDjw3xyOuCHdxtWRbIIVRc82onluyYeK823V0tzQ3B9yq0A0DSK0Dq0VYIvmGv0WPzNmada9tCUynDeFCFyd/dgcBQHngAc0z60BLTy8s2spfdueurUNesSweYV7h4Me7W7uKJwh89PpVLP5NnfXG2484nyMfsedlSN4J1oWop7sfNTA2fETihWl26OC0Lqg1tzK8BsscjayWdyoSsqx+35BiF5g83ftP9UXIpyXLgCJ45KmlrsuzgLWxckYJvrfy3VsdaHht+TOh6GNZZNEsb1tcEYYwxRcCw9Ot2L1NuR6jCIXQ2kaqdJ6hwWopCy9gQ==
Received: from MW4PR03CA0273.namprd03.prod.outlook.com (2603:10b6:303:b5::8)
 by PH7PR12MB5878.namprd12.prod.outlook.com (2603:10b6:510:1d6::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.27; Thu, 2 Feb
 2023 18:01:13 +0000
Received: from CO1NAM11FT037.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:b5:cafe::61) by MW4PR03CA0273.outlook.office365.com
 (2603:10b6:303:b5::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.25 via Frontend
 Transport; Thu, 2 Feb 2023 18:01:13 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 CO1NAM11FT037.mail.protection.outlook.com (10.13.174.91) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6064.27 via Frontend Transport; Thu, 2 Feb 2023 18:01:12 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Thu, 2 Feb 2023
 10:00:56 -0800
Received: from localhost.localdomain (10.126.230.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Thu, 2 Feb 2023
 10:00:54 -0800
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov
 <razor@blackwall.org>, <netdev@vger.kernel.org>
Date: Thu, 2 Feb 2023 18:59:33 +0100
Message-ID: <76cdd85502b18f3e1a2654ae0c91911db95cc795.1675359453.git.petrm@nvidia.com>
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
X-MS-TrafficTypeDiagnostic: CO1NAM11FT037:EE_|PH7PR12MB5878:EE_
X-MS-Office365-Filtering-Correlation-Id: 31f215ce-8a6e-4a97-bc84-08db054778a7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PtsNSFRCfgq3H0mOZw4R/UvhbcSkTp7IXqymcO2n03i4KcHKiO61PGOZBVIQMjPR5mSSF6ZK7X/EFKiBJN6tR48MWm4Xc4j32YbbuDcDMjfEFQxWJ32SWU3FYDN3Q9aJMTrpdD7cp6gf+hJY7Xbu9MHhvF/aivObXMm/7CgkEM+xefk/ni9OibIGWLDnFIzxagpKS8br3/Cb/rR3t5i/Wx6xUJGV25ukOixEBKuaqq7pIKJbmV2VPUifQX/eaqT6l0ULxsGVVfSCTgQteBGUm1Ox3/AGexLUc7RLrWPCUwW4RgsOoL/fxZJQpKm9OYQeDcXrnOQ5V9RZZJSxMdwOm4aYjzo6iduSqH+Nm4OESYMjADehgj2onMQ9LqkytyBEWh/czkTP57flCGEunCbPljYU0kdQTg24FbeJrjzn9ZNyWftQKer4LQ0fOzSqB9BgYFG1nEAIIN06HcLVwS6+W4E8fNpryoA9wn2p7uD+jJSJzpp5HB29OAjoQRBFsttsy/L1VoYza8mzaxIA3LkDzCgvjvn/R1IRXqjvAaicbPoYL7KWJxWWQq2yMYine0Redhr/ZG3Qlyvpi6ZOd4UIuoTA4Q0lIeBMT2UT7EhiT7EwabfitaQ4yD4OSo1nPXkOBSPxw7GQnT+YEzBmQ4p1prW7WxfK4nbojnTqZW2nS3rZGyP4KsVH3pCPSxCJkixqa/BC+v7NYxDSYprqM+p8Yg==
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230025)(4636009)(376002)(396003)(136003)(39860400002)(346002)(451199018)(40470700004)(36840700001)(46966006)(36756003)(47076005)(70586007)(70206006)(36860700001)(82310400005)(8676002)(4326008)(54906003)(110136005)(7636003)(316002)(82740400003)(26005)(16526019)(478600001)(107886003)(186003)(40460700003)(6666004)(5660300002)(86362001)(41300700001)(426003)(40480700001)(356005)(2616005)(336012)(8936002)(2906002);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2023 18:01:12.6570 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 31f215ce-8a6e-4a97-bc84-08db054778a7
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT037.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB5878
Cc: Petr Machata <petrm@nvidia.com>, Ido
 Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: [Bridge] [PATCH net-next v3 15/16] selftests: forwarding: lib: Add
	helpers to build IGMP/MLD leave packets
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

The testsuite that checks for mcast_max_groups functionality will need to
wipe the added groups as well. Add helpers to build an IGMP or MLD packets
announcing that host is leaving a given group.

Signed-off-by: Petr Machata <petrm@nvidia.com>
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 tools/testing/selftests/net/forwarding/lib.sh | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/tools/testing/selftests/net/forwarding/lib.sh b/tools/testing/selftests/net/forwarding/lib.sh
index 12ef34ebcbbf..969e570f609e 100755
--- a/tools/testing/selftests/net/forwarding/lib.sh
+++ b/tools/testing/selftests/net/forwarding/lib.sh
@@ -1815,6 +1815,21 @@ igmpv3_is_in_get()
 	payload_template_expand_checksum "$igmpv3" $checksum
 }
 
+igmpv2_leave_get()
+{
+	local GRP=$1; shift
+
+	local payload=$(:
+		)"17:"$(			: Type - Leave Group
+		)"00:"$(			: Max Resp Time - not meaningful
+		)"CHECKSUM:"$(			: Checksum
+		)"$(ipv4_to_bytes $GRP)"$(	: Group Address
+		)
+	local checksum=$(payload_template_calc_checksum "$payload")
+
+	payload_template_expand_checksum "$payload" $checksum
+}
+
 mldv2_is_in_get()
 {
 	local SIP=$1; shift
@@ -1858,3 +1873,38 @@ mldv2_is_in_get()
 
 	payload_template_expand_checksum "$hbh$icmpv6" $checksum
 }
+
+mldv1_done_get()
+{
+	local SIP=$1; shift
+	local GRP=$1; shift
+
+	local hbh
+	local icmpv6
+
+	hbh=$(:
+		)"3a:"$(			: Next Header - ICMPv6
+		)"00:"$(			: Hdr Ext Len
+		)"00:00:00:00:00:00:"$(		: Options and Padding
+		)
+
+	icmpv6=$(:
+		)"84:"$(			: Type - MLDv1 Done
+		)"00:"$(			: Code
+		)"CHECKSUM:"$(			: Checksum
+		)"00:00:"$(			: Max Resp Delay - not meaningful
+		)"00:00:"$(			: Reserved
+		)"$(ipv6_to_bytes $GRP):"$(	: Multicast address
+		)
+
+	local len=$(u16_to_bytes $(payload_template_nbytes $icmpv6))
+	local sudohdr=$(:
+		)"$(ipv6_to_bytes $SIP):"$(	: SIP
+		)"$(ipv6_to_bytes $GRP):"$(	: DIP is multicast address
+	        )"${len}:"$(			: Upper-layer length
+	        )"00:3a:"$(			: Zero and next-header
+	        )
+	local checksum=$(payload_template_calc_checksum ${sudohdr}${icmpv6})
+
+	payload_template_expand_checksum "$hbh$icmpv6" $checksum
+}
-- 
2.39.0

