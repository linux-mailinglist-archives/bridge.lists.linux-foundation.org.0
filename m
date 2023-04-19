Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEEA6E7E63
	for <lists.bridge@lfdr.de>; Wed, 19 Apr 2023 17:36:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EDF2684106;
	Wed, 19 Apr 2023 15:36:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EDF2684106
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=r6dYlgXq
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yTAu5SlMH9w2; Wed, 19 Apr 2023 15:36:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 68570840F4;
	Wed, 19 Apr 2023 15:36:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68570840F4
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2C2A1C008C;
	Wed, 19 Apr 2023 15:36:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 930C7C002A
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 15:36:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6073642A93
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 15:36:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6073642A93
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=r6dYlgXq
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pxpN54OXJOr2 for <bridge@lists.linux-foundation.org>;
 Wed, 19 Apr 2023 15:36:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9486E42A92
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on20623.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eaa::623])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9486E42A92
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 15:36:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R7g8GczLCm71ZQ+4M4/2JTChHNoANcnIbPFsD4IH/+ZFSF8kkM8KW3wyiKyihMpqaA8thy6QJ9YhX0MJ7TpYrPGOwDzmyRcpSnEO3j8D/+QwJWCmRt93mgTzk7F0CE7fOFT8H1yGQxkJluxYDq0dDNrPmkMUymnHgbYPhGA/LN97T1yz9GqS4Rntks+S266s/4ZcqvZaqY0/LZK9XD1ayHD9Vs/+WMnzC7sQspc3z0Z6BkSc64HPG59WOIQOTBBlB8Pcn/XvmS16YuzsylOemzD1xTbZ9PkjsEwFH8WLA0buydqWMzPRszwENED2VB2JxMukoRbzayR0q/+EdBSPNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qCoPS6jRXIg8lmzwhDRB/kWn2MEZyeqs2DiwbhfYYRA=;
 b=RROOpg4lIA++XIPn95iLSd64M5y1HuNWZ+NV/2+tj5ueP3CoIicupTNTCFYLmtAL/ZifWO5bM8euwrc6ZufV8B8akkI69DdKp7g5v6Q3auVyJ/5GPVr3kN400QS0jvYK7dcS9b1BVzDD53e8W1DKdglkbJIxQAhsNdTQ7FUnuarOoQSCeKqWN2kAPl5OVOxIS/Bx7ND6QuSQTeza6hEvfHi0eCTLNRWm0rW+N02LseEsRn+NPA6ZcaNW6kVdghBuOCapSSbdra9lNjSgnExJ3EFrS0Lno3TO81HZsrk++UzwbN36EM1pof1tziWB7wgnkOw7AX/0uhpnFkzRqu+iPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qCoPS6jRXIg8lmzwhDRB/kWn2MEZyeqs2DiwbhfYYRA=;
 b=r6dYlgXqvzstB3vSTawl1a7c2OKjt2ANlmxSJWVzS9+1mOTfoMgTuuMw8L6H5doEgVG5DmE2z4re2vbZNZJ9tnP3tDJ5xYjxfReT+DnT8+4y53ZA5Qy7NnpN7kUWCcmGQNR+/WLkpj7UXCOZDEAxTTdveve87onxketycYzo/IVX2+IZR5C8y1WmxZY0k44c9EB+v6lfE+v1txQoanyb6ZW5s6Wl6AwPqA9+Z2FoBW+nY0E13njx1KVtTrUvS2YEcTH+0hg57izJFJSLphezasCe38tg2z13jRmK4Hx665rsFs7V10hZq4ZIsLV/NAxpXGs+Hnpstw43WthxLFuHhw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by DM4PR12MB5375.namprd12.prod.outlook.com (2603:10b6:5:389::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Wed, 19 Apr
 2023 15:36:16 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::66d8:40d2:14ed:7697]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::66d8:40d2:14ed:7697%5]) with mapi id 15.20.6319.022; Wed, 19 Apr 2023
 15:36:16 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Wed, 19 Apr 2023 18:34:56 +0300
