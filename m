Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9675E67D26D
	for <lists.bridge@lfdr.de>; Thu, 26 Jan 2023 18:02:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D3EAE61165;
	Thu, 26 Jan 2023 17:02:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D3EAE61165
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=JGXQD0/u
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hMOaxuhNN9OK; Thu, 26 Jan 2023 17:02:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 5D9F36117A;
	Thu, 26 Jan 2023 17:02:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D9F36117A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1A161C0077;
	Thu, 26 Jan 2023 17:02:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 882F4C002D
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 17:02:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 704C26117C
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 17:02:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 704C26117C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5sSp3rBELScZ for <bridge@lists.linux-foundation.org>;
 Thu, 26 Jan 2023 17:02:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB7236117A
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2080.outbound.protection.outlook.com [40.107.220.80])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AB7236117A
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 17:02:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eC1YOeE9Ohg1OpTptxFTQLXKBbWBTy5KoVvJEy1KmolLfKU0UJEMiGwCaJXM3Vmt3i7QN7lIXOzIJZG7EB0kSXyJ4D/aceBChilKH3+F924WjKmyYhERrUZlQMHWJVkDiYBnHHq/86MzRmdwyrVN27vqG/rdAVQAYsi1b7XrnY5t5p4kivnSCZVIN4Dt/gon1oxrzeAva3W4UWnHRiATCmVySMo6TVQ3PXZG/MLueYvNmS6MRol5TsN/GFkUdLdTH3G2r6IX2kc7AqOaiFWDC6uEzEiHpcaAVUEPIVUyMknHbZivMUK+bCnFFE0Ing0ZoBVDiqNpIzsPTwANYl6Gjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JH5QzD2pa+HeCRuyKubDpPiQOpuUdGkpou/6cpw5NSQ=;
 b=mSz2+DoIm4rccyojTC0QuWyuEYgUY6175fNnyq+nC/kcAB5KFvD5L0KbLdCD/ERu/PbvpfFaLryGX7q7DhbkW5ym8QHZzYwsGXosNbi7mtvjp0FIF0pvYLLJZbNmAjJgOhIcbpo7Di6jKkhiWcR3sBcyR8gGcBagTzxRdu4a6QOuDQgleEvVqMan+TlYhiBx4QRhf/5Ri/Z/9QagnqBG/YHLhaHfhG80t20eTcYktnjSORJm3pM7UeKO6KFuBy7em0dUnXp+EVm3F6xdFPeqt4eOsAMFEQUyuF/n+T9AJTYgGJX/WqMUAB8Xw/STMSfuBLXpg52gtEN0TAVq2OaQZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JH5QzD2pa+HeCRuyKubDpPiQOpuUdGkpou/6cpw5NSQ=;
 b=JGXQD0/uwFybeNElnR/mJxvS+D3ZpoYpQpF0qAYCI0CnFSt3ZV8/lhYNnhBZDmTUBJWrh+0dDShFtaUyChwzNGvBZjqNc3AnpDww4W5NSz5zuRtJ+JkoNZnIHEshn7yMCAY/aB8kD5lcsTHEHo/FOHdnFzsLZhJJ7i+ccuM7aolByjN0adgMhsxnMUz1JDDbSKiNXkkki417AnA+ufMyRIT3bUldQlOuZIAkuQuoYihF0RIcBaWllcPxTC+otVGKBgL20lMEEeHMw3nDIDPQXR64d3e+W145z7p1i1GpDuqGJtMjZZgQRXrnD0WBFfh3Pg4SDpLRPWvTg7zqlEgzmA==
