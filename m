Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D133C6472E8
	for <lists.bridge@lfdr.de>; Thu,  8 Dec 2022 16:29:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 341F28209B;
	Thu,  8 Dec 2022 15:29:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 341F28209B
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=Nb7jZa0m
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p-0IuH8LvlwR; Thu,  8 Dec 2022 15:29:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id CAF028209F;
	Thu,  8 Dec 2022 15:29:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CAF028209F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7E3EAC007C;
	Thu,  8 Dec 2022 15:29:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 70F26C002D
 for <bridge@lists.linux-foundation.org>; Thu,  8 Dec 2022 15:29:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 36F9440BF6
 for <bridge@lists.linux-foundation.org>; Thu,  8 Dec 2022 15:29:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 36F9440BF6
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=Nb7jZa0m
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w1qA3-87Drtj for <bridge@lists.linux-foundation.org>;
 Thu,  8 Dec 2022 15:29:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C95E40166
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on20609.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe5a::609])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7C95E40166
 for <bridge@lists.linux-foundation.org>; Thu,  8 Dec 2022 15:29:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WISCq93bxGEJJNjggPRw7VGaVilDpNndgMmp7bvBD6tcEsmlHwX8iT6bno86sRgSNmB/SGV7D8sH5iKfyFRI5W6ZAHrjA/9hx8LevTeusdzGx00ntqMg5CMWtH6acxaHQshM+oFZWAJWU/F2qsI3LW5ce7gUsg3lw6T+PQd69BGVXVeuz6t9oCl65aYc2XikVE210CybzaOTXQ9A03lhQrIPv16mPvOaIGnb9Kmn0g52zZ7uCRymwln0ugF2PnRd8SayUtpybBnt2cq/AmElNQikVI28stFr88t7DHo/6OImqmJ0BgGrm6FD3juZV8Q/1i2z15eyObCIJY8GsgMpwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hPdHPL5S3hyLMtPnH/HReqGYYi8jUkUSixhyjE2KxQI=;
 b=SszVRR4Z9HvjPJkF+yA+0QfvicJn5Gg+gfPDW05gsDjXQQIoaBqwmPTFnkGLBulHJj1JeLXDj1YIBqYIFahDlpdd0x1pNupWw3sIdGrit6Q5inEBqOYt/ZAvdZD9MOaZKSMTE8tWWbFTa0Ef712IKxxOvV2VmIVXltyRQ/aMbzJZsxch3ESHTbHlvfWQtY8LK/UueJYUtc5rGG8ayvjpmKU3WPeYMr7/BhcbPH3kwGMEBX9fX2BoxlXqA+NmbrtXj7hmgsWSTqk4hsfEmVRjZC9Ub7+z1Bf6xBdxZ3dGBTlzGWsUoVjhfDLnSgHPi9TcY5JKgOa8BxWmNNu/eX+WaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hPdHPL5S3hyLMtPnH/HReqGYYi8jUkUSixhyjE2KxQI=;
 b=Nb7jZa0mg+Gpr8lYeGxoGBWV6Z3NsrDFsqy5QPBSLam3ms5FlaYhBQk0j1WHFRDtCsU/GyxiaY1mcZ/xatH6ATH3NBXr4off+eZYKKxx+tDerjKh4HNSM/zaPfPrZKZbwypkzIM8/8xQpDwSlqa8Wrx4q9AIHn7Wm7VoOybCLO7Q5VvWtsLJYQDGFmI8Z1bTXSmqP68Iq1o7PHu8KsyKoXqkn2VowXlQfTH6V9MpWswbCF6vl2w0+AUFj5l3R9jHrbk+GvqOOw9gOx4HT/VDZJBGAW82kjDhAW7YHxb3CIc8oJLzSSnea0cql3EFMFJBGd7Oy+55R6VRrf3csJ2M6Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by PH7PR12MB6787.namprd12.prod.outlook.com (2603:10b6:510:1ad::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.16; Thu, 8 Dec
 2022 15:29:05 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::a600:9252:615:d31a]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::a600:9252:615:d31a%3]) with mapi id 15.20.5880.014; Thu, 8 Dec 2022
 15:29:05 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Thu,  8 Dec 2022 17:28:26 +0200
Message-Id: <20221208152839.1016350-2-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221208152839.1016350-1-idosch@nvidia.com>
References: <20221208152839.1016350-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR06CA0114.eurprd06.prod.outlook.com
 (2603:10a6:803:8c::43) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|PH7PR12MB6787:EE_
