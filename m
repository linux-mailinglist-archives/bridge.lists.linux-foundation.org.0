Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E416E6E7E5D
	for <lists.bridge@lfdr.de>; Wed, 19 Apr 2023 17:36:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EDF1B42021;
	Wed, 19 Apr 2023 15:36:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDF1B42021
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=AAn7SjR0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uBYb2DURe5ae; Wed, 19 Apr 2023 15:36:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 2239242019;
	Wed, 19 Apr 2023 15:36:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2239242019
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CBFEEC008C;
	Wed, 19 Apr 2023 15:36:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2E2D2C002A
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 15:36:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EFC9842A92
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 15:36:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EFC9842A92
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=AAn7SjR0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LfemgljdcqUl for <bridge@lists.linux-foundation.org>;
 Wed, 19 Apr 2023 15:36:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4C53A4032A
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on20606.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eaa::606])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4C53A4032A
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 15:36:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J0fvnMB0kv7+SpslAY2k14Apl5PS6T2BCeMjCWLgcAszjHzmIuQqRHb/tA3L9zvSKTLPMz+qJBw9LIRDRVbLyaxIGYGNGc8RAvBZ+nBjZWvmBUMNR3IocHsH+AB5wbPXHI9UsXv1b6rNz8yjLTl3IbfQo4Cq1ZebZciH1L3ibdzYC3NV+WVuIqkimTHKNq8sLMfDFyX8jO4Z4CyZ3l679flZZNrkdlwytqQGU5owLvMYzz/GBwP8idtcWueUMc3hhJ6/VUu73FTG0iU6x3BDBdzXois8ZI2AQ4YQD+DwKAT1Hp+6SRemy64V+QnCgWVNILZVJ5b42idUXaLKgw/mjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=06zjrbJ3kSp1VCxEQXzom3vWayo3NvLF0pBiTvOiepE=;
 b=HPaTFp/c9F1n3LBGcfKkyKcO4RXRdR9EoBXlfL96vXflrKychoxou5pq6PYxt9iiLXjJwT53iql9s4p5ig5jCBqIh34X0xyDVKosW56buI5nS904BviUaIsR8lAL+C6S4FTcZox9CaFmwg61GapszBVYHQN9f60odAb1huCaCDlejk9s+APfg8HhkWR7AgxIT3GmeBIbWiegjeje5fIopAcmaDND65njzzaoKk0qMUchV/ePmt0f84suoikYdu/Bs7PvsIjMnRG2zO2uMRpKybUjv8FSyj60X4DWa0Rnd1h4FvM8him+rmaWs4rSeahKL74CuGKShxUPPE7CngSTGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=06zjrbJ3kSp1VCxEQXzom3vWayo3NvLF0pBiTvOiepE=;
 b=AAn7SjR0kyhxt2tUHMedlxWOXykYbj8TxtFs/vjCKtrs6D78UqBStGOnjSq3fiQtADSEQa3/zZhW7i/xFBYA6bmslzknf1v1lmE1RuKuzvtFZaHcywgTXtim2xTPyR+IZKlVX9njsaKgIIn4i5pgqAJsG244xNbdcU7jGYTLDqRF4iMRAvk8chtp6+NtXEs1YVQ4YCvcJ8YIV0f4VlMiDBjrvMiALDEFr/6zURvlwYHOA/sIqgzkyYp320EsnlQ4q5XutdhOKU0AsWpOWPsY98fCeWxTjxdTJbrI0pabNsgp5m9z//cV57WE4uJ6xoEjBqZMgcgvooUCINGgzloUxg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by DM4PR12MB5375.namprd12.prod.outlook.com (2603:10b6:5:389::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Wed, 19 Apr
 2023 15:36:02 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::66d8:40d2:14ed:7697]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::66d8:40d2:14ed:7697%5]) with mapi id 15.20.6319.022; Wed, 19 Apr 2023
 15:36:02 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Wed, 19 Apr 2023 18:34:54 +0300
