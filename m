Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D53E6C0C7B
	for <lists.bridge@lfdr.de>; Mon, 20 Mar 2023 09:48:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 875F480C44;
	Mon, 20 Mar 2023 08:48:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 875F480C44
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=tOnjUMST
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jGN1pnooXXW4; Mon, 20 Mar 2023 08:48:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 2527F80C39;
	Mon, 20 Mar 2023 08:48:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2527F80C39
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B47D6C0089;
	Mon, 20 Mar 2023 08:48:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1D8F7C0032
 for <bridge@lists.linux-foundation.org>; Mon, 20 Mar 2023 08:48:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7CF53402F3
 for <bridge@lists.linux-foundation.org>; Mon, 20 Mar 2023 08:48:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7CF53402F3
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=tOnjUMST
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sP_zD8sB011m for <bridge@lists.linux-foundation.org>;
 Mon, 20 Mar 2023 08:48:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D45BF402F0
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2060c.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e8a::60c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D45BF402F0
 for <bridge@lists.linux-foundation.org>; Mon, 20 Mar 2023 08:48:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ek121jzaGDQVjmLMOvlM1Y6d5IT6XNzhV345OelsykJnhqQInVdP7nrQoC2j2DfSlUcOihz/0aRAApMNsVkB8gPZUf0ZtFT9YAKatl6DRFphGpFgvz+3qmkD2S4Jko7+BCwxUXQOcsToQpM5FIVUlz3aeSn8nK6oaNaNnh2rkZ4gzayUkjzGhw5V2ilhjKqNWYhiFcuWSEALpEuFWrGP4XONrBvmrQXUNOdDl8Yz7oFeqGd8vOxrf5g5wE6Aq+uQCqbI5noMe8Ux2Cpbg14U1mr59U2h36Q8SO77k/ZPodSK3hf5yccR0m8kI0b+9JRUvYkB77v5pFrV9C9baUbEXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EsCixfMvDvtbjXK/kO1X/b/nCoYkaVxteCqzE2UcyKY=;
 b=CQaKpszYLtxyHoDFlBWLGnUaIuOENvgyIhkNRi2KwoMRQnS1FP52Ur9bTkigm28xeW0VvW6paAbjSREim9vQUY1YSxlD50Ls8m8uD5zrY/QZpejmlgWcIcpt5BDPEJT5/oYTtxabIQfFDgxxsCrRjpr9Rzc1nXnaItajL59+pahyHkEJYabNJnt6VWvpV+bs3ss45VqVV3H7bbMg/Nyqa0OzA2i1LP9LZEX0TilV1P7f2OG1QSDIZhJ7sXWQ4DZ6xQS7fMK/vW/fA5F/y6Vtz5aZE4wLyLshT00HaUtUvu20Y4jSh4td5a0IqrWrYdoCw0W7Hkk8tJdTPoETbIuGGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EsCixfMvDvtbjXK/kO1X/b/nCoYkaVxteCqzE2UcyKY=;
 b=tOnjUMSTHZDd3C9zm+601LiTuk6gIc45DHkHLhRS8r0ZE9dCQeKjnHErihVyQUkF6vHgc1duQVaXffNCAcbm83f5Vq6S1LnU8esejZ2mYC/I3+8R8g4tfAuRuiReui/rewZ/tOcR5FtiU7r7a64YrFVyzhYWvXGX7afNp395GnGGfwk1WEj4pKmrUBWZ1x6gd1lHHDKBGi85EW8twOZT6IWTsEvlqjPKXF++OBWBTUv85xSU3WL6/w0EbajBXoAK3rgq2xycIbp7zh2PNKVR7KyJGM+ZJyreQo5txvOG+gvCWs2KwSwia+DRHaSDoqGCbQ7jFkof4nsBDaOZvrCgug==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by DM4PR12MB6350.namprd12.prod.outlook.com (2603:10b6:8:a3::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Mon, 20 Mar
 2023 08:48:27 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::d228:dfe5:a8a8:28b3]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::d228:dfe5:a8a8:28b3%5]) with mapi id 15.20.6178.037; Mon, 20 Mar 2023
 08:48:27 +0000
Date: Mon, 20 Mar 2023 10:48:22 +0200
From: Ido Schimmel <idosch@nvidia.com>
To: "Hans J. Schultz" <netdev@kapio-technology.com>
Message-ID: <ZBgd1mgO36umXqoj@shredder>
References: <20230318141010.513424-1-netdev@kapio-technology.com>
 <20230318141010.513424-2-netdev@kapio-technology.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230318141010.513424-2-netdev@kapio-technology.com>
