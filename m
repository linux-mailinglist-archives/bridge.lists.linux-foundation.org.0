Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CFBB69011A
	for <lists.bridge@lfdr.de>; Thu,  9 Feb 2023 08:19:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D692840881;
	Thu,  9 Feb 2023 07:19:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D692840881
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=KG3tMqeZ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zr_8K66Je0mP; Thu,  9 Feb 2023 07:19:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 44DC340883;
	Thu,  9 Feb 2023 07:19:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 44DC340883
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9C70FC007C;
	Thu,  9 Feb 2023 07:19:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2C570C002B
 for <bridge@lists.linux-foundation.org>; Thu,  9 Feb 2023 07:19:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EE36081E49
 for <bridge@lists.linux-foundation.org>; Thu,  9 Feb 2023 07:19:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE36081E49
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=KG3tMqeZ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hVe8PObeVvMk for <bridge@lists.linux-foundation.org>;
 Thu,  9 Feb 2023 07:19:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BED781F85
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on20623.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e8a::623])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3BED781F85
 for <bridge@lists.linux-foundation.org>; Thu,  9 Feb 2023 07:19:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fR4jjdT0mz3uSl4d3oqh8TB8liMIdGtS3RemhzBt1aEHOTwA2bpWBn63kwjH7kBLr3xdhwY0/ZfozYUrMh63cm6Dbh5eaWa6yaBpjKHpRKOYxAcivVNPnmBSGu+/0x4/oAbshf2qGV5qiM4i1Ny2PMxG/uny2RIAemoKvIEKxHqLhr4QKZGHajVgpbYG9wJxlmO/JusqHVwuDN+Ad2O5df6UKvFLyAPjgPKKsCG7OSzHmZGcXjf1jc7PqdYRZZja3ZJYdTAtJ2br9MAAM+OByGBNX8cO+2x1WXa4qFDJSOT1cunH1sGsPQPA5FPgj5rIzGwA+fd+eOnHWmSh47Jv+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JqHB7dWSGsKpXgwAQVQWWEimvj8FozTynhhfekfxDV0=;
 b=WJjiPuvJFy/Huo4kABTiP+t7316Ehl3r3D3t3UoaWERyA1Dzm7lAagVOURFSagvzmbmOTIfpzxQk0ZOvBVM0fdzdJ1zaDPzzUJRaU3GBOpn3s54XM9Kwq5LyYQLXBOIC3n6nzVZLZHwsXpv+qbPULUSLeH258LtAlkCZjBIQfdVd9SfwHU1l4s89fH6oLxXykQhdmFm+2IifHErjB9+f96vMLxoCyYIH1rjCV4hhB962AJrgAeGqEES6yLc9Dy/lKw3cSHnYPTB4jRECsnldLmn1a+HDxfR/UFI+mhyrwBBjbwhlyFyPnp40lmzs7/rYWU+HPDlASpAJMGz/Y3q9Xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JqHB7dWSGsKpXgwAQVQWWEimvj8FozTynhhfekfxDV0=;
 b=KG3tMqeZmADTy4PKT8bM+194p9Ko+bhpCrWsbguW/KL8pxBA6IfUYNilkmfYwLG+a9vKyYjK3VMF2/dPRsbn0KSn/3PoLqW8rAEYpLYfDzH2OqIV27xTdAX8TUHiHtiMk82zmNru/Vb7tgxLUDsUoUpZWiSEVhQNvOXCHRpJDSD0iUjrMfidw8jhorPz/CU5AEOi94od0YGv3F5QcPdcNU4ny1WaXeA3825x4SmAslQMIEBC1LNgW+Ry9dqtO5Z1PlFpWMn6TJM+YsfruN5EBSNSH0nPrKPoTYCWEbM456NNIAjDVUGzCDLMrH+YF1g/5J89Ifye3uLnkhV8UugxMA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by CY8PR12MB7755.namprd12.prod.outlook.com (2603:10b6:930:87::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.17; Thu, 9 Feb
 2023 07:19:32 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::7d2c:828f:5cae:7eab]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::7d2c:828f:5cae:7eab%9]) with mapi id 15.20.6064.035; Thu, 9 Feb 2023
 07:19:32 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Thu,  9 Feb 2023 09:18:49 +0200
