Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 365E95FD642
	for <lists.bridge@lfdr.de>; Thu, 13 Oct 2022 10:35:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B196761123;
	Thu, 13 Oct 2022 08:35:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B196761123
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=Y3iF5UuE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J0xq7IqblGoS; Thu, 13 Oct 2022 08:35:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 2D43561121;
	Thu, 13 Oct 2022 08:35:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D43561121
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8D7D1C0078;
	Thu, 13 Oct 2022 08:35:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 55FD6C002D
 for <bridge@lists.linux-foundation.org>; Thu, 13 Oct 2022 08:35:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2C5BD61123
 for <bridge@lists.linux-foundation.org>; Thu, 13 Oct 2022 08:35:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C5BD61123
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EaTB28d7hI8A for <bridge@lists.linux-foundation.org>;
 Thu, 13 Oct 2022 08:35:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B8FF61121
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2069.outbound.protection.outlook.com [40.107.243.69])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4B8FF61121
 for <bridge@lists.linux-foundation.org>; Thu, 13 Oct 2022 08:35:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lSCjjnGS3kR+0clbLEUum+wIfM3BXUGRs9SDjgoM3svqkIvLwn7SzVxEEQqa/a5M6v3xuo+nyRMBYEcD1tqK2NNcx7n1IDzZyxnbVNSGhLlMr6XzpRPQbyHtlSNfbegcCUn5PTRtDFr6fSF8HhnK8fiGL4A8MnaDpHwKWr1MbDyLYKucKyWozz3QZSLvwAzz5icMeGyZc88PnsKiMLngRQoNRYAdo/qGqqvVAbSgw3ZqxgfcmfJOva+t7C6781EwIdLTbEZA/f5l8PDhwh1uw/hT238LT0KB6zPkMbiolb9IzIsAYLGx7/lH6o4V+5h1O4uslUVEDUkcq/Qh3yyq+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wK/oJZKTfh2jniIxFc4B9NCaOYnxEmBnVHzazEb2RLk=;
 b=nn5oiWmwpZAtyRqKUxtiFutqsVKlDgpH3o3L+lfPZuIugGh0BtMsB3bfZ2eZAKvCcUaZeyiXBQB+4fabfRI1BPoKyIJpRLPWUtYoifjRbZN/DkpQsjVReiCIjVOmXWKPxgAI/VuFvThr5oeAQSPGYfz5kxInRDoirmgqW0IxWHtLLOBA5Uj4Fotggdu8cSyMl/1CFp2S7oKkSp+Iy0XARuNs/n3N6xL1cB2hLbl3rk1uw090VgKKz689RBmar1f4zaykXiB87cReWV/tJZxZVLA8FCf0lhNTQYSJzc6o4ADBCTw7K4geoNqxlTjQ/a80qsUHIbv3NB/GAPZIf0WN6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wK/oJZKTfh2jniIxFc4B9NCaOYnxEmBnVHzazEb2RLk=;
 b=Y3iF5UuEAQUv5HKU++61otnneNaoL0b8xYcJo6TgjqteyJpxta3zPmFVBufZP/pEbELyNG/LfNXLXjjntAJF+OZ/iDjPPGdhRWvu7grXLTiSY63oe3X5jX4Hkv47AdggabFZxK6hhjJXC0RG1X4bMTqyj5rd35hbr56y4lSgB2qw2Ko8EHkeREtQGShWrZ7Lou/Coepr5X53Uu0f5y5OHQhwnG+tTpisDYk5/KD8d7NQ8K6IRXNx3BiWie3OWoNQ5k2uPwB7/O0dYZsWoCUFK9oe6xwjw7uVtSyqSIQL54E0POQ//pTjyUsyTy58+0JoINeN2HHlrkLPtgrNODkQYw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by MW4PR12MB7240.namprd12.prod.outlook.com (2603:10b6:303:226::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26; Thu, 13 Oct
 2022 08:35:40 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e%6]) with mapi id 15.20.5676.031; Thu, 13 Oct 2022
 08:35:40 +0000
