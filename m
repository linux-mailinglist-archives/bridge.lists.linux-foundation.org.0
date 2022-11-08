Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8431D620D9D
	for <lists.bridge@lfdr.de>; Tue,  8 Nov 2022 11:48:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED8B2410D4;
	Tue,  8 Nov 2022 10:48:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED8B2410D4
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=Xjifou80
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MmH8EsJmJvu8; Tue,  8 Nov 2022 10:48:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 0957841484;
	Tue,  8 Nov 2022 10:48:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0957841484
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C22CBC0071;
	Tue,  8 Nov 2022 10:48:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7C46EC0077
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 10:48:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3BB2040915
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 10:48:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3BB2040915
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DDL4TAEmdLA3 for <bridge@lists.linux-foundation.org>;
 Tue,  8 Nov 2022 10:48:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2727540919
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2079.outbound.protection.outlook.com [40.107.94.79])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2727540919
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 10:48:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UCENeGSZnAJ7E3Vs4lihy/gKB5MxuXnl6n6KYnKa+7R9N4bGXVNX0/2PdeW9FrmHx1PFVJ7+yvuUUQs1F9ryGoICNgN5Wb/2Sipthuw1xiwj/dqw98v1M3FQhbvGpkQUfR4R6IQ3WVyBPYtESw4vX3I1mrga7/m0yNvO+BtgVSn5k5egRYYCLHUJdeppRFdm73O+PJLIrDozH7ZzwykXb8ag9MAAYzJMzYWTsKEEnIGxpgXi2UWwtR3bw73cEHyT7MnQ8MYgCn25c/xW0U7wiXsncNPkQRv9/M/uVzOEivSSdLXtwKYn9c4hGkovHAQzAcFhecMP2b6B0AGrqDsimw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vo4ipqeVVgE+KTVh1Y4G6Ef3KHZ/jjpRQseWMvFrWFw=;
 b=TdosVOwU2+/kRbnSkSOnJ9CGCs+kP8cIYdR96E964fRQ2mJBAdlZSqGFfFlKA7DLMZVLX6co9m9vR09ZwApqO5JqQzKaBPInghGkJL/FTwLuGcLCRQHM+aljLbppGnO4BH2xn4idujVKHZaegDYW7lpU9kgTi9rrwoOXqI/eUm/jNiaESiW7n3kvK61EFqC5ISxn6/FD0Ig1vxcFyNvyuRqdEdSnhMHLLoAANv32+bmvgg6qSmoYWwTodDoF0o13bx4JJQ2PpR4EnA6cJsbqrluncPe0E4gDKm1XA0UZQIBx0EO+oCo2dp3KY/kqbhtqQK2zSDrErPFHb/KTOvb3ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vo4ipqeVVgE+KTVh1Y4G6Ef3KHZ/jjpRQseWMvFrWFw=;
 b=Xjifou809fQvq9j7s1+ePenStrYgAmfamVJDLeGAxgfB/tSrbR0Rgqfx0831QaF5VxssGLK86EoXoN1rEt+Wa1D8rsJ5kH1hxnDWGMzb7VTbch7fiGojtRW548bHqURLHGXqXCfRQO4jLr2lREOim6Bs3iqDz59wNdbfyhq5OuK0q163KI5Dmtx9gxIvwQG5fGhuxa2dL0cZpmQWiuusds/uZkEUd0L28ZU9+ReMvmArjgCUHZ6TPrbbvEgfWFtD2VFmEa4EgPjGl0973M7No5nEY7R06wc5/1NqxFEsHPeWrQ8PmzTowMVh64/a76jcL0wQyPdBE5wxx1tEeBdEqA==
