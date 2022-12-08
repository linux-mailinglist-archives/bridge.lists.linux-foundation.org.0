Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA136472EC
	for <lists.bridge@lfdr.de>; Thu,  8 Dec 2022 16:29:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B0FB4193E;
	Thu,  8 Dec 2022 15:29:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B0FB4193E
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=alwPXdr1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DzyJFVCWUPl2; Thu,  8 Dec 2022 15:29:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 76EDE41949;
	Thu,  8 Dec 2022 15:29:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76EDE41949
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 33A7BC007C;
	Thu,  8 Dec 2022 15:29:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9F17BC002D
 for <bridge@lists.linux-foundation.org>; Thu,  8 Dec 2022 15:29:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5C7816113E
 for <bridge@lists.linux-foundation.org>; Thu,  8 Dec 2022 15:29:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C7816113E
Authentication-Results: smtp3.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=alwPXdr1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u0TMZrz3XYZ5 for <bridge@lists.linux-foundation.org>;
 Thu,  8 Dec 2022 15:29:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9990B60A9F
Received: from NAM04-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam04on2060b.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e8c::60b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9990B60A9F
 for <bridge@lists.linux-foundation.org>; Thu,  8 Dec 2022 15:29:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oAOoGNpVu6G8xFroyJ7atX2IOdih+2O/gvl2JAdLpUtg/8cgCcWey6Cahope+cAjt7HdBiBDaDaZCKTKr6IbJmsX++FNgOVaKCYs8pFojFta3rck1Luc/blh91kgw1viOha2JOkg0L37T2gYcM1CgeeEWmZJifQHv4dsKnxclMGfZ55lWy7IgVvC7PxymL2sZNmkXVSDRLo505RlKMUMlKYZWQ2C0wj/J4VDYQhN4nuntkC3QAUhhqIzqz82dHKun90LPZNR6WdAFJkVAT/hkSVbUKN1M431g/M0mFPwFOMWlcxjgg/0g8IoeIQHgr7h0UNkfz8/LjwelML3/9yAvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=01Xwoh/eJJghknkS0pyoMisV7jmbkbgBWSMvMVm8e0E=;
 b=bP96eXdQD0JJFMdKGZlbnHs8hZvhPxmoqsPZDBhtQCypdg7Cg1zecMaqpcuGuQWBaOxTDUl+BclX3tbvHJ/98j2u+u62xBuvAeUGPqTvXCEZnzK0cJlitczjNLmpuKt70wct2QdXDsKvITGd/veKnMQQrg0IY+AOboOTERIydsfFJDh3JK8YehZ9KUH50B/b4F7Mi3I+7LRSIRHHdG+y2Q2QT5Q23dmc3pm0B/VuquWRwZ17iBTon1F1BOT3O2+Tq9VmY2g592O2g3QDUVD3o75b6IH3WcKr2d059R7xZIYR05/NpTrXqszkPTc6hKvaCxUPXRZ8FFB9n4LHNLxKLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=01Xwoh/eJJghknkS0pyoMisV7jmbkbgBWSMvMVm8e0E=;
 b=alwPXdr1dOHrZh7pZ1d04Oe5NW503/xK4ZxAMLN7Zr2ilj+xOuhgT/l6nyBoLERjaTUjzM7XARILqhwxQWlxw8T9C4KtdCxSij/+N4f1QXh3D5g7aIXWj5HVVB+Z+YUIcidmI8amq7ktnrZsaYd+AKu9ZW4osv/2WVuTuZNXGVcjfQNdz4o3TQt/9urGkZjGyMFephWiR0wcZ2U4iGlkyhMzY6DgKSy2HapS+NStzuTbbI2kpi3lN7jR3QyG8KGEpNXN59NUlGGXYo7Z05SXxwgW+9DtauziGx5lwvZMjmLU4VTIxdKDjL0Gs7ZbknGKyKMvVfBccZWGfNxP25AUuA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by IA0PR12MB8207.namprd12.prod.outlook.com (2603:10b6:208:401::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.13; Thu, 8 Dec
 2022 15:29:16 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::a600:9252:615:d31a]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::a600:9252:615:d31a%3]) with mapi id 15.20.5880.014; Thu, 8 Dec 2022
 15:29:16 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Thu,  8 Dec 2022 17:28:28 +0200
Message-Id: <20221208152839.1016350-4-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221208152839.1016350-1-idosch@nvidia.com>
References: <20221208152839.1016350-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR08CA0136.eurprd08.prod.outlook.com
 (2603:10a6:800:d5::14) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|IA0PR12MB8207:EE_