Received: from MW3PR06CA0007.namprd06.prod.outlook.com (2603:10b6:303:2a::12)
 by BY5PR12MB4081.namprd12.prod.outlook.com (2603:10b6:a03:20e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.22; Thu, 26 Jan
 2023 17:02:39 +0000
Received: from CO1NAM11FT078.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:2a:cafe::4f) by MW3PR06CA0007.outlook.office365.com
 (2603:10b6:303:2a::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19 via Frontend
 Transport; Thu, 26 Jan 2023 17:02:39 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 CO1NAM11FT078.mail.protection.outlook.com (10.13.175.177) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6043.21 via Frontend Transport; Thu, 26 Jan 2023 17:02:38 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Thu, 26 Jan
 2023 09:02:29 -0800
Received: from localhost.localdomain (10.126.231.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Thu, 26 Jan
 2023 09:02:26 -0800
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov
 <razor@blackwall.org>, <netdev@vger.kernel.org>
Date: Thu, 26 Jan 2023 18:01:22 +0100
Message-ID: <273051ca0cae7bcd2957e44803fed128efc80336.1674752051.git.petrm@nvidia.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1674752051.git.petrm@nvidia.com>
References: <cover.1674752051.git.petrm@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.231.37]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1NAM11FT078:EE_|BY5PR12MB4081:EE_
X-MS-Office365-Filtering-Correlation-Id: c60e4ded-ebcd-40c3-8316-08daffbf2142
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DkI1yNEIna/ekqPR4H7YVN1ZKoihjHIjA5rAgplYgHXux15A1X9lkhGyMLSMKeNIwWPicgZxbeCIE8+1s5f19+ghQfb7Q1QZgOXN6rN25XkclI4rq0l0md75jJFFy6bUSMFJjQm4C8rwg69SagwVZ+g4iWM5BmUpJuG9ire3KH99cVTNC9KHoZkXBqYLg28ZQhMh/F2zOhq/mqzk5xlKhuwRYQVicElDGaafYmOQrA1SSO/EuPjjGliNvbBFpMtr0FBGgHm//Fi4Tonv0mC+Jui8KJiaNb43aWJsDZDa7LeVetbJjKpZ4d4hsfSssucXCr3xw5NyHgCzrsX6C5ZMDewg2pgyTjzmaCYQ4prjrq1+5zz17x7cMvq3JttVIzwV9JMiEu+6WpIsXyw+tj2rWLhJ53NBzip4z+WzqmfF7Az6gkMv/f25UjFLq0uBW+TZBLJEVknUhpmIR1mUWj80SyGz7ljtuxNtwEzb0IaL7hRvE0Vsa35/twchZxVwS2gxdRDXT5TQetkeuSzS3luPdK86/ID/wcIBGOF3VzkkfxAoiaP158FE4zKNA2rYQhV6EWGBGJOC7dIXq57W9lvAS7c7SFkH5cmt5aBvfB2TETpuJPB6nFCQVX4DizVV/kjo7T/ZRFpHxBnSpBoz4vpwb4NLXUacwNAJsQfJmUeTtZ4=
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230025)(4636009)(136003)(376002)(39860400002)(346002)(396003)(451199018)(46966006)(36840700001)(36756003)(70586007)(54906003)(110136005)(316002)(8676002)(4326008)(41300700001)(8936002)(70206006)(36860700001)(356005)(86362001)(82740400003)(7636003)(107886003)(6666004)(16526019)(26005)(186003)(40480700001)(5660300002)(426003)(83380400001)(336012)(2906002)(82310400005)(47076005)(478600001)(2616005);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2023 17:02:38.7096 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c60e4ded-ebcd-40c3-8316-08daffbf2142
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT078.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4081
Cc: Petr Machata <petrm@nvidia.com>, Ido
 Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: [Bridge] [PATCH net-next 14/16] selftests: forwarding: lib: Allow
	list of IPs for IGMPv3/MLDv2
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

The testsuite that checks for mcast_max_groups functionality will need
to generate IGMP and MLD packets with configurable number of (S,G)
addresses. To that end, further extend igmpv3_is_in_get() and
mldv2_is_in_get() to allow a list of IP addresses instead of one
address.

Signed-off-by: Petr Machata <petrm@nvidia.com>
---
 tools/testing/selftests/net/forwarding/lib.sh | 22 +++++++++++++------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/tools/testing/selftests/net/forwarding/lib.sh b/tools/testing/selftests/net/forwarding/lib.sh
index 60d4408610b1..9f180af2cd81 100755
--- a/tools/testing/selftests/net/forwarding/lib.sh
+++ b/tools/testing/selftests/net/forwarding/lib.sh
@@ -1789,11 +1789,12 @@ payload_template_nbytes()
 igmpv3_is_in_get()
 {
 	local GRP=$1; shift
-	local IP=$1; shift
+	local sources=("$@")
 
 	local igmpv3
+	local nsources=$(u16_to_bytes ${#sources[@]})
 
-	# IS_IN ( $IP )
+	# IS_IN ( $sources )
 	igmpv3=$(:
 		)"22:"$(			: Type - Membership Report
 		)"00:"$(			: Reserved
@@ -1802,9 +1803,12 @@ igmpv3_is_in_get()
 		)"00:01:"$(			: Number of Group Records
 		)"01:"$(			: Record Type - IS_IN
 		)"00:"$(			: Aux Data Len
-		)"00:01:"$(			: Number of Sources
+		)"${nsources}:"$(		: Number of Sources
 		)"$(ipv4_to_bytes $GRP):"$(	: Multicast Address
-		)"$(ipv4_to_bytes $IP)"$(	: Source Address
+		)"$(for src in "${sources[@]}"; do
+			ipv4_to_bytes $src
+			echo -n :
+		    done)"$(			: Source Addresses
 		)
 	local checksum=$(payload_template_calc_checksum "$igmpv3")
 
@@ -1815,10 +1819,11 @@ mldv2_is_in_get()
 {
 	local SIP=$1; shift
 	local GRP=$1; shift
-	local IP=$1; shift
+	local sources=("$@")
 
 	local hbh
 	local icmpv6
+	local nsources=$(u16_to_bytes ${#sources[@]})
 
 	hbh=$(:
 		)"3a:"$(			: Next Header - ICMPv6
@@ -1834,9 +1839,12 @@ mldv2_is_in_get()
 		)"00:01:"$(			: Number of Group Records
 		)"01:"$(			: Record Type - IS_IN
 		)"00:"$(			: Aux Data Len
-		)"00:01:"$(			: Number of Sources
+		)"${nsources}:"$(		: Number of Sources
 		)"$(ipv6_to_bytes $GRP):"$(	: Multicast address
-		)"$(ipv6_to_bytes $IP):"$(	: Source Address
+		)"$(for src in "${sources[@]}"; do
+			ipv6_to_bytes $src
+			echo -n :
+		    done)"$(			: Source Addresses
 		)
 
 	local len=$(u16_to_bytes $(payload_template_nbytes $icmpv6))
-- 
2.39.0

