Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF10620DA4
	for <lists.bridge@lfdr.de>; Tue,  8 Nov 2022 11:48:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 62C1E81AF3;
	Tue,  8 Nov 2022 10:48:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62C1E81AF3
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=o0DUck36
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9b9YUEXelsvw; Tue,  8 Nov 2022 10:48:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id D24E781B04;
	Tue,  8 Nov 2022 10:48:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D24E781B04
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8E8B2C0077;
	Tue,  8 Nov 2022 10:48:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BF126C002D
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 10:48:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 99E9E408D1
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 10:48:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 99E9E408D1
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=o0DUck36
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2lNTgpncVEeA for <bridge@lists.linux-foundation.org>;
 Tue,  8 Nov 2022 10:48:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D6893408CA
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2060.outbound.protection.outlook.com [40.107.244.60])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D6893408CA
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 10:48:32 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UMbyPIUUTHawrU7oHXi666L09LOgz1f7AA7/2Gn/yFUavAaRcE+fgCApDlTzIs3hRh4qmY/B5+qZfcFd3FOvFlkT8eJSLRk6IhWnBV8Fmpk3oFq+r5ideHQqPc4MjDjCufJT6Ml4jKZa9B9zfkXBj7Ma+PSGprLdRWcfTtJ72lHM0qXgFTYFUrK2I+60F8y5wsCNkbmxfjefi5jZHUcHu3bX3YVMUTdYB8luUMi9ToqTcLgspcYaY/PcH9apXSVy5Wodx9XGXbUp8Vc869Phi3ICF1elYYoWmTMZUYAppJv5WYy55CPd3I5hC7xWu8t0f9SVOhbMyrZ2GuV16m3MRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=doByyfOdod8TuwyZN+F0d5h/tzFJh1IY+wAhbsHXhV0=;
 b=WymsCT01fs1NteLKH61WPj2j4KbkYwyT0FcCAunpc/YxQhAEY+/ptuyvA4TgtYxTqoHV0VEyY0gU5z62T6ujBG3GyWzrxTnY1sG6zuO3FJJzQ2/O6SZkhfDa8bwVwTpsnxLirH4EH5yyHKfldYQzvP0SSlxrUEqndgzsVeRIoYmJPAEm2vIJ/aR9wCfahE4oJOSDTjNbLhYji6BIhOfSBRHqM+e6aAOlbWo02vtiH47MCrCyMVbLfZh/1yumZj/20er13LNwW/kltVDRExlINtGrgv88XeX0VC460YGZNlJNJpuYbkUDKSfVHwpTUrfKxG0h2gKW8Ydkc4Xe/liHRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=doByyfOdod8TuwyZN+F0d5h/tzFJh1IY+wAhbsHXhV0=;
 b=o0DUck36vGad1FRtEGrOaa/2U+Will2IwFTNijCD7g+Vs/rLMvhAJ3jCKyffyMPkeSjEsNZDGs8zuUrNYAB13knmzhnnfsepyQXP/U2HEyCi7cUONfU1EhV1NL9r5bpgYerV8IJXI8PAO4WubGpIxzoId5+k0Opi6gr1sTThxYnu2kHwH5f8bfFWOjLZAE+z9MiaT33xTmat7f+pKj2F17a2CYmppUHJwyEwqOvRuDsQBxyp34Wcb8HuFHxCSBOFXczwV5gPbSxmmrioEAoPy1AS/QSqrgyoDIPB4AX5m43jrvvMDl00AfWPy8It7ATy5xIgkYRzzYoIMmSAAyTYOA==
