Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3970A6024A1
	for <lists.bridge@lfdr.de>; Tue, 18 Oct 2022 08:41:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C21382FE4;
	Tue, 18 Oct 2022 06:41:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C21382FE4
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=Uz+7nr8L
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bz5O4RWeoA4q; Tue, 18 Oct 2022 06:41:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 02C8582FAE;
	Tue, 18 Oct 2022 06:41:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02C8582FAE
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A9071C002D;
	Tue, 18 Oct 2022 06:41:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D5366C002D
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 06:41:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A58AE41891
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 06:41:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A58AE41891
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=Uz+7nr8L
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c27Omnl1tmcu for <bridge@lists.linux-foundation.org>;
 Tue, 18 Oct 2022 06:41:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4886741896
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2042.outbound.protection.outlook.com [40.107.94.42])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4886741896
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 06:41:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I3sizESTmiL6rs8DiQlOb1Aw1AmqRoi0+db82p48d3zas3mcI8RFXR7uBg+163SW4Il9lV54u7NzM3TPqISTNQnUbw1lqALHnT9OHT77EGnppqNVb7BmmI6auf16LAg325Z8Lhcu+ZrCFTnjlzbGayUlz4VVOwrOFrgG985yC4jUnWBVPqbH8qVGK93iEtKZxpdYY0ChWBd8jHJqzHjEgI44B2IGIwdigrDx5DDD0QSZcCuxUmlcqX3J7HpSTuqylJoCOuldYRAZ1Hr4V5iboxUIbBa+AJ+1xAtbGCD9Tor2Bq4V+TRMuj3BNbVkiClNs/mL1C+j3EG1H65Oz02/ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MBOcdlumT6sm5Rw4LA4smgT1aeEbq3l0gRJKs1XJP0M=;
 b=ixi47FFD/n5Beanz2LpkXCsv1p6bM0v9F7/LZJk574597UGefDuhW/g1r6RL7QlbIBhTCaDX+X1CKQFfk8RTkRxCFS0tZTRC9uZgOaJcAhTD389S7gw0TZBnC9nmuAOmguOoyuRUCDQtr188uO9eH8NkNoAgCnHZEdTGe114aXzRTxXBJaNuuyuS4xnn+bPG4A3DnJ+tWzGQTM+HKfs0oMkjNte5IxPZ/Wgq0w6os12f2J8YZfmIBlVb2SXEadlv+zIXJigYucugWOp2jNvrN5aFC4/mK3PkP+BSEtmp/zS+N7tLzbJvOO7eBjo13SoYRfLnJKFHMXCzMPyQ3JXmLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MBOcdlumT6sm5Rw4LA4smgT1aeEbq3l0gRJKs1XJP0M=;
 b=Uz+7nr8L82veL1U7Rxc1W1hvm5QMQQG8y9UuYwGatdoLWklc0xlUeflkuIigqwB1/CI+ojzZ/4MPrD5W1mXMaGaNNikGBREa5/Zwe8C9/Flv6aEJOxFDV/9kV8JAPkFbXxzYuRg3gi2jagIUjBhJWWPp0ksyMmJDDPeXRbZMNtsb4W/yF1A2Coq+xFnmQ4CHWo7L0wFOw1T9CzA4lsyfpRjHSbRCAD6/sfLkq/JlmAZWRsPm0icGb85zfh/Q4G0eV2sBCPGuGLsuKwejcj4ggUVyDZkaUVadOrXzWxz7Cg/nnVUShK1u+NlT8xKUeHRFFKAog2dIB2keyv1CCKgpUw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by CH0PR12MB5385.namprd12.prod.outlook.com (2603:10b6:610:d4::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.29; Tue, 18 Oct
 2022 06:41:15 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e%7]) with mapi id 15.20.5723.033; Tue, 18 Oct 2022
 06:41:15 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Tue, 18 Oct 2022 09:39:58 +0300
Message-Id: <20221018064001.518841-2-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221018064001.518841-1-idosch@nvidia.com>
References: <20221018064001.518841-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VE1PR03CA0045.eurprd03.prod.outlook.com
 (2603:10a6:803:118::34) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|CH0PR12MB5385:EE_
