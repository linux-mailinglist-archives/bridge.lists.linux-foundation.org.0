Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A6B70990B
	for <lists.bridge@lfdr.de>; Fri, 19 May 2023 16:11:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EAC4E40114;
	Fri, 19 May 2023 14:11:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EAC4E40114
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=TkSOcfBg
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PLacS9n3WAE7; Fri, 19 May 2023 14:11:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 4385C40469;
	Fri, 19 May 2023 14:11:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4385C40469
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F39B7C008C;
	Fri, 19 May 2023 14:11:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 066B2C002A
 for <bridge@lists.linux-foundation.org>; Fri, 19 May 2023 14:11:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CE55840382
 for <bridge@lists.linux-foundation.org>; Fri, 19 May 2023 14:11:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE55840382
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LJ70e_tpOG9K for <bridge@lists.linux-foundation.org>;
 Fri, 19 May 2023 14:11:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C21D940114
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2061b.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe59::61b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C21D940114
 for <bridge@lists.linux-foundation.org>; Fri, 19 May 2023 14:11:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VA4hD+H+idNTHwaVpx2TTORk9i/RJxBEHD0OYimtnfu13rYtl/0Nx7BIPy1xzHQ9eU/9w/AbmDQfnMUc57vGqy6T5EiqE498Qh/udU5YVEBTsw8Ojos7pBY5EDXMmFwCD+6na9arv2h71nmzIfUPttDrcCQA+6pPTF2+si/MrMQjKxK32PSi7uyCpa0eWA2CVNGwUoeECqRno4bLaXds/jRr6MbNy1niXiLgmqEhZHvAMYOE1lFptPr34fRvm2NnKHf1hziWSiFwz4ThwFhLgeu8shk/MPxhlcffwpTMf6gkhp733gQ7bkyPACvOWJZPGsE25e1u7v0XOwn/cChTvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vq8M55z8aydnSsAX2Cifi63WqCfi3ou09nDZiaWuytk=;
 b=lu8gHDIfBIyz/bzjjR552DY9NN7l/QhoyK2F8OygaOhsz/S7FfGZFTezgBbSK5nNDGwDFzmToBI9btaDcRw2+2/XGxj1EkOFNPcb/2RPNkpOeYa8ZzT/D80PVRHRLVZHwcIkGlPO64ILGY+H4j0R7lLZvwwZsIvs9XapO+RehORYuCLv+bW9Psh/Jh1vOTC/3mKGJFoX1PF2a4Y6cNSS2o0Tb3HI0KlZsl2/dfR2pJZh0W6AduVKj3ITb/ib0cauVXWVHnCO+VBZvWaWSGj3LDlXWwHz4BetwBQldP54V5xaWntsjIA2gjW3Dw7iK8GbVgJE9Sal7DHh+mpW/5b6kA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vq8M55z8aydnSsAX2Cifi63WqCfi3ou09nDZiaWuytk=;
 b=TkSOcfBgf8dSzwUnHTAV1RQZzopeTbr50rirH+fu26OLVrKSYEXqEvhVd/q8wYfJXVo7a3rmvDGhjydiUdL8msii8WZAbP7l5326XNK61c2LXN85iJaOo0wMm6JF3uCZVQhBEhKfPGiBdz2jkU92O3w276YmxkgNI+kAL2Q5MAMhQHN+FiFi99Nhe4ZKLXxQbmS6tMF8DKQv/cspU0ge3EjB26aKllqLX6B7xn1L22eOB11NNimTsMLZjuXiksMjNKFpTmG8USzPrHH8vok/jgOnPnzm6sg4tDD7GoOZ6YUHPFrfB90kP4wKcS1SOX4DwMS5JAi8vw5xB8qTMuoJ2g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by IA1PR12MB6529.namprd12.prod.outlook.com (2603:10b6:208:3a6::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.17; Fri, 19 May
 2023 14:11:05 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::66d8:40d2:14ed:7697]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::66d8:40d2:14ed:7697%3]) with mapi id 15.20.6387.032; Fri, 19 May 2023
 14:11:05 +0000
Date: Fri, 19 May 2023 17:10:58 +0300
To: Simon Horman <simon.horman@corigine.com>, nbd@nbd.name
Message-ID: <ZGeDcp2A7qrKZlLk@shredder>
References: <20230518113328.1952135-1-idosch@nvidia.com>
 <20230518113328.1952135-4-idosch@nvidia.com>
 <ZGdebBM8mxGOTovV@corigine.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZGdebBM8mxGOTovV@corigine.com>
