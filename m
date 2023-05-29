Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0709B7148D7
	for <lists.bridge@lfdr.de>; Mon, 29 May 2023 13:50:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F40161287;
	Mon, 29 May 2023 11:50:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F40161287
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=WTYUZqsg
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GGtQWA75g_6D; Mon, 29 May 2023 11:50:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 064F261295;
	Mon, 29 May 2023 11:50:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 064F261295
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C8BCFC0089;
	Mon, 29 May 2023 11:50:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CE7D6C002A
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 11:50:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B5AAF61175
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 11:50:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B5AAF61175
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HistpjZrYN5W for <bridge@lists.linux-foundation.org>;
 Mon, 29 May 2023 11:50:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECDFA61287
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on20619.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe5a::619])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ECDFA61287
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 11:50:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H1l3kfZ81HG6KRtfpw2XP2MTjosFyGwDSFn0km8O59s4RaTSJifgCbh7DUbHtfG1qj/MIbPa87D+9tWWgvzWQ8I7POPSTGScyY9TwbpNzYfV1r+ahIqJ2YWCtPd1BG5A/KA0gwXJUotVj8lpZs1QZPFGVj3tMSaINKjGfM9GNUM+stzZR2wNwL2d4AQx4BbPoAMSd3O0HzV1Enjpm68voab7pU/z7fwqWvMg4ySkxoFoEMKKwmDAeoJmuVaPLNjz3g7Z379q/ASEymqExrYd9RfBN99Wv+pwf6EoN9QGDG23PtPnxu1G8h25GShatZ1h1tlfXw5TgKUKIfHMBRIa/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x/ztd8jNRxGM5OdrjSvsfbO+TrQBojFJ2clLMbUT4DY=;
 b=TzUCWFPQXdB9pzb61euwWkp+wb0sg+MK0uOYw3iNGJ0fGB5PMAZ50CUT0NJ2S7lDDgI7rMxpZAfh2zn5Rf+FxgN4IILx+FRMUGCb2XO2N5kM5s1t08Atb72q2SJKtjqcwvmnldGJfZHAZDVHk4qlbe3oZTCYOFrZanlVQpdyqr/MabVzAUBKZLLVc1tqp5+SsbgRGKC5nhUg4nrC+OU1vfzP/nOzlucjkwaYv2U2VEUZFgvfsZfW7RRTMaxtnLRFLbDQCeCAlH3TSrQGAX7gDTaqNw96/E/Lpd4/c2ZgMPnhZUOgvTR+EUm2JAzK7e4GJ92q7+5lPcqCCxQu/+Xr4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x/ztd8jNRxGM5OdrjSvsfbO+TrQBojFJ2clLMbUT4DY=;
 b=WTYUZqsgch0ALyr/KfzdP0KPm49cAY9kHJ6dRY0EmgPynTCPuVcDlJEwwGQj7SaMWIPKyf5Gu9Artmfjv8Fi43yp+/7i0SvPzE7sW/t2u6XxOZ6L57V4Bax7IOwexwHfvFgoJRUnDECAKHbY50/8KkcEfluH5wFJw+NM0NvSbeE7n0r7/u5gZhZmKeOgVF3emkb/QYDm301fvo8E/7ke0/wAUixyCRofv8dguRf4xL9DnkT3T4IiFUBiBgcTdZvTDEoY84uy7P6G9w8z9xF90dWIMrRIOg6mN/9ZUHAflAg0PUeGvm9i3ukxwU9xjvgKjIeyNjh7dMKJy+3DNHsbyw==
Received: from DM6PR06CA0070.namprd06.prod.outlook.com (2603:10b6:5:54::47) by
 PH8PR12MB7279.namprd12.prod.outlook.com (2603:10b6:510:221::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Mon, 29 May
 2023 11:50:05 +0000
Received: from DM6NAM11FT064.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:54:cafe::cc) by DM6PR06CA0070.outlook.office365.com
 (2603:10b6:5:54::47) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23 via Frontend
 Transport; Mon, 29 May 2023 11:50:05 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 DM6NAM11FT064.mail.protection.outlook.com (10.13.172.234) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.21 via Frontend Transport; Mon, 29 May 2023 11:50:04 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.5; Mon, 29 May 2023
 04:49:48 -0700
