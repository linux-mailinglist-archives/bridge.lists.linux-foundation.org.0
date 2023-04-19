Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D22E16E7E5B
	for <lists.bridge@lfdr.de>; Wed, 19 Apr 2023 17:36:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C11B642020;
	Wed, 19 Apr 2023 15:36:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C11B642020
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=Hl7TIDkD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U2aXetRzLy5u; Wed, 19 Apr 2023 15:36:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id E42A042019;
	Wed, 19 Apr 2023 15:36:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E42A042019
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A3CC1C008C;
	Wed, 19 Apr 2023 15:36:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E378AC002A
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 15:35:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BCAA6616A7
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 15:35:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BCAA6616A7
Authentication-Results: smtp3.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=Hl7TIDkD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TrQfpQi74Atj for <bridge@lists.linux-foundation.org>;
 Wed, 19 Apr 2023 15:35:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9BCB96169D
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2061f.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eaa::61f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9BCB96169D
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 15:35:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oV+LBdELSvRH79lrWS0bFcWDKSkWjPYvsSOsCHm5Iijfo9NcUH8bvx/jp9yS22bCO01kexNucZwMznc1rdr6776XZZSUbDnO7voR/RAoldDKlwne0oVB6H73iLr+Mdt2ZQW38+HZi0k2yzgo89JAuJp8VUBG6zxa7ZWKuxkW2v5ig9WUiAxhmpP/lEiTZOThyBqr5gBTyti+8lVDRlH57k5Lx/bJGGpCh9bSH6RiKJ//79x/fEYhJdzUCRECFCR9pN9wCV4r46gwcvaXNYT9iehdQRQ2NeN6wh9iWEpjjfGktpjnSVL883naxzhiS/q9yWQqYItap17+4g0K71VtxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I/+Iebnz0aBrOoxwW4/Y7AHieMxXgC/+ss85/Kp3RRE=;
 b=EJMmaVOxHf3sjAjzvCiAGDmNGNNtzS5BkL+fab5DY4/c3M9jo6SMowsEbtGBIZ6HpiuXrnWkos2hYwXEIFcvfZslQWZliiW8JKwKKP4PsspzGr3kUpSOL2MUnJXAXkSZSZMOjAGEPVkiFMEsSRIxnW3JG7BA1ns+VqUagZuNrFKl/fv870+fG0TETLjoAFZrQUZ+1zohMqddLhZICQjTgwEIOofvkvXP7bhHDd8MK5zj/yIRBEV5y67pN8260cmbGEuhUZyspCJouXaVCi6I59k4akTZILlYizimlNQYtiPdkwSY9HfR7xZlIlFEAuHmJLXCrgXeHtST4VCGTKoAQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I/+Iebnz0aBrOoxwW4/Y7AHieMxXgC/+ss85/Kp3RRE=;
 b=Hl7TIDkDhcSgjRxWezrTTNLDbbBzSWRKQAjsdIcsq0rfR0sI0WHH61yBZRT197F0Inh082C1I3nZ5jjYWKcoJzVAYctDcBWC6zu1ciSizjD8tt2wMbSERVZgdTTQJyTrXccBF+S1WRguXowMxki8GNxI5ar2WEhdy0M5xF9oGxpL+CjuPGfXA4+n6Huk8MbONKwPzfwjCUUfv3eyuizZSOqVSPG9R+6J6lxF/+19+rRzpFcAqIBdD3MEXFs8JSs0SR4skpRvuy4lc3MfiVy5OxPOmq2GHs7Obh1YG6dQQDLP1GrcbYuVc3GU9HZEt/cq0PiGQesnx8ng2V3NS2RU2g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by DM4PR12MB5375.namprd12.prod.outlook.com (2603:10b6:5:389::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Wed, 19 Apr
 2023 15:35:55 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::66d8:40d2:14ed:7697]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::66d8:40d2:14ed:7697%5]) with mapi id 15.20.6319.022; Wed, 19 Apr 2023
 15:35:55 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Wed, 19 Apr 2023 18:34:53 +0300
