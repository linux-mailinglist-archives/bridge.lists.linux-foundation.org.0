Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB436472F4
	for <lists.bridge@lfdr.de>; Thu,  8 Dec 2022 16:29:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 126BC81FAB;
	Thu,  8 Dec 2022 15:29:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 126BC81FAB
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=tDgHJ9Zx
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GgevEW4LEu4z; Thu,  8 Dec 2022 15:29:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 989A581FAC;
	Thu,  8 Dec 2022 15:29:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 989A581FAC
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 39DC6C007C;
	Thu,  8 Dec 2022 15:29:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BCAD4C002D
 for <bridge@lists.linux-foundation.org>; Thu,  8 Dec 2022 15:29:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9795C40BF8
 for <bridge@lists.linux-foundation.org>; Thu,  8 Dec 2022 15:29:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9795C40BF8
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=tDgHJ9Zx
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PQW15a9qGFWg for <bridge@lists.linux-foundation.org>;
 Thu,  8 Dec 2022 15:29:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 536DE40166
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on20618.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eab::618])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 536DE40166
 for <bridge@lists.linux-foundation.org>; Thu,  8 Dec 2022 15:29:46 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mYrqpPs0UASbxKBCwD7wNeXPh8uoFRGmUEOdtQhbPKQ89G5xf0s6NafLwX/qGcUJDUI06k9BloTGODypuAQ28E0LRYxSyrqmTxQ0FtsMjnCJQb8cZ6FtJBm3Dy2x1lEqwn+Bgzfl/wt5dI17yQh/9rcStJNbtxVA0l7arTGf3EEAfv00uQ4Fb+hpA2ID5oM+TVyw2Lc5jgfmPzl0zSIp4D2mcSuPpOTgaKE2eHhcGIaDp4dbFeOTCnPU8hldcxTQJNl7pvk3eJpwuHmOnTrHIDHsCzNFjj14dHLvcUOdi5IOPDOIJB7/+vPzRF99+sBSMs9ocIvQoTXztKcMDLT01w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Io+ImuS3b07MnnII6pXyXtb80xF9L+WnhTul4DWibg4=;
 b=El72bOtt5hyB8Y+i0pX9+wLdSHq1tWpwmyIVqWDd6/2jSptfGb2z/oNigJluZjpYmceFbr2CiP44T4MVLn7jbB/EY/IuP591xkwWVL8Ev7ulHOnLTOS5393OfgUD+GpPvvxmCb29M9ET/nFkgzn7btbCKCIh75ru+pOlSbfKOMcHBm/Zw5I8zJ4uZJJudohOa+79fZCQBgUWFo1oCkIyF49P1T5LcJDOo0w+rVRTgmnTQQab+3VFErl4mi2AMC4MTJyPnwfxFWqR8a6WIJdjv4PR8R8O2Ssqbjii/tF6Yyqh++vBI8c4kDpTSC+JFFvePmq0B97UFBFj5CFZ0FgjcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Io+ImuS3b07MnnII6pXyXtb80xF9L+WnhTul4DWibg4=;
 b=tDgHJ9ZxdmPZjT9l6ris9R6nbmAI6vr/FqcCe4O/7OKW31Fes2gT8YfhP8qM3v6chF4qmdreZvsVsgKWk9NovTgbp/+EK6QxRdeHTIgZv5WnwV7dbZZGb/8A3l4uOCZUZq7pXoDcnZYykfqK6W6kHW+KkHvKpQmsp8Njn1Wm5dm/bJqTfIcfPGcHgS8L9ju4RJnABljdMYd6sAFZoQvTD69DWGId7KS8NShqmuZuEj/wGRXwWJZF7Jj54cTI3s3seLV9bAaySgp93KQ9e3JCv39szco3lGHFm49V6FdVMOpCl5hyi/ebtY2VmtbwogJlT9w3oTW+SZ+sFp9H0S9/hA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by IA0PR12MB8207.namprd12.prod.outlook.com (2603:10b6:208:401::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.13; Thu, 8 Dec
 2022 15:29:44 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::a600:9252:615:d31a]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::a600:9252:615:d31a%3]) with mapi id 15.20.5880.014; Thu, 8 Dec 2022
 15:29:44 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Thu,  8 Dec 2022 17:28:32 +0200