Date: Thu, 13 Oct 2022 11:35:33 +0300
To: Hans Schultz <netdev@kapio-technology.com>
Message-ID: <Y0fN1aYfNKS3JWFN@shredder>
References: <20221004152036.7848-1-netdev@kapio-technology.com>
 <20221004152036.7848-2-netdev@kapio-technology.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221004152036.7848-2-netdev@kapio-technology.com>
X-ClientProxiedBy: VI1PR06CA0169.eurprd06.prod.outlook.com
 (2603:10a6:803:c8::26) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|MW4PR12MB7240:EE_
X-MS-Office365-Filtering-Correlation-Id: a1f12435-6019-4129-050d-08daacf5e8ef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qE8TqfGavzGa9hr/J6SOMlCbhHzeScOyUe+Aq+4Pr6IsFGYccBMb1OwfaWzR4MRUH6o//+tJ2bFf/Y1qoKR3LFjwpP2bE0YbV7iuwcFUxMdeefU08toQ2qKhfDCfrHrURPC6xAskbcTwmmM4JCqIT7oMDrZYEScUTHy88M1cMjjLfmAc+A+aRTu4rVzfcdeO7HvyI2iaDiY6ZaN/CcaWRlvxHuwfCfWlWDfG1w8/Cszd1EFsBWezRDOLpFZvVzEknZHp7RW55hRLFDzrAZhN3voD3osYVOczJDcoe9g2HGqMCk7xlC8jWHZ4I58Sq1bC80S+bp4FQIy/YN1VpGjC0wUrUlgM1xLUZ3vivw8BGQ+RulUHYbnNN3et0UdjBXKE6QghZCWTiYLEpS8oj6dTrKQ1tcVKGt/+vyw6XHvHH5k7I862riRARvOQeFGtomzO676YQAbS2Xerwznpwedx8PaRZ1EaHtK0MTCmkyMTmKbFPcG7lcEQE8ZjLT/t6xsKWhtgSGrYq5WWa8rszAAAtWeSN/TQXmP6Et0u2BqoZfGfDFLoWYKG6Ov9MWQolI3X1/UCd/JX7Iw6iJyLgqvbe++r9S7s/f7AIHVYncLfTUhTm0b6UOSBzObgqVibnem6aUftImLonvbKJGzyN59qZxJyK7vZjS03dqEB8ioI0mu5K3nUcXpQvrvPmGM3BTYGIv85vVQBnSq/zylBrADcDQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(4636009)(136003)(39860400002)(366004)(346002)(376002)(396003)(451199015)(186003)(9686003)(26005)(6512007)(2906002)(316002)(33716001)(8936002)(6916009)(54906003)(41300700001)(66556008)(66476007)(66946007)(8676002)(4326008)(86362001)(6666004)(38100700002)(6506007)(478600001)(7416002)(7406005)(5660300002)(6486002)(83380400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8ZnNJ1/YSjEhKguatk15sd3o1riXDxtVZRS9L0/zN+MUSCS5cIs/iF4buzi9?=
 =?us-ascii?Q?tFbdW4lVtowapaMeh680k0TLrxqLo9ZhTm+hhxweBztGWyN1Ct4nqTHa4yvi?=
 =?us-ascii?Q?rFT3MztHTgVtGEQbeTyc9P6GZgol0HdpCZLunTepNxLUQgSXCf8ooV/zOCM2?=
 =?us-ascii?Q?EV99LDtL41pQ1KjaZyQgCpVTdfznBrz+UGR9CSYxG5xsy5pOaJxgsZ5IfFWN?=
 =?us-ascii?Q?oxNYUmyailWbR2eSry36QzJ+R6+FhyGc7LSTLzpe9MM1Xe/L7zExHUg8TObB?=
 =?us-ascii?Q?ms3KXCNUtIj3pGYFxI0hfIoCt/PxMXmjoI2pFn+uH9YDOsuu5q6o/Xy0RLA/?=
 =?us-ascii?Q?kVrHjfjMDUFcL0R+Z5KL9/8M4yNt3Z2Mx9h1os7RbmWpLGqfyn2us1RK5ibM?=
 =?us-ascii?Q?6KJ32dNWGjBv+QKceQGIkhVlgTETwxWRROIZwQDRfVjb1x0dQW1YPQuagopF?=
 =?us-ascii?Q?3WKeOCFJ4qRxCImsCclm+HeHv0iGwwlPYNX9hRIFiuh0PqiRXXPy+S27u8aU?=
 =?us-ascii?Q?wgfpuZ62dOA/XlTZNzzo+HoytO/1ulS5qzQw0uVVyQTNrAGAhksUkfDsIkYj?=
 =?us-ascii?Q?trT959A3MkfRFEZRVy2tYS5MA2DF6doWzFgXuJgL7K6iDKR+I9L6FAag/LVx?=
 =?us-ascii?Q?eVDKgYHIn7mUL4IhlpOWBXMtcbXx26dEIN2gkcpOztMwAki9UoHVhLuDsGCO?=
 =?us-ascii?Q?H27l/bM5h4zELTZCfnwTIIxc7Pczr85G+5alCZHZIzQoh2vsE+USd/vEzcg+?=
 =?us-ascii?Q?QVea1bjrf4eBe5hNOQ4GGb/C7Ncxd/DWPo55HkHYgFGycNykG/jfn7eLAhSI?=
 =?us-ascii?Q?Cb34dBWb7HviUe6y4THw8HVrkdNV1biUUQkkSiB5MZXlC+ZFDmgbVWjb/R0T?=
 =?us-ascii?Q?XVbou/W8uSkHvPSSATe5S2UrT0ztCgbP7mPb/2YFxsXhLRzLx3/3+aX9yfJw?=
 =?us-ascii?Q?BsB9JxmhZdlIzb9zP9CU+XxrdgSh+JeFl6jAYoiuV+pQ/h6Cbc0Sxvu7ZIMo?=
 =?us-ascii?Q?4ec/MtS7+BUaoiW1vuPCB0l8XvgSG2q632q4FxG7/2w0ZfWyGsja8IcP8rkf?=
 =?us-ascii?Q?VcHsHF81KSYXNHy9USzFM6JxeH+bO8AJ1LxO7RHRuS954l3nO97ih8RQvIAS?=
 =?us-ascii?Q?zXRE4qpLpXrlkQUqMq5KRVKDjBURtAWx0SW6TJYwIaMzoz9VmzyJY0RiNUDw?=
 =?us-ascii?Q?YGpI+bXNrZD+Uv5H1gCFfG6jEKW6Ldo/SNvmxucoCF9QzUdsLuo0HgzP+OSW?=
 =?us-ascii?Q?C+mSQ/nqAl6KtTbfW3eMpYGx/ic86JPW6jIt1WbCo4reaTU2eS/3cMeHqJQY?=
 =?us-ascii?Q?R0avaSq/OkNVg+BTq7+/JtnhtZPhVEmBOmcfFXejUFRw1EqMlXJakZ2nVncU?=
 =?us-ascii?Q?inrObi1lFDl4SMxwaoGMKDIUNbUJEUnAOYsKbx/4ZZmfD3OvIH9rqTD+e6k4?=
 =?us-ascii?Q?VkbjnLAcubt9BgfMex7u2a0MSOmUkXrbZlDwqJybnZmpXJoljNjqq/i7yp8y?=
 =?us-ascii?Q?Kk2UmIXcSBsnU8PczwC1mIcaeLaxDSMoJuwZunuGvFzwTG0f9fDZGjTGMJzb?=
 =?us-ascii?Q?bHv6XIpzzYFPbVFLLFc6gYSwFjb2X8uWAdGy3NPd?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1f12435-6019-4129-050d-08daacf5e8ef
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2022 08:35:40.4258 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8S/DYPbJk2uahcjHnw/kVgD/Mdx6DfifdWwgRW+Yd7tgEb1lvYi6awvUIrba+dqidndGH9pW7UcK16+5dwbYjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7240
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
Subject: Re: [Bridge] [PATCH v2 iproute2-next 2/4] bridge: fdb: show locked
 FDB entries flag in output
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

