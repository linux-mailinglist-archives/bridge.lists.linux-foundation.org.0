Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4236885E5
	for <lists.bridge@lfdr.de>; Thu,  2 Feb 2023 19:01:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02DE241D0A;
	Thu,  2 Feb 2023 18:01:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02DE241D0A
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=hgl1j7Qu
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v710foD4xvXt; Thu,  2 Feb 2023 18:01:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 0B15A41D0D;
	Thu,  2 Feb 2023 18:01:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B15A41D0D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B69F4C0078;
	Thu,  2 Feb 2023 18:01:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BB2B7C002B
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 18:01:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7BBEA81F2D
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 18:01:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BBEA81F2D
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=hgl1j7Qu
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5TIr5tQupBYP for <bridge@lists.linux-foundation.org>;
 Thu,  2 Feb 2023 18:01:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7DD5881F31
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on20630.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e88::630])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7DD5881F31
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 18:01:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fsIx7+nO5xlqXsL3B/FM5PU9xSIylMIJgd3cqSHASYwSGgPRELRNuv2tq9c9qzj9hDpkePIwqtqdHHjU/IfPnOeelLduwEUEN1JwFxBohKpCfdCfCsI1bVk4ROBKUsz2VFjIxvShDKm6OY8flbye/EF560J9fxcGKoLZ7gc0YcYyOJI5rnVmJ+DHHc9YoAi+JWq3XaJlB3RnewU2UF8l/j1fs48/PFCvk6i0dYhOkiVYGzx4e0fmfMwgPDKVG8W+xFuahsDeok5xz8CyfJU8b7zHY2Hcdo8vs5QMfiOw0JxtDdjkCflrsp1HQJmX9RxaZLn61HkHXX4lm0PgFiYaRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xcDKbM/vxLaY/qHxu8fO8whiyjxP3cz/iCe2KzrkEEo=;
 b=fBFVRTcX3jEKz2sOLOxmzQFtNHb3xS6igV1i7bcDkO7xNpcFf20JHRvaav5y2C3yQrrn8dUDVFfMtw13ldAyykHja7vI7nSZXUpLGO7ngUGgDrab8fgC38B4ENSC3LqQD6AwTSE/h34YDR1ZODMAmDsh00PQvGdFHPPeFY4AWkegcqfZzEhl9IDPNmk1tBB/dJM5wrr5fLCXPCQUj5YvzASwF2jCM8ejTg5Zo9xdZBFs6Qxv5mHZnnOfrlrR/iwCo8Z+herCTCwD0h7TQehu3zWu0pkxs9Sdjl1mEtuUmHvpW0XaIXztQohE0rye/A9Qwav3uawC8/dCNr9AbqU7vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xcDKbM/vxLaY/qHxu8fO8whiyjxP3cz/iCe2KzrkEEo=;
 b=hgl1j7QuReqVYCCePxgI0KBdpJwZCkGCUK3l3toYzl3Vxr7Q3hGePS0EURTg6L3H2sM+cTpcLj/NpmjWj+vVUvRgPGWX+bQnhIKlIHXsTlV4ZF5abjgaWO9gInSy1Wc1JMLa9RInmiggnVcPI1MgYWZ0Qa3YY35Nr89/0MgE9iwAfMmd4m6UoXAgP/DVdpyX4PAKlhCdEjZgQjMzB/kLmKf4P32AznOjPMMb0GFRtfZ5iwZpT6oNz1j9VP+noFp4mxGx4I/D9Mjj7xVx12Mvg9sP79Ftb3F6vEGQUwz3BrmCxY2zglHKHlw/WVlMSeWADo0mUYN/bdXNYI6nYosSAQ==