X-MS-Office365-Filtering-Correlation-Id: dd23a24e-4190-43bc-a739-08dad930f786
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rtIylok8ZvoR5/SxyCSDCV1xym7Tn+wKzQ4g+zyagm2O+GisnBOlJGit688VCH3qn2ZK03Cf2hkFmpKjkARM3snCbUTlJCzdCoAVIDIikLJ/C1kNWjur2/Cv9Iksbwbi9uFgHuqIdR5DDgnQVGFt0QMxOTMQQcdWidRQ/gZrfCAegL7xZEzPyv5+5yCgjor3fJqAe/YLH7mVqcRSLPLM2ekifAVVHBaMyV10toQMjFIDIcsCDoigJoAbnfahLeNVlI7IqAZsm/WhfwtOQYx16W+t+Zv6xqEZvV5PwWViF6uPslaiKccFhxY52Fqss6KfGACj+mKOl49BinAjn1siQI65J7aHJ/LP8/g+df9TaHxz3SZ1P5Wde2tNFgwCOOIKgTwq9fVeCYLSaw9zp7yHi50qEee0GIk4lYMy/XYB5qNuh4GV61HnH790UXBjaBjCJFo1mLhhXVsEbuIVe275qbWP5JNJj6QzYNeA4W6WGlMkPh004ax0xo7v7CKJxSOC3XwpESigwlVSlM/QYVsJBfNxcz0D4xg/kUgHA8qErHETvpsxeLzutRL8I8BEZP2gvQQc/jLBu9ucb3FyLrbesnFcGkxG3BpyHKxHPBkXc7ixkT0tF2nXp9yXRAGIk2smcS5ke2fQbiLIPokkegynPA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(136003)(396003)(366004)(39860400002)(376002)(346002)(451199015)(2906002)(83380400001)(41300700001)(36756003)(1076003)(186003)(86362001)(5660300002)(38100700002)(8936002)(6666004)(316002)(6486002)(6512007)(478600001)(26005)(66476007)(2616005)(6506007)(107886003)(4326008)(66946007)(66556008)(8676002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VHa0yGDa0x0tQxKsPs4Q5WDc8ZTFk7FxcA0o3Dc+mHSKcW+2hEB7GDr7nm/K?=
 =?us-ascii?Q?tdM0ChwyAKWiMB4bwMPxz5w8zpbMq8Uygjd116qYNlneXEO4ZK9ADmb/EvMY?=
 =?us-ascii?Q?BVa6PLVNGAhDNLFD3wpSiHzWVEqaSF6McMc+cHY5R6qwUZYJd+La3ej+jzYW?=
 =?us-ascii?Q?Z7c/b7IKKWNup67DBHDCakg0udl6I1DsF2HfIbiEtZ4dtvrg86muWod1aWW9?=
 =?us-ascii?Q?qZiSLW1XiaYrVhlF4BFZco1Ao+duPniMF4t7zi6Vr4MaxxT7O8dKlQRO6VOu?=
 =?us-ascii?Q?mT2FwPAD7ChRPHScCa/tfopfzldbGy2chaVEAVJccLtVWplo/NF6lCtSjQBA?=
 =?us-ascii?Q?2w6xP8c/zusKFx7cb5JajEB6oOimPutB+Uo/3NQbW2BAi25c9Aah5LFcEFb5?=
 =?us-ascii?Q?l5GQsX4TaMgDsLIZ0AGjpKLV5WnsGlDpZjfEvw5JHlzgPhLhhC7WCDNOmNEA?=
 =?us-ascii?Q?NhWh31uTpEf6chkRjbt5M7L5UAERutBkg7G6Rydww7AoL118+ZR8HF500TQk?=
 =?us-ascii?Q?Qu6TxyrLX5NJJICLiQyzoeinFEELAduQU2HB9pVRFtlPlUD58oNh+fHXIuKI?=
 =?us-ascii?Q?aQslYPUe/yj7rwfB+ugLCD6pyhotus99sb7tCQMjI4MnZOtG/A7zUGqBV8Al?=
 =?us-ascii?Q?3rqLLEnx9U1zujO8Oep6cTV3+2NDD3NJeuJvsf/CWXN7s8iBdFYS11q92oPC?=
 =?us-ascii?Q?eEGgdf3GeeSrEHqszRe9cGNGIXvZ/eb2m1GSHK2Z/HYQ5Cl0RtMmpkTRjOnB?=
 =?us-ascii?Q?GBs1/fgrSj11rgB3dJzUIyOFYXpdXIk2o3K88gLticPvCkqvRtQaGbzeqtvx?=
 =?us-ascii?Q?jw1KtWGUnONJpTXb9/wPHAbJlsm3B+y6DbR7sfK6MJwivKVgPkDqM2IrdA1e?=
 =?us-ascii?Q?xyueCRM+iJbkXBm6awmUiQlvAwXGoliIvPARsS+k6MCWjJeIDjXN6eS2qYCd?=
 =?us-ascii?Q?xSga4eu592ZyhUgponejnDiD/0Mt71qFnVDlz1FOMmEONRpTue7cFkhAG/wE?=
 =?us-ascii?Q?xjGzAqw1k7/2etKt9s2nSdGrpD1vO5x1P06MkYAY4Knkw34BXCwRMRToQiS6?=
 =?us-ascii?Q?ZCfIYRmdrYuEoi7TxCW3AIj82YvxO/yfQcwne47bPlR2n4lXE/3f3P8paNJ3?=
 =?us-ascii?Q?G6J2L5QFvtuT7TAsWmk4KghuUV4R/s0pUWcRd/tZHrIDzqu6gzuZ3yVOPC7t?=
 =?us-ascii?Q?8p3yudgQ+ru46WrC3vcy4iWKwZQAufDezbX6iJSdOiXLdp1uyD2s8osQ5BP+?=
 =?us-ascii?Q?JYt9jFJ18cvfytK3hCjbrBS5R1HgjfUszP1FfZK7IsrimFofvR+ijg2uN0eo?=
 =?us-ascii?Q?GfSWhruOJudz5v2nAmOricP4XoLwRsoh/rqINLqrCCQzM/OQg9ttmezXpkwr?=
 =?us-ascii?Q?TJlkfU0dV7vxW8dPBX/SEo8/VgKipQscdd2tEeyAgC6dT9z/5Bby7nkjyzji?=
 =?us-ascii?Q?pRBKJH+AcwcJYYFg6KgYEHdHqR0ChC/VfzlfUN82jJIieLL/eAyWTCWUqLRh?=
 =?us-ascii?Q?HACuve4qV+m3DEGoUQaexgx5krVrBrxKFPoB+WWhEPAC375r7UX+1/N0Wy3q?=
 =?us-ascii?Q?HKmhtQmyIWf2Fivk58+rwhZIgMC9T5tU0v2c/TAE?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd23a24e-4190-43bc-a739-08dad930f786
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2022 15:29:16.4706 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JobeUu7cUP9cskOGTbvgQTYdBZ42oCyxlfev8PXOtzyjxEbAfOp6WkjrCUau3hoTs0nsETh0yjq8QvJg3rUJXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB8207
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 03/14] bridge: mcast: Place netlink policy
	before validation functions
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

