Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7885A37DB
	for <lists.bridge@lfdr.de>; Sat, 27 Aug 2022 15:18:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 90FE54051D;
	Sat, 27 Aug 2022 13:18:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 90FE54051D
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=peS2iv+1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J33CcWAdmIWn; Sat, 27 Aug 2022 13:17:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id E99A140526;
	Sat, 27 Aug 2022 13:17:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E99A140526
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A2593C007B;
	Sat, 27 Aug 2022 13:17:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 71FA2C002D
 for <bridge@lists.linux-foundation.org>; Sat, 27 Aug 2022 13:17:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 279A9409F1
 for <bridge@lists.linux-foundation.org>; Sat, 27 Aug 2022 13:17:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 279A9409F1
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=peS2iv+1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lYX1L3zbjBtB for <bridge@lists.linux-foundation.org>;
 Sat, 27 Aug 2022 13:17:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 318BE409BA
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1anam02on2041.outbound.protection.outlook.com [40.107.96.41])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 318BE409BA
 for <bridge@lists.linux-foundation.org>; Sat, 27 Aug 2022 13:17:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gZnhFT2OBhN0DvsMdiMIHS5vMnZHT81EgZwc+J6Grw2D+gv9wIbKGeEKw00+T70Jm10RySggPDCqJSaRxvgofETHRJBVA6jS1u0ZNBZ33I0FgVUPDqH27J2n7Vy6QKechgQ8Nl6h/y8Y4UkJIt33TiowAlNUapNQmwWtHVOpL8UF1DxzXP16V7fWC/qdckXwqCXlvUfoG3LI3Rz69FGTEC5EW512GCi/S+J8SCIEC7GBXKcprGdbULwI8QwSNV5bbTWzTBh3I82ojVd1Nk0+1dFRiIDCjva7SWX5FTJwWrtSZBaFTyeOuDVTZ4Fd0IgzZrWNrS7dMHXlNk1RPmphXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KazkTcqC6Iir9CatzA8O+EYBUQbKpMqItjABp7RuyFc=;
 b=WXijMx+iWrBbnPnO/v8j1gNaejEFpq0c7neL+6AkiBNsI9gGyzOhZ56//7bqNhJrcf4pfzLZeDYJ49IllEQfvhi+hFg/GYL1HDykFUjoMcpUt1apftQKDt7EBSxEr5bND8xbW/kKKdMmhQBdYdVu0xA/Jh5901PlN1+h/5z1b6umr2GIEK13wtfpG1ynOBANWQVZyuuDntCb7FUArPDQJCtN4P7W6fw/jb9Zt8TlgJmeYcABCZaCy5QklPzYH+7fllb2nbL8NTWFviDJ8iCoHjkAYijK5/qtQVebloABftH+FNqihGIjsco+m0BDskTlOKy9RkFM36JkbBF/dY5bDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KazkTcqC6Iir9CatzA8O+EYBUQbKpMqItjABp7RuyFc=;
 b=peS2iv+1KqWGb/f5IDcEc9KJ+apSwVAcYQM1tFaCZ7gJxP9YsDqR3MzvOHx+qxzWqkicULDVkU3f+UXEoI4eMV2IRIky3Htw8un7X2rFQ6/xMy4dVyER4mX5WWeVeckhkLDLp8s7tGF6JepEv9HCM2QGPLM/cP0aM7S/RrnAdZLtqUoGwiFULz6HG4P3oPNcLohKyPaty2gLzNcD9+uo+7NDhLYyZW/pYd4nUinuUKcuaOJUYc+skKuBNMR8i16EQXntSWjXGuY3r6MLVjQ5BIEOtnLfHYi5k1EtTrKEO3PVnD42zoh19elTzYc62evvWm7Ippf7UdrM4cQNqYF/iQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from PH7SPRMB0001.namprd12.prod.outlook.com (2603:10b6:510:13c::20)
 by MN2PR12MB4655.namprd12.prod.outlook.com (2603:10b6:208:1b9::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.15; Sat, 27 Aug
 2022 13:17:50 +0000
Received: from PH7SPRMB0001.namprd12.prod.outlook.com
 ([fe80::3ca6:ba11:2893:980e]) by PH7SPRMB0001.namprd12.prod.outlook.com
 ([fe80::3ca6:ba11:2893:980e%6]) with mapi id 15.20.5504.025; Sat, 27 Aug 2022
 13:17:49 +0000
Date: Sat, 27 Aug 2022 16:17:43 +0300
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <YwoZdzVCkMV8vGtl@shredder>
References: <20220826114538.705433-1-netdev@kapio-technology.com>
 <20220826114538.705433-2-netdev@kapio-technology.com>
 <e9eb5b72-073a-f182-13b7-37fc53611d5f@blackwall.org>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e9eb5b72-073a-f182-13b7-37fc53611d5f@blackwall.org>
X-ClientProxiedBy: VI1PR0501CA0023.eurprd05.prod.outlook.com
 (2603:10a6:800:92::33) To PH7SPRMB0001.namprd12.prod.outlook.com
 (2603:10b6:510:13c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ef93749c-9dc9-407a-138d-08da882e89b6
X-MS-TrafficTypeDiagnostic: MN2PR12MB4655:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DnJ/UMBslnQjKRhhwiqCN0bUVFVjJwdX9wGuJFHmEi50rDJyhS1SlQgo2wbKjbrnM7JRbw3t5MEJkbbbvIBk9MC2HL9xeR9V05ZyLSjHyvg7zvlDcxps2sHBzEM9Uqt6SVQBz3Z9lE78IuD484w7Rm3ncXY/l1Sw2Zq9r+xGp35z7CsiZuNM44bGIpFT7JX+rNxiwipshhLufxqZu4HW/6PgVFTeU9R2UrdgL6VVlJlFUz/p3USghaOBL2m/X3fdMo7p6sS4/5ujZLLEspmI3VDs+Op+tUKLjd/ThvJ2N17y/YOUS59WURKiiJY8hVwGhPHldDqnP6bUlVvNMQ+lJmj3n8CJgwIOjK9vA8dlakikVcdB18hS/8tA8tpRlR0szYzaOKa+L5u3qCGJqiWnkc0eAxUvyLNMhcbmcrx4thlMBnuDfD33RyvXseCmu3XxoaS7WROjkir9zK0Knq20q9Bbbgs0Nj4MI9WhoIotMg7OxqVRrKZVyywZXNnLJkcEuYMqR2ipHYG/3VX/jNjdVx8ns01JyRio5iOI/i873PwS+E4uJGqQu84Bj6YviptqvDqQGDCqNrKP0/mvjF+MiwvM5FCgUwF9M5SuixHi+BTlnRtrT2VZlp1ZvwhvYnxdrrsGUlRi8gWh79HCy4joGNdsr6s65qFBGIlWa3+t5TEtV/eNYyWYlNICYQSwztooFmTHvZQA64Is3w9BtJcckA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0001.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(4636009)(366004)(39860400002)(346002)(396003)(136003)(376002)(83380400001)(38100700002)(6916009)(316002)(5660300002)(54906003)(7406005)(7416002)(8936002)(66556008)(66476007)(66946007)(8676002)(4326008)(2906002)(186003)(478600001)(41300700001)(6486002)(6666004)(6506007)(9686003)(6512007)(53546011)(26005)(33716001)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Zmy6hShygrnek0PscYOT0X+H0ITMRUtRk4pXL92QHaUQMxHu3L80U7/vZ5BM?=
 =?us-ascii?Q?igqiZK50NvsVkxUKCc5+F3KdFOQgLm5E1CE2dusii/Gii7EXOa1uBtqcc+fL?=
 =?us-ascii?Q?yIuhu+2ta5AqGk5UZLdbG9O/W7dbAZ06zisXajf9ZssxosHFx3GUw/zu2REI?=
 =?us-ascii?Q?Scb3sBdBLawGxxK/pVj6EbFUcW3bYIQ6eQS4U5Ki7kVCFu3VdWv4W9AckZ3K?=
 =?us-ascii?Q?vzrB4b88FW95hJVsoSfRrVUxqqQuheW38FuHLeDYefWVYs1y1g5BmuxBVf2m?=
 =?us-ascii?Q?6s9UX3597Z2ooExxVB2jL9aiY7hbnr4jsrqnjpOrxMqbLzppFe+c8nOdrV6I?=
 =?us-ascii?Q?o9ZF8cZ4QDYbXEKdzwn4LCcgcvOlGiwnLb9ROVxYtqg4Uh+/+UVAEdFZTZ8p?=
 =?us-ascii?Q?kD9pseAsx/EbI+XUf6KY/9aQ5gRunri4RTFXAXreSUFlCVPGhQMR1R70chOT?=
 =?us-ascii?Q?4A1v5dk7Wu1OFnQJFpVaw9lrxFv5HPi1QD6FxEKwdWxosZu9WKjaNhPffmQ3?=
 =?us-ascii?Q?VJZ0AGSzdcal3nVfKCe7XHX9a03lfFkLmQ9ckKgbT1scT18cnJOlSCJPV0Ei?=
 =?us-ascii?Q?IfjCO9njq0eVPRqbUyvXUxRH+AxVdabWD3kEh00XGnQ7TRWGwPk8t5tyQhet?=
 =?us-ascii?Q?tCnuWEwuDOSQayOeuim7wrAgnyESx7LEDZWyZ2aoOmTGlwbznYRG8yVajd7j?=
 =?us-ascii?Q?VagDwXOOTSQjMbGcLvjt+qED6466OofigQFsEnCJG2U7eFkSOq5y2ufmJ/Yn?=
 =?us-ascii?Q?rtG32UXRPMnkHv77VlAkKDJ1nGp47qO/N7gIwyPNESC8mCCzlqAa94cn5NpV?=
 =?us-ascii?Q?EmQOSLfq3WJJp8EpHD1Mnq9SeQeiYCR68uXc+8HqDoe6tXO1YsiaxmFGf7om?=
 =?us-ascii?Q?iapc6r5l1RXVFKLzxVNWNiwIBZsYonHGKYbDln76jmT8Hc4qIPfxGxAE5ocC?=
 =?us-ascii?Q?mIkBHr4VdjFUDXSEbqTS5iGvNjzjKqV+FiKvYxYbmytecMGt5F/UZjEZDtt8?=
 =?us-ascii?Q?Rw/bQZPLdvD1wjbsTIvOQZ4J6Kju/6bC4Dp54UjZbkA7lqzU+Mi0CaF+fHKq?=
 =?us-ascii?Q?8mk4T2q/ISpYDdBlcBLQWCh1a/peb38ugCa4exR66eJDkWP08YwtyKsacdcF?=
 =?us-ascii?Q?NT2nkBo7Q7jlIQT5KtKrubyaIS1aov6v6Y7uLzLI+5gR5eDB+eonNzpT8BDE?=
 =?us-ascii?Q?5wNIwkwBdVJILQa1nwfYI9bUZEsqNF54X53D7vUTqtuxhcIUc6G1ZtVqc37Z?=
 =?us-ascii?Q?nIiTca5OYo3z2iZIw/y0VmYhJAL/zdYakvJKBiYRypjFX59QVjZJu3MPFDGp?=
 =?us-ascii?Q?MA0e/tspfzvoSh7VqDU3Ia7pY/+ynAcL+M5wz652ivxrqBMu+RxI8lUcSTpH?=
 =?us-ascii?Q?zixlXTGMIhCfeauXxWeAU+gsFll7vDNog3WwqdaHGTXNv+3/YmS300B7UVuv?=
 =?us-ascii?Q?m0JmYGFumy18bDdSjbXK+ZirnV/0QEtwsaPaM2s7bVAH4m0VfLGBjogwdXDB?=
 =?us-ascii?Q?QtW4oJDACrY/ocTXCNo5pdm1ugAjnsoUNRsAAaOc5aTJE6DG4hWbJm3h+p/y?=
 =?us-ascii?Q?ZUciA4MjdJ/++ToutDhIJtBhyI4JYdZivmRxLfld?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef93749c-9dc9-407a-138d-08da882e89b6
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0001.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2022 13:17:49.0516 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KjUaGkZn0hq0pI3+2aOITt8QG26jOnXsJKRKGPqqnycryFUEMoZB1RfHvwbA17CD2wMr1UGQ574qpwaUb6yNKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4655
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Hans Schultz <netdev@kapio-technology.com>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, bridge@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Christian Marangi <ansuelsmth@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Vladimir Oltean <olteanv@gmail.com>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v5 net-next 1/6] net: bridge: add locked entry
 fdb flag to extend locked port feature
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

On Sat, Aug 27, 2022 at 02:30:25PM +0300, Nikolay Aleksandrov wrote:
> On 26/08/2022 14:45, Hans Schultz wrote:
> Please add the blackhole flag in a separate patch.

+1

[...]

> > @@ -185,6 +196,9 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
> >  		if (test_bit(BR_FDB_LOCAL, &dst->flags))
> >  			return br_pass_frame_up(skb);
> >  
> > +		if (test_bit(BR_FDB_BLACKHOLE, &dst->flags))
> > +			goto drop;
> > +
> Not happy about adding a new test in arguably the most used fast-path, but I don't see
> a better way to do blackhole right now. Could you please make it an unlikely() ?
> 
> I guess the blackhole flag will be allowed for user-space to set at some point, why
> not do it from the start?
> 
> Actually adding a BR_FDB_LOCAL and BR_FDB_BLACKHOLE would be a conflict above -
> the packet will be received. So you should move the blackhole check above the
> BR_FDB_LOCAL one if user-space is allowed to set it to any entry.

Agree about unlikely() and making it writeable from user space from the
start. This flag is different from the "locked" flag that should only be
ever set by the kernel.

Regarding BR_FDB_LOCAL, I think BR_FDB_BLACKHOLE should only be allowed
with BR_FDB_LOCAL as these entries are similar in the following ways:

1. It doesn't make sense to associate a blackhole entry with a specific
port. The packet will never be forwarded to this port, but dropped by
the bridge. This means user space will add them on the bridge itself:

# bridge fdb add 00:11:22:33:44:55 dev br0 self local blackhole

2. If you agree that these entries should not be associated with a
specific port, then it also does not make sense to subject them to
ageing and roaming, just like existing local/permanent entries.

The above allows us to push the new check under the BR_FDB_LOCAL check:

diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index 68b3e850bcb9..4357445529a5 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -182,8 +182,11 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
        if (dst) {
                unsigned long now = jiffies;
 
-               if (test_bit(BR_FDB_LOCAL, &dst->flags))
+               if (test_bit(BR_FDB_LOCAL, &dst->flags)) {
+                       if (unlikely(test_bit(BR_FDB_BLACKHOLE, &dst->flags)))
+                               goto drop;
                        return br_pass_frame_up(skb);
+               }
 
                if (now != dst->used)
                        dst->used = now;