Received: from MW3PR06CA0016.namprd06.prod.outlook.com (2603:10b6:303:2a::21)
 by MN0PR12MB6344.namprd12.prod.outlook.com (2603:10b6:208:3d3::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.24; Thu, 2 Feb
 2023 18:01:07 +0000
Received: from CO1NAM11FT031.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:2a:cafe::95) by MW3PR06CA0016.outlook.office365.com
 (2603:10b6:303:2a::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.23 via Frontend
 Transport; Thu, 2 Feb 2023 18:01:07 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 CO1NAM11FT031.mail.protection.outlook.com (10.13.174.118) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6064.27 via Frontend Transport; Thu, 2 Feb 2023 18:01:06 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Thu, 2 Feb 2023
 10:00:51 -0800
Received: from localhost.localdomain (10.126.230.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Thu, 2 Feb 2023
 10:00:48 -0800
From: Petr Machata <petrm@nvidia.com>
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov
 <razor@blackwall.org>, <netdev@vger.kernel.org>
Date: Thu, 2 Feb 2023 18:59:31 +0100
Message-ID: <f97f1b25b7f98dd3671c42109c71493f36d16a55.1675359453.git.petrm@nvidia.com>
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
X-MS-TrafficTypeDiagnostic: CO1NAM11FT031:EE_|MN0PR12MB6344:EE_
X-MS-Office365-Filtering-Correlation-Id: 3634e3e2-4260-4d4a-598a-08db05477539
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pxgP2VAQOeOFQpcWiVmi11ey896vkGxcghTEQPmkR0zhduthGS+LrOaNPkjRxlbbOqKKcsEOzzi/jxVQ+2P6CgSin0+IIZ5XA6thkW00myDynSEravoGEIl3/Wx/+wJ8+ZEoRvkh07x7LZet35oOy4ej7NZCjgd0viUv9kTOqhsFgSyW7i/MB/i6ikBHbeXSdVGU5ZR3vXCaaLHK38St50e5LvPX3AjMTrySXIKcvBkQdnoADsJGZcAqpLWpAX43jxwTqUlE+LVePURxIEhbJAtTaxf6d1Rq5xdxIdu29QPfeH/63Rq0V0u6KR6mWh0TpuFaxC01aCAc9E/S8kkt5K0rAzrG+aokxXlXyNogQd1vk1MR8H+YAKwlOLkTDNkVaDQho/e5Is0/QDib4jvDkE34RiN6220GJoiuVhxQeOZEpEZ/2foVsh1T8AQCXYozrEyPDKjsSugqhpLFgEUJrijt/NiRDP+nuilv1uv1Y3oBZyIb8UThMHJmx2CgURvkLIgds/a4GVKpKR6J9/wtrdFAK5A3yo8Pc5t3NDQ2hEqOv3eemoAyGpPkl7TvUmVDCKKymLtWGjDWsONYE6ED5kwiElCGB+liZImeFMeE31ZioIBzoJ7l/zaof0THm/7Jp7vJGoKkNIwwvfeMstpKrm9ioaMI6j0EK3Nw0yefoGf/518Q1stufzGSdh177Odx8LPk/a6/n+nffUsBmPqI/g==
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230025)(4636009)(39860400002)(346002)(376002)(396003)(136003)(451199018)(40470700004)(36840700001)(46966006)(83380400001)(82310400005)(2906002)(336012)(2616005)(40460700003)(26005)(186003)(16526019)(36860700001)(6666004)(8936002)(7636003)(107886003)(47076005)(426003)(5660300002)(82740400003)(110136005)(356005)(316002)(41300700001)(54906003)(40480700001)(36756003)(478600001)(70206006)(86362001)(70586007)(4326008)(8676002);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2023 18:01:06.9004 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3634e3e2-4260-4d4a-598a-08db05477539
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT031.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB6344
Cc: Petr Machata <petrm@nvidia.com>, Ido
 Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: [Bridge] [PATCH net-next v3 13/16] selftests: forwarding: lib:
	Parameterize IGMPv3/MLDv2 generation
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

In order to generate IGMPv3 and MLDv2 packets on the fly, the
functions that generate these packets need to be able to generate
packets for different groups and different sources. Generating MLDv2
packets further needs the source address of the packet for purposes of
checksum calculation. Add the necessary parameters, and generate the
payload accordingly by dispatching to helpers added in the previous
patches.

Adjust the sole client, bridge_mdb.sh, as well.

Signed-off-by: Petr Machata <petrm@nvidia.com>
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 .../selftests/net/forwarding/bridge_mdb.sh    |  9 ++---
 tools/testing/selftests/net/forwarding/lib.sh | 36 +++++++++++++------
 2 files changed, 31 insertions(+), 14 deletions(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_mdb.sh b/tools/testing/selftests/net/forwarding/bridge_mdb.sh
index 4e16677f02ba..b48867d8cadf 100755
--- a/tools/testing/selftests/net/forwarding/bridge_mdb.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_mdb.sh
@@ -1029,7 +1029,7 @@ ctrl_igmpv3_is_in_test()
 
 	# IS_IN ( 192.0.2.2 )
 	$MZ $h1.10 -c 1 -A 192.0.2.1 -B 239.1.1.1 \
-		-t ip proto=2,p=$(igmpv3_is_in_get) -q
+		-t ip proto=2,p=$(igmpv3_is_in_get 239.1.1.1 192.0.2.2) -q
 
 	bridge -d mdb show dev br0 vid 10 | grep 239.1.1.1 | grep -q 192.0.2.2
 	check_fail $? "Permanent entry affected by IGMP packet"
@@ -1042,7 +1042,7 @@ ctrl_igmpv3_is_in_test()
 
 	# IS_IN ( 192.0.2.2 )
 	$MZ $h1.10 -c 1 -A 192.0.2.1 -B 239.1.1.1 \
-		-t ip proto=2,p=$(igmpv3_is_in_get) -q
+		-t ip proto=2,p=$(igmpv3_is_in_get 239.1.1.1 192.0.2.2) -q
 
 	bridge -d mdb show dev br0 vid 10 | grep 239.1.1.1 | grep -v "src" | \
 		grep -q 192.0.2.2
@@ -1067,8 +1067,9 @@ ctrl_mldv2_is_in_test()
 		filter_mode include source_list 2001:db8:1::1
 
 	# IS_IN ( 2001:db8:1::2 )
+	local p=$(mldv2_is_in_get fe80::1 ff0e::1 2001:db8:1::2)
 	$MZ -6 $h1.10 -c 1 -A fe80::1 -B ff0e::1 \
-		-t ip hop=1,next=0,p=$(mldv2_is_in_get) -q
+		-t ip hop=1,next=0,p="$p" -q
 
 	bridge -d mdb show dev br0 vid 10 | grep ff0e::1 | \
 		grep -q 2001:db8:1::2
@@ -1082,7 +1083,7 @@ ctrl_mldv2_is_in_test()
 
 	# IS_IN ( 2001:db8:1::2 )
 	$MZ -6 $h1.10 -c 1 -A fe80::1 -B ff0e::1 \
-		-t ip hop=1,next=0,p=$(mldv2_is_in_get) -q
+		-t ip hop=1,next=0,p="$p" -q
 
 	bridge -d mdb show dev br0 vid 10 | grep ff0e::1 | grep -v "src" | \
 		grep -q 2001:db8:1::2
diff --git a/tools/testing/selftests/net/forwarding/lib.sh b/tools/testing/selftests/net/forwarding/lib.sh
index b10c903d9abd..190e49e60508 100755
--- a/tools/testing/selftests/net/forwarding/lib.sh
+++ b/tools/testing/selftests/net/forwarding/lib.sh
@@ -1788,26 +1788,35 @@ payload_template_nbytes()
 
 igmpv3_is_in_get()
 {
+	local GRP=$1; shift
+	local IP=$1; shift
+
 	local igmpv3
 
+	# IS_IN ( $IP )
 	igmpv3=$(:
 		)"22:"$(			: Type - Membership Report
 		)"00:"$(			: Reserved
-		)"2a:f8:"$(			: Checksum
+		)"CHECKSUM:"$(			: Checksum
 		)"00:00:"$(			: Reserved
 		)"00:01:"$(			: Number of Group Records
 		)"01:"$(			: Record Type - IS_IN
 		)"00:"$(			: Aux Data Len
 		)"00:01:"$(			: Number of Sources
-		)"ef:01:01:01:"$(		: Multicast Address - 239.1.1.1
-		)"c0:00:02:02"$(		: Source Address - 192.0.2.2
+		)"$(ipv4_to_bytes $GRP):"$(	: Multicast Address
+		)"$(ipv4_to_bytes $IP)"$(	: Source Address
 		)
+	local checksum=$(payload_template_calc_checksum "$igmpv3")
 
-	echo $igmpv3
+	payload_template_expand_checksum "$igmpv3" $checksum
 }
 
 mldv2_is_in_get()
 {
+	local SIP=$1; shift
+	local GRP=$1; shift
+	local IP=$1; shift
+
 	local hbh
 	local icmpv6
 
@@ -1820,17 +1829,24 @@ mldv2_is_in_get()
 	icmpv6=$(:
 		)"8f:"$(			: Type - MLDv2 Report
 		)"00:"$(			: Code
-		)"45:39:"$(			: Checksum
+		)"CHECKSUM:"$(			: Checksum
 		)"00:00:"$(			: Reserved
 		)"00:01:"$(			: Number of Group Records
 		)"01:"$(			: Record Type - IS_IN
 		)"00:"$(			: Aux Data Len
 		)"00:01:"$(			: Number of Sources
-		)"ff:0e:00:00:00:00:00:00:"$(	: Multicast address - ff0e::1
-		)"00:00:00:00:00:00:00:01:"$(	:
-		)"20:01:0d:b8:00:01:00:00:"$(	: Source Address - 2001:db8:1::2
-		)"00:00:00:00:00:00:00:02:"$(	:
+		)"$(ipv6_to_bytes $GRP):"$(	: Multicast address
+		)"$(ipv6_to_bytes $IP):"$(	: Source Address
 		)
 
-	echo ${hbh}${icmpv6}
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
 }
-- 
2.39.0

