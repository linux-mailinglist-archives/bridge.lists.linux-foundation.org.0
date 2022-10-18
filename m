Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BE293602B24
	for <lists.bridge@lfdr.de>; Tue, 18 Oct 2022 14:05:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EEE7A832C6;
	Tue, 18 Oct 2022 12:05:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EEE7A832C6
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=DSI0wJuj
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hXH7iIyVdWHn; Tue, 18 Oct 2022 12:05:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 1134C8308B;
	Tue, 18 Oct 2022 12:05:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1134C8308B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BC0C0C007C;
	Tue, 18 Oct 2022 12:05:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 27FA5C002D
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 12:05:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DCAB040B22
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 12:05:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DCAB040B22
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=DSI0wJuj
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j4rCjhzZMCSr for <bridge@lists.linux-foundation.org>;
 Tue, 18 Oct 2022 12:05:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9EFAC40B15
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2053.outbound.protection.outlook.com [40.107.92.53])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9EFAC40B15
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 12:05:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HIwOVogao+bz6VY3695YnQSRGryOCPD7aCQF0pKApCVb0CNN3cyh1oX9Oc7rpfiI2U+mpoE9RpbaEGGauxKaN2EgIu89EgwNjyEMA0JAg5KbLozTO6ZxzpAHEvYdHCtCFueAFSB1I9KE3fJTklJ7kb9ix0BomITnZeKvomRpTGpil9hH++JQg4jo8ISapSVrLuuyZ2PV5T5J6lPMYBZ9yVwvmOh0PvgKaz/uNs3hLXaOFx2l9y6koTEvLdvtX40oOIphDhcCIVbEIWwA9pOR5bpCkl+LAJ3vf3aQ+7YLdeRo41UiRPCrI0QJ0l/XrBcWT1s1kpCjRPE90sak89+s5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/Yja9VsLnagC72ep9LTUOr8dSAjGOieYh86W4wK44A4=;
 b=MhoBGOqx0QziaWcbgGXUBdJWpxj0X6yIDmXvA2O/MmAeGfApudma+WN9PEVsS+bKygintuf5MgO9vUP5UrSp35Wuln5rVvZI33rqUhm9H/0MQQGJX6qpuJcrpv1xrrdb8h4yi8OGpo7g+Ggfc0Q465Q7ju3pwBaJvJGf8sOucVPXbidkY2ckQZ9Bvhy+9LN9bXA/u3X7PGTI8Im158MT7RAOODW3+8A2lm6YFY4L2oEvAU/2KSdGb8lhGjW1zUmCaOCz0PHZA6yRZsNFXNOvfTXu98vmN6tdgUGKQFA9C3PpEsMZNJvvNQJ4r7vXtzZ6U/tv2QX8p1FjjWEeEcQ+Og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/Yja9VsLnagC72ep9LTUOr8dSAjGOieYh86W4wK44A4=;
 b=DSI0wJujpk4u6ZpIhqGVZEeO7xLqev4DVYVapCbf4WHmm34g1bKSV9gISytLpTJXeHjhfAbMABcqEmwuLeA1Ak2t5PxUesjWlihnK1qS6RBrNjMo+MR7iUttLuBWhRrdyDAZsHZcLa1X0j5aCvdyXGSnh8Llfx8ME+heZ1fr4nYewPx25AQnBPkcM7sRmnD+87Ev85OPGf44gfoUPG9RWEyDEIMjQd0rLiwjPNoAWMCHnCrz/JF9+4m25jFu13zTuNL2JBBQ6KuWOw7jbrWURfleKG5RKmOP4xtearu+y6zPoT4uf7Bzeb+2dHa8rsdmIYkzptdrMwqj5oS3Lx6Luw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by CY5PR12MB6406.namprd12.prod.outlook.com (2603:10b6:930:3d::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.29; Tue, 18 Oct
 2022 12:05:20 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e%7]) with mapi id 15.20.5723.033; Tue, 18 Oct 2022
 12:05:20 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Tue, 18 Oct 2022 15:04:03 +0300
Message-Id: <20221018120420.561846-3-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221018120420.561846-1-idosch@nvidia.com>
References: <20221018120420.561846-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VE1PR08CA0013.eurprd08.prod.outlook.com
 (2603:10a6:803:104::26) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|CY5PR12MB6406:EE_