X-ClientProxiedBy: VI1PR10CA0085.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:28::14) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|IA1PR12MB6529:EE_
X-MS-Office365-Filtering-Correlation-Id: 81d25046-3899-468b-ed00-08db5872e286
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cp5mHU9CP7ln5nIkVkfh7dr356xOkDZZnmabpW2AiyAPyCMCxKsXZUa/r2R4g7oGlWidVgnH2Sw5ml7IcF365l3K9RYy3+0bY93pHC/ELu+o01YWIg2DGQ5kRHZww2fIp6dU3A/xuOQP5QY27eZoFUovlQUlGRJwBEZ7Chbqv3VBJiSK42gfr65VYeimoM+AjYnvi86pC26h+Upbuvm520FhM/9EejflXvqqTKotSDoIXepoUXOHfWsnI0CKrVXTtB51E71LvrJeZfiotCnryLmH56p9x6wSMnsxf2D9wOhHgv8L/HctJpb1U/N6mBmS4XeR43R6qa4Z0YkH4Tblz4JPayGBLDfNxpYL0MEIxOs5VZ8rLbTdT3IjRI/xPnu62ULfPdmJma/62wY819rvuhxS8C1pQ2lPu250wzy3Q7l4fBH1A0xXPkVVaE3/6NqqOwYRYdCozNdY8CNGu0wbFu0ygHvIHAfWXfJwGrT+dkdcDJdFMOZSnOu67xBTJ+BDKLcYD/1U9EDFM36tQmRpsj3icn63VrmbbAGOGvfaltKw2foIBd1TJBobE8LhFq9piqzQG3fVdB0u5REfXBCEeGvbrPfqQ2/DfbxR/C5xKPg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(4636009)(39860400002)(376002)(396003)(366004)(136003)(346002)(451199021)(86362001)(83380400001)(41300700001)(38100700002)(5660300002)(7416002)(66556008)(33716001)(316002)(66946007)(8676002)(2906002)(4326008)(66476007)(966005)(186003)(9686003)(6512007)(26005)(8936002)(107886003)(478600001)(6666004)(6486002)(6506007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KB7d6mHL/t23Z/YP46VKTb6GfDIdmLRW/4vKUPTxA+IbgzYUZsTg3yekQYEH?=
 =?us-ascii?Q?09b7sGRBdRy+Df1StN9wdx1822e/48uz1jAMU/dGRGPGs1+UyF7BjrdVtILB?=
 =?us-ascii?Q?TrXKeoFPiT0BRlcAUU3tBFpeNdCue7c118x8n3xW82I6YENARsIu0xEGQW2p?=
 =?us-ascii?Q?Hy7+EG0l/pNm19kCJkrmP9N1at2Wnw2VdcmtRl6Ds73xjSxv1g/kfYjZCWjQ?=
 =?us-ascii?Q?AZ5kHJW1kz4TKjhyYbuRFGlAZhqFtM5W4WL+kRm9MdsRNtJI14C1RR5/9+sI?=
 =?us-ascii?Q?ZecZXQzDnsX2v5t7oQZVZXLUbV5bS0QljD2xL4iXlfdFYMX7z8AcIcaeaOjH?=
 =?us-ascii?Q?DqSJKcfR4leaT3M6vgoZOfHls+dz716N1ju+g5s46ocE68PJS0S3k20Y0ggE?=
 =?us-ascii?Q?F49kA/qC+/5kPYVP7NgqqGw0cXynkPHWyCYvXfbCoMGns9cC9km+1OWkhgBH?=
 =?us-ascii?Q?h9KeK3YzPkkj7q1WYVVR63v1YxwgxKOWfN/M16I2Z6BvGbdx7gfLhQv0K0Nu?=
 =?us-ascii?Q?3rCqBZxVT9lApgY0qnT4eD3heD4ZEgwH753ikf6bJtxTVs+9W8RMRW4nu8YJ?=
 =?us-ascii?Q?7JoX1eKJMWErL1YqUKfGhg7IQv6cWugUrBfQbzr0hcoZokWycyrouQr1gnv/?=
 =?us-ascii?Q?uyky5Gb2eIb/Wzv6Q+rivEs3FFFwlaNrW1mr83zzQ1yqEVXLwqeL1D/V8qDn?=
 =?us-ascii?Q?9/btnJBLgt4lT5/3JJAOWyR8MgRv0Q4Bmljl2oZeO+nkI61/72Oqg9ChSuTd?=
 =?us-ascii?Q?dmbjGTjxk5ZH12ppHWNRGKvd8S2X6W00LflEvbtMwoi1OJ2gjNbaUhf3892S?=
 =?us-ascii?Q?HPi1Rqryd7Pi+HkPmvPQfVsviEktxmB2rKfKrAG2f2x01hbPEnf8ToJKxioU?=
 =?us-ascii?Q?aZZVKW4XU7pTSFEt8S8ZptZXvjBcaOVTJCgaRE9EBmqoOiP2xTRuSduYAOuW?=
 =?us-ascii?Q?r8oxmVQwBKe66ee/Wf0E1Ov1qnOgm+bTSfrAPwbxbU0qbWNPRwagBjMIlt0N?=
 =?us-ascii?Q?mzQh6WU6vzk0RsGmnOHMT1r8fe13o6fsYBVsFxaTw8DNOhNUKqSX/5hSwYGT?=
 =?us-ascii?Q?qoluglleXcgFrEYvD5PpOhDPv5cJCFkGzT8pZjEklzjjcHwl85extFybMv6B?=
 =?us-ascii?Q?exdnOZivQuUgrDOXMB1CeYWUXL5Mi6gmIBBDcyrbfctfGnsnfOMYNhRM55BF?=
 =?us-ascii?Q?mM4aGqegkxtVJzQ1sGXAo3V2SaWbBjYn7XDH7+jrHBhsfbGYV3TYZ4wT/uA4?=
 =?us-ascii?Q?ejfyIpDnWA/7XCpGcxPUd4DrEFIEuKC3aJ3yYKtxnCaFGZ+rDRfBrvQZvIW8?=
 =?us-ascii?Q?YB517lIcZwJb7aaDddBeIVgDXVbzmIsaRphXHL8oOBUiUWjA+CFZ/K5dKQNG?=
 =?us-ascii?Q?wz0TWUZZaCMby8KUMAJmbrYXyKdGypxCOpCGtdx5ZN85K6hJHEpQmJZ0oI6H?=
 =?us-ascii?Q?gJV6O5OrH8eraw+suuuyulelSowKs5klco/iGuiPD3d0Y9vqCPo98M4C3wiT?=
 =?us-ascii?Q?SJ+QYDgb90+Uhp+LHYq46j/xlxJPSK8h8cPklw6yDypMWMQLP3E3SIWrCgiJ?=
 =?us-ascii?Q?8iuR8kxqBN/0N+05XZm2wu/xFaWYyO7Qo+PYox8J?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81d25046-3899-468b-ed00-08db5872e286
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2023 14:11:05.5814 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xKddp/+tMt5rtZopWlrzBlzljt0NfQhVLLbOX2X3OTJhBzhjw/I+3gyypT6UFlaiFm1XhuCD5mDO2OvnaydIlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6529
Cc: taras.chornyi@plvision.eu, petrm@nvidia.com, alexandre.belloni@bootlin.com,
 jiri@resnulli.us, taspelund@nvidia.com, leon@kernel.org,
 netdev@vger.kernel.org, razor@blackwall.org, bridge@lists.linux-foundation.org,
 claudiu.manoil@nxp.com, UNGLinuxDriver@microchip.com, vladimir.oltean@nxp.com,
 xiyou.wangcong@gmail.com, edumazet@google.com, jhs@mojatatu.com,
 roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com, saeedm@nvidia.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 3/5] flow_offload: Reject matching on
 layer 2 miss
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

