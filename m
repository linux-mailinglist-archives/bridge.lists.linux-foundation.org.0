Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C3AD1755E06
	for <lists.bridge@lfdr.de>; Mon, 17 Jul 2023 10:13:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 11F6E401C6;
	Mon, 17 Jul 2023 08:13:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11F6E401C6
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=C6KAvb0f
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sg2LIfxuWs4U; Mon, 17 Jul 2023 08:13:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id DBB3B40248;
	Mon, 17 Jul 2023 08:13:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBB3B40248
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id ACC0FC0DD5;
	Mon, 17 Jul 2023 08:13:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0FB26C0032
 for <bridge@lists.linux-foundation.org>; Mon, 17 Jul 2023 08:13:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 30A7D60B55
 for <bridge@lists.linux-foundation.org>; Mon, 17 Jul 2023 08:13:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30A7D60B55
Authentication-Results: smtp3.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=C6KAvb0f
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vRlzl2RLvNM5 for <bridge@lists.linux-foundation.org>;
 Mon, 17 Jul 2023 08:13:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20CDF60BBB
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2061b.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e8a::61b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 20CDF60BBB
 for <bridge@lists.linux-foundation.org>; Mon, 17 Jul 2023 08:13:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IAD5cb5rDeXebQL2oF5PwayYcqU0Inq5F5X08A443QbAkXFQNvMwVfd10R+eKb/b+ya7WNXrAxZtW/SzSiCFFRbt5y8XD2Jg+OKd6Ll5lAUGHq0a6fLq7n/bCxYsxkNIs4iqrJGJzhKdvS9/wnd+aysIciIreBbMLX8UWYMIy9FfSBCu7HCgmUV6jinvV+0WTcfCQKH7kF/Tnc35Yn+jcUkuCPrc0XEGFILdbGMTnHdcjkXRxDE9JhEg0Sc8I5TjrawLBGjWXnzRn01D7g4b1u/m6sr5b7n+a3Q1CxMJRS+ejCR11r89TE3zjbJbNxwRRJmscvp+GAZUsvtGBlU9ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f/aVy6DAeXGQt0YlX7C8opHS3PE4vlSSWfNXjZis9YY=;
 b=C7W9LrVxjZe5iDb7sxg+MmQRn6z0KQ2i16ps+MvCZlztM8Pzj4DZcW2K6qI1z1vPY5RpFXuh4ewpauy0Am2VA9rLrWg8r7dTQyva5R8v8xwLXqMFNS3aAdiBqr67xTVcCOhGHjiJ8YHlFmbd8QQ8Yg1kx1uQm85RxERj6oA6itBRTzAL+KJmevUUapJfMzoA6P+6bqfG3KcKrZSV3V2Dl1F95dfbZeHF+3RbqNIY+z02ATTD4DKmYGEX4ejm2oQreiryu99emtbQ2fkYvXj/udotbn24uhmvUHfJw8PBCHjxGdEu4ZkSs07hI7OTkObKXuOSOXfQFJO8cbXI6NZliw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f/aVy6DAeXGQt0YlX7C8opHS3PE4vlSSWfNXjZis9YY=;
 b=C6KAvb0fAEIza8Izb8zp0mvj70xPNL7C+yk3rzw62fBREcmpMS9LLLpLKS7WTWR4R3LprXEJwF23MWx8o7YU+0Z+6Tw7YczsY7J3PGTFiaGtqXnivu+6Px1uGoPt6DaVq1xLjWzdhZMFmfvr2TvGtJ9eU5pkaGuKEO31SB3IGf6fSgVz0l9PPsBoNdxSmw5FGSH2p0wQh3GfVT25iEfc316ZvsCR6oOXDxxpK72/hdSWdgLz6zI2YdyXz2Y85mU84OgHzrYnAeC6BiAfwdfIqjlniCZac1bGHqkJrrQLuIGeWNkr79GM9whCp9QS4436/8VQzjS3AD5M1Yuk2N/V8w==