Message-Id: <20221208152839.1016350-8-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221208152839.1016350-1-idosch@nvidia.com>
References: <20221208152839.1016350-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR07CA0248.eurprd07.prod.outlook.com
 (2603:10a6:803:b4::15) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|IA0PR12MB8207:EE_
X-MS-Office365-Filtering-Correlation-Id: faaa67d7-aa87-436e-627f-08dad9310804
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TFtDCHjPCIuaH4bGMOZu6utbMvtsSCRzsr8ZdgD0yk3OihEHnzZuk0KrRQhMKcJT5vQTA0dI43iIFl1JFmZ9YUcDYxBi367PXcDz7EHkyaRUElRob8uEli4PURdvHbJ2uhLkhLteZZpbl87F0rFVsZKUjBJ4DSF/5ZvjN+rSEOdPUwsztZvx3gSQVDfqjnUpQp+QaJmjKQE+tl5jPPdbwi7w7wyU3UibYEuOtEewHcaLr0mHT2XCikRIGHBtSf5FCZCgHofoFsi8iYls8QX+RG+yCw/SgUU0xj3QSDHuXpLZT6dD79M++2dQ0rp7Vhh33uAoI1epZwUf1Ywh6ERuW5swe/7PL2tMhIKmav/aPvVZs9g8nRG3XkmYIiOyC47rfzZ40ir5fSRj/hVNtQnEFW59K7cW1Cvr8X7KZmpVYYmp4d813mIeQdSuimJpxTupYi260Vx//mLceCEVwkQGmMxobVzOU5n3UgxeGNKwWOWuFlEaKMF1Gjt6QexJIqp7jruzYjV2MPfpdp23vcS7+fq5MsI/oqDeZdxILv+eJAql0PMXMeUux0egYH+Hxp/JV+SRRggo9pfr5cMwAk0icECQeGVUQgEtKoEIPXC4Iywa3nwyziVDaGsO1elQwUeAXtNtAa7LXX16KiZvjb3oZg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(136003)(396003)(366004)(39860400002)(376002)(346002)(451199015)(2906002)(83380400001)(41300700001)(36756003)(1076003)(186003)(86362001)(5660300002)(38100700002)(8936002)(6666004)(316002)(6486002)(6512007)(478600001)(26005)(66476007)(2616005)(6506007)(107886003)(4326008)(66946007)(66556008)(8676002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rn4MCVa+jWL8n/OzTxrvsthQSVRB/svEutQBJ8u4o2cfy7Mbe01ypcKjzacD?=
 =?us-ascii?Q?1G7DTuwX+BZ38ycrovuwLhIF43A1T4uStnREjfTNf2UHgTMv8MaiuBfDgOJC?=
 =?us-ascii?Q?3pkCz5b9M7Yo1ie361E8tzLzuiOW56lCUeC25hTYXit8+66gcdWbaOEXLFcy?=
 =?us-ascii?Q?c/Pow03P3SW6jvrGwVEltD2a/5TjJpoiUcNEbiQGCLBRoSq6moc/KN8HKPfT?=
 =?us-ascii?Q?leGGEVSDAMK8m/WcNKdPS0FFz7RpmnqNQbv1QNroIf9IGqmrKxt7KnVe071A?=
 =?us-ascii?Q?LGp63d1YClSaWMKibB6rzMUmPJdLewLR3L4xkcKMWNYft2w7kYcMHyrZ9QAD?=
 =?us-ascii?Q?9pPhwpu1EMj4e2kdWbZKpN3m5qFzu1GxwoGtcadMbpnexvTpILOVnggYAz3f?=
 =?us-ascii?Q?o8c20uCxVn34DfN1ZLsucXhtGuv2NlX2JDgSJM5ZCIJsXu+igc+2SA7erXe5?=
 =?us-ascii?Q?hmI6OFZxpFSU97fRNTRn2J5LrNHxbPajKKVoQdcCk2iLh9K7pgyGpwgbC6jK?=
 =?us-ascii?Q?O3k3WDy+D9rdRGiuWOT8NTkSro6juSDaQgRw0UG92Crm8iq7u8Ox88qSW4ej?=
 =?us-ascii?Q?caGXzG+CFHhBMQM4Mhehzmr9xEqg0FcHGX0nbqs0oFC85SkPJLsoKTIkmZBR?=
 =?us-ascii?Q?dafG1QrWiNJ65C6yBaCiy+JvDFuG9I+ph6JC57x79gb0Q8AEwja6FTkjog5p?=
 =?us-ascii?Q?M9OVGHsu6I1ZCRBIq456StypTkF5xYujcw2kj0Gwce8MvDFUXoGKOGdc8KXN?=
 =?us-ascii?Q?mKlVSD3HCb6fuavxn0SJmYS4sIwypynienKmNfIT2q9XY6Jn29pclkl1oTDI?=
 =?us-ascii?Q?VU9cV0uLfRGEC7nRyNu82Q4Uu617NOtAXSpswU9M0Rpg/8EaViJyhB/8jY7Y?=
 =?us-ascii?Q?spXFN7vBLElSuxnivMWngSkSirFqZMesPvLWR1EXFcI7RBnclxD28nwgzTGN?=
 =?us-ascii?Q?vU+PV+PVmlapL+KHjaRbYhLiCs/k6aVXzuag8KEUWsKJDuK/fq1T/hvZTdR5?=
 =?us-ascii?Q?lVZCa1HR+dFKjEOMXrGy9gl42JFqmqjuwwYl/xewBceqUNVRU8NStIKQZD3x?=
 =?us-ascii?Q?7SmSSRr6ShslQFcKJu3F+fCTMli+peq0liA9HVUeWnT2ZGlP2pUF3Fvlp1cJ?=
 =?us-ascii?Q?cZToJPDz5mwZdkzyJLjsgSpln99wWlMjb6UXVjjyZHrrjIeGV7TWRvOjif3p?=
 =?us-ascii?Q?y+gfnWVUa2pVELLF+J5JdveGz2u+OecLa63eMiW+vCheg0EGFoeT8G5y0xs4?=
 =?us-ascii?Q?vyz+rnqfX/6kgnNVWoElJ23lZsBl6FceLUlasCgC1Zh69Kz2FVtPooNFr7XJ?=
 =?us-ascii?Q?iRShDHkC2iQdbtiKzxBvZvtrTGD1jkSCar+N2NcqLljVvTDX4P1Ihy7NlOsq?=
 =?us-ascii?Q?0qYNQ+m5cgqx6jY0+EhJyZD5ehA6h1hcUTbiphhswcVIfkSInJKzQFPZvH9u?=
 =?us-ascii?Q?BIQX9ZVEEZxKn5MTEWagCP/TfCoEHXnn+fKznECy97dwINp8ZJpDRCyONUJq?=
 =?us-ascii?Q?DZV/rAp+ODTiGpvvD1Vtlp0bJwOKlBdQNOM6MF66WQA953fByWTw708ifi9H?=
 =?us-ascii?Q?NZ5nbsXBPvmInoajeA364ref+HhoetIfdNuphjcc?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: faaa67d7-aa87-436e-627f-08dad9310804
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2022 15:29:43.9351 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pbUbDFAw+l54spojQf6OcMqTdaez55/7OjLD6VxKk5IgrGJD5k9W2o7L8qBSe+/q5OpMtD/OJIfrCwtq94IdVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB8207
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 07/14] bridge: mcast: Add a flag for user
	installed source entries
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

