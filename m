Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D606B6E0AEB
	for <lists.bridge@lfdr.de>; Thu, 13 Apr 2023 12:00:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4BE5041FA4;
	Thu, 13 Apr 2023 10:00:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4BE5041FA4
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=uF+xBlYZ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nH0AFAdRc59X; Thu, 13 Apr 2023 10:00:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 341C541FAF;
	Thu, 13 Apr 2023 10:00:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 341C541FAF
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EA8B7C0089;
	Thu, 13 Apr 2023 10:00:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3F547C002A
 for <bridge@lists.linux-foundation.org>; Thu, 13 Apr 2023 10:00:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0B27783F47
 for <bridge@lists.linux-foundation.org>; Thu, 13 Apr 2023 10:00:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B27783F47
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=uF+xBlYZ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A3r8zCzlzrzD for <bridge@lists.linux-foundation.org>;
 Thu, 13 Apr 2023 10:00:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 454CB83F3E
Received: from NAM04-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam04on20601.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e8b::601])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 454CB83F3E
 for <bridge@lists.linux-foundation.org>; Thu, 13 Apr 2023 10:00:02 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ex7Bga8R4BliK0NAFb8dFInRe20+74kH2jZB2Q8zrqGUKxgvsUvKdwMwmExx3VMiU+swTPIMRGX3ORnjICzFfkog8EvHqiRbblUzEd4SFcrq+yIi8U7ugWOuNXesjXNQvnbBM/Gv3TJ7WmowjVkc047drYxreUwAPPDiFf3fZIPCT5dT+cswB4HFn/HtUMMVbvl2MedSxBrYPzIj7JXaXGh1fcgVfptoHu4FAzO8Jn27WHO5n2MhTonplJTafEAjl2nMKSvgJ8qo8MGtjBQYB0n8mki416sNJYk5dho0NwxIncduL6BiBP98+LB5XSLQPAM7qnJ8t2+W1cnQw5QZDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tm/998fYJpyPV2aNcbC2a012YpIfmRWu/btH0Xyt/vU=;
 b=nPGkio4sl7BgnGeTsHCxwU8l7j8lsqZUjqXSFJRkG5bnWdGHwYTfvGd7jMawAh751RHAyAh+3wRZOKQgtO9FG3axWUa6YqsWf4FQcE26//7uQ7J3Pl6nSO51s9yZO6jGH7U1+8+BUrsWDj0lZ2kRcti8efMfh0Lzj50z/rLRogCEeZzZIJJGKuRhOwhIKmIPZSRI+y9t6eb9mML5vL6rxZAvtiwRLbF6Nd130njLgtWHXFESmek49gKpoXQYzjdulFpxqHhMwY6MW8g+zeQppdU/hLm8fyRKNjNEVDd3fqnZHrZGufnGb13IoPT3QiZdLiZvWcvQudZCAULNz85WgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tm/998fYJpyPV2aNcbC2a012YpIfmRWu/btH0Xyt/vU=;
 b=uF+xBlYZggBiU0diFw7S3T7ICe2QXszFDaD/xZUwUA+QU01b5D+Pdys7QNQr8hng9z08CGaK753191DsuTvSAgegFuZ8Aep9RE5OGatqoJMaPLSWlYiMa27xsds2+2kN2zHGy0DaFGc1n6elRue2su/61szsOz5IVV+A5yaeXQOrO59OPSSmFMqnzo57t4ayexBUUCA4Y4ADr2fx5AOhOFCFjo43v5DGU9O8c6wDtnSO3/Qcz44qtOZ8zHSsaX3MYYhI/qvjjlX1oveGA0hZHEv2tI+UfPgxMUgc5jj2PlF/puZP/XSC/IpqIpeTHVtIzbzdHneg8w3M7PlL+JjqFg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by BN9PR12MB5274.namprd12.prod.outlook.com (2603:10b6:408:11f::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Thu, 13 Apr
 2023 10:00:00 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::d228:dfe5:a8a8:28b3]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::d228:dfe5:a8a8:28b3%5]) with mapi id 15.20.6277.036; Thu, 13 Apr 2023
 10:00:00 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Thu, 13 Apr 2023 12:58:29 +0300