Received: from BN9PR03CA0765.namprd03.prod.outlook.com (2603:10b6:408:13a::20)
 by MN6PR12MB8492.namprd12.prod.outlook.com (2603:10b6:208:472::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.28; Mon, 17 Jul
 2023 08:13:25 +0000
Received: from BN8NAM11FT093.eop-nam11.prod.protection.outlook.com
 (2603:10b6:408:13a:cafe::ff) by BN9PR03CA0765.outlook.office365.com
 (2603:10b6:408:13a::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.32 via Frontend
 Transport; Mon, 17 Jul 2023 08:13:25 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 BN8NAM11FT093.mail.protection.outlook.com (10.13.177.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6588.32 via Frontend Transport; Mon, 17 Jul 2023 08:13:25 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.5; Mon, 17 Jul 2023
 01:13:11 -0700
Received: from dev-r-vrt-155.mtr.labs.mlnx (10.126.231.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.37; Mon, 17 Jul 2023 01:13:08 -0700
To: <netdev@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Mon, 17 Jul 2023 11:12:29 +0300
Message-ID: <20230717081229.81917-5-idosch@nvidia.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230717081229.81917-1-idosch@nvidia.com>
References: <20230717081229.81917-1-idosch@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.231.35]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8NAM11FT093:EE_|MN6PR12MB8492:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a15be7d-d503-42ad-f56b-08db869db1b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Mo/0LagMN3VAqcqnvuR0hArhcIeFPVgjTlWtC5whp7tNpqmQeYz+nxxLvd7hnalyfkIu1ODrC/8VCwFISBaI3Kq3LwFuRqhwsVkBYSnSDkBEBk52RC9UBs0sNe5Zdv56V33RO4Q0fLid/nKKrV8BYMkROhUNsq1DCH8JNI6UOB5b2oTDAsQkBdf3CL3MieEJad9Y3E5Tcnoq6WWriI4TUIlsDa+IACZzBVTlwZ/v8jtQf+cH6XJOUwE3tfU5q/0VpaXbxDvL/Lz1/874hvIyiNijq6WsojwhCuVA902cdm24JASZf5cyUUsFiGGecrMkonjVlgTCQVXIzV2W4hyUw7IcmW4lE1MRo9+/WKl6c7xaEImkjdB+LL7cwWSKjPHfHlYKpiYkouYsNed/NtpD8vj3CAXvhroj6Rlvmv5s51Z2YG2Omwxi54z1i0LSBqgKig7zV/YuRnzpaH6dkAML+kRdyLXMBGy6LSudD28DT9kV6zVwx3UTbJYRaElNHLWkZvTjUA31hr6hrPfe5x3fzCKnVSKEMXohLdxU1gctX5W9TGy9B5OitALfwfF5/Le7atYZfc8XQE9DwPTfUYPGxDLs8YGbVDQTwJcRD/YGUhu6b5U+86hmrDR9TrCwxRsAMFXDBX6ccYM4vhp/zPq7sQ2kFm+6hbLWRFfw9WGxkoptJdCCYsIjIA8135VFobFuPkOYa7fV2iTMDYPep74gL8XBaLp7okbfFXdbgSEPrHmuPAbXc/GZyQOlaIhQ94F0
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230028)(4636009)(39860400002)(376002)(396003)(346002)(136003)(82310400008)(451199021)(40470700004)(36840700001)(46966006)(36860700001)(40480700001)(36756003)(86362001)(40460700003)(356005)(82740400003)(7636003)(6666004)(107886003)(30864003)(478600001)(2906002)(26005)(1076003)(316002)(5660300002)(8676002)(8936002)(54906003)(110136005)(70586007)(4326008)(41300700001)(70206006)(2616005)(426003)(16526019)(336012)(186003)(47076005);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2023 08:13:25.0767 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a15be7d-d503-42ad-f56b-08db869db1b9
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM11FT093.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR12MB8492
Cc: petrm@nvidia.com, taspelund@nvidia.com, Ido Schimmel <idosch@nvidia.com>,
 razor@blackwall.org, dsahern@gmail.com, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 4/4] selftests: net: Add bridge backup
	port and backup nexthop ID test
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

Add test cases for bridge backup port and backup nexthop ID, testing
both good and bad flows.

Example truncated output:

 # ./test_bridge_backup_port.sh
 [...]
 Tests passed:  83
 Tests failed:   0

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 tools/testing/selftests/net/Makefile          |   1 +
 .../selftests/net/test_bridge_backup_port.sh  | 759 ++++++++++++++++++
 2 files changed, 760 insertions(+)
 create mode 100755 tools/testing/selftests/net/test_bridge_backup_port.sh

diff --git a/tools/testing/selftests/net/Makefile b/tools/testing/selftests/net/Makefile
index 2f69f7274e3d..6d1cd1c63d40 100644
--- a/tools/testing/selftests/net/Makefile
+++ b/tools/testing/selftests/net/Makefile
@@ -85,6 +85,7 @@ TEST_GEN_FILES += bind_wildcard
 TEST_PROGS += test_vxlan_mdb.sh
 TEST_PROGS += test_bridge_neigh_suppress.sh
 TEST_PROGS += test_vxlan_nolocalbypass.sh
+TEST_PROGS += test_bridge_backup_port.sh
 
 TEST_FILES := settings
 
diff --git a/tools/testing/selftests/net/test_bridge_backup_port.sh b/tools/testing/selftests/net/test_bridge_backup_port.sh
new file mode 100755
index 000000000000..112cfd8a10ad
--- /dev/null
+++ b/tools/testing/selftests/net/test_bridge_backup_port.sh
@@ -0,0 +1,759 @@
+#!/bin/bash
+# SPDX-License-Identifier: GPL-2.0
+#
+# This test is for checking bridge backup port and backup nexthop ID
+# functionality. The topology consists of two bridge (VTEPs) connected using
+# VXLAN. The test checks that when the switch port (swp1) is down, traffic is
+# redirected to the VXLAN port (vx0). When a backup nexthop ID is configured,
+# the test checks that traffic is redirected with the correct nexthop
+# information.
+#
+# +------------------------------------+ +------------------------------------+
+# |    + swp1                   + vx0  | |    + swp1                   + vx0  |
+# |    |                        |      | |    |                        |      |
+# |    |           br0          |      | |    |                        |      |
+# |    +------------+-----------+      | |    +------------+-----------+      |
+# |                 |                  | |                 |                  |
+# |                 |                  | |                 |                  |
+# |                 +                  | |                 +                  |
+# |                br0                 | |                br0                 |
+# |                 +                  | |                 +                  |
+# |                 |                  | |                 |                  |
+# |                 |                  | |                 |                  |
+# |                 +                  | |                 +                  |
+# |              br0.10                | |              br0.10                |
+# |           192.0.2.65/28            | |            192.0.2.66/28           |
+# |                                    | |                                    |
+# |                                    | |                                    |
+# |                 192.0.2.33         | |                 192.0.2.34         |
+# |                 + lo               | |                 + lo               |
+# |                                    | |                                    |
+# |                                    | |                                    |
+# |                   192.0.2.49/28    | |    192.0.2.50/28                   |
+# |                           veth0 +-------+ veth0                           |
+# |                                    | |                                    |
+# | sw1                                | | sw2                                |
+# +------------------------------------+ +------------------------------------+
+
+ret=0
+# Kselftest framework requirement - SKIP code is 4.
+ksft_skip=4
+
+# All tests in this script. Can be overridden with -t option.
+TESTS="
+	backup_port
+	backup_nhid
+	backup_nhid_invalid
+	backup_nhid_ping
+	backup_nhid_torture
+"
+VERBOSE=0
+PAUSE_ON_FAIL=no
+PAUSE=no
+PING_TIMEOUT=5
+
+################################################################################
+# Utilities
+
+log_test()
+{
+	local rc=$1
+	local expected=$2
+	local msg="$3"
+
+	if [ ${rc} -eq ${expected} ]; then
+		printf "TEST: %-60s  [ OK ]\n" "${msg}"
+		nsuccess=$((nsuccess+1))
+	else
+		ret=1
+		nfail=$((nfail+1))
+		printf "TEST: %-60s  [FAIL]\n" "${msg}"
+		if [ "$VERBOSE" = "1" ]; then
+			echo "    rc=$rc, expected $expected"
+		fi
+
+		if [ "${PAUSE_ON_FAIL}" = "yes" ]; then
+		echo
+			echo "hit enter to continue, 'q' to quit"
+			read a
+			[ "$a" = "q" ] && exit 1
+		fi
+	fi
+
+	if [ "${PAUSE}" = "yes" ]; then
+		echo
+		echo "hit enter to continue, 'q' to quit"
+		read a
+		[ "$a" = "q" ] && exit 1
+	fi
+
+	[ "$VERBOSE" = "1" ] && echo
+}
+
+run_cmd()
+{
+	local cmd="$1"
+	local out
+	local stderr="2>/dev/null"
+
+	if [ "$VERBOSE" = "1" ]; then
+		printf "COMMAND: $cmd\n"
+		stderr=
+	fi
+
+	out=$(eval $cmd $stderr)
+	rc=$?
+	if [ "$VERBOSE" = "1" -a -n "$out" ]; then
+		echo "    $out"
+	fi
+
+	return $rc
+}
+
+tc_check_packets()
+{
+	local ns=$1; shift
+	local id=$1; shift
+	local handle=$1; shift
+	local count=$1; shift
+	local pkts
+
+	sleep 0.1
+	pkts=$(tc -n $ns -j -s filter show $id \
+		| jq ".[] | select(.options.handle == $handle) | \
+		.options.actions[0].stats.packets")
+	[[ $pkts == $count ]]
+}
+
+################################################################################
+# Setup
+
+setup_topo_ns()
+{
+	local ns=$1; shift
+
+	ip netns add $ns
+	ip -n $ns link set dev lo up
+
+	ip netns exec $ns sysctl -qw net.ipv6.conf.all.keep_addr_on_down=1
+	ip netns exec $ns sysctl -qw net.ipv6.conf.default.ignore_routes_with_linkdown=1
+	ip netns exec $ns sysctl -qw net.ipv6.conf.all.accept_dad=0
+	ip netns exec $ns sysctl -qw net.ipv6.conf.default.accept_dad=0
+}
+
+setup_topo()
+{
+	local ns
+
+	for ns in sw1 sw2; do
+		setup_topo_ns $ns
+	done
+
+	ip link add name veth0 type veth peer name veth1
+	ip link set dev veth0 netns sw1 name veth0
+	ip link set dev veth1 netns sw2 name veth0
+}
+
+setup_sw_common()
+{
+	local ns=$1; shift
+	local local_addr=$1; shift
+	local remote_addr=$1; shift
+	local veth_addr=$1; shift
+	local gw_addr=$1; shift
+	local br_addr=$1; shift
+
+	ip -n $ns address add $local_addr/32 dev lo
+
+	ip -n $ns link set dev veth0 up
+	ip -n $ns address add $veth_addr/28 dev veth0
+	ip -n $ns route add default via $gw_addr
+
+	ip -n $ns link add name br0 up type bridge vlan_filtering 1 \
+		vlan_default_pvid 0 mcast_snooping 0
+
+	ip -n $ns link add link br0 name br0.10 up type vlan id 10
+	bridge -n $ns vlan add vid 10 dev br0 self
+	ip -n $ns address add $br_addr/28 dev br0.10
+
+	ip -n $ns link add name swp1 up type dummy
+	ip -n $ns link set dev swp1 master br0
+	bridge -n $ns vlan add vid 10 dev swp1 untagged
+
+	ip -n $ns link add name vx0 up master br0 type vxlan \
+		local $local_addr dstport 4789 nolearning external
+	bridge -n $ns link set dev vx0 vlan_tunnel on learning off
+
+	bridge -n $ns vlan add vid 10 dev vx0
+	bridge -n $ns vlan add vid 10 dev vx0 tunnel_info id 10010
+}
+
+setup_sw1()
+{
+	local ns=sw1
+	local local_addr=192.0.2.33
+	local remote_addr=192.0.2.34
+	local veth_addr=192.0.2.49
+	local gw_addr=192.0.2.50
+	local br_addr=192.0.2.65
+
+	setup_sw_common $ns $local_addr $remote_addr $veth_addr $gw_addr \
+		$br_addr
+}
+
+setup_sw2()
+{
+	local ns=sw2
+	local local_addr=192.0.2.34
+	local remote_addr=192.0.2.33
+	local veth_addr=192.0.2.50
+	local gw_addr=192.0.2.49
+	local br_addr=192.0.2.66
+
+	setup_sw_common $ns $local_addr $remote_addr $veth_addr $gw_addr \
+		$br_addr
+}
+
+setup()
+{
+	set -e
+
+	setup_topo
+	setup_sw1
+	setup_sw2
+
+	sleep 5
+
+	set +e
+}
+
+cleanup()
+{
+	local ns
+
+	for ns in h1 h2 sw1 sw2; do
+		ip netns del $ns &> /dev/null
+	done
+}
+
+################################################################################
+# Tests
+
+backup_port()
+{
+	local dmac=00:11:22:33:44:55
+	local smac=00:aa:bb:cc:dd:ee
+
+	echo
+	echo "Backup port"
+	echo "-----------"
+
+	run_cmd "tc -n sw1 qdisc replace dev swp1 clsact"
+	run_cmd "tc -n sw1 filter replace dev swp1 egress pref 1 handle 101 proto ip flower src_mac $smac dst_mac $dmac action pass"
+
+	run_cmd "tc -n sw1 qdisc replace dev vx0 clsact"
+	run_cmd "tc -n sw1 filter replace dev vx0 egress pref 1 handle 101 proto ip flower src_mac $smac dst_mac $dmac action pass"
+
+	run_cmd "bridge -n sw1 fdb replace $dmac dev swp1 master static vlan 10"
+
+	# Initial state - check that packets are forwarded out of swp1 when it
+	# has a carrier and not forwarded out of any port when it does not have
+	# a carrier.
+	run_cmd "ip netns exec sw1 mausezahn br0.10 -a $smac -b $dmac -A 198.51.100.1 -B 198.51.100.2 -t ip -p 100 -q -c 1"
+	tc_check_packets sw1 "dev swp1 egress" 101 1
+	log_test $? 0 "Forwarding out of swp1"
+	tc_check_packets sw1 "dev vx0 egress" 101 0
+	log_test $? 0 "No forwarding out of vx0"
+
+	run_cmd "ip -n sw1 link set dev swp1 carrier off"
+	log_test $? 0 "swp1 carrier off"
+
+	run_cmd "ip netns exec sw1 mausezahn br0.10 -a $smac -b $dmac -A 198.51.100.1 -B 198.51.100.2 -t ip -p 100 -q -c 1"
+	tc_check_packets sw1 "dev swp1 egress" 101 1
+	log_test $? 0 "No forwarding out of swp1"
+	tc_check_packets sw1 "dev vx0 egress" 101 0
+	log_test $? 0 "No forwarding out of vx0"
+
+	run_cmd "ip -n sw1 link set dev swp1 carrier on"
+	log_test $? 0 "swp1 carrier on"
+
+	# Configure vx0 as the backup port of swp1 and check that packets are
+	# forwarded out of swp1 when it has a carrier and out of vx0 when swp1
+	# does not have a carrier.
+	run_cmd "bridge -n sw1 link set dev swp1 backup_port vx0"
+	run_cmd "bridge -n sw1 -d link show dev swp1 | grep \"backup_port vx0\""
+	log_test $? 0 "vx0 configured as backup port of swp1"
+
+	run_cmd "ip netns exec sw1 mausezahn br0.10 -a $smac -b $dmac -A 198.51.100.1 -B 198.51.100.2 -t ip -p 100 -q -c 1"
+	tc_check_packets sw1 "dev swp1 egress" 101 2
+	log_test $? 0 "Forwarding out of swp1"
+	tc_check_packets sw1 "dev vx0 egress" 101 0
+	log_test $? 0 "No forwarding out of vx0"
+
+	run_cmd "ip -n sw1 link set dev swp1 carrier off"
+	log_test $? 0 "swp1 carrier off"
+
+	run_cmd "ip netns exec sw1 mausezahn br0.10 -a $smac -b $dmac -A 198.51.100.1 -B 198.51.100.2 -t ip -p 100 -q -c 1"
+	tc_check_packets sw1 "dev swp1 egress" 101 2
+	log_test $? 0 "No forwarding out of swp1"
+	tc_check_packets sw1 "dev vx0 egress" 101 1
+	log_test $? 0 "Forwarding out of vx0"
+
+	run_cmd "ip -n sw1 link set dev swp1 carrier on"
+	log_test $? 0 "swp1 carrier on"
+
+	run_cmd "ip netns exec sw1 mausezahn br0.10 -a $smac -b $dmac -A 198.51.100.1 -B 198.51.100.2 -t ip -p 100 -q -c 1"
+	tc_check_packets sw1 "dev swp1 egress" 101 3
+	log_test $? 0 "Forwarding out of swp1"
+	tc_check_packets sw1 "dev vx0 egress" 101 1
+	log_test $? 0 "No forwarding out of vx0"
+
+	# Remove vx0 as the backup port of swp1 and check that packets are no
+	# longer forwarded out of vx0 when swp1 does not have a carrier.
+	run_cmd "bridge -n sw1 link set dev swp1 nobackup_port"
+	run_cmd "bridge -n sw1 -d link show dev swp1 | grep \"backup_port vx0\""
+	log_test $? 1 "vx0 not configured as backup port of swp1"
+
+	run_cmd "ip netns exec sw1 mausezahn br0.10 -a $smac -b $dmac -A 198.51.100.1 -B 198.51.100.2 -t ip -p 100 -q -c 1"
+	tc_check_packets sw1 "dev swp1 egress" 101 4
+	log_test $? 0 "Forwarding out of swp1"
+	tc_check_packets sw1 "dev vx0 egress" 101 1
+	log_test $? 0 "No forwarding out of vx0"
+
+	run_cmd "ip -n sw1 link set dev swp1 carrier off"
+	log_test $? 0 "swp1 carrier off"
+
+	run_cmd "ip netns exec sw1 mausezahn br0.10 -a $smac -b $dmac -A 198.51.100.1 -B 198.51.100.2 -t ip -p 100 -q -c 1"
+	tc_check_packets sw1 "dev swp1 egress" 101 4
+	log_test $? 0 "No forwarding out of swp1"
+	tc_check_packets sw1 "dev vx0 egress" 101 1
+	log_test $? 0 "No forwarding out of vx0"
+}
+
+backup_nhid()
+{
+	local dmac=00:11:22:33:44:55
+	local smac=00:aa:bb:cc:dd:ee
+
+	echo
+	echo "Backup nexthop ID"
+	echo "-----------------"
+
+	run_cmd "tc -n sw1 qdisc replace dev swp1 clsact"
+	run_cmd "tc -n sw1 filter replace dev swp1 egress pref 1 handle 101 proto ip flower src_mac $smac dst_mac $dmac action pass"
+
+	run_cmd "tc -n sw1 qdisc replace dev vx0 clsact"
+	run_cmd "tc -n sw1 filter replace dev vx0 egress pref 1 handle 101 proto ip flower src_mac $smac dst_mac $dmac action pass"
+
+	run_cmd "ip -n sw1 nexthop replace id 1 via 192.0.2.34 fdb"
+	run_cmd "ip -n sw1 nexthop replace id 2 via 192.0.2.34 fdb"
+	run_cmd "ip -n sw1 nexthop replace id 10 group 1/2 fdb"
+
+	run_cmd "bridge -n sw1 fdb replace $dmac dev swp1 master static vlan 10"
+	run_cmd "bridge -n sw1 fdb replace $dmac dev vx0 self static dst 192.0.2.36 src_vni 10010"
+
+	run_cmd "ip -n sw2 address replace 192.0.2.36/32 dev lo"
+
+	# The first filter matches on packets forwarded using the backup
+	# nexthop ID and the second filter matches on packets forwarded using a
+	# regular VXLAN FDB entry.
+	run_cmd "tc -n sw2 qdisc replace dev vx0 clsact"
+	run_cmd "tc -n sw2 filter replace dev vx0 ingress pref 1 handle 101 proto ip flower src_mac $smac dst_mac $dmac enc_key_id 10010 enc_dst_ip 192.0.2.34 action pass"
+	run_cmd "tc -n sw2 filter replace dev vx0 ingress pref 1 handle 102 proto ip flower src_mac $smac dst_mac $dmac enc_key_id 10010 enc_dst_ip 192.0.2.36 action pass"
+
+	# Configure vx0 as the backup port of swp1 and check that packets are
+	# forwarded out of swp1 when it has a carrier and out of vx0 when swp1
+	# does not have a carrier. When packets are forwarded out of vx0, check
+	# that they are forwarded by the VXLAN FDB entry.
+	run_cmd "bridge -n sw1 link set dev swp1 backup_port vx0"
+	run_cmd "bridge -n sw1 -d link show dev swp1 | grep \"backup_port vx0\""
+	log_test $? 0 "vx0 configured as backup port of swp1"
+
+	run_cmd "ip netns exec sw1 mausezahn br0.10 -a $smac -b $dmac -A 198.51.100.1 -B 198.51.100.2 -t ip -p 100 -q -c 1"
+	tc_check_packets sw1 "dev swp1 egress" 101 1
+	log_test $? 0 "Forwarding out of swp1"
+	tc_check_packets sw1 "dev vx0 egress" 101 0
+	log_test $? 0 "No forwarding out of vx0"
+
+	run_cmd "ip -n sw1 link set dev swp1 carrier off"
+	log_test $? 0 "swp1 carrier off"
+
+	run_cmd "ip netns exec sw1 mausezahn br0.10 -a $smac -b $dmac -A 198.51.100.1 -B 198.51.100.2 -t ip -p 100 -q -c 1"
+	tc_check_packets sw1 "dev swp1 egress" 101 1
+	log_test $? 0 "No forwarding out of swp1"
+	tc_check_packets sw1 "dev vx0 egress" 101 1
+	log_test $? 0 "Forwarding out of vx0"
+	tc_check_packets sw2 "dev vx0 ingress" 101 0
+	log_test $? 0 "No forwarding using backup nexthop ID"
+	tc_check_packets sw2 "dev vx0 ingress" 102 1
+	log_test $? 0 "Forwarding using VXLAN FDB entry"
+
+	run_cmd "ip -n sw1 link set dev swp1 carrier on"
+	log_test $? 0 "swp1 carrier on"
+
+	# Configure nexthop ID 10 as the backup nexthop ID of swp1 and check
+	# that when packets are forwarded out of vx0, they are forwarded using
+	# the backup nexthop ID.
+	run_cmd "bridge -n sw1 link set dev swp1 backup_nhid 10"
+	run_cmd "bridge -n sw1 -d link show dev swp1 | grep \"backup_nhid 10\""
+	log_test $? 0 "nexthop ID 10 configured as backup nexthop ID of swp1"
+
+	run_cmd "ip netns exec sw1 mausezahn br0.10 -a $smac -b $dmac -A 198.51.100.1 -B 198.51.100.2 -t ip -p 100 -q -c 1"
+	tc_check_packets sw1 "dev swp1 egress" 101 2
+	log_test $? 0 "Forwarding out of swp1"
+	tc_check_packets sw1 "dev vx0 egress" 101 1
+	log_test $? 0 "No forwarding out of vx0"
+
+	run_cmd "ip -n sw1 link set dev swp1 carrier off"
+	log_test $? 0 "swp1 carrier off"
+
+	run_cmd "ip netns exec sw1 mausezahn br0.10 -a $smac -b $dmac -A 198.51.100.1 -B 198.51.100.2 -t ip -p 100 -q -c 1"
+	tc_check_packets sw1 "dev swp1 egress" 101 2
+	log_test $? 0 "No forwarding out of swp1"
+	tc_check_packets sw1 "dev vx0 egress" 101 2
+	log_test $? 0 "Forwarding out of vx0"
+	tc_check_packets sw2 "dev vx0 ingress" 101 1
+	log_test $? 0 "Forwarding using backup nexthop ID"
+	tc_check_packets sw2 "dev vx0 ingress" 102 1
+	log_test $? 0 "No forwarding using VXLAN FDB entry"
+
+	run_cmd "ip -n sw1 link set dev swp1 carrier on"
+	log_test $? 0 "swp1 carrier on"
+
+	run_cmd "ip netns exec sw1 mausezahn br0.10 -a $smac -b $dmac -A 198.51.100.1 -B 198.51.100.2 -t ip -p 100 -q -c 1"
+	tc_check_packets sw1 "dev swp1 egress" 101 3
+	log_test $? 0 "Forwarding out of swp1"
+	tc_check_packets sw1 "dev vx0 egress" 101 2
+	log_test $? 0 "No forwarding out of vx0"
+	tc_check_packets sw2 "dev vx0 ingress" 101 1
+	log_test $? 0 "No forwarding using backup nexthop ID"
+	tc_check_packets sw2 "dev vx0 ingress" 102 1
+	log_test $? 0 "No forwarding using VXLAN FDB entry"
+
+	# Reset the backup nexthop ID to 0 and check that packets are no longer
+	# forwarded using the backup nexthop ID when swp1 does not have a
+	# carrier and are instead forwarded by the VXLAN FDB.
+	run_cmd "bridge -n sw1 link set dev swp1 backup_nhid 0"
+	run_cmd "bridge -n sw1 -d link show dev swp1 | grep \"backup_nhid\""
+	log_test $? 1 "No backup nexthop ID configured for swp1"
+
+	run_cmd "ip netns exec sw1 mausezahn br0.10 -a $smac -b $dmac -A 198.51.100.1 -B 198.51.100.2 -t ip -p 100 -q -c 1"
+	tc_check_packets sw1 "dev swp1 egress" 101 4
+	log_test $? 0 "Forwarding out of swp1"
+	tc_check_packets sw1 "dev vx0 egress" 101 2
+	log_test $? 0 "No forwarding out of vx0"
+	tc_check_packets sw2 "dev vx0 ingress" 101 1
+	log_test $? 0 "No forwarding using backup nexthop ID"
+	tc_check_packets sw2 "dev vx0 ingress" 102 1
+	log_test $? 0 "No forwarding using VXLAN FDB entry"
+
+	run_cmd "ip -n sw1 link set dev swp1 carrier off"
+	log_test $? 0 "swp1 carrier off"
+
+	run_cmd "ip netns exec sw1 mausezahn br0.10 -a $smac -b $dmac -A 198.51.100.1 -B 198.51.100.2 -t ip -p 100 -q -c 1"
+	tc_check_packets sw1 "dev swp1 egress" 101 4
+	log_test $? 0 "No forwarding out of swp1"
+	tc_check_packets sw1 "dev vx0 egress" 101 3
+	log_test $? 0 "Forwarding out of vx0"
+	tc_check_packets sw2 "dev vx0 ingress" 101 1
+	log_test $? 0 "No forwarding using backup nexthop ID"
+	tc_check_packets sw2 "dev vx0 ingress" 102 2
+	log_test $? 0 "Forwarding using VXLAN FDB entry"
+}
+
+backup_nhid_invalid()
+{
+	local dmac=00:11:22:33:44:55
+	local smac=00:aa:bb:cc:dd:ee
+	local tx_drop
+
+	echo
+	echo "Backup nexthop ID - invalid IDs"
+	echo "-------------------------------"
+
+	# Check that when traffic is redirected with an invalid nexthop ID, it
+	# is forwarded out of the VXLAN port, but dropped by the VXLAN driver
+	# and does not crash the host.
+
+	run_cmd "tc -n sw1 qdisc replace dev swp1 clsact"
+	run_cmd "tc -n sw1 filter replace dev swp1 egress pref 1 handle 101 proto ip flower src_mac $smac dst_mac $dmac action pass"
+
+	run_cmd "tc -n sw1 qdisc replace dev vx0 clsact"
+	run_cmd "tc -n sw1 filter replace dev vx0 egress pref 1 handle 101 proto ip flower src_mac $smac dst_mac $dmac action pass"
+	# Drop all other Tx traffic to avoid changes to Tx drop counter.
+	run_cmd "tc -n sw1 filter replace dev vx0 egress pref 2 handle 102 proto all matchall action drop"
+
+	tx_drop=$(ip -n sw1 -s -j link show dev vx0 | jq '.[]["stats64"]["tx"]["dropped"]')
+
+	run_cmd "ip -n sw1 nexthop replace id 1 via 192.0.2.34 fdb"
+	run_cmd "ip -n sw1 nexthop replace id 2 via 192.0.2.34 fdb"
+	run_cmd "ip -n sw1 nexthop replace id 10 group 1/2 fdb"
+
+	run_cmd "bridge -n sw1 fdb replace $dmac dev swp1 master static vlan 10"
+
+	run_cmd "tc -n sw2 qdisc replace dev vx0 clsact"
+	run_cmd "tc -n sw2 filter replace dev vx0 ingress pref 1 handle 101 proto ip flower src_mac $smac dst_mac $dmac enc_key_id 10010 enc_dst_ip 192.0.2.34 action pass"
+
+	# First, check that redirection works.
+	run_cmd "bridge -n sw1 link set dev swp1 backup_port vx0"
+	run_cmd "bridge -n sw1 -d link show dev swp1 | grep \"backup_port vx0\""
+	log_test $? 0 "vx0 configured as backup port of swp1"
+
+	run_cmd "bridge -n sw1 link set dev swp1 backup_nhid 10"
+	run_cmd "bridge -n sw1 -d link show dev swp1 | grep \"backup_nhid 10\""
+	log_test $? 0 "Valid nexthop as backup nexthop"
+
+	run_cmd "ip -n sw1 link set dev swp1 carrier off"
+	log_test $? 0 "swp1 carrier off"
+
+	run_cmd "ip netns exec sw1 mausezahn br0.10 -a $smac -b $dmac -A 198.51.100.1 -B 198.51.100.2 -t ip -p 100 -q -c 1"
+	tc_check_packets sw1 "dev swp1 egress" 101 0
+	log_test $? 0 "No forwarding out of swp1"
+	tc_check_packets sw1 "dev vx0 egress" 101 1
+	log_test $? 0 "Forwarding out of vx0"
+	tc_check_packets sw2 "dev vx0 ingress" 101 1
+	log_test $? 0 "Forwarding using backup nexthop ID"
+	run_cmd "ip -n sw1 -s -j link show dev vx0 | jq -e '.[][\"stats64\"][\"tx\"][\"dropped\"] == $tx_drop'"
+	log_test $? 0 "No Tx drop increase"
+
+	# Use a non-existent nexthop ID.
+	run_cmd "bridge -n sw1 link set dev swp1 backup_nhid 20"
+	run_cmd "bridge -n sw1 -d link show dev swp1 | grep \"backup_nhid 20\""
+	log_test $? 0 "Non-existent nexthop as backup nexthop"
+
+	run_cmd "ip netns exec sw1 mausezahn br0.10 -a $smac -b $dmac -A 198.51.100.1 -B 198.51.100.2 -t ip -p 100 -q -c 1"
+	tc_check_packets sw1 "dev swp1 egress" 101 0
+	log_test $? 0 "No forwarding out of swp1"
+	tc_check_packets sw1 "dev vx0 egress" 101 2
+	log_test $? 0 "Forwarding out of vx0"
+	tc_check_packets sw2 "dev vx0 ingress" 101 1
+	log_test $? 0 "No forwarding using backup nexthop ID"
+	run_cmd "ip -n sw1 -s -j link show dev vx0 | jq -e '.[][\"stats64\"][\"tx\"][\"dropped\"] == $((tx_drop + 1))'"
+	log_test $? 0 "Tx drop increased"
+
+	# Use a blckhole nexthop.
+	run_cmd "ip -n sw1 nexthop replace id 30 blackhole"
+	run_cmd "bridge -n sw1 link set dev swp1 backup_nhid 30"
+	run_cmd "bridge -n sw1 -d link show dev swp1 | grep \"backup_nhid 30\""
+	log_test $? 0 "Blackhole nexthop as backup nexthop"
+
+	run_cmd "ip netns exec sw1 mausezahn br0.10 -a $smac -b $dmac -A 198.51.100.1 -B 198.51.100.2 -t ip -p 100 -q -c 1"
+	tc_check_packets sw1 "dev swp1 egress" 101 0
+	log_test $? 0 "No forwarding out of swp1"
+	tc_check_packets sw1 "dev vx0 egress" 101 3
+	log_test $? 0 "Forwarding out of vx0"
+	tc_check_packets sw2 "dev vx0 ingress" 101 1
+	log_test $? 0 "No forwarding using backup nexthop ID"
+	run_cmd "ip -n sw1 -s -j link show dev vx0 | jq -e '.[][\"stats64\"][\"tx\"][\"dropped\"] == $((tx_drop + 2))'"
+	log_test $? 0 "Tx drop increased"
+
+	# Non-group FDB nexthop.
+	run_cmd "bridge -n sw1 link set dev swp1 backup_nhid 1"
+	run_cmd "bridge -n sw1 -d link show dev swp1 | grep \"backup_nhid 1\""
+	log_test $? 0 "Non-group FDB nexthop as backup nexthop"
+
+	run_cmd "ip netns exec sw1 mausezahn br0.10 -a $smac -b $dmac -A 198.51.100.1 -B 198.51.100.2 -t ip -p 100 -q -c 1"
+	tc_check_packets sw1 "dev swp1 egress" 101 0
+	log_test $? 0 "No forwarding out of swp1"
+	tc_check_packets sw1 "dev vx0 egress" 101 4
+	log_test $? 0 "Forwarding out of vx0"
+	tc_check_packets sw2 "dev vx0 ingress" 101 1
+	log_test $? 0 "No forwarding using backup nexthop ID"
+	run_cmd "ip -n sw1 -s -j link show dev vx0 | jq -e '.[][\"stats64\"][\"tx\"][\"dropped\"] == $((tx_drop + 3))'"
+	log_test $? 0 "Tx drop increased"
+
+	# IPv6 address family nexthop.
+	run_cmd "ip -n sw1 nexthop replace id 100 via 2001:db8:100::1 fdb"
+	run_cmd "ip -n sw1 nexthop replace id 200 via 2001:db8:100::1 fdb"
+	run_cmd "ip -n sw1 nexthop replace id 300 group 100/200 fdb"
+	run_cmd "bridge -n sw1 link set dev swp1 backup_nhid 300"
+	run_cmd "bridge -n sw1 -d link show dev swp1 | grep \"backup_nhid 300\""
+	log_test $? 0 "IPv6 address family nexthop as backup nexthop"
+
+	run_cmd "ip netns exec sw1 mausezahn br0.10 -a $smac -b $dmac -A 198.51.100.1 -B 198.51.100.2 -t ip -p 100 -q -c 1"
+	tc_check_packets sw1 "dev swp1 egress" 101 0
+	log_test $? 0 "No forwarding out of swp1"
+	tc_check_packets sw1 "dev vx0 egress" 101 5
+	log_test $? 0 "Forwarding out of vx0"
+	tc_check_packets sw2 "dev vx0 ingress" 101 1
+	log_test $? 0 "No forwarding using backup nexthop ID"
+	run_cmd "ip -n sw1 -s -j link show dev vx0 | jq -e '.[][\"stats64\"][\"tx\"][\"dropped\"] == $((tx_drop + 4))'"
+	log_test $? 0 "Tx drop increased"
+}
+
+backup_nhid_ping()
+{
+	local sw1_mac
+	local sw2_mac
+
+	echo
+	echo "Backup nexthop ID - ping"
+	echo "------------------------"
+
+	# Test bidirectional traffic when traffic is redirected in both VTEPs.
+	sw1_mac=$(ip -n sw1 -j -p link show br0.10 | jq -r '.[]["address"]')
+	sw2_mac=$(ip -n sw2 -j -p link show br0.10 | jq -r '.[]["address"]')
+
+	run_cmd "bridge -n sw1 fdb replace $sw2_mac dev swp1 master static vlan 10"
+	run_cmd "bridge -n sw2 fdb replace $sw1_mac dev swp1 master static vlan 10"
+
+	run_cmd "ip -n sw1 neigh replace 192.0.2.66 lladdr $sw2_mac nud perm dev br0.10"
+	run_cmd "ip -n sw2 neigh replace 192.0.2.65 lladdr $sw1_mac nud perm dev br0.10"
+
+	run_cmd "ip -n sw1 nexthop replace id 1 via 192.0.2.34 fdb"
+	run_cmd "ip -n sw2 nexthop replace id 1 via 192.0.2.33 fdb"
+	run_cmd "ip -n sw1 nexthop replace id 10 group 1 fdb"
+	run_cmd "ip -n sw2 nexthop replace id 10 group 1 fdb"
+
+	run_cmd "bridge -n sw1 link set dev swp1 backup_port vx0"
+	run_cmd "bridge -n sw2 link set dev swp1 backup_port vx0"
+	run_cmd "bridge -n sw1 link set dev swp1 backup_nhid 10"
+	run_cmd "bridge -n sw2 link set dev swp1 backup_nhid 10"
+
+	run_cmd "ip -n sw1 link set dev swp1 carrier off"
+	run_cmd "ip -n sw2 link set dev swp1 carrier off"
+
+	run_cmd "ip netns exec sw1 ping -i 0.1 -c 10 -w $PING_TIMEOUT 192.0.2.66"
+	log_test $? 0 "Ping with backup nexthop ID"
+
+	# Reset the backup nexthop ID to 0 and check that ping fails.
+	run_cmd "bridge -n sw1 link set dev swp1 backup_nhid 0"
+	run_cmd "bridge -n sw2 link set dev swp1 backup_nhid 0"
+
+	run_cmd "ip netns exec sw1 ping -i 0.1 -c 10 -w $PING_TIMEOUT 192.0.2.66"
+	log_test $? 1 "Ping after disabling backup nexthop ID"
+}
+
+backup_nhid_add_del_loop()
+{
+	while true; do
+		ip -n sw1 nexthop del id 10
+		ip -n sw1 nexthop replace id 10 group 1/2 fdb
+	done >/dev/null 2>&1
+}
+
+backup_nhid_torture()
+{
+	local dmac=00:11:22:33:44:55
+	local smac=00:aa:bb:cc:dd:ee
+	local pid1
+	local pid2
+	local pid3
+
+	echo
+	echo "Backup nexthop ID - torture test"
+	echo "--------------------------------"
+
+	# Continuously send traffic through the backup nexthop while adding and
+	# deleting the group. The test is considered successful if nothing
+	# crashed.
+
+	run_cmd "ip -n sw1 nexthop replace id 1 via 192.0.2.34 fdb"
+	run_cmd "ip -n sw1 nexthop replace id 2 via 192.0.2.34 fdb"
+	run_cmd "ip -n sw1 nexthop replace id 10 group 1/2 fdb"
+
+	run_cmd "bridge -n sw1 fdb replace $dmac dev swp1 master static vlan 10"
+
+	run_cmd "bridge -n sw1 link set dev swp1 backup_port vx0"
+	run_cmd "bridge -n sw1 link set dev swp1 backup_nhid 10"
+	run_cmd "ip -n sw1 link set dev swp1 carrier off"
+
+	backup_nhid_add_del_loop &
+	pid1=$!
+	ip netns exec sw1 mausezahn br0.10 -a $smac -b $dmac -A 198.51.100.1 -B 198.51.100.2 -t ip -p 100 -q -c 0 &
+	pid2=$!
+
+	sleep 30
+	kill -9 $pid1 $pid2
+	wait $pid1 $pid2 2>/dev/null
+
+	log_test 0 0 "Torture test"
+}
+
+################################################################################
+# Usage
+
+usage()
+{
+	cat <<EOF
+usage: ${0##*/} OPTS
+
+        -t <test>   Test(s) to run (default: all)
+                    (options: $TESTS)
+        -p          Pause on fail
+        -P          Pause after each test before cleanup
+        -v          Verbose mode (show commands and output)
+        -w          Timeout for ping
+EOF
+}
+
+################################################################################
+# Main
+
+trap cleanup EXIT
+
+while getopts ":t:pPvhw:" opt; do
+	case $opt in
+		t) TESTS=$OPTARG;;
+		p) PAUSE_ON_FAIL=yes;;
+		P) PAUSE=yes;;
+		v) VERBOSE=$(($VERBOSE + 1));;
+		w) PING_TIMEOUT=$OPTARG;;
+		h) usage; exit 0;;
+		*) usage; exit 1;;
+	esac
+done
+
+# Make sure we don't pause twice.
+[ "${PAUSE}" = "yes" ] && PAUSE_ON_FAIL=no
+
+if [ "$(id -u)" -ne 0 ];then
+	echo "SKIP: Need root privileges"
+	exit $ksft_skip;
+fi
+
+if [ ! -x "$(command -v ip)" ]; then
+	echo "SKIP: Could not run test without ip tool"
+	exit $ksft_skip
+fi
+
+if [ ! -x "$(command -v bridge)" ]; then
+	echo "SKIP: Could not run test without bridge tool"
+	exit $ksft_skip
+fi
+
+if [ ! -x "$(command -v tc)" ]; then
+	echo "SKIP: Could not run test without tc tool"
+	exit $ksft_skip
+fi
+
+if [ ! -x "$(command -v mausezahn)" ]; then
+	echo "SKIP: Could not run test without mausezahn tool"
+	exit $ksft_skip
+fi
+
+if [ ! -x "$(command -v jq)" ]; then
+	echo "SKIP: Could not run test without jq tool"
+	exit $ksft_skip
+fi
+
+bridge link help 2>&1 | grep -q "backup_nhid"
+if [ $? -ne 0 ]; then
+   echo "SKIP: iproute2 bridge too old, missing backup nexthop ID support"
+   exit $ksft_skip
+fi
+
+# Start clean.
+cleanup
+
+for t in $TESTS
+do
+	setup; $t; cleanup;
+done
+
+if [ "$TESTS" != "none" ]; then
+	printf "\nTests passed: %3d\n" ${nsuccess}
+	printf "Tests failed: %3d\n"   ${nfail}
+fi
+
+exit $ret
-- 
2.40.1