Subsequent patches are going to add additional validation functions and
netlink policies. Some of these functions will need to perform parsing
using nla_parse_nested() and the new policies.

In order to keep all the policies next to each other, move the current
policy to before the validation functions.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 net/bridge/br_mdb.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index e3bd2122d559..fcdd464cf997 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -663,6 +663,12 @@ void br_rtr_notify(struct net_device *dev, struct net_bridge_mcast_port *pmctx,
 	rtnl_set_sk_err(net, RTNLGRP_MDB, err);
 }
 
+static const struct nla_policy br_mdbe_attrs_pol[MDBE_ATTR_MAX + 1] = {
+	[MDBE_ATTR_SOURCE] = NLA_POLICY_RANGE(NLA_BINARY,
+					      sizeof(struct in_addr),
+					      sizeof(struct in6_addr)),
+};
+
 static bool is_valid_mdb_entry(struct br_mdb_entry *entry,
 			       struct netlink_ext_ack *extack)
 {
@@ -748,12 +754,6 @@ static bool is_valid_mdb_source(struct nlattr *attr, __be16 proto,
 	return true;
 }
 
-static const struct nla_policy br_mdbe_attrs_pol[MDBE_ATTR_MAX + 1] = {
-	[MDBE_ATTR_SOURCE] = NLA_POLICY_RANGE(NLA_BINARY,
-					      sizeof(struct in_addr),
-					      sizeof(struct in6_addr)),
-};
-
 static struct net_bridge_mcast *
 __br_mdb_choose_context(struct net_bridge *br,
 			const struct br_mdb_entry *entry,
-- 
2.37.3

