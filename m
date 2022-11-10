Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDAD623E0C
	for <lists.bridge@lfdr.de>; Thu, 10 Nov 2022 09:55:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF111812C8;
	Thu, 10 Nov 2022 08:55:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF111812C8
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=K6iSljmJ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dPKN5UtMai9Y; Thu, 10 Nov 2022 08:55:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 79CDD81290;
	Thu, 10 Nov 2022 08:55:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 79CDD81290
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0BAE0C007B;
	Thu, 10 Nov 2022 08:55:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 33A09C002D
 for <bridge@lists.linux-foundation.org>; Thu, 10 Nov 2022 08:55:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E876960AB9
 for <bridge@lists.linux-foundation.org>; Thu, 10 Nov 2022 08:55:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E876960AB9
Authentication-Results: smtp3.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=K6iSljmJ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8OJwr4MC4IS5 for <bridge@lists.linux-foundation.org>;
 Thu, 10 Nov 2022 08:55:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DED54605EE
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2061.outbound.protection.outlook.com [40.107.92.61])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DED54605EE
 for <bridge@lists.linux-foundation.org>; Thu, 10 Nov 2022 08:54:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OZph8KoGgqm6yqQhr5pz+IJf55BRdIS4i5+zwRMsjdlM7HdIAPk6qr2Vl63C/yJwtonci4GuOTzi4jJvMjKz5/Lyv87u6iLInF0coQquEJ7/AnnaaUBzSgUIsYaF3m2UALZX1kLKrrfYTVsYUQvc23a5bU4UCXMYVIdylh4oO0npzZdgRT6LG2QyaG7limzfcsdLnI7JPTwVdX4XPyRO/6R0PZNHVqfUTaYmPc3M6FnB/dORfwHVDWVoW4m2Dz4vYAX24L5WgurttyZVGbBRv9SLAJNgZy/7LRNX+RMEBmxsZzf6TZPfraGsK4ucDLddQowmmuDv8Nx8SF3epMfqyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wg1mWc61Hw6IW5zwpY2Knmt0z1IF8BtEB4HMuYHmjFE=;
 b=Gu/M8M7vS/+eA7hR+grjQnocmRV6Oju5Cse4RRdhY651y0l2jJbywVFD+7wchb/dIMT/Rnauh2cn95dDX4HqOskaPjsqaGCsl/l8HGvNcuOgN8cvBIPVPSRBxhS33Lduk8k5Nx35OTZw3Pfbfvivz+rwwSC4wY/VShA1R+izQiqCJPZ99KUZwXQ77gxjS08pKcc+wD7AGYMK3lcZCgz2iiFXMhnNpggnch0+tDrMTzEwBa+vHM3i0Ex7rFvCkcaZcoR4ETF5fATqdI/wStPG6mg2uYsiYOXDKWEwxUiC971gwntwCwSPC74EiiccPwfccmA9Y2IQPjoq6VWZv1BLIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wg1mWc61Hw6IW5zwpY2Knmt0z1IF8BtEB4HMuYHmjFE=;
 b=K6iSljmJru1XzOvue/lm4aqNQ2Zrj73jk1q9KOBMTd4KKdHVFtTp2e5tsX8DsSiUab2zaHvoOqm6g8NZWPTitJ47Pag9LSZt5wxkQueutoxg7g6kHgaMGfBGHxlvXlQbef4a802/X8zZw7O9tzZ8XqwkbBj9960VwU9Qov3atNLg9GJg/bRrjwk3OCH86FebfZdlAeMr07YAseE3q3MkSK0LzpokegDcxNi+m9dpQTyU6IeV2V6wIap/JetZpcfLJmIhCk1lGijlIWK47rkpCLJmkPFJaT6gLtA/AxtgfNsBo/Nt0XWFiLwzAh+zJaoEBmNukxNJKMEgDtzOAjRmaw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by DM4PR12MB6181.namprd12.prod.outlook.com (2603:10b6:8:a9::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.27; Thu, 10 Nov
 2022 08:54:56 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::9373:5894:9cef:ada6]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::9373:5894:9cef:ada6%3]) with mapi id 15.20.5813.013; Thu, 10 Nov 2022
 08:54:56 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Thu, 10 Nov 2022 10:54:22 +0200