Message-Id: <20230419153500.2655036-4-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230419153500.2655036-1-idosch@nvidia.com>
References: <20230419153500.2655036-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1P193CA0003.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:800:bd::13) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|DM4PR12MB5375:EE_
X-MS-Office365-Filtering-Correlation-Id: f957375f-2ad5-4a3b-9a59-08db40ebc848
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bEByzWldzMpaMo1Jdc5wqB8gBr8d71sky6PniiOWcVqe5Jjm2S47yp7rmFpBSbhoK8kWjmrJEO1TruWs7FxkUFe0wYrM7uWYx8tVxMLEQO/AqKm4zcxIK577uWYcLF5I3d8u3mmqGxGvy7/XpSl1RAUXz/52d22+V3MofUrGz+94jImvsXNz8LqJORwFjChGhzxJeJH87DyBnlgRPN2ZXWfdeHmrt3dHdU2TqM3UYNLmELTuEj/MA9wRPCr/frou0QpnA74/5EEmnzoaRTSJAgjtg2bVnp7GDV6/tzlWonkbaxBCaL3QBlko8amIpK6EMH6JqCuye+tW3F68mXNWZ5l6XZtbBW+W8h5hhX1B6TF34wx4R4bXLUWe/P6DnAPlmbn3rJcFUfkYDv4eSGomeT3W3yzPmNbiaOj9bC7bZ/HrCMSxSZSslZK4tNmhJBR3vZ0UmPFiqDBxbVKzV/efWxdJQU6UOIYvF/BwDKNp2KKcntGto3g3Z4tlgKop+qTPdy1v6p47kbnOLe/l7NNyeQPx2FBewQmR8u2MF9UZOeYi3QOWYhpqe5sBwGOxBQXe
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(396003)(346002)(39860400002)(376002)(366004)(451199021)(5660300002)(86362001)(2616005)(107886003)(83380400001)(6512007)(186003)(6506007)(1076003)(26005)(38100700002)(8676002)(8936002)(478600001)(6486002)(316002)(6666004)(41300700001)(36756003)(4326008)(66946007)(66556008)(66476007)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uB22lldNcVcxtcHC+0TjDZw6E09UBRnAtmIKhK/qjmAjY84MpmyXsveLeaTD?=
 =?us-ascii?Q?MnxfGKcZ8ekeuRugKBqT3+aH963qRd8Bzcz5FMYzJdM2OFqOlpUlqH0iGdxI?=
 =?us-ascii?Q?cWL9UBEoXtDXlnuplL5BjFkAwIFK70PZP2TN26weRSK1UOyCYYORIebXS7hj?=
 =?us-ascii?Q?BgqdkYoD7yIJx5FTWfXJVHXCSGPsBNoZ+VgmBP4LjbO9U1aX90Y70uPrEiA/?=
 =?us-ascii?Q?K0mvxRcD4wAU3CcBg67Ix+WQ9bm14JlJajgRKDq5SHMdIfk4Ra594UbZGFPI?=
 =?us-ascii?Q?mF8+iTC0wwBiS/1z8Q9DS8A/icEF0R6XKnWCSeEXJ924vCRQlt+HduidITbl?=
 =?us-ascii?Q?o/QQ8Cxlvts2IYWowVVLpKazYHuhKFlasV+JfQwM1Bkhq6eXc5QckqJARRJV?=
 =?us-ascii?Q?mEurMZ/gkzUiXbuw04ESbGGEbB5JCSAEbyFMjeLfDfzkPbhq4BTX6R7PEm+8?=
 =?us-ascii?Q?RsENjOT1oJ5srG2gRKGk0McGh9hDBRz7Ix/zb+gTJ8BwhgO2RbLmUTxz4utr?=
 =?us-ascii?Q?xK0lpnzVbQOMxfIT7yeqFGMTIdK6NB4to6t9lPMsEGSwi/uA80RDGwB1ZQYp?=
 =?us-ascii?Q?xwMMRfaDSmOCueiBQt88q6Teu35h1WX4VjabTqi+hV/zMUr0Cq9VB0GdNMCM?=
 =?us-ascii?Q?2r8zmwPcctlbIGVLQ119vsg8obmlxtKvhWbnE/jHVK5MGWR1+63h8HNTHcL7?=
 =?us-ascii?Q?ORyNfGCf3KaQ31JGc42FMVnXEdQxlyrJoNiT4PnuCBLUex9UzwBvoYppqOLa?=
 =?us-ascii?Q?ex8e8QeXtRoAFwTkNpKY8K2dPmBSYAHJPQ1EuQn+/QgnRLQNXuxwk66NWhxu?=
 =?us-ascii?Q?rN+xXiVUYpQ/5wkTsJmQ2x0tjUAOfbMqGJem1oqOWBDkUf1FgLpaeIzcAa9l?=
 =?us-ascii?Q?j5AZo46HaOiG2KHXYVZ7rmlVQkHIWurOh85EaDRj5zC5PI6GvD+WFH+sDLQ9?=
 =?us-ascii?Q?plB//r06ZUT2klx+gbRziFVxwFZkxtU8C2RQGjyXf0dqHk6ia+f9M0coGjMQ?=
 =?us-ascii?Q?dacinQuIG7QKo/XLCGo5FpHjbI0JU6JabRNDHg93M+AhzNT1ft25xlgnw/rs?=
 =?us-ascii?Q?oSmetyWXg2ZPNg77Sac8smFUZTLijMj1opc5UClxVIu54HUDl8bUD9xoIvbB?=
 =?us-ascii?Q?Fs+kuZOx0LNIXKxTHGRVhotkZk1coQuLLXbqdseFpBT4As4HHh6XiT/O6MQV?=
 =?us-ascii?Q?Z3IdLmy+pLY1zMyV9/5AInhVSRRGkgiedAw5y2NcHONFX/+vZsJUjOw2xCUg?=
 =?us-ascii?Q?HVEvdPI1n/rDE3Y5ZadXUUrvN+K9ONrrB8jNxlhkdf89POspSvDu7ak8EvzR?=
 =?us-ascii?Q?b63fBWWAXpuHO3MTo2LfjNli0uZ8oba5DUFHZ04vptAqjVlE3oaOgIYgN+PT?=
 =?us-ascii?Q?ck5rJbgW48MtGraj2228cI18iTva5dkc4i3SAfXJBIKgDvkPQREzz7hHsVbY?=
 =?us-ascii?Q?ZiuX8si7T6QKqwkcez4oigIAQ2L2aS/FexDINBiaqXm+g3NvYmzZ5ZZlg4ID?=
 =?us-ascii?Q?c0nCDRmAAQ29Y4vVHW21j3RYG8tSHzJ8thrIXsqAfaBZzAWZ9txNXfbTB7kr?=
 =?us-ascii?Q?25no4exQLPyaBfx4h7a4gJht9qoHqNDU7jaxgjTB?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f957375f-2ad5-4a3b-9a59-08db40ebc848
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2023 15:36:02.7507 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5PVKPNpSWV8iRyFENEc0e0KQlN8OnALmSanjkLNSkOjsIjnGuC2Cxm0SMPRlPa9I/3CVM5881TWg4qjqUk0Afw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5375
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 3/9] bridge: Add internal flags for
	per-{Port, VLAN} neighbor suppression
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

