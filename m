Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F0C686CF7
	for <lists.bridge@lfdr.de>; Wed,  1 Feb 2023 18:30:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC75781F19;
	Wed,  1 Feb 2023 17:30:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC75781F19
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=eLPuqVVV
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AwOyXC1LWmFR; Wed,  1 Feb 2023 17:30:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 2F10C81F35;
	Wed,  1 Feb 2023 17:30:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F10C81F35
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8EFE7C007C;
	Wed,  1 Feb 2023 17:30:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D9B6BC002B
 for <bridge@lists.linux-foundation.org>; Wed,  1 Feb 2023 17:30:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B385681F2D
 for <bridge@lists.linux-foundation.org>; Wed,  1 Feb 2023 17:30:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B385681F2D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b9Pc3fiv2AGM for <bridge@lists.linux-foundation.org>;
 Wed,  1 Feb 2023 17:30:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B55381F19
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on20628.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe59::628])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0B55381F19
 for <bridge@lists.linux-foundation.org>; Wed,  1 Feb 2023 17:30:05 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZXmlOVeoODuCcjlO9OsBhvq9cNLIZlTbOIeGog3GWPSjGjHy96l0S9Qlnv92HKT4kYnqvjjCMt+HPv0035wGF0acfXTnmzOSTxSYLxSGZpormVsc3S5rFpOUlxKYILvCqNVz7C+DbT75SW0jneCEUdgQYFXqUFLZhsRLjo1ugXqZGtK/5y37Wkfb1OnTcsocoDi/xJx6kKrFVeMMoxWgRnlDYYXydVB/Kfi+9pA9mK/fteUxVwIRTuCThnnNUG5Kjg0DHCTpCTl2g3PeM9Gt1rFnRLRrOTAHEA9fHRRz2duGXgsq1CN5Ot10lHFg3h+kMm05Cohhmlh3Zx9kps4kdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KaO7FyK2OwQD4JbLKs6GXiMXyTVLodrTsmyEdNFE22g=;
 b=BppiTYNyuk29l645pGrsh170cLDgyBs/uDvAL/K+B3ENiWJFTdOsxvUxjx5Eur5e2rNysLe9Pg95908St9ao46eRj2q0mV+O9xtK8B3Wal/bzVBraemgzpVO3nB+eHOxxBlQ7xyJ80Eb29xwlS2mYAiGDMU4nKNSCSPBVv++XejN34HEBrB2+4ofIJFEWs3efWDCU6pHJSxHsL++ru7RD/spkRhi7yCTNbcOmU9/uBgGvC3FUn7f1svgQUiknPSjAEuKqjXtk/6qEvqwGgPzvX4yWR6cc7j/RQ0tGYrfh/TeeeLjnBybe22Wk2icGgokTqT2P6hrdtrpppsuqzcsNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KaO7FyK2OwQD4JbLKs6GXiMXyTVLodrTsmyEdNFE22g=;
 b=eLPuqVVVfwS4oKreUw4Rzeb7BAAo3bZQKKgFRgJPh+7BW6qWsycfYJ9L2uwZMutNGO9eOAEAssuKM9Lr8LKEeDgvsxpo4qCbgoObEwhJ9iHiAEMJv7R2PAwh5MUL+mJrvAWRWAQPnqMojSk9UPUjRlr33UOqCPI5/lntju9DrQpgkd80qRztl5J25eb/z6BnOJJiCS6jBqcKy4mbC4haBjmz/LigC4eByJSkRBBnXblFOUfKrUBgbznRBs9YeQ9Vyhh2FUwCQU5sgGRQquadJvmUzdfjuQOZ8bOjMZMDlyc8cPcSrA5PCvI4kcwwcKJPutiizsBWsRwbsUTLUlNgZw==