X-ClientProxiedBy: LO4P123CA0083.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:190::16) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|DM4PR12MB6350:EE_
X-MS-Office365-Filtering-Correlation-Id: b4b25594-c0ec-4529-13d2-08db291fdfa1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SXNqDuzG1o5zTHmBYjN4fqt7Xr/kjDoTbnvor4lk4GnfatXWHE34DQ6Gz8TCXEwKYU6lfRugmeZEsItfV8txpQHLOpqYWP8ZmbKppu9vWNHyG7mo+7jHt7r+X9oinq2OK4OoWGsV+ZG13ZsH5silgOY9lLfnOzv+12gqHymvPGKZgXVv+WW4kgZFUJAEtYGGSc1YL2mR5VUUBAjlWuWVz/U2MQB2Hqbuf8aWqI/SimBZEWHvEtsZDP35WsmlBJeCUQmrNO/Q5+OPDHihQaK5JIvVghQ4kZSAAjpA/9UXyECwziEh1Lq2sUapIfFQCINTdAkhW19Oo1YGRh5HaVkgD0BqX25HEB0SxCvOQkI3VpD2w3Y5ZZC9MtnONMQ1sbz2uDU+qDNantvnqET+gHf+Nc+Sus8kLaoUHl3uikmWAT1XTRqk21C6hqZ5HaWEZuX00GpkOmOC8Vr0X8X7+A5Wh1yC5QlVhTjJTVWWumOGQV0y3W88EvqnMURGnCkWyJYJwTn200sJvgMHP7n5qWejB9QG0pVT3vEcHMqD91R/XpZ7hEFB/EUXKRokgJEcCgQfmIK3ZFSyc60xgX+JwYTV3pbYinhL7oTIeOwhtGmBco4OhjcXt6SMJ0ryr1jv3RLG9FF56Os7+8E1jriVeWYvnw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(4636009)(7916004)(376002)(136003)(346002)(366004)(396003)(39860400002)(451199018)(41300700001)(5660300002)(7406005)(7416002)(8936002)(2906002)(86362001)(38100700002)(478600001)(6916009)(8676002)(66556008)(66476007)(66946007)(6486002)(6666004)(6506007)(4326008)(33716001)(83380400001)(54906003)(316002)(26005)(186003)(6512007)(9686003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VH/TMqqUmsRY4flg7LXktgRE+cOlUFhJ4nMwmDTTnLU8Uen6xXPICWgKv9w/?=
 =?us-ascii?Q?6Mogl6lBtD/xbCJ5KSytMtGznF0hboa3ECigxSveqgtV8wMbRVZjz91T/YD6?=
 =?us-ascii?Q?AxTUEjIUV74ycFxrxagduRjvDoVDee2DdWd4SoOjwdhlq0rFfbmUnlxbDZbu?=
 =?us-ascii?Q?wspEaNnUoxcc30ko33UJuPptZ+RbMTtl1q7ImlULxUiQlwI5tNJ5RwNuuObz?=
 =?us-ascii?Q?cQ+TCGPbr849A9Ge1qmf4GTDj0KuO7g0nfrrfE8Xyaz4jonPLkCcb6jZU8GZ?=
 =?us-ascii?Q?ECTS2dsjs4qGEDS7KgQAkF2PAOegDGLdyZlfHAb59BnP1RhnOtX6kAnGgpDH?=
 =?us-ascii?Q?BhP8DQkw4plu4NYvZczcGPBuoowBF/MbHZf0UysWQybO93CSijAi9ECLHDTQ?=
 =?us-ascii?Q?Jfu4M3Qmo+HXaQe2GJNQAZUGxxsvC4O61xNZVZU0qR+JhaL4m41WQFz4jaRK?=
 =?us-ascii?Q?7eYw9sBNjw4DDq6Z4Aq/NNX5DYXnrC7J8CbMBWNjjcLFePU0V5THsn+ZkZR6?=
 =?us-ascii?Q?sZd6dNlILQTPTk4OReieMZnDY6CAE/ZFKKw8+iMnu3QRfKsZRCTC8gLdfh3e?=
 =?us-ascii?Q?RM7gePMhlE2afwGMxfUhKblUqkXYWxLlTrm7/5GGK0WkOwg0g9eIUT2hE8u1?=
 =?us-ascii?Q?v2DAyqWrO8B3IveYjswS7jGQqm0dDOZ671Ndy56OE+e6KcQgWgaRLZTgF6sV?=
 =?us-ascii?Q?vDWEEWhKYTJI11F9dOa2EDFmrBAcSf9sTnk74CQWp4RpkeSuR7+v/pZFbKor?=
 =?us-ascii?Q?5ILqdt3UfR6z9gWijsmDPZj362/UjHmTuTNpMtPIIVWraVcnW+SKVL5G5fdL?=
 =?us-ascii?Q?Vw6osW0TOe5hORTwRFrDrMqNxpgcTzlNreN4EvEigSKM1XEq0YM/7F/Ie9CT?=
 =?us-ascii?Q?dPrflk/kZRQQ4L1pB+ZVmeQUG3qNxzXYN/TRNdOXYO1YWrpbTuHLzaPWT9bt?=
 =?us-ascii?Q?Q9T8uxI5acGaCoagz5f8CNfm5INbpOUUpqgGHJb1fWb1oLLI/w1gAVKWQN68?=
 =?us-ascii?Q?kNf/9xGRpJ0Sq0XvnltQHdplJBjd9JysLC8beXSfY0M9jF5PKMNqhc5B0oKR?=
 =?us-ascii?Q?mREgcpPcMu21oWCGJWERN4ciQ26Xw/OJ6kykD2mraDXTd4u+qGrx9Bs+lqWs?=
 =?us-ascii?Q?Y79w8bpwkLYvK0fih4aIkP8HJ6b5VvGTzv08W1JRTWDdGXcwnFqIW0j5wNeH?=
 =?us-ascii?Q?m0qoRM+eIDzLTqpuYYc6kplKzsed65prFbUXbA55vcWrReH6H0i6ZRd8TEfT?=
 =?us-ascii?Q?UnMPRIsReoY8SxnD6I9VeftDoEzyKWB/D/STLSDB4SztoFXSr55dc+DbSd6s?=
 =?us-ascii?Q?okepjCGhYiiXuVHtwa4I+E5s9tdIQy+zhcqs1jzAGCu0nS4dj78sWn0pujsz?=
 =?us-ascii?Q?C7wr6oPMHFBQWjlIiwVQ5KGy1STN+raZNCSiTobnrq73U9BDFez7Zz2tjIsg?=
 =?us-ascii?Q?jca2zgTVfBQONbhiRUSAvOM3h6bUet3Wy739VJWju+fwUFvk9SRla/vGBPj2?=
 =?us-ascii?Q?fbXMPINBTNGg/MuE7rBvSfPJaG0YAjab6euda3dClitE7liUyK6lNo/8y2fm?=
 =?us-ascii?Q?fjBI++MhibJ9VCng/sCxy1oQr7hDqummMYU+o+1T?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4b25594-c0ec-4529-13d2-08db291fdfa1
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2023 08:48:27.7844 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Qv+pzWbpga5DJ+WUXH0yxIXw94RWNFfP2KkeqfQxUIBTi1advjawOKEQvx9bngo2P9sr4nBMqu23k7Bplp4I2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6350
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>,
 =?iso-8859-1?Q?Cl=E9ment_L=E9ger?= <clement.leger@bootlin.com>,
 Christian Marangi <ansuelsmth@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET SWITCH DRIVER"
 <UNGLinuxDriver@microchip.com>,
 "open list:RENESAS RZ/N1 A5PSW SWITCH DRIVER"
 <linux-renesas-soc@vger.kernel.org>, Vladimir Oltean <olteanv@gmail.com>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 1/6] net: bridge: add dynamic flag
 to switchdev notifier
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
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Sat, Mar 18, 2023 at 03:10:05PM +0100, Hans J. Schultz wrote:
> diff --git a/include/net/switchdev.h b/include/net/switchdev.h
> index ca0312b78294..aaf918d4ba67 100644
> --- a/include/net/switchdev.h
> +++ b/include/net/switchdev.h
> @@ -249,6 +249,7 @@ struct switchdev_notifier_fdb_info {
>  	u8 added_by_user:1,
>  	   is_local:1,
>  	   locked:1,
> +	   is_dyn:1,
>  	   offloaded:1;
>  };
>  
> diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
> index de18e9c1d7a7..9707d3fdb396 100644
> --- a/net/bridge/br_switchdev.c
> +++ b/net/bridge/br_switchdev.c
> @@ -134,6 +134,7 @@ static void br_switchdev_fdb_populate(struct net_bridge *br,
>  	item->added_by_user = test_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
>  	item->offloaded = test_bit(BR_FDB_OFFLOADED, &fdb->flags);
>  	item->is_local = test_bit(BR_FDB_LOCAL, &fdb->flags);
> +	item->is_dyn = !test_bit(BR_FDB_STATIC, &fdb->flags);

I was under the impression that the consensus was to rename this to
'is_static' so that it is consistent with other flags.

>  	item->locked = false;
>  	item->info.dev = (!p || item->is_local) ? br->dev : p->dev;
>  	item->info.ctx = ctx;
> -- 
> 2.34.1
> 