Message-Id: <20230419153500.2655036-3-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230419153500.2655036-1-idosch@nvidia.com>
References: <20230419153500.2655036-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MR1P264CA0205.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:501:56::6) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|DM4PR12MB5375:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c2afcde-fe96-4d1d-b2d5-08db40ebc3fd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kxOKCena5Jq6b4YOMn9X3N3wssEj5ZIXRVt0SMkt7k1qxAyM93SsWvGfMTEyunf2uMERtkSfs7PW07B/ILi4nP79Jyz1HvkLB+9Sp2w+LEfm+uBkdofqcUKZVw1mzu8xu7ibKZmCLYnV5uEVeVFskracq0Ks0gDzKOkNAIg5ebup5csf4fFhWvexGMN3bwpptBk3olPhxWd5yqCKXtGl2sYY3ERy4jYhJrubSnqoDxNxs3NlyBZ9oAb6DlRVkIjJgSi1X4EKBUCv8/CC+z3l/4GiPF9SfDo5AxXSSu2V8t0GTVuD2ObEf82xSvyxgpsDnhiYB0exTUjz6StWQ5lItPwajWXNMiwLAcSV/t8eHIMr6OEl32FEgyspbzIDQ2v7GA+rqH8zj9JXvzUonV2UJfDiA3QeE2PCVBnQ0/G2dG3t4jI+7iU/SXiF/WLLZykrn1s10WYT1nn9os4ds65Iq08lG1byxc2BSgJBDd4J5Z5DMJUPVb8alPcTVD3GqP3L4UHYwFnuYWfBNnY4Qevlb+vHaQgsqo+dZN7dliJHMahtjkgSYGM/ZJqcIzom/OJh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(396003)(346002)(39860400002)(376002)(366004)(451199021)(5660300002)(86362001)(2616005)(107886003)(83380400001)(6512007)(186003)(6506007)(1076003)(26005)(38100700002)(8676002)(8936002)(478600001)(6486002)(316002)(41300700001)(36756003)(4326008)(66946007)(66556008)(66476007)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pvz+16ijzTCwx86ZnBtt4eG4I7he1za/AHa7vyC0Utok70HSCpA7sGYpj5zk?=
 =?us-ascii?Q?G4ELxF8SDucczK6h71GGQX4LT9qRtcdy0wTNkrFiOfMRLtSPXBoy47BI5QW3?=
 =?us-ascii?Q?bqOBLonIbRBFS0LI9NiiLBH0nNlAAzsTth4kL7QoO8LAeHory86e5x/76f5H?=
 =?us-ascii?Q?OZe6MJJGFgKcAigmUNXxTGGCbuBOZekQfOHsluOUOszdhED8lR6hrp3Ppibr?=
 =?us-ascii?Q?Wb5RGyE1utof4Jor/8q3//ghbkYyzrc3KhdQTkuObPnE35D5Vuczr7SmRFt8?=
 =?us-ascii?Q?H2FlIG+/T+y1wiGPgxBQques9/T43QM076OW1fxdy2Ooa6PxA/XGGkszZIfC?=
 =?us-ascii?Q?ED51KcrA4Rp+BGkE2+/hj5R0WH1FyHLHvOLpr8ZF8Hbjo/919chNh7+B8+8Z?=
 =?us-ascii?Q?WSgBVt8oMRPrSNaSYQG7NJZG6jVwrdBEWvIa9WjixSZOO84GI5y+ZM0fGnGC?=
 =?us-ascii?Q?3mJiacQNZuiw3BkfLGnJyxamXv7VMrSUYinMraOFCdXJTLmjO4TaD2JrNbVg?=
 =?us-ascii?Q?2K0VD76wi5O2kZdxom44ocEabwwW7mjKKBQsTSmckv8IhvtLzjJGuBbwmKnv?=
 =?us-ascii?Q?kL3ikI+NPfaQORUi1pkRTS+jutMmlRsQJ2c/EHKdT+dW8F0D6oPti25iiPjq?=
 =?us-ascii?Q?jKotL2buRFORQVwJLXdG9o7qggVNQFmFjcRvJVaBpizABNGCRl9gzR7kCg9a?=
 =?us-ascii?Q?5ZyIX4QzvuEfUq0prWBWqluN4lyNDQTcjG6kO/JuCMPrniS3svGeBkxMqyJd?=
 =?us-ascii?Q?c9q5xomSA80bEpIsfIWVBU+b8CYH7AI/Cebhj6xNuUUPYSx72CtneCKqOQa1?=
 =?us-ascii?Q?sljHLlZV4D73pCETKE51x+VA2jdqLn81T4u6kljU7CWg7A4302813hbqC4CK?=
 =?us-ascii?Q?ePi4x+op1Vyo7e4SCgeqU38H1/fDcHqDPNTGxyYAuPC9cRIfVIs0OjF4Cz7D?=
 =?us-ascii?Q?wCdsG7g9PdgnE2DD7BqG2+wZ+JJv3hwFRbNg4V8OCs/XVMtE1UP6pea1drCW?=
 =?us-ascii?Q?finlCkQySMfrYn3iT8oA0/GjROgxP/BBOJQeT8Ot4qhO6Yx/PAJ3XSiCIdvX?=
 =?us-ascii?Q?I1aUkdghvQcAqLhfeNwls7pLoYsu8wQ5+K/zZTOs/+EPPcJoGpdpX7Bh5Bcq?=
 =?us-ascii?Q?LU5OPfKKLBuI175eTbi6eZ8lEfXP/DdnJxoTuAZmRnjIOBIb45JHiJTQnF4K?=
 =?us-ascii?Q?xSOFkSGvtWyVyawDioKOzq3wfQ2i40dH20XbvS6gE0VOkfHFbhgDsjn8I3Wl?=
 =?us-ascii?Q?JNTCsXgEBWc6c3NgPuH7TbqS3IWNQSbVTpFigesTqZul+tla2+7ksYby5kM+?=
 =?us-ascii?Q?YB9PCPDnPj17yvxwGcyChRNtagrDdhMOS1Dh2ZYzHrwL5PeuPKukevyVE8kJ?=
 =?us-ascii?Q?r5hfuFAsCMfb73Tfj7LqH9Eg5Gs+WJVFi7mahtrAouqwEE3Ae/LLhJBYXkER?=
 =?us-ascii?Q?e9zHCc+WP0mnjwWgxJMPYeinOhyzsQHivXmlHAkmeKyQJYp5CmjINkAlTHh9?=
 =?us-ascii?Q?ZvWLFzelZPWqDSy89GuVYV6AAFACJBvJteFYKK6bh5kwBInKiHu9/j1qj+gE?=
 =?us-ascii?Q?LLZjr8WjlTJ5yWGiPYhqgqVEMgauzdtlyds02Dqt?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c2afcde-fe96-4d1d-b2d5-08db40ebc3fd
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2023 15:35:55.4152 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aHo38Wvld2vCnritS9QHg71VElXX+UnNS3pEyYXXbiSzEXZNM7JBir9FVe0Izbg+XpYJ0CK2ncTyb/QQsH1mBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5375
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 2/9] bridge: Pass VLAN ID to br_flood()
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