Add two internal flags that will be used to enable / disable per-{Port,
VLAN} neighbor suppression:

1. 'BR_NEIGH_VLAN_SUPPRESS': A per-port flag used to indicate that
per-{Port, VLAN} neighbor suppression is enabled on the bridge port.
When set, 'BR_NEIGH_SUPPRESS' has no effect.

2. 'BR_VLFLAG_NEIGH_SUPPRESS_ENABLED': A per-VLAN flag used to indicate
that neighbor suppression is enabled on the given VLAN.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 include/linux/if_bridge.h | 1 +
 net/bridge/br_private.h   | 1 +
 2 files changed, 2 insertions(+)

diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
index 1668ac4d7adc..3ff96ae31bf6 100644
--- a/include/linux/if_bridge.h
+++ b/include/linux/if_bridge.h
@@ -60,6 +60,7 @@ struct br_ip_list {
 #define BR_TX_FWD_OFFLOAD	BIT(20)
 #define BR_PORT_LOCKED		BIT(21)
 #define BR_PORT_MAB		BIT(22)
+#define BR_NEIGH_VLAN_SUPPRESS	BIT(23)
 
 #define BR_DEFAULT_AGEING_TIME	(300 * HZ)
 
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 1ff4d64ab584..b17fc821ecc8 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -178,6 +178,7 @@ enum {
 	BR_VLFLAG_ADDED_BY_SWITCHDEV = BIT(1),
 	BR_VLFLAG_MCAST_ENABLED = BIT(2),
 	BR_VLFLAG_GLOBAL_MCAST_ENABLED = BIT(3),
+	BR_VLFLAG_NEIGH_SUPPRESS_ENABLED = BIT(4),
 };
 
 /**
-- 
2.37.3

