Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 14530707F71
	for <lists.bridge@lfdr.de>; Thu, 18 May 2023 13:35:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8718E4093E;
	Thu, 18 May 2023 11:35:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8718E4093E
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=U4wXTE3h
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dMW_jzYLha3w; Thu, 18 May 2023 11:35:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 8081A4087D;
	Thu, 18 May 2023 11:35:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8081A4087D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3A102C0035;
	Thu, 18 May 2023 11:35:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2F9CFC002A
 for <bridge@lists.linux-foundation.org>; Thu, 18 May 2023 11:35:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 13219400B8
 for <bridge@lists.linux-foundation.org>; Thu, 18 May 2023 11:35:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 13219400B8
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=U4wXTE3h
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k0Bl_JbKfWJP for <bridge@lists.linux-foundation.org>;
 Thu, 18 May 2023 11:35:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 25A5D40022
Received: from NAM04-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam04on20625.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e8b::625])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 25A5D40022
 for <bridge@lists.linux-foundation.org>; Thu, 18 May 2023 11:35:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LdJq3WdxGqRi/VeZIZFMaTgy61vKF6Pp+RSejZkJp2so6wEvUpYKofy3ngVg/XZUpT1Q5PPz2JoOP+r+hMi+/0KBa3C9hZBT5S8zF8A7Yhv6q0caPWjDvnHJCa/8Tya63g4bKCOnoWfE3j4vWcma0eDiB4uBVgo7kP84oRVDJ7+Z5MF++qkcGG9nUuHycz1AoQO8DOw9s2ZLDjEedKNVA1HgyCsnPmcmTybWrv34wB3pqOxfI1wJWv/QgXRrciIZmzlBFqkNl9okNtd80oKuMgoynzo8Fm9oK1r+g7HQok7eSP2fWTpTg8w2NKWVemoPEkvD66pf+FoxHjsZ3ROWgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HzVsWpsxg8gzs1LvHZ7mKUQ5piBodmCsbCSwsQDlS6Y=;
 b=Eggd82NA/LdYTWv8eVcTZ99Z31HiSItEWfjwp7B2K8qHJFTqBF0L7XuecgMMuUBbURGS0pqUoXjuJO/h8/Xs6gahV0KRi6IWccQ6QAnFr3mRNkMLH2jqkwuDRN5/S0wR6QalrLlrH3jhFwFrH+YmrFO8eDlpzk54vXPji4mc/k4rTI8OB+yDyhCpKlcRd30hzXT22skfL0er5iiAZbR9YDmFV12pTkzivabLSm+RsRzqMF0bbzCPPG60JPTEELyJaeyIPCupGlobGQ6Lj6Q7U9NTrSTmEK1sXixQoh3pId84NNhcCKE+EEtFxIIZHaYOlhG6w3nXc5Snv7Hl7h2S1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HzVsWpsxg8gzs1LvHZ7mKUQ5piBodmCsbCSwsQDlS6Y=;
 b=U4wXTE3h5yONVmdeqJFOLPThsze1TrirbUmCGMRcTt9NwU9pOhCX+27Ue1vr4cjGzR6Qy6hNESXaFq3+RoW/OyQ2Ml0PwQ+4QqjaO3/PCnhepvKb6nPqiFxr8OxLCpPUQ0Worc41QFu4SdRRzZNs6R0ewPAXGrRjBjfBId/YFsn3yvs0rx3CR+yGpakiTHzwabjSSENvUHwsjskZQ/g6FEAnY5nFzOQV3qckFRTSrMmqzb9kX9y1an1kxhwLcI2pnMnysO21BUTXTYS0QYryor6NnmZwrghtjPrZ+fe71BG/Qk56kitqVNl+noUvvmmdbUJXLrDfYdbCg6UX2m4HrQ==
