Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FB26E0AE5
	for <lists.bridge@lfdr.de>; Thu, 13 Apr 2023 11:59:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 46B9C41DF1;
	Thu, 13 Apr 2023 09:59:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 46B9C41DF1
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=Eh7c0/Qy
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6LQE2XN5OZHr; Thu, 13 Apr 2023 09:59:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id C6F5441D44;
	Thu, 13 Apr 2023 09:59:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C6F5441D44
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7F6F4C0089;
	Thu, 13 Apr 2023 09:59:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A1D6CC002A
 for <bridge@lists.linux-foundation.org>; Thu, 13 Apr 2023 09:59:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 60B7741D1F
 for <bridge@lists.linux-foundation.org>; Thu, 13 Apr 2023 09:59:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 60B7741D1F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8Pm5o0LQhTGS for <bridge@lists.linux-foundation.org>;
 Thu, 13 Apr 2023 09:59:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC41341594
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2062e.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e89::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AC41341594
 for <bridge@lists.linux-foundation.org>; Thu, 13 Apr 2023 09:59:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j+LCWS3TdID0WWd93Npv0sVHojO4xog9LqiAX+k1pc9uRjm+Z1pdqNIordHiBYBzyeRFS6Aoc8bkluG6MCu2LfzNyNqLe3+t3rVQOX309CyPMuYnzinl7fOOo2hDX4n35JzKdm+FEHTHvUpcQKe7MPdxJTB0DBytIM3KRmz9/tHFQv0Etm24+JYGAJjiixfWqhQ5Eg9PbeX7r6BW4+K+1GF6sVg/Do24I8tkLvsUA5mfqvJWEg+7NjNsTHNeL47sRbqCcI+lFMG/qkHUub17YpFk+BIpNCP6pgkFzK74O9/RNhJCmypRsgevflJjdNwucrFYMpTVyUdrTrg705kz0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EitCx+ml1dbx7pZX8cAfaMB6zKt4x68jbOWaxy+VYzA=;
 b=gGCACOU5Eb28mP8S/9g4AGVZp1Y+iva8T0h29FgvyjijAyMIaJz+oH9YQb5aYKBSxBLFOxFJJgvvFNf7uouMBUC6xFL9A+10d9e5Bql1XyRGWIQ9Ljzg9FOGm1OJqdPEjvWF2STtHEdUBaboneXQgkar3MtDlyWU+IaupbMeF/mwGoLiC6ZIIA3jvJThHZdopzT5Db16uANZJtkva/m2fRQAeRqdt3kXRu1UEofkkoLg0aY6rfGBcCoMlB6GJOMKJqI16pEYCYbBdMDMxmYju42PRL33IMCEKyqd/QSiAn/+QN7B5heY9F1miET+SEu+c37Z8sZ5YW/87orpAGpGJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EitCx+ml1dbx7pZX8cAfaMB6zKt4x68jbOWaxy+VYzA=;
 b=Eh7c0/QymzjR+fPh1TVOPQiz0q0m8+yOYPbOKNlY5vzgg9zHYqjWcKATpg3KkmQKCiy0duhL36HIlYOmG65uUsF2sE7ifrKo1derynyEkXcqJZFS4Xjv0bNycYY4OByaGhAXHgoYq69/zJKqZEjUj1MNopd8RJe+E3SlarGYPCUisITr6Y2VjKahmQ3jfAv0yfka2/UlqZZBaXIHoRM2vCHxNvkzEWfS/V6ivM6kKTelE8YkjsfNaZuR5O/MtQvCT+xI3+HjpwLiphzbhY4adIm8hyzM4DuLDvh+Y7n8QgwG2Gqtf8Q6Zf0+QNmZd8F+nfC72DFNwH0UNVaDjMdWWQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by BN9PR12MB5274.namprd12.prod.outlook.com (2603:10b6:408:11f::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Thu, 13 Apr
 2023 09:59:46 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::d228:dfe5:a8a8:28b3]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::d228:dfe5:a8a8:28b3%5]) with mapi id 15.20.6277.036; Thu, 13 Apr 2023
 09:59:46 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Thu, 13 Apr 2023 12:58:27 +0300
