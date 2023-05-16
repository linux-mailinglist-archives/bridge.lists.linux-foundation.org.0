Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDE7704A5B
	for <lists.bridge@lfdr.de>; Tue, 16 May 2023 12:21:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F41B460FB2;
	Tue, 16 May 2023 10:21:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F41B460FB2
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256 header.s=selector2 header.b=neAB8OZp
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L5q-wxb1XFKc; Tue, 16 May 2023 10:21:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 7807B60F15;
	Tue, 16 May 2023 10:21:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7807B60F15
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1785AC008A;
	Tue, 16 May 2023 10:21:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 05D2DC002A
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 10:21:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B3FEB41763
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 10:21:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B3FEB41763
Authentication-Results: smtp4.osuosl.org; dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=neAB8OZp
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hVyBmLf6w6lJ for <bridge@lists.linux-foundation.org>;
 Tue, 16 May 2023 10:21:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6235E4170B
Received: from EUR02-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur02on20631.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe12::631])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6235E4170B
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 10:21:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cQ2MOyGHEAsCdoWVN0lwPqRRqDKIG8izkiRuSD+U1yz8I5Qd81LoYGwdnvZEUfYto8J3soagZV9LfZmBilRwSYSkc21HRDaVgy2ySAxugGh2qKF9/OP82AnvX2jon0dxEJve7gkLqEyW9w9pSJILXEoOj4IlojVCD398NLwDWzy+cC8AtESc1gufxP6WzdVkS2F46MJu1wEHjNgqn4iMbbfPkvfNRlvBkAgjcrKBXkFv0ZBsJnYL58bmHrouppv0L8bHfGAl5Uev2JUCW0llqDNjjB8MA+FFIGJ9/zvJCkgIhEZboJImee8y7RunL1TTnoPd8x7j6gzdAi0TlEkJUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ohJGSY14DRrbFq2x0nTI34lERLeMvdwFerb37tNaFeU=;
 b=T+KP08WapQllvVtxKY3QP3xVbRT4PlWKCWM5nsm+0xwTQ4/EBhN1HFJyNA2Ijls+0nGS2v4Y/N3ej8U1Yj6DNRn/KpKydw6WEAvyRo8PFstZjNKfzKwOAFZrn8ZchIBrCwyymUnXkeeuy5yj6AU1BQ9w10l/brX6NcrnlUxkINlj20sWuPhSfAKTs7EqDoEwGykDoFWGCP8GI7cF3KWnZ2piv+YzTVv2HZ7oKZddv6N7CvQlhRqMcgXt/U+m0LWRLoDBPL+8SzG+NGTSoDqMpUvoz1cbROPGbKAU4If3PpXS4VI77xYQZ8fEPoeYfZ37R5mf7/xov04W4LUUs4EIKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ohJGSY14DRrbFq2x0nTI34lERLeMvdwFerb37tNaFeU=;
 b=neAB8OZpYbTdDXHHd2Feq66Xl1wp5ktH3VLsWHjOR1GUIzXVxTvFFw//R9oiNd+JzW5g59OAxrr0sK+KUow+UA/3LcflX2KZ8JEgp7UBvaM8Whf3CLhiYYJq52ovHgIQZJbssxl2wk75tcnyRImSb2g7Bxv0GAMs8Ur50O/6b2k=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by DB9PR04MB8267.eurprd04.prod.outlook.com (2603:10a6:10:24b::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.33; Tue, 16 May
 2023 10:21:45 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::b027:17aa:e5f5:4fea]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::b027:17aa:e5f5:4fea%5]) with mapi id 15.20.6387.032; Tue, 16 May 2023
 10:21:45 +0000
Date: Tue, 16 May 2023 13:21:41 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Nikolay Aleksandrov <razor@blackwall.org>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <20230516102141.w75yh6pdo53ufjur@skbuf>
References: <20230515085046.4457-1-jnixdorf-oss@avm.de>
 <a1d13117-a0c5-d06e-86b7-eacf4811102f@blackwall.org>
 <ZGNEk3F8mcT7nNdB@u-jnixdorf.ads.avm.de>
 <f899f032-b726-7b6d-953d-c7f3f98744ca@blackwall.org>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f899f032-b726-7b6d-953d-c7f3f98744ca@blackwall.org>
X-ClientProxiedBy: VI1PR0501CA0009.eurprd05.prod.outlook.com
 (2603:10a6:800:92::19) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|DB9PR04MB8267:EE_