Received: from SJ0PR03CA0221.namprd03.prod.outlook.com (2603:10b6:a03:39f::16)
 by BL1PR12MB5062.namprd12.prod.outlook.com (2603:10b6:208:313::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.17; Thu, 18 May
 2023 11:35:08 +0000
Received: from CO1NAM11FT098.eop-nam11.prod.protection.outlook.com
 (2603:10b6:a03:39f:cafe::fe) by SJ0PR03CA0221.outlook.office365.com
 (2603:10b6:a03:39f::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.18 via Frontend
 Transport; Thu, 18 May 2023 11:35:08 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 CO1NAM11FT098.mail.protection.outlook.com (10.13.174.207) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6411.19 via Frontend Transport; Thu, 18 May 2023 11:35:08 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.5; Thu, 18 May 2023
 04:35:00 -0700
Received: from dev-r-vrt-155.mtr.labs.mlnx (10.126.231.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.37; Thu, 18 May 2023 04:34:55 -0700
To: <netdev@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Thu, 18 May 2023 14:33:27 +0300
Message-ID: <20230518113328.1952135-5-idosch@nvidia.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230518113328.1952135-1-idosch@nvidia.com>
References: <20230518113328.1952135-1-idosch@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.231.35]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1NAM11FT098:EE_|BL1PR12MB5062:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d0b558c-3757-4106-eea5-08db5793eee5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RIEwtTVIrJQD81HYIRKiFqesgJF/tPqnJmCahcrmeHPcFMD+YNEX6BI54hDE/FEJ3A/kjJfjDMFFXNa7VQo29nNdlVGGI0PpM5pMhzgzhzFgj43PYuinBBiuHpcx7XxYEJqBDkhKdlg2Tq0GugDSW3dF67hxVMrl+p8x0wXFE9TxZOmSYsrYXbEkvaqKRo6qcLSEhc5LaDfNlSxSY+z1XLrDRnCty9TE5GRVUNSAk3NlTjRidiZZd93PTvXCuq6aiIItP0n2OI7wYegoYwfN+8qrXdpJNyPfFiiloYuzGKbovsZ46Wox6UXQNpseOt2APcoGzjp2Vn50NdSaMbGrjZ+tkZAmOSNZ69r+b2KdpKjEzRAq3vGld5OSzt/eSmnqx7ib1kyPFtDd1vLZ9wCUAPFhtbi9cpdniX86STMtDQ9JgrdxZZ8lqNdcRYeeRB9uP5s65bCb2tnMhBnZ8hUBkAjZg2TysRsqHuG4WCAgITqsd+uvt/eaHlWfvREXCIAgsG56iogxpzPC/OlnWZyLi1FlFW+1Aq9WP8xCQ8lZz1Q6o1BqAMyPg2+c3pfFXG4y3cKxnO7Kc7wK35zp+Tg8BFe70JxqaAl7dvxgDYCWjROAi1Uvz/eAI7vGYaEzqLzitsRkQZeKHCuGdjq8VuD0MNUQfijg4AJm1/SHlkRJAD/SZ072adpjjaftFXlDUbt4TJA84BkNhsqds4hudlpSRxJIl7wc2ufUs1i+arAkrmGWNHAePuyMgArDRvNN+LNG
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230028)(4636009)(39860400002)(376002)(396003)(346002)(136003)(451199021)(46966006)(40470700004)(36840700001)(8676002)(2906002)(7416002)(8936002)(41300700001)(5660300002)(82310400005)(70586007)(70206006)(4326008)(54906003)(110136005)(478600001)(6666004)(83380400001)(426003)(47076005)(336012)(36756003)(1076003)(66574015)(107886003)(316002)(2616005)(186003)(40460700003)(26005)(16526019)(36860700001)(7636003)(356005)(82740400003)(86362001)(40480700001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2023 11:35:08.1349 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d0b558c-3757-4106-eea5-08db5793eee5
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT098.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5062
Cc: taras.chornyi@plvision.eu, petrm@nvidia.com, alexandre.belloni@bootlin.com,
 jiri@resnulli.us, taspelund@nvidia.com, leon@kernel.org,
 vladimir.oltean@nxp.com, razor@blackwall.org, claudiu.manoil@nxp.com,
 Ido Schimmel <idosch@nvidia.com>, UNGLinuxDriver@microchip.com,
 xiyou.wangcong@gmail.com, edumazet@google.com, jhs@mojatatu.com,
 roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com, saeedm@nvidia.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 4/5] mlxsw: spectrum_flower: Add ability
	to match on layer 2 miss
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

Add the 'dmac_type' key element to supported key blocks and make use of
it to match on layer 2 miss.

This is a two bits key in hardware with the following values:
00b - Known multicast.
01b - Broadcast.
10b - Known unicast.
11b - Unknown unicast or unregistered multicast.

When 'l2_miss' is set we need to match on 01b or 11b. Therefore, only
match on the LSB in order to differentiate between both cases of
'l2_miss'.

Tested on Spectrum-{1,2,3,4}.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 .../mellanox/mlxsw/core_acl_flex_keys.c       |  1 +
 .../mellanox/mlxsw/core_acl_flex_keys.h       |  3 ++-
 .../mellanox/mlxsw/spectrum_acl_flex_keys.c   |  5 +++++
 .../ethernet/mellanox/mlxsw/spectrum_flower.c | 20 ++++++++++++++-----
 4 files changed, 23 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlxsw/core_acl_flex_keys.c b/drivers/net/ethernet/mellanox/mlxsw/core_acl_flex_keys.c
index bd1a51a0a540..81af0b9a4329 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/core_acl_flex_keys.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/core_acl_flex_keys.c
@@ -42,6 +42,7 @@ static const struct mlxsw_afk_element_info mlxsw_afk_element_infos[] = {
 	MLXSW_AFK_ELEMENT_INFO_BUF(DST_IP_64_95, 0x34, 4),
 	MLXSW_AFK_ELEMENT_INFO_BUF(DST_IP_32_63, 0x38, 4),
 	MLXSW_AFK_ELEMENT_INFO_BUF(DST_IP_0_31, 0x3C, 4),
+	MLXSW_AFK_ELEMENT_INFO_U32(DMAC_TYPE, 0x40, 0, 2),
 };
 
 struct mlxsw_afk {
diff --git a/drivers/net/ethernet/mellanox/mlxsw/core_acl_flex_keys.h b/drivers/net/ethernet/mellanox/mlxsw/core_acl_flex_keys.h
index 3a037fe47211..6f1649cfa4cb 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/core_acl_flex_keys.h
+++ b/drivers/net/ethernet/mellanox/mlxsw/core_acl_flex_keys.h
@@ -35,6 +35,7 @@ enum mlxsw_afk_element {
 	MLXSW_AFK_ELEMENT_IP_DSCP,
 	MLXSW_AFK_ELEMENT_VIRT_ROUTER_MSB,
 	MLXSW_AFK_ELEMENT_VIRT_ROUTER_LSB,
+	MLXSW_AFK_ELEMENT_DMAC_TYPE,
 	MLXSW_AFK_ELEMENT_MAX,
 };
 
@@ -69,7 +70,7 @@ struct mlxsw_afk_element_info {
 	MLXSW_AFK_ELEMENT_INFO(MLXSW_AFK_ELEMENT_TYPE_BUF,			\
 			       _element, _offset, 0, _size)
 
-#define MLXSW_AFK_ELEMENT_STORAGE_SIZE 0x40
+#define MLXSW_AFK_ELEMENT_STORAGE_SIZE 0x44
 
 struct mlxsw_afk_element_inst { /* element instance in actual block */
 	enum mlxsw_afk_element element;
diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c b/drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c
index 00c32320f891..18a968cded36 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c
@@ -26,6 +26,7 @@ static struct mlxsw_afk_element_inst mlxsw_sp_afk_element_info_l2_smac[] = {
 static struct mlxsw_afk_element_inst mlxsw_sp_afk_element_info_l2_smac_ex[] = {
 	MLXSW_AFK_ELEMENT_INST_BUF(SMAC_32_47, 0x02, 2),
 	MLXSW_AFK_ELEMENT_INST_BUF(SMAC_0_31, 0x04, 4),
+	MLXSW_AFK_ELEMENT_INST_U32(DMAC_TYPE, 0x08, 0, 2),
 	MLXSW_AFK_ELEMENT_INST_U32(ETHERTYPE, 0x0C, 0, 16),
 };
 
@@ -50,6 +51,7 @@ static struct mlxsw_afk_element_inst mlxsw_sp_afk_element_info_ipv4[] = {
 };
 
 static struct mlxsw_afk_element_inst mlxsw_sp_afk_element_info_ipv4_ex[] = {
+	MLXSW_AFK_ELEMENT_INST_U32(DMAC_TYPE, 0x00, 24, 2),
 	MLXSW_AFK_ELEMENT_INST_U32(VID, 0x00, 0, 12),
 	MLXSW_AFK_ELEMENT_INST_U32(PCP, 0x08, 29, 3),
 	MLXSW_AFK_ELEMENT_INST_U32(SRC_L4_PORT, 0x08, 0, 16),
@@ -78,6 +80,7 @@ static struct mlxsw_afk_element_inst mlxsw_sp_afk_element_info_ipv6_sip_ex[] = {
 };
 
 static struct mlxsw_afk_element_inst mlxsw_sp_afk_element_info_packet_type[] = {
+	MLXSW_AFK_ELEMENT_INST_U32(DMAC_TYPE, 0x00, 30, 2),
 	MLXSW_AFK_ELEMENT_INST_U32(ETHERTYPE, 0x00, 0, 16),
 };
 
@@ -123,6 +126,7 @@ const struct mlxsw_afk_ops mlxsw_sp1_afk_ops = {
 };
 
 static struct mlxsw_afk_element_inst mlxsw_sp_afk_element_info_mac_0[] = {
+	MLXSW_AFK_ELEMENT_INST_U32(DMAC_TYPE, 0x00, 0, 2),
 	MLXSW_AFK_ELEMENT_INST_BUF(DMAC_0_31, 0x04, 4),
 };
 
@@ -313,6 +317,7 @@ const struct mlxsw_afk_ops mlxsw_sp2_afk_ops = {
 };
 
 static struct mlxsw_afk_element_inst mlxsw_sp_afk_element_info_mac_5b[] = {
+	MLXSW_AFK_ELEMENT_INST_U32(DMAC_TYPE, 0x00, 2, 2),
 	MLXSW_AFK_ELEMENT_INST_U32(VID, 0x04, 18, 12),
 	MLXSW_AFK_ELEMENT_INST_EXT_U32(SRC_SYS_PORT, 0x04, 0, 9, -1, true), /* RX_ACL_SYSTEM_PORT */
 };
diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c b/drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c
index 6fec9223250b..170a07f35897 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c
@@ -295,11 +295,6 @@ static int mlxsw_sp_flower_parse_meta(struct mlxsw_sp_acl_rule_info *rulei,
 
 	flow_rule_match_meta(rule, &match);
 
-	if (match.mask->l2_miss) {
-		NL_SET_ERR_MSG_MOD(f->common.extack, "Can't match on \"l2_miss\"");
-		return -EOPNOTSUPP;
-	}
-
 	if (match.mask->ingress_ifindex != 0xFFFFFFFF) {
 		NL_SET_ERR_MSG_MOD(f->common.extack, "Unsupported ingress ifindex mask");
 		return -EINVAL;
@@ -327,6 +322,21 @@ static int mlxsw_sp_flower_parse_meta(struct mlxsw_sp_acl_rule_info *rulei,
 				       MLXSW_AFK_ELEMENT_SRC_SYS_PORT,
 				       mlxsw_sp_port->local_port,
 				       0xFFFFFFFF);
+
+	/* This is a two bits key in hardware with the following values:
+	 * 00b - Known multicast.
+	 * 01b - Broadcast.
+	 * 10b - Known unicast.
+	 * 11b - Unknown unicast or unregistered multicast.
+	 *
+	 * When 'l2_miss' is set we need to match on 01b or 11b. Therefore,
+	 * only match on the LSB in order to differentiate between both cases
+	 * of 'l2_miss'.
+	 */
+	mlxsw_sp_acl_rulei_keymask_u32(rulei, MLXSW_AFK_ELEMENT_DMAC_TYPE,
+				       match.key->l2_miss,
+				       match.mask->l2_miss & BIT(0));
+
 	return 0;
 }
 
-- 
2.40.1

