Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A815ED58E
	for <lists.bridge@lfdr.de>; Wed, 28 Sep 2022 08:59:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F13FF81D02;
	Wed, 28 Sep 2022 06:59:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F13FF81D02
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=F9UWqSRe
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OfBrapQTbp8x; Wed, 28 Sep 2022 06:59:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 7758C81CE1;
	Wed, 28 Sep 2022 06:59:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7758C81CE1
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1F2AFC0078;
	Wed, 28 Sep 2022 06:59:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3E84BC002D
 for <bridge@lists.linux-foundation.org>; Wed, 28 Sep 2022 06:59:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F4129410D1
 for <bridge@lists.linux-foundation.org>; Wed, 28 Sep 2022 06:59:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F4129410D1
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=F9UWqSRe
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U_VsRbuea5oK for <bridge@lists.linux-foundation.org>;
 Wed, 28 Sep 2022 06:59:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 44706410C7
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1anam02on2082.outbound.protection.outlook.com [40.107.96.82])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 44706410C7
 for <bridge@lists.linux-foundation.org>; Wed, 28 Sep 2022 06:59:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dor0jMFUUZxzlLSP0bz/crtOPaJMqCNVqtbBc8BFGhZMGjxcWO6ow52he+dCv6yBN/9Dsr0kYndcDJvZe0+vijojy3nVjydsMiie8SUl9wsWzMa3ezLID9iGagZBf0uztLU5rpiE1p5kwbVBkMr/B+q4amNp3hpEPaBRMV2rGyi5EN1PdmqXppleDjigGEwdUFqfCtVxKHVqbt2MN7KbvVVQH9wixRmj4pDQKGyGiTw25vhe7m5NrbNGWW+heu5VyAn5v3MwWnUSwTLQzwf814loyhkunzR/mLWGRo7RUc9Psjnmbpbo8BGiDZ23GoEGISqtoLEhu7uIKYnvLd5tbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O5M8Fx1V6BI9wC4Rfe4cdEOngK8wJXgYTrL1iDgs66Q=;
 b=ZNyOMi0cXey1gJZXehy25S5+d2PRy57bVDnkmCwJgdd7KlfkH2717mxutHCorFTRiWdIFbzrmVk4LkrwhCLrF2AmmlZs4yvPMNxoIjnpYeV50u5WR1ep2OVpgYYiXADyu3jufEKuFMFhD1S9iMKg9gcHEIDGh0Q6Xeb61zq0tWLJP5rHpfS7L4qTszL88airFUYjwlU1pqQi/+kXWQVEPQW/++SzbfVGLwEN+v0hi6b52ap/BqoE7IUrHtU31QsP4TR3pXmA3Um5YhsyhbDOA0SWVrw0mzk/sMV15RVfe0Qht90G16a7xRZzFz3D6FV246i7i4wy6N0XQ74gTROtmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O5M8Fx1V6BI9wC4Rfe4cdEOngK8wJXgYTrL1iDgs66Q=;
 b=F9UWqSRerbKkdC7/PEgRQL6dpyJmzEedY7clfpPJgtBfUhHkOA7rCpckCu2t5wsKGsZRVqo0Jrli/A8nCYP6/PQt0PYOX/mQCKz70pThCQot3b47k0U4SfQpfBaU1G88yBPWv0/NMdMPi6c8mRoKeZf5XjkD442xM33pgvpJnBeI2MaqlxfWXg0piM5r5jfE/s1BXSVilHJ+Ni+rHLXbFSU1eFnLuuWp2MOBwTF10HOfICx4UToB5Pq1+sxjK3PVCsIEwKZPBW69vguWcgQ0JTgUImmhhK56h7VAi18XS1ehNSe29a8ssUd2ghrLIabt/2cIv9DALO/UXbgYSbcBgQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by IA1PR12MB7591.namprd12.prod.outlook.com (2603:10b6:208:429::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Wed, 28 Sep
 2022 06:59:20 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::8f0b:1a79:520a:64c5]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::8f0b:1a79:520a:64c5%7]) with mapi id 15.20.5676.017; Wed, 28 Sep 2022
 06:59:20 +0000
Date: Wed, 28 Sep 2022 09:59:14 +0300
To: netdev@kapio-technology.com
Message-ID: <YzPwwuCe0HkJpkQe@shredder>
References: <Yxmgs7Du62V1zyjK@shredder>
 <8dfc9b525f084fa5ad55019f4418a35e@kapio-technology.com>
 <20220908112044.czjh3xkzb4r27ohq@skbuf>
 <152c0ceadefbd742331c340bec2f50c0@kapio-technology.com>
 <20220911001346.qno33l47i6nvgiwy@skbuf>
 <15ee472a68beca4a151118179da5e663@kapio-technology.com>
 <Yx73FOpN5uhPQhFl@shredder>
 <086704ce7f323cc1b3cca78670b42095@kapio-technology.com>
 <Yyq6BnUfctLeerqE@shredder>
 <7a4549d645f9bbbf41e814f087eb07d1@kapio-technology.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7a4549d645f9bbbf41e814f087eb07d1@kapio-technology.com>