Message-Id: <20230413095830.2182382-9-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230413095830.2182382-1-idosch@nvidia.com>
References: <20230413095830.2182382-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1P195CA0005.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:800:d0::15) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|BN9PR12MB5274:EE_
X-MS-Office365-Filtering-Correlation-Id: c1f2fbab-126f-4d67-88d7-08db3c05d83c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BHlr53WONJnISxvdgPrvT03itDaTiawFNOu5X/YHTI9WvJVd52JEKfu66E36WRKyDklVfKqSHkJh2KdNXAmdfAYUcVPPZ12N1P4JEGioAUaKwLoDqavZ4brHht+Hdj1EdEn1W+86i42QcJYhNSEI87LTU5f6epCR4RjtiF2ua76fwBBYvPyhV2v1dGVGGWTEzWlcdPzUGUNVGa5+W4pB0wiw3PoUkxYlY3ZSSalPQAWFhOXabsfQqOjSynTBtqLx3Q7Nk+zKJI6hKyw6OzitNkrvRPzn7K7oquroGuslhFbCtH3afSsZR2wsw4JU7eVLHbr10Y4W9LdWN8s0mYUgl+JydJtiDAlKmSg/yySQRO0p9P+LFW8Rd9UCfkjoXC1q7IK+l0wcdk4QYxzwopWbBW+ZzGze6ZxUugzLBY73/xUoJi5LIeO/wiMgU66uu7Tmg8jx5vguEJyY8FTGy79DZpfWg0GVtvKpS22rk2n65KnVpfKW/4i6F3rEEYfCzZqDEqRb5J3OKfFPHhzE/7CocbMxp1vUPP7fsWAEIqeCrqaj5ib+jnuapbX/VcHR9YrX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(396003)(39860400002)(136003)(376002)(366004)(451199021)(1076003)(4326008)(66946007)(66476007)(66556008)(6506007)(6512007)(36756003)(107886003)(26005)(2906002)(6666004)(6486002)(2616005)(83380400001)(186003)(86362001)(5660300002)(8936002)(8676002)(38100700002)(478600001)(41300700001)(316002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?G+97Fa53es1k+nnv6SHAn80ZwKZRr5+GBzysOKBZrDPKkN+oFOMwLW/KjZtR?=
 =?us-ascii?Q?Fus9ftI1p0n0Ofv29Z2gHkenjjjAppHkN+yPCvwC9VM/u5a5BzUmcYjOX6rW?=
 =?us-ascii?Q?k5JtG9NVqRbR0ulBcnQWznokte7Kps/yW5HgJMszYvGbHTwnlRY7+OJ+NQJa?=
 =?us-ascii?Q?XEDamh5AfKnFa7kbXJyNLzr4+XBNXac4d9Bd4KP1RAvIWHHFjopp8/UNM1fj?=
 =?us-ascii?Q?Hnu68AIJHG5g4d2ufmEKYf0zD5zOJ+B0J34XkU0JGU6STMKraRcxBQQoSr+b?=
 =?us-ascii?Q?perJ4WCGhasXVBoIl1XGHxcs/OnRji0JrIuAWY3VbMxjYlUm073ay3wPx2EF?=
 =?us-ascii?Q?8fulTo7MbAJwPcLjw+ZY1Ty9AbiAAPp0a5VXblhEplFUuxB/96f8MW38RZkn?=
 =?us-ascii?Q?c2eOWzSTzbId0o2NIARlCAAmtuc8+fndX85WkXUsbLWexIXpa7NM5kSp7BXN?=
 =?us-ascii?Q?TQUHgiu+Znm1wkSqpcTyUDJbzReo7bGP4uvQya+KPvEsRSKRRg+Nq2+r+blm?=
 =?us-ascii?Q?H3ZiBt40h044R68kUio0yo6DN/5hlbR37lezpmC9Ux3ah6gcYE6HSEDrXxQB?=
 =?us-ascii?Q?HcPskG+kqO+Hv2add52w32S8ml6n947BpSu2L6kR/nOPANBdiDVYbou29eF2?=
 =?us-ascii?Q?9ETPq0JaDNNkvK59ajjTaFr0jki5OLTGAWgXVq1kSW2mLnhG18LkUMmkztT9?=
 =?us-ascii?Q?fzdaGJoRfqhGYYF0Bimqz9ZdX/rYfPgACuVlEOws/1Z18VIYmWeAnBbwXoeF?=
 =?us-ascii?Q?ffInKBDwe3b+KlATO5yPnIXoB8T2fo1JBNPvnJG5wfvJso3jV/w2D0djLvlK?=
 =?us-ascii?Q?Ro/msJYb5IEhTHmVpE3F4S4Z9bw322TiigWGRU5Woj4ne0dlax+6JVimBZPK?=
 =?us-ascii?Q?lE7FAsB3IvYE1uNfTGyOzNdbL5wpyWCAbpHRvttNdw2+dbOO48aF8FRzsr36?=
 =?us-ascii?Q?oTB3TjRSJO1wQegr0nakkRBp/FNEeHz9yLKQi2vvxnCugONR/OQvDOCO5vWe?=
 =?us-ascii?Q?ilNpCIw270O/qyG+I5yYkqXkck60K3as9rgnYEt7Cmd0D9m9wg8EFLW1L0Zg?=
 =?us-ascii?Q?y+onrmIstgC4bLbUvppMpv/nvYHtUK+4wUFzGUPx9jPxzt/fIC7pYOIh9GQC?=
 =?us-ascii?Q?ERlgO+l0rrHdukLh9ev3LR0cwP/Wbcmt0b1a8PSaYJVW5xTIkBeB+uMQOQZV?=
 =?us-ascii?Q?cGL2oIkH/MAcpWTk8AvHpcN8lK1diZkHDhKy6lJxa8oWkXz1YYd4VcgSa23b?=
 =?us-ascii?Q?kqvPWsJXiPL0wMHggp8dEAiVK8I9f6wqNdGOguPMv3njFwJQ3AwE/JlOKLA7?=
 =?us-ascii?Q?j8mtFqd6kErd7lrHmf0SA9+3cnheu/hi2ZOXkqqvBf2f3xxqiYBmlhi+STbY?=
 =?us-ascii?Q?t2i0jiab8URvPMTlke6Fx7af2c6cDHivX9YNWexVkAWO/Vo0CbrVheJ7QnFe?=
 =?us-ascii?Q?1dWNOshUGULu9L/VAwILAwHPfWAQCmx1C3YALY8XYVIC4IGLu9CLxY3p49rQ?=
 =?us-ascii?Q?RexXef5Ke/NQHIxkzle3PY5HcXd2UAQxk23KHtpEXJM4f35x1OGzBBHTn1MC?=
 =?us-ascii?Q?xVe/fBmtjb2n6xCpqFWAO+ezRSWayLQ3UKM9U+SD?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1f2fbab-126f-4d67-88d7-08db3c05d83c
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2023 10:00:00.4826 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7ePuDAhdrtL6HXOtNdUG6HxSa+iNwor5jCTSobx5g77f001lfDpTwPEsC9mjaj1WGqkaT0/hz1Ombs8Hop0XoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR12MB5274
Cc: petrm@nvidia.com, mlxsw@nvidia.com, razor@blackwall.org,
 Ido Schimmel <idosch@nvidia.com>, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: [Bridge] [RFC PATCH net-next 8/9] bridge: Allow setting per-{Port,
	VLAN} neighbor suppression state
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

Add a new bridge port attribute that allows user space to enable
per-{Port, VLAN} neighbor suppression. Example:

 # bridge -d -j -p link show dev swp1 | jq '.[]["neigh_vlan_suppress"]'
 false
 # bridge link set dev swp1 neigh_vlan_suppress on
 # bridge -d -j -p link show dev swp1 | jq '.[]["neigh_vlan_suppress"]'
 true
 # bridge link set dev swp1 neigh_vlan_suppress off
 # bridge -d -j -p link show dev swp1 | jq '.[]["neigh_vlan_suppress"]'
 false

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 include/uapi/linux/if_link.h | 1 +
 net/bridge/br_netlink.c      | 8 +++++++-
 net/core/rtnetlink.c         | 2 +-
 3 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
index 8d679688efe0..4ac1000b0ef2 100644
--- a/include/uapi/linux/if_link.h
+++ b/include/uapi/linux/if_link.h
@@ -569,6 +569,7 @@ enum {
 	IFLA_BRPORT_MAB,
 	IFLA_BRPORT_MCAST_N_GROUPS,
 	IFLA_BRPORT_MCAST_MAX_GROUPS,
+	IFLA_BRPORT_NEIGH_VLAN_SUPPRESS,
 	__IFLA_BRPORT_MAX
 };
 #define IFLA_BRPORT_MAX (__IFLA_BRPORT_MAX - 1)
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index fefb1c0e248b..05c5863d2e20 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -189,6 +189,7 @@ static inline size_t br_port_info_size(void)
 		+ nla_total_size(1)	/* IFLA_BRPORT_ISOLATED */
 		+ nla_total_size(1)	/* IFLA_BRPORT_LOCKED */
 		+ nla_total_size(1)	/* IFLA_BRPORT_MAB */
+		+ nla_total_size(1)	/* IFLA_BRPORT_NEIGH_VLAN_SUPPRESS */
 		+ nla_total_size(sizeof(struct ifla_bridge_id))	/* IFLA_BRPORT_ROOT_ID */
 		+ nla_total_size(sizeof(struct ifla_bridge_id))	/* IFLA_BRPORT_BRIDGE_ID */
 		+ nla_total_size(sizeof(u16))	/* IFLA_BRPORT_DESIGNATED_PORT */
@@ -278,7 +279,9 @@ static int br_port_fill_attrs(struct sk_buff *skb,
 		       !!(p->flags & BR_MRP_LOST_IN_CONT)) ||
 	    nla_put_u8(skb, IFLA_BRPORT_ISOLATED, !!(p->flags & BR_ISOLATED)) ||
 	    nla_put_u8(skb, IFLA_BRPORT_LOCKED, !!(p->flags & BR_PORT_LOCKED)) ||
-	    nla_put_u8(skb, IFLA_BRPORT_MAB, !!(p->flags & BR_PORT_MAB)))
+	    nla_put_u8(skb, IFLA_BRPORT_MAB, !!(p->flags & BR_PORT_MAB)) ||
+	    nla_put_u8(skb, IFLA_BRPORT_NEIGH_VLAN_SUPPRESS,
+		       !!(p->flags & BR_NEIGH_VLAN_SUPPRESS)))
 		return -EMSGSIZE;
 
 	timerval = br_timer_value(&p->message_age_timer);