Received: from dev-r-vrt-155.mtr.labs.mlnx (10.126.231.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.37; Mon, 29 May 2023 04:49:43 -0700
To: <netdev@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Mon, 29 May 2023 14:48:31 +0300
Message-ID: <20230529114835.372140-5-idosch@nvidia.com>
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
X-MS-TrafficTypeDiagnostic: DM6NAM11FT064:EE_|PH8PR12MB7279:EE_
X-MS-Office365-Filtering-Correlation-Id: 326c69ce-8ff3-419b-221e-08db603ad7f6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BPQ5gHftNEHnJmQnVDr9ZOq94D7g+D5QcUv3+8VxYYkA8bvWcjzUASl6wezTbqpgYQ2hqp1wRl6Mj8lA+d4z1eRh1SLA8r6ULLQD3AWfrnADDER2bQcwkyDp4q6bJ139JXL+nV/MXhuCOhM0j02SAespuTfVzWYna+YD48JyOkNKsVwjkBqTJCm6mC3ROcxTWF9VMel4f3oaly+OBi2fL4Sa4ssKrH3Ed/F8HPwb2MuocNoW00lV2MJ1SEV6tLb3AOM4Jp/PJzFGAJ3v4M8fWtPrMjQKrJqIu8/+FExRWM/qCMtRdByWbAU/PkxjTOAjRcKjMW1Nk/9A6SLapu/V7beiAfE1ryvh2ykKaHQcoRzq86ZAtDeixJOsfkvgSUtl0cOXGKUe/zMOz8ymQC5/JOYY6fojSx4RfLAaeXrT8Ojb1FUyJ/Kb/tlquXrdQrsEZtpnsNtJCC+UvCDMobioKF+pKGpQGp8jusVviNKgKqw0BK/ZKpG9s7LZmrck7A1MY312QUoLelZYyvQ/318d42Syk9mQGBYlyQFrcZq+3l+ujiFbcjpHd45buuS8mqslch9nYof+DoH0w1FLd9WxIb+8SSlJCea4A6eclTSBGohFcSkhBSC4MrDf9qfic42aDGhmtG6VHhSeOUtKVYf2T4UKfc40gJLYJdCHg8PGNH/eVf5afX7gNW9+ALj48PKHeJXv1QuZ8MaXgBth0oHQJmqm7xkZdBefh9HADI082v+btmw/dJ0NcI7LxUP0D3yA
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(136003)(39860400002)(346002)(376002)(451199021)(46966006)(40470700004)(36840700001)(107886003)(36860700001)(26005)(1076003)(41300700001)(6666004)(16526019)(186003)(47076005)(83380400001)(426003)(336012)(2616005)(478600001)(110136005)(40460700003)(54906003)(70206006)(356005)(82740400003)(4326008)(70586007)(7636003)(40480700001)(316002)(5660300002)(8676002)(8936002)(7416002)(86362001)(82310400005)(2906002)(36756003);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2023 11:50:04.9252 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 326c69ce-8ff3-419b-221e-08db603ad7f6
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT064.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB7279
Cc: taras.chornyi@plvision.eu, petrm@nvidia.com, alexandre.belloni@bootlin.com,
 jiri@resnulli.us, leon@kernel.org, vladimir.oltean@nxp.com,
 razor@blackwall.org, roopa@nvidia.com, claudiu.manoil@nxp.com,
 Ido Schimmel <idosch@nvidia.com>, UNGLinuxDriver@microchip.com,
 edumazet@google.com, jhs@mojatatu.com, xiyou.wangcong@gmail.com,
 simon.horman@corigine.com, kuba@kernel.org, pabeni@redhat.com,
 saeedm@nvidia.com, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 4/8] flow_offload: Reject matching on
	layer 2 miss
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

Adjust drivers that support the 'FLOW_DISSECTOR_KEY_META' key to reject
filters that try to match on the newly added layer 2 miss field. Add an
extack message to clearly communicate the failure reason to user space.

The following users were not patched:

1. mtk_flow_offload_replace(): Only checks that the key is present, but
   does not do anything with it.
2. mlx5_tc_ct_set_tuple_match(): Used as part of netfilter offload,
   which does not make use of the new field, unlike tc.
