Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC99A5FE0B9
	for <lists.bridge@lfdr.de>; Thu, 13 Oct 2022 20:14:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29973827CA;
	Thu, 13 Oct 2022 18:14:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29973827CA
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=JCiiWns9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jcARBFWVvV0t; Thu, 13 Oct 2022 18:14:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 99D5083A47;
	Thu, 13 Oct 2022 18:14:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99D5083A47
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 371A4C007C;
	Thu, 13 Oct 2022 18:14:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0043DC002D
 for <bridge@lists.linux-foundation.org>; Thu, 13 Oct 2022 18:14:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D64584037E
 for <bridge@lists.linux-foundation.org>; Thu, 13 Oct 2022 18:14:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D64584037E
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=JCiiWns9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2PCLv0pykuXW for <bridge@lists.linux-foundation.org>;
 Thu, 13 Oct 2022 18:13:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 714A640158
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2048.outbound.protection.outlook.com [40.107.244.48])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 714A640158
 for <bridge@lists.linux-foundation.org>; Thu, 13 Oct 2022 18:13:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bu6VDtHDyzaNov8SY1Wr5Jxi/ojQ8SkaZAjEO1LJK+VmJNf/XBVH2gfO+yeF0+umk/QWBTtqPXjPX2ySkFGXfrqJwkBDocRbAm8TiJetmaIfLSNGbu3K+r01JImnfZa6KHKB/st3+ZmoSuyWKc4Yihh0IMJqcqQozy9Z65S79QyByH+h1DTXmzxS3vSDOC/x/oetlPrWpE4RNa4ypcXSuXJBBESBPcn7qx1VksGhWdfDZCAYOOgCnscwjd3hKZzxF3K8XgQU4F0gzIG9nxVJbPqBrfFQ4tkXjCo7h3r8VpN825ZIt7dXaD+5VdQrJFpShIgah/Ob7d8BYCdTQU0kzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XedxsMWNS3R97E2u0y/azOBtQq3/ET+ktmx8XyMZ93Q=;
 b=RXH4wG3T+ozZw5dLb6jZG+O1jkV1eQCEMdBNpbuaJHdUqrQM/5hLXCHeKvc593NBSYlmbMN5PC5flLJm2yb4TElTOhPTmIbleiHTcTiSsbgZ/MeaUmz38ruG/kWKrV4aYa+7Kmtxjq6qyuBAO/XwAgU2ZCO/Fyv+IFDP9rPXXGviHXcXjXlwnHX7/tvaQs/nDnbDPiODFSX8hTYilFSYXfThlCcMF4vTg19FSWlJS4Fk0305giJ1393VBPnbsPsZzpM4ik925jCMbqZNSByLqKHL1ZrFSJCP9N52VpE/oIOUundgTvkmvs47qsqJ2D57gophLaWVwpzr1brhZuQekA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XedxsMWNS3R97E2u0y/azOBtQq3/ET+ktmx8XyMZ93Q=;
 b=JCiiWns9gnhjVAAZGVjytlpsdHkcW4s4fLAV+2kcgBXqxyAT/LGKaxF23NX8fhnZv5ynTPBOztIvjA4MYMmGBse+pxwVm1aTBuHsxtojEsDuk4lpt1zVU+5QYcvPtkpNho4Bn4f4JtRWFu2flK/7+eM5YAwfsqpbp/0AwXfzTEw+Q5+T/y7D9UoDSikRrEP2z/v1FSGZi0fw3YnbSL0fPZhAciA8QK07Z1mLTz8Jkm6Ro0PI95OhF2gJAYt6e1CSk8IiQZ1oP6ljdTWskTNOose51IsEcTj6RazfEHR1Y5ow8sxVYsFriflcnAbEi2xh6EecBYsya4cTaEvoaCqvVQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by BL1PR12MB5361.namprd12.prod.outlook.com (2603:10b6:208:31f::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26; Thu, 13 Oct
 2022 18:13:56 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e%6]) with mapi id 15.20.5676.031; Thu, 13 Oct 2022
 18:13:56 +0000