X-MS-Office365-Filtering-Correlation-Id: 23008297-3bee-4687-dcdf-08dad930f0d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FWpzShRiSXbkrZ3T4BO8juFATTvhw7Gpt+tDI5kKKAVApASxDsnxBjjuu2Sq0Y2rvUN2KY5oKI32mpPdNYSGRaS5r6s1oxvqtTXylLdVgAJJ+UG0WuWEppdPxT41jTLfEn7CNUEtk5fLsPBDxWusb3PVX1iPKDoy/U76YVSkMVsA7uXGYDx2s6nueCFzwq8mVlNX9utFbSwm3obfEZFMdL8ge1teDWnX87t2wUulgeGg1/SQ2Vm1ArbCwhZAigspvC3Qbl+034ocUH1lZcZnMyhuq8iVjARyp6DTASb9fifEJ5M0IxupFDZhGZILx73G0gIFtaFXsoYWRMMSEX8ovvj9AIxJxHgCLWWcDG18ykIggkS5M7tvbKZENWg/a0RBuxbbGwIKmBaSB0BHHnVu7OiAxwMGm4gNd4Lu7RuMy6B79GqcCpgUzX2cdZ+SK8Yayvi+eoADSi+IkiufckUOh0KReaFFK70Ej6RVWIoqtJPrELRtbQ7ifLlOeJ4qtLyNXyX+sKpy6j8N1PqpfQpUv5heRRZsxIIVkH5ztRNiVmz4vYXbkEALasHSOwUn7VmCYTw9YMPifldI27UeyUUs94KJxtWdQi5VKbpdYCd246F2mnQsWmG6QF/7Bj4VCFc/NLOd5hYSB2NOHlq2I4O9yQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(396003)(376002)(366004)(39860400002)(136003)(346002)(451199015)(38100700002)(36756003)(86362001)(186003)(2616005)(1076003)(6506007)(107886003)(26005)(6512007)(6486002)(478600001)(6666004)(2906002)(66476007)(5660300002)(8936002)(66556008)(66946007)(4326008)(8676002)(316002)(41300700001)(83380400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZMowrFr39UlGXUgIinvr1GL7PJoezuSOAA9P2MoA42fGU6oAcriyaQmaqLjp?=
 =?us-ascii?Q?JkYcgkIS7bBfqiEtPm9zLkLBm9b+JcsT3/JPkcXaBzKDBsMX7DVqYZ0OU9zA?=
 =?us-ascii?Q?/nYLK8NZCO16XxxxmCZFjh0smBWwOnIaHCTPsjMGl2I/eevZoNEE/vTQyG/o?=
 =?us-ascii?Q?y7+E7aFVSfPbj4+XKufwdepELG53YPnd6+RqXUCNdWg0kU0+3oADN7aKod6c?=
 =?us-ascii?Q?KDRfvvZOKSdhNfCpDXiF/2rrIWHaGqMJCb38uNTq9Rb2cAClyNhhKSRpkQCv?=
 =?us-ascii?Q?oVKEr6Nf5TEPptXSuUXBEHCoYsksH1Edl9ggbQvtzXDeFouxpTKmbCnTRUp0?=
 =?us-ascii?Q?e/oed8Zt9PcdGfZ31MDRfWZ6MBpNJ5OwX635pFxbQuIEnNfYUJCg6AAZSily?=
 =?us-ascii?Q?LbsvBoSStp8vidRrHIwfPfIZqzKXlnOzxd0BwX8aeJh/8Z3oPHpsaDCJ4Du7?=
 =?us-ascii?Q?jCPmVx4NNY2+6AxdK410cTiWlCQGN7zKYogD/CU73L9NexKWTB20wMVGW63y?=
 =?us-ascii?Q?CPnDcFIx9JWwojcMF6t2n0untIYrfevOMXo9EfiQx9Qm/antXDD1tQ+06Vo1?=
 =?us-ascii?Q?uWVU9k4B/BZsSTMBSycNbrGuTBqjG88buiG1xnU1tWfhxq0aJcvpFn2bPIJy?=
 =?us-ascii?Q?sEuKQ1dd8poDBgkfHa8+ERlR/bUZABITE+uMf6+za9ZyWPOqCEwX4RTHiq+0?=
 =?us-ascii?Q?fQHQr0jmqNQIqYKhB+71XQpLOUx2lB+9IPnTiWApZysC0o+WxxqvCloidz+C?=
 =?us-ascii?Q?JLTh3mIJqXvPmRTE2en0X37pPwrXg7mJ/907LwRUgP2PGf4lCa9oGgEl5rvO?=
 =?us-ascii?Q?0DdeDshdLICty4DNAL8ILPq06pkyoelmmhFTRB737+SrG2G0Xu0TPGFs84gx?=
 =?us-ascii?Q?N6NuRuYeJc8ppl2F9TIiabY6ILiRcu7FbgziuAXNQqXRorSb/Hp7383pTpFe?=
 =?us-ascii?Q?V4vK8s6sfeobDJEJdQJhfTFUBxKNZJ+V4pZg7Hqy4rdwn6cnPrIMS9As+5B6?=
 =?us-ascii?Q?WX/1FMZjh8RYnv3LpoKbgEY6aCwQViN8IhDOSAXZuya1Y6QMX1jlDXL3oHda?=
 =?us-ascii?Q?uKUqTpmKlma9NvsQofQJmMY79Wzh7qHpsa4S59ihY1e+JAdGNNkvcyuF38PU?=
 =?us-ascii?Q?OaQfI8wVQx2S8j4YK/IoX+kimoGYz3Rk9w9vgj8ikN+IAtW614qBSqSQcPfQ?=
 =?us-ascii?Q?TxlleNOrEokloJB4vO+w7ZrOM/fNfaC+ZTIh3r+NuR25LQrh4T1983T/lYua?=
 =?us-ascii?Q?ynFFfWCp6r+omenr++CYYq8jP04KyYJ4wnFSIM1QfQ7ZDPMOOGqQIm8L9hz1?=
 =?us-ascii?Q?21vKzMEzaVUOWiKR6B29P7iyZ0QNcKBCILJ1kPXd17lR97OdEv5QG8GC7d1q?=
 =?us-ascii?Q?DneR8Px9NyE1zqALMrJGQieOjGQcPEfhABIFknE3H2H9Qqpwwo6hcpuDT7aE?=
 =?us-ascii?Q?/CDHjJpdAd4Vl5QlL9zzn19ucqr4/8tCFtCO5x3VcrGDleuc3/UCcj8B6GUB?=
 =?us-ascii?Q?WferA8O9qQAap3N7rFqOi1dr2o2xOcQ5OaU3Gp7NhY8LIF1oXaX0eT6Uay6R?=
 =?us-ascii?Q?14cBPTysqK0rPebw2u3sMGy1Q16OsTOfmFwuvNym?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23008297-3bee-4687-dcdf-08dad930f0d3
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2022 15:29:05.1701 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Op4qwyCW3Na5ptF8QFvK5xJEX3wbb9pFQwLx0GVS++yxlZjiq18Oun7lh53KPLW+HgWJ5qfaEqtqnQubkqAIXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB6787
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 01/14] bridge: mcast: Do not derive entry
	type from its filter mode
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

