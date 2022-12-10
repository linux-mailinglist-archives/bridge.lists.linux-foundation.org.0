Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A93DC648F4F
	for <lists.bridge@lfdr.de>; Sat, 10 Dec 2022 15:58:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 347164157B;
	Sat, 10 Dec 2022 14:58:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 347164157B
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=R9z9LgoF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LG0VZepmiHJG; Sat, 10 Dec 2022 14:58:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 53EB341571;
	Sat, 10 Dec 2022 14:58:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 53EB341571
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 26AEDC007C;
	Sat, 10 Dec 2022 14:58:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1CB8EC002D
 for <bridge@lists.linux-foundation.org>; Sat, 10 Dec 2022 14:58:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EA6F681BF5
 for <bridge@lists.linux-foundation.org>; Sat, 10 Dec 2022 14:58:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA6F681BF5
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=R9z9LgoF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mU_MaKll9YWd for <bridge@lists.linux-foundation.org>;
 Sat, 10 Dec 2022 14:58:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C36681398
Received: from NAM02-BN1-obe.outbound.protection.outlook.com
 (mail-bn1nam02on2080.outbound.protection.outlook.com [40.107.212.80])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1C36681398
 for <bridge@lists.linux-foundation.org>; Sat, 10 Dec 2022 14:58:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k6elELlbleUrlL6xGjV5onMJUp7RnvdIVc7SN2fyyxYtUXO95AC5OPFQLfmxZZNmGqAMtS6i3w+8pbg9cFQo/GoTtxv70qk4m8678IEyqkm/iJF6LoiFC66AOIeB9fGnC1uIoq3Y3SvkOODba/eMOZO7rGSA9i1gR0LKkXjhK3ggOMhNbAga8qriBTDwRy2Q4GBFul2dSpZ8E4e8u96l7JfSq6sahfyNLmV2HaWeQhyiKhbWdVnILsQqKWN5xYHaPIbIuz1WPXio8Z3bVktLqJrDfEy1TP3MZoG6fu9vmWkMtrzio8xP/Sn4QSVK9xXVPzxR5cv+x3DAI9sG4PHlLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2UdVK9p1VBhRyQALpImydJ0b7WZxGQ2JlhU7sflf2JM=;
 b=HXwi9iPsxvFo7uS9TxnXsSihzR+7CHoI6q9TMjZZ2cRfPz3WOZPqPW8QazAsy4W7k59S4MV1izNj9MFtusbrCBR6ly5KgC4ZNRK6RdHpdKvpMcrDL7Y4+bFvtvcW3X+7IVfdv130gW9HM+Ck/1vsqLMfXyHIL33jKFjdagMg7zVTPpkxcvDajootEzabzVBP1lb+yM38wvK235jxoS6Fq6HO/V8oi8Jmy86NIexg6sh5AsH/GPLyw0sNWOs3GhkX2CkAsVEUxhoaFUI9s0bob/niluhd8LjncX1+34oEuVVP76xQPkL7YTgJgjCa+lSgPCFeR2S9BI0QGnH8hngC3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2UdVK9p1VBhRyQALpImydJ0b7WZxGQ2JlhU7sflf2JM=;
 b=R9z9LgoFNXMGncD8RZVT7vQjE5bYSUmMyeMYwhM+wwnW3o6IllTbMxcBmf+sXPW4oJmfzprzg6mYN4xXCrObhCt8GXqVJJLKQc30QnjYlYHYzqvasiV9vXIiFXTQXa2mQ/eoPKQhz1B+Si3lZ+IcOsy9GOKC8oUA9mY+/Jr/c5Y7EdPEBgJdrn0XaunaeEfwfFPM1nxwbUCZjbS+8EJ4+wXm45zKs6qji5S7pe1wP5sKZwDmCnOs6GKutqWR4KGIY228DQrlH6ICDtWLM72ddk4Eu02w/LD1n3JwUrsy69BBlwjd5TIwcp3B43Usg0oYrkNFZq9rDgPzIoJPVQwt7A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by PH0PR12MB8128.namprd12.prod.outlook.com (2603:10b6:510:294::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Sat, 10 Dec
 2022 14:58:05 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::a600:9252:615:d31a]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::a600:9252:615:d31a%3]) with mapi id 15.20.5880.014; Sat, 10 Dec 2022
 14:58:05 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Sat, 10 Dec 2022 16:56:26 +0200