Date: Thu, 13 Oct 2022 21:13:50 +0300
To: netdev@kapio-technology.com
Message-ID: <Y0hVXgqsihknFOG7@shredder>
References: <20221009174052.1927483-1-netdev@kapio-technology.com>
 <20221009174052.1927483-10-netdev@kapio-technology.com>
 <21f799c5a7a79e2e4b111a95fff6fe3d@kapio-technology.com>
 <Y0ggn5SZnw+4SGLC@shredder>
 <46112084313969f9a6dfdea9fe52b4b1@kapio-technology.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <46112084313969f9a6dfdea9fe52b4b1@kapio-technology.com>
X-ClientProxiedBy: VI1PR08CA0124.eurprd08.prod.outlook.com
 (2603:10a6:800:d4::26) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|BL1PR12MB5361:EE_
X-MS-Office365-Filtering-Correlation-Id: e1cc25c5-b682-43c0-5671-08daad46b14f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /P1waPLLrsR2WRVmRwXOBBStrMPZxeF1ZBPxgaxr16x4jBeQu6HYKWJdU1lw/CwWS3tkjnsFr79/0EAZNCLvjvGZisCRSD1KSOpBlduqzKKdtdccv26e6shddJQvrGqIeXrpJbDcWR9vI7cMrKWChP/7qsHx/IUNzzj5DrYDESz9WkiWemxMDdgFBVgtnHb2aA0GuJ2hjEGzfdYwbM3AxyfeOqM9sUeEbEbZ4h3e9B7TmYlCH+17ZMwxQrDc6VkvMNfBNPSTlVeKiKqdHzTDG1e0RlmrJEKUh/E2LT8+a4my3ZmuUZwwRkKcjciyOsHBdy9BLgBk77qaP8IkPMVTU21Fc2CcHIj+EJg83QwvY0+OvTPOT8QQ+xJAS8Hg6OiHkOFVmy8gQec7fi6g0QieHxUi/UVtOOH0VfDS2Gth7LLkNsT/Ffe96yfVIae0WquLEJnEuyE2sf+GJFVIurgnyuf6LZQ8T+S1ePSnH8IwFMae7Xg5tI1rT7jYyXVDuuSxqumTEZcSPRZJQH5D4IAYg1fWaqNSI4C0iHDQipeVUNeJ4QaZPrGJInLwdK8TiOYLmC7xB1lzyOq+pDA6M/bzNdGNZU0OemAXj8PH7SiH1l2nVe14EyICCfVJh1fixJpKfHSSlz94TUlFq0/qacFjjXxq8l0xHAuUgCIGaT3xZSyJkENM1OJOpVz0gJ/LeLQltduRZIesf8I4vu44M9kW6w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(7916004)(346002)(136003)(39860400002)(376002)(366004)(396003)(451199015)(7416002)(5660300002)(7406005)(6506007)(41300700001)(9686003)(6512007)(186003)(26005)(8936002)(2906002)(33716001)(38100700002)(558084003)(86362001)(83380400001)(478600001)(316002)(6486002)(6916009)(54906003)(66946007)(4326008)(66556008)(66476007)(8676002)(6666004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YWL8tCkXRJLDnZohqgveiMNIhgCxw8oqlH5MXR4dLLqdZdlR9Q1014bqawow?=
 =?us-ascii?Q?v0sAr6dbymOqncgzPVTT/zFBsS5/CZibnX17h9Ah7Uk9Jv9gBI/mKaM/Hmt2?=
 =?us-ascii?Q?QMl932bwZHK8vOctJ1IX13pi1oi33DZXVvvlUpEg9/QKK3XQClTDu5tfNWBC?=
 =?us-ascii?Q?pSZ0Yd0h1cXiBZCeF52De6Klybzr5a0dOmzVU7zGmbO/N1CsxdvJD3wcAFII?=
 =?us-ascii?Q?xx/SjMS0bEA7eO5v9SLyIrAPadrM2AbJvkARhmGCeQLS6RLBDwtBDzcARjey?=
 =?us-ascii?Q?0/TsBR6DsOglBJ8ezePbkXuzMTaKdI71ayRT5iV/Ovw0LkDxDKjIFSrhaYlP?=
 =?us-ascii?Q?fseCDYXq2Fanvu3vTn2n7bqlcv9kPOwjruNWeePpEOlplFDYr9/8qMEM74Nj?=
 =?us-ascii?Q?Luo+47e1IsQgkQTk3aKPLhL2IF06PI61h5qFG2MjFwQld2LfE4sPCmNXTyz1?=
 =?us-ascii?Q?ZWQ952jHshdynF2dVke46ck5A9ovAPKP+ebYmqJFs3fDJw2NBTNV2tvr7AQB?=
 =?us-ascii?Q?avitENpbxKWQxhKB57sV4+exAY9YRJ9RwQvkY6pthxeIV57XyNg6OkNWSROw?=
 =?us-ascii?Q?6N1Vjxp+N5vXGA9NDdPIocbcygntyshc8keQd2PSM1iyvSMB1Yw61UcfMkXl?=
 =?us-ascii?Q?IR6c4CQLzoQpRcTnmkFUhirqh3bvk+sYTonbRy3LPpq6iz9m6v5ocR2YWeYz?=
 =?us-ascii?Q?+D2U3O1P8sZfXcfDpXTG3d+ub/ls8iacU335GkDaMPSEBXQBnpYUUzT91buj?=
 =?us-ascii?Q?jXlgSvLgPnSKUYh0mG6BMJINFbk7rgtbhB28nwvaBRQEm3lBoqTUDedNYRUK?=
 =?us-ascii?Q?yeMkYulgT0bwlGIbUvrFFPqVmzYmZpSRIG2RLEU6m9m+62WxdB0QhpaY2phb?=
 =?us-ascii?Q?NmrYJNL/IskY90wNfNLoMCZ2cAWsbPG9+a7kMaZWLOyjshZrWukFSSuy2rn4?=
 =?us-ascii?Q?+SZik7+Ngqt7St/juUahivbiEwj1K33bkDw873xaTRVTLohfkRhUmgpJC9CX?=
 =?us-ascii?Q?PRVPyWdekbKWyCbYegZoPARVdXLQhGV9KLGGTkHASegftfmOh/vtovlDj4Pp?=
 =?us-ascii?Q?AOq82PdCZ5w8Tf84zAeRkLYEs/lRhOAFq7fvBxwDZuBKGRlV9Z9xnWPuC/bl?=
 =?us-ascii?Q?IRMHbTG0o8kYr7AIt7qi89u6sqkkQmrlKOA87+yUKXDkOxZAClmkMRdFq88U?=
 =?us-ascii?Q?GbRhGEDRJXSY/KlVKC+Qv7a5cg0HTP42GgJxtbQrTkPdIG2PXRbMzZ9NtxcY?=
 =?us-ascii?Q?vybz89JvvcjgQDHHVgjCddcVOTGHT4I5yvKMBwZqu20Oxogkxxm3hZIIQ0CL?=
 =?us-ascii?Q?MA5erp2+mixTxdRcCqYNs/hNBudpJc+MU1bmXgE+biflHzw6Ms4zK/Gvherg?=
 =?us-ascii?Q?+GzuLTgx9tKMCXO9Bhfr+xSYkIB/jvc1Ci4g5rV9zqPATtbIIUCcA8PZYZY3?=
 =?us-ascii?Q?8dAlVeC1lDs8KN7dem4PHVq6wu6bAnRzmJWrWLfiMLCee+sKzaav6i+CdShf?=
 =?us-ascii?Q?CjQ03vkcZKkFzq3cEulLkYakvewGxjSA1+Z5LaqqnfZqxVy+kRFGapERVPSZ?=
 =?us-ascii?Q?N10KRndbGGJWDeFcoqrgmyGU7+N+A+csg4hQQUKS?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1cc25c5-b682-43c0-5671-08daad46b14f
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2022 18:13:56.2616 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JudJAXPB+U9XnKloG6k0J2thBAOr4P27YrcHcoufdvQs2ZE5huV26qbHOUhEr1Iv3AdHqm+/4YW00fcoaREFBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5361
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Joachim Wiberg <troglobit@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Florent Fourcot <florent.fourcot@wifirst.fr>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Amit Cohen <amcohen@nvidia.com>, Christian Marangi <ansuelsmth@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Schultz <schultz.hans@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 Petr Machata <petrm@nvidia.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Vladimir Oltean <olteanv@gmail.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v7 net-next 9/9] selftests: forwarding: add
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

On Thu, Oct 13, 2022 at 05:17:42PM +0200, netdev@kapio-technology.com wrote:
> What is the schedule for net-next to be open (I guess that it is closed as
> of now)?

After the merge window closes and 6.1-rc1 is released. Probably on
Monday.