X-MS-Office365-Filtering-Correlation-Id: a66f6020-8910-4380-2dd0-08db55f75962
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8HbcGbZoXvO3fif/4uokfWteNwDrTK28iElcPou+2asXf+geb64dn/koyRMdyneu80P9YJiyi8eUR5wnZivW7mHZ1zDa13XHUERMkSrQLZEDwGr9m0rB6TPkrTMyhkQErwEULm0s5TNSzlTSfKe18/ZvWHR7VjEIQ3qsd9wekyHK7p6ZlAnKBoZrQprCGCu2q8ztCxb6CEN8A7slyR9RFXTRGd0+lNbGRUhoyNBAf+hQB1Mdbk4pEsLxDSbttrKeXFQ3OfJZOZmqa76G7R+TOLDreGoFLOlDdGhWJi2KV8weSFNBxra+mLOzk5EHlM0ezQo4MhCVbectqfmj2d760V1ql1xLn4xo+XiiK05ENQlIkanPxd/S01DgAssZydWt/paWn+wi7uc6Nd4Dckj5UnmOvsp4EgwMPsfA89eVO79lm0vRlVr2wZW85cgkrTuFNE2iikLGPE9rtJPk5nzxJWofnVeAuhIYTnWZ8vXrwNXUmBEwMI3+JNCRz3ne1Yv/dKYUvrCLH56kVEEsryUwFEXF4skCkP/mkFpnJuarGTaV06QbiDDQddEgwNEb7WCokPCqdcpPcs1kOHUSBcQUFg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(4636009)(396003)(39860400002)(136003)(346002)(366004)(376002)(451199021)(6486002)(6666004)(966005)(54906003)(478600001)(41300700001)(33716001)(9686003)(83380400001)(86362001)(6512007)(6506007)(110136005)(1076003)(186003)(66946007)(26005)(66556008)(66476007)(316002)(7416002)(8676002)(8936002)(5660300002)(4326008)(44832011)(2906002)(38100700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9Q6ApiVatXI6K/l6ZZ3+9iUJU6lBP6K4sXAJXTPruPI3bazAOHBVpnIVJrD3?=
 =?us-ascii?Q?Mtc9Yqwn2oKMWaAQnzli9Es7LJh/5VORjcJDsr/oIjiznbUNniaBZSpk1xwb?=
 =?us-ascii?Q?xiIO6bMSKb+SsdyXnlcParznMwmlmZiqFFn9Gmdlje3cvk/eDnKqEHD1nzPV?=
 =?us-ascii?Q?7OkgLpxXmfBuZg1NJPzRIuR0gaMcF+RXHn689RKQPEYc252+mYC/DsjgosEM?=
 =?us-ascii?Q?RrQf3j2QKfEyhZTvFjicZYiMjYfN4ieC1AVwmzLFIwUcsxZB02Cdfb5xijnQ?=
 =?us-ascii?Q?uqJVENlRRepgRQSGDgxjP3IPLm8QfoGoX4l3YcZLmOo58Y43seWaqSZXt2qG?=
 =?us-ascii?Q?CfO52oxWoMxfj38dMWveT0D8Zi3kG/LAKX3sLd3IPKBPNqrgFCvLuwOBvNJs?=
 =?us-ascii?Q?gjAEZr6hi8Dt/ogRHMIgawBwdRkJ4GNz6Eb3PgLe364j4TyuVTVxEnN98Gsa?=
 =?us-ascii?Q?8frg7WNxpMDhrk5Bo3YPeT2XUatOpiIqU89EGzpPnZO+pBPZZvC3NbarLykr?=
 =?us-ascii?Q?0/r5zr60UYFv9JNutxBM4sBdOxsfsPht8Cp6hnvomOz6tFkrdlSDhLFHdOXc?=
 =?us-ascii?Q?d6FeS5ZE7GF2jz7gEVJSN6D2xqc0CkchecXiOTRQSmcg6pp6Xigta0HwpcVG?=
 =?us-ascii?Q?4DjLV2PWP3fXBNjfGx8TteVqxB707tBysX/ppuD/HUi5025B8RKYwq3KpUOS?=
 =?us-ascii?Q?gVo8UKvXYWCMgIvjx1KohsrbbBKjrV/SNf7R25/DEaWwLjY2kfTqipTAW7/p?=
 =?us-ascii?Q?411jdwSlnx36eXLjAQXuPdMBuCVE0tUTCkhHe4+UJFr26JwW1/KA4Rj9wCXu?=
 =?us-ascii?Q?41OdFImrL5uS0sEMv2m6X+MVcasH4bWFcAW1RUUevk2OjD7n9n60Xflszp/4?=
 =?us-ascii?Q?lBckW/ru8gCr/3BlQV4PCC8gB7G9BY8uCO9ssITDHqR7TNz6emT44E3hoVEW?=
 =?us-ascii?Q?Rr21mqIOQRm1fN2jivGrMBrpnDMji0rNQW3RTYBdOXujOKo2ZlI3PXfo3U6J?=
 =?us-ascii?Q?URS9E2ZACVocq9zAdlazsZs6dil9mGre8BwSbvNE0JjE5Z2LUNzJl2ZJzux3?=
 =?us-ascii?Q?7y5xcBwg+n19SrrDa3ZkS8E6z82MsZnTezX9aD1mSlz43btc/yU/f80egxPs?=
 =?us-ascii?Q?M5twkrdbxPJp18knw2QmSghr0BzJnB4BLkKmjIgL7Xfw1uXTs16H6oTR5blL?=
 =?us-ascii?Q?0m0eIdkNC+nIf5bMC1gBt+H2SCk/nwJijxlnDtaphRzwZciq/Bx7Cut1A2Sl?=
 =?us-ascii?Q?IBSKAxe2PZkedZnExfrGcD/Ni3wJYbZVmclVB5Mb0YDmFcA+dw/YbRnD7tic?=
 =?us-ascii?Q?YMU5PCZ5Idjz+ShtdCpfw//8EvN+GX8Q0gv71OVZ0HXru8/BFE9XwtRklTjy?=
 =?us-ascii?Q?SWitfjxK7VUGKantAbp9q+0b+DpIhi1zdjkIcn2qKPrrr+3mcCjysQ6g/n6c?=
 =?us-ascii?Q?4a531OO4b3Be2jmLDnBokD4bTqIGIyPk24KgrSiiWZXafX5andgzhNf898BN?=
 =?us-ascii?Q?PJXk1oDShXYe1ayKPaRT6EZTQT8APOiF3PMwCGZy5VfOG2/hvVsNj0yX5XQz?=
 =?us-ascii?Q?s3U2b1+7s9If4nXoTYzoR0HzZeDpJRWIz7wPgYjEblZXSGi3kKUzS6xtUBnY?=
 =?us-ascii?Q?Ug=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a66f6020-8910-4380-2dd0-08db55f75962
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2023 10:21:44.9820 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HATB5gdDSvTC7MK2Hvvvj1has2/ALa4cWE2KPFHGJt/Jn18/x+Dn/iwoHnrmHxlbaB2AD/4Ao6sJ8cGFWiKTCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB8267
Cc: Johannes Nixdorf <jnixdorf-oss@avm.de>, netdev@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 1/2] bridge: Add a limit on FDB entries
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

