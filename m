Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FBAF596970
	for <lists.bridge@lfdr.de>; Wed, 17 Aug 2022 08:22:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F56741981;
	Wed, 17 Aug 2022 06:21:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F56741981
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=UNz3qqV/
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kQU_Du1SZxvp; Wed, 17 Aug 2022 06:21:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id D474441977;
	Wed, 17 Aug 2022 06:21:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D474441977
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 63814C0078;
	Wed, 17 Aug 2022 06:21:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ED78CC002D
 for <bridge@lists.linux-foundation.org>; Wed, 17 Aug 2022 06:21:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8F2B141972
 for <bridge@lists.linux-foundation.org>; Wed, 17 Aug 2022 06:21:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F2B141972
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q3ssNxWG_9cD for <bridge@lists.linux-foundation.org>;
 Wed, 17 Aug 2022 06:21:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 074744196C
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2077.outbound.protection.outlook.com [40.107.223.77])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 074744196C
 for <bridge@lists.linux-foundation.org>; Wed, 17 Aug 2022 06:21:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SeQHqAZxxd4Unpuw4b+Ie9tSSGO9rfYVj+5wPH/HkfrTS9QkH4y2YPLtXWa1DMUIS0zENyjQj9QuZwLOO0sZbCsS/EmXs/yWWEhDRfdiKxotxCxX1d+rxcoFL7gYVN5DldnIx2I3IHPAn4oujMG613kj8uiNXYn/fjPOSUydAAumhWY2HbUixyqFL0echGczZ/2Ls0OcQ0vcaEMzedMVaLQeKLHd7Va8WnLOjfpmtCl0wIRESFowtPp8eeRcXFgX2pdPsqetb90OL6ayix7gH4XPsCvMwFj6gw2CThs0RwwK1rQrTs+Cg5oSmMJvUYdGUHTLw/qKJvQZIdsflhdqXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2G4esfYTxHELQd8ei6tadwaUmwXAofdum1wcfAogHWU=;
 b=BYJErOgmFhsa+jw+9pyBYSpGAlkRk/HoGDCkNd06mjLD+Wtk8ZR5UeCoJSQTxE2trbBo9IaPa+NCmYI9y62cb1qPz5oFJwInJ+84Sx20C69Cv7yuBP3OImynw7kdOkvoT2GBC4ZNRHQMDyaW4m+FDV7b3xY4UF8exwysoqrurRAgl8pp/fRkjHsfhKY8dbycuTPkzGP9pqFO0lZDFwLoPF4CanUny8w4qJUNqch07bvEcg6iFcyuVklu8cJBA3P/GQB/9qIGYx2BX4g/wxDe84dcOtsiCTos7WnAI+2KjtnU4zHCX9hGq4Cc1jqXAWWCMrejNVN3Y8aBW2vNZLm8Uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2G4esfYTxHELQd8ei6tadwaUmwXAofdum1wcfAogHWU=;
 b=UNz3qqV/oXl3P3J4mgCzuv2XV2Iy9n8SHRPgEcllHDj078gOKXy7JPMI6Xm0jeoAS4j8nNY4nuyK3iXx+DDhPInqYFjC39ymIO/eYhXsf0PQ8kZKZVw9tj1lboLHrkIJnvBjAuhJjZ9ZjZ5qHAisg5U39klpFNt8XwPLRgU/ocB1di43mLGyCRLBhvCzS8ZY2k8Fg6wsFyTVzcqfSFFLVwHXqCUw9t2FW8uLSkUBaL+Ee5XI+67CE9T1KmnNDBBqMQxraiBD+zNkWBetjwAmOr6cidQYKdf2CpFp3pPpeBWQMNzVHMK0c3zpSNigg980pqVbQTPhwEpnjrojDC9MHA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from IA1PR12MB6163.namprd12.prod.outlook.com (2603:10b6:208:3e9::22)
 by BY5PR12MB4002.namprd12.prod.outlook.com (2603:10b6:a03:1ad::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.10; Wed, 17 Aug
 2022 06:21:49 +0000
Received: from IA1PR12MB6163.namprd12.prod.outlook.com
 ([fe80::a52c:c6f5:f9f4:59cc]) by IA1PR12MB6163.namprd12.prod.outlook.com
 ([fe80::a52c:c6f5:f9f4:59cc%5]) with mapi id 15.20.5504.027; Wed, 17 Aug 2022
 06:21:49 +0000
Date: Wed, 17 Aug 2022 09:21:44 +0300
To: netdev@kapio-technology.com
Message-ID: <YvyI+NrYOXAJHzQZ@shredder>
References: <20220708115624.rrjzjtidlhcqczjv@skbuf>
 <723e2995314b41ff323272536ef27341@kapio-technology.com>
 <YsqPWK67U0+Iw2Ru@shredder>
 <d3f674dc6b4f92f2fda3601685c78ced@kapio-technology.com>
 <Ys69DiAwT0Md+6ai@shredder>
 <79683d9cf122e22b66b5da3bbbb0ee1f@kapio-technology.com>
 <YvIm+OvXvxbH6POv@shredder>
 <6c6fe135ce7b5b118289dc370135b0d3@kapio-technology.com>
 <YvNcitNnyFxTw8bs@shredder>
 <a1fc2c378816489e15995eb481c318eb@kapio-technology.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a1fc2c378816489e15995eb481c318eb@kapio-technology.com>
X-ClientProxiedBy: AS9PR06CA0066.eurprd06.prod.outlook.com
 (2603:10a6:20b:464::11) To IA1PR12MB6163.namprd12.prod.outlook.com
 (2603:10b6:208:3e9::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: db89820b-0b47-49e7-eaa6-08da8018c489
X-MS-TrafficTypeDiagnostic: BY5PR12MB4002:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vX6i1aNtNvj2IgXm0CRkaBLWiJqmWhHpM+oxG6AOilkn2j/6Vorer6QBbba3TelgEydj8/SBgdWGnIpSAPHPE1AsGiBv7mc4pNIWtqDEDESSTONfZLXK/OMjzuG/p/F42IEjCT3oyLpWShOme8RIeGwLJhkLxO0SZczH8AdfHOCjpwCjEdZB88fFQrd4vQuR3m3/zK+F7fs4bnOCkNIrBAwtBNl7vLICANg+ax4eVhRMDGUM4DTuPcPJcp3o1p6kb3+78G8fw87uTp1dYeRTbODUY9NBoDi+Ye4vvzjtisPfoW0P7h8/jRDgLpnP3EMpwe0g1PDQbs7e4raETubNZD2YBMRYTFQqeWfQFl7lFJriwuoYj1b9p+7/iOBU5t7WoUeb6HXbc1a51GHEyYAcm3nKDgQo2SrwiJQJAoJOGKMVIgeVZCsPrbhfiYqNBmyAU/8g0ieoBsyxKSUA2OZFefV+YUgSc/VmVwK2dHEbVQFoqZdJ3yFwRX85SXClwuQNTse1xDGOsxnd7A6sic60KG8su/sOQ+sQya930Of+8AUhYWjcVi/OGlnkFMgP9SNbBUz2SKpGWLa58gjEoQq2131eRONszEvkWiZEg6xPZ2Vnrzt0SXOE7tTF2dQzCs6lMtv6rjfb5laNrN8m+4ghLdT/C4mNn5U4gYqzWpNLsFHqUn7qtId5hWHmHGqJ0mus+dl1JfRbCRXlatEJMy6ilwC7Pt/0RsbgKQHkikFmKxpsd76XWPjN1Ucy2pDyVHWzeNchUcUoVn52tzSMoa0r9aZU5EzFTQv3t3j9nzuLmWk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR12MB6163.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(4636009)(7916004)(366004)(136003)(376002)(396003)(39860400002)(346002)(2906002)(38100700002)(7416002)(186003)(83380400001)(4326008)(54906003)(6666004)(9686003)(26005)(86362001)(6512007)(8936002)(41300700001)(5660300002)(6506007)(53546011)(6916009)(8676002)(478600001)(66476007)(6486002)(33716001)(316002)(66556008)(66946007)(67856001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BclCIUlnXkB28kS+By+MPyJdpnxsoN4lyM0RfHDET+62ZYymw3B/fqHes3Rj?=
 =?us-ascii?Q?KevMSHkTMlp+tscxg0FYBy2A4TzrufYyGOdw66frQoX1Xin9h7hPCsP/3ZQw?=
 =?us-ascii?Q?DKvw6+nEcaWeL1NgQimWmNVo3l3Xa5DuKj4e7souO9yzn4OwWZFawKlA4ssv?=
 =?us-ascii?Q?G5Qohxz/rnZloEi5zhNEd2iAQW1lkXbnMtu+pnXFBbhddRwo0gaRWrE5ONgg?=
 =?us-ascii?Q?qXgMilmgpj4qg+laX/0V1tNX5i/aj4829gUr+HKzLCEqg1Yhe2I2/UhHQda3?=
 =?us-ascii?Q?iM7p872ryDjHXd51/OkYmPhp+8+lWCSzv6tsBmcjBvjrqeskR2IQt/KCHQLC?=
 =?us-ascii?Q?vgq4JNstVHMepmPROJ2YfUyRbV0O4CkW1w9FkqRGZCwRzmZeHGu145ki9ozL?=
 =?us-ascii?Q?QUediSn+BjPs/5wHOXIuHNqBkIsN6hPnO9NekHYvlJOE6jkQwSEkU4Z7pDNZ?=
 =?us-ascii?Q?jC2LKaYxHA7HEv4hcZkLDigSjgRe0NlVGEC9xLdhAksDT6V2mTUi1uGmr6d7?=
 =?us-ascii?Q?9Kwm7O5mrekcQG/84KJsPH9xtmeiWqJqZhfWJTKYnvNUJOFFC1MytNNFoMOT?=
 =?us-ascii?Q?C6v15BQqyDxnBBKKT6o4fGwz70JMCx/b8iSjxWjRiZKlil3e3KdKG5uuHCGD?=
 =?us-ascii?Q?+peS/x13MmKjacM8pAC1svQkjPCfjPlV/85iUWiwT7ypMzKD/An0vPDsLMUq?=
 =?us-ascii?Q?3ALXNwdA8SKLlqKKkxD/8LIujuq3djrZregXXAyEQ2a43HSqlT1lIjQsu++q?=
 =?us-ascii?Q?vzrZVvUiSRpqtCSI7cIGcX/CW0U1USyJjNXTnYPw4kUpY00I2kqIO/uxKD/X?=
 =?us-ascii?Q?xOD3Inf0BODPO/rejT7dguBpdiw7F/YSwOmzbQcruQBIe5u5IS3Z3Ii5Gm78?=
 =?us-ascii?Q?YvDPgP6zd47Umc1+x9DRc/PYjvSK20eO1u7DpxgztFTMYvH2LFaygyzuQGQ1?=
 =?us-ascii?Q?wZUJ2bbguzI6lDiRvb1fhed1O2Pjb2En3Mc1/fn81CCIo5aRDqkga7RnorXJ?=
 =?us-ascii?Q?f3KzHZX/CKxvrQgLDBzFgTWDM8v0yNqmwClpYQ1EFBB76f1L2fNJS48A8mq3?=
 =?us-ascii?Q?PrgAHsc93qE1BaH1WdVknOn/wKWu0eauLXxYI7C0piFSdNUNZ9fBebHil2D1?=
 =?us-ascii?Q?hbW4x5x2xVDETXHlJ4HobcH5UKDxec65W0oSwW8tYBM5TrF5l47LE7VY/6Ju?=
 =?us-ascii?Q?vkXSakBLROpHwR85TirqYNhj6ARQ5ThVEjrBfjmRGDzwwmMegCCxNGQjt31B?=
 =?us-ascii?Q?9hBvIqf+0KI0ahnOGdhawYbk5LtMlmdLO4wOgwyutHIDR+dYuJizOk1WxUYk?=
 =?us-ascii?Q?MmVee0YX76tDg0qO2Y2/FlkowJA0kJdYjNVKuIcrfh8+DDwl59ntNqAgNOSH?=
 =?us-ascii?Q?4o1Hx+bLpYAqhsg0NqqrzZtQgnBnaxQYfsYcdyJwIyZGgI/yev/deJxfbaPm?=
 =?us-ascii?Q?Hb3UfjMFXNIxpouBuBfoXO0Hk9t+gyRj22Jp7F2yhWbKu4HrHvWZ3SXfPv11?=
 =?us-ascii?Q?XZkP2HOVmbT7mdSqxqcFrWSDd2VlAywqi9ewJ0gQTipuykBzYjEC66cLWEUw?=
 =?us-ascii?Q?47Tw+CKkCfShmIMFDCl0RqjSj2Ogl3pmzcxgbZ9m?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db89820b-0b47-49e7-eaa6-08da8018c489
X-MS-Exchange-CrossTenant-AuthSource: IA1PR12MB6163.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 06:21:49.3164 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eJXvVF9U5rbG8jjrsM8RaM/I0yXuQ/GWRkFaPH4b/GcL7fVZYk235eKJmyknzhwpPP3btL/rIBekVMKW0UP+pw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4002
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v4 net-next 3/6] drivers: net: dsa: add locked
 fdb entry flag to drivers
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

On Tue, Aug 16, 2022 at 09:51:32AM +0200, netdev@kapio-technology.com wrote:
> On 2022-08-10 09:21, Ido Schimmel wrote:
> > > >
> > > > 1. It discards packets with matching DMAC, regardless of ingress port. I
> > > > read the document [1] you linked to in a different reply and could not
> > > > find anything against this approach, so this might be fine or at least
> > > > not very significant.
> > > >
> > > > Note that this means that "locked" entries need to be notified to device
> > > > drivers so that they will install a matching entry in the HW FDB.
> > > 
> 
> I just want to be completely sure as what should be done in version 5 with
> locked entries from the bridge, as - if I should implement it so that they
> are sent to all the drivers, and the drivers then ignore them if they don't
> need to take action? (for the mv88e6xxx driver, it does not need them and
> can ignore but other drivers might need.)

Yes, I think that would be best. At least when mlxsw starts supporting
MAB it will need to program the locked entry as an FDB with discard
action.

To be clear, I'm aware that all drivers other than mv88e6xxx currently
forbid a port from being locked, making it unlikely that they will
receive such notifications, but if you do it now then we will not need
more changes in the bridge when other drivers gain support for
802.1X/MAB.