Message-Id: <20230209071852.613102-2-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230209071852.613102-1-idosch@nvidia.com>
References: <20230209071852.613102-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR09CA0170.eurprd09.prod.outlook.com
 (2603:10a6:800:120::24) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|CY8PR12MB7755:EE_
X-MS-Office365-Filtering-Correlation-Id: fa04dc4a-bbf1-4cbb-e2d5-08db0a6dfd63
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JFIxnX4BdkUuZKhv0dPB5vRYXRmI4Mxn1M01ByQvPbfq6O54EQZA3KlkKX2N8aoldpcbf2Vl9/GbAUK7MSMaKzR7DdszUxKth6OMX7re/FAh5zlRgLpSA/BFr1aghNmG7QR3TRpz2O5vWBH6qJbQcGj879yVxL+kt3JJ9W2JjffzyakxmwZFG8bKTTFq9r6NF5SJVUKYXySsUQ2LQcedxzpmDz4LUQjUryCnlXBLwNVsln22PGXQSTAaXqiBE3fy0XrUmYT6z4FVRIZqgC7VLp11OHi/YFW6LIzqbyotgUNoCgX/owUWV6YAbpavpViRj75IySO5D75Y2Vg1RFqGqWzuDyKDXZpSxQHOGS70nSDoMdSn2Zh8eQIuCuNA4WI9kgAkyk105keEp5HCl9gldCpIumebreiFlQmV/VZyqImeLhdwjqDlvvr2zeFXnxLFFA/+Pi5ruVT/RGQ31+r7+Kf17MqrypZ53tLVmKJT/Smvfkp4xIiS/jMOaQTzv5I0bFEYIsq29OMKN5RN2kZ8PpfLwnRPEO5tiy7EsONrt38AJYpuOol+PugXeUiO+UfK/5V+gne2cITsyhyJyJ4kY7D024J0PzEtckHb0LoJgpXMvXBRJOQRd5wZrLlPt5XY0wF57fqd64qybw8UKfM91w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(4636009)(376002)(136003)(366004)(39860400002)(396003)(346002)(451199018)(6512007)(2906002)(186003)(6506007)(1076003)(26005)(36756003)(107886003)(6666004)(5660300002)(478600001)(6486002)(8936002)(41300700001)(2616005)(4744005)(8676002)(66946007)(4326008)(66476007)(83380400001)(66556008)(86362001)(38100700002)(316002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wFuMqOe1WmAT3DNLAxpWW6UcDucIs/Z7B1560gnIp3DuWtm6jf4L3bbXWYgF?=
 =?us-ascii?Q?z0M9M+jDie5Z7oOLrLuISfsXAajtlGF9TN3vzk2veGcALaW+MC8rFcQynv9g?=
 =?us-ascii?Q?tiH+fWWT2A1qySnORzLXEAVXsqTdigpxMRDjz34NgdMYpcTdGuICgjNUePrq?=
 =?us-ascii?Q?Y+n3LgRSzr0AuWl1OA5PZsCSPVsRrFkKO9rgEf3++E+caCieDJ791h6AfqLR?=
 =?us-ascii?Q?hv60+ji2F+YWT8NHiQCDKroBVDYfitVFQW9rXOGn8K9VwzpZSQ+ZeDaxtOn8?=
 =?us-ascii?Q?48SRJC2cuP1a3A+9/9Immbh6gL53QhfPKEDCTtKKrjdQStCC+ci0T8tOQtJ3?=
 =?us-ascii?Q?nDwnbfYzsvKqWR6B256gPjNR3uAP3++CbILs3dD11cECPxd/R5hRkKS1XQ7C?=
 =?us-ascii?Q?JyC8DKD9JDL+jcO/KNKHKlKu4izaQSIUAkexjPfzGN/k/1mvFp4E5ttKmOWX?=
 =?us-ascii?Q?nmkx6T13oFEzawXD1pkE3jTZ3hXgemhx+wT46J2y03bLn8WNB3VjMwNiBtJB?=
 =?us-ascii?Q?Psec3dfOWRilFFgODoOsRpaMtVNkIqyiOWVCWU3NMLDw6GJ4ZLQSr/KUausC?=
 =?us-ascii?Q?WYzIPhFB4/A7bcM5uo0rIC31/O5u3yyGtYDQeSwAE8/6kEe5NwMelY6UqLPv?=
 =?us-ascii?Q?HaglD4tUTGfZdIiwRTKmtbA7O/+oB/g2H9YJp+vXYRH3HMgQ3I45sP7tPsDX?=
 =?us-ascii?Q?iE+RbKbLJJCvZvr+hAWOsax74av20DRhl61YFIrOBV9yjo4wk3jVKUnJDxyg?=
 =?us-ascii?Q?KpxH2D3sLoorIIz/wCjRXNcTvTYsk3ygbqpb+Z8e10+CZLDNFbbdXzFxIGoR?=
 =?us-ascii?Q?HFxx8lX9hqCHjgw0FhUuVvEFgSNu0kVOaL0kCem0Mun74JhCxPfii/dOA0zs?=
 =?us-ascii?Q?dwmrjVjCa7Cc7TRVYKbtvTVrtVqsdPaVpXSdVJSP0GGH7ikJV713yrkX+vvI?=
 =?us-ascii?Q?zKs97GPn/ySmiHLM9loUjZ905gG5TWC9+F6sVxMpB9eR6du9uiwcSax56jL3?=
 =?us-ascii?Q?du0qaJy9myvdL46KyzteWHp7aurZ7HR4NwDgr0KquIBB/j5osdC6QADS+rku?=
 =?us-ascii?Q?iLVW+ejaKWMW+rhzuiCA4yLt4pi4V3HVFYm2GZedYQ0Ay7koC1UG2cXsujoG?=
 =?us-ascii?Q?/IEy+kZkmRL6I8w5e28shxEL97PBDJZGsx1I8h4osVumT8JU/dRqDSIobjAD?=
 =?us-ascii?Q?aifTomq2HXlli5/dYUUWz3Jz1qdqqOteqNXvIy3F3bDg3qWjSVMZZsu1bwMw?=
 =?us-ascii?Q?WLArmQhOa+N8dghuovuZRNQToPRaCAoLLKlLWf69YNvCMbay3zzDYwm2+SsY?=
 =?us-ascii?Q?728oF47ajqlkqdog16gXnSgmka22ON7ymax8AGLIOnClaf2fpnNcN/7UTXlw?=
 =?us-ascii?Q?f1HhPNYaO73jFN2RXuchpIZTVnCiordf1bciRhW6gI8DaSwn+y7hxlBf+0az?=
 =?us-ascii?Q?98qd0tukVt9LYrJJ+kk/lNcmOOIOZuOpwkc+R6s0NQKpYSeVnVVI7AypElyU?=
 =?us-ascii?Q?jNPg9amYRJKAWOTdknaK7hC0TDjKBYyJs+NNPfCLACwNVie4zqdYGRVZ2MHV?=
 =?us-ascii?Q?H4K4Ky8/AbIr0KavPzPhDYyyOHjzakodnEYz1aAN?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa04dc4a-bbf1-4cbb-e2d5-08db0a6dfd63
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2023 07:19:32.3514 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f8D319EcuGQCSjsQ35NHf+u8hSV35PqQdipRi+sxtSyBAKIX5MPjKGNE6PJw1K36Iw4nsstmxA2qKXo3tiHb5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7755
Cc: petrm@nvidia.com, mlxsw@nvidia.com, razor@blackwall.org,
 Ido Schimmel <idosch@nvidia.com>, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: [Bridge] [PATCH net-next 1/4] bridge: mcast: Use correct define in
	MDB dump
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

'MDB_PG_FLAGS_PERMANENT' and 'MDB_PERMANENT' happen to have the same
value, but the latter is uAPI and cannot change, so use it when dumping
an MDB entry.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 net/bridge/br_mdb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 9f22ebfdc518..13076206e497 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -259,7 +259,7 @@ static int __mdb_fill_info(struct sk_buff *skb,
 #endif
 	} else {
 		ether_addr_copy(e.addr.u.mac_addr, mp->addr.dst.mac_addr);
-		e.state = MDB_PG_FLAGS_PERMANENT;
+		e.state = MDB_PERMANENT;
 	}
 	e.addr.proto = mp->addr.proto;
 	nest_ent = nla_nest_start_noflag(skb,
-- 
2.37.3