Received: from DM6PR21CA0015.namprd21.prod.outlook.com (2603:10b6:5:174::25)
 by PH0PR12MB5608.namprd12.prod.outlook.com (2603:10b6:510:143::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.26; Tue, 8 Nov
 2022 10:48:30 +0000
Received: from DM6NAM11FT066.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:174:cafe::55) by DM6PR21CA0015.outlook.office365.com
 (2603:10b6:5:174::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.2 via Frontend
 Transport; Tue, 8 Nov 2022 10:48:30 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 DM6NAM11FT066.mail.protection.outlook.com (10.13.173.179) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5791.20 via Frontend Transport; Tue, 8 Nov 2022 10:48:30 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Tue, 8 Nov 2022
 02:48:22 -0800
Received: from yaviefel.vdiclient.nvidia.com (10.126.230.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.29; Tue, 8 Nov 2022 02:48:18 -0800
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Ivan Vecera <ivecera@redhat.com>,
 <netdev@vger.kernel.org>
Date: Tue, 8 Nov 2022 11:47:18 +0100
Message-ID: <e2ce868a07056d7a06535aa5d8f5767c9a47100f.1667902754.git.petrm@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <cover.1667902754.git.petrm@nvidia.com>
References: <cover.1667902754.git.petrm@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.230.35]
X-ClientProxiedBy: rnnvmail203.nvidia.com (10.129.68.9) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT066:EE_|PH0PR12MB5608:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c8e2946-fb2a-48a8-2038-08dac176c633
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HJ939WYF3dky4cBYm63fx2dFzWZ2yXxKHRjJLapYsSFc2AQdh6DvwFJfVtu7FNU6R0TXYJo1mmU5crcQItPWC+GX39kLuwsR32N/UmENGv8mkW+2aedRIDDhyvsMpfYi0u9NzqjPJ2G4/dXnOqI9J5DUStwFQF7K6tny3/gdCzoMmE7HXY0ZA88FYoAS7UoITz/9FYOWtan+vTaodqRD6k4uUQ5WnnygggfbdMvLe2wsxOYhjFGxI0nNeAxCkDgCfZ7A9pmeRzUVZt+fV8QhIR5UQZanDN+hJ8ook0sFa3t8FzR4l0eCjBZWf2L2skwR3ULvBe29uQnkUo+iUAhu4Uw1PfdkeyYCCd+IECSIWnp8dtyx95qPlwbBxp/a1AfdYsgo1c4z2NF3hksSAtlqttGEo/Qb+q+crXpzMu5Pu9Wf//wx2pVNdfXfBwMfAi1x4HdIYkn4oMIbpP75AhdtSULVjMJkp/vU+P/SlbtaPmDhkZv/6ipsUDa9zicOKkkseWhKNvIClfn1gGllnEQOV4ZVB35PzJrIOoKMM93qV0OmkYRM2TeJvcwX77S1LEchDDpSMQgAWMuqwuDOPg2fFYO0W4GGv8G8CPDsg7ve2izRo/9SFWkn6HaFXEqX3me7442DOUF1uo1FWk2skWx8NnMExoc7sbRYODhlZsRqh0VAF8X6NvCdExfM/XjLDTE8JvTFCEsi/bM7Khg/MUgIR1AVqBU2f1s9bPSYu9rwGqptdX0cQqMb6GsKohfLFQfBCXYRJ8+S9Kz8TIroDT2aew==
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230022)(4636009)(376002)(346002)(136003)(396003)(39860400002)(451199015)(40470700004)(46966006)(36840700001)(41300700001)(8936002)(5660300002)(8676002)(36756003)(2906002)(426003)(4326008)(83380400001)(70206006)(70586007)(54906003)(36860700001)(316002)(82740400003)(110136005)(7696005)(86362001)(40460700003)(82310400005)(47076005)(107886003)(2616005)(40480700001)(356005)(336012)(478600001)(26005)(16526019)(7636003)(186003);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2022 10:48:30.0481 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c8e2946-fb2a-48a8-2038-08dac176c633
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT066.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB5608
Cc: Petr Machata <petrm@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Roopa Prabhu <roopa@nvidia.com>, mlxsw@nvidia.com,
 Jiri Pirko <jiri@nvidia.com>, "Hans J . Schultz" <netdev@kapio-technology.com>
Subject: [Bridge] [PATCH net-next 12/15] selftests: devlink_lib: Split out
	helper
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

From: Ido Schimmel <idosch@nvidia.com>

Merely checking whether a trap counter incremented or not without
logging a test result is useful on its own. Split this functionality to
a helper which will be used by subsequent patches.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
Reviewed-by: Petr Machata <petrm@nvidia.com>
Signed-off-by: Petr Machata <petrm@nvidia.com>
---
 .../selftests/net/forwarding/devlink_lib.sh   | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/tools/testing/selftests/net/forwarding/devlink_lib.sh b/tools/testing/selftests/net/forwarding/devlink_lib.sh
index 601990c6881b..f1de525cfa55 100644
--- a/tools/testing/selftests/net/forwarding/devlink_lib.sh
+++ b/tools/testing/selftests/net/forwarding/devlink_lib.sh
@@ -503,25 +503,30 @@ devlink_trap_drop_cleanup()
 	tc filter del dev $dev egress protocol $proto pref $pref handle $handle flower
 }
 
-devlink_trap_stats_test()
+devlink_trap_stats_check()
 {
-	local test_name=$1; shift
 	local trap_name=$1; shift
 	local send_one="$@"
 	local t0_packets
 	local t1_packets
 
-	RET=0
-
 	t0_packets=$(devlink_trap_rx_packets_get $trap_name)
 
 	$send_one && sleep 1
 
 	t1_packets=$(devlink_trap_rx_packets_get $trap_name)
 
-	if [[ $t1_packets -eq $t0_packets ]]; then
-		check_err 1 "Trap stats did not increase"
-	fi
+	[[ $t1_packets -ne $t0_packets ]]
+}
+
+devlink_trap_stats_test()
+{
+	local test_name=$1; shift
+
+	RET=0
+
+	devlink_trap_stats_check "$@"
+	check_err $? "Trap stats did not increase"
 
 	log_test "$test_name"
 }
-- 
2.35.3

