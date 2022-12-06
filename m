Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8576441B3
	for <lists.bridge@lfdr.de>; Tue,  6 Dec 2022 11:59:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC78081385;
	Tue,  6 Dec 2022 10:59:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC78081385
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=EVNS6jGD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pQZTX4Pn3hca; Tue,  6 Dec 2022 10:59:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 82244812E3;
	Tue,  6 Dec 2022 10:59:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 82244812E3
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 24F2BC007C;
	Tue,  6 Dec 2022 10:59:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 20772C002D
 for <bridge@lists.linux-foundation.org>; Tue,  6 Dec 2022 10:59:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E255F40914
 for <bridge@lists.linux-foundation.org>; Tue,  6 Dec 2022 10:59:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E255F40914
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=EVNS6jGD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rjv9AXJH5oOF for <bridge@lists.linux-foundation.org>;
 Tue,  6 Dec 2022 10:59:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24052408FF
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on20623.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e88::623])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 24052408FF
 for <bridge@lists.linux-foundation.org>; Tue,  6 Dec 2022 10:59:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X/pyRoa5jlJzsEzQUl7eF3VN/5cOyyUiEAl6xYygcxrBRYht7/M2sekRHNmRxxKQIJvyJdy4Kf21c7xQPliKZEy1UluEWGH7nojm7FCbqPD2F0BTVrsngdLa3sU3cBYTrB1X2M8MADte6RE3Z4TlytddMC86G1qFd99MLf9C9c5OTtwZpaK2UasBq9CJn2NmVaWMls6K0gaRHuR1IMLCkd5Mc3Ag7RFAaHufZgyR2zF+aD5QtoQo/a5bJi80COOV/TTDntDHukkS2SlOuzCYEdSaIg1CXp5hR2gs7qOAFaCnIHD3ZxP5YezOK28gA+/RifFbytH/5IqGdhIRVa0NLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jxi5hqenPmGJZ3OiuNPNAdTZ04SsvqLcnKeAnCiatF0=;
 b=m/+KHykw/iXmgaQu/NI8bxkzS97Q7/qoAgqxD8UZvoGKNvNkT6Gj3H6UgTmfDGRZIHn0FgCqdPeGt/bAZDy8ZCL/X/F8xD0OaKDcyw42Iq5eBVSDS/+nGttARexylsjf+uMtRIgim5lXtnJWRyTi5NTp80stTIYsgi/OBNspVcKjMZEL+SNVi++RdZbJIlgWtxAFzI23xlpGVdV8HKDgRW/O1xyubjTrptjgoxBbLw+IO0GF/YNS/xt/ElIgZnyGokmOM3Hkd3Fi6TnNpbwyODAKWS2vYKfU+UE+yQ3LRonsOEyIENZ0TpTkVt7VViBrdrwgzpADAm/DObJuvHX3eQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jxi5hqenPmGJZ3OiuNPNAdTZ04SsvqLcnKeAnCiatF0=;
 b=EVNS6jGDBGmCgZi2DQzCSdEQB/+vzv3TTuGW1RazwoO3xNces5Z0WXjGXIvWFOfwTVztbLiB/+jvFlapbbN57kYIJGQat+RuDXkUdfvgBpCv9wx4ivrTBngMF7BsdhG6GHzBAVfpHl3+xCH5TnUdqgz9mEsKwEeHRk2NBVuVJRgxODmqwmgOpEr1prjSmMfR7BtoElo9NnV8lLT+/e6cEks1DCQyvhNhCqXIB/a2MmEb2gXIKl8lzZ6GftRAbheAr/DzmB1q+DIvYrSkf3Hk+lG1o+02HsQ03+oToFDFE0mi868NcP+zFGH8LZMVGspTifx4JNYWrLEMB8TZ6JohMg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by BN9PR12MB5131.namprd12.prod.outlook.com (2603:10b6:408:118::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Tue, 6 Dec
 2022 10:59:30 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::a600:9252:615:d31a]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::a600:9252:615:d31a%3]) with mapi id 15.20.5880.014; Tue, 6 Dec 2022
 10:59:30 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Tue,  6 Dec 2022 12:58:08 +0200
