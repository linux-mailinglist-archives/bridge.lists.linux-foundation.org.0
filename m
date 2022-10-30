Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE9D612913
	for <lists.bridge@lfdr.de>; Sun, 30 Oct 2022 09:23:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5362760A83;
	Sun, 30 Oct 2022 08:23:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5362760A83
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=JRlHWesI
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tmFAcJbvKMUs; Sun, 30 Oct 2022 08:23:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id ED4C260A7D;
	Sun, 30 Oct 2022 08:23:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED4C260A7D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 91677C007B;
	Sun, 30 Oct 2022 08:23:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 54407C002D
 for <bridge@lists.linux-foundation.org>; Sun, 30 Oct 2022 08:23:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 13AF34028D
 for <bridge@lists.linux-foundation.org>; Sun, 30 Oct 2022 08:23:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 13AF34028D
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=JRlHWesI
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nZN15bUajRSH for <bridge@lists.linux-foundation.org>;
 Sun, 30 Oct 2022 08:23:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1AA5C401A3
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2077.outbound.protection.outlook.com [40.107.94.77])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1AA5C401A3
 for <bridge@lists.linux-foundation.org>; Sun, 30 Oct 2022 08:23:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ji9hYDvBWvdp7U7EiNpF8Kdhhg7zUGxfjDg6QME4Io08p+30pGMJ3SQRRudiRHXvVk4Xu/jZ7IRqKFkrVjHiF9epi2amj53wj8f8OVqRachljvbf3DRuwMj5GML23gsHCkVMRHNEVCzEOtpeEekvsMeCkYRS2xWRnoFvN/hyZ/cZBy3lUfPQvUGo2FJlJYS83io7rUod+4BnLcL2IxWJd3SX/e/bg0AGRMdOar9Q2te44ZV8SFD5ezO1Etsmlsoce+pEL7NoN1KRwNacVpBBVxNdTopTNh4vAvsPW88GOnQQZ1Fq8NdFDBRNMh0GRaDWr+Hj0O/gnGwnpZhBt4QVKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5W7kjvHdwvT+Q0H95MTNdl9DQrBeiIa/BIT+KGAPY4A=;
 b=ih3MmvWPDggA/d4BtFbmPg+4YCIcUJedGR4d6Aa6gp6wAIJ/iXQl7EzUXNkgq0SOc0sXfFMXlYncDkS6HfCFkXo+mFtBFWc/iqV7evK+1h4SvA1qFICnF+/GhVnf1K0V/Pi22cZwGVPwyOT0n4Cl+Owyw2fVxDiS2Qce4WDgy2/YjATiawoIg4WeP3cyQhSbWgwTt1f2fahW22H096uc6ZrDqiIwEyDEkBlN78kXRkFVZP5bWXGm86dJFmBKyc3UjI27xfHOEOwBpiVDneRUFvJP1aNxpSm1PuJ4KUFZmqd+bZYS+HNnbTRZHuU8PZfZVO+EBccYaCyOIpVxaB4Nnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5W7kjvHdwvT+Q0H95MTNdl9DQrBeiIa/BIT+KGAPY4A=;
 b=JRlHWesI/ehikDK4Z8Rkq7QTbP/cgksS6wXWLrOXL4QLe1ebqqodbK6r3jsiHOjaCHb+a9pRuE4WXllh+Nwn3dKpprKJdDpQ0qe1J7VOn3NuAO7PzFIkLhW4qokIjw92berNAb4R3nkpdgeri8NIzxH8CjkDKQQiNOhp546oQq5iScKrNG6kTxNu7N94c+UO76n4t8ZNtgSoTQ7ginkrKdsOfdrZKnzF8s0tE8KQSmS5SMo2FE/fIKd8G+0xNYwLOdBK1ZSKM1avmiesENt7BWbLv6MmDE/0SkdTSQkgvGXFPjpeoH5feHyUmTutwlMgbwlcZ5f3aNeD+ijPzlQzpg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by SN7PR12MB6888.namprd12.prod.outlook.com (2603:10b6:806:260::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.15; Sun, 30 Oct
 2022 08:23:12 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::3409:6c36:1a7f:846e]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::3409:6c36:1a7f:846e%4]) with mapi id 15.20.5769.019; Sun, 30 Oct 2022
 08:23:12 +0000
Date: Sun, 30 Oct 2022 10:23:07 +0200
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <Y140a2DqcCaT/5uL@shredder>
References: <20221025100024.1287157-1-idosch@nvidia.com>
 <20221025100024.1287157-1-idosch@nvidia.com>
 <20221025100024.1287157-11-idosch@nvidia.com>
 <20221025100024.1287157-11-idosch@nvidia.com>
 <20221027233939.x5jtqwiic2kmwonk@skbuf>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221027233939.x5jtqwiic2kmwonk@skbuf>
