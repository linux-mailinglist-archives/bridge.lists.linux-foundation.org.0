Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 607837C03CD
	for <lists.bridge@lfdr.de>; Tue, 10 Oct 2023 20:53:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 431D961460;
	Tue, 10 Oct 2023 18:53:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 431D961460
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=Ig/2VZ+H
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vK-WCCUks_hc; Tue, 10 Oct 2023 18:53:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 598CF61464;
	Tue, 10 Oct 2023 18:53:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 598CF61464
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 21518C0DD3;
	Tue, 10 Oct 2023 18:53:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1EE56C0071
 for <bridge@lists.linux-foundation.org>; Mon,  9 Oct 2023 10:07:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3A4C582010
 for <bridge@lists.linux-foundation.org>; Mon,  9 Oct 2023 10:07:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A4C582010
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=Ig/2VZ+H
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1IphvcOJEaSC for <bridge@lists.linux-foundation.org>;
 Mon,  9 Oct 2023 10:07:46 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2060c.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eaa::60c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 51D698211B
 for <bridge@lists.linux-foundation.org>; Mon,  9 Oct 2023 10:07:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51D698211B
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=avwYS3FyKG4AqxEEgDGckuCEfdhApXKLvOzaQJX4ZBYvw928r+GCxJJ0PTahpvHUZqXesyYSnEkH73MGpoj4NLDAtRCkgCaay3vnBuMPGvPkV86NwUqrdQwpJRIugojpokB4qGgWPbu2BooLdMAt+JsKFOmpsgcdbPyq0vNWbd1psy+3hf+QkJMuaTR0IO47YXllHpgYnYicQXAgbyxuZ00yAXya632QjRQeQ6mN/Q2PSR3RlUxxgwiIBFiMTax5UrrFmXCZgA4Pz1SBFLI2btZVuzWGlDkBH1kXA8BKUqLDI+0cC2baQ7JuYwrvKH1NUNPn72nyBG3sMf5A3mj7Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kPQrcvAu8rLpQapwQqxzBzEo7hcE9ye2l3LUdfKldvk=;
 b=iAgNDTIIeGZce8pYppOLFq3/5sDfCgHHsO/EV0tZR1kmQT4vvD8nd35MirC6k41gmIvmaI8adPzKyrp5ItFwjefppiamtA5s+iCkY7MAI4cm+Y2mIp5bld7zATtRl7FodTxisci4I/2apON2gURhC7FD22L96SdxAEjV8YWxu5Qb9uDG4ejRJ0pDirWT7P1dBeF5P0flAtZWYrrmnqNWePF3lmYIL3ydvr+gzfvh7ntR406F88BGZPSgeV6Lw4/fBCA6pr3Uq+FjZTQ3hjHIL57mebAIXRPc7VN25a1dZGgQXise/1ZN9MJjsEApG4YWrB9BtDFXywx6rivWfCOPug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kPQrcvAu8rLpQapwQqxzBzEo7hcE9ye2l3LUdfKldvk=;
 b=Ig/2VZ+H0DcAJ8g+IOo60uoTh2ObP/1IQWRrmTcait5QEGl0CzeGgEVJifezrp1jOXl5lw25iSQ2cclZkSllb7I5p3CXM8FGgEJAMeXtEANH9bSPHQpPdphiJ/JwUG61tBmFK6iW/yC0DFvy/qGA1aCoS68cjjkWmG2hZJ8/g2r94Wt4ma7+aB1CtIlHjE5auCvlNYoS5AG0ydfMuf/AQRuxE7ZCW+mUAOE+/wFteCKsJ6og9mSyBmmqu1h0LRU9tI+qa9Ur4H1IqIh3EGXnGGtPDAXFWiqq+Heh6f50LM6/svBUwGcW9LumjuNvgmAAL3hRmRWQySC97hDGTwCoBw==
