Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1473F5A386D
	for <lists.bridge@lfdr.de>; Sat, 27 Aug 2022 17:46:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC9B781A39;
	Sat, 27 Aug 2022 15:46:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC9B781A39
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=asEsIQRo
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YmoYlBbSODxq; Sat, 27 Aug 2022 15:46:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 01EBE819FC;
	Sat, 27 Aug 2022 15:46:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 01EBE819FC
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 642E5C007B;
	Sat, 27 Aug 2022 15:46:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CE153C002D
 for <bridge@lists.linux-foundation.org>; Sat, 27 Aug 2022 15:46:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 858ED409E5
 for <bridge@lists.linux-foundation.org>; Sat, 27 Aug 2022 15:46:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 858ED409E5
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=asEsIQRo
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RJTPs3UJ453y for <bridge@lists.linux-foundation.org>;
 Sat, 27 Aug 2022 15:46:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C7853409DE
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2041.outbound.protection.outlook.com [40.107.236.41])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C7853409DE
 for <bridge@lists.linux-foundation.org>; Sat, 27 Aug 2022 15:46:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YkqWvtTj8JgrAWHY5AGj2qRP/maBfEnA/FmkcI/Br4/+YQ7r3dGnPQf213CcVq8SPwUJ06BPKTTixjHCvpFyjyJKp9DMqVFp9mN+sm8b+94XWRabdy+HqCU1WC/zPXBBLQsV4arRnXrDCZWIWWDlWLGGpZMxf8t81Hnk/yQpCXyQLf9euHcqG3vebuzotMShfHNXgZ6Od2Fn6nCcyJr6l/4TDuWMz2E/lKacdniUYYkkbPAYlWIKj449sKeg3K8B8EHn9bxlDlrzz4kPKgwhwW2q1eR/0mG98KwoplH4Rf/wTRmb833qwTtLvtjO33XCpOEvHdsWmy3EnKjP9yGIvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1M2HrqLpQSUZ6FrdfJ2qAbOLMtoL8Um9KiucawV4qNQ=;
 b=VTbOVOi/E6wUKtZfD9FzqcnObK1kysT+7JHPkqK3BsvJ+dTKUJhFEF/vYU1wCgVO4KkfVGy7UdTDNT6rJ67X4Tx3VHsDp6Ts7QnUp+qOHJXNm36JJ5pSe0vJV+utuL1peqDpg+ofUjO5FyFvGFND7aIek+lkIBaOQzeNfhPX++R5dvwluwi2vY8ML8VVUjZWxYX6fGuVJPHf2v8lS+R9OV+4VjlhOiaOAUTgn8B35tQWeVYTanAGtwX3Ilm4+CxkNp+3peU44b0FJHXkL+FbktxSSl57+y2q7UVTAU8FYypw2a94gd0aAHiY7RkxXatOPuRTXVpq9wF948k0PpPtbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1M2HrqLpQSUZ6FrdfJ2qAbOLMtoL8Um9KiucawV4qNQ=;
 b=asEsIQRoq5KZncpva0RB8kkY66U6tRsrJOV0Gr6Z3HqF3jzEoIgh+pSiTijBuxfjFOYrjPe+XNavqcOcUlWEXINsMJOOJc68fBxAwpAsqaP88L1H8yIYJSGZ/JM/r2wOHYuqBLcgI7oKZ5T8hEz0UKWTJkN4Ivb7xb19Bjle/r6b0DgCHhjqCBJ2Lu/ldCqah8sngvURP4eLm6sbpDvDa7zi2hMmyavtn8P+gwQ/EAAKs2KzLeae/MouE9RCGuENk3xLrNxzwOvuAzRV1E5oXdN0RobKVVDn0whynoftc6zelqeztZmejowAcgJZvE+V55ZOJQJJuui5C8bSPqdRkw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from PH7SPRMB0001.namprd12.prod.outlook.com (2603:10b6:510:13c::20)
 by BN6PR1201MB0017.namprd12.prod.outlook.com (2603:10b6:405:53::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.15; Sat, 27 Aug
 2022 15:46:11 +0000
Received: from PH7SPRMB0001.namprd12.prod.outlook.com
 ([fe80::3ca6:ba11:2893:980e]) by PH7SPRMB0001.namprd12.prod.outlook.com
 ([fe80::3ca6:ba11:2893:980e%6]) with mapi id 15.20.5504.025; Sat, 27 Aug 2022
 15:46:11 +0000
Date: Sat, 27 Aug 2022 18:46:04 +0300
To: Hans Schultz <netdev@kapio-technology.com>
Message-ID: <Ywo8PONgDW/lUj+X@shredder>
References: <20220826114538.705433-1-netdev@kapio-technology.com>
 <20220826114538.705433-3-netdev@kapio-technology.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220826114538.705433-3-netdev@kapio-technology.com>
X-ClientProxiedBy: VI1PR07CA0271.eurprd07.prod.outlook.com
 (2603:10a6:803:b4::38) To PH7SPRMB0001.namprd12.prod.outlook.com
 (2603:10b6:510:13c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9a3feee7-eff7-49e6-d452-08da884343de
X-MS-TrafficTypeDiagnostic: BN6PR1201MB0017:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yKBn72tHZc2l9sIX319NFZU2P1wl3LlFtdA68SUDvRJU2phnZ5LNKpuDtoXpjMrbaCzouHUuxMXWySu0sP7ZDairqtAjjlZMjaf1cTBOeIWOioEv9DovcNuTuApQZ8igG5xTZbQh9kGuo/A/7voWi8bbEQOkhrdlx6oju1VJSnYPgiPU6bh/01NLfKLtwj222bfj2T2pnHPXMH0ctooXwSMxIMRkWi4UEoWoP9xOnws8oFMewQ9vnxW8aI9kXgJJJcGn129I8ZvOGpN5//J0xikyofT3QNnhV1oajUlTX9kZMPJ4ySeHcDXD/ukc4xGbp/pVUIMgEKla8mJUcpfWTDwog3Hsfwllh/lrtm/QRke3W0OVoduA3dnRm2bEA4YiXRTxebYJyjXZDo0p41QttSbwTg6YCP7nkspXhxlibXnOcmkHEcBk5YroB0CdC/RlblM4v4KQeVfIydFs/bzN//5/gjwOw7YyFheVUM9P5JUM3NsYeLIBrUkJxIhYQbrvPxB9xt5seTw3MrLqiL8157Zy86ILVXDVyAQAtE9ORZb27/mUaJi8aKksFF2qOpPzjJ5zbX0/wAF67Nogt2leCOVdioPyMEKaPaB3pB+xY4h+sJNbDtxouRccNZF7LGvwQOqKY4MmyYhGAd4NrUYcVBqIHxiN+51FB/AOSNEwTbzqCalhq1Ssw0mW1udNgXdQUetoyLN2StrLbAQBdg7XHX1zgBa5v9DuTxQYUkxXNvR3S7Az2JbKogFj5xEh3JUUDd+exNY98HdkCCOGMKwacO4t4Vh9JSWmk8jh/9du0vw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0001.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(4636009)(7916004)(376002)(136003)(396003)(366004)(346002)(39860400002)(7406005)(41300700001)(6666004)(4744005)(6506007)(2906002)(54906003)(6916009)(478600001)(86362001)(4326008)(966005)(6486002)(8676002)(66476007)(316002)(5660300002)(8936002)(66556008)(66946007)(7416002)(83380400001)(186003)(6512007)(9686003)(26005)(38100700002)(33716001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1UtIJVvGyukyhuZgfpec8cDVFMWgdafHa7aToWDQJWnvg+cljQD/A9k+agaS?=
 =?us-ascii?Q?Wlo/Rt+DxzKaZ+HlkC3h1JSrEf/RVl7dpQn+MOgzEevoM17o5484kwfJx4UZ?=
 =?us-ascii?Q?ZSDFc3FW2x4tTYXw1lkUElfwTXbiuEBz3mAJQFXKZBKIwXMkXneXORDLWOfv?=
 =?us-ascii?Q?8gFpq5aXIPoBzZIi++DGTphAoCtKXaLP1vXesjTYuKeYHcpWzL/j+qGEl5wh?=
 =?us-ascii?Q?itFC5vMOCPdQQhfgRFVYYBA6AyOYDnj43/Fle2gJTacbPjkxtOuQBap0M+Ra?=
 =?us-ascii?Q?1DwqPc9l2ie9D1gvNi4yyHAAd7dbmOm8aOY3b957VgMm8UCafKdBHCfHSzhS?=
 =?us-ascii?Q?hIj02VO8Ho8zD9ZaMq38Bn4R8oU/S6YcwDqkP8+TlaUB8+RXGWJlP4xoEcVQ?=
 =?us-ascii?Q?nfvqm6jJsc9m+nJkomEwhzmKGQOOeYRtERVmeWlEugk7hEkIoGGIY6nkKnbT?=
 =?us-ascii?Q?vjvGQwrKjaHrV9BTo7PVpPTk+JzgsQoStDqajbidKGR/RzT1xzlNkG/d6L/d?=
 =?us-ascii?Q?ZcPJfP/vBIhjuGmg7wEFh52dtn2WOP9S0IN0y1wEW9Bm7G/c08HI4ao7sBc/?=
 =?us-ascii?Q?A2yKqTICaPFrjvbwoggnaPS4YbR+QYkQG+qVD8fLtcswA2KvnNtx6v43QCuD?=
 =?us-ascii?Q?9tUWq2cjhv3X5geR+Jo4rOYTkOsqWmw8jSe0o7H2fr4+OATOzYUztshKz4no?=
 =?us-ascii?Q?cfTDH+lhcZuQYNR3ORnaW7obDRUX+KMazeM3vayKh4kIyXY1S/k4gsltzIMz?=
 =?us-ascii?Q?gX9uyaA2QyPmOcJ7FEA6LD2wsV9rIN0kPzDi+dKvLAN8Epd+pwgTNl/KrlKJ?=
 =?us-ascii?Q?6N0ZZ5VLWHj2et0HcDTJfJVLMWCC4cUUEG6dhASPSsyB53604jlgE2RXY8GS?=
 =?us-ascii?Q?NKl9oTDr3p2Bh/RNSPohcvbGkFZ0kw/ermfzQ6REKJl7ZIc2A/nXay5KR/rY?=
 =?us-ascii?Q?N2c+W3+nI7r+qfW/b8vD2kLvKhcGUOymkGNE4i4gZMnQPvQYIzia1UI5fSkm?=
 =?us-ascii?Q?9Oq2/hpeYyUDZPxEWjW4tEZ2ZubS42phqhGHkAB1zFrDWfoYUrCaGH8snuaq?=
 =?us-ascii?Q?EM70FTHtTgoy4eGJZkv3ZF5NULDKPPu+m8y1jOmJmLF5zoDrbV9emAp9Qkg3?=
 =?us-ascii?Q?QvC1E3hBTX/Pd+Q5PqxLqO3huoizbt0dTLYHQCtimqVO7QhPMLbsm1RFnwbt?=
 =?us-ascii?Q?MJifPEKzSp8SJV11/oaTltSXGN6KPujCXjVASZagMjH4mJaL3wCN1gQXkLhH?=
 =?us-ascii?Q?7HGVhPhPL7TOcHuIbWgqhdzLl/7zjWJlc1ZkgBGQ0pRzW4FUfFyp9dOJUg/v?=
 =?us-ascii?Q?Iy6o1QL3ukWCfT1detIvWCtwTnLZZWkC0exL+lSDeJSm36RPtFq8U2ixJ83Y?=
 =?us-ascii?Q?+A+g6b5KNPxV4IJU4DZuDUSOtzLe+FOG0EGazW1iXSkVtQh5yhzFTv3tYmMH?=
 =?us-ascii?Q?QV+tyU2i7fiXozYls/pARcMw0y78cbR49SvAMm1fd2K0OWBxES98mk7GK0iH?=
 =?us-ascii?Q?MSNBP3wdWu03kegD/DphSeefX9v8SLu8aJniyULjSCI0HsU75cwCzNmrwdcL?=
 =?us-ascii?Q?HqSu/70MGP+c4ob67QxielnZ6Yg87/s3DsIjGKIa?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a3feee7-eff7-49e6-d452-08da884343de
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0001.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2022 15:46:11.1083 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1hEfdPQFV0arqRAHuZ9McMCcLhfkacXaTbvsefUWtnLntj8EjEm3kehV9+zji2aujIrpvoKRFRPsuKY1Ga3CEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1201MB0017
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
Subject: Re: [Bridge] [PATCH v5 net-next 2/6] net: switchdev: add support
 for offloading of fdb locked flag
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

On Fri, Aug 26, 2022 at 01:45:34PM +0200, Hans Schultz wrote:
> diff --git a/include/net/switchdev.h b/include/net/switchdev.h
> index 7dcdc97c0bc3..437945179373 100644
> --- a/include/net/switchdev.h
> +++ b/include/net/switchdev.h
> @@ -247,7 +247,10 @@ struct switchdev_notifier_fdb_info {
>  	const unsigned char *addr;
>  	u16 vid;
>  	u8 added_by_user:1,
> +	   sticky:1,

If mv88e6xxx reports entries with 'is_local=1, locked=1, blackhole=1',
then the 'sticky' bit can be removed for now (we will need it some day
to support sticky entries notified from the bridge). This takes care of
the discrepancy Nik mentioned here:

https://lore.kernel.org/netdev/d1de0337-ae16-7dca-b212-1a4e85129c31@blackwall.org/

>  	   is_local:1,
> +	   locked:1,
> +	   blackhole:1,
>  	   offloaded:1;
>  };
