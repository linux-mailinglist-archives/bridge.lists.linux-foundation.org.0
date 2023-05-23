Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9225370DB91
	for <lists.bridge@lfdr.de>; Tue, 23 May 2023 13:37:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 051A36120A;
	Tue, 23 May 2023 11:37:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 051A36120A
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=tNIWYqKg
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WzyzkpHSjFnS; Tue, 23 May 2023 11:37:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 5739661287;
	Tue, 23 May 2023 11:36:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5739661287
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9AABCC008F;
	Tue, 23 May 2023 11:36:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 23E50C0036
 for <bridge@lists.linux-foundation.org>; Tue, 23 May 2023 11:36:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E288E6120A
 for <bridge@lists.linux-foundation.org>; Tue, 23 May 2023 11:34:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E288E6120A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UF32caNow7QG for <bridge@lists.linux-foundation.org>;
 Tue, 23 May 2023 11:34:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1FDFA6111A
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2060a.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e89::60a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1FDFA6111A
 for <bridge@lists.linux-foundation.org>; Tue, 23 May 2023 11:34:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fj+kg4z0f9D5S8emOazr0fTecJdYPN9zCdICpKvibKGa+Xowpyvt1SbRTVNj6lcKkqlJyr1wGG7Cw6mPs0VCdtclHeuRKzH7WoBQPgTYs016BJ5gEr+0MisRfZv9XPwQ6O5/+0Ta2xaxDu/sZPLkyJGHZawcjr58OFUzzgaH5J5TfyPCL3rGTAxNcWwUnU4vQ0DpL0ihRKqR42L2aGhv58MPnT37C+YkOS1mPsZXyp7/alej+imuTxiN/Wx02cc9s9jA6OyGPhETef6A6VBhAdzBnRA7DKAIn70QnVIHna6NwMz0/MwCpudWAH2HMJx2Z8GWedlMHLovags6/axmUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0vd8KhtWL5F0EsdGFzYWR17p0npLpxD8vu6l4K0Uyi0=;
 b=VjRim88xzGHmI84BmnyC2RunURLL4Fldijs816/I34PV+nCoYyj4O0Dz9da0JHe2NFPMLVxT7zEDmxMFt+i98JclO/ZwjmvGDLmqgoboWFnVta1uNZueJwjziVHowPQ5DbBO2JpWplUBEwTl1czxKFSwrKX6cAWOVOeD2FXNe2Fc9VMidRi5+jwF+kLdjIggw4O4DUdaQRuuSxQIRky7cpfWVNNpmyIGuay8QdBJa7pB965dNtc3SkC40XJm4Z/6vXw8Ay2ejMTk9+zjK+4ZB5bSO43XA4vJi+yM+Kb70CUvRXpWcdGI3XAGroPk9uh3OptDOkdwTzqC32Rq1ubjZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0vd8KhtWL5F0EsdGFzYWR17p0npLpxD8vu6l4K0Uyi0=;
 b=tNIWYqKg+YxYkA+mGeEgN23xfQEUGYK4FHY3IgOA4A8xYoSEI8VxWEPegXoda1nDNxw1j/Uvt2pPnkaMQaPKruDvyMtqR8Hk4i+AD4KDHhBZHTiFDGBZWxFnNvu+0wKGRTDMc28KP7QqrNH0bXgSeBIZ5yvZIqvZ4HMIw+KJCLvzeTmM+1LXZ1inj/JLM+3PY29Fd77ZEvmItu+C3CuSbtDeein/ZBjnAGh0hTcfGD9ViowZAO9NV8uMZNEdp+PyJWoLZbizVtQGRKPb8KLatcxsiEwEdzTMA3JUfvNTphMp/tOVNzVni2sn3Yq8wCVxnJ99m//ebrFfI2KgedKGPA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by CH3PR12MB9097.namprd12.prod.outlook.com (2603:10b6:610:1a6::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Tue, 23 May
 2023 11:34:47 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::66d8:40d2:14ed:7697]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::66d8:40d2:14ed:7697%3]) with mapi id 15.20.6411.028; Tue, 23 May 2023
 11:34:46 +0000
Date: Tue, 23 May 2023 14:34:38 +0300
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <ZGykzh1LgjV+liKh@shredder>
References: <20230518113328.1952135-1-idosch@nvidia.com>
 <20230518113328.1952135-2-idosch@nvidia.com>
 <1ed139d5-6cb9-90c7-323c-22cf916e96a0@blackwall.org>
 <ZGd+9CUBM+eWG5FR@shredder> <20230519145218.659b0104@kernel.org>
 <ZGx0/hwPmFFN2ivS@shredder>
 <de69794bc23a7a019136134cee1e819937f0777a.camel@redhat.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <de69794bc23a7a019136134cee1e819937f0777a.camel@redhat.com>