Hi,

On Tue, May 16, 2023 at 11:56:41AM +0300, Nikolay Aleksandrov wrote:
> Hmm.. perhaps we can add a flag mask of entries to count. Initially it can be
> only dynamic entries. We should include more people in this discussion (+CC Ido and Vladimir).
> Switchdev folks might have more specific requirements and restrictions, so it'd be nice to get
> their input as well.

I have some other things to do until I can take a closer look at this
discussion, but in principle, switchdev drivers will likely want to
impose their own limit on FDB entries because the hardware itself is
inherently limited in size, so I'm thinking there should be another way
for the software bridge to be informed about this limit other than UAPI.
Which ports that limit should affect (think bridging between ports of
different switches with different FDB sizes) I don't know. If we only
consider switchdev, FDB limits should probably be per hwdom.

Also, in terms of static vs dynamic limits, I've seen hardware
implementations where static FDB entries go to a different FDB table
compared to dynamic ones (Microchip KSZ DSA switches), implementations
where static partitioning between static and dynamic FDB entries is
possible but configurable, and implementations where they all consume
from the shared space and you'd have to evict a dynamic entry to install
a static one. So it's hard to really say what's the size. That, plus not
to mention, many hardware FDBs are not fully associative, and due to
hash collisions, you may be unable to install an entry in the 4-way
associative bin where its {MAC,VID} hash says it should go, even though
the FDB at large is not full.

It sounds sexy to take switchdev into consideration, but I'm not really
sure what we want. Something flexible to cater for the above, probably.
This discussion should probably be merged with:
https://lore.kernel.org/netdev/20230324144917.32lnpgtw5auuyovy@skbuf/T/#ma600839815582ca61886e83ba533b1dfbe447557
so I'm CCing Oleksij too, since he probably knows better than me what he
wants.

In the thread with DSA trace events, there also was a short talk about
user space theoretically being able to infer FDB sizes and utilization
degree based on instrumenting with ftrace, which is something we wouldn't
like to have to maintain. So I'm adding the DSA maintainers too, since
there is interest for agreeing on a different API.
https://lore.kernel.org/netdev/2f150ad4-34f4-4af9-b3ce-c1aff208ec7e@lunn.ch/T/#mfa895245fd012e8f66db784fa568109dba396aa7