Received: from BLAPR03CA0156.namprd03.prod.outlook.com (2603:10b6:208:32f::29)
 by CH3PR12MB8282.namprd12.prod.outlook.com (2603:10b6:610:124::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.38; Wed, 1 Feb
 2023 17:30:04 +0000
Received: from BL02EPF000108E9.namprd05.prod.outlook.com
 (2603:10b6:208:32f:cafe::42) by BLAPR03CA0156.outlook.office365.com
 (2603:10b6:208:32f::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.22 via Frontend
 Transport; Wed, 1 Feb 2023 17:30:04 +0000
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
 15.20.6064.17 via Frontend Transport; Wed, 1 Feb 2023 17:30:03 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Wed, 1 Feb 2023
 09:29:51 -0800
Received: from localhost.localdomain (10.126.230.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Wed, 1 Feb 2023
 09:29:48 -0800
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov
 <razor@blackwall.org>, <netdev@vger.kernel.org>
Date: Wed, 1 Feb 2023 18:28:48 +0100
Message-ID: <540dc49dfacd735e3c4073b3444f98b41d81ff91.1675271084.git.petrm@nvidia.com>
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
X-MS-TrafficTypeDiagnostic: BL02EPF000108E9:EE_|CH3PR12MB8282:EE_
X-MS-Office365-Filtering-Correlation-Id: d239df9c-bbd2-4e69-6908-08db0479f45c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: V1bpDXo78kmCyGtIIEkAdNYzzJ5mMPuLh57/5EuHF59wwev3Xmb5ckr62GRNCncaVrBKRb84QBUs7btXcofk/kGrHxd9Z2Wv0OHl8B0LtOK/Srr2cGsDUVaINlmT3X7WBekVk27/hDMIrkaGmkOIopfsSC5PhipjOzgIKpUUEZE7eTBg9xZxMWSQUlWx+9zq3+W9xkYNGtFnsfWmxfbE7pav/H+qVtBYzCxe360c2un9FPNujSE4+SCiXmGtudM6nouGk3m8yNbxpVi37fLsSrCrwnLBqbLkpxy0/7mSxizQ+wY2QNdgAKhUiMVbZBtp2ZRdmbv8ybODoYVgwqiztBIXO+qTGZ2i9pTRgR1a0V29MJ6dWRSOIcw1wq7wb1S11eizyeIbIfmCM43p/ox4V4GqreDrx4z0DkQ8bzhhmJjByS257+gI48VZo1A4puHFHZObmDydCwCaT36N+o9O1WL/kF4z1RYY1DpoNTMIMqZFi4iT2tnLxuH6B0V2RT80dTrE+qkFJeXLeO13XqpZQkkK0GnwK3MWh9jHkOfBiEFAWbdDJfnmm84cvj8D2OVm3Bmmf1MWlgilFSC70D57e7Pvs9i01wH7jQexyg9L99KC3D18kRbvTSrYyyEBviVi8Sqqw2cVcV4nogqGQlK35Y6gJ+c/+BUIV6lPYR0Dlu3w5rpmUb7/5LWNeD5Nxv/X1SBRcgdQMYo/pDz0An9wEg==
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230025)(4636009)(376002)(346002)(39860400002)(136003)(396003)(451199018)(46966006)(36840700001)(40470700004)(47076005)(2616005)(40460700003)(426003)(36756003)(336012)(40480700001)(82740400003)(356005)(7636003)(82310400005)(36860700001)(5660300002)(54906003)(86362001)(316002)(110136005)(2906002)(478600001)(107886003)(70206006)(4326008)(70586007)(26005)(8936002)(41300700001)(16526019)(186003)(8676002);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Feb 2023 17:30:03.8120 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d239df9c-bbd2-4e69-6908-08db0479f45c
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BL02EPF000108E9.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB8282
Cc: Petr Machata <petrm@nvidia.com>, Ido
 Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: [Bridge] [PATCH net-next mlxsw v2 15/16] selftests: forwarding:
	lib: Add helpers to build IGMP/MLD leave packets
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