Message-Id: <20221206105809.363767-9-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221206105809.363767-1-idosch@nvidia.com>
References: <20221206105809.363767-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR08CA0131.eurprd08.prod.outlook.com
 (2603:10a6:800:d4::33) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|BN9PR12MB5131:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ff7509e-116e-49b0-6bba-08dad778f341
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 79JyIDqREkeWxkbgXBYqLKagbOuhGgR+Rz9OTz/AMmcM2ZfYWC8q7EDFKr60Db+P66/hTMOuvy9/rtqX6BcncnOulSM+VbYdLb2RUfEGGg5g9uZky0QVQ6Uyxe1MYToc3uEQY6C6weLZrzUzaXQLYo33ud56pjkCNJQQtxiEeD7VaPNwPwrv969OjlunwVuzsfPlySqBAF74qghR1QZRRRW16nIft7P1tooNQ++FOqEsFtSyZufecIXtNUDN0DyDlz1kcTBUJyVaawCZ25QABwLb/0bsJHTJ/6UjPkFJTt7PXkkfU2S8TrBYmaskzXZTunbEUfzfAtnOu7At4efBeiUU5/dXS20L4LEMsJMxvnrbY3UzJ7KQnUYPPwfFIJ2SM7Irke/zZ7qqZN7nPfqxAWP6c5WHX4UzgJdMGPrsRygsvGQ2g7GmdnWD2DRur8DXw3WWw2BUxXahbx0fegSg5DNPDi+WiMq5oJh1I5mSeaF1+CSe+MET3nPVwzUM4qG7FCdkyRpauEpF4Mg1NvPYgh62qKY8H0bmn8zWOBe3tCG6v0/lEnw2PAMN3bOsAkw+89NpPEgSEFhlKzYc8mJmdViM+96GFGZV4+E1q2oZggqBoJnBZCjOFQbbDtIDqMJ1Tc/bt+PoE8YjfbpoSfgN9A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(366004)(396003)(39860400002)(136003)(376002)(346002)(451199015)(36756003)(86362001)(38100700002)(6486002)(478600001)(6506007)(6512007)(26005)(186003)(107886003)(8676002)(6666004)(5660300002)(4326008)(2906002)(316002)(66556008)(41300700001)(8936002)(66476007)(66946007)(1076003)(2616005)(83380400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BTBT6GXFkSmGlJRe6lRDVkVS3xc+LDMFB57eVj+bFi6iqVSuR7JEkKV2n06t?=
 =?us-ascii?Q?WLlm7X973Tn1Ogvt7hOyUgdh3Sh1ofHazng6seD1EhJlEv8oKsynI/aniIQT?=
 =?us-ascii?Q?R4yJKXUK/suLtiS+hrSurhqOYenonzjFKRxC00LcKWUqcVdtJd9AaxXH6HC+?=
 =?us-ascii?Q?Pk6DBn15TynIpe1xGi+X38bxTs+fYk4lRpmbz5ndHG/QAAxI8LpaVyQJlePJ?=
 =?us-ascii?Q?R5eTBYKt5fqnaBEZvKPJtt7oNwseixPhpXYBAuq4F7zFMqQRbuHzOrSS+SUu?=
 =?us-ascii?Q?FqoBtOMGN1eQ0+u6camSxBiY6bSSuqCzhNwf66k6FyLcv7v4q+O4NrIQgzlR?=
 =?us-ascii?Q?xEXjAYmSUe/7sNGsBQZRGmBaD5guq1S1tgv6DWVDe5poxuwFW1QKEbA+1tq6?=
 =?us-ascii?Q?FRjlMzLuHJ6fwKjZL2UhyVhWsn2KdBOKJAhv3cNUPkhMkApD5Rxkkk1YMZnq?=
 =?us-ascii?Q?nJlcz6T+KXbrKrAihc5Czfqt/B6gXg24K2+yKbgbkWR9Ek7/7pS0ny5l8ZF3?=
 =?us-ascii?Q?LAh0s6kyTX9V2gsAUkKXYyZnNZJk+b5rzllz0VP7bgVarR4xrWBDkjm2w28C?=
 =?us-ascii?Q?fPLjBu0Gt8wFR5LklL/4KqOPzHB0RWDKEymWAR4r8lyzaT/76ZJrEwVp3X/u?=
 =?us-ascii?Q?97ItXzrAnpAfB27Oue49PK+po8VlCQfFG7G0BfDJHPlIfULlHTMPyKmILtnk?=
 =?us-ascii?Q?gE6exUhqYQP/eXCqv7fyD+E2i/y0lOVjXaDW4UdnXBQ3FoWDzdHVhVv6JeAm?=
 =?us-ascii?Q?G+hAPFTJB2Cau9vHpijwd/1aZbEifi8SH683MgO3aLLG1zADPepq2ugTfpLL?=
 =?us-ascii?Q?r/y4WWtUCAa++9NEjbYaz6dNW8w9xfJdc39En9p2HJyp+ikztcP8djt9dqdT?=
 =?us-ascii?Q?cCVcj06yXRph+1ceaHpdNTsKVRF/oTUw+SQaAdW3XC0YZMkeg6FHGKkLo1u0?=
 =?us-ascii?Q?xtKl6X7VaRaPhxNDekvo27tywIuJcfXTfNbLYjVrcc+43z22Tll3y/A/lN+k?=
 =?us-ascii?Q?OHVZrIb7geQyLoP7FB3u44JBgNdcJuJbJ4e8hIipP1apZ7WynPCyqMmFCdqZ?=
 =?us-ascii?Q?cQTkJhMnKiAfNrTL98dkJIopRL6X7EcmQxZXw5gX/w7AlTAaDiuz5Ho0bPhZ?=
 =?us-ascii?Q?R1Pvn8yDah7V+7NEClG/k4siAThsD6yg1glcx27CuDBA2oRNBX1zIIyxejWx?=
 =?us-ascii?Q?2/45o6TgSTl9eNGD4dE8wxEIoaL4Ju3T0s5UEeVDbvZwrvgIg25y5Z9QBIxh?=
 =?us-ascii?Q?UVP5LxSuXfaXIF94NyeuSR5dyxwJqwgwAui9oa0BdHyQ4s/gKkV/AZ1dejkN?=
 =?us-ascii?Q?gri/lVPC+SWePUSvYmDmCHGxqL3HBj2ZBEsq+IlLy8Y4oMgS5pSbSTpdhugH?=
 =?us-ascii?Q?MJMvqxmQoOPeqZx5Q6rKCnNy3SLlaEM4mDF+8QM7oTcjMnowE3wzVJBgjAuK?=
 =?us-ascii?Q?biSj+YUb6qKV84tJ+OobEJ116xr8oEraC1yUjan75Br3SAHHYrB+vOItNz+r?=
 =?us-ascii?Q?p8kSRd96+F6X+epLyJTiR+pboSeGyOn0hgXgSIOTDGqNhwNfyou6DgdOf28U?=
 =?us-ascii?Q?KCIPvcyRaqRHq8ZVjgCEC787pzxkM14upLeaCHLE?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ff7509e-116e-49b0-6bba-08dad778f341
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2022 10:59:30.4325 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tAuMZu0ElI8u7qOOe6nbZt+zs7mDsv1Cy3l4vYjNBvWBrUwiM6A5CGYJ8zG41CySoCxogSQ00dO/zomQeMfvSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR12MB5131
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 8/9] bridge: mcast: Remove redundant
	function arguments
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

