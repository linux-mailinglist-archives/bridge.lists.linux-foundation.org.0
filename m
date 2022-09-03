Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9625ABF65
	for <lists.bridge@lfdr.de>; Sat,  3 Sep 2022 16:47:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B877410AE;
	Sat,  3 Sep 2022 14:47:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B877410AE
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=HvDU4SjS
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f5uWk8UMIFxA; Sat,  3 Sep 2022 14:47:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 3BD25410B1;
	Sat,  3 Sep 2022 14:47:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3BD25410B1
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DF2D1C007C;
	Sat,  3 Sep 2022 14:47:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 81609C002D
 for <bridge@lists.linux-foundation.org>; Sat,  3 Sep 2022 14:47:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5266C410AE
 for <bridge@lists.linux-foundation.org>; Sat,  3 Sep 2022 14:47:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5266C410AE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5qNMxwlxvkLJ for <bridge@lists.linux-foundation.org>;
 Sat,  3 Sep 2022 14:47:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F3396409A4
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2075.outbound.protection.outlook.com [40.107.92.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F3396409A4
 for <bridge@lists.linux-foundation.org>; Sat,  3 Sep 2022 14:47:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J/nz80ptUJtdNp6fdXPYgUgYMkqdhJra7UpQv5kFl92Xuxa7YZ7kBgnBh/HlqamPXZBpLIPLm+JOsZVQsUEBUSdNIj4rgvpX/lJ8UyEyvhwielKxz2NzlMdcMI6ScSwCmKOqqczm9M7snf5c9ag1dc0ulTBAa7fQshYJ2fN9IcxvPLX3ntmh32bwSj2nDPOyIoKQxypNdyWIJ2Hnvk5LduTCxDOv8SCVDEesWypnudkXTqIaWR2ovTgNmA5drHlCHAxbBtjZK7I74bCqW60jy/HBGOlu5rkTAmFmciGxgW6kVoUSb/PnBAmmh5Vux76ZI4mEcYL+RJRwgxM2/Nsjmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=//S8YGU7HPCZ1fW1TPlMZPJ9muiJj7+Yrq8yGv8R0+o=;
 b=jr3NXCn6S6JpkV+/5KfE3N/MFIQj069goTcJfCEH4RH84SMbKzrzw3Ig0hLFsLCnFoNRXvZYXpKWD758189Ew41OVS5or16LTUJ1CrZwcF22FgRvv7PyEAIY3RGDE5fQGef76+WL2AVqV35v6Pqoj+u/qRfgq6k8fyYdBFOOUHhuMQ/nhbaLRLJy45coUN3xjpQYJoSW3JVsDUrXIEcwrrP0zRlbbovoWXl1eURL57Yf8QkHei3WwhCkUDh5WleNJDs51eIDGCGCtAnO4VOpTS8t1EfObP9KAADPZhp5y+F58R1M6D5pjv5PtSURFuC+DjaQUo5u6yWGifLOxZpkDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=//S8YGU7HPCZ1fW1TPlMZPJ9muiJj7+Yrq8yGv8R0+o=;
 b=HvDU4SjSHVcKGce6ZRYB2U1v5VsW5RaCTmC/PYtcZoRBjbLTSmOVzCcxNFMzmTh/A7GlhyXnUqSq6MGQ9LWV3XOCXGhDFyVB7Ylz4r6dFnGjT99e4lO+voHbjhc5aVHAo/gCIzjm/tB+JV0FBFuuHKA2YhyXAnpcwyuzdC3QrHqAL8+Rn9NMmVMw506lKlRMPevWh0ZBKAOhd1362kg46uQhhFiYpKTmDamWI3D6ZDYZ6/FP/lofvBik27W3OLW/UMGt7FrhOgarO82YZfv1Vkc0sJ8SVPNp4Fg63fYBmEzcqfU0rmaUsN50xUbfW+59dhe3VIn4binaXZ1RV8jpdw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from PH7SPRMB0001.namprd12.prod.outlook.com (2603:10b6:510:13c::20)
 by CH0PR12MB5234.namprd12.prod.outlook.com (2603:10b6:610:d1::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Sat, 3 Sep
 2022 14:47:33 +0000
Received: from PH7SPRMB0001.namprd12.prod.outlook.com
 ([fe80::3ca6:ba11:2893:980e]) by PH7SPRMB0001.namprd12.prod.outlook.com
 ([fe80::3ca6:ba11:2893:980e%6]) with mapi id 15.20.5504.025; Sat, 3 Sep 2022
 14:47:33 +0000
Date: Sat, 3 Sep 2022 17:47:27 +0300
To: netdev@kapio-technology.com
Message-ID: <YxNo/0+/Sbg9svid@shredder>
References: <YwpgvkojEdytzCAB@shredder>
 <7654860e4d7d43c15d482c6caeb6a773@kapio-technology.com>
 <YwxtVhlPjq+M9QMY@shredder>
 <2967ccc234bb672f5440a4b175b73768@kapio-technology.com>
 <Ywyj1VF1wlYqlHb6@shredder>
 <9e1a9eb218bbaa0d36cb98ff5d4b97d7@kapio-technology.com>
 <YwzPJ2oCYJQHOsXD@shredder>
 <69db7606896c77924c11a6c175c4b1a6@kapio-technology.com>
 <YwzjPcQjfLPk3q/k@shredder>
 <f1a17512266ac8b61444e7f0e568aca7@kapio-technology.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f1a17512266ac8b61444e7f0e568aca7@kapio-technology.com>
X-ClientProxiedBy: VI1P194CA0016.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:800:be::26) To PH7SPRMB0001.namprd12.prod.outlook.com
 (2603:10b6:510:13c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ff7a252f-a920-49ce-4bf8-08da8dbb3bb9
X-MS-TrafficTypeDiagnostic: CH0PR12MB5234:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vg4cRqWosMfdio+iuzZcynU4i0dMHKZOzD+8o0afNUj3rQlNCSS4UGSnnaPWGPCP7DPHdQPYZs2s4hYN1Nx+77U14E/cDvN/Q4LwdHpEuaS51XKitKvL8EN+TQUgJx4YL+/DxdRjW5POu0JpMjbGoS5rcMxs5/ugHHM9zTTAIQVN6OAZMfq/M4+XMXO6/i8FZl9tjrp2BgKklgiZFUB2zGLHpjWtYAkyGDFgArjXCcIU2If82NoUn4uK+alBhvwiOTnLp7bc5vgUr1oR0u6yND8VkzHZuCrde6FUnV4FmEQxRit9zy4so+/YXfhpkcJemGpuvQ6+IhfHM8eg7VhEbSpiwjI0Fsa/SEaWWhkeYlr8jYP2DeqQXVQtBX/3vMw1aeS8S8QRKEsi2d4Z0tzgqXqfsDyWIWglbaWJcY9eBwutsexqLSPeDHd8PNr6lg1c5L2fjSV9D0NEsE3NGnaJhvIOOFL5ikRVQTcaYc/Ky68l9QdhfMzeYsUVkcPHtrpDq9kHreDow8fskrcriuiXBnAWU8LF0nC1kcSQIv8uEYE60PhgDZfS6Z84A0t6ZBazVbfanqO5IWzX3Dp9KAhySQSXzZxfON7UMKkSVlFUtPSEiQEguAVSpI+HE+/ZuEvRI/CRilIJT6nMP7CgAOJs6nIngjXWExzWMWO9xXBEtm0CdCAWLzPQYUQyJ0fLlUJiNueTNxBEj4NKDgR0k5tTkQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0001.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(4636009)(366004)(39860400002)(346002)(396003)(376002)(136003)(4326008)(83380400001)(8676002)(66946007)(66476007)(66556008)(5660300002)(8936002)(7416002)(7406005)(6506007)(26005)(53546011)(6666004)(478600001)(6486002)(41300700001)(186003)(6512007)(9686003)(316002)(6916009)(86362001)(54906003)(33716001)(38100700002)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ipCueTJAd9ejXskW0/DswyC6Ay7q2FlUsOsrU6bStDshex8FvnOf6n1BDB14?=
 =?us-ascii?Q?L8dlKOCWzq/HUba/YXLHGB6y55s0X34iICfGTkpp6o6ysrEchlXVDeP6+Yg+?=
 =?us-ascii?Q?X3Oo54ftMNIKNiSOKp86av8EYxxDYdOnfbmOpeIGSAXmagbMxYwlsxMBqMEP?=
 =?us-ascii?Q?oi7uGz99hQcFzktNwr+NZhj/oOFWRC6rGWCaDC5Rp1uobylbrrOAceFlDcXg?=
 =?us-ascii?Q?Xp3yTisGld3zqhhLAWfvXqRnLPq9/KuhweF5654EL5yIA5MRrkuBjSCk0jvx?=
 =?us-ascii?Q?zT9fpI8nIWMoFru+jIb0PQZ1zdaS3ZpVtX3IIQsUFIhrhpeeOON7yzOe50Kf?=
 =?us-ascii?Q?PyUBsVDi5z83y/Icd3kNvMBqRxmv8aOPAZAptyFEKXJHLB4YNbW1PETnLVLQ?=
 =?us-ascii?Q?N/U1Cdy441Ngqu7ADICEnfvzrRbkiMvEFR6CQB+GEeOI+LcQ6HWm/vWYSEqm?=
 =?us-ascii?Q?8zCD9az//9sFxIBB8IZlXW9FlI/K8fq/E2eMWjhGF1KbeTI/UcKgIloeBpfb?=
 =?us-ascii?Q?bXW52aUr8UI92stk5d1PH3gbRaezsySm4wMJVX0aOyfWJHxsQx7jLKzflC9j?=
 =?us-ascii?Q?cfcOT7fQa97EqN6TRCACn91KNJgOir9H1PZMPwdvlENZsmQushza1lwIXH/E?=
 =?us-ascii?Q?mcfnycyB4lCUhNqwo1wI9vYStXbbRqn8glAHbbszuKrxJfvGorDitOt641nM?=
 =?us-ascii?Q?29unSnYBRMnoZ4dz+hE9VZEi2w0HSqmQtgrsHbJW+TiXHd01xGT6KyprrKLj?=
 =?us-ascii?Q?sIpPDZpCxTYZsPAbQvIRjNg9wRZWn7MSEnCJHrWUNO/dXQlEIityHEvlgP/9?=
 =?us-ascii?Q?DApqTcYfFs81toOxvPh+jgtgqtWJk9CvbuwvXNN3p/HTgF7w1Ml2a9K7p3dY?=
 =?us-ascii?Q?2+2Jev4yKufCg42YSPrHRNEHCigCWEuroZ13siS4sSwJQu9jNmV8lnZuNfuF?=
 =?us-ascii?Q?WB95HdNm0XWTBdZ6CB4ktz0M+0IPmH9SWdKHmqgjLPGUUqPN0XGFtFkzTt8R?=
 =?us-ascii?Q?KcLLQIxoN+AiUX+Y/qH82jEJT+NATW2oxlPApkZMLAU6j5ykIe/SlsUUyGaD?=
 =?us-ascii?Q?HgJnuLb1wObraiuHvwSMK/ZF9aaJAbD2IJg1Fpj165Qm90cLCub8NEzGabmN?=
 =?us-ascii?Q?qc8tChsUbvnTB6mNEm2+ydXohYpVdG27b2pSin3YnZ08xZ6HKa4Y7uW+UwG9?=
 =?us-ascii?Q?A8qVr2MY5ZfC6MPXap6Nwqrm1llXXqYPsT+s06mpxDk/aiJBSNAB0N/+TqhA?=
 =?us-ascii?Q?xTe7qIxuitP/2C7ZfZPEe+qpJIZDpOF2DbLWviXBFjvY+7CwcmkyTp+fzmDI?=
 =?us-ascii?Q?d+kJsspbpXln2lm94h/2OjyeLZgpdxBl6zYlSmInW2yQptxWX2XwDcg/IU+1?=
 =?us-ascii?Q?vj7TzDvKPOQd732k8Xq6J2x+gvEZ5UhOTCjQ6LJyzabb4qQhmV1wWAinQBON?=
 =?us-ascii?Q?QfVV0GClk24GIQi8S4yQaQRA5nk98hA8dwHPTcOHvPTTe8hApsfoteZS4yYC?=
 =?us-ascii?Q?0TpnnNwlPJ3GAmvlSUo1U2AKApsQrJ8W1CssPHftY/wCD5rtmlctRjSOpqCw?=
 =?us-ascii?Q?F1iO9ky/Rw3ln2vUxK8XZaGRBZm+HqGWq3eeJ+Wf?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff7a252f-a920-49ce-4bf8-08da8dbb3bb9
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0001.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2022 14:47:32.9090 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rkid4jbzCxjABPX5LM9qKezQeYjQ7l/L1wVCSvD2TRq/M0Bc2c2zWgytc/o00th5mgHNd7MmmQE7isrMwq26TA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR12MB5234
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

On Mon, Aug 29, 2022 at 06:13:14PM +0200, netdev@kapio-technology.com wrote:
> On 2022-08-29 18:03, Ido Schimmel wrote:
> > On Mon, Aug 29, 2022 at 05:08:23PM +0200, netdev@kapio-technology.com
> > wrote:
> > > On 2022-08-29 16:37, Ido Schimmel wrote:
> > > > On Mon, Aug 29, 2022 at 02:04:42PM +0200, netdev@kapio-technology.com
> > > > wrote:
> > > > > On 2022-08-29 13:32, Ido Schimmel wrote:
> > > > > Port association is needed for MAB to work at all on mv88e6xxx, but
> > > > > for
> > > > > 802.1X port association is only needed for dynamic ATU entries.
> > > >
> > > > Ageing of dynamic entries in the bridge requires learning to be on as
> > > > well, but in these test cases you are only using static entries and
> > > > there is no reason to enable learning in the bridge for that. I prefer
> > > > not to leak this mv88e6xxx implementation detail to user space and
> > > > instead have the driver enable port association based on whether
> > > > "learning" or "mab" is on.
> > > >
> > > 
> > > Then it makes most sense to have the mv88e6xxx driver enable port
> > > association when then port is locked, as it does now.
> > 
> > As you wish, but like you wrote "802.1X port association is only needed
> > for dynamic ATU entries" and in this case user space needs to enable
> > learning (for refresh only) so you can really key off learning on
> > "learning || mab". User space can decide to lock the port and work with
> > static entries and then learning is not required.
> 
> I will of course remove all "learning on" in the selftests, which is what I
> think you are referring to. In the previous I am referring to the code in
> the driver itself which I understand shall turn on port association with
> locked ports, e.g. no need for "learning on" when using the feature in
> general outside selftests...

"learning on" is needed when dynamic FDB entries are used to authorize
hosts. Without learning being enabled, the bridge driver (or the
underlying hardware) will not refresh the entries during forwarding and
they will age out, resulting in packet loss until the hosts are
re-authorized.

Given the current test cases only use static entries, there is no need
to enable learning on locked ports. This will change when test cases are
added with dynamic entries.

Regarding mv88e6xxx, my understanding is that you also need learning
enabled for MAB (I assume for the violation interrupts). Therefore, for
mv88e6xxx, learning can be enabled if learning is on or MAB is on.
Enabling it based on whether the port is locked or not seems inaccurate.
