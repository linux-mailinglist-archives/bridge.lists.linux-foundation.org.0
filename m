Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7C8602B2B
	for <lists.bridge@lfdr.de>; Tue, 18 Oct 2022 14:06:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 462C04193F;
	Tue, 18 Oct 2022 12:06:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 462C04193F
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=fxLhHC7a
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pHHZNC1Gat5z; Tue, 18 Oct 2022 12:06:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 8F54941940;
	Tue, 18 Oct 2022 12:06:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F54941940
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 455BDC007C;
	Tue, 18 Oct 2022 12:06:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 416B9C002D
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 12:06:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F363A40B47
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 12:06:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F363A40B47
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=fxLhHC7a
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q_GsVxt4B-OU for <bridge@lists.linux-foundation.org>;
 Tue, 18 Oct 2022 12:06:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A33A40B22
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam04on2055.outbound.protection.outlook.com [40.107.100.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2A33A40B22
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 12:06:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ilftpF5iM6VBJpB1jBY5d8xbRcA1OJUSe04iQdsRigS22GT+2d5jov+v8UHydgHjNBxgDck01Q25RgdAm8vSneInQKa7R+1bY07Zm5cmFR3eFqDoW1nMlRpv3r0YzMD8J2EiAOUNR2mrxJxUFolWUQ5NcebWo/mCxbHMx/CJFZoDp82HpZNYkjCv7Yhz8ECrSjN5Uqa6hjCjFaKCkB1KV9f+IIR29CU2ad4W1nP3GDy9S6IITqGuilsK/bhPAGeK/LJ5GOV5Ff6tW25a6mkTq56H4+adFWbdHFkgblA00MnzKpnBsArmELXVDHFqPXsIl9i90kMCHDs9N0GFAwuf8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MVx87k8JRsTZfy/RfwakydtHdiWrPl1mYJpENAYyq1k=;
 b=KaubimbbtiWocqx3WpfloeZ2dPLe5l3AaZdk1WYLT6azlmcf7TlLgqI2Srtp5yS8CTqUyz/Wg2s+T16RGB5OFRyjFoxaHCwIQZGt/o6hs9xKphFc73DKkLEcNsbCK87AO9mIibf49LU5pKgzyJ8i9SDhDio59eAnWiV991Dd3oduU55CJB6TRybLWsWm0Qc9bCy4CKWKSHL1HrqI5Y0X88jQv9IVd3QHfyZiwvAxgseLLY7Jraa4XtAmQB9E3vMTA+7+H1QaGO22SGLEkat58PQN9AyZ3od3Zv6XI/1EXgqjNiAPGFbxzRhjTL5uznnUhcfMkf4U0sQl8+CqlKmMHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MVx87k8JRsTZfy/RfwakydtHdiWrPl1mYJpENAYyq1k=;
 b=fxLhHC7axc1X2sGUepIEqsyQL5NqH4ABWdJHiSMJekl/xwEMovjIttj08E2rKVdvU1Iy68/pyBp0RjTi/BoIqYTjwne3iNaQ/Xo/AwKzqETVL+YQC3LpF2CkuBJNLyGXSts1NQM1txBGl9koqMmfEDZCbHmSLx5xdx1W3BLLyywFdz+rhkJ5LrGJba9TtbtmHzQvHs+ttGTaY/u/dLWu+DNTMWXxRbb/WnXEWF19bsBvY7/i+sVLwcex8lRX6FqZFeODmOqBn1Jl3w4sHyUyQjXOL9lRR7bepGJeZoWBLZ22CUu9EngerEWpdyxjG5lkr7BXKIEnN01604LmvKJw/A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by CY5PR12MB6406.namprd12.prod.outlook.com (2603:10b6:930:3d::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.29; Tue, 18 Oct
 2022 12:06:10 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e%7]) with mapi id 15.20.5723.033; Tue, 18 Oct 2022
 12:06:10 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Tue, 18 Oct 2022 15:04:10 +0300
Message-Id: <20221018120420.561846-10-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221018120420.561846-1-idosch@nvidia.com>
References: <20221018120420.561846-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR0701CA0032.eurprd07.prod.outlook.com
 (2603:10a6:800:90::18) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|CY5PR12MB6406:EE_