Message-Id: <20230419153500.2655036-6-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230419153500.2655036-1-idosch@nvidia.com>
References: <20230419153500.2655036-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR0401CA0016.eurprd04.prod.outlook.com
 (2603:10a6:800:4a::26) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|DM4PR12MB5375:EE_
X-MS-Office365-Filtering-Correlation-Id: 593c52a2-4422-4415-0070-08db40ebd04d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4t195ykU/TFOR50SkC5lqIDN6XbzqaCAolvYi8h2scftDlFovMC9GymLXcLodixsHG9XExkUn0J+nzufGok0aoUgiNhtWNmLL4jHE7IJxjptP3H5eKPUbwErYBZOPFsgZF8hBP9cyAmPWA9eA5I9laL4DGpz/iiV1wDXrO8ZqKJlJHi2Xowhj2/TSpZMrpD5v2x/BSAzU/0QPrKs5RYcwcsiwLsP8NRer31pW6B2O/o3Gu79oTd4LmYiJzyqZsFRxdkozNkaumyfGntP/gM9hUk26zGl1OvpFKFSregVKZI8iYbBoxBlBewfWVv9c9chnd7wxKSr5UjL2wwFR18ZrswYRgA6JU7EOEVeTOFuwp6osAw8eqLxUx0IZCn6P+TlusweY9sDZrJJ4u9KKuvU60zR/5Ob2HND/7RcoJEjs5MOj4cArlwGVQS/WSLtc+u38/Y9/bta7gfAhQwfab5ZusArG0TdvT9LSz3hGH8c7Ur09KDq+gSdQig30P4n/ih8PR6wFOl13aDSnGcSR9sfhxMJqBGFFO3C+cJa8gMF1ZF2UGhd0fpVhCTw0GUT47ly
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(396003)(346002)(39860400002)(376002)(366004)(451199021)(5660300002)(86362001)(2616005)(107886003)(83380400001)(6512007)(186003)(6506007)(1076003)(26005)(38100700002)(8676002)(8936002)(478600001)(6486002)(316002)(6666004)(41300700001)(36756003)(4326008)(66946007)(66556008)(66476007)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PISyXGYPku7bkuZfHSq3tVtVtKkHhkM1lhTBBsexXjwuQ6jcQwqQT4cE/Tmg?=
 =?us-ascii?Q?Hj0G4huwcdWof95YpK5pIOMBO2aD9l5fqbWzNWWMSi7qpW2npxfUpeDfUU7N?=
 =?us-ascii?Q?JvHTpPL7XFe1UKG6e3e1SmuX5fPZepUTN1NTLTcWlKnrg8xJlU0kl2Uv3RUG?=
 =?us-ascii?Q?nhpvQ9s4Goa3lwBIuqjPbH0ityuVlJUmNyrwfWJYfD6B8HYeu2/J8ANHBqrh?=
 =?us-ascii?Q?5SxghgEHp/CwRR/BxqGZ10IoBolR4oAzTlyMB2xcfo817G3Hi1hHJFOhRrTA?=
 =?us-ascii?Q?ijkL2z3lNbhR1gKu55asQ4KRSIdSdGoxtdAdzMKotCNJlOW9Rh/RmZvCCJ/t?=
 =?us-ascii?Q?M7Xniu0/RGIosrgZimMc4sP5T3J8K3Y4VLIuh/Odo8dN8z3us23zXdIWv6Uv?=
 =?us-ascii?Q?KwlR45EpCHHTPGxINx2GuN5someQMJgquQ47iC7j7coXb4J2OdU7hhZ0FDm2?=
 =?us-ascii?Q?ieVeojUNbhyX9MwemtXTHxS216YKSlI6bZiT/5GhL20fSBhenu0i0QUiLU9a?=
 =?us-ascii?Q?CDgIK8bSolLYCA1rM+hH+FnSpt6lKEjeQ25hl59pt2WJoJdqxUjjX+9HX/i9?=
 =?us-ascii?Q?1gxDYGTYlMi48AlwTMJE0IxWVHe/KMmwzHEd1uLavLfhPrjqNPLqNUPNY2PY?=
 =?us-ascii?Q?mlY280wp1v1/SIzjuDu3BBrs8r+Ow9WoIbxWhKIs3QYUbzJzZ/7k2PxY2sBE?=
 =?us-ascii?Q?bSb2tWkQUcLCmn3qcDQ4i8mvaCdRVqwdIz5OwQH7rZTWybVmK9z3kaChatm7?=
 =?us-ascii?Q?myWOOQflfbgKAC8xKMArUra7HIvxdKJyjiZ8yxdEu2UPMowygqwrGQvuSFl+?=
 =?us-ascii?Q?AsXoEtICdwQg3cFzp//Udx3bg/+qgsarDsNWRZ9hyBBX1/rhF7SsCHFxBpKM?=
 =?us-ascii?Q?m3DxD7OuvpbU3d4Lu37c5Ueqk14vMzxHR0fBfiIDe4rNMlCsvsvqn6deAoCP?=
 =?us-ascii?Q?XYejgBwWX+1z0Eff4vH605rFKyxcbO4QVtSEKbrM74c1xG1d9JuhcFfogZpT?=
 =?us-ascii?Q?UBIf1f2Gv6jGSnNiBTSPjNlyD101iWjF7+OrmmDFNXM+YF2N+9r6oS9LnhZR?=
 =?us-ascii?Q?Ou1qFPX4T9DY0TzKi456Er23/RpOaILuCgKRRIncfEfwASFjZ8JiFIknr2m5?=
 =?us-ascii?Q?21YRCZNn51AkafevFjXodO3pl1/FVzfU+T63f938PLnl0cUuuHG/oZhAsYf7?=
 =?us-ascii?Q?bJKuqxgEiua9sQkVFbmo8k2nJLh8WkrWTBuJl0cojDgDG8t8T2H5Ryx1pUnx?=
 =?us-ascii?Q?uN9uvhAf5bZNZ817hT3mJrzrxUffujnK+7xiFJFcC5oqgOF0a8vbIk6VHFn+?=
 =?us-ascii?Q?1D7uksNVVRUqvcKFQDKR/RGIOi+RMa88ayliRU1RCcuI5vQD/aeOxhU6pnCp?=
 =?us-ascii?Q?7MWBbt6opoQRu/QjqYk8X3Oy8xTaXK6ySmEjAkbqNkHHqMyymbcQ1og1fTpM?=
 =?us-ascii?Q?J8T4E2dXH3XI5UEII6ypI6UDQyTAyXF18qAFG+q98nHWoilJeHiSVaOVn6VK?=
 =?us-ascii?Q?SSvuyz3lLF2ghkfcJ78/crZD+qDwyqwvjPy2xfyUMsA+y4cB6CoVa7dQNBbX?=
 =?us-ascii?Q?EaM5P5wVAJYCS1o3COE5eVSvWgu5GBTZOx9XfGKJ?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 593c52a2-4422-4415-0070-08db40ebd04d
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2023 15:36:16.0758 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SmyDlaSXGTh7m6HkqFWkGx8zGBVdop3XlcVQk2f1qS+iv4JVtaNL4MmDEDcDFsdMEdJxeOYH9oq4BN2xsMQ7WA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5375
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 5/9] bridge: Encapsulate data path
	neighbor suppression logic
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