Message-Id: <20230413095830.2182382-7-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230413095830.2182382-1-idosch@nvidia.com>
References: <20230413095830.2182382-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MR2P264CA0101.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:500:33::17) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|BN9PR12MB5274:EE_
X-MS-Office365-Filtering-Correlation-Id: 7d434eb7-5d93-4a58-adec-08db3c05cfc4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Hk3ITNWy1NgR5T3GF+TmhBeWmmPq4RX4hN+s20cP9B4K2zcE+yF2RUKGEW6hR2MsPwQaPRmsfdLqXej8Wc9i4jRpGHijoloI6xU4qzr8kc5rVmHv3vol/Ugo4hC7vc09VdqVU9pCFb4/AnQtbP6kBsUXSsMVEwCB7D1UmAYEY3edSj6xx8vKt8KJDWYJNkKm7i+Ma5FuhkmMG0Di8fxj3ckxyZtvaM+hqDrFrTWDaad2ihpUI/1dH642boUUlTiSFTG8AfIyHKufyAk7JHP2l+E0BTfgbDgBassAw1I9a90vqBBQw0CT26I8ZoYvF/VatiREVIoUTyCZXsVdnUq8OFmH0Fnd5qv6kRvtpCyLp7BNwucB26446XqqiBCgysxyZirGtT0Ks0ZX8+vOfeNq+aDaXaCWobLI3XHwMHxgZEIawUpkIsZbcaZsoDbJ6nRL5vAQti0sjHBxVn58WksG4XEiFOBIn3Ubie/Ast0yaHKQ4MhYStMb+JxKVkn2o2cwstpv5ymufiXbNl9dZWPS9NPwFkLntjjGi0TQgQcmaha2idKmTOU4SWIdg14EUGtQ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(396003)(39860400002)(136003)(376002)(366004)(451199021)(1076003)(4326008)(66946007)(66476007)(66556008)(6506007)(6512007)(36756003)(107886003)(26005)(2906002)(6666004)(6486002)(2616005)(83380400001)(186003)(86362001)(5660300002)(8936002)(8676002)(38100700002)(478600001)(41300700001)(316002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UuGgnmfhNxFcZotaJNVHuHVBbMpDS857pbHLj4VLvuPGj2rST2EXwkvNLR7h?=
 =?us-ascii?Q?G+gKrnfPO68TWTzgvAOsHNTVGbcbK4Pot2nbPRU/0v/5zopRtVaBCqU/GGuz?=
 =?us-ascii?Q?IjwC9yFqlIrR3b0WLOoiD1p3uEnsOF5zumZKA+MNtnOqsx3BWNndLtjIvIF1?=
 =?us-ascii?Q?OYHqPVSduXPyX1z/pmPNvWaZsTJs7Hh8jzR/i7MaJWYbL79Q0nyOtSTxm/W4?=
 =?us-ascii?Q?071UIO6srtIpC1cIcFinKDz1XuJQKVxHVx6mlBjqkGSOURTTQDDyM5LvHcTi?=
 =?us-ascii?Q?/LITRDsHslDA4V76fX8ve214v/yHOg1EU3njQ45LjtgueEHsJjlfPDrBI0vm?=
 =?us-ascii?Q?x0p1xC8GqsOHRDjRSSvEK/KqBQgV1X+kCBf/R0ZqtmJWuTQV300h1O1Qv942?=
 =?us-ascii?Q?22uoDtbu81qlJZ9OQHhVigbtP7FAobgElvg/XSXRe/g3ogL85ciDJQkhyXNA?=
 =?us-ascii?Q?rZf8W1+ndw7JgGpkS68e6QoTaEcM5Sup/5eYbEyartduFmd0iB/b0SmYliK6?=
 =?us-ascii?Q?TVBHMGSPEOlEyp7u0rJMZotLAq5MEB147M/DpokO7QFe8zGKsquB0DTAPtxh?=
 =?us-ascii?Q?mNYehNMC+DVj/rP/jlmaZsn05rgW6RULdfV2q1jDIbxXGPbdvbfy69+wi+pO?=
 =?us-ascii?Q?CJOVx2grXXMUEPJOwui71v+dBH4c5sylKnAPHAFAFoTb+4f05vXn9cGqI5jK?=
 =?us-ascii?Q?xl0SHOalZiLMnaL29QLMMxk0GIpLoLeMW4qby1npdtJ+hNL07lcZlDnReoK3?=
 =?us-ascii?Q?k9qrHgOqtHuN/ESB4kYia//uUWQsB0FIuA9fgilEnn/KbpZj9qrqTCYnRcvy?=
 =?us-ascii?Q?oHHNP6JDZp2Rm/kf8KLw/V2P3ZfanbEk8FiCwgee2yyoazznKjtXJese5Vlq?=
 =?us-ascii?Q?jEJzS/3Hc30rOX2d4/7MVziT3+DLEyFDUJSsM+oHln0cSeXPe8CUeqCovm9d?=
 =?us-ascii?Q?c1NzmBg5d9RrMWbYTOilqx4iWl8yXapHMBRJVxJjk73rduwciIENauWvim2T?=
 =?us-ascii?Q?GiuECHpqBHVtYTMpcxH+8M8Kw2tVdZboWdjJLeYrC0krOkiYMr+ntq1zRz4m?=
 =?us-ascii?Q?rL1SBdTLFGqrMAmu+RcCvW05SPBj3G55uB7g9D4UbIrQQ2e8tjSzJqieV08z?=
 =?us-ascii?Q?v+As+zpmXyw+1NJyBm57PGdQWE8/MLVcYg/UFYDjIsK9GlqvQtLwWuS19j+d?=
 =?us-ascii?Q?kmgcbmkGA7IHLLQdqWG5cbqRb1nQj9CcCERT+vzNoJfIszldjDL8q7ItV12e?=
 =?us-ascii?Q?lfgCFeAzf4a0kz8CYXqkDSJ/KKoT9qWfUGOnwAlY/kfHFMJwJTAo6Yd3vlL7?=
 =?us-ascii?Q?H4VoPQ0TcJqDStMvga5+zPSngpCl9IoEcaNvb1Lpqh/leGMwnirLs8svpw1L?=
 =?us-ascii?Q?qHEAGwQ7aGS7DWuuz2KNGTEr+IEbzcgxGNseO0HCStPxjf3PwqqzTJra3U2r?=
 =?us-ascii?Q?oHU6QuOL7G7O1UCL3v7McqZ+Km5Jpc1Szlyc3wvHKTMvR173EXHjsdvkJvT2?=
 =?us-ascii?Q?qG6IArBIhxRGT30zqifJVRWMXmlvTXZDvwteY2IPVjp4j4rAz6A4M9BSpUPw?=
 =?us-ascii?Q?Ac+YItxUE3ZMPKzxK6Pgyt/rJqz+VcVq0/9waKl+?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d434eb7-5d93-4a58-adec-08db3c05cfc4
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2023 09:59:46.2507 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0BsmNByYQ21EzEPvhIr7Rs/enUruPqrxA2SAJ2ldd9r0khwKD2ERnh7dEOmIPUmJro6Ojq1/KLslRMwrDS3LMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR12MB5274
Cc: petrm@nvidia.com, mlxsw@nvidia.com, razor@blackwall.org,
 Ido Schimmel <idosch@nvidia.com>, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: [Bridge] [RFC PATCH net-next 6/9] bridge: Add per-{Port,
	VLAN} neighbor suppression data path support
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

When the bridge is not VLAN-aware (i.e., VLAN ID is 0), determine if
neighbor suppression is enabled on a given bridge port solely based on
the existing 'BR_NEIGH_SUPPRESS' flag.

Otherwise, if the bridge is VLAN-aware, first check if per-{Port, VLAN}
neighbor suppression is enabled on the given bridge port using the
'BR_NEIGH_VLAN_SUPPRESS' flag. If so, look up the VLAN and check whether
it has neighbor suppression enabled based on the per-VLAN
'BR_VLFLAG_NEIGH_SUPPRESS_ENABLED' flag.

If the bridge is VLAN-aware, but the bridge port does not have
per-{Port, VLAN} neighbor suppression enabled, then fallback to
determine neighbor suppression based on the 'BR_NEIGH_SUPPRESS' flag.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 net/bridge/br_arp_nd_proxy.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br_arp_nd_proxy.c b/net/bridge/br_arp_nd_proxy.c
index 16c3a1c5d0ae..c7869a286df4 100644
--- a/net/bridge/br_arp_nd_proxy.c
+++ b/net/bridge/br_arp_nd_proxy.c
@@ -486,5 +486,21 @@ void br_do_suppress_nd(struct sk_buff *skb, struct net_bridge *br,
 
 bool br_is_neigh_suppress_enabled(const struct net_bridge_port *p, u16 vid)
 {
-	return p && (p->flags & BR_NEIGH_SUPPRESS);
+	if (!p)
+		return false;
+
+	if (!vid)
+		return !!(p->flags & BR_NEIGH_SUPPRESS);
+
+	if (p->flags & BR_NEIGH_VLAN_SUPPRESS) {
+		struct net_bridge_vlan_group *vg = nbp_vlan_group_rcu(p);
+		struct net_bridge_vlan *v;
+
+		v = br_vlan_find(vg, vid);
+		if (!v)
+			return false;
+		return !!(v->priv_flags & BR_VLFLAG_NEIGH_SUPPRESS_ENABLED);
+	} else {
+		return !!(p->flags & BR_NEIGH_SUPPRESS);
+	}
 }
-- 
2.37.3

