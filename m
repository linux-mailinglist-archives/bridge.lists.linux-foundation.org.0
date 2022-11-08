Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01371620DA3
	for <lists.bridge@lfdr.de>; Tue,  8 Nov 2022 11:48:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7DF9B4042B;
	Tue,  8 Nov 2022 10:48:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7DF9B4042B
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=MRFYFMHY
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hf5nu29YlIOW; Tue,  8 Nov 2022 10:48:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 0A971408CA;
	Tue,  8 Nov 2022 10:48:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A971408CA
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 53FFBC002D;
	Tue,  8 Nov 2022 10:48:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5D12EC002D
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 10:48:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4222281AF3
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 10:48:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4222281AF3
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=MRFYFMHY
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wyvJZhwK9fvv for <bridge@lists.linux-foundation.org>;
 Tue,  8 Nov 2022 10:48:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6EC5781B01
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2041.outbound.protection.outlook.com [40.107.236.41])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6EC5781B01
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 10:48:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W3wZPBboPF6mbaBGkd65ME9aRBGLNNua0fxuftmYPfwGYtgML4isER7KYwCCSoirjWK93/KvLc8z4UyrhqTPHtou7uoeGz5EXqpMdWK8MHPUTnm/XyWbqQu+Fa01ZAZdPzSEYSLpRzSDGfochIeB3Ujt2e5SK4Ij0RbmGai+WVsykUO/WK4tjgCHwH9p+FSiYyWQ9IrvcSEYwjybtJc2PnR0imHDn5sV378B0o5PqQxg9CGqw6L+x9hpyyf1SMibkD7u+26g1pV+WUNMadaLJCcTfCOg0nZse90fGEzVeEQwIUJ6vRmaUgurRbmg7mo/ODbFf3RPqcqrBNXndkRcxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FAeOIWKPYcVKdLVxbw6WJgCGUr6OR97IzMC+BcOKogY=;
 b=axuHSGBPBjfShMEivTXfldaXfjdDmqSdzF/uEt6+rtgQ5Xq8PoTcqc+Z0+ltl2lT5EEQRj6DIReS91QiahHdFaGKyMplq2DDLQV6m7L/5sBBDS9LOfliMMNxGkX9Pe4M3pgDheQvhSoIcYo/pItR9udftW8n5O0MvXtv16I1Z2notgJM9KtngM0z842hoBO9OXRjf7mqiBXjOyKsX6I1/NcAvvi8gIG+leD6fvWyIEQYKBR2ymzcpmaE3jSHMKpIA6xIpLBtBq/yqeZOlVQAYxaT2CRP7cc3YQGNj3jD0HdnzhGx7XzphnYg1E6GudLWNsjI/I0+BC16qPspyx17/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FAeOIWKPYcVKdLVxbw6WJgCGUr6OR97IzMC+BcOKogY=;
 b=MRFYFMHYPD0jGba1STYD3jlEth6oiRj4J2wVv/1ZM9J+vtUmaApvogAnuU6Srjka/Hjz93rVWKSZDfUp7PVQcJw93Nbnyrezk1GlBSzOzcxvvIRKgMWRA4w7cm4tHV1tFCVWbUYm4s14wnjbUEv6HV6CgW9McxwaYWFadNo+z5D0EGHjhmVai3UPEqSFcB6fnkpVqidwMP4UII7l7x/gsifX/4ynPViM4f5IUtcQgId1J/PeU+5K7Irt8fZrQxJUAGP5h3W18Sm/GfyiQHx6G6secPDD8adOBvfr2MJ6W/h8hucWl4PpnnaWb+zltAAn1xiQCOuR6ZqN9VJhWqNpNg==