Received: from MWH0EPF00056D04.namprd21.prod.outlook.com
 (2603:10b6:30f:fff2:0:1:0:c) by PH8PR12MB6962.namprd12.prod.outlook.com
 (2603:10b6:510:1bd::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.41; Mon, 9 Oct
 2023 10:07:43 +0000
Received: from MWH0EPF000989EB.namprd02.prod.outlook.com
 (2a01:111:f403:f805::) by MWH0EPF00056D04.outlook.office365.com
 (2603:1036:d20::b) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.12 via Frontend
 Transport; Mon, 9 Oct 2023 10:07:43 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 MWH0EPF000989EB.mail.protection.outlook.com (10.167.241.138) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.14 via Frontend Transport; Mon, 9 Oct 2023 10:07:43 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Mon, 9 Oct 2023
 03:07:33 -0700
Received: from dev-r-vrt-155.mtr.labs.mlnx (10.126.230.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.41; Mon, 9 Oct 2023 03:07:30 -0700
To: <netdev@vger.kernel.org>
Date: Mon, 9 Oct 2023 13:06:18 +0300
Message-ID: <20231009100618.2911374-12-amcohen@nvidia.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231009100618.2911374-1-amcohen@nvidia.com>
References: <20231009100618.2911374-1-amcohen@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.230.35]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWH0EPF000989EB:EE_|PH8PR12MB6962:EE_
X-MS-Office365-Filtering-Correlation-Id: b8f3c1ed-635b-4f68-c4b8-08dbc8af9443
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ksfUozeWvD+nBnZUe10Fxjy10Z7l+or9g8NBEAFdQBxiwd9v0tSmPROm9wywy7xdonkdTsxcssH/Td3pxSorNu+YNPlSWJldxmLnhGu868AnMqaAGfxKt+Kmy5nPEX1ND73N+7uzcT94l0Nxd6zNC8M50+2LpdllG5kH6Em+oPvWmwsTzUzYfzDhIH84S3mkWO6G+wTD17ZTkfFezt/izNRZhcSwFBoJi8C8InHgSIo7o7o+aiGwa1pvgx5Vl2TGWyCuD+MLOBsggCJbE1LS6CnaljwCw0raP9D8ac/yj4I5y/Wf3AmaPEY3CQUiOfm6C73lwJhJDKHPcuDqNNpn9CDqHtr5y8c9S/34CXygjbedWVfAHeO+sp7U58jg8i5gzVZWX9MVzKQ2YNEdgg98IoGPNa8rLuJEdj+EsAt7W8dj4XZlVWMkzT6okJyYj/hY9Fuu0pYgzWLiOjppzp9mUM0cwG3lMjQiM9U7FdnF70ypFjdi/vdxyCJy1obAOP+7KTY2g0NleQv53Vp6tj3+bL4mQVnrxzy66YuinMwi1qAfHAFNUPVNsUt5cHRH7RcwJqqghZyCJUM2GAhQ2GPzlJ3FpiVaZk4DalpfkxzsVFpJkSf5D0kB8Uo6/HnRJsdLJtTd+ixPkXSY7Nhp0MzbLu/lq3kO7HBhGKy5AwgPzbffdOINXaKxZdOqrFL4tg4rDYfZsnKrjMWstBuGpRreso14KOsxgE4Nj9SXSaFaJf8=
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230031)(4636009)(346002)(396003)(376002)(136003)(39860400002)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(82310400011)(40470700004)(46966006)(36840700001)(7636003)(356005)(86362001)(36756003)(40480700001)(2906002)(82740400003)(478600001)(41300700001)(8936002)(5660300002)(4326008)(8676002)(6666004)(1076003)(83380400001)(426003)(336012)(2616005)(107886003)(40460700003)(316002)(36860700001)(70586007)(70206006)(54906003)(6916009)(26005)(47076005)(16526019);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2023 10:07:43.4420 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b8f3c1ed-635b-4f68-c4b8-08dbc8af9443
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: MWH0EPF000989EB.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB6962
X-Mailman-Approved-At: Tue, 10 Oct 2023 18:53:02 +0000
Cc: razor@blackwall.org, Amit
 Cohen <amcohen@nvidia.com>, mlxsw@nvidia.com, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, idosch@nvidia.com,
 linux-kselftest@vger.kernel.org, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, shuah@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next 11/11] selftests: fdb_flush: Add test
	cases for FDB flush with bridge device
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
From: Amit Cohen via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Amit Cohen <amcohen@nvidia.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Extend the test to check flushing with bridge device, test flush by device
and by VID.

Add test case for flushing with "self" and "master" and attributes that are
supported only in one driver, this is unrecommended configuration, check it
to verify that user gets an error.

Signed-off-by: Amit Cohen <amcohen@nvidia.com>
---
 tools/testing/selftests/net/fdb_flush.sh | 96 ++++++++++++++++++++++++
 1 file changed, 96 insertions(+)

diff --git a/tools/testing/selftests/net/fdb_flush.sh b/tools/testing/selftests/net/fdb_flush.sh
index 3050b031f46d..90e7a29e0476 100755
--- a/tools/testing/selftests/net/fdb_flush.sh
+++ b/tools/testing/selftests/net/fdb_flush.sh
@@ -32,6 +32,9 @@ TESTS="
 	$FLUSH_BY_FLAG_TESTS
 	vxlan_test_flush_by_several_args
 	vxlan_test_flush_by_remote_attributes
+	bridge_test_flush_by_dev
+	bridge_test_flush_by_vlan
+	bridge_vxlan_test_flush
 "
 
 : ${VERBOSE:=0}
@@ -647,6 +650,93 @@ vxlan_test_flush_by_remote_attributes()
 	log_test $? 0 "Check how many entries were flushed"
 }
 
