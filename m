Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A10648F59
	for <lists.bridge@lfdr.de>; Sat, 10 Dec 2022 15:58:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B4C8415CB;
	Sat, 10 Dec 2022 14:58:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B4C8415CB
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=tU0RshxE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kdQjORNY2dd3; Sat, 10 Dec 2022 14:58:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 95882415D3;
	Sat, 10 Dec 2022 14:58:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95882415D3
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3CD54C007C;
	Sat, 10 Dec 2022 14:58:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CBCC6C002D
 for <bridge@lists.linux-foundation.org>; Sat, 10 Dec 2022 14:58:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8BC6440483
 for <bridge@lists.linux-foundation.org>; Sat, 10 Dec 2022 14:58:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8BC6440483
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=tU0RshxE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SdqZklNDvOMC for <bridge@lists.linux-foundation.org>;
 Sat, 10 Dec 2022 14:58:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C490E4047C
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2043.outbound.protection.outlook.com [40.107.92.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C490E4047C
 for <bridge@lists.linux-foundation.org>; Sat, 10 Dec 2022 14:58:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XjEMEDEcMktwOmyD/MJboyRU0Ph1w8xH5zQZyd4TsKKjo9mVpdR/vqa4Mo0OfMyhypmLxtr11DJ0Pp+Ulil6paRkczGAbedtwHrroLkGfS3oU4hYfuhnSlQiT/JubTY6vp5Kko7wAIhv9qGZqf5VBRAFXRQgvmlSUjMoLiq0CLXv/0+yjRLyP38zWdlWLf4ZQm0ceObPVgikkLqiXaXJ0aqjqylwQhqQ4FK+fgVPXAp0d1/UTc2+eQlU53z0mg3atmX2YyQCxjN7zvkAgMiJ+PyIgp74s3XimhSlFQnDMnjTHLhIL+Ow4PBJ+ni3ohGE6GnxPLSJq401hnQc2gcHFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/mwLfxSWuHXHhKMuieNDUM3tBBmhZ01RMiC5XcCnZss=;
 b=TQUnDgTCw51qDsKqmt5z9GrhaB0sXzu57qUPHYF1y5la1wZIAm7Iz4mjYmT9orVhP1LFeyTWPuDOC5LNNbecfQonf9fvUAzOc2D2/L/n1VFUV7H7Q61UscX3PZYi0t9b1H+G80lB65LxhpTNatJlEA2QF3324p91D/NpZ+sTnMltuCDRom26qwrP0kigczBiHqunlctFGtrgkuoA4ciwE4CAjmbtS1VB0R3Po0ASXACpXd/UV917FdWiPRe6/LZRO0aUcrrHJdEdMXQ0HbtPqoGqjVTzHpAFTnh3pDwWOxDElkEbbuwk79FzqoWyZu8cR4zrGvEdAt49tlYUMVGs2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/mwLfxSWuHXHhKMuieNDUM3tBBmhZ01RMiC5XcCnZss=;
 b=tU0RshxEGC2gRj3vxZS2hsR8UeVpsM6cyZD5Q9bxWZZQ0Pk/WqRPn+hRYHQQAXqH3PHDP1MkJJA83TR+FnJuG78qpBWeV1+jz0Tp/pQbhRtF6RkNassKZ4vhPbJ6IU8q9tK66kdDF9Q32hfKpRzaMqq9qs2ZHBRUqIAUvhnigrN1XhL6UUAPdLx9nrNHb2DrtPoLZw1j5/G4Gn0ZB+HiWhu8cJ4pgyArJy8tPLunJoMvyOam+HLUQpJcBiojMZXM/ZjpiNcFgmifu42pKbFbC3eDXmiuxIN0Evze1ftNmVaPtdjHLp/6IqJUWtl7vwxpnbYny+6YxnlTRFppxpnoRw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by PH0PR12MB8128.namprd12.prod.outlook.com (2603:10b6:510:294::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Sat, 10 Dec
 2022 14:58:45 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::a600:9252:615:d31a]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::a600:9252:615:d31a%3]) with mapi id 15.20.5880.014; Sat, 10 Dec 2022
 14:58:45 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Sat, 10 Dec 2022 16:56:32 +0200