X-MS-Office365-Filtering-Correlation-Id: 24ffc412-382c-470b-eeaf-08dab101071b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4QAhVJ3nFid4EzuLQ1HbjLxEdgSzsZzXmLPHfcEAlfuD+Qyf3B5IhMxc9TayKpigDnvTMLzACkGDjCqavMLkprCG7vLEubSxLYnqjRKxBWOEKzp3gdaVD5822rI4li5G3eEINgt5MK9NbDLNpkSZsszY2+ZwDFipV0HGXVqfgQn/5SOGjZRo0dXqixjTy/vJChWq9DJSLHkr1oujeBrQjn3ddOKFhbxsrcJJzY2+lvUsl91OdN38EyyzPY3omrOsoq+gQsDDwYlHUce/Thg6+tdp5n5/+46qZpt0k3SQ4uhyf7XlCpZ3I2LtYjexUwXjmq7nnFkOgTK3lgyaUxihd4xJcsT8GrLzWxFeG9NruJzeGYsVq3E2GUmbCWIKXXSUgyZsD7PWfpEqTVCJIJHU99IL/DRKzkuwvQK8BcM4xaUPNikpAQ2mYOJwM6fXwGld5h+eXGkfUUlWMNmmEpaESmVHjIqcx++E7DjdxZHLWgObxTfZQ/N1j0ZQRdvinNQJgv+tnZx2EXZEDkfWjmNfqljlmUBcUNTHbLX7uKMSny5yhDbgJ8dSzJppmVh9CSkiz/qUaGskb7vQ26hUa+UFPKnQTGhIhvxnK0b/VH9T9MRBFAUON/c1T2E3PYSKv9hjykesZ+nMd+Qh9CLdEtggGw2+K0eN/+i1ZDanKwJmRlIJT20DlMBS9sGmP9gxfiH/Y54wtWvtjhYkUBxiX0s7xA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(376002)(346002)(396003)(366004)(136003)(39860400002)(451199015)(36756003)(86362001)(38100700002)(1076003)(186003)(5660300002)(107886003)(2616005)(6506007)(6666004)(26005)(6512007)(478600001)(83380400001)(2906002)(6486002)(316002)(66946007)(66556008)(8676002)(66476007)(41300700001)(8936002)(4326008);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JS2ai6zIeD3r/lLKT4WBpBEDGhmbJqAU9y25jIDEiKIYECu7CqZ9ZOCE9LBw?=
 =?us-ascii?Q?3GARIQHsokUkCsNy9ctZ0mwGEnntVzt7OH9qT2ZlccXH4JexM8yby3ugJmQ+?=
 =?us-ascii?Q?91quab+a+b5nXUYff77G2ruvtHlg6pMnk57jrqDlBR5IVa0OCb4uY8tNpGOm?=
 =?us-ascii?Q?Y2jYmnZNg2OdqFPt56lDsMo6FsqNvzDvnITLYQrTn5ps35lVARU1s9Sm7jCs?=
 =?us-ascii?Q?GLfaoUvVuGAiP4uA6LW6zUC+3X7diUIrf8vwRkSBbCsEjdU5a3GUwxQYp6Z6?=
 =?us-ascii?Q?vk1K9ZAy+AGvJTOyy1y1kKW1jLLcnYcNOKeRXUR6TT4Y4Y4s0dU2zRGEnMr7?=
 =?us-ascii?Q?sHubaTddEsoJpLPEe0ZDk9/pdE0zf55k5Ijl0j0OvQaG1Q+/EKgaCsKYmI+Y?=
 =?us-ascii?Q?yld+v7D09Wb6cNcb3XZ6dod0HLSOgrX5RYgBJg9zKdAJq+bwZtZsirKM/f7a?=
 =?us-ascii?Q?0V/HizH4Rm20OogbR2X5ixDylsYfxdnaLzb4QnZCF2MnZpTS1unpTYig24iV?=
 =?us-ascii?Q?8GDMoTM/9ef2U4cJa3OXR4asF9dVeNnZ4rINJZsNENcsBzuLTWAS03fesxye?=
 =?us-ascii?Q?nlybxq8VUoXqzC4yC6v1VHoSQxE11OG7s4Jk92ti+fsBvSeBaH9bhEyoEFU9?=
 =?us-ascii?Q?xdfRJVCXcDuT3tpaorzTgd5XO6Y/uUX1LGZw5HBEmEhdp52zwfEMaGGeeh+9?=
 =?us-ascii?Q?9KV9lslbMT+EvF2V2tT538VM7joISTmIRuZsS0+D0vnwi1Ca1RlUM2HqupyJ?=
 =?us-ascii?Q?vaCEGqDk9HJtk82ErGS3IjVvzkpwF96J7ECHWfPIGrvJAlUeWyZKGzKmi04Y?=
 =?us-ascii?Q?RlOw0hU8oeXa7sNYZsyC7au8mw6/L9gKBZAFlbT4FFQioq38/6ZJvdqtpMH7?=
 =?us-ascii?Q?XeOU1vRaHBGv56VPNKfHADLQRjinD6kvfmz8a8f5PYRf26oIjNW9LorCO9Ii?=
 =?us-ascii?Q?9mT3LNvaZ4bm0QIKVpXkF5XmCflqjLNUlkSw9GlqujRQmqFm67bgsv3sCvTM?=
 =?us-ascii?Q?au5XssCD1CIu4Bkz0zME8jTtPlgYcUikeWLg17gUgWWy/PJSOZAXwIPcBxh5?=
 =?us-ascii?Q?RmJhpx/MSK5n/m4PLMXjmUvFFaPLyLdufJVZuJrqqS8SvjQL9muVutnNLQn/?=
 =?us-ascii?Q?zhvCoOCueIk5OVm+3q7D5coGlqoLFL5KV6NkB1aLKlID5LWAvicekkj+QLbQ?=
 =?us-ascii?Q?xtEjyXNpF5Q0EENaGDiLRGwoUcmgzO1+Hqq8ZPG3LBU+0DgHkAGOCIArqPMK?=
 =?us-ascii?Q?0p7msY4WDxpYGUDyhp/ogB2csTsuAJ+yAYCX5ngL0PqmZYbK2S6em5Ltm7TC?=
 =?us-ascii?Q?aMFidnOW69qFtHPEpXZNtgUn06HMhzJFR4rZsxloJHZyJUnVT+kRyS8xGldo?=
 =?us-ascii?Q?QGQXwYXgKCV0s76VsqGWMNAE1NAPkc1uedA0osBXeasjJiUK/jnlsCfT7XKN?=
 =?us-ascii?Q?gmrua7onSGLLgz9SHIsPYRbRGd+ng+zLT/1Csr7Gr4w7viMbWnBJFCk0Lfhn?=
 =?us-ascii?Q?ZKbI7i0HEyCMnKU1t8yGdGcn/8YUD2kOnagE3Fx8EBVWLeMaJN1Do49sTr0c?=
 =?us-ascii?Q?/i/9SE1oOReDo4Ddo93Y6uPUeF8nCH0+8b813eDk?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24ffc412-382c-470b-eeaf-08dab101071b
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2022 12:05:19.9951 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YTEidlDQYJxIg5G6AmCoB8dfhpdhZ1zaCaIvzoEnUFlFy9xit9CDyIwaOK1CnpnKfnw7kCnfp66/OLAWg7XhmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6406
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [RFC PATCH net-next 02/19] bridge: mcast: Remove redundant
	checks
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

