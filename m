Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB9669011B
	for <lists.bridge@lfdr.de>; Thu,  9 Feb 2023 08:19:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA91060B2A;
	Thu,  9 Feb 2023 07:19:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA91060B2A
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=HfvunNxH
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vfQ0hodHZop9; Thu,  9 Feb 2023 07:19:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 1CB7060D4D;
	Thu,  9 Feb 2023 07:19:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1CB7060D4D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D434AC007C;
	Thu,  9 Feb 2023 07:19:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A531EC002B
 for <bridge@lists.linux-foundation.org>; Thu,  9 Feb 2023 07:19:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 72DAD40612
 for <bridge@lists.linux-foundation.org>; Thu,  9 Feb 2023 07:19:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72DAD40612
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=HfvunNxH
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Etmsw5Vyg6mW for <bridge@lists.linux-foundation.org>;
 Thu,  9 Feb 2023 07:19:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A257640104
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on20601.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e8a::601])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A257640104
 for <bridge@lists.linux-foundation.org>; Thu,  9 Feb 2023 07:19:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cqvzOI7vendGyHE/fPapmHb6IcMUBDcz6MAMcQMTuWqulOUBF82PVUn0ChI5E+YEafKDgHNUuPmTXDwM4N4REVlu6GWWkunaLSCTChROms6VvZLYp4wVsWsZ2F4W5rzFh7lzB2c3UigslbVz0N6moMeK4qjpDjQ2ejz9eiMLulzauvVcnv8qSru26XcbostmHJU1adF0c6lghfgxeAhAAQvg/0K/OPJPYM8xITOKjsh3fClbwAbkwaK/4hp6H6s9Ec4WgogPQ4qmwZkiP1J/zsuMNWymgNmNrS+DOcoW0UIFdzAR0xChrpoucHvv6sRI/LCd3JuyY4jjt3B8mv96JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H/6+UXKKZ2rpYAaCAv+LG7aAv+9rhlrWlu74D+hcCj8=;
 b=fq1J/i/gK3P4zKlzRcx7TIV/qu31QrLgHjTXj6Ce36304DUEF0r6GM/fWKeP7iGaajV0/yuE8EZNWAPIA52Bg1X0PdeJp9HvD0p/4UN8kWldIo131XjvIue407BhPnApv+5j1EkrSe0BWmJR7Ju6GDBMNsGk92MV8vimbCavZW23sZBeh8Ly86Zrzu8wG9N5X5NhJGXF5a5vJdxyz061qAX4qW5MKyeQSSjrGhXowzP8Z2YJkw+L70Sy6WtBJav5tssv/53BIDAAAgYgIfJ8fPiFi23luafWVV5M+UgM41IAGvyaz0sfSZWVKvlr7yo7VVGNf+jrFlttOC27m4LxAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H/6+UXKKZ2rpYAaCAv+LG7aAv+9rhlrWlu74D+hcCj8=;
 b=HfvunNxH99N67atjuhvx551EyOJpUK1uV+f3DzMdbo/tmfPcsTWt1WisEHkXyLLzTShepmJ8Ueo1EsBQ3EClXmNjJ0F9eAtpEmOvLSi2qKA/malGa8LcoKMcxyxMvhXjvnER46dSdtkkenyRdAjyHYZARseHdBXCjy7iy0XLaobxTBxMHHvrEQB2nGToFEYaB7oQP/fZmxTlJq7bBmeadrG5s7tDvx/g21U+HuVZ7dG+0y4a2deFEeMV2fw8wsFN0iNU1k36fObxAHcRvaL4ffx/PRFnt6OisMybNBNI+UCsJUE/hBiCQdMMHJwKG0C6oGXEPtKNfSgRAb9Biffgxg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by CY8PR12MB7755.namprd12.prod.outlook.com (2603:10b6:930:87::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.17; Thu, 9 Feb
 2023 07:19:46 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::7d2c:828f:5cae:7eab]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::7d2c:828f:5cae:7eab%9]) with mapi id 15.20.6064.035; Thu, 9 Feb 2023
 07:19:46 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Thu,  9 Feb 2023 09:18:50 +0200
Message-Id: <20230209071852.613102-3-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230209071852.613102-1-idosch@nvidia.com>
References: <20230209071852.613102-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR03CA0043.eurprd03.prod.outlook.com
 (2603:10a6:803:50::14) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|CY8PR12MB7755:EE_
