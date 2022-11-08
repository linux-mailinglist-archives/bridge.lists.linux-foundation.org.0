Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E8F620DA7
	for <lists.bridge@lfdr.de>; Tue,  8 Nov 2022 11:48:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BDCB41524;
	Tue,  8 Nov 2022 10:48:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0BDCB41524
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=nU2jmSs4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y9exsmsG4b-a; Tue,  8 Nov 2022 10:48:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 254E740894;
	Tue,  8 Nov 2022 10:48:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 254E740894
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2E774C0082;
	Tue,  8 Nov 2022 10:48:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7A16BC002D
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 10:48:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 38C8141496
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 10:48:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38C8141496
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rpZRsKaRCU79 for <bridge@lists.linux-foundation.org>;
 Tue,  8 Nov 2022 10:48:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0467540919
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2051.outbound.protection.outlook.com [40.107.223.51])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0467540919
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 10:48:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=duv40iHmGLoXoQLnvqjNnbCMtdoP74646dloFF69/jsgOAXmshK9AVoOd/hyTx725fSZh4+4w9LXL/1FMTFKMTZW+AKRkxZV2bqb+PeuXZpAab4zQvg8zM/D5pGb3f9PEqqVbyhC/XYUjMJQiyIGt1lep6O/eILBdrccZIrECQvq6YhlhQXrN5DtfsXCKOE90Ilp3+zZgnLEN1P3vC/AtcqdibQCiT1E5YHe8CGwS6BiwRXmk/5+rW83p9srMg9p7aQGtvBFNcAR7e8yohw5+UdrvXQ9cvxo5A36cMfqGxY7UBQalgHa+oY7Ce6a95yT1JDNS5/jnfMZTMpCLrSvjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ImYNLi97idUCs/uBfghoaHt9pd6pv5pnH77gQt8cqEQ=;
 b=flWUng/uw75BpXgNSDZ6/UynVlmqCfJpcMBp5EK8/2C/5N2/DfAGJ1Qlj1mg9zBM16hD6+Og4kkx+R3FFjvrjE2cT7QCBl2VOBuuSoDv3kApyv/W1x5K4jHe+iQt2GmWUTthPQ+OKhPGlna2BNYD8WC+9SHu1UvhAwmrFULKyLLCTBC6aqMtJoOO5El9Cxv4ws/TkfSjXRrYsGFooxHQiLASiaTGDvfMhyfa9B3CReTW/GvBYu+KjRYXDCZL2RQWlS+ljngbm/q+Nab7VxOIc4Fd5lEKUYmpxXLOqsgTCuctAn1vJDJvLaGg/sKyY+d4N0eeuOJYFfB4zwsPn9OzWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ImYNLi97idUCs/uBfghoaHt9pd6pv5pnH77gQt8cqEQ=;
 b=nU2jmSs4XTqhEuxtBjFXDb02Y8iDuaQ95ItnC5+AbHo3PqJYqaW8wnFD8qEJYT9Q4aE9KDym9IByC6Mwcrb6hCz2GkTRzY3Cjc8jSEgwI9Nq8//KDFThElg9mr0vbkEpE9kXoLrAEIniD4TwdqvV8oQoYh7V3jpNasLXr+7x15H8ZH8XzbQg5jLZJ4OJaFwBvo5t14ey5/nn5xh7hwRpH2QRltGzddoC+cYRjM4+wzo8kP0UlRFyFNl+MBFExDKOA6ltCcdP9rrL3RfICQTSBk2xLWohQ5hJNWZHXfA5Lad6qObJQ9bFJ3DhrH4bT6W2zLEOzclHHsOJtjFuzJHcIg==