X-MS-Office365-Filtering-Correlation-Id: 170bf442-da41-45f3-260d-08dab1012565
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PF6U+C5tlf2sW1OLvExqWFEKD6TdAvtYChC711wVxwoxuB0UqwxVwkJKJG0Wbqc+1egYict4P3zjak/ItrgjiLguUx8SdWJ0vgc3ghI6p6xN2IOMFbkDQKkTYIseE6Mq8RdcZxiwmDBqnUR01BxeHLrwLsGktljHCTyFaRDG88InyWEFTotq4dmyZ82sKtKEF/RVmiHQgiy0rOiMqStiS4jK9NS295fPhxxFA/1Q32Ml3PC1348NQwZiwuyzpsN7ZzJkV7A4cyhobgVkET+Ybmw6SdsIevHD8Ij9PKmWEE0FNnGSNvQGD1BtwzmuxyI4Bush4pDwuq508FVWhrdXAVkLDqCXgNhK5OGJwNygBdD4NB2/+KyTitP7wx3D7rA5GuF+HbJhzAVy5qH2eNUm2kThJePhDu8ND9R2zTaoRPaSPX5Nz34zaGqwBi7s2t4/u6TLzMcbtsmqbzEo6D5N1GvYy/DsKBOWk6YSm5diSws872EQWbUYI6G/CcD/l0WdMxK+7To1WcGReElr+Lqw6fq8ec1JbdF89qeqXuzQkMflZmsI967nM2W2wO4rgccVmn3QkdobJYz8DBvUvmY8G18O6uJMa9zlrmivDyWE/mfZ4+Kh5AY+0tI2OS3VWd17c1O903mhyl4zlNSieKBsztENTe6xyHQu/BaN0J7up/7p/d5AxBgrkUyIAUgEonejUV0IQg0DjATuWVdhbhaT9A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(376002)(346002)(396003)(366004)(136003)(39860400002)(451199015)(36756003)(86362001)(38100700002)(1076003)(186003)(5660300002)(107886003)(2616005)(6506007)(26005)(6512007)(478600001)(83380400001)(2906002)(6486002)(316002)(66946007)(66556008)(8676002)(66476007)(41300700001)(8936002)(4326008);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6lyrOXEGFn9YUlsILx0i80qfL7DMizPPKphZoU2w+lzGkNTPFsN+03QRQkkC?=
 =?us-ascii?Q?S1NCUNO0ABzRv7/LsgkRi9r5/UN0E1kmwkphc8d3Z2kPgLxtzZaPzVrFYEAV?=
 =?us-ascii?Q?driZlOINl36eH+fYjVZILb4NYYLWAffMdyt5phfF9wiVkzSqKLiJT/wIut/E?=
 =?us-ascii?Q?pxtn4gu2iqX9fzAXtDo9jbYbVs3+LdPrM4+PF7Fzp0MKXpIubf9lFlu2Op8G?=
 =?us-ascii?Q?/+dNm2km/4HogeHL+TtbkPBgZThRO8vvbkmQjH03DjDc4vkK4uJr6kpqq6Fn?=
 =?us-ascii?Q?MP9qvSkTQ/Q4QWeGkTR+iBWoDIPeEJqD7eA72HGsl1mI6QZNtX8Y4xnIW7nW?=
 =?us-ascii?Q?MOIZpxVctPVqfBLTN/qd0ihpwR/aIpu8KyHzgQAG+5DZmvjKHXfHPYnzp1Ik?=
 =?us-ascii?Q?+FL5c2n9mVDTa1TI4d1uif7nsSbeIuSHw1yCZldUiHUXA+jRwvCa13J9Ob1l?=
 =?us-ascii?Q?VQY7wZfMqcutVecY1/RYUYEsM/uB1RbQX59zbhUY7ALukhE/XB/chb/SI1TM?=
 =?us-ascii?Q?59iE1pR1EQhsXVpoPE0DGcHCzPFdwQWRxCWJ41s78/ui3oXIoUL07Z44fj7D?=
 =?us-ascii?Q?ct5HPmLR3Qoa8bRicHfmVpKawLoO7tno9ftq6CIV5112Ygy3we/uAIaKBVnA?=
 =?us-ascii?Q?1C3ZmH7fOdbLsEu8OUc+q9pR2iGM3o8xtSVLw7RQJDDPV/ULsVn4vjLNNPXP?=
 =?us-ascii?Q?l4zopF47cBoYZFIdDSjd/6LwEcNNNktH3b0qvXxKtbRdf81YCwRmCxQIdJTR?=
 =?us-ascii?Q?MbCGHUbFzZBMMJPf93QNCQyhVF4y2PSaWmMw5WFY1oC7YtcaeMkqi3Qv0o8y?=
 =?us-ascii?Q?FGfkGfwqLTkvnmRO7p0MZZkk9UJ/FHR3nLRQEKRLcWSLQcSoXa5dpF2pdIDR?=
 =?us-ascii?Q?9wk1PYxzUVDli8ifaTvm666mfYe2yflMWuP4QiNUnBQqXMhm63cR+LlublSJ?=
 =?us-ascii?Q?Almh+1OUJQWKcZG7ixiwyfoieFAzOtaJm7RUtg6jEYd6FWZjAk1wHrGSSxO2?=
 =?us-ascii?Q?1nucPpwXRk8xlGZL0dUIQon+zrwYMjq+ftVgPwFSqR0oWW9Ukfaq9GRi89iE?=
 =?us-ascii?Q?jKmsst9j+4o7PSzNLNHevy4rf/8NW8kAZOgSjKBz9JCBJYgn7LNzDC9J7x91?=
 =?us-ascii?Q?HpAoQyTYoHe9FCx6YOTAPpeoZwFisH9ZtThr4/m0d8fSKd+6XOO7R5T3CGBN?=
 =?us-ascii?Q?U0Wz5jlOjP/U1sd1gitdH+YsJKfvka/Kz7yZ3WPJIscsOJMf0AH6gEhhdY6L?=
 =?us-ascii?Q?V1PaqHYLVzv13hNtYOI28iUEtpGuAtLi/PPNX3tFBJCYIaXovttcBIFgBk+I?=
 =?us-ascii?Q?RrQVqVIRCEgyiKB3r35VjsQu914CIsIG06kG+mcxRJrEJxbNoz2L7LDC9dJg?=
 =?us-ascii?Q?/K8hMsjNAWWLkMqXcJ+xpwniIQk1w/+BXn5j4gYJaliJk/RuKjfd938nUgp9?=
 =?us-ascii?Q?Zh5lI6evD2O3068u+UQ0r8W5p9H0MbC20GlzGwi9dN4DDAT1R5BztXo/cIjp?=
 =?us-ascii?Q?owwilvafHhtRONTKSHvgOn8RtG16XJYQ3e5Ok1m63WOUkh5LPVwQpBb26nZO?=
 =?us-ascii?Q?NWeigHNe0wbHGnHMuJmEPQ1z9RyQ6faV57nWlcu8?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 170bf442-da41-45f3-260d-08dab1012565
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2022 12:06:10.7910 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tm51hr0Vj5CRxnzxzHgTRH+rqxO2Xktlb21mii/Mq32/l8ReyVa4uilSgc+lVyfjvdnQsLlxtw5Rg9YLtH82BA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6406
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [RFC PATCH net-next 09/19] bridge: mcast: Do not derive
	entry type from its filter mode
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

