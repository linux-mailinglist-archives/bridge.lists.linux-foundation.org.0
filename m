Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 887BC5B161F
	for <lists.bridge@lfdr.de>; Thu,  8 Sep 2022 09:59:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE1F94192C;
	Thu,  8 Sep 2022 07:59:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE1F94192C
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=rq9YY7xd
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qJZuziUlp4rN; Thu,  8 Sep 2022 07:59:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id EA41541B50;
	Thu,  8 Sep 2022 07:59:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA41541B50
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 933ECC0078;
	Thu,  8 Sep 2022 07:59:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 98465C002D
 for <bridge@lists.linux-foundation.org>; Thu,  8 Sep 2022 07:59:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 54EF6411AB
 for <bridge@lists.linux-foundation.org>; Thu,  8 Sep 2022 07:59:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 54EF6411AB
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=rq9YY7xd
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sLL3ZH6pLA1H for <bridge@lists.linux-foundation.org>;
 Thu,  8 Sep 2022 07:59:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BCD3B411A6
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2066.outbound.protection.outlook.com [40.107.244.66])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BCD3B411A6
 for <bridge@lists.linux-foundation.org>; Thu,  8 Sep 2022 07:59:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RNrsQHz7ru4iM1mT1CUHGFgpZOdhEKt2aq5XVN8BqucyCId+mz6THXfM+dCEnDqDOq8RBAgCTReDMsCtT/iuyElfIPsg4a+x/bzIfM/BK4HvKwl7EJnd32siyJrUWUreQ3mKC4wuyLuNkPclZ3xBsYOGRe2QF5Wmln53eEtef4vI0ATpTtu0FZYbUOlNpx58DMlCS+BJMfvHWz/O9lQiJjZ2wauEzOxPYwICGsaOKwAXAEhEcLDKAAeafy+RpEZEAtJq7Rq/ZSOftzO2vhLO23kw269XFPwRAGoJZ3/qFkP6MyEIngXqlH20YSG40Q8bIev8Ix2m2rJ67J1Vx0saJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HaA/vhJtZKpr0s2EktWOS6qma2h9xSmkonCZoNVig+Y=;
 b=WqI4bKeWg13i/tusJ0jBoUgYH0pdCg5Ja64CdUC0JD2aBu0yYO3y4khro1lebta3VDevji4DCtXzwR0+ISCiKtBQv8tV5aMjo0vmTaJkehnqck/thw6jjnl2TXIjt2MBSvsYTOg5IiQ1HhvOB4WNc7Rqc7AJfeB1ojHHn5y+nOOZaWnRnbE90gyh/kTqopAS75lYNjAxvI5BodPOfELtjllaPvomX0ttb8v9rwtGBJsGcr8wLmJbx3ZeZZy5u2VG49mxBUnuvwS+n90+kTqAvtjHANWRc4v+7lTNxO5I8jFly+SK7Z6EkouyXzFe3kdRR+8LGSrR0lpBTEVtZp9i1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HaA/vhJtZKpr0s2EktWOS6qma2h9xSmkonCZoNVig+Y=;
 b=rq9YY7xdCtPuLb7jSOdeoODdqz9rwMH3Wwi/V0WBpEyCRF3jguvXRsQyKwqOSwB+5dI/WJ5h46R314ejAPAN5/Kd/xMZfK2rqwSTm+zCGNb5aXLn7CYdLWEcnxwc2aFxxM3mvhfhXkYBSekynGEaNPW8gcR3rkh37m26cygIQ/Q4Ipq2S8Cm0n1832iDr7JiqtMst5FpMB+oJX7WrGV4gjCf4pNn8PiJKpcapfnuOWJHG+2v+W8Rc9wPIjxFKXZU/AoepTRO+dpVgforfx4uSQxhHsYS48rLvABMbOcMt3szwLQCriyL+Pjuveg3yj9pOhLUPyad47hTRRmUNfXDmA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by SN7PR12MB7022.namprd12.prod.outlook.com (2603:10b6:806:261::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.15; Thu, 8 Sep
 2022 07:59:17 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4d61:5da2:6bbb:790]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4d61:5da2:6bbb:790%6]) with mapi id 15.20.5612.016; Thu, 8 Sep 2022
 07:59:16 +0000