Message-Id: <20221210145633.1328511-8-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221210145633.1328511-1-idosch@nvidia.com>
References: <20221210145633.1328511-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1P195CA0094.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:59::47) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|PH0PR12MB8128:EE_
X-MS-Office365-Filtering-Correlation-Id: dedff852-bd14-417b-b6c9-08dadabef112
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GME/YjC8PbPEbqDpIDhPkgaY1Sy9BFHkFGZzhSWbpNLeyrajFLzxpSTLQKbxLsToZ9XPgqvZcMjEmPpo96vK0+nUYjy1qqU5zGkpYkkT1Ntwpk7/qEwnn6SFsR5FONWUq0CypnG2i+W/MfXZcocEHr2hlBcl8c54axC5OCoAstEO/0DSzAC1KmgF4NFah/fbxGY2J32V3x80Sk5SrZ0eBs+KC7Nl7p9mD1KevOsQiUMd66EOMXf248nVuwSohxFzTi/tJ415ejBO2Biezovox+kYfZbsq405TOLJWH4kjhrcaVmfqaRST/WPLbT56n01L3DE6mp8N4et7wodkjzEoDUd2lL7owEnBLzNwRnwYbE2NwwlXDx4IxE15dX5iMK6EaigZOUoouc+W2P2KiIR5y62657RsFpdvzIJmkhnbMdll3vK3yaDfPvtDyfpYX4mXMhFp0vQu2ty+rRIb6htppODSlxZjD2dCvtZkhyLtPLEEKnJJjGOofGIfOFW3wCHn7M1QQVmUsmoI3l2A093+bIbvw+wYmheWjaN7KhAiDZVbAO5k5ltvz0KdRYhnKscSMHrTOrkq/59V9H4HdEwtf6nTEbj3FJ90URK0hbEY4RaJMBI9BSCSHuvMP6vWqtVcps36QuyEZr1nqWYOA+Nrw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(39860400002)(396003)(366004)(136003)(376002)(346002)(451199015)(6512007)(186003)(26005)(478600001)(2616005)(1076003)(6486002)(6506007)(107886003)(6666004)(38100700002)(83380400001)(66946007)(66556008)(66476007)(8676002)(4326008)(41300700001)(316002)(2906002)(5660300002)(8936002)(86362001)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IAWLdszd14rEoMnwy9T5G/tH2Itt4z3UUJSImKoIrzLCrVfzGHS3kupKvy21?=
 =?us-ascii?Q?Kaizi0tVcbt/cvmljWis8E6fpn1HqsYrpHt50n0lLBVT+9a2nci58Y/MzYEw?=
 =?us-ascii?Q?CAInTR2dKyWqtlTgQvMdD14BplN+YQSbwRWOXXEe2rPxuyX0wlgTA3OZa/BK?=
 =?us-ascii?Q?McHp9ViPA5dJEeoY/QzXIgqdvsracgipu1Yp7KutAwyounmdau4hXo8cNEMP?=
 =?us-ascii?Q?mzflUEneqaUBbhNB3kz9igVK8uBGwR9SON7zgAPLIX2hifa5/GfzslLf2Iad?=
 =?us-ascii?Q?R9sMDAhEABaHgvtfVuQhoWBx7bgI6clWKg9Xq2SiV681szEQFRLhQfPN3X/X?=
 =?us-ascii?Q?ZUkiLu6IZ7m3usGEYAVL1UK+rGupIrF2KLSNyDkOtfnYBEaSVHJkLxmeaq8s?=
 =?us-ascii?Q?TMU+VzAGhycGh8Zbv+30l17W5WWZRmGgDiz/6j7ln9q42RLgI/cT+h5FHmlk?=
 =?us-ascii?Q?NyTPR0SVIQ2SwzGGAMfNlXXZ7Pyg26Iz3FZ6boLN48f/DJ1Gv6lBahDPYP73?=
 =?us-ascii?Q?yI5prs1tbu6fny/1W0XFLxbnlH+4xdvtDlKkt0rY8UFZv1EMNMEsCFDwQsGP?=
 =?us-ascii?Q?I/k1UcPeuPFSd9mVrZkrjSKeUAl3EIP8jQkNyGnhY14iVgIDpJfxmGF7VvLe?=
 =?us-ascii?Q?hYiXyQjAKWOFcs4SkyrsfujnTwzwITEZyUmU2AfQ2IucWBhxjRDiYqLHmME4?=
 =?us-ascii?Q?HushfAMbmK1ee/6onFK311FGR6eC0KQvcSLB22uOJKK4x8vV+BBV8vMCc/mB?=
 =?us-ascii?Q?zIQbs1c42wfKv7IyRSfX6e9k/UcOiP7YpFoaq21+VYXd+Pdd3LX9kLylIJTt?=
 =?us-ascii?Q?u9Y41evc3FpUE/ctBQRadxPq52GsaUFdp7nGLcK/stXKrZll8CjtpVJPY4Yo?=
 =?us-ascii?Q?SH7c/a3bKdLM4XupvDiAAxL2i7bSSZ2YgLINOCcsSH7x9TinYc6IZ8QG2wZ/?=
 =?us-ascii?Q?QXDRR59UaKmhKDQZqcYVh6ATxNOlKzhgxx/zrfm9BSjAkl9HmtAKh60czudv?=
 =?us-ascii?Q?3s/fguBIzfBF41Js+jBYDph4yUJ2wh5bOqCNY6W4CsiZnlNOh3xRWtQuDFzn?=
 =?us-ascii?Q?7KJh6vOi4OVhdObaBATNfDSDQJFIeBcv2etzlGhLzo/t5Q0Ur4DPnkyEczUE?=
 =?us-ascii?Q?UbArXDbIpXr9QH94Xh+vVpsCt2LwUBhe5Jofg5mmSlwbvBg79zyUnkSONrWd?=
 =?us-ascii?Q?egJzwx2jmblanaf7EqIM9ss+//AEin2aqCxSiMOiXafrFB7zVzmYNCHEtzh8?=
 =?us-ascii?Q?Sxyxua8/rlvBeGnJPNoWw6uuEIGMINMXU7W9+KCPTWU+MmZ34Kbl4iH2o8Ef?=
 =?us-ascii?Q?VsZszuaJPuVSjIKAG6kr6YdaD2phpQu2mMI1azcS/XAk4igJSqxlRZoNwGU9?=
 =?us-ascii?Q?xGaDC5SPRbaE72Bz5u6fyWeF3uRb73nArMoPaHmV3uvvTW5PqQ4sUuLQEd14?=
 =?us-ascii?Q?99O/gnl+B36Kx9/bQf+VaRE3z6VrhcAM3BCN6R9v2ig68FNBipa4f9rc1seP?=
 =?us-ascii?Q?c8wZq4wr7fZPxHr+uYS+EQ7huS/v4NanJjDMJulF2Y4+rMTQGv0tIv3yDvGb?=
 =?us-ascii?Q?3nVantiXoipJEUYyipRg3kaAPGaA/BWaQiI/lnai?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dedff852-bd14-417b-b6c9-08dadabef112
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2022 14:58:05.1085 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eL8FtrSLcIlqTIygDAZLAJTUgy3R0YR7f69UoiwqqP85QMv5vhrRoQAysPx0wbq1zr8MK5i1/IGbFeWvcm7L3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB8128
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 07/14] bridge: mcast: Add a flag for
	user installed source entries
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

