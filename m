Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A813568AECB
	for <lists.bridge@lfdr.de>; Sun,  5 Feb 2023 09:03:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A6B1A41729;
	Sun,  5 Feb 2023 08:03:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6B1A41729
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=corigine.onmicrosoft.com header.i=@corigine.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-corigine-onmicrosoft-com header.b=JDaGpm+L
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id asg7tcI7Nvty; Sun,  5 Feb 2023 08:03:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id C38BC4181C;
	Sun,  5 Feb 2023 08:03:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C38BC4181C
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 58C34C0033;
	Sun,  5 Feb 2023 08:03:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8BE2EC002B
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 08:20:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 675C841058
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 08:20:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 675C841058
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=JDaGpm+L
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rLKLFVnqu956 for <bridge@lists.linux-foundation.org>;
 Fri,  3 Feb 2023 08:20:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1C33400CB
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on20730.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe5a::730])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C1C33400CB
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 08:20:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UbLQM7e9PM5KFjEsqBPd9QM2xtUgzHZZX9h92KAqR2IUCLhhbYRDvH3jeAepPA3PkK7SHerJSn3mpRK4YRuQNjJhvnwEJ0+8a57/6nBviXnQe7sksjIBLFv/ZPAHu8i8AME4ZdQePxsAl7rT+p21SLS9MXWPTRAvaaLx0pTHmYRqtl8CenDIqxnRwoqbtic4v1bejbjsaYajAgvfa5I01PfosRXc9r8BKeJtcH92VckAdPBuR807XuXjM9hafy+vfXTu9dNG9tIJjVjC5FMxmCIUbKYj4dD6guM6RZLtN6vtfKkOCmEI00SryeEqf3bB+ONSCkhfazxVUypmFRuMFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zi/ZoGN1SblsS/jhCzhzSMKV09ufYuVioFiWZkglVTc=;
 b=G1lR7+Q9rgZgylOmamORe6/m3NXEWBDy/Itih2x0qFtG33KGG70WCnMxo8QhxqJWhSMMajgLYkAJTApWqW4NPaoRZ7X/6Gmxr5H4x80o23bBG/iL24BibGDdKFWwEdNkZyVjxvz9Kt7FidMbT6W08Mzr1qOmhdf47hBd1Qet+f6Zx/J+rY6+DvLIp0v9aoUxeyI7mAa5sZgOHPJr5flaq27exfPahJ+Pt3ArkzNiSWOfJaUmvBulbtYaXhcBb0F2MUjN5/9Gfz4XBvlcGS/w1y1mdVkk0InAFcCssNJWodDs2qqPywQIYkwm0xm9a7ka0iAiudr9fQUql4F3pDjzkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zi/ZoGN1SblsS/jhCzhzSMKV09ufYuVioFiWZkglVTc=;
 b=JDaGpm+Ln2IYzhv4JR4GRXpx12NELGAuhAc2bHdmJIkkB3Vnr50MuLdccrI301kti3oT8KCiXa1WMq3/NAvpjgbuUY25p98I/+wHvwB5eOG3ov28Qw8VlhH/ot8J/2p6QkWkbm6nF5pauZpfay1PYtgGKzTseQxNBi5nY+SRxXQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by PH0PR13MB5298.namprd13.prod.outlook.com (2603:10b6:510:f6::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.27; Fri, 3 Feb
 2023 08:20:31 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb5c:910f:3730:fd65]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb5c:910f:3730:fd65%5]) with mapi id 15.20.6064.027; Fri, 3 Feb 2023
 08:20:31 +0000
Date: Fri, 3 Feb 2023 09:20:22 +0100
From: Simon Horman <simon.horman@corigine.com>
To: netdev@kapio-technology.com
Message-ID: <Y9zDxlwSn1EfCTba@corigine.com>
References: <20230130173429.3577450-1-netdev@kapio-technology.com>
 <20230130173429.3577450-6-netdev@kapio-technology.com>
 <Y9lkXlyXg1d1D0j3@corigine.com>
 <9b12275969a204739ccfab972d90f20f@kapio-technology.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9b12275969a204739ccfab972d90f20f@kapio-technology.com>