3. get_netdev_from_rule() in nfp: Likewise.

Example:

 # tc filter add dev swp1 egress pref 1 proto all flower skip_sw l2_miss true action drop
 Error: mlxsw_spectrum: Can't match on "l2_miss".
 We have an error talking to the kernel

Acked-by: Elad Nachman <enachman@marvell.com>
Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---

Notes:
    v2:
    * Expand commit message to explain why some users were not patched.

 .../net/ethernet/marvell/prestera/prestera_flower.c    |  6 ++++++
 drivers/net/ethernet/mellanox/mlx5/core/en_tc.c        |  6 ++++++
 drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c  |  6 ++++++
 drivers/net/ethernet/mscc/ocelot_flower.c              | 10 ++++++++++
 4 files changed, 28 insertions(+)

diff --git a/drivers/net/ethernet/marvell/prestera/prestera_flower.c b/drivers/net/ethernet/marvell/prestera/prestera_flower.c
index 91a478b75cbf..3e20e71b0f81 100644
--- a/drivers/net/ethernet/marvell/prestera/prestera_flower.c
+++ b/drivers/net/ethernet/marvell/prestera/prestera_flower.c
@@ -148,6 +148,12 @@ static int prestera_flower_parse_meta(struct prestera_acl_rule *rule,
 	__be16 key, mask;
 
 	flow_rule_match_meta(f_rule, &match);
+
+	if (match.mask->l2_miss) {
+		NL_SET_ERR_MSG_MOD(f->common.extack, "Can't match on \"l2_miss\"");
+		return -EOPNOTSUPP;
+	}
+
 	if (match.mask->ingress_ifindex != 0xFFFFFFFF) {
 		NL_SET_ERR_MSG_MOD(f->common.extack,
 				   "Unsupported ingress ifindex mask");
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_tc.c b/drivers/net/ethernet/mellanox/mlx5/core/en_tc.c
index e95414ef1f04..1b0906cb57ef 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_tc.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_tc.c
@@ -2587,6 +2587,12 @@ static int mlx5e_flower_parse_meta(struct net_device *filter_dev,
 		return 0;
 
 	flow_rule_match_meta(rule, &match);
+
+	if (match.mask->l2_miss) {
+		NL_SET_ERR_MSG_MOD(f->common.extack, "Can't match on \"l2_miss\"");
+		return -EOPNOTSUPP;
+	}
+
 	if (!match.mask->ingress_ifindex)
 		return 0;
 
diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c b/drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c
index 594cdcb90b3d..6fec9223250b 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c
@@ -294,6 +294,12 @@ static int mlxsw_sp_flower_parse_meta(struct mlxsw_sp_acl_rule_info *rulei,
 		return 0;
 
 	flow_rule_match_meta(rule, &match);
+
+	if (match.mask->l2_miss) {
+		NL_SET_ERR_MSG_MOD(f->common.extack, "Can't match on \"l2_miss\"");
+		return -EOPNOTSUPP;
+	}
+
 	if (match.mask->ingress_ifindex != 0xFFFFFFFF) {
 		NL_SET_ERR_MSG_MOD(f->common.extack, "Unsupported ingress ifindex mask");
 		return -EINVAL;
diff --git a/drivers/net/ethernet/mscc/ocelot_flower.c b/drivers/net/ethernet/mscc/ocelot_flower.c
index ee052404eb55..e0916afcddfb 100644
--- a/drivers/net/ethernet/mscc/ocelot_flower.c
+++ b/drivers/net/ethernet/mscc/ocelot_flower.c
@@ -592,6 +592,16 @@ ocelot_flower_parse_key(struct ocelot *ocelot, int port, bool ingress,
 		return -EOPNOTSUPP;
 	}
 
+	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_META)) {
+		struct flow_match_meta match;
+
+		flow_rule_match_meta(rule, &match);
+		if (match.mask->l2_miss) {
+			NL_SET_ERR_MSG_MOD(extack, "Can't match on \"l2_miss\"");
+			return -EOPNOTSUPP;
+		}
+	}
+
 	/* For VCAP ES0 (egress rewriter) we can match on the ingress port */
 	if (!ingress) {
 		ret = ocelot_flower_parse_indev(ocelot, port, f, filter);
-- 
2.40.1