These checks are now redundant as they are performed by
br_mdb_config_init() while parsing the RTM_{NEW,DEL}MDB messages.

Remove them.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 net/bridge/br_mdb.c | 63 +++++++--------------------------------------
 1 file changed, 9 insertions(+), 54 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index c53050e47a0f..68fd34161a40 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -1090,11 +1090,10 @@ static int br_mdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 	struct nlattr *mdb_attrs[MDBE_ATTR_MAX + 1];
 	struct net *net = sock_net(skb->sk);
 	struct net_bridge_vlan_group *vg;
-	struct net_bridge_port *p = NULL;
-	struct net_device *dev, *pdev;
 	struct br_mdb_entry *entry;
 	struct net_bridge_vlan *v;
 	struct br_mdb_config cfg;
+	struct net_device *dev;
 	struct net_bridge *br;
 	int err;
 
@@ -1108,38 +1107,12 @@ static int br_mdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 
 	br = netdev_priv(dev);
 
-	if (!netif_running(br->dev)) {
-		NL_SET_ERR_MSG_MOD(extack, "Bridge device is not running");
-		return -EINVAL;
-	}
-
-	if (!br_opt_get(br, BROPT_MULTICAST_ENABLED)) {
-		NL_SET_ERR_MSG_MOD(extack, "Bridge's multicast processing is disabled");
-		return -EINVAL;
-	}
-
 	if (entry->ifindex != br->dev->ifindex) {
-		pdev = __dev_get_by_index(net, entry->ifindex);
-		if (!pdev) {
-			NL_SET_ERR_MSG_MOD(extack, "Port net device doesn't exist");
-			return -ENODEV;
-		}
-
-		p = br_port_get_rtnl(pdev);
-		if (!p) {
-			NL_SET_ERR_MSG_MOD(extack, "Net device is not a bridge port");
-			return -EINVAL;
-		}
-
-		if (p->br != br) {
-			NL_SET_ERR_MSG_MOD(extack, "Port belongs to a different bridge device");
-			return -EINVAL;
-		}
-		if (p->state == BR_STATE_DISABLED && entry->state != MDB_PERMANENT) {
+		if (cfg.p->state == BR_STATE_DISABLED && entry->state != MDB_PERMANENT) {
 			NL_SET_ERR_MSG_MOD(extack, "Port is in disabled state and entry is not permanent");
 			return -EINVAL;
 		}
-		vg = nbp_vlan_group(p);
+		vg = nbp_vlan_group(cfg.p);
 	} else {
 		vg = br_vlan_group(br);
 	}
@@ -1150,12 +1123,12 @@ static int br_mdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 	if (br_vlan_enabled(br->dev) && vg && entry->vid == 0) {
 		list_for_each_entry(v, &vg->vlan_list, vlist) {
 			entry->vid = v->vid;
-			err = __br_mdb_add(net, br, p, entry, mdb_attrs, extack);
+			err = __br_mdb_add(net, br, cfg.p, entry, mdb_attrs, extack);
 			if (err)
 				break;
 		}
 	} else {
-		err = __br_mdb_add(net, br, p, entry, mdb_attrs, extack);
+		err = __br_mdb_add(net, br, cfg.p, entry, mdb_attrs, extack);
 	}
 
 	return err;
@@ -1170,9 +1143,6 @@ static int __br_mdb_del(struct net_bridge *br, struct br_mdb_entry *entry,
 	struct br_ip ip;
 	int err = -EINVAL;
 
-	if (!netif_running(br->dev) || !br_opt_get(br, BROPT_MULTICAST_ENABLED))
-		return -EINVAL;
-
 	__mdb_entry_to_br_ip(entry, &ip, mdb_attrs);
 
 	spin_lock_bh(&br->multicast_lock);
@@ -1212,11 +1182,10 @@ static int br_mdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 	struct nlattr *mdb_attrs[MDBE_ATTR_MAX + 1];
 	struct net *net = sock_net(skb->sk);
 	struct net_bridge_vlan_group *vg;
-	struct net_bridge_port *p = NULL;
-	struct net_device *dev, *pdev;
 	struct br_mdb_entry *entry;
 	struct net_bridge_vlan *v;
 	struct br_mdb_config cfg;
+	struct net_device *dev;
 	struct net_bridge *br;
 	int err;
 
@@ -1230,24 +1199,10 @@ static int br_mdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 
 	br = netdev_priv(dev);
 
-	if (entry->ifindex != br->dev->ifindex) {
-		pdev = __dev_get_by_index(net, entry->ifindex);
-		if (!pdev)
-			return -ENODEV;
-
-		p = br_port_get_rtnl(pdev);
-		if (!p) {
-			NL_SET_ERR_MSG_MOD(extack, "Net device is not a bridge port");
-			return -EINVAL;
-		}
-		if (p->br != br) {
-			NL_SET_ERR_MSG_MOD(extack, "Port belongs to a different bridge device");
-			return -EINVAL;
-		}
-		vg = nbp_vlan_group(p);
-	} else {
+	if (entry->ifindex != br->dev->ifindex)
+		vg = nbp_vlan_group(cfg.p);
+	else
 		vg = br_vlan_group(br);
-	}
 
 	/* If vlan filtering is enabled and VLAN is not specified
 	 * delete mdb entry on all vlans configured on the port.
-- 
2.37.3

