Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7557148DA
	for <lists.bridge@lfdr.de>; Mon, 29 May 2023 13:50:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 778BF83388;
	Mon, 29 May 2023 11:50:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 778BF83388
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=QdUyW7a9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eoFnguxpD3ZG; Mon, 29 May 2023 11:50:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id CD4D482369;
	Mon, 29 May 2023 11:50:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD4D482369
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 876F1C0089;
	Mon, 29 May 2023 11:50:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 39C0EC002A
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 11:50:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6F7C041E1D
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 11:50:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F7C041E1D
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=QdUyW7a9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iwsKS9HvXEeS for <bridge@lists.linux-foundation.org>;
 Mon, 29 May 2023 11:50:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8898441E0A
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on20605.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe59::605])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8898441E0A
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 11:50:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LVkj/KyTzdZn0rwn1jXOG/YKqaA9gJM5X7Sst95xSkUV8FXLhAm2UbC+P4RN+kIKqR7GS1EWW6/+kK3nOE4BgIy2RzJujX2EjCZoWSYxbx11c8fQ8nZKCigq/bDxI1PJRABOkgZB0ZAZ1hi97+wRXfnO6szmvEvfErOwIxQmt8Hh7aHEIAlnCoCaptxCO6nBPZZLUgN8GfohTgkWuS+OZLCqZISvObv8blbSnUjclsdiTt9JcFuoQB/n6/bHStLStxEAVWPGxFve6yn7RVsKpT5enG5SfItv9Uc8i/cZve4GgzEzTT0fhKSKxXwIoxW9nLQztkMFO+XkiTTd/lJffw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iYPpTZT3J06CTnlaPDCVlgNtqXiZsHdB+f4WN4iRJRc=;
 b=QThYMA9SJEFZvsn0Cw7/te/KTi59pj2YXjHa7IGc8qXyMycoZAc0lVNetnJRVTnIJP1i2IM137H0Iwc1EZNogLpHkd5YCnZW5bhVU9mZMOZ6TooXSx7ckc8mafeRzV4vEsgeLPKtQpmGILN4jxovL+wuXrfVccPEcTJYUnDIdoRat+1aoLhvxt1kGIjlGhMXlJbmd61JimdCNhStAuc/ab6INwBrMqLHgz4pj/15xi18lfSBYT9Man24OwFCUJ5yzzkeVAI9yx1vthxxt3401336utnszdjTkKToYyuoqHKjNO84x5LClbicOPW1jGHMotUlZT6H5yJlZ74gNG/UYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iYPpTZT3J06CTnlaPDCVlgNtqXiZsHdB+f4WN4iRJRc=;
 b=QdUyW7a9s1lmvB4PW/kYIl/3TGzq8HtWldO0Uyr+BQ4k95R13tDQlkY7efZuJQTLNEkh72w+vOYwOO6fS96GslNE/pKxhMH80xlxe08pkpWKvxyJpFnO735S8DVInjIW4XngPNwcCeyyjpa7A0kLbrm9A6kPdh3Vc+CBYxOpWAMdc3Al/8xj54FEAdGlixUHr+4oBTtbM7qDzaf5XW/HxEjJXIaSYI/xW0RBbazxK8yyDDS3Y/r9L+YumDiwydF4lUkVsLFyzXDchTp4yRbXYTJDQrlEmpHjeAeYVXNc8xCfVYGzAHRfxlWYIThTBJHCPNNsO+VwSY2Q/Mv2B0+7iA==