X-ClientProxiedBy: VI1PR0102CA0087.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:15::28) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|CH3PR12MB9097:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c8aa2e5-78a8-45b3-bf61-08db5b81b5de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ef69ZLAsRS2xxeVGm8J+3Y7dcg+Ptww8ZbbjEfHLQ72QAzvC5ovw7nYIPfpkZVhAGq+MTRUB7KIgCASCUKq183KWWLY8Utd+wfgIvPPoZG4Ggd9hNxqvwc34i67Ume9Jm+2aJufIbqn21PJ/C1GWk6ECMW/PqC2l+L526OpOKorGTwp5zryVxvcOuEM1W4FbjwIRoIYtqKg6jMxAlYCFeTSfRCxqgw51tIZw7r1hrS0s1bGsPwxbEJf3kXw3nGnGU4Pvl8vf07zfeWCZN6BgdqaallSTaBLEby88bY3rAOMRr+eStCOTGKnf29F8Lh9koooFfWMkHgwydBw2DZjwNta4uFVjJF1+CKFcOwF5BP9y+CMkSmPjIcIm7jMcJolZUfqdwW/t4/F1ac4EfSeon4rZGkHv96WHpcN8nWOPEdTFmiFqBEk7aMjhV/dPfbpwsfFMpewyPNnFOo6BIWl1mFNC7tgjBHQEyA2RhZ5iFxk7CxVDtOlN8HnN7AHqK/uROZE3gl7KIiYqyahTsyCaYTSPMD+eAQfhmPTrQTUt6t1mWABxnyTQtOnLtVFeCIvn/TSc7QojFEmeHDoxgIHQxwTpxPmrAZevtcIZy8FS1KI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(4636009)(376002)(396003)(346002)(366004)(39860400002)(136003)(451199021)(6916009)(4326008)(66946007)(66556008)(66476007)(478600001)(33716001)(86362001)(6666004)(41300700001)(6486002)(316002)(5660300002)(8936002)(8676002)(107886003)(38100700002)(6512007)(6506007)(26005)(9686003)(186003)(7416002)(2906002)(67856001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kcR+DrEudEn+g/qJT5iC7jNPVrTZZy2EJY5IPu1ZQt03LDWhsZW0Zt3vodir?=
 =?us-ascii?Q?znWg/pypgLSn07R85klJkr6YeSSRVgnnxiVKisqiM4zo3ntlo3OHVYv8x7nw?=
 =?us-ascii?Q?tNq8lSlSXE+ZcNHbGA17R2TqCe+SooZKheKvrBTejJ+hqzFvYX26dZ5KFDhD?=
 =?us-ascii?Q?cssYXuwADB3FpwAzDvxoyEslAnDjXd9oAyyH/cAJhF2IMv+KCN6DuE8L+6S8?=
 =?us-ascii?Q?lX/67P52eCE6uTse8D59ikQvcsNyyaCfVNC33P75JlO+qzeE+mm5DPYuxzJk?=
 =?us-ascii?Q?/pR1e3meQNww19SczGKCSS281ZKttu+Mhh0vBhXiaU2MMU7LI6TQok8vboIx?=
 =?us-ascii?Q?LP/iicvZIvE+z93RYv4h+dRTE1qBP2mcNQbqJUvFcg4aXRsGuvDdiWSCMzXs?=
 =?us-ascii?Q?vT9WNAKlWvZyjvSlu9k9+b/TZqMk7npt1vnlfPFof0pzcJf8Y9mu9UHaiXZV?=
 =?us-ascii?Q?N03ZPhI/fpZ7xLs3HZly6PBOd3JluleJTl5E2zrqaenZW97RiiBEqxwdclk3?=
 =?us-ascii?Q?TjeFGhF8WDzA8xFe3t1lOc4siUPWKUeg48xvBQjcsqUnfIyF4Qpc+dTAkjuv?=
 =?us-ascii?Q?F71//ApZsuv/DUU7hEZetUMWot7Xevoi0HmBs86mI3JNFzzOUlE9KNnYa1eY?=
 =?us-ascii?Q?xYYnmHMFrt+xT+oyhGNFequWXJNB7veVbESxoEcltNThibXgm25BRcPLpwgr?=
 =?us-ascii?Q?QTdRCUh8Kq2ug8B9zucZZhxF59iiBzMZ2DfYWDG8QpQt0Y+Zt4QeEXS48g33?=
 =?us-ascii?Q?+DdvkoJUBGPTroDVJ+/EdQSB7pomuPJ/7NVo+8iMKi+hCJfApMxPGZJibXkG?=
 =?us-ascii?Q?8cxiBTpyxOUjuHw/u52/pWXlULyP6Z5HQxd9mXB8XwStWSs9ybvAztUDpVCZ?=
 =?us-ascii?Q?cbCko80GkcyMM22S9u1UikQwhnYC+Q+yPyqrfDORdG/+bsVhVrL3/gHEaoH6?=
 =?us-ascii?Q?cnsbfKJLGytYcIWMSL9POvdvarL6W59wtio6wsdRAlAOaGhyQpS3PrKDSy08?=
 =?us-ascii?Q?8E1Dr+OaUcWutx2XH7uE4zTEVizYB9qwHSjNgva3hcW8vf6shzaZSwBLsJv6?=
 =?us-ascii?Q?ridBgmkx8ECLBnJq/D4B1dRAZhvLNDQX1IYd+WkJCAtzwZPlGXxeSOlCEmLO?=
 =?us-ascii?Q?HWDaQ9+lwfsJoXHvemLQWvjVF4awCGVCXHmuSJ56czejcCpzk1jTJgQVfMah?=
 =?us-ascii?Q?zSpUE5EV88l43ZJ/+UP/xL8LCoWsjsAffDjT1pfK/SUrSOInIOtigZ8agHnL?=
 =?us-ascii?Q?X5d4y/CmzECRW/q2AB83g6FUNYh1QHLR4D9EGFY7m6BFKlA3JcDeCx7ED/SK?=
 =?us-ascii?Q?9Ky33X+g6UPoZD3taw8jp761/8e0dz9XuqUeiQh0UNPnkGmPZ6ELvjRhbdW5?=
 =?us-ascii?Q?I8EO3fVlzygh5dh2lFvJDjj0O1n9kVVkiRIAU+FMc3dCOyhH8+8JkPXE4wVg?=
 =?us-ascii?Q?Ch65Cvrwt0dDBPl5ktvoH5SgVqIBkMYispVBb2M2OJ81vwqbfZa8Fv2ZH+du?=
 =?us-ascii?Q?1DGmJAv+lWvtUp491CCFtjjdA6AbbgEel64tITtnhvoDVyc5rRm2YU8mSMqX?=
 =?us-ascii?Q?O9GfhqAKDZywEDlA6S9nPVzPTLN3a8OPhzJn1lCl?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c8aa2e5-78a8-45b3-bf61-08db5b81b5de
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2023 11:34:46.4951 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MzI3NMsht12u3hFb/N+jAaXY+PYBHN+7M8sJx4QyCuudEfd4KNZ6qAUhX5hhN6hx8G0hqbDsmbwJPIKn8p8HAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB9097
Cc: taras.chornyi@plvision.eu, petrm@nvidia.com, alexandre.belloni@bootlin.com,
 jiri@resnulli.us, taspelund@nvidia.com, leon@kernel.org,
 netdev@vger.kernel.org, razor@blackwall.org, bridge@lists.linux-foundation.org,
 claudiu.manoil@nxp.com, UNGLinuxDriver@microchip.com, vladimir.oltean@nxp.com,
 xiyou.wangcong@gmail.com, edumazet@google.com, jhs@mojatatu.com,
 roopa@nvidia.com, Jakub Kicinski <kuba@kernel.org>, saeedm@nvidia.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/5] skbuff: bridge: Add layer 2 miss
	indication
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