X-ClientProxiedBy: FR3P281CA0039.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::11) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|SN7PR12MB6888:EE_
X-MS-Office365-Filtering-Correlation-Id: 2854789f-e7d2-45e7-7771-08daba4ffc28
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hqG9tkQxZ+iuDcRP6gvyvLlhUqfjHDFVMXxU6/JGEBpCRz85iq0xj/CvC79jJlFcPRvY/xvGJ730fF0Me/6vVYdjUxQTVSwZysvbIJVxgVluUNxETA85jM/nb5ma5KvAh8PaTAhRTWvwDpKKULqi+FY9Vh1SmyQzBlcIZSG8W5WfexajcsJSHxqwFwv/jpAQDIi66MYH6ptEWUUdqiBtjkuC+zuk+FgAfLHh6Oj5djlh5rOejMkN0O2JkUpsq51V372JMkZMQxiF2KwIn/ZXN48OCNbYklwsxLwgQ0Zx2YRdPsZ8Sued7eP8UNLWu61VurPvae71bTavC1TQUC99PdmbfJoc0Rfu2Z4fGdfGf7b5UN2Cc33760/a7q/n/xdlZYFxWLs0vgGYx2p8nmmbVb8Wny/NVrZKV3lv761oY98gI25WubpVR/SfuOZedd+6g3ZNnQx3i4a2UZyBMiYrAaM9VuVkvDubAx0W5fm9XqOgsYnKunjNHdaHSPOA5kdwhu5xGcbrSSV1KwI8z6nAAeDIqLpePlfKug34GK7M97baAb4jCiE2khmTY53htrquaYcU8bRiHcQO+ZdfVJLe7nBRCIk/V4zJpuJJzH86W8mBM8UTPy6xGwFDd4ACcC6ywcSjJBnj95nBzRGI8085P/tNS8w/i+P62Tde6l8evXBjRs/3j0cj/m8hI8bz59yN75Wqidn5ART7pM3pqP9zSA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(4636009)(346002)(136003)(366004)(396003)(39860400002)(376002)(451199015)(6486002)(86362001)(38100700002)(33716001)(6506007)(9686003)(186003)(83380400001)(26005)(478600001)(6666004)(107886003)(66946007)(7416002)(2906002)(15650500001)(41300700001)(8936002)(5660300002)(6916009)(316002)(66476007)(6512007)(66556008)(8676002)(54906003)(4326008);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GU3GiLJ+EPnPc4B5mRpz+cvV+mSQEPJ6DO3tOc13rF+FqeV9wGYieOO0ep9x?=
 =?us-ascii?Q?h0WjVXps6uyap8DWcYcOo+6XMYuwfQKEfGhjOy8mv97b/2ZeEvLHW7+4sz+1?=
 =?us-ascii?Q?x6mlY31HHT2gFeYQ2g1lAit36LvF3p/l37q3QFk3oHIRGMSsHlNlx9Nv58IV?=
 =?us-ascii?Q?oZXOmwIe2A+CQkR09yFocQCTsXdZqXjnvqvxVvWuUjY/nwLV7tu4GP8AWsKs?=
 =?us-ascii?Q?GAmcRgCqjX3m9VLNpPNEcYfp4hmqvcQQF/iws+e9ghPp+sA1ViaFHiZCvfSH?=
 =?us-ascii?Q?/aviKyc6iGGs9yyop9QFmmyDZudmiGNLjsMkweRCISeloBYdDCKf5A3j4URs?=
 =?us-ascii?Q?mfN58xQxprhxIWjhvKtwLgjsOpMtcrWzYO4UbeRPZfQdSpAeNMat2kgXjcm0?=
 =?us-ascii?Q?JfI+ahdNQ25Ksqnj1pGYcntFcrK5I8/zF0cc1Ee5Wz4WaLz3FXm2oo32sQ0p?=
 =?us-ascii?Q?15NihCUheshGh4HfmSiaxBvVKa0ONAJkuoZlw1ZlRj5kh039va/Tv48ze3oH?=
 =?us-ascii?Q?JVqTZVR8Q24aNwgCHmEEKXeGA1PstiXVix8BhZVsu/2gGA5R6cZd3dj5wks+?=
 =?us-ascii?Q?hnhl1kHjgPfyehujPghnU4tRHRC5m1Xtla9lGo3vF1k88dNcfcWO8NATNDao?=
 =?us-ascii?Q?3La54Kms8CrYOFgiXO9S3rgrhdMZth2HwquCwrDMUsAOXPoxmk0xqneSarMS?=
 =?us-ascii?Q?uoDlICWBMm8CzpPZl3R5GQVHD3ehb5AYMapHYSeSSvb1tHJZTQvUgemzHu0W?=
 =?us-ascii?Q?Jhq/SDi3qtfiEUNXxHLwnty0tM66CswUw3ZWOD1uvMqKbAeSMu/8mOXPGGWZ?=
 =?us-ascii?Q?tY5y793YUfFNMlNmAsDvzsViS0OOQHY0vismsVZQioA5ZVylKDOCaP3rpL9g?=
 =?us-ascii?Q?I4NJvuuUkgfARuLkNIup2aCqwTOqpc0ox3lh1ujseNwRmymCtHHpiXqjZc/B?=
 =?us-ascii?Q?YbJYWkbJ/MT63vFNu1ysUVu0IcAIjoumhLB+vfc60XrbtMi8HAx6b0cq7ElB?=
 =?us-ascii?Q?WmaFQTnZleENxV/LH91haWdQSZW2JrPvYu5D6MMg3TuA9dqdQ1myCap/h5z7?=
 =?us-ascii?Q?y1XClsAByNIasFJMktw60a52lmdbjjhEIfzKg642F4HzN1IJC9zOF2RuUhHU?=
 =?us-ascii?Q?z4JQN1CFc7tCI7qsAH7x0w7pZFaIuHZBsccr0BL87YBpv0SBsn88e5RoZTD9?=
 =?us-ascii?Q?L7fbD2RgrXRK5ng129r6tiW77aBCFqpEdldr0/f3RCQe5GL72fdpxsJVL3Hk?=
 =?us-ascii?Q?0K5kMgiCq3bcy+1VWKYrrCi6jzPmvfBl4PpSeTcjWZsDi8YY2vNFAcr2g9+x?=
 =?us-ascii?Q?OfDOrs/nB0FUHaUjkiTvKPCp3H1tn1m2fExkHdn8npTAcHDQppI738AZ2iri?=
 =?us-ascii?Q?kAxY1hHnQ3Btob3JQzHtno+QgdIc3pwI4HVmdM0Hk/7dz0sNHSHFsW0JOQnw?=
 =?us-ascii?Q?cCrzxLZvetz5LK7hsz7l3cJ61Fxmr+x9gIcmRlSdQDsIAV5X/25z3K/Lhhem?=
 =?us-ascii?Q?A71Cx3orSaTtq4WaorPplA4akQLRVH90N3khvw/a3CkPIqenJOFYhs6yXvuj?=
 =?us-ascii?Q?dRNlV7Mbp2ZaPO+QPPuGCFd0OIl/vjaatccc4RSZ?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2854789f-e7d2-45e7-7771-08daba4ffc28
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2022 08:23:12.3758 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eZGsNAABSp5my+2s01kgkegHHiyWZeZ5GE4yVHX2mLzfgLYX+RPF4FaBO7Vjx70eiE1JssgNQ51uBghl4jyYxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB6888
Cc: "petrm@nvidia.com" <petrm@nvidia.com>,
 "ivecera@redhat.com" <ivecera@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "razor@blackwall.org" <razor@blackwall.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "roopa@nvidia.com" <roopa@nvidia.com>,
 "netdev@kapio-technology.com" <netdev@kapio-technology.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "mlxsw@nvidia.com" <mlxsw@nvidia.com>, "jiri@nvidia.com" <jiri@nvidia.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Subject: Re: [Bridge] [RFC PATCH net-next 10/16] mlxsw: spectrum_switchdev:
 Add support for locked FDB notifications
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