X-ClientProxiedBy: VI1PR08CA0260.eurprd08.prod.outlook.com
 (2603:10a6:803:dc::33) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|IA1PR12MB7591:EE_
X-MS-Office365-Filtering-Correlation-Id: c27bc2a2-0f81-40e3-17c6-08daa11ef778
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /A5xdkglto+Dv25v260nux4jlaXibWjzsemO+ZeQ+4AxRoOvs2CQdb+rbbA8vuI1ZvE949pCI7zcZ3J2iFj6D6vtf2c4mjnNUl/rOHbc7vpPITrCB5d8wiwgxhwZ9PUhkNxz2EuqA7YTd/ananak5dwZWp5VSmeE3wc0MkWN7zjS7zYcKYQiAv4vAgtfkuS6zu/V9mPrIr5fqXz+SJEgWxV5WfjdzvGZIyHYgc9nWUcG/WYiYdsPy+Dzsx5lFoAq1e/kUcbsW2ZHfRn7WxsOZnymJRtQQ9lrHZ7LSrDCpzQ2yIVDsEJ+YLTPbth6vGjSfpAGv3tK3rRXqjcaTpt2e610kjPdk4Mnx43jlLIboy2shASe+iJpwnGKgujP0mwlIT4dtSWuBz7uyFtkE2bsfKuJ8vdPKbFrJSmiWAwVOIPmWojrde4RlMTqYLVZnvHphxUOETd9QA2TSCksPL2LLZbARKnqj7UmAuRupYSlVVkJXh7pmyjB86SV7HAiJe7oZMYRrx20Yg5G1DSCwB3ePHzw2xT6YE+WP6h9AKN1HcsoxfA43GevIRFnnIR2gA6POXt4XFfq0+pfGluZj+gq+SWcaqSUaJwscMsphBhpbb8R9ah/uOpt8j7TkqXOTvjWuxaapogfyp6r3x4UBGtnuCdbnvA/xMjVVV1xPqEp5IGhTfa5MDjpmB1Ww6lWdm8b
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(7916004)(39860400002)(136003)(366004)(376002)(346002)(396003)(451199015)(478600001)(6486002)(86362001)(2906002)(54906003)(7406005)(7416002)(5660300002)(41300700001)(8936002)(26005)(8676002)(66946007)(66556008)(33716001)(4326008)(316002)(6916009)(66476007)(6666004)(53546011)(6506007)(9686003)(6512007)(38100700002)(186003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NOUzIJh593pcLKtnwi/r3OGZDUBj7v/yugSFcJdOb4QGvLLtPKp19S9+7J5o?=
 =?us-ascii?Q?X7mx1INPsdLUMjnYZWHaRR5ewaQRZzQaWM1laElBDF0utmwjUV5HbGDfwIYJ?=
 =?us-ascii?Q?P0V6mEZ0A+YRtf1dUsJNSxpxGntJbjGe8HrUuNwA/dRvBApjWJSQH1wSUrRu?=
 =?us-ascii?Q?azWZabPlxEIR9wuTdGtrzLtrsY/sU8oKLJBc1vAXv6JpoQOO7+zsr7wXiYHK?=
 =?us-ascii?Q?SiTTQfQIbz6aLjpli6kL4wG1MXo1ga+n/9r1a2YFkQuZiUa4T8maItHsvD5g?=
 =?us-ascii?Q?KUCvKe7GQd8DDZQmXtLTh+xGYtHU84s6WlSV8FYw9cnPVpflXaaVj8cy5bw5?=
 =?us-ascii?Q?al27jTxF+VSmHDcbbw8j1kJS2oy8BagWzjjzaVd5H35iIbuWvLByHM2UOnsX?=
 =?us-ascii?Q?jZvkE87jXUYrtoPvbBAR/0alz9ihFFPLAm8LJfGkBy3lbEyNr6Hi2stBzpMh?=
 =?us-ascii?Q?7lyhcs0oqYnOS8awswDFtIsUy3YfKTUa9mjUKBcXhBKbNpX3zIqagsm3e8b7?=
 =?us-ascii?Q?uPdwdDvDcz7f6CWW3H70pKdPS4u+RTytmQ/xqWgIo+sJE2Z3JVbqNZLTGNcK?=
 =?us-ascii?Q?8XXBPIHKY9NeVNLYDBj7ZJe0zVx/OzXppT4JhP8UyI14b1Afh9E1bI5bcSiT?=
 =?us-ascii?Q?b91e3eynoQXapLT1RU9BzLOpwaMSWQoJBxRfGxVHm1srBIJV1JF4Ky4lMsGy?=
 =?us-ascii?Q?/TXzpKYzwRb8J4ciso7i6vkNwIqmBHSbomTm1PyGrkgFDOkJhNW5sZAOX7KD?=
 =?us-ascii?Q?bxuDTs2nGoPnZTGTmu6myrT9VyaAulhF1SBF+uaBWD+6Fg8In2eCtuLUI8jt?=
 =?us-ascii?Q?pNKsYHIRmve8JVWJh1+Xro7Vb2rlpGfiVVEioCEBeFkmx4Cpjm8mG+n9bLzi?=
 =?us-ascii?Q?7iBEUuE3uOilCHhLYI4qUZcJSvxZlz7EPAhtvCowlb7YjGgrBGmdl6mogfxQ?=
 =?us-ascii?Q?s1Ts98hUB43HojG1Ru6MxciRViwzErw4WXtATAzb2pbb6HsyS2lKskQTbxZt?=
 =?us-ascii?Q?iyFc2c9RVvQadZiWAhTGt3q5jmkaMUU+heAHvbiQaoX5RSy3XIYD2Izc1ONf?=
 =?us-ascii?Q?nGFkog3dbHq6v8Lmomm5WlsQjTq37UdYVY889QKeZf0HqZzaPpM4I1nNDve7?=
 =?us-ascii?Q?4WpwXf8+TVlSxsyASSUfnCb3PYynu+qWsbnXlzONwuJ+PaVqN9/PWv8n8a3C?=
 =?us-ascii?Q?XRIxs5FbHGBrERhtDXDZMiX/1+JbHCbt3VScYyu+dKlJUQfIUmRWbxltqdql?=
 =?us-ascii?Q?uWx0kL/FVXWOYmzwooNMlxeQ01otjcNXh21f6hoh6wVQwYllpeff4uByLEfW?=
 =?us-ascii?Q?h67Qbfw4pa1o5DaP6FLZ2Gj6yzb68Z/jC0d3aaZPap/fcxKdymtJlpduA96D?=
 =?us-ascii?Q?2a0SAO8nC5t8ENjy16hu6mZvzHSqFgs4ikjrnv9qTfssii0W5lm4uln89s5G?=
 =?us-ascii?Q?L9von1/nadsHLI8x9XzN+RiQQ8SD3Vi+bowyxmj0kys4+Dz6BZDVkijSL7T0?=
 =?us-ascii?Q?PPBnPSzY8UKK17I4mSEdtRMs18hGRCFKdxEzzGaJsFns0FWDw+T0gcuRKnWI?=
 =?us-ascii?Q?9ES0XQGA5XcywpDQmAs0rh6B2TWvTA3kmtPMk/EE?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c27bc2a2-0f81-40e3-17c6-08daa11ef778
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Sep 2022 06:59:20.0686 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yy4w5OcTXRtai5Oh4ScIo2U9AJi3s/R8tT2chGB181SO0O4GV9HjOrhp4qZHg15d8qqxWkFRYQoEyZyi5IVgig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB7591
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

Sorry for the delay, was away.

On Tue, Sep 27, 2022 at 10:33:10AM +0200, netdev@kapio-technology.com wrote:
> On 2022-09-21 09:15, Ido Schimmel wrote:
> > 	bridge fdb add `mac_get $h2` dev br0 blackhole
> 
> To make this work, I think we need to change the concept, so that blackhole
> FDB entries are added to ports connected to the bridge, thus
>      bridge fdb add MAC dev $swpX master blackhole
> 
> This makes sense as the driver adds them based on the port where the SMAC is
> seen, even though the effect of the blackhole FDB entry is switch wide.

Asking user space to associate a blackhole entry with a bridge port does
not make sense to me because unlike regular entries, blackhole entries
do not forward packets out of this port. Blackhole routes and nexthops
are not associated with a device either.

> Adding them to the bridge (e.g. f.ex. br0) will not work in the SW bridge as
> the entries then are not found.

Why not found? This works:

 # bridge fdb add 00:11:22:33:44:55 dev br0 self local
 $ bridge fdb get 00:11:22:33:44:55 br br0
 00:11:22:33:44:55 dev br0 master br0 permanent

With blackhole support I expect:

 # bridge fdb add 00:11:22:33:44:55 dev br0 self local blackhole
 $ bridge fdb get 00:11:22:33:44:55 br br0
 00:11:22:33:44:55 dev br0 master br0 permanent blackhole