+bridge_test_flush_by_dev()
+{
+	local dst_ip=192.0.2.1
+	local br0_n_ent_t0=$($BRIDGE fdb show dev br0 | wc -l)
+	local br1_n_ent_t0=$($BRIDGE fdb show dev br1 | wc -l)
+
+	fdb_add_mac_pool_1 br0 dst $dst_ip
+	fdb_add_mac_pool_2 br1 dst $dst_ip
+
+	# Each 'fdb add' command adds one extra entry in the bridge with the
+	# default vlan.
+	local exp_br0_n_ent=$(($br0_n_ent_t0 + 2 * $mac_pool_1_len))
+	local exp_br1_n_ent=$(($br1_n_ent_t0 + 2 * $mac_pool_2_len))
+
+	fdb_check_n_entries_by_dev_filter br0 $exp_br0_n_ent
+	fdb_check_n_entries_by_dev_filter br1 $exp_br1_n_ent
+
+	run_cmd "$BRIDGE fdb flush dev br0"
+	log_test $? 0 "Flush FDB by dev br0"
+
+	# The default entry should not be flushed
+	fdb_check_n_entries_by_dev_filter br0 1
+	log_test $? 0 "Flush FDB by dev br0 - test br0 entries"
+
+	fdb_check_n_entries_by_dev_filter br1 $exp_br1_n_ent
+	log_test $? 0 "Flush FDB by dev br0 - test br1 entries"
+}
+
+bridge_test_flush_by_vlan()
+{
+	local vlan_1=10
+	local vlan_2=20
+	local vlan_1_ent_t0
+	local vlan_2_ent_t0
+
+	$BRIDGE vlan add vid $vlan_1 dev br0 self
+	$BRIDGE vlan add vid $vlan_2 dev br0 self
+
+	vlan_1_ent_t0=$($BRIDGE fdb show dev br0 | grep "vlan $vlan_1" | wc -l)
+	vlan_2_ent_t0=$($BRIDGE fdb show dev br0 | grep "vlan $vlan_2" | wc -l)
+
+	fdb_add_mac_pool_1 br0 vlan $vlan_1
+	fdb_add_mac_pool_2 br0 vlan $vlan_2
+
+	local exp_vlan_1_ent=$(($vlan_1_ent_t0 + $mac_pool_1_len))
+	local exp_vlan_2_ent=$(($vlan_2_ent_t0 + $mac_pool_2_len))
+
+	fdb_check_n_entries_by_dev_filter br0 $exp_vlan_1_ent vlan $vlan_1
+	fdb_check_n_entries_by_dev_filter br0 $exp_vlan_2_ent vlan $vlan_2
+
+	run_cmd "$BRIDGE fdb flush dev br0 vlan $vlan_1"
+	log_test $? 0 "Flush FDB by dev br0 and vlan $vlan_1"
+
+	fdb_check_n_entries_by_dev_filter br0 0 vlan $vlan_1
+	log_test $? 0 "Test entries with vlan $vlan_1"
+
+	fdb_check_n_entries_by_dev_filter br0 $exp_vlan_2_ent vlan $vlan_2
+	log_test $? 0 "Test entries with vlan $vlan_2"
+}
+
+bridge_vxlan_test_flush()
+{
+	local vlan_1=10
+	local dst_ip=192.0.2.1
+
+	$IP link set dev vx10 master br0
+	$BRIDGE vlan add vid $vlan_1 dev br0 self
+	$BRIDGE vlan add vid $vlan_1 dev vx10
+
+	fdb_add_mac_pool_1 vx10 vni 3000 dst $dst_ip self master
+
+	fdb_check_n_entries_by_dev_filter vx10 $mac_pool_1_len vlan $vlan_1
+	fdb_check_n_entries_by_dev_filter vx10 $mac_pool_1_len vni 3000
+
+	# Such command should fail in VXLAN driver as vlan is not supported,
+	# but the command should flush the entries in the bridge
+	run_cmd "$BRIDGE fdb flush dev vx10 vlan $vlan_1 master self"
+	log_test $? 255 \
+		"Flush FDB by dev vx10, vlan $vlan_1, master and self"
+
+	fdb_check_n_entries_by_dev_filter vx10 0 vlan $vlan_1
+	log_test $? 0 "Test entries with vlan $vlan_1"
+
+	fdb_check_n_entries_by_dev_filter vx10 $mac_pool_1_len dst $dst_ip
+	log_test $? 0 "Test entries with dst $dst_ip"
+}
+
 setup()
 {
 	IP="ip -netns ns1"
@@ -656,10 +746,16 @@ setup()
 
 	$IP link add name vx10 type vxlan id 1000 dstport "$VXPORT"
 	$IP link add name vx20 type vxlan id 2000 dstport "$VXPORT"
+
+	$IP link add br0 type bridge vlan_filtering 1
+	$IP link add br1 type bridge vlan_filtering 1
 }
 
 cleanup()
 {
+	$IP link del dev br1
+	$IP link del dev br0
+
 	$IP link del dev vx20
 	$IP link del dev vx10
 
-- 
2.40.1