X-MS-Office365-Filtering-Correlation-Id: ebbec40b-6280-4da8-cbc8-08db0a6e05e9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j0ZmxB0lpZMVk6nyTCIxl4WbXv8p0nPYteWQmjBqVGYfTz9WXfhUMWxKnw8a+1Nh4Q/gOB5Oog3f+91c6jwhX6L1/5dw39m6hhB8pKTeZEE73T/wy2C/4HaXgq2zGub5l1Cg1rTCYVqX9ORPLn7s/UY1tzIuBgZr47g5silluTB7IY7y91tXvTEJeWPLiUtlK19wFiygFs2mPSZx77Bgi1LU+/nC9etz8sdcJmKPVOK5mE1UrZsHkKo3gMfatvfM6c5MiPcNjSF7OhxdJXksvl6BzJaQ+OjW2O3WBpi7pLnvUnXhQnlOt99R7cSGHuQx8PzPZlpV68+T71o27Yp7dezyE0Y8d4+IDhaRy+iE9vT1o2xuPqDnw96rjzsej8d7s7yPyokkUWzJ5uVGbdFok8UTu46lrymHPveav5VJy8KAoXN652QJnVS3m4tArYQnNFvOTpJjxhBUz0M2Ir9CIzAYEIoBumU3coyXtVhIqmlT0UJyZ48aSrpzYzeVi9wcGQR3ZGMeM4cVAj/C4vp3xwy6+JccqOgk9keGIPDgvAeIobQHmH/MOxOYvOgo0TzW91GweCQZCOpSRtZ3JjvyyrEbV4R7djKMufnmJIs1+qjswub8U56qaEwhzo72i4KaqqssnhSv9hxLATqnF7zcWQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(4636009)(376002)(136003)(366004)(39860400002)(396003)(346002)(451199018)(6512007)(2906002)(186003)(6506007)(1076003)(26005)(36756003)(107886003)(6666004)(5660300002)(478600001)(6486002)(8936002)(41300700001)(2616005)(8676002)(66946007)(4326008)(66476007)(83380400001)(66556008)(86362001)(38100700002)(316002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VDV+aE2sEKrDGw+sKq7K7dzdTAjvgUBfkrR5DDr1l6klrL7kbAwn24Rq/KAA?=
 =?us-ascii?Q?wygfPXNACrNJoaJmXd6JOEKc5rZbw13fNjF7ysPtKawtlWfYXmytjON/7Pa/?=
 =?us-ascii?Q?RhUSO6cuy64yfLh5BlRmMP+FQeFfcFJ6twi97zbQrsaEU48llGttIk9zrNhD?=
 =?us-ascii?Q?fnGQ5fTbUZiulYfd5ecPnJ4Sw3/ksidLixvQNPE/gtMYKD2gGpq2xkUygbVA?=
 =?us-ascii?Q?b9Z3YYhrF1VA01Cq5PqX9Pe7NgtH/iOq+ndv+4VzCD/dt3RkO9gxzpCW+TsK?=
 =?us-ascii?Q?EUdT1wH6N+QJC1j3Vo6F03rD7Lz3kbjXGGr4+Tse1qwW/NrDBDxCDMuw6egl?=
 =?us-ascii?Q?mIfjc9lM/7LdfetxGIx1mUxNLmZ3NdxiGmJyGymx9Z56/iOfUTsyhAQX8H9+?=
 =?us-ascii?Q?IE3bGsqrRhM4++40sB/eZQ6MWdbcoy3c5qCgBRt7aK/P0yjdt6Vvata/fTmn?=
 =?us-ascii?Q?D5LGZyzO3/Ud8WhY4L+SUreFtXZEsKrjAzsOMGLcaMJU3nUx+oqVUAXJ/ryF?=
 =?us-ascii?Q?g1mJjU0XpwM9ehoj/dN3QM7RhC26FfA40wI27QTMd9Kv9tcO//2fiAFByMYQ?=
 =?us-ascii?Q?HxYxIwe/hCLYLzLsnU2I+sn6aRcg8OT8Ft85iNSeqjyzgpqnyq6ux1eZo7Xa?=
 =?us-ascii?Q?U9m/EHfJy5FQCoy5t8zqHNUdKNCAZnhpD9f+CmtzNlI+ky2tBOkL8e3w2sMv?=
 =?us-ascii?Q?g9IvY/3H90gT0kRCjDFnKSUmPEX9XX+2kOR0BV0sy6omqT1I0dtmrROwDY67?=
 =?us-ascii?Q?EoXfV+4Ms6qbjHfuGEg7QV7u9K0bW+qBQmcRQ1MztQTjetON8h7gN9JMY9Ya?=
 =?us-ascii?Q?VPGSxb8kO0ccdp40xVF2ZLWJKGPT/+xoRIwMD9zE6sNXUKmFpRQrQ2ap3m61?=
 =?us-ascii?Q?KCZcSpVcVANS5dbFOObRK6Z3R613xAua+XS8fw5K6tREE2H83JVqs1wY5avL?=
 =?us-ascii?Q?7jREiE3lBGbidUr//1LgOjUlFaAmSvNE44ABglxPG7RBLz2DAxWcQDmyyIAQ?=
 =?us-ascii?Q?0O0xRkfXQ2QbFm3nQ7xQ9fzTlAyPu1gEBP38XDEzSMRzcmCDt3GkX/dovNED?=
 =?us-ascii?Q?1Ejxa/z1S/iASPQgKEWtG+xVgA2f5WjOpqbOwIlg9stqKYwICVvzrU+0SUMJ?=
 =?us-ascii?Q?oQGGZdEH9Av7za+yT7wUmh3uyFj+LePnJ4b5RYFZ58uB8Ek9JW4WTkM8cAeL?=
 =?us-ascii?Q?uEJv/b7rPStNDxJxXogfbh7TC+UyUJR2tNfUa/S8B1zLspwuwTEBkm62qSSl?=
 =?us-ascii?Q?XuRUn9hJ+6nG1KIR0AjeUQ6BZxZiNcZyn8CMwiNrL04ZhsSgSZBh/XZOFtob?=
 =?us-ascii?Q?9URSj8P/iCxy8WO+MTSIaOMVp6SOETRTLiXzXZsjQNMMLGlmP8apq+1itCgF?=
 =?us-ascii?Q?nkEPYZ8eUaJ/coBIKHV+UC8JdgFnZi+yxpw9tgpsLjjDLSvWz34JcRnhw8JY?=
 =?us-ascii?Q?bWoKib203bARiK7Wz2bcVMwjrlDrTTxrNxBskwx6IEffM5NFKRfjDoMYkzN9?=
 =?us-ascii?Q?D7kn77zx9Q0O8htHn+SS8vkDinjwso5Sc0PX+uxCs13S5dy08jJ/3lM4BEOb?=
 =?us-ascii?Q?gxaNjrM9HxjPeDUIQnki0c0xI4i88ddpu/23XBC4?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ebbec40b-6280-4da8-cbc8-08db0a6e05e9
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2023 07:19:46.6195 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +XoOmWf6BIkyI01Q57FRx55vdCh6Kmwh1zw1C2AIOuyrQWxCYeQBcIbh9gJiAuyV/Fd0sTR7TatLcPeHY+E0Cg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7755
Cc: petrm@nvidia.com, mlxsw@nvidia.com, razor@blackwall.org,
 Ido Schimmel <idosch@nvidia.com>, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: [Bridge] [PATCH net-next 2/4] bridge: mcast: Remove pointless
	sequence generation counter assignment
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

The purpose of the sequence generation counter in the netlink callback
is to identify if a multipart dump is consistent or not by calling
nl_dump_check_consistent() whenever a message is generated.

The function is not invoked by the MDB code, rendering the sequence
generation counter assignment pointless. Remove it.

Note that even if the function was invoked, we still could not
accurately determine if the dump is consistent or not, as there is no
sequence generation counter for MDB entries, unlike nexthop objects, for
example.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 net/bridge/br_mdb.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 13076206e497..96f36febfb30 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -421,8 +421,6 @@ static int br_mdb_dump(struct sk_buff *skb, struct netlink_callback *cb)
 
 	rcu_read_lock();
 
-	cb->seq = net->dev_base_seq;
-
 	for_each_netdev_rcu(net, dev) {
 		if (netif_is_bridge_master(dev)) {
 			struct net_bridge *br = netdev_priv(dev);
-- 
2.37.3