Received: from DS7PR05CA0039.namprd05.prod.outlook.com (2603:10b6:8:2f::16) by
 DM4PR12MB5134.namprd12.prod.outlook.com (2603:10b6:5:391::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5791.27; Tue, 8 Nov 2022 10:48:16 +0000
Received: from DM6NAM11FT057.eop-nam11.prod.protection.outlook.com
 (2603:10b6:8:2f:cafe::1f) by DS7PR05CA0039.outlook.office365.com
 (2603:10b6:8:2f::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.8 via Frontend
 Transport; Tue, 8 Nov 2022 10:48:16 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 DM6NAM11FT057.mail.protection.outlook.com (10.13.172.252) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5791.20 via Frontend Transport; Tue, 8 Nov 2022 10:48:16 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Tue, 8 Nov 2022
 02:48:11 -0800
Received: from yaviefel.vdiclient.nvidia.com (10.126.230.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.29; Tue, 8 Nov 2022 02:48:07 -0800
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Ivan Vecera <ivecera@redhat.com>,
 <netdev@vger.kernel.org>
Date: Tue, 8 Nov 2022 11:47:15 +0100
Message-ID: <70bb4e957bf5383781335679c5f9a26181e875c9.1667902754.git.petrm@nvidia.com>
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
X-MS-TrafficTypeDiagnostic: DM6NAM11FT057:EE_|DM4PR12MB5134:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e9b80ff-511c-44fe-bb83-08dac176be3e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zuDf61lhaXdCUHAmYC3dEZKeEsvdVazv1E+oB34wMeoa3tuTaX2kq8FQkj+x5qVG6c8FHkEYu+nez880TSIpJOxt6kVswHiTPKMXti/cfq1r8tAjAxWwIk2ZlPE5jQhPNj1h2/+jtJ/IKk0It5nIfz3EMeYQtQzkeeq4AGvPHypwDsmy/N8bGxagKIx+ov4RQhcnxgB6G3TCsK2ax3Cm/rvfLTl0W5QAp8tWTn4XvqU3qoDRD1Zvim+rLeH418/96OUr3uRBkHs0qeRpVryhcNZK6tmt0qWxDzU8Qp9I4vQB7NlMLYbsRoNZYneovj7LdUG0IX4s0I/AWRn50OKHepxs7rs5GRG4OJYm255MZ6az8bZ4AGWnCYJ0RDtDeYR4TsFiUBA7+eNxye0jI+MfkegKL7SDQ5cW5iI9L2CsrKb/RMcHotYkWku8/vVJ9rmvmJWOidTm00oWH9qUlq2OxixOs+rJYH4SMtimMeD51CbkOjrQ6k3QZ1X/FaUUb1YTacWGHwy5R2ugDJTFHC9ZNNe4w5o/5c6TXOcV+yy7ydQvq95qnB9/c5Fps2AUjOQvUJ+Rw8rUlIEH/vpXEBUd/tbfc+EFLkCIqQyCWJnGutT55TfnToFauER47+90YBewMEgGrDq1nDSNuYKRQgdgMaUVpn8DcCF0abGPWWZrhP4q/n9OGrqK2nqktp9+oeyEQqVcB7CL/5yBcMsAwDdihBqEUufgaFnPH1VdyYi4J4ijJuswrv+xi8lQYc9V+j+5J8198GHBWwYoOxpMg7AE5w==
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230022)(4636009)(39860400002)(346002)(376002)(136003)(396003)(451199015)(40470700004)(36840700001)(46966006)(82310400005)(83380400001)(36860700001)(6666004)(2906002)(86362001)(7636003)(356005)(82740400003)(336012)(40480700001)(478600001)(26005)(8936002)(5660300002)(70586007)(70206006)(4326008)(8676002)(54906003)(110136005)(316002)(41300700001)(2616005)(47076005)(426003)(40460700003)(186003)(16526019)(107886003)(15650500001)(7696005)(36756003);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2022 10:48:16.6868 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e9b80ff-511c-44fe-bb83-08dac176be3e
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT057.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5134
Cc: Petr Machata <petrm@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Roopa Prabhu <roopa@nvidia.com>, mlxsw@nvidia.com,
 Jiri Pirko <jiri@nvidia.com>, "Hans J . Schultz" <netdev@kapio-technology.com>
Subject: [Bridge] [PATCH net-next 09/15] mlxsw: spectrum_switchdev: Add
	support for locked FDB notifications
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

In Spectrum, learning happens in parallel to the security checks.
Therefore, regardless of the result of the security checks, a learning
notification will be generated by the device and polled later on by the
driver.

Currently, the driver reacts to learning notifications by programming
corresponding FDB entries to the device. When a port is locked (i.e.,
has security checks enabled), this can no longer happen, as otherwise
any host will blindly gain authorization.

Instead, notify the learned entry as a locked entry to the bridge driver
that will in turn notify it to user space, in case MAB is enabled. User
space can then decide to authorize the host by clearing the "locked"
flag, which will cause the entry to be programmed to the device.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
Reviewed-by: Petr Machata <petrm@nvidia.com>
Signed-off-by: Petr Machata <petrm@nvidia.com>
---
 .../net/ethernet/mellanox/mlxsw/spectrum_switchdev.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c b/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
index 0fbefa43f9b1..f336be77019f 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
@@ -2942,6 +2942,12 @@ static void mlxsw_sp_fdb_notify_mac_process(struct mlxsw_sp *mlxsw_sp,
 	vid = bridge_device->vlan_enabled ? mlxsw_sp_port_vlan->vid : 0;
 	evid = mlxsw_sp_port_vlan->vid;
 
+	if (adding && mlxsw_sp_port->security) {
+		mlxsw_sp_fdb_call_notifiers(SWITCHDEV_FDB_ADD_TO_BRIDGE, mac,
+					    vid, bridge_port->dev, false, true);
+		return;
+	}
+
 do_fdb_op:
 	err = mlxsw_sp_port_fdb_uc_op(mlxsw_sp, local_port, mac, fid, evid,
 				      adding, true);
@@ -3006,6 +3012,12 @@ static void mlxsw_sp_fdb_notify_mac_lag_process(struct mlxsw_sp *mlxsw_sp,
 	vid = bridge_device->vlan_enabled ? mlxsw_sp_port_vlan->vid : 0;
 	lag_vid = mlxsw_sp_port_vlan->vid;
 
+	if (adding && mlxsw_sp_port->security) {
+		mlxsw_sp_fdb_call_notifiers(SWITCHDEV_FDB_ADD_TO_BRIDGE, mac,
+					    vid, bridge_port->dev, false, true);
+		return;
+	}
+
 do_fdb_op:
 	err = mlxsw_sp_port_fdb_uc_lag_op(mlxsw_sp, lag_id, mac, fid, lag_vid,
 					  adding, true);
-- 
2.35.3