Received: from DS7PR05CA0015.namprd05.prod.outlook.com (2603:10b6:5:3b9::20)
 by MW3PR12MB4443.namprd12.prod.outlook.com (2603:10b6:303:2d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.26; Tue, 8 Nov
 2022 10:48:24 +0000
Received: from DM6NAM11FT052.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:3b9:cafe::b4) by DS7PR05CA0015.outlook.office365.com
 (2603:10b6:5:3b9::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.8 via Frontend
 Transport; Tue, 8 Nov 2022 10:48:23 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 DM6NAM11FT052.mail.protection.outlook.com (10.13.172.111) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5791.20 via Frontend Transport; Tue, 8 Nov 2022 10:48:23 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Tue, 8 Nov 2022
 02:48:15 -0800
Received: from yaviefel.vdiclient.nvidia.com (10.126.230.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.29; Tue, 8 Nov 2022 02:48:11 -0800
From: Petr Machata <petrm@nvidia.com>
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Ivan Vecera <ivecera@redhat.com>,
 <netdev@vger.kernel.org>
Date: Tue, 8 Nov 2022 11:47:16 +0100
Message-ID: <174cd8190436260fb1c4195ced83b8df72ff2679.1667902754.git.petrm@nvidia.com>
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
X-MS-TrafficTypeDiagnostic: DM6NAM11FT052:EE_|MW3PR12MB4443:EE_
X-MS-Office365-Filtering-Correlation-Id: 68de51b9-3eb6-4953-e403-08dac176c234
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VajVW7ISNpzdh0W9RFJgo4MB94Dv8H+nMl+igqAuy3gwKj5Us03z/zeZjk9mAPPvY1BsbseA9efLaILO7lanv1CO83MCQaK414lkzBaWXKGsCIW5QXSPyf7CZ8v2GUCh1gfEaa28tO/FLkadYHfzdxPlOMVzOyAAk9ZMwvMKVzbh3BvG7tWp97xP/2DYPVi3cNO3n2dAafAj7IlCweibo/KnC14qugrWFr5K9+uKAl6wX4Y4IObwYyQpy29qzmca2ct+VkP/noGLiVxtv3SdvHniRIrZYzf4wJqm9Y1F6vD1+HrUXjKlfMNJ6GfeZyYOSVgzOb8VcrhYrRRdf7RYKJ/w7/ib1RLqxTaBZ6AtpVLi+nmpYCwF6l1Ivb2xxK4H6H7StkTVDttiHuDn4GpfB56JX6WpMT7LaI4Pm9Gex0Y8wylTUnW9SHuQv7h7AM8tX0+Sj5zum72O3NAQFPZxDFyUyjXiE3+Hh1/65mSi8hcqHN2Wh3EfUi/POBCzVdmsv8NAsfTfTrL8rXaRdcWw8b4Y8AoHMOJauWnwo8weknEsYuGqdIdrHAxac2RRJZ+k6ogARXMACe5C1NlYhCkQYyS967PLkHH6aU1vAllY+xVCWvaZIMi8UBmIfwVVBZ8fqXYDIdy0Zwkyo6IoW+dfT3q0TIm1KkwwUKUNWhSfX2VkHw5wyJdKEMrshVpfPBrqEZ331s5KqsDYpCwvx4wU3gc6oM8/KC95L0M32G7AXkfY78gVcdaAsR5oAxPWa+RGyK8QH1bf01Cj4dK+KUreOA==
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230022)(4636009)(346002)(136003)(376002)(396003)(39860400002)(451199015)(46966006)(40470700004)(36840700001)(316002)(54906003)(110136005)(107886003)(70586007)(7696005)(8676002)(86362001)(70206006)(4326008)(40480700001)(478600001)(41300700001)(40460700003)(47076005)(2906002)(426003)(83380400001)(26005)(336012)(16526019)(82740400003)(36860700001)(36756003)(186003)(8936002)(7636003)(82310400005)(356005)(5660300002)(2616005);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2022 10:48:23.3488 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 68de51b9-3eb6-4953-e403-08dac176c234
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT052.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR12MB4443
Cc: Petr Machata <petrm@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Roopa Prabhu <roopa@nvidia.com>, mlxsw@nvidia.com,
 Jiri Pirko <jiri@nvidia.com>, "Hans J . Schultz" <netdev@kapio-technology.com>
Subject: [Bridge] [PATCH net-next 10/15] mlxsw: spectrum_switchdev: Use
	extack in bridge port flag validation
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

From: Ido Schimmel <idosch@nvidia.com>

Propagate extack to mlxsw_sp_port_attr_br_pre_flags_set() in order to
communicate error messages related to bridge port flag validation.

Example:

 # bridge link set dev swp1 locked on
 Error: mlxsw_spectrum: Unsupported bridge port flag.

More error messages will be added in subsequent patches.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
Reviewed-by: Petr Machata <petrm@nvidia.com>
Signed-off-by: Petr Machata <petrm@nvidia.com>
---
 .../net/ethernet/mellanox/mlxsw/spectrum_switchdev.c   | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c b/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
index f336be77019f..db149af7c888 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
@@ -782,10 +782,13 @@ mlxsw_sp_bridge_port_learning_set(struct mlxsw_sp_port *mlxsw_sp_port,
 
 static int
 mlxsw_sp_port_attr_br_pre_flags_set(struct mlxsw_sp_port *mlxsw_sp_port,
-				    struct switchdev_brport_flags flags)
+				    struct switchdev_brport_flags flags,
+				    struct netlink_ext_ack *extack)
 {
-	if (flags.mask & ~(BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD))
+	if (flags.mask & ~(BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD)) {
+		NL_SET_ERR_MSG_MOD(extack, "Unsupported bridge port flag");
 		return -EINVAL;
+	}
 
 	return 0;
 }
@@ -1186,7 +1189,8 @@ static int mlxsw_sp_port_attr_set(struct net_device *dev, const void *ctx,
 		break;
 	case SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS:
 		err = mlxsw_sp_port_attr_br_pre_flags_set(mlxsw_sp_port,
-							  attr->u.brport_flags);
+							  attr->u.brport_flags,
+							  extack);
 		break;
 	case SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS:
 		err = mlxsw_sp_port_attr_br_flags_set(mlxsw_sp_port,
-- 
2.35.3