On Thu, Oct 27, 2022 at 11:39:40PM +0000, Vladimir Oltean wrote:
> On Tue, Oct 25, 2022 at 01:00:18PM +0300, Ido Schimmel wrote:
> > In Spectrum, learning happens in parallel to the security checks.
> > Therefore, regardless of the result of the security checks, a learning
> > notification will be generated by the device and polled later on by the
> > driver.
> > 
> > Currently, the driver reacts to learning notifications by programming
> > corresponding FDB entries to the device. When a port is locked (i.e.,
> > has security checks enabled), this can no longer happen, as otherwise
> > any host will blindly gain authorization.
> > 
> > Instead, notify the learned entry as a locked entry to the bridge driver
> > that will in turn notify it to user space, in case MAB is enabled. User
> > space can then decide to authorize the host by clearing the "locked"
> > flag, which will cause the entry to be programmed to the device.
> > 
> > Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> > ---
> 
> So for mlxsw, the hardware/driver always gets learning notifications
> if learning is enabled (and regardless of MAB being enabled; with the
> mention that BR_PORT_MAB implies BR_LEARNING and so, with MAB, these
> notifications always come), and the driver always calls SWITCHDEV_FDB_ADD_TO_BRIDGE,
> letting the bridge figure out if it should create a BR_FDB_LOCKED entry
> or to throw the notification away?

Yes, correct.

> 
> Hans' case is different; he needs to configure the HW differently
> (MAB is more resource intensive). I suppose at some point, in his patch
> series, he will need to also offload BR_PORT_MAB, something which you
> didn't need. Ok.
> 
> The thing is that it will become tricky to know, when adding BR_PORT_MAB
> to BR_PORT_FLAGS_HW_OFFLOAD, which drivers can offload MAB and which
> can't, without some prior knowledge. For example, Hans will need to
> patch mlxsw_sp_port_attr_br_pre_flags_set() to not reject BR_PORT_MAB,
> even if mlxsw will need to do nothing based on the flag, right?

Right. I'm quite reluctant to add the MAB flag to
BR_PORT_FLAGS_HW_OFFLOAD as part of this patchset for the simple reason
that it is not really needed. I'm not worried about someone adding it
later when it is actually needed. We will probably catch the omission
during code review. Worst case, we have a selftest that will break,
notifying us that a bug fix is needed.