Message-Id: <20221210145633.1328511-14-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221210145633.1328511-1-idosch@nvidia.com>
References: <20221210145633.1328511-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1P194CA0038.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::27) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|PH0PR12MB8128:EE_
X-MS-Office365-Filtering-Correlation-Id: ab70e1fa-628c-4f35-f884-08dadabf08f0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VyVKuP0aFZRr0wvyacN93B0dlysJ0sdPne9U+zUJDslPe7r0vGoCOogr9VM1Iw938ItO3YTOEQHk9wWbPwfSBnoDCSP2R7hFSRIrP/si4M/euewOIIQ0qQZHat/6o3G/i1+igfT1IneoLfq75sNjuNVin0fZxBRxuCsEHAYfmYGsqdhy1iWoiN5yAFODI4jLzeo9gFqk5EWSSvj5YFncAEPuLo/mElH2Vo10+bxAssu9DrRrlJ9vBYo1GOiOVqap7bT9JcmvFMQw2RHFrMdHvQDHmWDiseciPHqf7PplRYAHXZ1lIKCEC4UBD/T1iJBG3AfeKQAc57qYXpVMvQDRP5CwFnnQg3nxJBZUcSnZ2clj/ItcJW/t1KN45Blwi/DqhnXFFPTDLTpDVAc5NvYJGnwfICE/6T19s7flaY3FfwHdAFdej7kliTV6wTBjIcNMD/umd1bSmzRdu+S+cIzIEWL3ovWlLvzwDhpv1n2dd9LHSjmyXyqAAcmLOUSbSJkpFUnl6IcbfxMZd9UrHFVF5Ia+B27+12Tg/omrRoBTe6u4lHak/hycOtDosJnXTVb6r+g/iivMwN4JaGuMhify1mJ0pyCPhyaDX2LTFYBhn8A8vyf6Ffq35hS2qY5pOkVbC02KgfvKnmMO7jsBy3FvVg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(346002)(376002)(366004)(136003)(396003)(39860400002)(451199015)(36756003)(86362001)(38100700002)(83380400001)(1076003)(2616005)(6486002)(26005)(6512007)(186003)(478600001)(6666004)(107886003)(6506007)(316002)(41300700001)(4326008)(8676002)(8936002)(5660300002)(2906002)(66946007)(66556008)(66476007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?y4xTPBY9YXQ+JTuBeP3ITPfHhmhOwJ7b+LlpGZs0sZepdEDi26cT4JOUIE9l?=
 =?us-ascii?Q?z5Hl+Eu9k+kxqm7BnnXG9+/C3VfC6CFxqgjxZvNd0lfMUmNfjr8heINyQGoj?=
 =?us-ascii?Q?1j5yhMJStTRGZ3uVmOovXQaoC6oI2Il3c+ZCSggb9Q5lm8weZSED2KDgK2Eq?=
 =?us-ascii?Q?v7Vet0hTazqveK2O77+HU1MBGs3QMcdF1KD6+kHOL5Ng00m2j8sZsbXna/cl?=
 =?us-ascii?Q?gz6XPVHcgjFk1CpYiov9UA+lgo//4IDFUkyU/MVhYGOM8sGxbtmEfAXnqzCr?=
 =?us-ascii?Q?Yhmc9HqGRY9e6gErw92wUhSOgje2LJ0c0JpXGm1BzPnxiDEjEHKBce6jv/u8?=
 =?us-ascii?Q?uQrRk4EZsNWzdmyw9D9l9O0BD2lp/Mk0KMuilghVZpNNx+WwksvDU6nPgHZc?=
 =?us-ascii?Q?a+kWBwIvxKd63cDGX9zCpMSHHhXP3TJDWETv3nUULwjO1Ps1wNUKx8edwWBh?=
 =?us-ascii?Q?rpgo83+nw/SC0DphC4J4qVfL/eL/IlZRvjB22tRzTLbCTJQLn/8t5PFCrccj?=
 =?us-ascii?Q?SvzeUXlWa6c0vobXFc7yzy3eeMU0qUlQD//j0coRNjsIbl167dUP+2SYBSwA?=
 =?us-ascii?Q?T/wzWslX+GwSa7oXthtvSz48LTQsebRfppcZ2KHarhvNLFfUNwRY7WMp8rn8?=
 =?us-ascii?Q?zvgjPISteh3RsxXZ8FMN5OS1XyO4W5YgcmaV2gdWyjlGYqi/cc3KmyfSq9Em?=
 =?us-ascii?Q?jR8p+nmCT/4Q1dEWWzB/8Z2m89khRAoPVuyVDKesD0EVx5Vacpe17zk55TEO?=
 =?us-ascii?Q?V5AUgO+BjzkLetW2mkJvM6NVXrCrvy4dbGTuK2+EprDwM7h6AHhm2yKyoe6x?=
 =?us-ascii?Q?VmkyKgEWQxKt9c73secx8TepXYesxM75RNhznq12qI2zdAi3t7V98YpPOM+p?=
 =?us-ascii?Q?/RLOz0OoKlIl/yPkrJv9f3d4uhsG3A0IJsHpOeoJvTQlkfempArnV1/s0XrN?=
 =?us-ascii?Q?CYoUrsg9BV/nHI2XapT7JmMIlMlGXo/FmQxrnTy1ldKR8BxEhengugwFP0pq?=
 =?us-ascii?Q?Hwt0WRSD+cCwpVvabOW5nFLuPkS4rVLZgWENMCYvrC0K3OqWTqd3KeOYxD37?=
 =?us-ascii?Q?aR8mXeHhQrQSb5jOy5O0Q/ndPwKg4Kqlg9ePfXnrH9maB5i9f0DBh6HLykaH?=
 =?us-ascii?Q?e4hZ1XgMeiFkVzuFWwi9oS8x3y2w/IJusRwCadtOYUOQxyN1hLzXtg6qbfgA?=
 =?us-ascii?Q?9c2BNTi7E9KzEvZ762tWf2kqubChEyZdkWwxD1Fxq4TpcWoMlUzfkl/q8hdS?=
 =?us-ascii?Q?dfSUK0EKF0tuprLOS83lwdjbpR0eT/MP4pAjEVeowM4P+YeeQZXD4FCNzRAB?=
 =?us-ascii?Q?9ebKCbbMfcApP5s2Fu/FpM3pbaJzWj522P/PXv09HAVVg/wo5jesWORNpXm3?=
 =?us-ascii?Q?zmEEMJPjuGrSlZolNeCMmcTheq9cyB3h2xWFc2dn7w9ND9IkMwraXHSYvHxG?=
 =?us-ascii?Q?6Cu2dvODLv/7Y3TzoyH4KPP1Re9pv2aCPpNDJBsxGeVJO5YEwfiE997RDLuj?=
 =?us-ascii?Q?WrvqjaHtjvGwrTTxsoiOCs2Z4sXstQfRNUC7r3RfvsTL7EhWJNh+nR3iJ4dQ?=
 =?us-ascii?Q?ML/a7i7QAF8mh6hmBbUUNPhoBkH1oCODLTZNqMM6?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab70e1fa-628c-4f35-f884-08dadabf08f0
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2022 14:58:45.0902 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: raBkfK1dhW0aAMOdz6Y5qdwajDUmxOnGMZfrPfCsHwUDZgfFfmakmBr5b5KT8CLk8zwAa/DB0i93NNwIuSjsmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB8128
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 13/14] selftests: forwarding: Rename
	bridge_mdb test
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

