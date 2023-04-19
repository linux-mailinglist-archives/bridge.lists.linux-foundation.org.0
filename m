Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6A56E7E5F
	for <lists.bridge@lfdr.de>; Wed, 19 Apr 2023 17:36:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C26E98412E;
	Wed, 19 Apr 2023 15:36:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C26E98412E
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=G2af6Aho
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a1T1ucnhl9EP; Wed, 19 Apr 2023 15:36:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 621F484106;
	Wed, 19 Apr 2023 15:36:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 621F484106
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 08494C008C;
	Wed, 19 Apr 2023 15:36:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CB792C002A
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 15:36:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9938E840F4
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 15:36:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9938E840F4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b7mqKF8ob7IK for <bridge@lists.linux-foundation.org>;
 Wed, 19 Apr 2023 15:36:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E8B44840EF
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on20615.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eab::615])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E8B44840EF
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 15:36:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BGJlcCQjnWBhPMyVXL3LUXHPbNEjeIvq9gnJiQdoffL4fi+zHOC+PR3/qzGCp+sm9dMOpqrPKJJqc6i9QSMjaW2/wTl04mGkunQ80PKJe0H1lNilcvyEUkisNpL+E7C0+G/lZ2f3/1d7/5nnuaSQ9pI13MdFDJpVCMb7sEJMV0VVKkASdERqRFt1sP6Ng246VN5u1dgTjv5jmeag7jHKmsTPt69hyeh6oe/eHqGGa/B0IAmJF0Nhk0VqRinfqW7B5J2X4obDCU9Sv4mY1Dc7xkbzvY8sbpsXYLfttCKBae4BTI6VHGezsHxjgWPobCUX3L62i3hh8MMTX+g+xDgqzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7IpttaAn4DY0sV5dwPziEXk3W4FjjaFyPbq1SKIyX2Q=;
 b=fzfPk54TZq8qi1PGEi55UFaHhi0+kBy3h0LSOOFwSaDTl7ymwpqJ/miydwYe4/ymJnkA2SCPgGCBW4pQUsGSOSLSmWGO9yOUgzGZR+ClDxEmqGRJBIc4vnk/utu6PyzGXd9BiL4/4KbGC7p/lmdbIhKrxrbb50YVRuvVET+OaKihUuRa0ydFXioYq7WZ8WIAqVvhK69WhvrBWVvM41ZhyAAAYTQaORUFVDe8GNkEqNK9a8OK9bra7k6wcXmO/fV18U1l1XIyKP8FG4I2VMIzeMvGXy2wq/TqPZNVU+zkLdslOeCOZf5H8o/atCVaI/ne4pPUjBuNNwnnl3VaDDD8OA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7IpttaAn4DY0sV5dwPziEXk3W4FjjaFyPbq1SKIyX2Q=;
 b=G2af6AhoEOlyPk7DyDJlwP3Thv+UmpSQJ6la2Zng2AuTyRqDwjvcANbXTBB2Mvslo2NBP5RhAdvmyR+vP94T0X5IKhNpOsvTagaEJ3YAWt+L3deUJ4svCTO5RuiwgGjNzy919WqS/CIsMbGeujIyFSbW+JwTSeR6433T6Bmacrtdy9Eb1b7mkSowgHNWDDzNb9BgnAUPPPUP5jHYKhMZYdcl3nnozyUdWZEyihD2oIKqQO+XL1tozna1l8Q0ZTJq/oSOGaTxXItPywlsj+fs/aCLs8R+NlfZbdb7+GGI2q23BI67i48kL7r1M0/AWcxu5C4pEzHdAKH4LCg8deIHpA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by DM4PR12MB5375.namprd12.prod.outlook.com (2603:10b6:5:389::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Wed, 19 Apr
 2023 15:36:09 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::66d8:40d2:14ed:7697]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::66d8:40d2:14ed:7697%5]) with mapi id 15.20.6319.022; Wed, 19 Apr 2023
 15:36:09 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Wed, 19 Apr 2023 18:34:55 +0300
