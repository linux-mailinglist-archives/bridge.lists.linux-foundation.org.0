Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E68D648F4B
	for <lists.bridge@lfdr.de>; Sat, 10 Dec 2022 15:57:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92D5641579;
	Sat, 10 Dec 2022 14:57:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 92D5641579
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=tjUfxB20
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kvSXlQFFZy4q; Sat, 10 Dec 2022 14:57:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id D2FC64098B;
	Sat, 10 Dec 2022 14:57:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2FC64098B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7F4FFC007C;
	Sat, 10 Dec 2022 14:57:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DE48CC002D
 for <bridge@lists.linux-foundation.org>; Sat, 10 Dec 2022 14:57:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B769781BB0
 for <bridge@lists.linux-foundation.org>; Sat, 10 Dec 2022 14:57:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B769781BB0
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=tjUfxB20
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U_sM1Oka2AZj for <bridge@lists.linux-foundation.org>;
 Sat, 10 Dec 2022 14:57:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DAEF2819C8
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2061.outbound.protection.outlook.com [40.107.92.61])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DAEF2819C8
 for <bridge@lists.linux-foundation.org>; Sat, 10 Dec 2022 14:57:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XiMxYHCKqCe0oaN9pf7L/YZaYeeeE4H4jFa46+30ZcjGzCMmmqgjAmVFMdPm7cYzb9yLp4jul3t2fIDqkcixm/sKVF2wxvxwH8l+UToQMfKEd8IRMZh1uQffEibdSp7J0eGgICjSsUHPWvjMHtVEuIT9tnGMYeU/9A94Lz87JxvG9ZfnsOcucPghhGi60tT0tB/9HN2KKxk8++2RsgBHgVGo1TY4ZeJD8dpV62DyxxFzrMR9NO1qTrMNKJdU82MzXsfIWxjW5lWTgIx5Kz4StgYvSI30IFMXRXmsBEZmvisYCLCTyCIizIbK+eD3i6adKPA+gdxHuthgK7C283p54A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vhjkLzUUqq7AZtBVlw352mbVcqWLv7WZ5npg347BeyU=;
 b=Ncn2w5iopMsxszKFOfFRZprgJhhESWnUuTg5auEyKzE3/tDunBMqU0OPWpdaXA98c4Z5IciszwJVZq1uy1p4J5PligPajwRN0sdiBgMwmJ7X8cxPyLns1FCUXaHT8ZJj3aqU0lA6uJsLag14RNP/jOkja4ULImJs/k7MunVpyUtee8kfnlTgg2fWd9c1jmMVMhQyJ8PV975tpe497/oIYrQIczYZTqt2yWFHWatA4rEke4TkqSzV7CDHPvGuCmigpUEOi7nWZtOyVkzrX58RB5j6AGREqcQplBx37hoYxz6IZWCB9ku0DrSheSr4nr/1MjvQ8QbBiLKGtBEuGqLtsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vhjkLzUUqq7AZtBVlw352mbVcqWLv7WZ5npg347BeyU=;
 b=tjUfxB200Ontcj3QDY0DCZCigN8up8n1DkmnO5BC3ij6Sv4rYIhYtNq5fg1XCluVMhdc9OLn1C1o1cqnHifWmxTOndwsjn7ROGSuKk6us1TQNOQkqgSR5muBMfsqpoGH/uQkGJzyABoD7lLSuXkVVcn7eOd2zeXPXPgtU932ivaL0lEzHLqaouhaqIsC2I3RLx1eUpD+wpGeBR0+y/LQVZLe3GcgkcdA0hsgUmaXdtwyXgy6IgfrduL1HrMc4CJDA4deC+ohY2IwOqECWwzPbBhWXm11FAWigqCvN1VB0gZgoXN3widJjglF6zx+nQd3K959IAlkFWIm6uP0k3gHgw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by PH0PR12MB8128.namprd12.prod.outlook.com (2603:10b6:510:294::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Sat, 10 Dec
 2022 14:57:50 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::a600:9252:615:d31a]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::a600:9252:615:d31a%3]) with mapi id 15.20.5880.014; Sat, 10 Dec 2022
 14:57:50 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Sat, 10 Dec 2022 16:56:24 +0200