X-ClientProxiedBy: AM8P190CA0030.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:219::35) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|PH0PR13MB5298:EE_
X-MS-Office365-Filtering-Correlation-Id: de344ee4-52b5-4b9f-a72c-08db05bf838f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ApYdw2Hs8jwB8MzLgmQZRghtZjn5WeqSz5KVUIb/K149LW64HjmXyDnLjK1JFT9w6i4MTlq6LDI0fuuTuXWq2JKwjwZKm/QoMzdiWCtV/KUU2xNgglg7pgUHo/W4sfjINDF0cQKhdqWqSmRbjh3gdIx/laEpvaM6KjUGsTD37KnLcqkup2W6nZelabxD+ukktuNyOFh1MVEcT9bAd9UL/ERYVpgWXBupAqu46fkf3veMItg96WeCvwWufcdq5liTaY/pEhtKBizY7R6bflaTwjB6j46ht+1HsrS8If8VDNHWWO/ZAgW7aT0kVyp9Sh6LFfggVgTn5tXNfhy/5E1tzNPpzT8UC+qTMemP1jAkmp/b5JnUcVNlGRvY0M3k1VxG0Tr2khxldXQR4Q7udUcg43vEwy7BcTXKoS2Yslpa33bBXsLwJnGYMB1qvDplweFIQEOQEOBYD8Phjk0lTIRQAjdKUIJHd1UskkWKn8+u+gMeYHWyPrL0U3C9nSOkNF+oryYfuJsUiZrIFcQsQfcAqSc64qSynodz+Q9B368+4FHd4XIO4g//zCiWj2PYwER3BAtCwX3hq5IXrPn3pRVnm2kCVCVIBVYDS5m2sTFl/E6vmZUmryef/3YFiPKICb8OxZ4MY+qlSvOwGy7wmr8qMVx9UuTVkK/ucKVUnxwCyPd9Isa93sHJWCre+bmcsqCW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(4636009)(376002)(396003)(39840400004)(136003)(366004)(346002)(451199018)(2616005)(83380400001)(38100700002)(8676002)(66946007)(6916009)(8936002)(44832011)(66476007)(66556008)(41300700001)(7416002)(5660300002)(86362001)(7406005)(2906002)(4326008)(478600001)(6486002)(6506007)(6666004)(186003)(316002)(54906003)(53546011)(36756003)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?n9qJg8cHfeRmKhZsgfXL1Zmdj0t5ymgBEuBpQ1NgGgBT30upkLV7Ey0/JqCy?=
 =?us-ascii?Q?BrUGQUff8hM0QXJgTLwHXyK5bXWVVXrhKzZKkGlpm2QsVhOSs0kQx5Xknoeg?=
 =?us-ascii?Q?Gd7CnTTJzx4wgFr/whfb720pEqH5+eWPWnTOFuZgRbN5/GlTrIEJXLeYDT4+?=
 =?us-ascii?Q?Dp39oI0DLIq8IASvMp4DJVeI7nYvhkhUTk2ilB8ejevgbPHjF6NFguJZjPXu?=
 =?us-ascii?Q?hrBXOkE0FGJQyhBKxr7EkMMsA1u2cAvFK1WcvFEwha0L99reliavAzw7zKzw?=
 =?us-ascii?Q?DZUxNu+i++nUgniNEkTMdflbT0BYyB/vuv/QIYJHljO/uk0Y3DB579oUbK7F?=
 =?us-ascii?Q?M8s2ii++oMzri9s1DyY3paa8/HJ2Aw5W90ftFAXeymbop6IbpC9C0WgOfWPx?=
 =?us-ascii?Q?rcs8PvJ9qnxTViRyBlQRTfmVunNrwCAdeDI6qY9Hmd4BxlXmS2784izaZa6q?=
 =?us-ascii?Q?WIwXWP/W9EXyxnsae/fD6FZdng528r91t84qBfcAherFd+293PIS1uejwJen?=
 =?us-ascii?Q?CuNF/+R4kX9xbsxenhKYrkgdjHEZaa/+KvpCna5+jZkYNr2ZtJzqGnWV0FW4?=
 =?us-ascii?Q?5vIWD/K8bQARV2Iz7YnpUYrwXRrmSNsbrGL2ugrezT5zraCIHKOfqaiC0m9V?=
 =?us-ascii?Q?JcU7+2M5kcyDuxcKKfAnvcJToDgGj2XGpSX/GPkqNbtMUvs5ErCn1kfkNGza?=
 =?us-ascii?Q?p+jpMpHFTSzDAlVCUChMlRpXH+RgDuWAuJv+dQ4U6S5p4fzEiNADDUCqrvb+?=
 =?us-ascii?Q?jhW0vGJ4ty4gitP73cs6jGEePYI0ZdIndlpVhq/Lr8PKWs+cRINOrh5J/TVO?=
 =?us-ascii?Q?IHFvR+cxmpWuKZRc6vsDkI6cPkfHoc1sAZ9vBuuxU9kC0pXNzhvZIEfbbAiy?=
 =?us-ascii?Q?N6xN2l6IdcZXscD3vTRLlxmDmAm9aIfMbwjABqYRQY8PgbEjJiHtSG/KFIqi?=
 =?us-ascii?Q?M+rC3SXt4g0TWgbEVcEjZJ/xKL/dcov1iXNEOg1HZUQh4DQs59wFul6wSByY?=
 =?us-ascii?Q?hk5Q/F+dhj9MVfsDcZWOPoiG83ZV9VHD6Wmq1ba9lZKJkcirkPZbq4/XMhrI?=
 =?us-ascii?Q?105aL1UF7pgHeYHny8qxWJ2v+JEcy55TtsuyVipZH7l/oRVOmnhptYwz4P/R?=
 =?us-ascii?Q?BkskLc++dX0dSaQI9CboUvKtY0i5S1wq07kmIgr6ZXnnroEWYufmop8xhY1w?=
 =?us-ascii?Q?CNrbBhrx7j/mSFX6cHKx+Lauc623dtfei3VTBzOXMtHSaKU0bvisAB/BlU2J?=
 =?us-ascii?Q?eP28BlfU6c70jQigalngecqCvAcrarjqnVwevUiUJ9fF1o/UqnhlvaAZMXOz?=
 =?us-ascii?Q?avGWZZ1KTDtYEB3mz02TuHzvZq+fcWKiJOkPda3Bm1tyIAfBg/Jtk8uNWiUl?=
 =?us-ascii?Q?1t13Jzbs1eSrmi+QAYu7o9SCkjGIyMCUaQ/+5P/dLQfEVErWuwXGqQ4ivEGW?=
 =?us-ascii?Q?NsSUQ6/MBgYJGvyiYSZABQ7eECtjwoCGXdu6UqGrjigPqX4peiGa29mHsXmE?=
 =?us-ascii?Q?HRn2owLm3Wfcm0YKH83tQlQxDtaz6CNyx7B39XwOs1/FglwhlEvk3EkG6cPS?=
 =?us-ascii?Q?mwaJMrZGkfLY39aFw3dKRMLIXBQkXpyeH7el/oSff1eT/wCBCH3msfwWJrxk?=
 =?us-ascii?Q?774yh9Ge/KvPSZ2SpQFjkI4wIYDMIvL2Kit/iEIbAQrzcoP4qQjoTOejxrTM?=
 =?us-ascii?Q?kizvBA=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de344ee4-52b5-4b9f-a72c-08db05bf838f
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2023 08:20:30.9043 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XYro6aVegkvx34SfFcGoVH8o/PMw8F/ZXKI0qFb/5JdgJZ/FydnTDBs9+sfJ/VCB/leqImWD3Rm05DN9MosMHxKK7Bjb77ybmVuT0MSYwe0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR13MB5298
X-Mailman-Approved-At: Sun, 05 Feb 2023 08:03:44 +0000
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Russell King <linux@armlinux.org.uk>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 =?utf-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>,
 Christian Marangi <ansuelsmth@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, netdev@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET SWITCH DRIVER"
 <UNGLinuxDriver@microchip.com>,
 "open list:RENESAS RZ/N1 A5PSW SWITCH DRIVER"
 <linux-renesas-soc@vger.kernel.org>, Vladimir Oltean <olteanv@gmail.com>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 5/5] net: dsa: mv88e6xxx:
 implementation of dynamic ATU entries
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