@@ -891,6 +894,7 @@ static const struct nla_policy br_port_policy[IFLA_BRPORT_MAX + 1] = {
 	[IFLA_BRPORT_MCAST_EHT_HOSTS_LIMIT] = { .type = NLA_U32 },
 	[IFLA_BRPORT_MCAST_N_GROUPS] = { .type = NLA_REJECT },
 	[IFLA_BRPORT_MCAST_MAX_GROUPS] = { .type = NLA_U32 },
+	[IFLA_BRPORT_NEIGH_VLAN_SUPPRESS] = NLA_POLICY_MAX(NLA_U8, 1),
 };
 
 /* Change the state of the port and notify spanning tree */
@@ -957,6 +961,8 @@ static int br_setport(struct net_bridge_port *p, struct nlattr *tb[],
 	br_set_port_flag(p, tb, IFLA_BRPORT_ISOLATED, BR_ISOLATED);
 	br_set_port_flag(p, tb, IFLA_BRPORT_LOCKED, BR_PORT_LOCKED);
 	br_set_port_flag(p, tb, IFLA_BRPORT_MAB, BR_PORT_MAB);
+	br_set_port_flag(p, tb, IFLA_BRPORT_NEIGH_VLAN_SUPPRESS,
+			 BR_NEIGH_VLAN_SUPPRESS);
 
 	if ((p->flags & BR_PORT_MAB) &&
 	    (!(p->flags & BR_PORT_LOCKED) || !(p->flags & BR_LEARNING))) {
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 906aebdc566b..f522e8c4fcd5 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -61,7 +61,7 @@
 #include "dev.h"
 
 #define RTNL_MAX_TYPE		50
-#define RTNL_SLAVE_MAX_TYPE	42
+#define RTNL_SLAVE_MAX_TYPE	43
 
 struct rtnl_link {
 	rtnl_doit_func		doit;
-- 
2.37.3