Subsequent patches are going to add per-{Port, VLAN} neighbor
suppression, which will require br_flood() to potentially suppress ARP /
NS packets on a per-{Port, VLAN} basis.

As a preparation, pass the VLAN ID of the packet as another argument to
br_flood().

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 net/bridge/br_device.c  | 8 ++++----
 net/bridge/br_forward.c | 3 ++-
 net/bridge/br_input.c   | 2 +-
 net/bridge/br_private.h | 3 ++-
 4 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
index df47c876230e..8eca8a5c80c6 100644
--- a/net/bridge/br_device.c
+++ b/net/bridge/br_device.c
@@ -80,10 +80,10 @@ netdev_tx_t br_dev_xmit(struct sk_buff *skb, struct net_device *dev)
 
 	dest = eth_hdr(skb)->h_dest;
 	if (is_broadcast_ether_addr(dest)) {
-		br_flood(br, skb, BR_PKT_BROADCAST, false, true);
+		br_flood(br, skb, BR_PKT_BROADCAST, false, true, vid);
 	} else if (is_multicast_ether_addr(dest)) {
 		if (unlikely(netpoll_tx_running(dev))) {
-			br_flood(br, skb, BR_PKT_MULTICAST, false, true);
+			br_flood(br, skb, BR_PKT_MULTICAST, false, true, vid);
 			goto out;
 		}
 		if (br_multicast_rcv(&brmctx, &pmctx_null, vlan, skb, vid)) {
@@ -96,11 +96,11 @@ netdev_tx_t br_dev_xmit(struct sk_buff *skb, struct net_device *dev)
 		    br_multicast_querier_exists(brmctx, eth_hdr(skb), mdst))
 			br_multicast_flood(mdst, skb, brmctx, false, true);
 		else
-			br_flood(br, skb, BR_PKT_MULTICAST, false, true);
+			br_flood(br, skb, BR_PKT_MULTICAST, false, true, vid);
 	} else if ((dst = br_fdb_find_rcu(br, dest, vid)) != NULL) {
 		br_forward(dst->dst, skb, false, true);
 	} else {
-		br_flood(br, skb, BR_PKT_UNICAST, false, true);
+		br_flood(br, skb, BR_PKT_UNICAST, false, true, vid);
 	}
 out:
 	rcu_read_unlock();
diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
index 0fe133fa214c..94a8d757ae4e 100644
--- a/net/bridge/br_forward.c
+++ b/net/bridge/br_forward.c
@@ -197,7 +197,8 @@ static struct net_bridge_port *maybe_deliver(
 
 /* called under rcu_read_lock */
 void br_flood(struct net_bridge *br, struct sk_buff *skb,
-	      enum br_pkt_type pkt_type, bool local_rcv, bool local_orig)
+	      enum br_pkt_type pkt_type, bool local_rcv, bool local_orig,
+	      u16 vid)
 {
 	struct net_bridge_port *prev = NULL;
 	struct net_bridge_port *p;
diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index 3027e8f6be15..fc17b9fd93e6 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -207,7 +207,7 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 		br_forward(dst->dst, skb, local_rcv, false);
 	} else {
 		if (!mcast_hit)
-			br_flood(br, skb, pkt_type, local_rcv, false);
+			br_flood(br, skb, pkt_type, local_rcv, false, vid);
 		else
 			br_multicast_flood(mdst, skb, brmctx, local_rcv, false);
 	}
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 7264fd40f82f..1ff4d64ab584 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -849,7 +849,8 @@ void br_forward(const struct net_bridge_port *to, struct sk_buff *skb,
 		bool local_rcv, bool local_orig);
 int br_forward_finish(struct net *net, struct sock *sk, struct sk_buff *skb);
 void br_flood(struct net_bridge *br, struct sk_buff *skb,
-	      enum br_pkt_type pkt_type, bool local_rcv, bool local_orig);
+	      enum br_pkt_type pkt_type, bool local_rcv, bool local_orig,
+	      u16 vid);
 
 /* return true if both source port and dest port are isolated */
 static inline bool br_skb_isolated(const struct net_bridge_port *to,
-- 
2.37.3

