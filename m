Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68574648F44
	for <lists.bridge@lfdr.de>; Sat, 10 Dec 2022 15:57:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F0FE8403B8;
	Sat, 10 Dec 2022 14:57:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F0FE8403B8
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=bO3IVvPo
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rbukHdYMQ8wt; Sat, 10 Dec 2022 14:57:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 74CED40125;
	Sat, 10 Dec 2022 14:57:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 74CED40125
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3B749C007C;
	Sat, 10 Dec 2022 14:57:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B6066C002D
 for <bridge@lists.linux-foundation.org>; Sat, 10 Dec 2022 14:57:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7D318607F5
 for <bridge@lists.linux-foundation.org>; Sat, 10 Dec 2022 14:57:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D318607F5
Authentication-Results: smtp3.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=bO3IVvPo
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7iZ_sTzDMHTs for <bridge@lists.linux-foundation.org>;
 Sat, 10 Dec 2022 14:57:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95947607A4
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2053.outbound.protection.outlook.com [40.107.92.53])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 95947607A4
 for <bridge@lists.linux-foundation.org>; Sat, 10 Dec 2022 14:57:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DZm4XWLSANY+J/ziVjATPpIShl+VUdHCpj+qsWuVnCpn9vunZ944cM1HUM5td1tKWlNIyP+bk/oO0G8pR5vHdtp1MFKG1XDpL+JlIJW2GNqkRCDM9+IMGrUCDOTD7s5+x6N9OdiWYJxMNzlP9iIYHNpeFbuyLuA9ZUuVfBr//uUTYlsBoJhJQZVp74klLiG4bpevqz8yJHBd6O9SmKgidJHz6Vm+h32eOLtYu2blljwaSXXyPFrNIjzOCnlJmC7ei6PRuQlVLn1UvlZPFFRkoLYNkjECq77LJl5DJl/vmhJn13bEOwtZHiUXTHhYjDrwUtNjzwH7hz8GNVPEQlVU8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yM03GIg1YwgxJFGyTUnV8Za9M+lBuhgfqRMZea9IeS0=;
 b=HmG5V7Bl2C5yxSD7lGXGzHJ75b2AuttSHBVHLwDP9WVj0GjJJ5w0fme2MQQDjdyd0Yc39NCR3gqebJfHASxV1ITojbsinqbe4MOWK7OC8LT1V/6X05MuXPbIiEoeUtr+LXo5LyYnnsHygEJmpch4zVHT2m07PdDtenc+OtdS9VWIDGv6hlSW1QRhrTG1fcq5vClO6Zhg//LryEGulr0BWjFGF3dXrP4B4IXGfBL7Yjx/kX0WETHMEcNXh2GTRsG85EU9nZByEYgY0xG7JEflT5xjnaO89drbDfiRZSaSCwy6hF/dMsLsAdp/iHPwz4BcyFOwraypHDonFYcP0zqbng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yM03GIg1YwgxJFGyTUnV8Za9M+lBuhgfqRMZea9IeS0=;
 b=bO3IVvPo1tzhUt/FeXK5cJ0gLp/9gfZbLH1u2sU3gC39X2BAUbGkiS1dRiWRReQ0Kqg+Y/7lRcaPjAuxPJFPyz3sm7jWTnKvMSg33M9n2aK9bs0UB8H3xyu73mWH1S5e+vrw8wvtIVXtXGAUFJz3fZOBm5My6NPaOWwcST8u48QiOTf9u5tQoLqAMA6MyuWxK41+9VpxVR5gc1QsnIlZgYciROV+0FBov89dFin7WD8zJe2b9+YUQlOj1VnMszVX0QgmG8AC2IWm8CkmMJ6K5dg8xGPNWcG0UOYMNawWTPoDiAP6nLE2hz/bA35vfu8J5pDbUfwB+8Gih8M7nwNFzg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by PH0PR12MB8128.namprd12.prod.outlook.com (2603:10b6:510:294::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Sat, 10 Dec
 2022 14:57:24 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::a600:9252:615:d31a]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::a600:9252:615:d31a%3]) with mapi id 15.20.5880.014; Sat, 10 Dec 2022
 14:57:24 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Sat, 10 Dec 2022 16:56:20 +0200