X-MS-Office365-Filtering-Correlation-Id: 6df46682-6b85-4c76-f64c-08dab0d3c157
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tLmGcveEX1CKrW4iuJaFa0DS7n/QrZsj4mq0V0A1n8KM40ee9KQQrElEkk2QOpFWxjRjgj/yAbO1Gh1H3U3DcCVG0h9tv4GRw0Fm9943yhn7ctVmfhsZwDJvVL4L92/ftF70e1AyObfGg1KBMb2jGVSF0HGaxA/iLzUuIu5DEKWAieo21RP2/AUPQoNBLxY10Ahe+Y64trkzmddAtKbMix8GCQOpRmRNVUFrN/c2XBwBMK4hfDfplNc9Al20O6GEFa+9PjG2WjEumh1Ya2nqbK92tns3HJf6Gp6kMly6S8l8cSEgGtFsYsjLDsQoElInz6yzq+h743yXHMm2RxlckNSqwUzS5Cmwscf6F04iQgI4WQD05kyRWDTcvKdEAq/FkAilC+VjZwhdb6SIZYi4tVj+GzAtYAKHiwSMjyEa2pb5zP0+1H8/ESwI0sSZBVRGTP5YeF9WTY+14cTjtb+eQkFkX7cPpIboNTjEcZ+IM4/qMbHMlpehm1H6OzEJgH+knzU59lJHEY69LhzWuU31j8hCFCCB7h3fpplRB/VWqFkc6V8pOISjsBXseSI22sPfkqUd98+527407J3+mxuuVsL0awTtqord/q6MbIvlJ8e3rPM71tjEzo1npemVo8DoWz3dbuklK6sTSEzbDS+1NbQd+BNXJbyCM7qAXPgw3LbeKw6AjymHuLD/6u2ttVrbuovFGeHlwnnSC/HziEPIZw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(39860400002)(396003)(346002)(376002)(366004)(136003)(451199015)(36756003)(86362001)(6512007)(4326008)(26005)(6506007)(8676002)(8936002)(4744005)(6666004)(5660300002)(41300700001)(66556008)(66476007)(107886003)(478600001)(6486002)(66946007)(316002)(38100700002)(1076003)(186003)(83380400001)(2616005)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?40bNvfVZbNI9S5yIEkmuRplTBl1oBQDLj83Pg4DsFsUIwIZYhiT8QBoaw7e9?=
 =?us-ascii?Q?/yjdyXpieVPdKkOzNumjX36dZ4ycbXg8H/1dqgfYlDFCfZc8KJSyLunbJSt1?=
 =?us-ascii?Q?qtZTVLlL9e6xfl8J+6m//YcXpXn2EeeDi3JYbNzduGvtsrw/NFx9m5ag9QhQ?=
 =?us-ascii?Q?K9rFaTbVu6CZZXDgrPj5GmmRyHiY5SbUA4ppzvltmI0CYliw2eSQYJ9qeNpm?=
 =?us-ascii?Q?tVxiYxeCuS6RDCXh7VANg+ZsKCZ+0FWaAbZul+NXjl8UjlKtDMYV4JNv2/r8?=
 =?us-ascii?Q?oyTDcahRQ/Pzw7WJwnkcmm448cnVa2vt/k+525ZMPCx4z7QQfA70uBwVVobk?=
 =?us-ascii?Q?FBVlKUa1YnCC96VBWlWdQI1LybJvLDYjFRtk6UCJul/GlwK8hJZ2kiq6UcSu?=
 =?us-ascii?Q?RdCTdMmvZFtPtNja0+mLOjO53Cy0+798QpAgK3ak9udFFxANnH/hW9hkREtV?=
 =?us-ascii?Q?y3P1geKja4sKWJVZnin+l4f9wTHJ/k0ddrk/xpU7K39yp/aEnhj4uV5Tafmw?=
 =?us-ascii?Q?tMJfVQHVX030P60WNALW4yMltb+JFvMnnHoJm1anPblXn0Jxx+eoMZd+2oY6?=
 =?us-ascii?Q?wZleBf8ALF2mM2ssjLSMJC5I3Wzs5W/nbRR9cw6LEkyZsRVN1uO0f7zZk+4R?=
 =?us-ascii?Q?5WgAf4eszjha41DT55hmtSozE/bGskCNd3Yt6Wg5zGHeR419TiHYFpyUdb3c?=
 =?us-ascii?Q?NiGNNq9xmj3lmKP0B0iNDJXDtIn0PuwSvtzaf/JMEkgY7CFOmbyLMw2ObAiO?=
 =?us-ascii?Q?4VtZhQhfSaSouuazdjyX/QAKNtiJTsTrx9mzsTRtHfXwZYkmwH86Y3LysSQN?=
 =?us-ascii?Q?RAcaKfvZnkC2E6XhfSUdGKAzPwbetgm4XCGbFS0WJzydTxWnnJ6YRJBL9ovA?=
 =?us-ascii?Q?B/d2iI3aVvyTxs7c25jjHYYt67WUZ+ym5NAuXDpIllZ+TBXK8fIrD5zb2S0D?=
 =?us-ascii?Q?RYDMnm2/D+Oyud4OBDNpL1l2vaGgwV7FOpqFcuo+RDr+hALBeW6tsNb9x5Rc?=
 =?us-ascii?Q?v5mdf32yXuhmqh4nl3nheuBWwYp9bHsI24hA9yalvjUcjvJxm9s/y/t61VH8?=
 =?us-ascii?Q?eu67jJE69PQ7+CSzNemXkSD8vRXqgETyZAGPG5KbASO0sV0U7DW8EhgH/SpT?=
 =?us-ascii?Q?OGltEORjkTfOPs0KN0JDYeVj72knGZhzeFT5ruI6IEDn86QUAWpJs6m1XLxY?=
 =?us-ascii?Q?HKan54CoqLqTRAP3Gl41+iZioVJIaQbtZ5rDQWTDkuBXcfeRNOJg7St3U04/?=
 =?us-ascii?Q?gXvKuacmI7nwooUl6MCpdJxzPzc6H5AH2T6WxYWP+DTcFNjqVjiQLvAactRA?=
 =?us-ascii?Q?Xhkv087p7GLsTQxETF0rncuMUPq3HflH3Ekz68HSIYvRMin2rdRCsnxR1Ju2?=
 =?us-ascii?Q?tX0aULDVJao2kMMhHXqonwrSCKGJrM+zZQwK+N3eoFPkJMxo09U2xcELnGWY?=
 =?us-ascii?Q?Zp9JiuZUoMdQAypBgLwNsouXlWXnUescNqix7TDjC6WL483ymKghqdl8Oc+1?=
 =?us-ascii?Q?elghPN4S8m1wlwoCgXMa7V3QbwhdWutm5CxkWyVicxzrx7RXEJeuadYWgckq?=
 =?us-ascii?Q?rE4eK+Eni4NSS+UISA7Gv3fhxFvXZqMQJt5tcSp3?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6df46682-6b85-4c76-f64c-08dab0d3c157
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2022 06:41:15.7071 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wUlmS0l1e4t5XVww0FkF8FUfSq5NekyLjDGUv6GatdenvGh6H/Scm7mAlPSY3HNel3/YdAa14Cpv05lAcYbD7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR12MB5385
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 1/4] selftests: bridge_vlan_mcast: Delete
	qdiscs during cleanup
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

The qdiscs are added during setup, but not deleted during cleanup,
resulting in the following error messages:

 # ./bridge_vlan_mcast.sh
 [...]
 # ./bridge_vlan_mcast.sh
 Error: Exclusivity flag on, cannot modify.
 Error: Exclusivity flag on, cannot modify.

Solve by deleting the qdiscs during cleanup.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh b/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
index 8748d1b1d95b..72dfbeaf56b9 100755
--- a/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
@@ -59,6 +59,9 @@ switch_create()
 
 switch_destroy()
 {
+	tc qdisc del dev $swp2 clsact
+	tc qdisc del dev $swp1 clsact
+
 	ip link set dev $swp2 down
 	ip link set dev $swp1 down
 
-- 
2.37.3