Message-Id: <20221210145633.1328511-6-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221210145633.1328511-1-idosch@nvidia.com>
References: <20221210145633.1328511-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR0401CA0016.eurprd04.prod.outlook.com
 (2603:10a6:800:4a::26) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|PH0PR12MB8128:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ba5812a-4e7c-4634-a48e-08dadabee828
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: olvzw1yMgQQcMPJqbV7HMZx2g/JW+Hgevq7ZHmiLexXEXcQau2+Q2yBKWkKqBDH9PW1CCsu+KYMjjIBppGLhdLo4rXV4BAq2MpwRKH3i3dhTV1RZ74DchJHJtoc41yGb/stb6v577hykW9zXVhR4VUgjfvBeNcG0hErxXROBdMO6EvS03VnSgfz3QOFmF8SM9QZ9Yw39NuYE43MTG4NqLWBLHL+T61DhwoEvaoviqI4KOYeha5m7jPjer9GPuAK3qmPY4UugyhGUlBUHfFAv5yRjfni0xelATBIxoW9eNP9irLQ+NCyV0Tlf8PmdMggp+2qHQA+DFndXxTUYdBAQWEucknsA2rmN10MeXesOYI5FPKYnR5en8V1Weoh5YGS9ZO6G8KBSkBtU7jAmOH3LafSfypzPPWSzxaVrF59C82nGCJAD2g0+TzCX/aU9pJyOPC3BHliEZ8vAQk5eZf7l+soGZ7LlEuYHJGrtgd93iXdoQee/4mwZGO63d04fP2gCUQpg4DBfpsQRE2uqNkD7pDXlZekzUzdg4CeY2SttH2+bw4OW+RoczNEMWD68arQ4H+ardyJ/oGWlLPpIc2zOcf0YCyefAduMcKUIHoYrpcyCyGEJUy3BRnL9QDN+7rC/Jm+N/50A3fh1SMWjAG8ruQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(39860400002)(396003)(366004)(136003)(376002)(346002)(451199015)(6512007)(186003)(26005)(478600001)(2616005)(1076003)(6486002)(6506007)(107886003)(6666004)(38100700002)(83380400001)(66946007)(66556008)(66476007)(8676002)(4326008)(41300700001)(316002)(2906002)(5660300002)(8936002)(86362001)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SM9deNMS48OSlvWyYwX/sCOD2FEjBDj228CmQFhMR/DLO1HS/PO0fZr4tWDI?=
 =?us-ascii?Q?DAInN6QfmNzvfFI+hQrhSQWbip/0l2BMtbvIj9Pxe+05PGM0ZzOuoPKC9RMq?=
 =?us-ascii?Q?hpbkkSU1k8UuBUC+0HGzxeASkZn81jSl7ggdP33f3xTIYG5gdbFcTRiNT3wI?=
 =?us-ascii?Q?q4Gvkz3Jo0w/ETpfek2CgU8ifcg2g0qSns/dES41+AgKYg2v4SJ4xy0h4H6b?=
 =?us-ascii?Q?5E5zEYgTlPyflRxgXvD0In1JfObHUbJVWxFVPTS8cw+9QR89E/KliRga/lni?=
 =?us-ascii?Q?GxjlUJP2fvDDiR2oi+ky2c7BQSYTJ05X0vxVooy227kCITq2FsBwnbNbTkgZ?=
 =?us-ascii?Q?b7oWIs2S8LHFk1lvl78VLS/ewQ77o/MHMX452bt8dU8WcJVkUxKDizkzm6kN?=
 =?us-ascii?Q?++A35On8CMqJTEsBjkBVOkOzkTQyod5CNe+XxUJeT7rpOTFZkpxlrhP5q5CZ?=
 =?us-ascii?Q?BGVr4RqHCLVphQfu7ITzVAM6M2tGgK1xXYT1k2gWZW14nDBToYUNjo5aN0bb?=
 =?us-ascii?Q?UDU31gqhs/MHAq/a4CDpiEl+wBs//XEQE53ALCb/QaaFJcJf8LcsX9ZDZOUa?=
 =?us-ascii?Q?d38cdwOg9pO1CAKT2MdMzfFRPKUM6FQvIo3zvS0VnoTRKBs38nEjDpwbXaFz?=
 =?us-ascii?Q?74c2VlLRzRCLFSelY3AISMEZaFN71pUB/V8bJbJ7Ank9OsKgXldPippugJyt?=
 =?us-ascii?Q?89+4Jx1V/y410k6k5P1btLSyCNLJWQ8+U+dYSW1MBd9uq2kSir5OQ9PXNqBo?=
 =?us-ascii?Q?fDtlOfjcW1gmtU9B8yvZYaaWQkXD3PNkzS43Ll7SmbwdtGV018usXVFUf0m4?=
 =?us-ascii?Q?BDMtCc9JxEAbjM3uxge5hSbv91pFAnZqITI/PfgDP5Fmv1AVMrUYIgLdUd9Y?=
 =?us-ascii?Q?/Ae31sqeDv9HHsZeT8Pmf7OuR0Yac8OKlnK6r5Jl3M4L3dEF6mBtqTmR+gRE?=
 =?us-ascii?Q?6453lpVsi3pEMnku5ttQvH3TCgVrHWbrDVsc/ykMUNq/L+C/iDRZ2ZcTP+ZA?=
 =?us-ascii?Q?GmFW4unAuW0DPLjHJuOkS426rOPXzX4WNA2wPd99aVZdWXqagjprDKGoMMpr?=
 =?us-ascii?Q?2Yz2jalQadTToR+TIuXYWtIUUhxUdx9u4T8u7QBLckIryeJ+7DcLokbhSUSr?=
 =?us-ascii?Q?tkRbkEf8JzIeW4Bs95k34OlbHEsXbuT5w9ciTY8RrrAXJfdtGQix6pIDbVt+?=
 =?us-ascii?Q?7eP4Xt83jyfYVxs34UAkxTRAbgnyauBd2jQPTltE6PISF4+MRoGr049ncJRS?=
 =?us-ascii?Q?T22e4bOuQh9MX/bQiCJpJ++TVfrCIQ6DAXO1qFS4NAD4YMGY9Ss12YZzrxvi?=
 =?us-ascii?Q?J2stIf/wU3lKIJQjGZoECZP+QSHvYAjKOwQ9qksXAilCoq+DjkJz1FYs/nkI?=
 =?us-ascii?Q?aA4I5ktzmI0BZF3Mf1apVU/FEHuI6xkxHbAJU8R5Q50yTAhFJCbUxIDykILv?=
 =?us-ascii?Q?+J9SF1ewYxvESIQyPxNmWLsMmUlDjvUXLtJW0VZyu6v9TCxTz5/UH9jqtY1/?=
 =?us-ascii?Q?f2mPR/Tv2RlKvaB4McBKVVrCXfrcbonU6lyd6G58vd4zc2cH7hOmsPPehv/z?=
 =?us-ascii?Q?6p4RmDFp3zCFLciN5R/f0YzTBF0ciMX9y3gmkDmA?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ba5812a-4e7c-4634-a48e-08dadabee828
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2022 14:57:50.0901 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BTgjkF8CwObfx8I2UlOUJjZPzOniyV0ifr2fFM7zRpotPbMdZAdER/2lgYRD6W02bvisVghSC1vxxLq5+n041Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB8128
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 05/14] bridge: mcast: Expose
	br_multicast_new_group_src()
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