The test is only concerned with host MDB entries and not with MDB
entries as a whole. Rename the test to reflect that.

Subsequent patches will add a more general test that will contain the
test cases for host MDB entries and remove the current test.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 tools/testing/selftests/net/forwarding/Makefile                 | 2 +-
 .../net/forwarding/{bridge_mdb.sh => bridge_mdb_host.sh}        | 0
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename tools/testing/selftests/net/forwarding/{bridge_mdb.sh => bridge_mdb_host.sh} (100%)

diff --git a/tools/testing/selftests/net/forwarding/Makefile b/tools/testing/selftests/net/forwarding/Makefile
index a9c5c1be5088..f2df81ca3179 100644
--- a/tools/testing/selftests/net/forwarding/Makefile
+++ b/tools/testing/selftests/net/forwarding/Makefile
@@ -2,7 +2,7 @@
 
 TEST_PROGS = bridge_igmp.sh \
 	bridge_locked_port.sh \
-	bridge_mdb.sh \
+	bridge_mdb_host.sh \
 	bridge_mdb_port_down.sh \
 	bridge_mld.sh \
 	bridge_port_isolation.sh \
diff --git a/tools/testing/selftests/net/forwarding/bridge_mdb.sh b/tools/testing/selftests/net/forwarding/bridge_mdb_host.sh
similarity index 100%
rename from tools/testing/selftests/net/forwarding/bridge_mdb.sh
rename to tools/testing/selftests/net/forwarding/bridge_mdb_host.sh
-- 
2.37.3