Received: from DM6PR11CA0057.namprd11.prod.outlook.com (2603:10b6:5:14c::34)
 by SJ2PR12MB8717.namprd12.prod.outlook.com (2603:10b6:a03:53d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Mon, 29 May
 2023 11:50:17 +0000
Received: from DM6NAM11FT044.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:14c:cafe::24) by DM6PR11CA0057.outlook.office365.com
 (2603:10b6:5:14c::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23 via Frontend
 Transport; Mon, 29 May 2023 11:50:17 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 DM6NAM11FT044.mail.protection.outlook.com (10.13.173.185) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.20 via Frontend Transport; Mon, 29 May 2023 11:50:17 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.5; Mon, 29 May 2023
 04:50:06 -0700
Received: from dev-r-vrt-155.mtr.labs.mlnx (10.126.231.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.37; Mon, 29 May 2023 04:50:00 -0700
To: <netdev@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Mon, 29 May 2023 14:48:34 +0300
Message-ID: <20230529114835.372140-8-idosch@nvidia.com>
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
X-MS-TrafficTypeDiagnostic: DM6NAM11FT044:EE_|SJ2PR12MB8717:EE_
X-MS-Office365-Filtering-Correlation-Id: dbe8bbca-cb61-4b06-186b-08db603adf55
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pk51sHYLPVytYiedQjd29ooPkuj0xYqs9oRV0zNGHSj/qJqPAkrx6o7l1qN/19YwsnkWb5/bbeo0nQmjsQKK8rr5O7Bnl8BoMN4D/PffZTKkvmaVFciH7dnoyvCLzVG+FOpHTxKM9eDb7jVHn3UbxsokrWNlfRS4zboqZVktMtp4c4hsFu3AjlWea8f5cqOonBDwx61DMmVIbHm6v+6uxccsnKRZX01J8NWvJzLZn5lQF24bQbuI8CtgdvZuLHWHU33YhZC9ZIKhCSWD0LSiKCkjDJq02MnlbEzAf2Ogf5SAmGd19tgupJYr4F73MGmGaQf5cGVO8sNAeCTlQFoiSreMW1yMp/MhWv3bBflS0UkjV9oLakRfHmZAf0KYy0HMKUuigtu1CO62bHgoIfvUC1WCsVsN4vVS8+Bt5bpUAedaqSTJiMVioyhTmehHTL6/Mw5Zye3q8n8jJbrV8FTLY94fEHxcupYFMpyyXmoPkQAmmV2kbi44iu2jXv72jSLyXH+96OhgWlGfja+tAFAmsC3y3jaY8mu0kKTY1Gjeb/juAKMfCOqaBVF96BQh2wrPG3T6OOcrpDOwovMQeT8rDOMmL/C7KK+xS+5HVZwOw6I/hVZ0VX6opuRu/klKRRKj7iUhPyCfItWsSKeed1hEiZ2iqM6sMPn4o667keBkMZ7PtQA+4pWNCoSmu0ZidpyT4qyCVtw9XL9efLzJNYU8I1oQF+8Fa0oWTkvoPsuS1mbaKkz75smEgL6AivDXLfn5
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(346002)(376002)(396003)(39860400002)(451199021)(40470700004)(36840700001)(46966006)(186003)(1076003)(16526019)(26005)(316002)(6666004)(2906002)(40480700001)(40460700003)(5660300002)(107886003)(41300700001)(36756003)(7416002)(8676002)(8936002)(478600001)(82740400003)(7636003)(356005)(36860700001)(54906003)(426003)(336012)(4326008)(110136005)(82310400005)(86362001)(66574015)(47076005)(2616005)(83380400001)(70586007)(70206006);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2023 11:50:17.2916 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dbe8bbca-cb61-4b06-186b-08db603adf55
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT044.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR12MB8717
Cc: taras.chornyi@plvision.eu, petrm@nvidia.com, alexandre.belloni@bootlin.com,
 jiri@resnulli.us, leon@kernel.org, vladimir.oltean@nxp.com,
 razor@blackwall.org, roopa@nvidia.com, claudiu.manoil@nxp.com,
 Ido Schimmel <idosch@nvidia.com>, UNGLinuxDriver@microchip.com,
 edumazet@google.com, jhs@mojatatu.com, xiyou.wangcong@gmail.com,
 simon.horman@corigine.com, kuba@kernel.org, pabeni@redhat.com,
 saeedm@nvidia.com, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 7/8] mlxsw: spectrum_flower: Add
	ability to match on layer 2 miss
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

Add the 'fdb_miss' key element to supported key blocks and make use of
it to match on layer 2 miss.

The key is only supported on Spectrum-{2,3,4}. An error is returned for
Spectrum-1 since the key element is not present in any of its key
blocks.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---

Notes:
    v2:
    * Use 'fdb_miss' key element instead of 'dmac_type'.

 drivers/net/ethernet/mellanox/mlxsw/core_acl_flex_keys.c    | 1 +
 drivers/net/ethernet/mellanox/mlxsw/core_acl_flex_keys.h    | 3 ++-
 .../net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c    | 2 ++
 drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c       | 6 ++----
 4 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlxsw/core_acl_flex_keys.c b/drivers/net/ethernet/mellanox/mlxsw/core_acl_flex_keys.c
index bd1a51a0a540..f0b2963ebac3 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/core_acl_flex_keys.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/core_acl_flex_keys.c
@@ -42,6 +42,7 @@ static const struct mlxsw_afk_element_info mlxsw_afk_element_infos[] = {
 	MLXSW_AFK_ELEMENT_INFO_BUF(DST_IP_64_95, 0x34, 4),
 	MLXSW_AFK_ELEMENT_INFO_BUF(DST_IP_32_63, 0x38, 4),
 	MLXSW_AFK_ELEMENT_INFO_BUF(DST_IP_0_31, 0x3C, 4),
+	MLXSW_AFK_ELEMENT_INFO_U32(FDB_MISS, 0x40, 0, 1),
 };
 
 struct mlxsw_afk {
diff --git a/drivers/net/ethernet/mellanox/mlxsw/core_acl_flex_keys.h b/drivers/net/ethernet/mellanox/mlxsw/core_acl_flex_keys.h
index 3a037fe47211..65a4abadc7db 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/core_acl_flex_keys.h
+++ b/drivers/net/ethernet/mellanox/mlxsw/core_acl_flex_keys.h
@@ -35,6 +35,7 @@ enum mlxsw_afk_element {
 	MLXSW_AFK_ELEMENT_IP_DSCP,
 	MLXSW_AFK_ELEMENT_VIRT_ROUTER_MSB,
 	MLXSW_AFK_ELEMENT_VIRT_ROUTER_LSB,
+	MLXSW_AFK_ELEMENT_FDB_MISS,
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
index 00c32320f891..4dea39f2b304 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c
@@ -123,10 +123,12 @@ const struct mlxsw_afk_ops mlxsw_sp1_afk_ops = {
 };
 
 static struct mlxsw_afk_element_inst mlxsw_sp_afk_element_info_mac_0[] = {
+	MLXSW_AFK_ELEMENT_INST_U32(FDB_MISS, 0x00, 3, 1),
 	MLXSW_AFK_ELEMENT_INST_BUF(DMAC_0_31, 0x04, 4),
 };
 
 static struct mlxsw_afk_element_inst mlxsw_sp_afk_element_info_mac_1[] = {
+	MLXSW_AFK_ELEMENT_INST_U32(FDB_MISS, 0x00, 3, 1),
 	MLXSW_AFK_ELEMENT_INST_BUF(SMAC_0_31, 0x04, 4),
 };
 
diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c b/drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c
index 9c62c12e410b..72917f09e806 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c
@@ -336,10 +336,8 @@ static int mlxsw_sp_flower_parse_meta(struct mlxsw_sp_acl_rule_info *rulei,
 
 	flow_rule_match_meta(rule, &match);
 
-	if (match.mask->l2_miss) {
-		NL_SET_ERR_MSG_MOD(f->common.extack, "Can't match on \"l2_miss\"");
-		return -EOPNOTSUPP;
-	}
+	mlxsw_sp_acl_rulei_keymask_u32(rulei, MLXSW_AFK_ELEMENT_FDB_MISS,
+				       match.key->l2_miss, match.mask->l2_miss);
 
 	return mlxsw_sp_flower_parse_meta_iif(rulei, block, &match,
 					      f->common.extack);
-- 
2.40.1

