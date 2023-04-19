Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D90D6E7E66
	for <lists.bridge@lfdr.de>; Wed, 19 Apr 2023 17:36:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 10A8E4032A;
	Wed, 19 Apr 2023 15:36:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10A8E4032A
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=hxAIK3wO
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6INFQEz-DwXa; Wed, 19 Apr 2023 15:36:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 9D9F442A94;
	Wed, 19 Apr 2023 15:36:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D9F442A94
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 55B0CC008C;
	Wed, 19 Apr 2023 15:36:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BC3D3C002A
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 15:36:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 894EF8412F
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 15:36:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 894EF8412F
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=hxAIK3wO
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MYN3C16iOppq for <bridge@lists.linux-foundation.org>;
 Wed, 19 Apr 2023 15:36:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9E2784107
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on20620.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eaa::620])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C9E2784107
 for <bridge@lists.linux-foundation.org>; Wed, 19 Apr 2023 15:36:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O+zCu37v8HNrZ+8RNE6CibtLNgduPQ9YpqzTLlh7F4upg9BjZxpZlsKhKXa+isQNzErBbevBBhm71DyXPzZMs0HC759tsdb/mNVmfcI6LlYc3GaNTsUQMd5muts3pbcV4Dc7tvi2yTjNHXixDSECKSJOkFVM4TgyfU8V/qEw0I9q3TQzbbvgzUR80llCnI1nt9OqF8+VF3xjd/VymwIvaQMVwzj7zg3igL8VB7Jd5Vh7Zg9bhSRPMWjvn6XyP6Sg1QN+jWvIH56DlHb9JCMYLDiS6sGMVg6QtezLYh7Bz3oOsuAD3O2h6spnGPsNZTvjkwd/OGyymvJeaT+d31bXdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wUmFijYCPgEX04cPjZN0kCpLZm8abO4duay48UU4ewc=;
 b=KkLUQtTZ+E3BAUrmQs+Op8/823UboEh0yzArE4RoZjmRJ6fAj1jF6BadxNohJJnZKfWH0hbZ4B3XaX6YrPhZYcbcJR7d+jApl+1IZbbz2CiBYgwdpIixL0e5bzS0b0nnqCUxZL5UFJaMolwHJLeEl5hCi0sFCG0Yi8vNvg58GD1bUj/VwZyd3SP7Cj67Mop6bfItt26kYR/Rpom3OIdObK1XsncnuJimBkdfZka2qS5lx0QAmyqLLt3qZ7fub/7XVlpItfc9KcURRVjJzSEN5nOV+x9SEf+g4nH72pYgHwHutebM4l6dUG66QohtQvDTGomWxnZ21GIRCJIX5NxGnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wUmFijYCPgEX04cPjZN0kCpLZm8abO4duay48UU4ewc=;
 b=hxAIK3wO9ESg8RSoyZ3XL9ggXJ8YR0H2US/ZviO6uJJD6GWcmZaj54avwzt6kvRLqWGvFQXiUe709CtHXX4jpq3sQy4ay9c+cVbvDVAtjyjcp1beCeOcSGThrPdfHfKBc6DAtOkvTBGpt88FswMP1KmAbErx++qaunem9zljp8t7PQDNpoDvrhBT6T9gXGmDgbmQSfIGAHPxPoiwDzEWqIiqYm+IdK53vqmRBYv8wLN3VTBqcrpaKch97sqRDh3sXeslizSSrwx7dC65VmwqA4p0kZolvBk6QWqnlx96E/vFCBjNRSWB/HOyxJlCjont4fMOIqenYaHGehRHPjXOAQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by SN7PR12MB7249.namprd12.prod.outlook.com (2603:10b6:806:2a9::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Wed, 19 Apr
 2023 15:36:23 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::66d8:40d2:14ed:7697]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::66d8:40d2:14ed:7697%5]) with mapi id 15.20.6319.022; Wed, 19 Apr 2023
 15:36:23 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Wed, 19 Apr 2023 18:34:57 +0300
Message-Id: <20230419153500.2655036-7-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230419153500.2655036-1-idosch@nvidia.com>
References: <20230419153500.2655036-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR04CA0115.eurprd04.prod.outlook.com
 (2603:10a6:803:f0::13) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|SN7PR12MB7249:EE_
