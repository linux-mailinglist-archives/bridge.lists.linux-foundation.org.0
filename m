Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C435D7148D8
	for <lists.bridge@lfdr.de>; Mon, 29 May 2023 13:50:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D62AB418E2;
	Mon, 29 May 2023 11:50:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D62AB418E2
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=Mc1tYqsU
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UHFO_MypHgPu; Mon, 29 May 2023 11:50:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 3FDBA41DF6;
	Mon, 29 May 2023 11:50:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3FDBA41DF6
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 14942C0089;
	Mon, 29 May 2023 11:50:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 46C79C002A
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 11:50:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 20BD1827D9
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 11:50:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 20BD1827D9
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=Mc1tYqsU
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ELGgrUt26Uzp for <bridge@lists.linux-foundation.org>;
 Mon, 29 May 2023 11:50:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D26882369
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on20628.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eab::628])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5D26882369
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 11:50:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WT1Sch4Rrr7kMFRMZpl95UTjLeD/tsxQBnPRM8FHAkTwAuxVLZwrS5aR5HPw8LhvvaG6mu/9HG1upBxoHB9R3ebk83sERkAB0hREb0LD3i77NOxVumhtIFz/ZnTty6K2POHyxNsWcmjcC0gCSGlOaqQ5fmh+1WVwIQQ+XPVbBYgOfbPbhV8xoEnapWafTT8Oq089tdzT3hlWduxh/6I8fZ4FP2xLF8red+BUsMAqvyNOuOma/+ZL62W2u9iVOL6WJk4A88IU4QiXq2fvHpe9pf6lzvjaRgIJab32CUvVO7wKTSnjIU9bVtQuaB5tTSPFoxLExAePfJIYTqNnDOH6TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VSdU3zwmLDiO+kyAaRsEdMZsXlHWLaaAmuYA+aih/7U=;
 b=OeHBEGDOzazBRXjGi5XaQOV6Eu0v/QrSAbprae6W3CrOtPrxX4Zzb0RqFDTmDFjNGA0b3P1l3tfpoZzsIb74huSroaqd//eyeBczOoQRSYeNHP1uJGgshf5GJwEYH9eiACpfYYdu5TdwlaApb6hWEoqshngcC0vUQPxSQWE2ykLhTCwAOtnZDz2vY3kzt6LDpE50JeBMpdbTEzNscNUFPTXOfV0xvuVz7h/TW3P9zJDS21AwEUi0KUFG5B+Nz6Ql0xWfq4gwxymia/VBQ2WdFA3zXMSvmR2kzgkDMizr9FQOcm89wBS5LPDCkptkYPHc0L6UD7iTxz19qrk8Sc404A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VSdU3zwmLDiO+kyAaRsEdMZsXlHWLaaAmuYA+aih/7U=;
 b=Mc1tYqsUuU/w9CfsCldpTCd4hdA8ncJrauRQ34SqY3HFhcHQwZLHfZ6hNIjJQgmaKdxbMh20aknuigB5SOZzv4WOZtBPdtugsh6CXT9RU8HSMNadMCv9GB4ADUzYmFCokX29t8cSItMzVUI0eWAsL9RKV7EJdIDiGms9We+55/wayWppYN0VlzHIp2QjbGXyj0aHh2TzulQHVBsYNMz+pdxtbZ+yCu1o97ENxml5GvX29IMkds7bEIg9qdANLQzEQth2O94SqW3pAMj1N+sh6K8BLIFE186HMAIj4g6800FlAxy2l/RExZ5i55dWU6GmSijikEuUNZMDIyM/y+aadw==
