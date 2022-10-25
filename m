Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 801C160C945
	for <lists.bridge@lfdr.de>; Tue, 25 Oct 2022 12:02:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E4D160B79;
	Tue, 25 Oct 2022 10:02:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E4D160B79
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=FDmVcMgX
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JmF-37Cv5HQ0; Tue, 25 Oct 2022 10:02:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 7D57960B8C;
	Tue, 25 Oct 2022 10:02:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D57960B8C
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1FA58C007C;
	Tue, 25 Oct 2022 10:02:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9F163C002D
 for <bridge@lists.linux-foundation.org>; Tue, 25 Oct 2022 10:02:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 755534089A
 for <bridge@lists.linux-foundation.org>; Tue, 25 Oct 2022 10:02:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 755534089A
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=FDmVcMgX
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M17oJaQMxYtU for <bridge@lists.linux-foundation.org>;
 Tue, 25 Oct 2022 10:02:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10FFA4088E
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2067.outbound.protection.outlook.com [40.107.244.67])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 10FFA4088E
 for <bridge@lists.linux-foundation.org>; Tue, 25 Oct 2022 10:02:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=imKH1o/gQe2ilj+nANsxjpMYhlF+CEI6i4aJXp28Vl5ewWSqgma1KqOHbA79Ehlm8TroMQweCwEIREJzeh3H3300RKI5o3VemyafNt6Q+TKky2UWVsdW+/XDlQNAXp8wa4Y+VSS3XqB2odsNqCprs6L/bI+sdBeKDzDUVRn6/tBaNLfpphwgXAS0TSnFDL/0NzE7D4uHL0Ea/GJouUtXbbkCZxhOkoqkrrW2RDVvVQZ6TSF2YkBC4JLxKMEMZerpX6aZWW91btdYWLG0V2HjrryKlhsy2Qa+aovRCxMj9XUEVrel49TmoUxydIFjQjMIQ2A+p57rv6E3Xfm0UFt4Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zop3vzj9KLLSzeQ7JRIr/JoeQPSvvsIPznKs87oUeL4=;
 b=jGnjpIsTQgYyBQK3aKIFTqU3v9/pHmASKrwx64yc0p+dYlbz7fTtcRWN9lDIcNPc3IQt2hnTvJvq3ee7yciZQbOGvn8VTyNG3J6chCIdMTxYVFbqa0VJeyJvSJ0XUg1vZsAct4j1+0Sq70lj6WYVqk7nkY045kEMQS61P5/tVSQiXjix1R6hKpgLAo4tY+h2XhaILCcO9zmNwQE1ZK8F0gzF4OfzKlszeYV/sv2U+RJcLmgfDgqEoU4bfE6cUkjLeiwmzZUUK5LTZIh8BS43jqJIcTJD+uuh7HIVMUL7E1ksGqzv7ttOJJtwJMJR7sOJok/Hp4ks1Go/VOrOA9IMiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zop3vzj9KLLSzeQ7JRIr/JoeQPSvvsIPznKs87oUeL4=;
 b=FDmVcMgXHKYeIJ/89yLPNELz29ZkycHUXxxFmJkxWyu5B5gcqw+TUcpxokBQ54IK3Iz9twEbYwiQVm4mEu4ZqXrqUYLZCm76uv74EfmLRdfa1pF75b3s+6wkyS7djqdE4LKrRkNqFGSBKr46TRAtAGfqPgNh+Ynme7wI10QJCfv60892k7nWQptHDSmqn4RxBJZHdSnz9gD0c23jrN0+JoE9BobhRKF0ZM/JhDkSA/lBUIZbnEVMpT4WDS1M7JIozQ9jP2R7kjvdnN70H0hTVvWDuXrAgBNDAzl8Y0Deq+Ozldx/rlQ0+RqGu+jjMpHtyShQOFJwKnasHfyhyOnFwg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by MN2PR12MB4270.namprd12.prod.outlook.com (2603:10b6:208:1d9::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.28; Tue, 25 Oct
 2022 10:02:12 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e%7]) with mapi id 15.20.5746.028; Tue, 25 Oct 2022
 10:02:12 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Tue, 25 Oct 2022 13:00:20 +0300