X-MS-Office365-Filtering-Correlation-Id: 135118f9-4159-42e7-7365-08db40ebd482
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 30zls8PqNSY/5qTzoRZaGzW6hs87c9f+bXuzFQYS+Pv/OA79vV7RDXfQPQfrWlGfwnF8WwXh1RiLSPUN518DXck4z40cwrm48ORSQp8xF7zHAuiT3MJat92RUcOMLl+JPCftP9HT+afNVstBtTJiMOZQbb5Z0tc5pPkJs5xEKDen0U9nMWr+V1+tJWpH6DlDKaeiCOmRrbJ2bAX24zx5IJEoRCFTjtnKqMMNoEbkm9HVnCtd0q13IZ6I6966MH+gbxSAaZcCyIBziU5bs/gr5b+HI5fsh39QqJs5qDqGw+CimXuHoTeNmJOv/7xAsmK3v2ajGeOZg8vBZfz/UIbYWrmxUXxUIzx9uPmeQ6sNYtAAqG9nAd+HkDHaIKF51t5/39ieWbvso5eJmfcD6E29GLG64yZSJZrbcDqamt8fRDMBvH0jE27TWPSyjcHWxO3smsYox8iAGAeTKleF5/3W13Qbt/ClpfLOps7y3vjv68rzhV/v3PrhNHh5LzZOrO5H7cxJ0GeVxXRXBbErV03UCCwYaWvAgFPDcGSRAic/h4808GtVSwVCbsSaqzgj9hTU
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(136003)(376002)(396003)(366004)(39860400002)(451199021)(5660300002)(6486002)(478600001)(66556008)(66476007)(2906002)(4326008)(66946007)(36756003)(86362001)(8936002)(41300700001)(6666004)(38100700002)(316002)(8676002)(1076003)(26005)(6506007)(6512007)(107886003)(2616005)(186003)(83380400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mFSYTAPtZUkgG5RBTlEW4ASUKN4t1yQZguIRv7awBkc9W1jjR5x2gXHl9rX9?=
 =?us-ascii?Q?Dqn7cxI78SdlVt3Mrpo65AdytFGodrtFCkgLAqn6LUS3ug1ezPDHpTw6AUnf?=
 =?us-ascii?Q?ZU2hGNnkX46DaPC7WyADiBKXtPWPCBu1w8m6HHj1C0HNyo/Dx4CuVFQRoHtO?=
 =?us-ascii?Q?x3N6fGCzeZCfbIPGmwnNQuM/kCfX/yPPVpIFLfuOgvZQXmHlc3COtMCSbXKK?=
 =?us-ascii?Q?lu5/SaEsCH94QAkxNGK5YLQSwIWLnVRSX3rYxOLW6OUs9Sv9LyvOTfzCvZp+?=
 =?us-ascii?Q?IV4L0I3FbkOY+bC78069y1IdRKAdLyfpL4F79jKxYuO4WXQSfpSMzNV6lDMV?=
 =?us-ascii?Q?q34guTBhTn86dtQ1voF32kN3RhlxAktWyorwm5NyrcTWsqfJiFZ6dKcj2h21?=
 =?us-ascii?Q?V9x8w7WcFyTA/7nkRAHIEt+YIqYnhFjPgLMGZ+Zqh2Dtp2XuSuAGRblOd2lo?=
 =?us-ascii?Q?X0R/25VazNYzb0qY9cAKIJJsj6VT2lSYb9usNk33hAtUvTBkudvz9OmiH70V?=
 =?us-ascii?Q?XUHg3bT0u0XG22Z9XJkwjcbQRu4srcMSdXZrbdGMBcKMWO88cHTc8SImM2i/?=
 =?us-ascii?Q?UO5w7oUedp3tXbM26GlT8qagrS3af8oO8ZHDF+BxmthhW5BGOS/jnb7aHwnd?=
 =?us-ascii?Q?9Qkj8YV2VSplkt0QcAi5kBOtDs6DCDM0w0Nhw9gwa6KeBH6RSg+/PnEvAMn6?=
 =?us-ascii?Q?6+IlNmvNkqiu+17uxgeGixGR3yQDiQRL6PNi6pbIjHj8a2U/qivvGyPzWnJ/?=
 =?us-ascii?Q?lOaD0uiCn5mD9hgd3C+nE070VbEUa0La0vLE466IH9pse19pKEH/MX5lRtw4?=
 =?us-ascii?Q?AkcXnpnrTIZjisTBCBD6JlqWw08vZJu+HWh2trNQEQPMJlof6SSakFBZ9eso?=
 =?us-ascii?Q?B/scHZfAbtc7ZlpGaYjGhN7s9i5avpXlDp6HMgzcd8+xccKgIg1XBdHio9tK?=
 =?us-ascii?Q?m2/ICo13qYq4Xnvri3c97Zc38lON2j3BaLim48unRQpx0PJMRz/Z0/Yh4AtX?=
 =?us-ascii?Q?SwPuxj3VknjlSJ+8lcTTSQgEZPX/8IxturyrZ7rv37LhVTC6UZfXeyHf0t37?=
 =?us-ascii?Q?952XvAb39JoVMYGO/V8y5ALmlDmWzEiYNvsyBIVmNi/7IeTSlh0Wtb0JbsdJ?=
 =?us-ascii?Q?ONqvsuPUK6P9PFd5L+2yoVYZDjQIwaHgfH/t+K36zWhUCDzMk2UJ6LKsmylr?=
 =?us-ascii?Q?CZA7B1KM13UaG+PT7AwAgbCaiktEX9Zk8wVq1XMiqIiYGIxy3dKG1mjx4REI?=
 =?us-ascii?Q?xJIpmxKV+UxuR/4rhFLsMvBW5jE5U7uWwsOIZxFnfIW43ltsrgCZkdzFg/Zw?=
 =?us-ascii?Q?VvMV5ODCl7CuQYjq5NyM1qkwgCHswYPeuNc4Krso3jciaLxWUGR8ycbw50F/?=
 =?us-ascii?Q?YHurw1dEMff8Cq+ISNq3fBm509tfbmfhLFwmJeEw5ExWB8U/3a1nP1iYLQ3h?=
 =?us-ascii?Q?GQcByiC6tPyyouwdUkNCCUlZMQTfDH2nTOLNTP7TRfWflIElqmtiDzVyZE0N?=
 =?us-ascii?Q?eQuI8HZK5dNE4dg9LBdDTvoea4BRANcbsYhbMrt06k/j0bvqabE1HSk8iXbX?=
 =?us-ascii?Q?aga6W8rgwyakG0+QIk8ss+4TCS6hvjnxwcxtNndG?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 135118f9-4159-42e7-7365-08db40ebd482
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2023 15:36:23.1126 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JmQTKQuqiGOc5Dpk1l3xv1z6zt7kmhmBDPibTt7A0ocj2hOLuGW5X6wnFxE2rH8U4/XFK7q+AV/tgUo2fmagcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB7249
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 6/9] bridge: Add per-{Port,
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
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
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