On Thu, Feb 02, 2023 at 06:00:00PM +0100, netdev@kapio-technology.com wrote:
> On 2023-01-31 19:56, Simon Horman wrote:
> > > --- a/drivers/net/dsa/mv88e6xxx/chip.c
> > > +++ b/drivers/net/dsa/mv88e6xxx/chip.c
> > > @@ -42,6 +42,7 @@
> > >  #include "ptp.h"
> > >  #include "serdes.h"
> > >  #include "smi.h"
> > > +#include "switchdev.h"
> > > 
> > >  static void assert_reg_lock(struct mv88e6xxx_chip *chip)
> > >  {
> > > @@ -2726,18 +2727,25 @@ static int mv88e6xxx_port_fdb_add(struct
> > > dsa_switch *ds, int port,
> > >  				  const unsigned char *addr, u16 vid,
> > >  				  u16 fdb_flags, struct dsa_db db)
> > >  {
> > > +	bool is_dynamic = !!(fdb_flags & DSA_FDB_FLAG_DYNAMIC);
> > >  	struct mv88e6xxx_chip *chip = ds->priv;
> > > +	u8 state;
> > >  	int err;
> > > 
> > > -	/* Ignore entries with flags set */
> > > -	if (fdb_flags)
> > > -		return 0;
> > > +	state = MV88E6XXX_G1_ATU_DATA_STATE_UC_STATIC;
> > > +	if (is_dynamic)
> > > +		state = MV88E6XXX_G1_ATU_DATA_STATE_UC_AGE_7_NEWEST;
> > 
> > What if flags other than DSA_FDB_FLAG_DYNAMIC are set (in future)?
> 
> They will have to be caught and handled here if there is support for it,
> e.g. something like...
> 
> else if (someflag)
>         dosomething();
> 
> For now only one flag will actually be set and they are mutually exclusive,
> as they will not make sense together with the potential flags I know, but
> that can change at some time of course.

Yes, I see that is workable. I do feel that checking for other flags would
be a bit more robust. But as you say, there are none. So whichever
approach you prefer is fine by me.

> > 
> > > +	else
> > > +		if (fdb_flags)
> > 
> > nit: else if (fdb_flags)
> > 
> > > +			return 0;
> > > 
> > 
> > ...