Currently, the filter mode (i.e., INCLUDE / EXCLUDE) of MDB entries
cannot be set from user space. Instead, it is set by the kernel
according to the entry type: (*, G) entries are treated as EXCLUDE and
(S, G) entries are treated as INCLUDE. This allows the kernel to derive
the entry type from its filter mode.

Subsequent patches will allow user space to set the filter mode of (*,
G) entries, making the current assumption incorrect.

As a preparation, remove the current assumption and instead determine
the entry type from its key, which is a more direct way.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 net/bridge/br_mdb.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 850a04177c91..dd56063430ed 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -857,17 +857,14 @@ static int br_mdb_add_group(struct br_mdb_config *cfg,
 	 * added to it for proper replication
 	 */
 	if (br_multicast_should_handle_mode(brmctx, group.proto)) {
-		switch (filter_mode) {
-		case MCAST_EXCLUDE:
-			br_multicast_star_g_handle_mode(p, MCAST_EXCLUDE);
-			break;
-		case MCAST_INCLUDE:
+		if (br_multicast_is_star_g(&group)) {
+			br_multicast_star_g_handle_mode(p, filter_mode);
+		} else {
 			star_group = p->key.addr;
 			memset(&star_group.src, 0, sizeof(star_group.src));
 			star_mp = br_mdb_ip_get(br, &star_group);
 			if (star_mp)
 				br_multicast_sg_add_exclude_ports(star_mp, p);
-			break;
 		}
 	}
 
-- 
2.37.3