On Tue, May 23, 2023 at 11:04:27AM +0200, Paolo Abeni wrote:
> I think you would only need to set/add the extension when l2_miss is
> true, right? (with no extension l2 hit is assumed). That will avoid
> unneeded overhead for br_dev_xmit().

If an extension is already present (possibly with 'l2_miss' being 'true'
because the packet was flooded by a different bridge earlier in the
pipeline), then we need to clear it when the packet enters the bridge.
IMO, this is quite unlikely. However, if the extension is missing, then
you are correct and there is no point in allocating one.

IOW, I can squash the following diff to the first patch:

diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index fb6525553a8a..32115d76a6de 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -764,10 +764,16 @@ static inline void br_tc_skb_miss_set(struct sk_buff *skb, bool miss)
                return;
 
        ext = skb_ext_find(skb, TC_SKB_EXT);
-       if (!ext)
-               ext = tc_skb_ext_alloc(skb);
-       if (ext)
+       if (ext) {
                ext->l2_miss = miss;
+               return;
+       }
+       if (!miss)
+               return;
+       ext = tc_skb_ext_alloc(skb);
+       if (!ext)
+               return;
+       ext->l2_miss = miss;
 }
 #else
 static inline void br_tc_skb_miss_set(struct sk_buff *skb, bool miss)

Thanks
