Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 130DE5ABF5A
	for <lists.bridge@lfdr.de>; Sat,  3 Sep 2022 16:27:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ADA3D408DD;
	Sat,  3 Sep 2022 14:27:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ADA3D408DD
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=ZunKZ7m1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vEKo8XAMWGw7; Sat,  3 Sep 2022 14:27:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id F369F409F3;
	Sat,  3 Sep 2022 14:27:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F369F409F3
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 80653C007C;
	Sat,  3 Sep 2022 14:27:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1AD86C002D
 for <bridge@lists.linux-foundation.org>; Sat,  3 Sep 2022 14:27:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D8D9D408D2
 for <bridge@lists.linux-foundation.org>; Sat,  3 Sep 2022 14:27:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D8D9D408D2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GapD_BW74jIb for <bridge@lists.linux-foundation.org>;
 Sat,  3 Sep 2022 14:27:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2EE9340283
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2073.outbound.protection.outlook.com [40.107.220.73])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2EE9340283
 for <bridge@lists.linux-foundation.org>; Sat,  3 Sep 2022 14:27:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J3BqDwWV5jndyHorQLlkuBTqMARP5mtjkiaEdP4G5bl6bBj3gx7bSJtcUGkBvam2ygEEbBkXa4hbMVlFGvCQZc9tZ8V2MJm2OkLZz0cxsbxJ50DW39i2b0eImfY2fn6SWRNH/dIfFikvjh2Iz66KMemu5tOPcwpz2Vl4jSfVA2VVLoQ6Nr0ZOkAt393EeCUZ1DLFD6ee428TyKWs0wEHRAWlGMntqwrL6kJscpqWm0pAS+sQo16whSrIRQ21+XkMo8Aw0LDc5TCHvmp5/UI7oAJQv4sb0xJTUKH7F6J4mOGffQrlzuAqIOYbegP5ciiSFtn/1TdO1uJjfZUVQSP2EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WHAKHgWjZAOaaPp2HHLGjzbEtlsjTXqeR6A1s5GRr4c=;
 b=m8iXRwa0jXO+NJQ/NAn0nTCcyKl4NZfuAwrVHw1MwwITWVFmyp7UYy4GPHyM4mC7yNOyOXymsPn0pik+eSt/b9p4eZ4hYYLH87jsjJGSpKyhxBX8KpSAmW12LyPSwL6f7uMTcbsdOXjjTRwfjb+5ZxKsd8rhQX0yCfF1doQ/jQPpx0ezKO3vS3Tw+P26KwAYCepSAxJ8deu+2jUCZoJxe+/14bTcp3Rl1zttMuUEsaXzPNgbqrbsHKGGQipYcpyKL8N+TCuUu14nx2ipiVuE7SmILo6LM2moF7mh11cesPD7ynjZeQw6oO6eMdVjlY2DR3uUnW3bXgIUYsH3cCvHIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WHAKHgWjZAOaaPp2HHLGjzbEtlsjTXqeR6A1s5GRr4c=;
 b=ZunKZ7m1QohTUL/Ww3q/sFCuKC1YP9l0QpgkUEnwh21DBf5nDFJhToJGm7AuUUnOGKVnYUY9tfV0ma5VZr9zZjNYMpNXSvtNEIwuBSi9Z8kweiQp+sCMLDHL+S2g8YVIQs9L8OvRQ0WrQfk8DUuP+qZEhH9z7O9Bgr/jqaqQbeQUvUWjQ8KiuUxOWHhNy0pfBe/Wpp2Lsb7LNm8YHqi9HTeAkebQUNEZm3jYl9pB/Gl9i7hHHDhdk8gFc4+4e5VEzT6NxEaL8JXUOcwAMiZblCXVLjJauvfD192ebK8w37ZBniYrz1b5BLbpOQZ3Am0/7EEJUf6ytJ0vz0RgZZygSA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from PH7SPRMB0001.namprd12.prod.outlook.com (2603:10b6:510:13c::20)
 by LV2PR12MB5800.namprd12.prod.outlook.com (2603:10b6:408:178::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Sat, 3 Sep
 2022 14:27:31 +0000
Received: from PH7SPRMB0001.namprd12.prod.outlook.com
 ([fe80::3ca6:ba11:2893:980e]) by PH7SPRMB0001.namprd12.prod.outlook.com
 ([fe80::3ca6:ba11:2893:980e%6]) with mapi id 15.20.5504.025; Sat, 3 Sep 2022
 14:27:30 +0000
Date: Sat, 3 Sep 2022 17:27:24 +0300
To: netdev@kapio-technology.com
Message-ID: <YxNkTIYg5eZR6o79@shredder>
References: <20220826114538.705433-1-netdev@kapio-technology.com>
 <20220826114538.705433-2-netdev@kapio-technology.com>
 <e9eb5b72-073a-f182-13b7-37fc53611d5f@blackwall.org>
 <972663825881d135d19f9e391b2b7587@kapio-technology.com>
 <Ywzlfzns/vDDiKB1@shredder>
 <c9f474f0761f77d093db88da05d536cb@kapio-technology.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c9f474f0761f77d093db88da05d536cb@kapio-technology.com>
X-ClientProxiedBy: VI1PR04CA0083.eurprd04.prod.outlook.com
 (2603:10a6:803:64::18) To PH7SPRMB0001.namprd12.prod.outlook.com
 (2603:10b6:510:13c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ce7d7b87-cb03-4be7-e836-08da8db86f38
X-MS-TrafficTypeDiagnostic: LV2PR12MB5800:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SabiY0UnTzVKsN6PSH/NjywdRMA3RfGtbOwC1nibYIZJBOcbvAXKolMzOTWAi0GiYzsvOMHHEkkRNObczFenMwuWeM2KvCaGLjecnZ4J984Z2LAl3kVMGka7QeoDrd1XZbbkMaIe24UgjJTDKFHjG6+VGPMJlAYOG5qZx7e+HVj9I0b1EHCN/alSKZg+w+grKtPB/gPEpkcoL5AYoOX19n1DyoVZoboliTlUnexnvA5u4ztVouSZ+0RGNXC5+3lf495WN+zI5MfqIj22ZPNI8Io2flFfzjJza7s+lV8FzaXl4c+p8Y3YuHFssBNezNaYlMsKUwZSXQSj1EcMSx2MEHr24fXFAAB2wC5PJWfW7jEoPR8qhtBhjNkE9chTVdmvW1OXm/BcDJHKhEanlbQZeD8azANdckKeICcxDL8dP6LM6RZmv35s9ozEUS1aCtdr/B7i2UKmvSL6zvLJia7r6/TKvtBAinw33WF9zKA/y58ZuDUwtxgZwiTP+ePvN73a0jJ3RJ1U0JLUE7qajm9ItovFgeGvxe1iamrFcU28dVGLtlB4MUSmZ/UI7yJEGLIGRsv1FuZAESqW9OoZ4406EtDOYtl2B9lKbAD8AXpH57mFKOxYop1UjJzjr2te2ITSa1yKcck6VlJsua1Ynyfn+dRjQNf2oN2qm9VsuVnG4+o/Tbljsbq/7C05IYOxe1RK+i55ksLLE8c/41U4nKn9P8HBPQO+xg8Y4FCmjM1FUZoXiKKlrXr8gkk/I4NmAn2Z8RxoBAnBMSehZ6wx4aheNw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0001.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(4636009)(7916004)(39860400002)(376002)(346002)(136003)(396003)(366004)(7406005)(5660300002)(38100700002)(8936002)(186003)(4326008)(66556008)(66946007)(2906002)(66476007)(7416002)(86362001)(6916009)(8676002)(966005)(316002)(33716001)(6506007)(6512007)(6666004)(53546011)(83380400001)(478600001)(9686003)(54906003)(26005)(41300700001)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ze7P5EUqGM/+Kzf8ftn7A/d8R/jH3BxO3VDn0zGPhf3PxxuREvIdmcsdvD4P?=
 =?us-ascii?Q?2UrpCZpQHyAw0zAleEUuguseFNPKsj7Imgbk5qNazKTQdRJ7C0Nn/t52ZQFQ?=
 =?us-ascii?Q?NCYH81LJWtSrwkJ3Jxt3sMXHcMln7iEvwMXCzgJkhNBQ0kzkoQC/dZCxCUnh?=
 =?us-ascii?Q?OTFTDFcSj+ZkY7dOHofDu32aWxDp9Wm6XvwIFTjvZH3FnavXPTlm6LXi2ev8?=
 =?us-ascii?Q?MUG5PsajgJ0JwHrtpBiV0kD+E5j4Kq5HCOn6UaCitkXmpraFyzfBW/CyrLDc?=
 =?us-ascii?Q?UNR5gkpMXiAGk1zdBwELAy20w5NTsbfKFC6BDOD8WQR0nRN14DbliAZ1yxeA?=
 =?us-ascii?Q?ygepWyIBk57ceMVuwPky/NX9/olg3RxiyjCWCOgVMJUqZLQjYRoIkIlzIVfX?=
 =?us-ascii?Q?Vpy+8ekfOf8PDgiSSKHLoj0X5pn3N88ypSYitnC3qZ5ZIxHU8mAYAIZGi+9c?=
 =?us-ascii?Q?rvrH3MCtgj2akXjqHYqw7NRhFla/cNlxzj3q3YWMV/wxEPTL4ojut2W9wmHx?=
 =?us-ascii?Q?vAX0867SVqpIRrotHOyURSKIU8d6c1BvlTOVWwgdTQiqSxKZXMKrUUYRZO8d?=
 =?us-ascii?Q?L3WJ5pQrkHCo7c7CU+f1jKyJkDKo3a72oHwcgQx8RvjkI+8EFQ3B42ovIDlh?=
 =?us-ascii?Q?d1DMD1uXrJjd0Le5kGcAcApCESajoF3493dlz/zQiLF5gBvL5zQrVgXDoYnP?=
 =?us-ascii?Q?19l9VIs/8ZxG67Jc0y5Radifmh2/XbQNAHlCap3a3F9REscgbfBQ64Ic++3K?=
 =?us-ascii?Q?FiNcFdVizP+GS3PXZIxm67bWvRnf3mID9A5exbH1WjW6hs1OMi2c7lxX+Dyz?=
 =?us-ascii?Q?u/S6gJZhuiRWbqcopwRgPS8lHUIINMCMfAarLbXFMPF5lchynyao1ieboWN0?=
 =?us-ascii?Q?3J/dKZydoE4CVS9f9a0B7xRG4pAHyeX4qB4cgA9x30/n3vBiA8D5KITPFZCV?=
 =?us-ascii?Q?fBhA3dHV13lwU5JxOWSxiRL6mtYDdi35ImHFvOybLFBR1LZTxtCcd75859LI?=
 =?us-ascii?Q?F7801KgmIlB9AMa89gfBBWglst6BLsj2oWDCG2rHmAeQ4M0qBVgbfzvnI87N?=
 =?us-ascii?Q?8y8Pux9Ts2E1ko/ZDku/yMSH7BRVtoGHjjpgx0GpiBt5UrqOftnkO57a+LD1?=
 =?us-ascii?Q?UW3zrt6Fm/eStq8xsfo2+X0AHbQSOG8aI/L5GxISxumYXIMmznZztH2vnJVU?=
 =?us-ascii?Q?trLALW1RD3IPrkWSSuWMZ+gBZadglXQBFd6a+QsHUoZx2wD9kbPQFOLgcPAX?=
 =?us-ascii?Q?VoeIyc506976bjtXAOjWXNxkZcRtkDPNc9VS0x2ODULpD+ZquzccVyEMB46X?=
 =?us-ascii?Q?+aD93SksjG1ziWDWiJeZsi06IF3lgt9ENAdxpUpCPwjJdUdpv765bd9xBIoe?=
 =?us-ascii?Q?2NANzPGHiFm2Cm8WZLG0qWCiBpN6DrgLlHgJ0/zjl7om7s3UXHZJGqD7T1vu?=
 =?us-ascii?Q?+KNdbmPCGBnhaVnlQij3d22l78m56JhQT4ceoL0VgMe3iGDk6CT9CbDmYZPr?=
 =?us-ascii?Q?x5jNftVn6PD3Gbzzj/Xz8jk6nuGvnlI8/TrOBpi8378p5l+nPURGjKxBVq9v?=
 =?us-ascii?Q?6HqQ2/w5W82ndwBPZMYHrThLpUmoR+vYE9OTKK9Z?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce7d7b87-cb03-4be7-e836-08da8db86f38
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0001.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2022 14:27:30.8345 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vl4YXdQNRVlSblRqkMr5tvg3OJwy8TGlB8kXkgUQXEFKuaQG6F4TRucEupphAjRVv3qdCk+Ru3WbzKoz1GtBhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR12MB5800
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

On Tue, Aug 30, 2022 at 04:19:16PM +0200, netdev@kapio-technology.com wrote:
> On 2022-08-29 18:12, Ido Schimmel wrote:
> > On Mon, Aug 29, 2022 at 04:02:46PM +0200, netdev@kapio-technology.com
> > wrote:
> > > On 2022-08-27 13:30, Nikolay Aleksandrov wrote:
> > > > On 26/08/2022 14:45, Hans Schultz wrote:
> > > >
> > > > Hi,
> > > > Please add the blackhole flag in a separate patch.
> > > > A few more comments and questions below..
> > > >
> > > 
> > > Hi,
> > > if userspace is to set this flag I think I need to change stuff in
> > > rtnetlink.c, as I will need to extent struct ndmsg with a new u32
> > > entry as
> > > the old u8 flags is full.
> > 
> > You cannot extend 'struct ndmsg'. That's why 'NDA_FLAGS_EXT' was
> > introduced. See:
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=2c611ad97a82b51221bb0920cc6cac0b1d4c0e52
> > 
> > 'NTF_EXT_BLACKHOLE' belongs in 'NDA_FLAGS_EXT' like you have it now, but
> > the kernel should not reject it in br_fdb_add().
> > 
> > > Maybe this is straight forward, but I am not so sure as I don't know
> > > that
> > > code too well. Maybe someone can give me a hint...?
> 
> The question I have is if I can use nlh_flags to send the extended flags
> further on to fdb_add_entry(), where I expect to need it?

A separate argument looks cleaner to me.

> (the extended flags are u32, while nlh_flags are u16)