Message-Id: <20230419153500.2655036-5-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230419153500.2655036-1-idosch@nvidia.com>
References: <20230419153500.2655036-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1P195CA0068.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:59::21) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|DM4PR12MB5375:EE_
X-MS-Office365-Filtering-Correlation-Id: 06f8e70d-4a4f-41e7-39fe-08db40ebcc47
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qmVpWy3O9TtjtmuxeZP+TIEXKW0HAD0Jazu30IcNcMc08DSzbOUsOSGRbcLPBzKJi0nwPCmKcyPGP0RjTH0YrZ/JTBAjqUCtxrkmTB/RvA6ldvYi588LroZtKV08ekU+I4O2yfjtQePhF6Rku0ddwYrvG9dmlMf5nX8et2RnLk7SOlrbwigIhhYTnT+EeF2cQ1n9suVdVl+dUXLVOIeewWqHx0n7elaFWsgNCuuxQ0ru4Bh2vh7BDKq6nOMSbRpgFHyjsKuXGd5f//9n6odlcx2GzJ1z4j2+e1NeWuqiOWPxONGh1/frQOOwayTGblmohh+j4EK90A5qxVg6MRQK7zM61pqB3P5eP4ywILd4kdHpLqpR6acnMjGUlC+7PGvOY13lcQJMj4BUDBMHRhlcx0wkFJwg1XGUccj40RhSDQ2NQQMiT7CWjjXMERR6xZkZ6WMI4q6+/ptiM6Rh6R8Tc5CCqXQoktGK0SXSV6nyohKlVQ0kToEgi37NfejBsr4/FuJAFcI4tu5NsDNNE+Jia3wRwXUgUCfZh90/nYRuw6Ac4EeLIJSBVaVE5U6b221x
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(396003)(346002)(39860400002)(376002)(366004)(451199021)(5660300002)(86362001)(2616005)(107886003)(83380400001)(6512007)(186003)(6506007)(1076003)(26005)(38100700002)(8676002)(8936002)(478600001)(6486002)(316002)(6666004)(41300700001)(36756003)(4326008)(66946007)(66556008)(66476007)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FFOFieptoZXQDH1A5woYyug3EMeZ0mfZ72k/dVzMLgufJPEYZRSvnpTKoW01?=
 =?us-ascii?Q?UhWrItDIUmXtYgtGKBiKMaPseWDQz1bRwPkryGF13de+UgF0cBBhpPPRk4/q?=
 =?us-ascii?Q?ZJJitLhn5A+xkqaLMSbpfp4SlA7bkGyXkvbB/jS28GqXcOGPz6w/L2kD9utO?=
 =?us-ascii?Q?cYCGUFTF2bsWusPHUa98HY73F33H0tt2xxIElbXe3m80x4Oef0sGdOdfw3QU?=
 =?us-ascii?Q?qkhk2sBlFuz3wza6m7BJZ0CsDfctytiEmxGBYJHvO4mBBUoF/vZRbe5kThx/?=
 =?us-ascii?Q?fzQm9WzjVcAsIgIEycAJOCeMiN5ybnCOFm5WRIzviQdcCYiK+lyEcn5YQAUI?=
 =?us-ascii?Q?pD3ziYVxKx1p93QyLnsf3jPVZuKcUT4OSylX8kXUFqV9yYlg4CgDcCcPSwWe?=
 =?us-ascii?Q?lbTu4W0PtAjsKCYNwtMwIRDajqdjUpdhMHNJJQQBQpjDk6onoh7sUkcbsyuT?=
 =?us-ascii?Q?4GcF9U5qB+F5iXtPbbv4EKu20EKmczQID/hRi2FRP8IsjqTKm8qsLZvJpfdP?=
 =?us-ascii?Q?C5WNfmx9b7NyL6R8UnqmHhc19uIIWWdrw54rXtD0L3lNqsUeS7qewka/7+GV?=
 =?us-ascii?Q?iAXbbVw3GgcxF6jJdjvtd0Tp/yS1mwuwQ9eLvEPUOkc55nISKHqLz5BHJa5q?=
 =?us-ascii?Q?GQBESaps2kATgxuhjQ6+eoz5EJSy7xrsnnFQV9rWNooO7oZCYbVjh2Yeh3aw?=
 =?us-ascii?Q?zLx4xRu+/xCbTFxql04ZEU4rjmEPgxV/01bo3MDupameON0JYqGNsaA2YgVv?=
 =?us-ascii?Q?oc0D1OpFsnMsZ81xmic7b/Cf3dsZyCzPSixl1T7d+M/1QRgblNT7yvhvFxtG?=
 =?us-ascii?Q?LnEqiQNyF7i42g+udmJySY12Jb+yQcr9Dxey+96+mcP2GaXZAt/sC2chX8Bh?=
 =?us-ascii?Q?gi5+zQyzi2KjhHtMmBH3+72PYrcJH3jLnIlTl1RMTG5NQmUeI0acBFKeM9JY?=
 =?us-ascii?Q?mylkazsHuPAJLPDzpYLkI4XMpCR7RDU3SirMP9cd9m0geL21LncNWjB+5G0P?=
 =?us-ascii?Q?VjTAl5uxUWtRfAN39ROICpylTee+czLruNJuw1PfQuS5vSl71CosNwzGvuQE?=
 =?us-ascii?Q?lgAj8MCoZGBezP9dUZkB9F9HQFmZsPo38MQUlRcM904BpGdiqMuKhLMyvves?=
 =?us-ascii?Q?/FdNSTGblkkzU6HBDCrf1b36aT4weu4vHBuTiFCT1PeNEZMqgkyVSrUzn/V2?=
 =?us-ascii?Q?zkDGVmn+oOETY1MwicfruaUsPpHfE+sNwybjYwOMEQ1W+ync0vLqc+EI/ul+?=
 =?us-ascii?Q?XcFxJfW/SqQ9zhk+ffWz/UfPcgEK1oWzcwo/Kd5RFTaVDVTCuwdLTVugigEY?=
 =?us-ascii?Q?jp0ml5HltBnOo2GYFaeGbEaGlKeb6pnwh7CJ+jPnV/tygT7BEEasLK1o2bfq?=
 =?us-ascii?Q?6X6dpCq8LAnbjOMyMKWMWWNaEdDvknu4U0IiH3fvBsZHh6V2Jr3plPZ+BR/d?=
 =?us-ascii?Q?Ijr0U9QhfJ63X/duB7Q63cYZOUUnxHzTFNRNagnt1gIf4c7tJhGV9nCjIfE/?=
 =?us-ascii?Q?fslqL7lNMOHUpuDpP1ck4dWpa+wtJvriH7bYia+vNLkNAJJ2qJzd4mLNbtzJ?=
 =?us-ascii?Q?t95mXbXNKr5EpbBXYyy7qHVJa8lqyAodOYIU9Flc?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06f8e70d-4a4f-41e7-39fe-08db40ebcc47
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2023 15:36:09.4688 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CtuCO7hiDMWEntMjUpA0cZD25P45C+K/kScxVY5OdM2vKW2ubzIHj665RTP/o/+hOptSINWgf6aHvE2ACxdYWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5375
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 4/9] bridge: Take per-{Port,
	VLAN} neighbor suppression into account
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

