Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 500635A43E4
	for <lists.bridge@lfdr.de>; Mon, 29 Aug 2022 09:40:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 531BC60D5A;
	Mon, 29 Aug 2022 07:40:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 531BC60D5A
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=MI5JfV/K
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YY0s0_n6VmYg; Mon, 29 Aug 2022 07:40:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id BB1CE60B98;
	Mon, 29 Aug 2022 07:40:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB1CE60B98
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 56F61C007B;
	Mon, 29 Aug 2022 07:40:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3B5B7C002D
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 07:40:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 04814400D3
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 07:40:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 04814400D3
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=MI5JfV/K
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eF1AJfllBVzL for <bridge@lists.linux-foundation.org>;
 Mon, 29 Aug 2022 07:40:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 93182400C1
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2061.outbound.protection.outlook.com [40.107.93.61])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 93182400C1
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 07:40:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nojz2kNKx0bU3x2lGF8jrSfqBEPjZaSETmYM/n7aarZwWqNdBhQ4KY50XD5phJ2vM9zMc/95ZXkSbITDYY4JJ/ZaaEr01AknDsMkQoAHV5HIXGOdHUS6t1RUScw8qAFboYV7ix5rMYLbciVQMbQXd0sgP6Dcd24Ydy8dpVTdaAx3GU27lNw5EiCi8YeJBDcm31fNGWFYkJMyl16+XfmoH1J5dULcK/tV4gVSejvCAsV/DYX23FHOJIq2zjLQ5RvZniFqLKH5U+bV89l8R3PuZ9WEu4CB2eX8DX7xSzCjoMeFadQDoVwtvh+ZsGoOYAF3MvFTwt01wXOfA/TjriE8VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S4tIL1hpcg1gy7e00Y/TYZiqr8q4n7/NRB6DQoZ6S88=;
 b=I49H+R80cAtOGVOcuUTld2dPdKsEdiifNsRJYFGrqOc2hNAegI66UVWR99AzEPMxPmix/54NO0QyoLwKr8aPlEPHwn0ogBBy3x7FXNxSZ6XEN+/Kgnrwv2jibt8QA3vWxT1EZULXw56g/+HAFt/BDQYl4gvynVKd7dF3jihCNZsZhoo/zufW5t6/ImwoHobkWA1DKRu/YCNIp68HiEO+ZKt6bDK72MJ/Af+TJeggFcSn/PKuiWmHx4RRL9JD+HpuB7jBxvLf8UHggyFwZCX70+zX2hbUOVedUKi0sqi0lrxTKs/ZwaedEe9SAtmKcf0XkV2vypCf5Cm1NLXbjmIQow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S4tIL1hpcg1gy7e00Y/TYZiqr8q4n7/NRB6DQoZ6S88=;
 b=MI5JfV/K3fGK/WEX6ahjpqbfi6WgZVY9q+CTHpQnCJqTImb0YiYCtEWcuf2x/Jpeqya4iEx2M4MbdMfnlj3DoYUhZD1Oj+iWi1xqn3bxwYjDF2mFZf/scvZKzxXKYTmHLNubPBYo28To0/MsNt2SStyCtjOO6xRE7mtgMKOvrmQ3mQKWeQb1h/h6EOOQc94Tcy3xDXxmROgzQYah6+j9lzpz/nGxxQGIANptcC0oR3sHN2G555WwNLNErEbbABpfLOMl0/VtdwFMPrBQCbqlZcLNhqKQtWKla2qo36u+975lCDlnFQ2WDhvoE3ZUvt9EfphH7+KLfXnWf1TNEzzhYg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from PH7SPRMB0001.namprd12.prod.outlook.com (2603:10b6:510:13c::20)
 by CY4PR1201MB0008.namprd12.prod.outlook.com (2603:10b6:903:d5::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.15; Mon, 29 Aug
 2022 07:40:11 +0000
Received: from PH7SPRMB0001.namprd12.prod.outlook.com
 ([fe80::3ca6:ba11:2893:980e]) by PH7SPRMB0001.namprd12.prod.outlook.com
 ([fe80::3ca6:ba11:2893:980e%6]) with mapi id 15.20.5504.025; Mon, 29 Aug 2022
 07:40:11 +0000
Date: Mon, 29 Aug 2022 10:40:06 +0300
To: netdev@kapio-technology.com
Message-ID: <YwxtVhlPjq+M9QMY@shredder>
References: <20220826114538.705433-1-netdev@kapio-technology.com>
 <20220826114538.705433-7-netdev@kapio-technology.com>
 <YwpgvkojEdytzCAB@shredder>
 <7654860e4d7d43c15d482c6caeb6a773@kapio-technology.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7654860e4d7d43c15d482c6caeb6a773@kapio-technology.com>
X-ClientProxiedBy: LO4P123CA0471.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1a8::8) To PH7SPRMB0001.namprd12.prod.outlook.com
 (2603:10b6:510:13c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0699e5ab-4cb4-45c2-8b30-08da8991b44a
X-MS-TrafficTypeDiagnostic: CY4PR1201MB0008:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 10DSyGaAO+jao7o2ky2nO0uABbeKxCBAzedS/FEpgRl4bgEG6HMDitv/jD0YjE+S3rsXyLl8pQuiMcSGkvhYmy/guS5z7y5AXO0Ljmw6lbfEU03sZQ9QWseINKsI0DgwVJCPlrNtzOTNRMqyDPxmCbXWMr99ieEM6t3bWspOpP2/38s2IFyNCqupgwmsS+BYzzLLR/7fMz3lbisraakxVSySjLKhoDNfvrszmHFG3kOWP2X0yxmRa8CB2jf6DFd+FLHgat418ydM0dhYfUqfH2rGEwuxF8JgKx0kxocbTE1w06qt3rhUlOz+dLqZ7Nz7GN/QUxGhxcxG0cAAmKadNrHzpw2F7Kwm0iSOxVRUNB3jQQAkjUFUjhkfopKcFp3Lu3OWLN2plrX+3fHjea51TD1qapH8H4DA3frJgiIC9BHSsSth4UMyHmvcbOKNfW4SEbST+xrTgdTgFycUqWfvTURh6ZUXywhd6i70Mww7W4voxeYh+mozwEphIqCMOt/dWeQkTqP0qZ2R4Vohj5trDsmPjR2HQmbMd+J+Seqajpa5sOrxkTrLL4Yu/eJp0uZ4yiwDzLWcELU+V6PLrbU2bwkneoUDS5cy4JlK1GuehhgxIt7hjF0drhOigMIBY4ma33dQhZVIXVdoqDlDLhIwaVIdLhNHOgk4lq7cIgUAcvg2ZqutUpdrCjYG02V1Sew00uGQGchyVVMpi2ZZd8edFZRJPM0B0SLdlUb90PKqOs11TtdrKMyZvYE9Yu2bl/WF
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0001.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(4636009)(346002)(136003)(39860400002)(376002)(366004)(396003)(33716001)(9686003)(6512007)(2906002)(6666004)(53546011)(6506007)(26005)(38100700002)(186003)(83380400001)(8676002)(54906003)(4326008)(66476007)(66556008)(66946007)(6486002)(316002)(8936002)(7416002)(41300700001)(7406005)(6916009)(5660300002)(86362001)(478600001)(67856001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nG2tTkf/Z9J4IzQ499Y6m8gTs8SZb542gw6mka4NIx1UJN6uEiEf/ZUeoc2Z?=
 =?us-ascii?Q?bhCGs2Nf/DSbFsV8J4fbsKgO4wR8mkY6qwhKnkREba0Gx2QShDEX40aotSEj?=
 =?us-ascii?Q?SbwD0culuVVWZkkVLWvGc7osqBRsrv0RLIkxdWC/36XveIa5IWlWXLmUlrZq?=
 =?us-ascii?Q?SScWk+YA4yQr/jfRMIPBvqSHbgGGVNNdK8YypOj0mjACiNBp/cwpLW3OrDkq?=
 =?us-ascii?Q?m5namOQ4nBR6byPm88VMFTkUMoW/CK5tsqdikDJlSbu3qRmP1K/YG9hu7S5q?=
 =?us-ascii?Q?VF692zCo6mdN95g83Hp97LI6jrKQR3effwoTLQw47qCIpgHI12XhYzLA9qQU?=
 =?us-ascii?Q?wpPBbcCH3G4zdx20VFqVce2SUyTfBdAD0iO3yE/463yZPTShxMJt+43JS3t9?=
 =?us-ascii?Q?SDDF0tJmk+EGc+KIFQjIenN7MXGCH8E9zJdS4EP7LC5xvOvD8EjsZtXDB8JK?=
 =?us-ascii?Q?4B0pEnqoVIQ1KgxDVlDHOSJSL+WcRcMTUcjjUuySiEyQ8MAlr7aJWv2oGCnP?=
 =?us-ascii?Q?hq3LuX2WuLfUzGWCTEc+eivHz/b0WmHeglirIbqIGhWFBAAl/U3y1byjtIuO?=
 =?us-ascii?Q?ka6g68o5nI4or+ezxf0MpBXQh1LLtscWUu/1Y+i0ajdwyDrnWtISngIxCqjM?=
 =?us-ascii?Q?MErrUv/KQuD1I0fRifN245pkGw2DLlrQZ6IAexvJ+BviZNluly1UJgLxczjT?=
 =?us-ascii?Q?VoTMEOtcwHB3cy5Tlr7vx/4aUGCwrKwtZYwU3rgUx494AD5zkivglvCk9gKy?=
 =?us-ascii?Q?CFi8raEXs0cCdsZTQgjOanpdB7Hf8MKUA/iAJDBXjjQUw/IFZB0PbLMNC66z?=
 =?us-ascii?Q?Pfm1L9jh8swYM+TIx63eh6U0VG4JSwRoMR81uCtUon0vVZZLS9P2bkcyEWB2?=
 =?us-ascii?Q?+HOf8YtgCtPGyP/7ppK24/TrMgc3R2Fd5nqmUwsV+LlnNnRTExcQUlshqgEM?=
 =?us-ascii?Q?4hFg9TFBxWYKrLoxaaxciG986GgF55GYBTcNM7toKT3nj0g+W9npSMDhLbtX?=
 =?us-ascii?Q?Q9Lis5uT4C3F1GbHc+iJ4TwSQ/M9NASC61lf3Veo1PQvLF6NOgTogkXKobsB?=
 =?us-ascii?Q?a3KDpOjgCy7ibMC5fNrfecFM7+xeMdE7OngRHQPDU8bLiAhK/1ada/WjPPDe?=
 =?us-ascii?Q?clhl08eTmKxVvslTZMyX+Bzjt5KT1AumTahG5lhMYDlT7AFuGLsm5m1vmDC3?=
 =?us-ascii?Q?esN74YqAwYzywPcg4X3hmVwEHNo8F96g/CmqocRQJ5hCl5g/Pjh3RDYlciyf?=
 =?us-ascii?Q?o5f47nxUIyZKCYzcho9WM1V+rWSflvqfaQU2NhkrTg+MhRIBlTFBM71I8cqm?=
 =?us-ascii?Q?2ngefozvXEcx6l+csQkh6stYHn8v7BsFkjJ2SJwNUD43E5JlM7lObfNpotYJ?=
 =?us-ascii?Q?BIQKMB4lKIZs2r70WFBHl0Ldzvlc/H5+k5KrW5BCvMb5v4dmjILpK32wk1yx?=
 =?us-ascii?Q?oD2KTEjO5aVX8c2ltZhTZRpcu3dzbQb7IAlJVNNthaEtr/XZyYE3eT61C1qB?=
 =?us-ascii?Q?TY9f7bsTx0g/IH6GOzWE3LsCsU64wysbZejwsYR389ZlIFZFxZds0pI/grhU?=
 =?us-ascii?Q?QFqLq245nYPAxMNsgwqeCgNvETSoErI71E/rXq0b?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0699e5ab-4cb4-45c2-8b30-08da8991b44a
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0001.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2022 07:40:11.6737 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3AkjiXcrKFG93WcU2n6m7J65XEl8LRM6yE0Y5Lyrbzndll5lHZZL5ULUQC+en3NHX+yNkSbMPC3eLMZ2kFBe1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0008
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

On Sun, Aug 28, 2022 at 02:00:29PM +0200, netdev@kapio-technology.com wrote:
> On 2022-08-27 20:21, Ido Schimmel wrote:
> > On Fri, Aug 26, 2022 at 01:45:38PM +0200, Hans Schultz wrote:
> > > +locked_port_mab()
> > > +{
> > > +	RET=0
> > > +	check_locked_port_support || return 0
> > > +
> > > +	ping_do $h1 192.0.2.2
> > > +	check_err $? "MAB: Ping did not work before locking port"
> > > +
> > > +	bridge link set dev $swp1 locked on
> > > +	bridge link set dev $swp1 learning on
> > 
> > "locked on learning on" is counter intuitive and IMO very much a
> > misconfiguration that we should have disallowed when the "locked" option
> > was introduced. It is my understanding that the only reason we are even
> > talking about it is because mv88e6xxx needs it for MAB for some reason.
> 
> As the way mv88e6xxx implements "learning off" is to remove port association
> for ingress packets on a port, but that breaks many other things such as
> refreshing ATU entries and violation interrupts, so it is needed and the
> question is then what is the worst to have 'learning on' on a locked port or
> to have the locked port enabling learning in the driver silently?
> 
> Opinions seem to differ. Note that even on locked ports without MAB, port
> association on ingress is still needed in future as I have a dynamic ATU
> patch set coming, that uses age out violation and hardware refreshing to let
> the hardware keep the dynamic entries as long as the authorized station is
> sending, but will age the entry out if the station keeps silent for the
> ageing time. But that patch set is dependent on this patch set, and I don't
> think I can send it before this is accepted...

Can you explain how you envision user space to work once everything is
merged? I want to make sure we have the full picture before more stuff
is merged. From what you describe, I expect the following:

1. Create topology, assuming two unauthorized ports:

# ip link add name br0 type bridge no_linklocal_learn 1 (*)
# ip link set dev swp1 master br0
# ip link set dev swp2 master br0
# bridge link set dev swp1 learning on locked on
# bridge link set dev swp2 learning on locked on
# ip link set dev swp1 up
# ip link set dev swp2 up
# ip link set dev br0 up

2. Assuming h1 behind swp1 was authorized using 802.1X:

# bridge fdb replace $H1_MAC dev swp1 master dynamic

3. Assuming 802.1X authentication failed for h2 behind swp2, enable MAB:

# bridge link set dev swp2 mab on

4. Assuming $H2_MAC is in our allow list:

# bridge fdb replace $H2_MAC dev swp2 master dynamic

Learning is on in order to refresh the dynamic entries that user space
installed.

(*) Need to add support for this option in iproute2. Already exposed
over netlink (see 'IFLA_BR_MULTI_BOOLOPT').