On Fri, May 19, 2023 at 01:33:00PM +0200, Simon Horman wrote:
> On Thu, May 18, 2023 at 02:33:26PM +0300, Ido Schimmel wrote:
> > Adjust drivers that support the 'FLOW_DISSECTOR_KEY_META' key to reject
> > filters that try to match on the newly added layer 2 miss option. Add an
> > extack message to clearly communicate the failure reason to user space.
> 
> Hi Ido,
> 
> FLOW_DISSECTOR_KEY_META is also used in the following.
> Perhaps they don't need updating. But perhaps it is worth mentioning why.

Good point.

> 
>  * drivers/net/ethernet/mediatek/mtk_ppe_offload.c

This driver does not seem to do anything with this key. TBH, I'm not
sure what is the purpose of this hunk:

if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_META)) {
	struct flow_match_meta match;

	flow_rule_match_meta(rule, &match);
} else {
	return -EOPNOTSUPP;
}

Felix, can you comment?
Original patch:
https://lore.kernel.org/netdev/20230518113328.1952135-4-idosch@nvidia.com/

>  * drivers/net/ethernet/netronome/nfp/flower/conntrack.c

My understanding is that this code is for netfilter offload (not tc)
which does not use the new bit. Adding a check would therefore be dead
code. I don't mind adding a check or mentioning in the commit message
why I didn't add one. Let me know what you prefer.

Thanks