Currently, the filter mode (i.e., INCLUDE / EXCLUDE) of MDB entries
cannot be set from user space. Instead, it is set by the kernel
according to the entry type: (*, G) entries are treated as EXCLUDE and
(S, G) entries are treated as INCLUDE. This allows the kernel to derive
the entry type from its filter mode.

Subsequent patches will allow user space to set the filter mode of (*,
G) entries, making the current assumption incorrect.

As a preparation, remove the current assumption and instead determine
the entry type from its key, which is a more direct way.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 net/bridge/br_mdb.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index ae7d93c08880..2b6921dbdc02 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -857,17 +857,14 @@ static int br_mdb_add_group(const struct br_mdb_config *cfg,
 	 * added to it for proper replication
 	 */
 	if (br_multicast_should_handle_mode(brmctx, group.proto)) {
-		switch (filter_mode) {
-		case MCAST_EXCLUDE:
-			br_multicast_star_g_handle_mode(p, MCAST_EXCLUDE);
-			break;
-		case MCAST_INCLUDE:
+		if (br_multicast_is_star_g(&group)) {
+			br_multicast_star_g_handle_mode(p, filter_mode);
+		} else {
 			star_group = p->key.addr;
 			memset(&star_group.src, 0, sizeof(star_group.src));
 			star_mp = br_mdb_ip_get(br, &star_group);
 			if (star_mp)
 				br_multicast_sg_add_exclude_ports(star_mp, p);
-			break;
 		}
 	}
 
-- 
2.37.3