Drop the first three arguments and instead extract them from the MDB
configuration structure.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 net/bridge/br_mdb.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index d954d8f7cb0a..ae7d93c08880 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -786,13 +786,14 @@ __br_mdb_choose_context(struct net_bridge *br,
 	return brmctx;
 }
 
-static int br_mdb_add_group(struct net_bridge *br, struct net_bridge_port *port,
-			    struct br_mdb_entry *entry,
-			    const struct br_mdb_config *cfg,
+static int br_mdb_add_group(const struct br_mdb_config *cfg,
 			    struct netlink_ext_ack *extack)
 {
 	struct net_bridge_mdb_entry *mp, *star_mp;
 	struct net_bridge_port_group __rcu **pp;
+	struct br_mdb_entry *entry = cfg->entry;
+	struct net_bridge_port *port = cfg->p;
+	struct net_bridge *br = cfg->br;
 	struct net_bridge_port_group *p;
 	struct net_bridge_mcast *brmctx;
 	struct br_ip group = cfg->group;
@@ -879,7 +880,7 @@ static int __br_mdb_add(const struct br_mdb_config *cfg,
 	int ret;
 
 	spin_lock_bh(&cfg->br->multicast_lock);
-	ret = br_mdb_add_group(cfg->br, cfg->p, cfg->entry, cfg, extack);
+	ret = br_mdb_add_group(cfg, extack);
 	spin_unlock_bh(&cfg->br->multicast_lock);
 
 	return ret;
-- 
2.37.3

