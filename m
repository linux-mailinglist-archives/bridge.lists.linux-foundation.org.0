Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1C25A4435
	for <lists.bridge@lfdr.de>; Mon, 29 Aug 2022 09:52:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE6974091C;
	Mon, 29 Aug 2022 07:52:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE6974091C
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=KKJrCiC3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YXjBSc4bnTie; Mon, 29 Aug 2022 07:52:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id EEE9240901;
	Mon, 29 Aug 2022 07:52:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEE9240901
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A5A25C007B;
	Mon, 29 Aug 2022 07:52:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7D147C002D
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 07:52:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 50E0482A72
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 07:52:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 50E0482A72
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=KKJrCiC3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id doy3ZLEoQltn for <bridge@lists.linux-foundation.org>;
 Mon, 29 Aug 2022 07:52:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B44C82423
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2076.outbound.protection.outlook.com [40.107.220.76])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8B44C82423
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 07:52:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=On9GHrJ96MD9BCPz3IdXR/EPkZoHPs8GkfdDwFLrNm8FBYZ53AKqWvN77zrksazeXp4sy1IJye8wZq+nDtn4XPlHtKlX81fsvIVeG436FjVfU9YSxBwusCUIh6gpEGuWj4n4QO4tahn7HxhDm7HnOSXXhdEDzPUNb1XLb77wKtR2dMZmjr0o5Mt7OTzL+V9uz0nUpXkuVDf/pGIs+mzP4etnD+oeWNOAwjmAbgE2T0jDXlA354OeS7Qo8RHwFoMVsvt/GkzfifpJzPOc8WiR6K/NRQAW9gkBRQEO3EEzsDimo78U7EUTPY7+LFTK1alRsq77B7+vCVPTugQd1QRT1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m8rwMMTB9zTQaWTOtnzc6WEKrUXFseeLrjt7qPp2zI8=;
 b=cjKvez7SlKtIzWBtm+2K4jCSndfbYlHnm0dW/BtEbK+8g5wvASBlC13uOq9rfvyQyherhtatXX900Qj64Or26Ozd2R03Uqbi6+sr+T877WlyaNzshbExAuKeK6QfBuFMbaOZXFw7frId1g3nU6R6Mt0HWgPrfgPrrvjEwvKzAWbyuJNs4GJYCuJI7CbdNiMbu/py1R+1RD6iUcdconMBtyNowrYwdUro5jtRc80hEMD2/PixstQbSI7qnUZK5Iyt2OuSyE2/g9o7LZbDEzaI3XqINqjpQv86S74oSLuL2vneIJyX6j/Qmm9kpauPt/wofZi8gV+s/TipjIkp5vddPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m8rwMMTB9zTQaWTOtnzc6WEKrUXFseeLrjt7qPp2zI8=;
 b=KKJrCiC3TQSixBgA5loHXq8CJWVunXRZzYVlxe1ZRuxMs8oHxtKjKE85jwrTerVA3U5E5uD8DbYAqGmUp1w1NBmOFx1OjkwXpwHQw0E+ZgffxdKubm24i6db3oAVOvJEYBBJl3RBNNpuFpyzznPWxQVBXF4qvevx3c9P72kk7pS4GLyM2VI77TL6+CbRgozSuYatkFOV08/0PxI7OBSQv70wqh2YbjncEfkPcrQqX+nn0QBp8/UTPuJWmHfOcPmaSwlSPn4f4xSVaiUAgEXAbs1RIZE9Os/d//SbM6R8RuEoKHUBWYrg3rIWkIEpwhxG86Prbm6joYYM5i74MSpSqg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from PH7SPRMB0001.namprd12.prod.outlook.com (2603:10b6:510:13c::20)
 by DM6PR12MB3211.namprd12.prod.outlook.com (2603:10b6:5:15c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.19; Mon, 29 Aug
 2022 07:52:34 +0000
Received: from PH7SPRMB0001.namprd12.prod.outlook.com
 ([fe80::3ca6:ba11:2893:980e]) by PH7SPRMB0001.namprd12.prod.outlook.com
 ([fe80::3ca6:ba11:2893:980e%6]) with mapi id 15.20.5504.025; Mon, 29 Aug 2022
 07:52:33 +0000
Date: Mon, 29 Aug 2022 10:52:28 +0300
To: netdev@kapio-technology.com
Message-ID: <YwxwPJOx/n5SHZM5@shredder>
References: <20220826114538.705433-1-netdev@kapio-technology.com>
 <20220826114538.705433-2-netdev@kapio-technology.com>
 <Ywo16vHMqxxszWzX@shredder>
 <dd9a4156fe421f6be3a49f5b928ef77e@kapio-technology.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dd9a4156fe421f6be3a49f5b928ef77e@kapio-technology.com>
X-ClientProxiedBy: LO2P265CA0263.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:8a::35) To PH7SPRMB0001.namprd12.prod.outlook.com
 (2603:10b6:510:13c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ee45c079-41ce-4833-2a60-08da89936eac
X-MS-TrafficTypeDiagnostic: DM6PR12MB3211:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GtVzlpygLib/iLK/RR4tfeQR3vqRFA2lLWHWEXvWTeXzB+3ovOIF0vFV9S8lzR6L0T/msm3F0CoYT9Jk6USvuls24rcDDCkaLDzyJlsVbZOzSI29KIeZkkWYMD7h3wtRTAaNWtAgEiEVlwzKF47HTvBVVbFQNfl1JZegoXtXov1laoCZcul5iWv5C6yJf6gJz6FTYyKij5C8QaNybxeF6Do5WbAd5rj80n+PgRrCWLsrkSNODWVPsU4Vn0ghvAIrR7XudYAUePfoivS5RjyUGqZ9yiO+cbMCMUUtL9DmnC3fvb5q4hnwPumIbDSh0zBvFE8iu/g3N48mg10ZxXMYSJXqIS1mSCvQ9RoCGV4M9cLTjk6UXwxr3NBgOc1xVTV0EvB73ntfAtae73yoOUkQOhBkD7cUe0vSsu54pjKfsEQtg4bXKpWWSmcKxAoYEg0CX8CKDAS5Xf1zyk+GMPpT26iCDaGuNw8Otm15tIttM3i9kaIt4qxZuSnG7QlODBC9+5J0l+IcFDIwyT6rTVLhuKHp3WUwJkbwwhYMPxDkcpi+vnRuGmefySsSW+fvJui8A6NwQq1s+ZK1xTBNjzZov7t1PqOsllstGkzWY9h4b45N7TOB6BBhygIBmW1W3xRArajjCY4ceYh0RVhU4rxbsUfTmgll6WmBeEN/MqJN2It+lzfp6XHuSCI+gi0Ujos1Imk20tZ5nAV2qTT/qdF5nQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0001.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(4636009)(7916004)(136003)(376002)(346002)(396003)(39860400002)(366004)(8936002)(2906002)(7406005)(7416002)(66556008)(66476007)(53546011)(83380400001)(9686003)(6512007)(26005)(5660300002)(478600001)(6486002)(41300700001)(4326008)(66946007)(8676002)(186003)(316002)(6916009)(54906003)(6666004)(6506007)(86362001)(33716001)(38100700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?faizXvhhlQ5Z3CtkSJS6jNsVoI1kCMYIGsCTw1bWExKcF+aL2U3oBvCc+t1l?=
 =?us-ascii?Q?S9LfadjIsnTU0W7S7LgIYhweVe6kZ75dCzxtFg8/nByQEgYhcUjNLAzibUC0?=
 =?us-ascii?Q?O3KgCMxdUHZYRuUEm2D5LWGBOCw5ct6AqkDJftrqo8yxsC6OAUdTc5g95iFw?=
 =?us-ascii?Q?+ChtxymjO63+5DKt9S7kBSRdDQdvQzHf2SGjI7+Nt2pGn9F98Pw7o80Ih5h0?=
 =?us-ascii?Q?3PjwJnSVDpLiLDByiqkHxBl9q/jJlRDXpK6WgE4HPI4w0ybdxCVGav2xfHsD?=
 =?us-ascii?Q?1avQTntl0U+OgOvz91cjQQt8kjcMLaTjfXm6jA3KmJgDPMdOpusSnG44wmI4?=
 =?us-ascii?Q?ZCNMurLDdRLBK72ZBpU/M+Jdjv5XVcDSeslKut0qIEj7yq/mzK+pGOoMPUOQ?=
 =?us-ascii?Q?YVHp7A9oSmdwRgjEVi1AWVwfS4AiGn740hsUs5asxNQ6Rox93ZnReegAVwdN?=
 =?us-ascii?Q?nD14Rg1sxZo2lsaXMfsp16z0euq4k7/D0PCOnfePcJTFTEHRFKglhg131Rv+?=
 =?us-ascii?Q?WUAG6K9WlGO6V9CxAfuX7AXAbU8U0cz8OUuE+0yfBFIOuQMmeYh3W5rhToAp?=
 =?us-ascii?Q?LahOx9n0DYDBt426p1cYlnwP3pXC1LM7S44JpwfojbTIqgoT3r44grH6LT8t?=
 =?us-ascii?Q?hR/AGhe3Rkcbj7AaEmLryP/O068OfV37oUwzAGmTIXoGZ2pUNMQIdgexlvOr?=
 =?us-ascii?Q?hzkEf3RJZtcx+Jp7Gg98w800bRGQEx/wCLbsYEPCgd8eHYKW/DrqxzG0aKwT?=
 =?us-ascii?Q?7coU1jfgU6P/wt3TVrAeRIVaRFf/RfaV9RZL4eLIqwhVgZU+okmSdWu/9lz3?=
 =?us-ascii?Q?Ovw90x8/pnJWu98/NZ6e8g+ASISs7LH0uU7J6RAdqoMU8YAHys7L+/LJGxih?=
 =?us-ascii?Q?wb5ce4Mb0/mO36Q334eNmu1+fyIFNALn04GwhQsAj0TYfGhicNRUGGmhUrZH?=
 =?us-ascii?Q?2JFArcd9CY8migomom2ju/VnxvQlebb6h5+KQJBK6FqLb4Hv68At/qz05+ai?=
 =?us-ascii?Q?Lh6FP2fykT3afnI935QgyFdghBLUaj46OSQ0bdyPp8TTo1TWa9FYxukLxHjA?=
 =?us-ascii?Q?0P3/y1sOdNUyxApBUj6wR1YYfqA6oQY9kd//qWI//YKYLgNjX+F5uIP5Evba?=
 =?us-ascii?Q?6JGvQuPjxSk7p+3rFnYreA636ZMh8Vsb7lyyOlZsJbbzasN9lObcpimWghB/?=
 =?us-ascii?Q?wmOe7kIcBxbQFQB1bo2Y7uI86rDqUPQcwl7/mcsFmcne6pLKgNZFpzgEZV+U?=
 =?us-ascii?Q?Djm1yxdgcOj3SjCA/DT4POaoZw3RIDlNmTf+GhgZlezmNZIf9TxRAlxFt7jx?=
 =?us-ascii?Q?mO5DLHbYAFAm4ixsC86zPLSmI51qqNd1JknWrQEL96OtQaznijvCoPApMGvo?=
 =?us-ascii?Q?dGLjMt5FBMHscwfQzm2TGlD6BiBlwDRKO7VZ+BQ+dZ8X+F06O+RjZWFsxhPd?=
 =?us-ascii?Q?0eqcQZjrZl/LeqKhRKwdoohbP0EnwIPYBk5SJxxXXCXE9+nWNHoY4fwYq3Qs?=
 =?us-ascii?Q?P0u9Sb3Z7KAqqrXPO6gUAcxHzETJOR015sNwMVrIs1g/tNqOvbt5SA2PWpZn?=
 =?us-ascii?Q?V8Lz7XXyYR1VX4JC1QM2X+hl7SOLbL/BWoG2Vz02?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee45c079-41ce-4833-2a60-08da89936eac
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0001.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2022 07:52:33.8352 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZCVtgZM9liPljgryfh53CEyGnZRG3j939rQxH2uip8U8uXRXjNzrGHrMRDZl1P4H8P8SxSspvZOPV6QeZT3Dww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3211
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
From: Ido Schimmel via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Ido Schimmel <idosch@nvidia.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Sun, Aug 28, 2022 at 12:23:30PM +0200, netdev@kapio-technology.com wrote:
> On 2022-08-27 17:19, Ido Schimmel wrote:
> > On Fri, Aug 26, 2022 at 01:45:33PM +0200, Hans Schultz wrote:
> > > 
> > >  	nbp_switchdev_frame_mark(p, skb);
> > > @@ -943,6 +946,10 @@ static int br_setport(struct net_bridge_port
> > > *p, struct nlattr *tb[],
> > >  	br_set_port_flag(p, tb, IFLA_BRPORT_NEIGH_SUPPRESS,
> > > BR_NEIGH_SUPPRESS);
> > >  	br_set_port_flag(p, tb, IFLA_BRPORT_ISOLATED, BR_ISOLATED);
> > >  	br_set_port_flag(p, tb, IFLA_BRPORT_LOCKED, BR_PORT_LOCKED);
> > > +	br_set_port_flag(p, tb, IFLA_BRPORT_MAB, BR_PORT_MAB);
> > > +
> > > +	if (!(p->flags & BR_PORT_LOCKED))
> > > +		p->flags &= ~BR_PORT_MAB;
> 
> The reason for this is that I wanted it to be so that if you have MAB
> enabled (and locked of course) and unlock the port, it will automatically
> clear both flags instead of having to first disable MAB and then unlock the
> port.

User space can just do:

# bridge link set dev swp1 locked off mab off

I prefer not to push such logic into the kernel and instead fail
explicitly. I won't argue if more people are in favor.
