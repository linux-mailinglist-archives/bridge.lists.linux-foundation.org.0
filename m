Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8B25A5128
	for <lists.bridge@lfdr.de>; Mon, 29 Aug 2022 18:13:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C5F9408BB;
	Mon, 29 Aug 2022 16:13:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C5F9408BB
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=oCoEUNvx
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iZf_DAiBUJ1H; Mon, 29 Aug 2022 16:13:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 845FC408A2;
	Mon, 29 Aug 2022 16:13:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 845FC408A2
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 15182C0078;
	Mon, 29 Aug 2022 16:13:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 45E75C002D
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 16:12:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2D73381433
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 16:12:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D73381433
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=oCoEUNvx
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eYZPwibqSgmI for <bridge@lists.linux-foundation.org>;
 Mon, 29 Aug 2022 16:12:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D95E3815CD
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2040.outbound.protection.outlook.com [40.107.236.40])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D95E3815CD
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 16:12:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MoAZOaioTP5BNLyl5rWREL1nAtXlHqgHdnF1x2SIq9ukyK9U8i/TyRSUA8wo+wlWMO2x0GgwcbxuJJeL+nmfUesmwDGj1H4TGnF7W4dzZu/GxIIkUfEydhRyRmf9W7r4By8c1kexrD2K6ryKKoiJlea0GyN5vJ9HhZL2UbIrl3lJZy3Us3Vv94N8U1k5P1Z3mPD2ZtqTXoSdeU7I8HXs/cNhRPwEQnB0MYqVfMr0CBnR09z0lVKGTCd9H+Xz+lwb3BdpkwF+MxjcAhN7oR+9ZLU0YE3l0ZyoDrlcCPxgzvfSX0Ldk4qdQseoh49qXH73yR6i7DgX2TN41DwZIZQeqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+iCA21eCQznXHOu6VEuN1kLPE5gxUGXLzjfFSjMA/qY=;
 b=GrO/CwpOPaMuDqVzi0ru9kG9q0vKxWcv+JAfaSto/3OKtizlX2XzCVBIPkM2UGC+k3PxRFEsndzmHUEjQv2MoyDCRrAMa58blhxz/n5RZlBszy57lSHd8BAtzHEaMY7x74J0NJNLLhMiZeQm1xHAAzN93TASkRKGRZGYCMFc1xwPdK1QhIi8ivxjhzjAhzbwoaFcFWGxO25XMjYTvtkBpmjQ+v/M2wftqVW4vqA755onlmgqFx7a76pj8uakQ02tk4YSMH17SYzlZD+0oXHRETGZ/KiN0yfUlW+E6334OPtpVom2sHFX9LA6DIXATtRCjGPCmFy00XS0iqXZ2LCQFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+iCA21eCQznXHOu6VEuN1kLPE5gxUGXLzjfFSjMA/qY=;
 b=oCoEUNvx2WXdAHymJf8dhckgC5dsDLfLpWFYc46arHzWxjw24lSlhvDSbikk5e7b+3BCj0lFTd8f/h5uS5bxVymOhKeCiYVUXPxHow4he6wTc+b+yG1L481CMV0jc3/hx6BHFHQ2g4IMOAQIN/1kf2lT4z6v72SPkdqWMZyWqnIh/6XCclpKyUPC8fhkrWDj8KNW4maliJJLGW9E7+4ad30KHt/F7Ku7X7YBb7myTc3PtnJSjAn+VubWNK4N8kZlwoJ1Yh42B5wbe8+yu/Hv9fosJ086sgM3qX8oadMyuzwkZdGR6ZIr2YQ5kMdU5jTpVp1TJwkJ4pHQbkFq0Kcr/Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from PH7SPRMB0001.namprd12.prod.outlook.com (2603:10b6:510:13c::20)
 by SJ0PR12MB5633.namprd12.prod.outlook.com (2603:10b6:a03:428::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.18; Mon, 29 Aug
 2022 16:12:53 +0000
Received: from PH7SPRMB0001.namprd12.prod.outlook.com
 ([fe80::3ca6:ba11:2893:980e]) by PH7SPRMB0001.namprd12.prod.outlook.com
 ([fe80::3ca6:ba11:2893:980e%6]) with mapi id 15.20.5504.025; Mon, 29 Aug 2022
 16:12:53 +0000
Date: Mon, 29 Aug 2022 19:12:47 +0300
From: Ido Schimmel <idosch@nvidia.com>
To: netdev@kapio-technology.com
Message-ID: <Ywzlfzns/vDDiKB1@shredder>
References: <20220826114538.705433-1-netdev@kapio-technology.com>
 <20220826114538.705433-2-netdev@kapio-technology.com>
 <e9eb5b72-073a-f182-13b7-37fc53611d5f@blackwall.org>
 <972663825881d135d19f9e391b2b7587@kapio-technology.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <972663825881d135d19f9e391b2b7587@kapio-technology.com>
X-ClientProxiedBy: LO4P123CA0356.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18d::19) To PH7SPRMB0001.namprd12.prod.outlook.com
 (2603:10b6:510:13c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 458cf043-40c6-4dfe-e455-08da89d953a8
X-MS-TrafficTypeDiagnostic: SJ0PR12MB5633:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: URwOnSOxeXPlq5LThz2QPoFe2z5eqg7TsTxCQN5HYU2YBgE0wnCJhpvb+YGHeyeqjbknt2TK16Zu3X5/4yOBydh80AWEf1RMVNpilLQ67WJE5WdEYK2zS0wg3NFU3Y5Iy7mdo6xnt4FvBRmvV6NjQKPxTnFON699Lq+mpsS+xVbzc6CUVT+CdKHQHBEgjB+VKKK9PZ9VTdWZhUBfAqWrX7fPOo/J0P9clSUExUff5a9jLdDx05Q8nkBqH8xlRAcerWaRULs4mJU1lqupRe7jwP8n7JF7xPmm/p9/nAg3yxc76iGquoMOfSsn1HcP8XgWBrnkv/fF7xa/lhodqM1IPBskEUqaamm+w7lxPJuL22mbVTQ5VS7FbdrXb1Uobmcel1haprY2JZXqCQDKAtBrw96nA6/ebk6vU+eULMkUpthuqEZDPl8NyBiTdkTIhMd/I7kcsBbo5+bevikx5tMtBnC39hpiMiAWlBWcUdo8DGqfYnLi66iaRqirA7pTwAhxnO3fyWCRUB5nTv/gfY1hg64L/WzLCH/4OB27c3x/m3GX8Jkh801LhBFfc+evumi04glVhZeSvyh/Ifx4MBtDgjcFW1QgU4lUNpzwmZ6iOOwdny+LUWq08zIqZWa6AOlZCqxzFnJzj+odjcx3CYOE4HYPD2EoGD4a5FehUgmyb2ppXiuWFvXSLY+H+ayDEcDRfc2x2ROF8iNNeWupeWRg8mH96msZ7gUEUbb8i9g3FvQ0vHQJkeJlkcpf/JZRFjlqvIMUrO9WQ9p525MhUjgtydrNSnxk3FGRxXG9bGPpzO8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0001.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(4636009)(7916004)(396003)(346002)(376002)(366004)(39860400002)(136003)(5660300002)(6486002)(26005)(4744005)(66556008)(966005)(6916009)(86362001)(66946007)(66476007)(8676002)(33716001)(54906003)(4326008)(316002)(8936002)(6512007)(38100700002)(53546011)(41300700001)(7416002)(6666004)(186003)(7406005)(2906002)(478600001)(9686003)(6506007)(83380400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?48WpWIx1LneHKos/o/UoszPYArxlcBZgYbEr7aciBrfjwcFWCT8jd3Y1Rv71?=
 =?us-ascii?Q?Q8KplQt8puMPV3hNdqoUM0ehs1VYjZdNubdBHlziIR4EuMhw6GEMkp9xqpp0?=
 =?us-ascii?Q?8BKzCdnrxbpIXlRbpZ4yErDsm3Z6i0O0jSeJswMBNFtmP6B2pHHqJxdFfr6K?=
 =?us-ascii?Q?MREbOth9worx3dx/RIC60EXqnOTqQoAt5ARimKI6Tue4//9EfNgIyk206nUJ?=
 =?us-ascii?Q?XE8604Yo00np0fbwGCpMaOOgqnUfbc+vhsXNClZSEVVVidj0c/bcjur3hoyd?=
 =?us-ascii?Q?nuY9yPzGjMHg4feRCTh+BXrD4il3jqzHlon80F/3kspnGg6Nic5pQfA0ijRx?=
 =?us-ascii?Q?FaMRY2FXCj5M8C0KAnrXbds6GxlRhSkkSWfEQ8tgxgVhVsOe24WgE1XR4odO?=
 =?us-ascii?Q?giP4SqT5q1JGkVfjySRErqt8NbuzFDK3hnFCVh2bgdVOxDceDBSEKdgBeNSg?=
 =?us-ascii?Q?aZlO5jqsVedRXVckZD6yQ4zzuemKTTYO9ZksAAfI8YZaVg2AQrqSBjvB+3RL?=
 =?us-ascii?Q?LftCBCfiXYtHy0xZIrpWqF+vNNt/g1YgFJzNP9GPNHIHyc6awSISCkvkiw2H?=
 =?us-ascii?Q?6O0sBGqdYC7ZFdtgkoQPZl7X8oygoGfHk/Pm4oFShAti0ClkPfuudyxy9usL?=
 =?us-ascii?Q?eNuSuimOVUTc1PkIXM0J6YWDqsS77Y3/ICYQiLvtTAYgC6uJQxADtDBHW/lU?=
 =?us-ascii?Q?ic54ULBEsnsl6gH/bnq7KKsQCn3qCsLDT8x85AcgebXh9qAAS59qWWq6sSrr?=
 =?us-ascii?Q?oOy6Tc+uJKMB8PHwKNIpVzhH8BlNbBXNSARLgMTZBmqAdwCuHRq3qTfE8Qj7?=
 =?us-ascii?Q?c8jWdvBkFQEX4yR9Q1Sw46kDhxtjQguRjdNuiPJ/wVzZywMfMXGgqVmhGDOc?=
 =?us-ascii?Q?QUi8nPjVyOMVXF1BIhAbjCnUmPPI0Ep3VlR8S5RI0syKIgMMvUccSQnz+exK?=
 =?us-ascii?Q?50hSZvb+zhIG+GSf5/NMYCA3lT77Z8iaPcwpIG7FZ6CpIX/ajchXeFAMgyfF?=
 =?us-ascii?Q?Nm3itLIsA6QAxZPN0tOEsCRg8EvUgm1OuRInCru9IYGXVi6UEjjVCxZIYfbJ?=
 =?us-ascii?Q?rMdc4tl69pl+QCm6Mesfg0uZaVVwrSYfQ03xm58SUveydPMqLLFwTuXmFEYc?=
 =?us-ascii?Q?kwQ5oNTxHrSPYlWEptuZx2RWT4qczbigWw9lwcD9RkMoV9E0WNPBo+Wr2H7z?=
 =?us-ascii?Q?lAdpTnDmKlwChnZ4PO5ZHBF+38cq820O3JtXOj9YPHIxF0jP1HIsPeYbuzpJ?=
 =?us-ascii?Q?hRJSPg7IbMjVCT5BvzdH20e91tmbjXqa4d7qyM301RT2juLy7UEnQfQ+T7Fs?=
 =?us-ascii?Q?KGqMwOwAFcoY4Fw5+nJcn05V0Ij0+kgANeTK0wMJMsCKEXOpMxm7zDdlCbz4?=
 =?us-ascii?Q?FWZ3IzwwazbE11+Vkf190kcLuHK2vVNT93LVkqFtX0rZ4pItFch+k/TaalyD?=
 =?us-ascii?Q?cyJaQZDU1qXorSwJUpkj6HJtgweqfgBFVtup2GWVvgj05kPNh3I4wBd2JM5h?=
 =?us-ascii?Q?Lpi8jQ61xpbNu6spWY5gvvUlNF2gfJ42mYp2U9GhFenjdrBwv811H2HQwq3M?=
 =?us-ascii?Q?vI7f2/9q1xUMaDl/AYU2yyKUKDZivfbyTAeykYvZ?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 458cf043-40c6-4dfe-e455-08da89d953a8
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0001.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2022 16:12:53.2238 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qO9PlPy0ZMasgC7Pq/+Y2JTqskesVBKrl8iNvo6nteTbwS41VeDrQexdoxn+1X4hGwE1uoTqvIxAX0bx5hB4KA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB5633
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
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Mon, Aug 29, 2022 at 04:02:46PM +0200, netdev@kapio-technology.com wrote:
> On 2022-08-27 13:30, Nikolay Aleksandrov wrote:
> > On 26/08/2022 14:45, Hans Schultz wrote:
> > 
> > Hi,
> > Please add the blackhole flag in a separate patch.
> > A few more comments and questions below..
> > 
> 
> Hi,
> if userspace is to set this flag I think I need to change stuff in
> rtnetlink.c, as I will need to extent struct ndmsg with a new u32 entry as
> the old u8 flags is full.

You cannot extend 'struct ndmsg'. That's why 'NDA_FLAGS_EXT' was
introduced. See:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=2c611ad97a82b51221bb0920cc6cac0b1d4c0e52

'NTF_EXT_BLACKHOLE' belongs in 'NDA_FLAGS_EXT' like you have it now, but
the kernel should not reject it in br_fdb_add().

> Maybe this is straight forward, but I am not so sure as I don't know that
> code too well. Maybe someone can give me a hint...?