Date: Thu, 8 Sep 2022 10:59:08 +0300
To: netdev@kapio-technology.com
Message-ID: <Yxmgs7Du62V1zyjK@shredder>
References: <YwxtVhlPjq+M9QMY@shredder>
 <2967ccc234bb672f5440a4b175b73768@kapio-technology.com>
 <Ywyj1VF1wlYqlHb6@shredder>
 <9e1a9eb218bbaa0d36cb98ff5d4b97d7@kapio-technology.com>
 <YwzPJ2oCYJQHOsXD@shredder>
 <69db7606896c77924c11a6c175c4b1a6@kapio-technology.com>
 <YwzjPcQjfLPk3q/k@shredder>
 <f1a17512266ac8b61444e7f0e568aca7@kapio-technology.com>
 <YxNo/0+/Sbg9svid@shredder>
 <5cee059b65f6f7671e099150f9da79c1@kapio-technology.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5cee059b65f6f7671e099150f9da79c1@kapio-technology.com>
X-ClientProxiedBy: VI1PR07CA0204.eurprd07.prod.outlook.com
 (2603:10a6:802:3f::28) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|SN7PR12MB7022:EE_
X-MS-Office365-Filtering-Correlation-Id: 30bc5113-d31c-4e72-e8fe-08da917005c4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6w6/0Ej21WZcggbHZMOSYK0uekNrIo3t9ZFOo6djdJJoL3qK0COwAay3xjI1o8/r24adNlw6fc0w77CuCaeGqOYx90H3GU6uvr7V2GLWA8jZVAGrKJN8PrA1X8AXoVBgKu3+iYyiTaaC64TjQa/Nfcw67EC/3PP3tnqtvtNdj/HCIfF5kuG1u2yq0TLGDenjBebICQW/e1c5jukxIy5TfzmdDVPH+vwPwoobvNNMNG+g0lkAbhBv7BVeGS/u4KwVC4hcUSAVLGmmzO3Jb+SwsJHebhDZL+ci/qZJmwEXz/0jWuObPc6OiKbaO41vU+DzGmPut9cq1kEQxK6Px6RtO+u+xq9F8B0OGjKOZLEuUWjwC9nPNtX5i5oyPvDe+7yL7UN5saLbe/fsyI7gGfTP/PT2DrjKn7QOL5iLt7Ul1wRUDy5UTpgiGLEy9G5fynDYjvnDchC5k9YvQ6gpq/NRiOKBEB9JF3/JbvBhkPMtP2/oraNh9LnQrrMuc4hSwVw6+s3ZpG6Y5p9db7qRNgIrV//76g8Wfj3QiXeiRlHGps/hXIsYXh0CDHlQ5BrU2Sa/MNyOLlpcRuS5LBMc7goWLaAtSM/Ab6Ih8vnLwk40BBRPn/Jk4sA56JfdzsF35TbeH8XZNx6gERopzliELe5O2UbzqZjw0J86LoVLL6xIr/x74Tqd9Ev477tgqkpJ5q07oKvmYyFtK+VqBTRz7coipQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(4636009)(396003)(376002)(366004)(136003)(346002)(39860400002)(316002)(86362001)(54906003)(6916009)(38100700002)(7416002)(66476007)(7406005)(8676002)(5660300002)(66556008)(8936002)(33716001)(66946007)(2906002)(4326008)(186003)(41300700001)(9686003)(478600001)(4744005)(6666004)(6512007)(6486002)(6506007)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ewY4n8Oh9PQb21Uj6j6d1e2JER1G+sCI22Le1PgtbYHzrq2XNhsrm2qGyAyX?=
 =?us-ascii?Q?vOE36t6LqkwUWRBf+Io47Wk6ZcXlCsdX7HDEt155tJgQ5LUIDc0Dl1uHe3uy?=
 =?us-ascii?Q?sSspl8D6fVi3k3d89etQlNlT1KG87c3AIEnBcXrkhgj+8N5awira9DaEoezG?=
 =?us-ascii?Q?9yMZk677g2TKkhlncOO0gLlR5xNTviqKuBeIbkXaxUzJkJ8YzEhwAgg5PIeB?=
 =?us-ascii?Q?N2gQmIaJQpN+Byeg7sFXCVadOZQ9WVgrwaLSIKJ3pdD+7CvinOC8OlBwa7ah?=
 =?us-ascii?Q?7j3C4sItYpKEdB18B0JAlDH0XqKZBsDsAzvE5mo+xrjKNUcIAPVfc9pYk8hN?=
 =?us-ascii?Q?f7UCChKSwuicwgDu90GNRhslhNCHjasRjYFzHtnrydTnkNNgy5UlB5jhK3hp?=
 =?us-ascii?Q?5SfZEbuGlS5iC/uHmOOtlelloDBZ8YXrPZukqmB84rtOOikCHQcyJ8fQYDrA?=
 =?us-ascii?Q?oI9AlyzonZ7ozYFuObwN20bQnOe2sTqvDbfFJxXvSulAj4NVw+rc8N/yL7gx?=
 =?us-ascii?Q?iNMe5p4YfNYE31D6+YnjivkeOe9GtxWSsKe021Tm8SmUZ/CvBRxHocjuCaRr?=
 =?us-ascii?Q?yCJ3U6BXykPGuwpfPrDhWs0t/fMDcV4cGv+L+34qg2W0oK7xo2ttquFtcyhn?=
 =?us-ascii?Q?J5fksCIUJc714X/1+WWIrpkv6imo7W06hm0KmyxDhhpN9spLPBwDo7P9nVA4?=
 =?us-ascii?Q?aLGdGKKYZF4W2NvhB7SoA0SuvUHfNPXp6kFaPBZoHz3h/heXvVjM3bW+ETH+?=
 =?us-ascii?Q?MVWeLlpwJmwCb2dxKU3yDGMoe+Dz/ETBE9Se1oND33IcSwhvIKX6BGHNf9CY?=
 =?us-ascii?Q?HALCelvfvP6ByRbS5tsZgtpynEJMI1FUDBaV1T9hzI37OZ07qxTPjIEUGFwH?=
 =?us-ascii?Q?NRdDQJuZR9yn1Zo6nQbJhl0/qPv/pf8gZoFO4NtjVxTr89MwLAzRun/5Yq90?=
 =?us-ascii?Q?VyclrLnjVpfvAXXsCuhhLIAOj5neOMj+RQhWEyvv+t6hcZA9NDGCNc7EKuYo?=
 =?us-ascii?Q?SydSMb9Idrj9PW8sjc7tmm6rE1oFEweT8YBLTMJzeRoQpkfjkpKPwDRAZBS/?=
 =?us-ascii?Q?xW0AE22iIW49qkN7DnFjLvQhtMEWs/PYkI+0cgkY6jPFxhDD93nwQIhjm/cu?=
 =?us-ascii?Q?OPepwmwrRBpNvdvH+KMYJVFUV75SGqzB4w/ygG/LgsTy8i5EL18dB08eBBeq?=
 =?us-ascii?Q?aySeqXPlSwGly+tgcJ0h3fWUXqqYJKBJPzPaxi5Blm/yXF2LYap2UOttPSRb?=
 =?us-ascii?Q?YeB+tnwjubAx63H3NzUWWY33JKkWq+SdUCu17o2uX0cgSk4oLS8Afc6XlVBI?=
 =?us-ascii?Q?eFGKhAteEVruc2p2e/UExxdt3HlLGtvDyhDI4rxVwNHcUzzzCkd/63vTkgEo?=
 =?us-ascii?Q?xSY2//etAZih+wb05ooKq6k+XpYJN4ZlZ3UeHY7UiJeyOoYSm2EXnX2t0RLw?=
 =?us-ascii?Q?v3EEBzHv9YVcDe/MDyN0ZlUfKLFx1EZ8zMGjD35f42tEllfbanLopL8/J9cZ?=
 =?us-ascii?Q?w3mTUHMKjfxSSIzBFz41iVw/wPYI/LqLlFvFi8ia+5Vs8Bi6cRmoshfAbxWI?=
 =?us-ascii?Q?bFYmuXby3tHbjy69AbVpOyeUTsgVTVdtRCqtM/TO?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30bc5113-d31c-4e72-e8fe-08da917005c4
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2022 07:59:16.2686 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F/hhdlvuykF9nWt5WISu8wen66WbuX3bckq83yZYiYhMG3a0uVM8MOdP9DM0qvp5i36Y1HS7FqqphsKrv2boQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB7022
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
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
Subject: Re: [Bridge] [PATCH v5 net-next 6/6] selftests: forwarding: add
 test of MAC-Auth Bypass to locked port tests
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

On Wed, Sep 07, 2022 at 11:10:07PM +0200, netdev@kapio-technology.com wrote:
> I am at the blackhole driver implementation now, as I suppose that the
> iproute2 command should work with the mv88e6xxx driver when adding blackhole
> entries (with a added selftest)?
> I decided to add the blackhole feature as new ops for drivers with functions
> blackhole_fdb_add() and blackhole_fdb_del(). Do you agree with that
> approach?

I assume you are talking about extending 'dsa_switch_ops'? If so, it's
up to the DSA maintainers to decide.