On Tue, Oct 04, 2022 at 05:20:34PM +0200, Hans Schultz wrote:
> Signed-off-by: Hans Schultz <netdev@kapio-technology.com>

Don't leave the commit message empty. Explain the change and include an
example output showing the "locked" flag.

> ---
>  bridge/fdb.c | 11 +++++++++--

Still missing a description of the "locked" flag from the man page.
Something like:

"
locked - this entry was added by the kernel in response to a host trying
to communicate behind a bridge port with MAB enabled. User space can
authenticate the host by clearing the flag. The flag cannot be set by
user space.
"

>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/bridge/fdb.c b/bridge/fdb.c
> index 5f71bde0..f1f0a5bb 100644
> --- a/bridge/fdb.c
> +++ b/bridge/fdb.c
> @@ -93,7 +93,7 @@ static int state_a2n(unsigned int *s, const char *arg)
>  	return 0;
>  }
>  
> -static void fdb_print_flags(FILE *fp, unsigned int flags)
> +static void fdb_print_flags(FILE *fp, unsigned int flags, __u8 ext_flags)

s/__u8/__u32/

>  {
>  	open_json_array(PRINT_JSON,
>  			is_json_context() ?  "flags" : "");
> @@ -116,6 +116,9 @@ static void fdb_print_flags(FILE *fp, unsigned int flags)
>  	if (flags & NTF_STICKY)
>  		print_string(PRINT_ANY, NULL, "%s ", "sticky");
>  
> +	if (ext_flags & NTF_EXT_LOCKED)
> +		print_string(PRINT_ANY, NULL, "%s ", "locked");
> +
>  	close_json_array(PRINT_JSON, NULL);
>  }
>  
> @@ -144,6 +147,7 @@ int print_fdb(struct nlmsghdr *n, void *arg)
>  	struct ndmsg *r = NLMSG_DATA(n);
>  	int len = n->nlmsg_len;
>  	struct rtattr *tb[NDA_MAX+1];
> +	__u32 ext_flags = 0;
>  	__u16 vid = 0;
>  
>  	if (n->nlmsg_type != RTM_NEWNEIGH && n->nlmsg_type != RTM_DELNEIGH) {
> @@ -170,6 +174,9 @@ int print_fdb(struct nlmsghdr *n, void *arg)
>  	parse_rtattr(tb, NDA_MAX, NDA_RTA(r),
>  		     n->nlmsg_len - NLMSG_LENGTH(sizeof(*r)));
>  
> +	if (tb[NDA_FLAGS_EXT])
> +		ext_flags = rta_getattr_u32(tb[NDA_FLAGS_EXT]);
> +
>  	if (tb[NDA_VLAN])
>  		vid = rta_getattr_u16(tb[NDA_VLAN]);
>  
> @@ -266,7 +273,7 @@ int print_fdb(struct nlmsghdr *n, void *arg)
>  	if (show_stats && tb[NDA_CACHEINFO])
>  		fdb_print_stats(fp, RTA_DATA(tb[NDA_CACHEINFO]));
>  
> -	fdb_print_flags(fp, r->ndm_flags);
> +	fdb_print_flags(fp, r->ndm_flags, ext_flags);
>  
>  
>  	if (tb[NDA_MASTER])
> -- 
> 2.34.1
> 