The bridge driver gates the neighbor suppression code behind an internal
per-bridge flag called 'BROPT_NEIGH_SUPPRESS_ENABLED'. The flag is set
when at least one bridge port has neighbor suppression enabled.

As a preparation for per-{Port, VLAN} neighbor suppression, make sure
the global flag is also set if per-{Port, VLAN} neighbor suppression is
enabled. That is, when the 'BR_NEIGH_VLAN_SUPPRESS' flag is set on at
least one bridge port.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 net/bridge/br_arp_nd_proxy.c | 2 +-
 net/bridge/br_if.c           | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/bridge/br_arp_nd_proxy.c b/net/bridge/br_arp_nd_proxy.c
index b45c00c01dea..016a25a9e444 100644
--- a/net/bridge/br_arp_nd_proxy.c
+++ b/net/bridge/br_arp_nd_proxy.c
@@ -30,7 +30,7 @@ void br_recalculate_neigh_suppress_enabled(struct net_bridge *br)
 	bool neigh_suppress = false;
 
 	list_for_each_entry(p, &br->port_list, list) {
-		if (p->flags & BR_NEIGH_SUPPRESS) {
+		if (p->flags & (BR_NEIGH_SUPPRESS | BR_NEIGH_VLAN_SUPPRESS)) {
 			neigh_suppress = true;
 			break;
 		}
diff --git a/net/bridge/br_if.c b/net/bridge/br_if.c
index 24f01ff113f0..3f04b40f6056 100644
--- a/net/bridge/br_if.c
+++ b/net/bridge/br_if.c
@@ -759,7 +759,7 @@ void br_port_flags_change(struct net_bridge_port *p, unsigned long mask)
 	if (mask & BR_AUTO_MASK)
 		nbp_update_port_count(br);
 
-	if (mask & BR_NEIGH_SUPPRESS)
+	if (mask & (BR_NEIGH_SUPPRESS | BR_NEIGH_VLAN_SUPPRESS))
 		br_recalculate_neigh_suppress_enabled(br);
 }
 
-- 
2.37.3

