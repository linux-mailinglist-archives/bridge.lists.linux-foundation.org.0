Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD02F6E7E57
	for <lists.bridge@lfdr.de>; Wed, 19 Apr 2023 17:35:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 56BF642A6F;
	Wed, 19 Apr 2023 15:35:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 56BF642A6F
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=Il7Pih+M
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xF1HmP0dWVHg; Wed, 19 Apr 2023 15:35:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id D7707408C5;
	Wed, 19 Apr 2023 15:35:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7707408C5
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7D224C008C;
	Wed, 19 Apr 2023 15:35:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 171E4C002A
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 15:35:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E5D01616A7
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 15:35:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E5D01616A7
Authentication-Results: smtp3.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=Il7Pih+M
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p4jj5Z3Wxt7y for <bridge@lists.linux-foundation.org>;
 Wed, 19 Apr 2023 15:35:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 317D9616A6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on20613.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eaa::613])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 317D9616A6
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 15:35:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VLfHe6XgoYQctrNuWk6JBWIFlWx2Im4mPBKV21bjokNszanCt88mVn5buX1nvEVq99+tRbOgVv8dbwtMS3RXTDb6wkVf7/f76ZilahBRrA0nD3Oeg5BseWwzE5gYSOBR2nmpA1QDOf64Knu+RBM9RrINk9suZr/JGM5/8LIUNRfZQTqUyEVx/gfExVJDjuH8NXxWOz1lYmjRa4uV3RXDGctmeUhtYE361iKcrton7W3Zok6Dmy5/h27Hr4Xwu46EfLomVXoakMjoZOZRKzCV8tM6twkt9OwQwV7KIwByJc4qAFrvxr8a6UeIvTDCb/Oe8tC2crX+AHVaeQhg6oyFng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mUBz3SNGRtZLHFv2gMuTh4u3NUMpfV/b/lJ/ml+HcG8=;
 b=kt55NyTSHTLHeEENAzWpiLkin4PvTtHeYTBxA9E/5mNFS1uVJJ273BXLZTN1vayQRnlKdJrmP3mRbvH74Kp+9TwJyES8mAa5Wo3fWcsluCDTl4PYL3NwuNTgCaUPMhgZee05OrBD2gCN6saZzfy8O/Tpk/nKzy/+VM/Zc53JtcDLwXauzlA1nBqOawWqPjJEdBQs4mjYTetPwvBFFPE9P0Olls+kj03KqaRb15nwMr/NPAKiDDIf+pPDnjufGnrUDOBcePmfwJ6nvYU805ZVoDOD2mWQ1H4CxifhRx+Ek9Gc9bvx+bvkZnULhmxeNONUGOg0VnMIbjPvfOLLzFZptQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mUBz3SNGRtZLHFv2gMuTh4u3NUMpfV/b/lJ/ml+HcG8=;
 b=Il7Pih+MEdd06TGaaR6S3tMQuA/myOypRwu/9kEOXsSZzO8Hh7i2BspovX+15Rgh49KJlv/EUioDLhBQe98ASjp5LWHjj8ecBTiOYw6zGugY2V+b11dhAUv5mrEfX5UmmbpuuCvRRl+xMPqcjLc4v+Ofyg9I56Twj9NbB/w7L2ItfOgvGh/0X/uplaTA99vXg5zmuQ9TK/patVu/JDi8lcBNeTosv1VhtaC/eEkaedK/eihULQYfUZa351FU9h7IRZHgKzGxsQxz6C0up100n/7kIAlLisxyyKwGwwJEiBoAjlu3rngq9XZMyfN/k2IIykbM6MujGUBXh0HI4oXIaQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by DM4PR12MB5375.namprd12.prod.outlook.com (2603:10b6:5:389::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Wed, 19 Apr
 2023 15:35:48 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::66d8:40d2:14ed:7697]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::66d8:40d2:14ed:7697%5]) with mapi id 15.20.6319.022; Wed, 19 Apr 2023
 15:35:48 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Wed, 19 Apr 2023 18:34:52 +0300
Message-Id: <20230419153500.2655036-2-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230419153500.2655036-1-idosch@nvidia.com>
References: <20230419153500.2655036-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR03CA0075.eurprd03.prod.outlook.com
 (2603:10a6:803:50::46) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|DM4PR12MB5375:EE_