Message-Id: <20221210145633.1328511-2-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221210145633.1328511-1-idosch@nvidia.com>
References: <20221210145633.1328511-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR03CA0066.eurprd03.prod.outlook.com
 (2603:10a6:803:50::37) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|PH0PR12MB8128:EE_
X-MS-Office365-Filtering-Correlation-Id: 96cf8d56-a0ce-4b15-f474-08dadabed910
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j4VwQjf7jCQODP/VcFk4SBd8RId8/h0Flid4sVfZqxzI9PJap9GzwqXAcn+/2mHYl9jVjw3JIU1Q/j0uAouUXkPuOOmYcACJ+SoBMweD1vtlRL+eyOYnei4h/G0CA6JxfFx8DC+L5IpqY5I3lwpYpVm8BqFhig0tl1laknB9M/YeSTjfNKngVSiG6Lxky8xlmFws88UwPSDwaaZf+Sqw++MABV7DY6C+9V/bOBkbZKaUN7rVoD25uQTlpo/v33SOOP9x3JwZmhYjYr/ekIE4XAvxNxCybHBNKL+74I9VNPze/zbMuUlls1CBTUPN0tMHpfX0gpxA882UCIcJIixmDKDvG8lm/CCv2zc0D7FeBpCNarue4V4Noa5n8EjST1K4W+GF5V0fFEyTaqhgbc2eL+I4SSkgDoa+XVbxFEumyuKYX7I03y1Eynuii3u40ob0yugnI9vTkZmTBBs49kpuB8qhPolzRnJ0m29o89fljWv+yVVABhggo7SRvsIK6LufNs2FU99NzeJVvDQjheaC9YD4o744cQhTsDNgC1ansN6U/UEwiBRltUzJZlkZKpy+lITxxSqGCiZOme9VGlx+8/H/YHrSydHqxpI02C+OOqTnWLS8kSPYdlt530tD4Rsi+sn2pw6e7n24W2uxUeFmVg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(39860400002)(396003)(366004)(136003)(376002)(346002)(451199015)(6512007)(186003)(26005)(478600001)(2616005)(1076003)(6486002)(6506007)(107886003)(6666004)(38100700002)(83380400001)(66946007)(66556008)(66476007)(8676002)(4326008)(41300700001)(316002)(2906002)(5660300002)(8936002)(86362001)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GfYl8pWT1CVn9xRK923ewHAUBERFwEVFaIZ80BiSchA6JP1FChsOwbRbf+Xd?=
 =?us-ascii?Q?hRmwIrtZa6yoGmYIR6wJ+1cLNinM1W7N+FmpNgrYSUQ0re3I6cYuztR4QRmU?=
 =?us-ascii?Q?/q+TsItbiHtrkHgs2Az/LNwJJfBWINIcgzAYgghQQPsrwHhOwLZWn0UXnljR?=
 =?us-ascii?Q?/ec8gOTtRMJK0sz97Mi26E2ybbGOsAd6dpx0Z0p22ctDpkqSk9UCc6zFEU26?=
 =?us-ascii?Q?WhlYT47QIK9br8oFpBZ2aPxk37O0rfxUiPh4QLHD6roVjsmpO0OTZRtRWgcK?=
 =?us-ascii?Q?T0XJUo5Cb0RBKVJKzjaUW6kOAQ4ssxTPkjSJHCDut7wbGmDQWbgWRZWwqiIu?=
 =?us-ascii?Q?H+2d6n78LN+FXUyka/k6DzayI5MuwMXGVfgAos7uM1kimXRqKsEfB1SM+YxM?=
 =?us-ascii?Q?qmCeo7+bSbZzyGxi3G2Mk/BIGnpyOxOKpDZ9gfXRDlzrkHFNwRSBp5UxLFnf?=
 =?us-ascii?Q?DUaHPXdNhgveUij1qNkQ6mg1CsY1oOgY8fMbf7FQHghd+scNGzGEEOHnPVZP?=
 =?us-ascii?Q?sQARa1rUidyTVpWWIKgPZFi5cIjWPCUViaAzJZr/S+b7SuiLNWIaBfqnAyb3?=
 =?us-ascii?Q?rY8BMUWNevr6c24WjZRZYoBv+yRR3uY/MrgdAS3xSwr5y68Ml8ltDBQxJGzU?=
 =?us-ascii?Q?XwezNsDUV8m7gaEol9w+HrtAjOstn26PNro3VCo+NtKkOXcQAStb5zT5XV2N?=
 =?us-ascii?Q?mNyk7e7N0D+atmg+O+G6Jk/VVUsTN2YqGgI07RDQMtnAIW+RdM/q3copfoDu?=
 =?us-ascii?Q?B+228pHoH+Zz0NTR0GJFwaXv/eR8KaAKkk5aHiCmlHhS4julDL2FHnEmcloE?=
 =?us-ascii?Q?nFLPPSdz0v5dGKSulhPOBC+kU726zg6vvGFmP0Jj/++2Up036FOp1aWaMg3h?=
 =?us-ascii?Q?3KgzB/yOXbsNKnpHbq7dhKkiAEna0nVHt3hl0tBV05uTHB9wcxNKdKheyDNL?=
 =?us-ascii?Q?QFTUaAdxUKP+xC+jkm/uAWcPYWX70c1+7QqFk0HjcQAcad5AFrozpU+JcELp?=
 =?us-ascii?Q?OrF2c24e+rc/S5OHpjkeEz4e6c3nC70fG/Tx0XzP15T8H6o1oHyfzm2RHBbS?=
 =?us-ascii?Q?V9g0qZ3xGOp8+zG0kc0eY9HlgeKIOIgxb/nHYIm4ioeG/sVqIbZ/zLGZrFTe?=
 =?us-ascii?Q?8Yjk5fEIzOGrzG21t9kY5PA59pDPXx4//EJOmUCHkYQ44OjcZYdotx/eDPuW?=
 =?us-ascii?Q?Bg9lIEZhfmWiPiSaQpZ+nkIbjBPc/7CC5Kb9LzsYl3Tkl5zHJhYNZ8Iz3buX?=
 =?us-ascii?Q?FATBHYC99xQlHxXw/95fWfQlUp24M8Ddex8kpeEAWxIeYB6ylb3tLXS5pUQ8?=
 =?us-ascii?Q?ZAr5YMe0lxPjGdEHGw7I4u6VDA6hG84kG3qo+zpfjjwpBxe3G7WSn/mhtzwB?=
 =?us-ascii?Q?y8CG7iOdW0E/XXglwAvL+njsgR4xphkQz/M0jiYXTBtMLzVMpc/X/pboKM2k?=
 =?us-ascii?Q?X6EyJDqXICgPmZh4kYjfuW49y/W3cNYGi1vFi3WBBB0kiaLR8MfnijCbymjr?=
 =?us-ascii?Q?z0UtlxUHMCPo4sWj7etBwWUGvFRydZU9vTaufgQrKCrULhZ/yz/aAID++T3h?=
 =?us-ascii?Q?BFVkNbtdYmFpUsp7LVChE+bKZnvHHl1lG6ttLq/G?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96cf8d56-a0ce-4b15-f474-08dadabed910
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2022 14:57:24.7691 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tEkSzelLXgWfp7IwtlEZ3wXOGQZfV353p7pD2gWHl07fIcOgV2pmmOWbeNZGv7GxKmyo+am6u9dUpWd5K0UBdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB8128
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 01/14] bridge: mcast: Do not derive
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
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 net/bridge/br_mdb.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index ae7d93c08880..2b6921dbdc02 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -857,17 +857,14 @@ static int br_mdb_add_group(const struct br_mdb_config *cfg,
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