Received: from DS7PR03CA0135.namprd03.prod.outlook.com (2603:10b6:5:3b4::20)
 by SA3PR12MB8763.namprd12.prod.outlook.com (2603:10b6:806:312::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Mon, 29 May
 2023 11:50:07 +0000
Received: from DM6NAM11FT039.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:3b4:cafe::30) by DS7PR03CA0135.outlook.office365.com
 (2603:10b6:5:3b4::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23 via Frontend
 Transport; Mon, 29 May 2023 11:50:07 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 DM6NAM11FT039.mail.protection.outlook.com (10.13.172.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.21 via Frontend Transport; Mon, 29 May 2023 11:50:07 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.5; Mon, 29 May 2023
 04:49:54 -0700
Received: from dev-r-vrt-155.mtr.labs.mlnx (10.126.231.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.37; Mon, 29 May 2023 04:49:48 -0700
To: <netdev@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Mon, 29 May 2023 14:48:32 +0300
Message-ID: <20230529114835.372140-6-idosch@nvidia.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230529114835.372140-1-idosch@nvidia.com>
References: <20230529114835.372140-1-idosch@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.231.35]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT039:EE_|SA3PR12MB8763:EE_
X-MS-Office365-Filtering-Correlation-Id: 57489f9b-32dd-47c9-39ce-08db603ad951
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jBhAwmeXVeABhhK/rfFy7a7NE9k1d9fVJ3rE3KAnLOKhf32I5RDtPSlbIjOG29SvEKtpm2pF7HFjzDT6Lf0kKVtpOGgSYWEMVfLceylPkyzEtoiv5k0kLUyIGmwTTXh6GaXFA6qkFuZWE24QTxKh6C19M50/3yPCe2wj4jXBxc7ElV/bISjRsTQ6Hi5Cr2wNY+gsDEzWVNvxrqbvJ9emOdmRgLWP4fCKHei9uQQPPP4ujqcPidSuVclSvFFDJeM/Pk9K7dj6UnBe67yLw+9gfjrdkczX8JlS6WjsKXlM/g99WYTEGZBOIlu/O1APBUVZ4o6cX2P3hA7M3Lg757vtfUgaysL2gh2ntrmMAmX0WhKs7wit5xIY9ddW4QQFwB5GBWTy7lvo/wtymnQSsMuhnNJgBeP2+sCtof3UwhC69ZtCYrc8GcQD/u8xNNZGRjErXXBZ0Ru/5AHNrtzSbXIAeIfU4SxZARnR3sFviiDEVnbqq6thFCXgX1cgkN9hdr8p1LMehKy29Z22Srx6FSK68yi5qKWj03fuOb+1MR0WcVnNbLQtP/kYfsvxpE1+GP4F46hKNisYSOITsPxK3BtOsi9z/N3PfdvvKg4bpQmwBMguw39Gps1TZW2SWuVqTwyM3qw9Y/HBkuyaZusJ0cTlaAdShgCdHEeHTMfztTdelvlMjcH00FPZres2npRf77Ue9q4y6QK+Q8qcfDlwcwNLEqMHZKmbsdrSRFLWaUtKH1DwcokpyT6s908CuMIjWa6w
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(39860400002)(346002)(376002)(396003)(451199021)(46966006)(36840700001)(40470700004)(82310400005)(86362001)(41300700001)(40480700001)(40460700003)(4326008)(6666004)(316002)(7416002)(36756003)(70206006)(70586007)(107886003)(36860700001)(5660300002)(16526019)(186003)(478600001)(2906002)(1076003)(26005)(2616005)(47076005)(83380400001)(426003)(336012)(54906003)(8676002)(8936002)(82740400003)(356005)(7636003)(110136005);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2023 11:50:07.1999 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 57489f9b-32dd-47c9-39ce-08db603ad951
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT039.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR12MB8763
Cc: taras.chornyi@plvision.eu, petrm@nvidia.com, alexandre.belloni@bootlin.com,
 jiri@resnulli.us, leon@kernel.org, vladimir.oltean@nxp.com,
 razor@blackwall.org, roopa@nvidia.com, claudiu.manoil@nxp.com,
 Ido Schimmel <idosch@nvidia.com>, UNGLinuxDriver@microchip.com,
 edumazet@google.com, jhs@mojatatu.com, xiyou.wangcong@gmail.com,
 simon.horman@corigine.com, kuba@kernel.org, pabeni@redhat.com,
 saeedm@nvidia.com, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 5/8] mlxsw: spectrum_flower: Split iif
	parsing to a separate function
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

Currently, mlxsw only supports the 'ingress_ifindex' field in the
'FLOW_DISSECTOR_KEY_META' key, but subsequent patches are going to add
support for the 'l2_miss' field as well. Split the parsing of the
'ingress_ifindex' field to a separate function to avoid nesting. No
functional changes intended.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---

Notes:
    v2:
    * New patch.

 .../ethernet/mellanox/mlxsw/spectrum_flower.c | 54 +++++++++++--------
 1 file changed, 33 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c b/drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c
index 6fec9223250b..2b0bae847eb9 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c
@@ -281,45 +281,35 @@ static int mlxsw_sp_flower_parse_actions(struct mlxsw_sp *mlxsw_sp,
 	return 0;
 }
 
-static int mlxsw_sp_flower_parse_meta(struct mlxsw_sp_acl_rule_info *rulei,
-				      struct flow_cls_offload *f,
-				      struct mlxsw_sp_flow_block *block)
+static int
+mlxsw_sp_flower_parse_meta_iif(struct mlxsw_sp_acl_rule_info *rulei,
+			       const struct mlxsw_sp_flow_block *block,
+			       const struct flow_match_meta *match,
+			       struct netlink_ext_ack *extack)
 {
-	struct flow_rule *rule = flow_cls_offload_flow_rule(f);
 	struct mlxsw_sp_port *mlxsw_sp_port;
 	struct net_device *ingress_dev;
-	struct flow_match_meta match;
-
-	if (!flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_META))
-		return 0;
-
-	flow_rule_match_meta(rule, &match);
 
-	if (match.mask->l2_miss) {
-		NL_SET_ERR_MSG_MOD(f->common.extack, "Can't match on \"l2_miss\"");
-		return -EOPNOTSUPP;
-	}
-
-	if (match.mask->ingress_ifindex != 0xFFFFFFFF) {
-		NL_SET_ERR_MSG_MOD(f->common.extack, "Unsupported ingress ifindex mask");
+	if (match->mask->ingress_ifindex != 0xFFFFFFFF) {
+		NL_SET_ERR_MSG_MOD(extack, "Unsupported ingress ifindex mask");
 		return -EINVAL;
 	}
 
 	ingress_dev = __dev_get_by_index(block->net,
-					 match.key->ingress_ifindex);
+					 match->key->ingress_ifindex);
 	if (!ingress_dev) {
-		NL_SET_ERR_MSG_MOD(f->common.extack, "Can't find specified ingress port to match on");
+		NL_SET_ERR_MSG_MOD(extack, "Can't find specified ingress port to match on");
 		return -EINVAL;
 	}
 
 	if (!mlxsw_sp_port_dev_check(ingress_dev)) {
-		NL_SET_ERR_MSG_MOD(f->common.extack, "Can't match on non-mlxsw ingress port");
+		NL_SET_ERR_MSG_MOD(extack, "Can't match on non-mlxsw ingress port");
 		return -EINVAL;
 	}
 
 	mlxsw_sp_port = netdev_priv(ingress_dev);
 	if (mlxsw_sp_port->mlxsw_sp != block->mlxsw_sp) {
-		NL_SET_ERR_MSG_MOD(f->common.extack, "Can't match on a port from different device");
+		NL_SET_ERR_MSG_MOD(extack, "Can't match on a port from different device");
 		return -EINVAL;
 	}
 
@@ -327,9 +317,31 @@ static int mlxsw_sp_flower_parse_meta(struct mlxsw_sp_acl_rule_info *rulei,
 				       MLXSW_AFK_ELEMENT_SRC_SYS_PORT,
 				       mlxsw_sp_port->local_port,
 				       0xFFFFFFFF);
+
 	return 0;
 }
 
+static int mlxsw_sp_flower_parse_meta(struct mlxsw_sp_acl_rule_info *rulei,
+				      struct flow_cls_offload *f,
+				      struct mlxsw_sp_flow_block *block)
+{
+	struct flow_rule *rule = flow_cls_offload_flow_rule(f);
+	struct flow_match_meta match;
+
+	if (!flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_META))
+		return 0;
+
+	flow_rule_match_meta(rule, &match);
+
+	if (match.mask->l2_miss) {
+		NL_SET_ERR_MSG_MOD(f->common.extack, "Can't match on \"l2_miss\"");
+		return -EOPNOTSUPP;
+	}
+
+	return mlxsw_sp_flower_parse_meta_iif(rulei, block, &match,
+					      f->common.extack);
+}
+
 static void mlxsw_sp_flower_parse_ipv4(struct mlxsw_sp_acl_rule_info *rulei,
 				       struct flow_cls_offload *f)
 {
-- 
2.40.1