Message-Id: <20221025100024.1287157-13-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221025100024.1287157-1-idosch@nvidia.com>
References: <20221025100024.1287157-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR04CA0045.eurprd04.prod.outlook.com
 (2603:10a6:802:2::16) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|MN2PR12MB4270:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f5836b0-34ac-4e37-c3d9-08dab66ffcbb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: A/zSbSjofXZ1pqH3xl9wzh1WZg/AFimv4pekxKZw9WlsbTBo49qRHgcjNXYat598S8e1/TmWMbdFxG2V7fW4n+AzT0nLfWJMeM0lUvSFh3jzAU1O4HUxN4Cbs1nNvVUwUhLo2Q3bjbjR/EHeDAIHFNme5GKu1Pn43ULF1A226XUwqwz3ciX+bKDzhIitz5eYp1R0SlUorjZfobwd6SfxzBK/jSf2YCK37S85UnNq5/oYFAP9mUKEgmZeIoD+8pLxZDbbjZoyP0V52INKzoJQdw2ve+ibcVPmSEr/Es3L7DWjsWI/UWFsy0UlScdktDFC8KI3BFvv6tV0bNIMVWZZY0Iw7KE16F+7/kaL3jxoecPCKpaPVRYZMFHvB15UxPzr7CWLF7ph2o5F5YFZr8EGXifakN0o5RkOLa5jY+Ngnoh4JfJRLbog2ERlj0aaDWFHzkgibwEqf3dPWCQDrtJaomsjR/RzvHDRIvFr3e5h8qiF1w/oHvchOoGu3IcoH4YebYfZVzZfeq4xjtFcirMCT9fxpPMJoyZKfyjQ1zMzGw5UEAc+apUa65ygTBtBGL4K541tkaxgAyKRjvcX6bVM4NxvjcT4IfkFE5J1rUKgJH4GkrvuSHKyk4jlJbPhFAAgSPEAy9yK5VFb5BhKE7XyLu+tqRuXAL8PnKwM58pRhf58uBmPa2c48DyWlgEO9T4UFDvooFhYGvnG+dZ05qn77g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(346002)(396003)(366004)(136003)(39860400002)(376002)(451199015)(36756003)(5660300002)(66476007)(66556008)(66946007)(7416002)(38100700002)(8936002)(83380400001)(86362001)(316002)(186003)(2616005)(1076003)(26005)(6512007)(6486002)(478600001)(2906002)(8676002)(41300700001)(4326008)(6506007)(6666004)(107886003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Vku8AMZZ8jT213Wq5YcDM2DIt56YKvbUxFXDWdxjSHoMNtmbMQXfr5iIwygT?=
 =?us-ascii?Q?czeCUUUpFymdGYwwUksEU9GTIZql7sgMUk2kVRhNYIYGzziIdiDtd5TAOip+?=
 =?us-ascii?Q?teYRyA474QuEcLv7EGMrp9CLuxt8caD32UJ8dp6XLsPcJ7DSUCSH0FItihlV?=
 =?us-ascii?Q?o11zqDLtW1M0xk+bfv8jnwya5edasKEa6IcJpilOvT0eOQ+mCwyJPYVty4s9?=
 =?us-ascii?Q?rj+c5MP6GtH2+1mK613r9NbF3Cu+lvQLB3llBuX+l/i5PmdxDOwXC6lDn51t?=
 =?us-ascii?Q?5ygJzXYp+H8F4VgxlgPgPlcnt74ZLwThPnxq+DUH18kIvGuyVrbRi5x7hZs5?=
 =?us-ascii?Q?WaoP+UVGgwsJxmrVrQiimxKLGwJZV7y80c+D5hWocos/NdjyQzRtVjRk7W1O?=
 =?us-ascii?Q?8Cm5RAoB3glLVJcBUC9pRX3zqpGUULoDMBduOU5Rttuj4D//HHSMqHQS4A0F?=
 =?us-ascii?Q?cYr71CyhOwhxAML16VJp5dG2ZizVfu3mT+4oA3rLZKaLSckl7AIRwYUutJ68?=
 =?us-ascii?Q?tPQeGiqIaxhWxbwtq8Cbgag73qDLAAp8O9YamBGIGgXg8sw/u3oIy0wKCPpM?=
 =?us-ascii?Q?7eyxg+ur26wcFHyOvXgAMHV/iYc0x496wB7430P9QItbncle2MFo0ZlrTyxJ?=
 =?us-ascii?Q?4DRC31gqFFsVhx1p/uXmXv0rgZXl4xIkClNCytfvdF7uDcN/FgzuXPoCRLj3?=
 =?us-ascii?Q?r8dZsunfdOz8ehfgeK5JIfgzv+eBsEIHAgKYighR1GLaiaH6wXpCJ8EIR1Px?=
 =?us-ascii?Q?wQzdmg/2yNyBBIYetW9TK0VlAKZ4m4bdzIWkT27zIOCsMyIT2bl9RRKc/NDV?=
 =?us-ascii?Q?2qmT0TEsdGr3e49mpEI2BY8lypCg9gqt0X8LIdxVj9bHuTi3dd9ZtQb7FT43?=
 =?us-ascii?Q?CBr4XHvA1iBQnP3QKhHk8mMMK7A47VSIsI4osQqEsZL2wJpjqElHTOk8rA0t?=
 =?us-ascii?Q?pkNX64sj8cEKH8IUCzgg+vTiZYP9CwdpDhBtlbsSrG8pD1xYOzHeMoNlviq6?=
 =?us-ascii?Q?ke15gIlr1Susp8ZXMGPWRvt5F/dgnRqxBjEo2OmEIjL+BA+KSZvM+eHGG9kv?=
 =?us-ascii?Q?FQAi4n0kflXFNvlFk0MTVMorCWbBs0fkEP02ULqzODL8BC4twJrhz6TAwejH?=
 =?us-ascii?Q?kg4UQjOEmBmRzY35ApVYCkaRXLDijlrtXELUk+Bb18iiDoN6yyzu9CF3HL5u?=
 =?us-ascii?Q?/KPP6Gi6+5FEDKZzClfpvMdfstiFwd8siQcijioHKYy+QXxDN7Dc1d9qijU0?=
 =?us-ascii?Q?jbigikedvbVq12jSzWy1NsDCCY3KV2cr6QYyU1fsE77iCKMLjH2vWKJuqsoZ?=
 =?us-ascii?Q?TdIb4JbwJvsth/E6sBTqJsAMVdgPo+MOxGSjnzSFDL5b5sdTSuCYh1nVDCrW?=
 =?us-ascii?Q?zrUJ1gCCrXml3IaF1gMWJN89nFTNUcLCgT5veZdgZpvYOSGMJdkUu/ZF48X7?=
 =?us-ascii?Q?5MDMszsFihv/EBFspACZ9fOI2/Bu+83hsrgh+MQcW6YMqdM0k/zFWOX9kM9/?=
 =?us-ascii?Q?nFCn5PMA/BZNGKrP9lCTXwBOTbw+elUEM+dM/v69SWptlaZ0Hd6SgGplCYpW?=
 =?us-ascii?Q?2qMrCpJA1aqNM8NH9Zj0FJZdqBmhCpBmOsrYFKgL?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f5836b0-34ac-4e37-c3d9-08dab66ffcbb
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2022 10:02:12.6010 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3eIJGgBEirEcE0Qp1fnjaJTxjAIB45KkU6AxeBPO5su8r0sL+fbZ68e9bRyxjIa0PwKK+NpLsIJhbGxasVbu7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4270
Cc: petrm@nvidia.com, ivecera@redhat.com, netdev@kapio-technology.com,
 razor@blackwall.org, roopa@nvidia.com, Ido Schimmel <idosch@nvidia.com>,
 vladimir.oltean@nxp.com, edumazet@google.com, mlxsw@nvidia.com,
 jiri@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: [Bridge] [RFC PATCH net-next 12/16] mlxsw: spectrum_switchdev: Add
	locked bridge port support
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

Add locked bridge port support by reacting to changes in the
'BR_PORT_LOCKED' flag. When set, enable security checks on the local
port via the previously added SPFSR register.

When security checks are enabled, an incoming packet will trigger an FDB
lookup with the packet's source MAC and the FID it was classified to. If
an FDB entry was not found or was found to be pointing to a different
port, the packet will be dropped. Such packets increment the
"discard_ingress_general" ethtool counter. For added visibility, user
space can trap such packets to the CPU by enabling the "locked_port"
trap. Example:

 # devlink trap set pci/0000:06:00.0 trap locked_port action trap

Unlike other configurations done via bridge port flags (e.g., learning,
flooding), security checks are enabled in the device on a per-port basis
and not on a per-{port, VLAN} basis. As such, scenarios where user space
can configure different locking settings for different VLANs configured
on a port need to be vetoed. To that end, veto the following scenarios:

1. Locking is set on a bridge port that is a VLAN upper

2. Locking is set on a bridge port that has VLAN uppers

3. VLAN upper is configured on a locked bridge port

Examples:

 # bridge link set dev swp1.10 locked on
 Error: mlxsw_spectrum: Locked flag cannot be set on a VLAN upper.

 # ip link add link swp1 name swp1.10 type vlan id 10
 # bridge link set dev swp1 locked on
 Error: mlxsw_spectrum: Locked flag cannot be set on a bridge port that has VLAN uppers.

 # bridge link set dev swp1 locked on
 # ip link add link swp1 name swp1.10 type vlan id 10
 Error: mlxsw_spectrum: VLAN uppers are not supported on a locked port.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 .../net/ethernet/mellanox/mlxsw/spectrum.c    |  4 ++++
 .../mellanox/mlxsw/spectrum_switchdev.c       | 23 ++++++++++++++++++-
 2 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum.c b/drivers/net/ethernet/mellanox/mlxsw/spectrum.c
index 10f438bc83dd..7ca96a4937b9 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum.c
@@ -4772,6 +4772,10 @@ static int mlxsw_sp_netdevice_port_upper_event(struct net_device *lower_dev,
 			NL_SET_ERR_MSG_MOD(extack, "VLAN uppers are only supported with 802.1q VLAN protocol");
 			return -EOPNOTSUPP;
 		}
+		if (is_vlan_dev(upper_dev) && mlxsw_sp_port->security) {
+			NL_SET_ERR_MSG_MOD(extack, "VLAN uppers are not supported on a locked port");
+			return -EOPNOTSUPP;
+		}
 		break;
 	case NETDEV_CHANGEUPPER:
 		upper_dev = info->upper_dev;
diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c b/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
index db149af7c888..70b4f8c4b038 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
@@ -782,14 +782,26 @@ mlxsw_sp_bridge_port_learning_set(struct mlxsw_sp_port *mlxsw_sp_port,
 
 static int
 mlxsw_sp_port_attr_br_pre_flags_set(struct mlxsw_sp_port *mlxsw_sp_port,
+				    const struct net_device *orig_dev,
 				    struct switchdev_brport_flags flags,
 				    struct netlink_ext_ack *extack)
 {
-	if (flags.mask & ~(BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD)) {
+	if (flags.mask & ~(BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD |
+			   BR_PORT_LOCKED)) {
 		NL_SET_ERR_MSG_MOD(extack, "Unsupported bridge port flag");
 		return -EINVAL;
 	}
 
+	if ((flags.mask & BR_PORT_LOCKED) && is_vlan_dev(orig_dev)) {
+		NL_SET_ERR_MSG_MOD(extack, "Locked flag cannot be set on a VLAN upper");
+		return -EINVAL;
+	}
+
+	if ((flags.mask & BR_PORT_LOCKED) && vlan_uses_dev(orig_dev)) {
+		NL_SET_ERR_MSG_MOD(extack, "Locked flag cannot be set on a bridge port that has VLAN uppers");
+		return -EINVAL;
+	}
+
 	return 0;
 }
 
@@ -822,6 +834,13 @@ static int mlxsw_sp_port_attr_br_flags_set(struct mlxsw_sp_port *mlxsw_sp_port,
 			return err;
 	}
 
+	if (flags.mask & BR_PORT_LOCKED) {
+		err = mlxsw_sp_port_security_set(mlxsw_sp_port,
+						 flags.val & BR_PORT_LOCKED);
+		if (err)
+			return err;
+	}
+
 	if (bridge_port->bridge_device->multicast_enabled)
 		goto out;
 
@@ -1189,6 +1208,7 @@ static int mlxsw_sp_port_attr_set(struct net_device *dev, const void *ctx,
 		break;
 	case SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS:
 		err = mlxsw_sp_port_attr_br_pre_flags_set(mlxsw_sp_port,
+							  attr->orig_dev,
 							  attr->u.brport_flags,
 							  extack);
 		break;
@@ -2787,6 +2807,7 @@ void mlxsw_sp_port_bridge_leave(struct mlxsw_sp_port *mlxsw_sp_port,
 
 	bridge_device->ops->port_leave(bridge_device, bridge_port,
 				       mlxsw_sp_port);
+	mlxsw_sp_port_security_set(mlxsw_sp_port, false);
 	mlxsw_sp_bridge_port_put(mlxsw_sp->bridge, bridge_port);
 }
 
-- 
2.37.3