Received: from DS7PR03CA0333.namprd03.prod.outlook.com (2603:10b6:8:55::15) by
 MN0PR12MB6053.namprd12.prod.outlook.com (2603:10b6:208:3cf::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.27; Tue, 8 Nov
 2022 10:48:39 +0000
Received: from DM6NAM11FT068.eop-nam11.prod.protection.outlook.com
 (2603:10b6:8:55:cafe::d1) by DS7PR03CA0333.outlook.office365.com
 (2603:10b6:8:55::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.27 via Frontend
 Transport; Tue, 8 Nov 2022 10:48:38 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 DM6NAM11FT068.mail.protection.outlook.com (10.13.173.67) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5791.20 via Frontend Transport; Tue, 8 Nov 2022 10:48:38 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Tue, 8 Nov 2022
 02:48:29 -0800
Received: from yaviefel.vdiclient.nvidia.com (10.126.230.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.29; Tue, 8 Nov 2022 02:48:26 -0800
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Ivan Vecera <ivecera@redhat.com>,
 <netdev@vger.kernel.org>
Date: Tue, 8 Nov 2022 11:47:20 +0100
Message-ID: <61b030c0932726657eff1ac545d1904a2ee930ea.1667902754.git.petrm@nvidia.com>
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
X-MS-TrafficTypeDiagnostic: DM6NAM11FT068:EE_|MN0PR12MB6053:EE_
X-MS-Office365-Filtering-Correlation-Id: d075eb58-b8f8-4e23-1fbe-08dac176cb43
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cziMEfUQgGGw4m/S9zDTQ/0CZ+FnVnL433Fy9OvS9ql8nzvYHTllBE3XmiKL/v2gx+dN33aNmE2Kk28AvUrS7Bdz0/uxjdIPewK++jCmQCPnvW22DEwP1dZhDfDpLAxToUBlYMHj4zv/10CWE+t82a0GnYK6FT2XC7XeIh8J/DM/827Pna7G/04f/l356YISVNvfXEAsygVRnQ/lmPIUta/EX4lKJX9nYH+VlPOayzli6XML4Ru38c1sWyVxkl+zynjQKPJOQ09s+s7Q4oVJTaikPKo7/xLRuLVPODM0NFMgx/TXSfkwb82ILYalI70CS/RzFidjXOPrVfo9I/mwPRPqQ0Uwlgk4cTJeCjzJzbaJdLeCh7UvTD2r8eQjLV9453u2/6RxOPVCa/JehPvhle1TorEeWptDQmtnfDDoOZwS80FXSlY10MACQ4lWbGY/Mhc7K78c2P5ld6HsxDacBRsRlVVxSqIpgOf8bahSu1bNaAFB0IXzd1sUzX1HAmm20Y/aFPZT3R9JFhOkhpGny9bcq+KvlrxbpzcV1InAVff1SMnJN+WVQjNxGocNOA7FLSvh43qM1bJUCHSeOAI1AHgeBaXzmbYYqd4CQIG0o7G4q+xw4Eb3uRY+mLCr5Qty0hnFUK7aatmWzSN0ptxu8vcGcfwEgt38EHK8HMUm/eMNX+20VM8osU4fQ8CIZEj4HT2MfvCW2NWg0r6sffhb4ZhZ3NvfrOE66cOS+GxAZp+CMw1gld5hvMipAiJ/WIOUSie7g6lRM4JEq9DJLAMSTw==
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230022)(4636009)(376002)(346002)(136003)(39860400002)(396003)(451199015)(46966006)(36840700001)(40470700004)(26005)(8676002)(5660300002)(4326008)(2616005)(41300700001)(8936002)(36756003)(2906002)(7696005)(47076005)(426003)(70586007)(16526019)(186003)(70206006)(336012)(82740400003)(86362001)(82310400005)(356005)(7636003)(40460700003)(83380400001)(40480700001)(36860700001)(6666004)(107886003)(478600001)(54906003)(110136005)(316002);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2022 10:48:38.5415 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d075eb58-b8f8-4e23-1fbe-08dac176cb43
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT068.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB6053
Cc: Petr Machata <petrm@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Roopa Prabhu <roopa@nvidia.com>, mlxsw@nvidia.com,
 Jiri Pirko <jiri@nvidia.com>, "Hans J . Schultz" <netdev@kapio-technology.com>
Subject: [Bridge] [PATCH net-next 14/15] selftests: mlxsw: Add a test for
	locked port trap
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

Test that packets received via a locked bridge port whose {SMAC, VID}
does not appear in the bridge's FDB or appears with a different port,
trigger the "locked_port" packet trap.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
Reviewed-by: Petr Machata <petrm@nvidia.com>
Signed-off-by: Petr Machata <petrm@nvidia.com>
---
 .../net/mlxsw/devlink_trap_l2_drops.sh        | 105 ++++++++++++++++++
 1 file changed, 105 insertions(+)

diff --git a/tools/testing/selftests/drivers/net/mlxsw/devlink_trap_l2_drops.sh b/tools/testing/selftests/drivers/net/mlxsw/devlink_trap_l2_drops.sh
index a4c2812e9807..8d4b2c6265b3 100755
--- a/tools/testing/selftests/drivers/net/mlxsw/devlink_trap_l2_drops.sh
+++ b/tools/testing/selftests/drivers/net/mlxsw/devlink_trap_l2_drops.sh
@@ -14,6 +14,7 @@ ALL_TESTS="
 	ingress_stp_filter_test
 	port_list_is_empty_test
 	port_loopback_filter_test
+	locked_port_test
 "
 NUM_NETIFS=4
 source $lib_dir/tc_common.sh
@@ -420,6 +421,110 @@ port_loopback_filter_test()
 	port_loopback_filter_uc_test
 }
 
+locked_port_miss_test()
+{
+	local trap_name="locked_port"
+	local smac=00:11:22:33:44:55
+
+	bridge link set dev $swp1 learning off
+	bridge link set dev $swp1 locked on
+
+	RET=0
+
+	devlink_trap_stats_check $trap_name $MZ $h1 -c 1 \
+		-a $smac -b $(mac_get $h2) -A 192.0.2.1 -B 192.0.2.2 -p 100 -q
+	check_fail $? "Trap stats increased before setting action to \"trap\""
+
+	devlink_trap_action_set $trap_name "trap"
+
+	devlink_trap_stats_check $trap_name $MZ $h1 -c 1 \
+		-a $smac -b $(mac_get $h2) -A 192.0.2.1 -B 192.0.2.2 -p 100 -q
+	check_err $? "Trap stats did not increase when should"
+
+	devlink_trap_action_set $trap_name "drop"
+
+	devlink_trap_stats_check $trap_name $MZ $h1 -c 1 \
+		-a $smac -b $(mac_get $h2) -A 192.0.2.1 -B 192.0.2.2 -p 100 -q
+	check_fail $? "Trap stats increased after setting action to \"drop\""
+
+	devlink_trap_action_set $trap_name "trap"
+
+	bridge fdb replace $smac dev $swp1 master static vlan 1
+
+	devlink_trap_stats_check $trap_name $MZ $h1 -c 1 \
+		-a $smac -b $(mac_get $h2) -A 192.0.2.1 -B 192.0.2.2 -p 100 -q
+	check_fail $? "Trap stats increased after adding an FDB entry"
+
+	bridge fdb del $smac dev $swp1 master static vlan 1
+	bridge link set dev $swp1 locked off
+
+	devlink_trap_stats_check $trap_name $MZ $h1 -c 1 \
+		-a $smac -b $(mac_get $h2) -A 192.0.2.1 -B 192.0.2.2 -p 100 -q
+	check_fail $? "Trap stats increased after unlocking port"
+
+	log_test "Locked port - FDB miss"
+
+	devlink_trap_action_set $trap_name "drop"
+	bridge link set dev $swp1 learning on
+}
+
+locked_port_mismatch_test()
+{
+	local trap_name="locked_port"
+	local smac=00:11:22:33:44:55
+
+	bridge link set dev $swp1 learning off
+	bridge link set dev $swp1 locked on
+
+	RET=0
+
+	bridge fdb replace $smac dev $swp2 master static vlan 1
+
+	devlink_trap_stats_check $trap_name $MZ $h1 -c 1 \
+		-a $smac -b $(mac_get $h2) -A 192.0.2.1 -B 192.0.2.2 -p 100 -q
+	check_fail $? "Trap stats increased before setting action to \"trap\""
+
+	devlink_trap_action_set $trap_name "trap"
+
+	devlink_trap_stats_check $trap_name $MZ $h1 -c 1 \
+		-a $smac -b $(mac_get $h2) -A 192.0.2.1 -B 192.0.2.2 -p 100 -q
+	check_err $? "Trap stats did not increase when should"
+
+	devlink_trap_action_set $trap_name "drop"
+
+	devlink_trap_stats_check $trap_name $MZ $h1 -c 1 \
+		-a $smac -b $(mac_get $h2) -A 192.0.2.1 -B 192.0.2.2 -p 100 -q
+	check_fail $? "Trap stats increased after setting action to \"drop\""
+
+	devlink_trap_action_set $trap_name "trap"
+	bridge link set dev $swp1 locked off
+
+	devlink_trap_stats_check $trap_name $MZ $h1 -c 1 \
+		-a $smac -b $(mac_get $h2) -A 192.0.2.1 -B 192.0.2.2 -p 100 -q
+	check_fail $? "Trap stats increased after unlocking port"
+
+	bridge link set dev $swp1 locked on
+	bridge fdb replace $smac dev $swp1 master static vlan 1
+
+	devlink_trap_stats_check $trap_name $MZ $h1 -c 1 \
+		-a $smac -b $(mac_get $h2) -A 192.0.2.1 -B 192.0.2.2 -p 100 -q
+	check_fail $? "Trap stats increased after replacing an FDB entry"
+
+	bridge fdb del $smac dev $swp1 master static vlan 1
+	devlink_trap_action_set $trap_name "drop"
+
+	log_test "Locked port - FDB mismatch"
+
+	bridge link set dev $swp1 locked off
+	bridge link set dev $swp1 learning on
+}
+
+locked_port_test()
+{
+	locked_port_miss_test
+	locked_port_mismatch_test
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.35.3