X-MS-Office365-Filtering-Correlation-Id: 23b5f988-e397-44e6-d2ca-08db40ebbf74
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9n+wG3K/ACc7gDWTnNBTKBHlCfA83KMdbtLdu9/CHj3lKzNUmLZ9frZ+4OV4h8jUXO+1+IRWV2VcADv2gdXbgi4TE3ky8eob/HEnB4TXOCzNj4b0Ewc7O5XVn0QDj8yxrO72eOxcyY4um1RjziYjliSxlzbliMLC46vaOdj26LktmTJSRpEoWsgytynbV/R8cadXu0aOvT/jEzhdSRYm0Z2+EMTCb6IUI5vJ6UmUA8J6SfEeS8y06O7OScaY92NQIaWa5f2cm+NGYdo1kvGHzvirtiu1B6feaGdrqZx4ZP/XSBfOanQddJLESABxTbMr4H3GoYkOgtjcvuQP10B++EJQiJLc+aFUTlRBxAwf3xwKt38f7P4ewppPAnkpqbQz7IOR9Fkn6FEgjaICPX6RhiXVy7cxgBjAx0KQwWw6Qz/JE1TwfiDhEaRH3VMYmLn4J6L+M61UxB0EoSPoNJRKCGJxVJNg/knQKr64mo5OhjfWVoVrduIednJCbN8Zd2L18ExRp6anJaWsdoU8awOCacILMu71mAdYkJJkBHlh14NWg99ZAs/jbPE/i/6vlMDm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(396003)(346002)(39860400002)(376002)(366004)(451199021)(5660300002)(86362001)(2616005)(107886003)(83380400001)(6512007)(186003)(6506007)(1076003)(26005)(38100700002)(8676002)(8936002)(478600001)(6486002)(316002)(6666004)(41300700001)(36756003)(4326008)(66946007)(66556008)(66476007)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?T4WrINrU/QPURUG/u02miRQApOOZXAyNOZmzsDvmwALvAEcSSIJOtS2ij/6h?=
 =?us-ascii?Q?F3g/LuA6iS767AtvRik/F5DY5tFGJRW9/uRxrzfBYrv6kG4M3E6C0BmH4vvy?=
 =?us-ascii?Q?rJmf08d0F8uXL3UM1YB/3mNqdmup1kwi/tVEpsOgZGDiu26HXeYPx7YE+kpy?=
 =?us-ascii?Q?27ObY7EZDySmPOSwQLn4YJPdU1LCGjs+2P8jrKCuX6VFJ+U6nxCKfSEszK7y?=
 =?us-ascii?Q?/QpGKoBDn+aQk25r0Qn7RRHBrqjio4SvtqmYFI72GD0hNALDURBbQsieD8hr?=
 =?us-ascii?Q?CuJ7La9X+QqVZmiarh/j7dK8Ixg5b4hSKPdVfnPiJ8BO9UmeL/ORsJUPOPq6?=
 =?us-ascii?Q?eHV8euuTO42gVYxojl6SxhHB+MYdiEL3M111WVJ5ETpGFoAjacDIEhFSeAXN?=
 =?us-ascii?Q?4EIcCm8cZ0NrdWXVauwinquFardzGwSWFU2GrFsPBEgh3j4nbkRud9DkWqaf?=
 =?us-ascii?Q?odUgAABk4fNmYxVqfLp4EdO1ePU9yE+3PcpseuGiT9EgwY6+WVgBNrjGTQ1g?=
 =?us-ascii?Q?9lTwvVPsXPVuv/eUatvVdblvEYxCqTy29hqDYDfypgH9JZ1rb+ipHv9Qv0c7?=
 =?us-ascii?Q?2msx5q+K4W4MHXaqq8927xwmC3gMaw/Em7rNWaSaWvs60uG4sBWn1mCkDjTN?=
 =?us-ascii?Q?Wbq0KpPFOTgDKO1iJeYcFAfZOD8/HmUJBiX+mjS0slD63+IzSvCYV7RDC5vw?=
 =?us-ascii?Q?M6Z4MLWRIbErEnEqxKKdhnlCjkAO81WHoB6C5IYlE+3ZoBNO5UBaoLmNY01n?=
 =?us-ascii?Q?tVw2syYB0dZblORoDpl/WH5DYFOU9WGDW6ycKZiQCPGzMklg1KdCSbP3klpy?=
 =?us-ascii?Q?CpGSz6eJWMYXbbkRHDx1RnNQELEZAzKHeLBKzZ798PWq+zvoMhBtGDme0Rcq?=
 =?us-ascii?Q?qdX4HDJ26xPbKVQJM/vHC/Rvy4pWFLq+3x+HPX3nmWl+//mEjd9+lIAckykf?=
 =?us-ascii?Q?H6Sh4r65qSpFiHC8HoXay5mFHk/o5C992CAMM8gfhElf9H2rVZjCKgM1fyA8?=
 =?us-ascii?Q?v7NIYVsy8LxFNwJ7TucbZ6jFbBGzLavw9Ql88LDz+wx5txL69O9H2AVv/E4q?=
 =?us-ascii?Q?Pa5GNtqeRwJ+3xrxZ1xhUTzoPdUoI2tCMgzMGWG+la7+pNSte+Ued/eeSAVg?=
 =?us-ascii?Q?J5nVLJqusTbARqLY+62dOWycdQRkhy+7pxcvlm+uQHpirjfcDn1vCloZuA6O?=
 =?us-ascii?Q?JQ1IapIZ4RUPIGcl8uQeXbtVOClQRNjH/e93rQK2Y1lNNUVErteZCK3s/h7e?=
 =?us-ascii?Q?u4rafVd02S04XaqQeYWoerbcxwlSvYEb8xsZ2WgMYKCz5Rf5LuDhbZnZ1N0p?=
 =?us-ascii?Q?Z+3OSn+UhX6Nn/9ceFB92pbfb3qKI9BHZ869Ud3yS65q91x2Tt+0TeKOvl/9?=
 =?us-ascii?Q?JUXYbr0VKhdEQbniqr/Da5vjOQ1Q+x8C3nz5Njf02LD1nwwvMhYwM19f9Hsm?=
 =?us-ascii?Q?HuLcD9rV6peI8AAWL4oC5i4taixyXivpNPlX2eRUIcA2reqZJhTpiuuHqoRb?=
 =?us-ascii?Q?MAAPm66QQslL8m0MCyQNmkt9p39w1tP9bzoIhyL0/ZhAthUQ2aYlsheL53W/?=
 =?us-ascii?Q?YeTrNSWfy6GrNns46GyAmu14sujnOHmY+dVMLiRx?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23b5f988-e397-44e6-d2ca-08db40ebbf74
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2023 15:35:47.9400 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xiP9lqFya/9S/V1FeAzL0e/0RaAXCSCKx90gR5LcIKvEF12V0zr3TdSXGAJAW5cQ/GaDwIft4z6LiSWpoRJ+sA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5375
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 1/9] bridge: Reorder neighbor
	suppression check when flooding
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