Message-Id: <20221110085422.521059-1-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR04CA0124.eurprd04.prod.outlook.com
 (2603:10a6:803:f0::22) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|DM4PR12MB6181:EE_
X-MS-Office365-Filtering-Correlation-Id: 8544e718-8b68-4530-692c-08dac2f93dda
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wFex+wI84BOHOFY1oEUW/XkfXFSGbSzEw/2S8UUoh9vuBoSshFrWh5lo238KkMe81+WdPE87Tv5IKy8j/m2dBaS4bGByP2ZqT0o+ZVZvoxo5m/bK/tDBAOjBBqWoIZzyb9011zAUQDjSmT5r2hhDvNnT9bUvvcI+QleqYYf7ieq6Rxp+GTkunBvPgkjDMvbgvjeHEYCr0x+O6B+y11LVnMoCQan0b1KXgrl8PSWCkK2sdHwAiH7SZ8gkGM4wuag4SKUTETBp2If1NEV9IJHl5kB60daMW84zt0q/OrecTk4dIsOuFvbpQgYzq4JXtDcz3BQTKkUmQ2rCisqCSZQaPQ1cVS18qOSz12yHO7kBdXGUHfcw4+qGGTNvQJmstjW14c8vaB+3qWB38jGO+7SboW4p7tI8xR6zkjN4iMeqLBT2F4zDPfywWTeWZjnASgAxdeg8fz299SCEUn1gLgFsKTUyN7MrspHxk27PlPAA/2DjI6uSj4iUl60HUJguxiOTZVCnLxd6BvBO+wGeB2sjsKvGbigssQWmoCJtM3teDtI3QBreKDIAsW3WqfsHy9UMG9xxWGKCt3Om6dWTXxYnA2F43me03XNaslP9M2xnJL3+Gdv3pVsdGYNHmFX3GdbLsU9CgNeWJrSmzL984HwebQW68KQJfWoGGiHYbzKgBYbzAp+1H8XsFedJeCDU22YdthmP8UQClYXiL/QL24WOnA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(396003)(366004)(376002)(346002)(39860400002)(136003)(451199015)(4744005)(36756003)(41300700001)(66946007)(8676002)(66476007)(4326008)(316002)(8936002)(6486002)(2906002)(66556008)(478600001)(5660300002)(38100700002)(6506007)(26005)(107886003)(86362001)(6512007)(6666004)(83380400001)(186003)(1076003)(2616005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pytxeXFyJ4FMSlV4eH+YP435DPfKemzarb5m855ASh0e6GnVqCdzw64+T2mn?=
 =?us-ascii?Q?ySYsdywFTd9FuetvrF6uTb0w48uzJzIf6YfYHwkto7EhBmE4Sn+dzErOJiFW?=
 =?us-ascii?Q?1obtGooGLqcnbkyVkw6oW2Z2niNCv57A3sQM1ICFfYC3Qbq8Boimv1vjKeFj?=
 =?us-ascii?Q?NAbndI3Bowu4i0xbsv1etI3CL/7fRKsonAlhpk9JuUAIgoi9n9dYt1F0nZgH?=
 =?us-ascii?Q?puWrNREcwqbM56UkTKolvyD1LSCx0DOEWEITkLmnKQDRmJU4ZYnY/pahYtWw?=
 =?us-ascii?Q?Mv5y60DT/3Fa4qUQlAfv2tzcr13YhfCjBKFd46epjMyN7sc06I7DsCSQZcN/?=
 =?us-ascii?Q?6IGBXI59bHdoqnkHslCbRPl9ZRhvpfN+kxnyan0zV4ywBuTDC2VJypqAxb0Y?=
 =?us-ascii?Q?B+DvSvYYINkoIZUpM+i9zVzjiPkwibe9TyYhwmh7xaFmMSDn+6p8itQrX1cJ?=
 =?us-ascii?Q?dK/W8jVLlPaS3uaM9lvAs0b1mh8gVAUCMgaSiYLf6zsUlv+LhUqE6CczwqsZ?=
 =?us-ascii?Q?dx1fYBjozNriIXFAdaFm1HCXO0A4tMC9aP5/YwHUDKo3JcjZve0IugfxuuEs?=
 =?us-ascii?Q?5DsombL80WHqzWazYHVZlXTgFzQw4lhqdMY6uD1NIVQeuGpc/Nt1KQ2Gj20O?=
 =?us-ascii?Q?hNZrZc1VItv1Eh9MWWPHeUFJT54fTb79IuXpbV0ASvo0Yg3von5EVuFycmsi?=
 =?us-ascii?Q?P2JSkTL5QtGBTueKhqicbkJADyVE17W6tGqybGezoa1f1KVhm4ytHxEVMP6r?=
 =?us-ascii?Q?ZpbDEICK5eIJzZWoZGX9MuHYD3LEAngcYLAmiQgP0JC/jZ0HQXmtbKt8q8q7?=
 =?us-ascii?Q?RK22kmmOvWa63QFyxIDwA2TRjutuwGbF0iH6vEwOyUL9EC67rqKuWhfFYAb0?=
 =?us-ascii?Q?ZsBCY0ejcvDMRIoQDHzW+ILy+KiWWL1EH5pI/XFk8oTniH4PcDs3i/Zw6f+w?=
 =?us-ascii?Q?QmLnTrfmDIEXyxJiqt02/ORM1kjzuXb4I4/AFKfJzPIXMgqXSEFxr0H/UVgu?=
 =?us-ascii?Q?hW3mCnQ4hw6vf4nORsPMkkdpZ7C07dClgTaTOjzNHRcTmDwpmmBpKuJ7VxmD?=
 =?us-ascii?Q?ijw8q91dPiY+8YaxEnWH/X0aALaKvdqfjfSGgRv5dbQddXSj2t6NfGH2SxKI?=
 =?us-ascii?Q?PzuyMAf3y5i1bVQCW2DU49WEx71XTNszGRbZRGfc1X9fNgEUshQJel6RZOEK?=
 =?us-ascii?Q?M1tz/o3vlSemA/yw3onOVtr4fhlcW5PaBXA45QbLopHrxyLI0NKI6ra3d6Wm?=
 =?us-ascii?Q?Y/wig4M+beXRp1b3bP9qh5n7DnzvvVwzxvIMBcx3lceQUfHgbJd7vgxBMV+6?=
 =?us-ascii?Q?t6NV7z1pXYB8jCIMm/5NYZP7BfhAROUPa+lGJ+5cHNdF8KXsZJxMdKO9zOM4?=
 =?us-ascii?Q?NwMZ+mkswO2JGl1+NSJdNOHv7Vc0XiT/2Hqy+hgol4vQIFUAFgtxTx5A80i4?=
 =?us-ascii?Q?x+NIJTAxjNTZahtWiN367jOLh8g8BqMGFUc9zOIfkerHB5/FHt2gCRM5yVaW?=
 =?us-ascii?Q?2XvEOtCaZ12peJD7QrLIShQXz3RVfAlOVBaKK+meOz/hdR3cCbwf4RCbfImo?=
 =?us-ascii?Q?dyUkJp0MoBDgPNPTuDhcuKlLvJzxAvEzZNN5MyfT?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8544e718-8b68-4530-692c-08dac2f93dda
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2022 08:54:56.7965 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BhSIzBFwtAcXj44xoesiTka9dv96s+jX8g1f74KFyCFdOah17ddXCRG6TW+i6KUDvnPig/ggOEuuTkdb+8ZU8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6181
Cc: petrm@nvidia.com, mlxsw@nvidia.com, razor@blackwall.org,
 Ido Schimmel <idosch@nvidia.com>, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: [Bridge] [PATCH net-next] bridge: Add missing parentheses
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

No changes in generated code.

Reported-by: Petr Machata <petrm@nvidia.com>
Reviewed-by: Petr Machata <petrm@nvidia.com>
Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 net/bridge/br_input.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index d04d2205ad4e..3027e8f6be15 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -121,7 +121,7 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 			   test_bit(BR_FDB_LOCAL, &fdb_src->flags)) {
 			/* FDB mismatch. Drop the packet without roaming. */
 			goto drop;
-		} else if test_bit(BR_FDB_LOCKED, &fdb_src->flags) {
+		} else if (test_bit(BR_FDB_LOCKED, &fdb_src->flags)) {
 			/* FDB match, but entry is locked. Refresh it and drop
 			 * the packet.
 			 */
-- 
2.37.3