Currently, there are various places in the bridge data path that check
whether neighbor suppression is enabled on a given bridge port.

As a preparation for per-{Port, VLAN} neighbor suppression, encapsulate
this logic in a function and pass the VLAN ID of the packet as an
argument.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 net/bridge/br_arp_nd_proxy.c | 15 ++++++++++-----
 net/bridge/br_forward.c      |  3 ++-
 net/bridge/br_private.h      |  1 +
 3 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/net/bridge/br_arp_nd_proxy.c b/net/bridge/br_arp_nd_proxy.c
index 016a25a9e444..16c3a1c5d0ae 100644
--- a/net/bridge/br_arp_nd_proxy.c
+++ b/net/bridge/br_arp_nd_proxy.c
@@ -158,7 +158,7 @@ void br_do_proxy_suppress_arp(struct sk_buff *skb, struct net_bridge *br,
 		return;
 
 	if (br_opt_get(br, BROPT_NEIGH_SUPPRESS_ENABLED)) {
-		if (p && (p->flags & BR_NEIGH_SUPPRESS))
+		if (br_is_neigh_suppress_enabled(p, vid))
 			return;
 		if (parp->ar_op != htons(ARPOP_RREQUEST) &&
 		    parp->ar_op != htons(ARPOP_RREPLY) &&
@@ -202,8 +202,8 @@ void br_do_proxy_suppress_arp(struct sk_buff *skb, struct net_bridge *br,
 			bool replied = false;
 
 			if ((p && (p->flags & BR_PROXYARP)) ||
-			    (f->dst && (f->dst->flags & (BR_PROXYARP_WIFI |
-							 BR_NEIGH_SUPPRESS)))) {
+			    (f->dst && (f->dst->flags & BR_PROXYARP_WIFI)) ||
+			    br_is_neigh_suppress_enabled(f->dst, vid)) {
 				if (!vid)
 					br_arp_send(br, p, skb->dev, sip, tip,
 						    sha, n->ha, sha, 0, 0);
@@ -407,7 +407,7 @@ void br_do_suppress_nd(struct sk_buff *skb, struct net_bridge *br,
 
 	BR_INPUT_SKB_CB(skb)->proxyarp_replied = 0;
 
-	if (p && (p->flags & BR_NEIGH_SUPPRESS))
+	if (br_is_neigh_suppress_enabled(p, vid))
 		return;
 
 	if (msg->icmph.icmp6_type == NDISC_NEIGHBOUR_ADVERTISEMENT &&
@@ -461,7 +461,7 @@ void br_do_suppress_nd(struct sk_buff *skb, struct net_bridge *br,
 		if (f) {
 			bool replied = false;
 
-			if (f->dst && (f->dst->flags & BR_NEIGH_SUPPRESS)) {
+			if (br_is_neigh_suppress_enabled(f->dst, vid)) {
 				if (vid != 0)
 					br_nd_send(br, p, skb, n,
 						   skb->vlan_proto,
@@ -483,3 +483,8 @@ void br_do_suppress_nd(struct sk_buff *skb, struct net_bridge *br,
 	}
 }
 #endif
+
+bool br_is_neigh_suppress_enabled(const struct net_bridge_port *p, u16 vid)
+{
+	return p && (p->flags & BR_NEIGH_SUPPRESS);
+}
diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
index 94a8d757ae4e..57744704ff69 100644
--- a/net/bridge/br_forward.c
+++ b/net/bridge/br_forward.c
@@ -226,7 +226,8 @@ void br_flood(struct net_bridge *br, struct sk_buff *skb,
 		if (p->flags & BR_PROXYARP)
 			continue;
 		if (BR_INPUT_SKB_CB(skb)->proxyarp_replied &&
-		    (p->flags & (BR_PROXYARP_WIFI | BR_NEIGH_SUPPRESS)))
+		    ((p->flags & BR_PROXYARP_WIFI) ||
+		     br_is_neigh_suppress_enabled(p, vid)))
 			continue;
 
 		prev = maybe_deliver(prev, p, skb, local_orig);
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index b17fc821ecc8..2119729ded2b 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -2220,4 +2220,5 @@ void br_do_proxy_suppress_arp(struct sk_buff *skb, struct net_bridge *br,
 void br_do_suppress_nd(struct sk_buff *skb, struct net_bridge *br,
 		       u16 vid, struct net_bridge_port *p, struct nd_msg *msg);
 struct nd_msg *br_is_nd_neigh_msg(struct sk_buff *skb, struct nd_msg *m);
+bool br_is_neigh_suppress_enabled(const struct net_bridge_port *p, u16 vid);
 #endif
-- 
2.37.3