The bridge does not flood ARP / NS packets for which a reply was sent to
bridge ports that have neighbor suppression enabled.

Subsequent patches are going to add per-{Port, VLAN} neighbor
suppression, which is going to make it more expensive to check whether
neighbor suppression is enabled since a VLAN lookup will be required.

Therefore, instead of unnecessarily performing this lookup for every
packet, only perform it for ARP / NS packets for which a reply was sent.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 net/bridge/br_forward.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
index 02bb620d3b8d..0fe133fa214c 100644
--- a/net/bridge/br_forward.c
+++ b/net/bridge/br_forward.c
@@ -224,8 +224,8 @@ void br_flood(struct net_bridge *br, struct sk_buff *skb,
 		/* Do not flood to ports that enable proxy ARP */
 		if (p->flags & BR_PROXYARP)
 			continue;
-		if ((p->flags & (BR_PROXYARP_WIFI | BR_NEIGH_SUPPRESS)) &&
-		    BR_INPUT_SKB_CB(skb)->proxyarp_replied)
+		if (BR_INPUT_SKB_CB(skb)->proxyarp_replied &&
+		    (p->flags & (BR_PROXYARP_WIFI | BR_NEIGH_SUPPRESS)))
 			continue;
 
 		prev = maybe_deliver(prev, p, skb, local_orig);
-- 
2.37.3