Currently, new group source entries are only created in response to
received Membership Reports. Subsequent patches are going to allow user
space to install (*, G) entries with a source list.

As a preparatory step, expose br_multicast_new_group_src() so that it
could later be invoked from the MDB code (i.e., br_mdb.c) that handles
RTM_NEWMDB messages.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 net/bridge/br_multicast.c | 2 +-
 net/bridge/br_private.h   | 3 +++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index db4c3900ae95..b2bc23fdcee5 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1232,7 +1232,7 @@ br_multicast_find_group_src(struct net_bridge_port_group *pg, struct br_ip *ip)
 	return NULL;
 }
 
-static struct net_bridge_group_src *
+struct net_bridge_group_src *
 br_multicast_new_group_src(struct net_bridge_port_group *pg, struct br_ip *src_ip)
 {
 	struct net_bridge_group_src *grp_src;
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 3997e16c15fc..183de6c57d72 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -974,6 +974,9 @@ void br_multicast_sg_add_exclude_ports(struct net_bridge_mdb_entry *star_mp,
 				       struct net_bridge_port_group *sg);
 struct net_bridge_group_src *
 br_multicast_find_group_src(struct net_bridge_port_group *pg, struct br_ip *ip);
+struct net_bridge_group_src *
+br_multicast_new_group_src(struct net_bridge_port_group *pg,
+			   struct br_ip *src_ip);
 void br_multicast_del_group_src(struct net_bridge_group_src *src,
 				bool fastleave);
 void br_multicast_ctx_init(struct net_bridge *br,
-- 
2.37.3