There are a few places where the bridge driver differentiates between
(S, G) entries installed by the kernel (in response to Membership
Reports) and those installed by user space. One of them is when deleting
an (S, G) entry corresponding to a source entry that is being deleted.

While user space cannot currently add a source entry to a (*, G), it can
add an (S, G) entry that later corresponds to a source entry created by
the reception of a Membership Report. If this source entry is later
deleted because its source timer expired or because the (*, G) entry is
being deleted, the bridge driver will not delete the corresponding (S,
G) entry if it was added by user space as permanent.

This is going to be a problem when the ability to install a (*, G) with
a source list is exposed to user space. In this case, when user space
installs the (*, G) as permanent, then all the (S, G) entries
corresponding to its source list will also be installed as permanent.
When user space deletes the (*, G), all the source entries will be
deleted and the expectation is that the corresponding (S, G) entries
will be deleted as well.

Solve this by introducing a new source entry flag denoting that the
entry was installed by user space. When the entry is deleted, delete the
corresponding (S, G) entry even if it was installed by user space as
permanent, as the flag tells us that it was installed in response to the
source entry being created.

The flag will be set in a subsequent patch where source entries are
created in response to user requests.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 net/bridge/br_multicast.c | 3 ++-
 net/bridge/br_private.h   | 1 +
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 8432b4ea7f28..48170bd3785e 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -552,7 +552,8 @@ static void br_multicast_fwd_src_remove(struct net_bridge_group_src *src,
 			continue;
 
 		if (p->rt_protocol != RTPROT_KERNEL &&
-		    (p->flags & MDB_PG_FLAGS_PERMANENT))
+		    (p->flags & MDB_PG_FLAGS_PERMANENT) &&
+		    !(src->flags & BR_SGRP_F_USER_ADDED))
 			break;
 
 		if (fastleave)
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index a3db99d79a3d..74f17b56c9eb 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -300,6 +300,7 @@ struct net_bridge_fdb_flush_desc {
 #define BR_SGRP_F_DELETE	BIT(0)
 #define BR_SGRP_F_SEND		BIT(1)
 #define BR_SGRP_F_INSTALLED	BIT(2)
+#define BR_SGRP_F_USER_ADDED	BIT(3)
 
 struct net_bridge_mcast_gc {
 	struct hlist_node		gc_node;
-- 
2.37.3

