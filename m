Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F15A6060A7
	for <lists.bridge@lfdr.de>; Thu, 20 Oct 2022 14:54:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 251506FAC0;
	Thu, 20 Oct 2022 12:54:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 251506FAC0
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=kTmNmQcX
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nrHpZdUnsKFG; Thu, 20 Oct 2022 12:54:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 7A2766FAE9;
	Thu, 20 Oct 2022 12:54:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A2766FAE9
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0EA57C0078;
	Thu, 20 Oct 2022 12:54:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EC72DC002D
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 12:54:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 71FCE6FAF8
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 12:54:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 71FCE6FAF8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1jxRCvyuGnts for <bridge@lists.linux-foundation.org>;
 Thu, 20 Oct 2022 12:54:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C28756FAFC
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2073.outbound.protection.outlook.com [40.107.237.73])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C28756FAFC
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 12:54:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a+NWLHMnEO+VvvUozsCUYHseAcko0YXb7UhoNMuhekwLxWaj3SFi0OTEQGBGxu5BcoHDQsNuZWgeGiQQPvm69hRhe0nFAZBUumdfGwsxUdhoLOllRSvpLUiA97SXmk/Lku8jns6QMZWZGwovgoeTjqm9/d+JBus3zAouEDRRJr39rorbhDGNoJp7XH7HHf4P1myf1IRUgTHDaiUuqxthSupvzCoDnWj3p4Z+lBhMgdkfGN2QAMX/Ha7h+yqd8V5JpwYwcibOgSLmPC99Eie69yoZOqtXwhZsLnLrlEEbamRsai20e+8q2LEbmRGy6c4FHqvVMVlgXrNtba+6cZWvWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FAEjyQCuY5bv3ffrG3YJFzZzlolttdTNtL7f6jneouA=;
 b=j+S33mOCmoqwLu7h7yb0oRn99CyujZbZi9vl0kWivYmnemSi6Hy4K5aA4LBCuOKL8ruIC5puvQJR6a7OnlGZ7HEzUVqLIl3yKCR023zhV9dsu1/vGe5VKowlUT3GSU9NZfO27GXWfYyocvYROkSHnvOOLlNdmJrxh1nueFrLGni54yS7Sn9isToSCCyqnMLudqeFdHX2VfPvlOs9N/UGeMcy6GJJk2Yt0FTHdyA1nvn3SSWxIdzPs3CNSXZjbqcRCZJQ4mqPTz4FxF4wqga6kE4FLGs0n/IlmV664jCNvlEk6STH2Rmc9HaRh3Hy+5e0acbEHN24GWf91q5wEZFgxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FAEjyQCuY5bv3ffrG3YJFzZzlolttdTNtL7f6jneouA=;
 b=kTmNmQcXRg9Z70rVq6z+siZcJlBPlB6meCadLVdm4IdtNomyMaz+rnMIbqMSdgShXrScXG/wETXejfD9D+v4N4lvENZgOHvttOIfxHQVSSn//0zfus1Brf5dVUyIyCYNVYCbTLGcHO6u27LI9KNzOIe3jrbKmsbmaCWPJacNjp5ob7lcbNiTAyaJS2vpbAGt9u7m9AqtrRmV2lp2S99zoApgHn3IsbRgomkK5qLe1Snh2nbd60kqm7R6nIBQnGgAwIR5ucuVkF9MCOUfLzYnBhPc0KQm2DVGYtLOw66PSW4+en3p78Ey7erTaGCDpwZElLxkDK+XnGp6fIBjfJIggQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by DM6PR12MB4451.namprd12.prod.outlook.com (2603:10b6:5:2ab::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.34; Thu, 20 Oct
 2022 12:54:07 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e%7]) with mapi id 15.20.5723.033; Thu, 20 Oct 2022
 12:54:07 +0000
Date: Thu, 20 Oct 2022 15:54:01 +0300
To: "Hans J. Schultz" <netdev@kapio-technology.com>
Message-ID: <Y1FE6WFnsH8hcFY2@shredder>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-2-netdev@kapio-technology.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221018165619.134535-2-netdev@kapio-technology.com>
X-ClientProxiedBy: VI1PR04CA0131.eurprd04.prod.outlook.com
 (2603:10a6:803:f0::29) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|DM6PR12MB4451:EE_
X-MS-Office365-Filtering-Correlation-Id: 3dc874df-d156-4785-e838-08dab29a2cd5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KW4Bj1uaAo1l7J242jlpUH/lz0nLjO37z6c911fFtlUYDXxQEWi8ILn67runAniq1JiNAZ7fvGC2eft6Igc3CJapNMmFM7LxEzjJYjG47O+fa6h2cyMQG3jZoRdYS/Fp3BoXZC2rsMB7L5VhlDJTFG7CIjghWuakZfBUXUA33l3fUP4oXIrtOawAx0DEtAWWIT9vHeLXPo6QzrbcJXyq4hJYCcDH/z28HCRzUKSGHhfGptXrs5StYZXe83OUJ5mT3pPVUeABcLL6D/52wFQti2ADHdMyXHEzQ4tA7l3O5ZxqccXWy9/HzbS/DnIelxoyRvu/3N3S1mWwPUuJdwTIUeZS0pIkL7qs9SPt3zgUVkMBtL81Om8XKtShEnmTKhAKtlnnBGYiuN1uoY0uAxwedD+BYcUXSoANv5b9+ajITXSMrKyeGkDGV4QvwI+i9opstzOJmWVw/ddhVHn3axVi2ffxnAXw+zfPJH8F8mbnHgwK2ohkZl9Rmv0HxxnVH09VrPEp9XsAQdVydZkZizdBsd0/XMDXyUmBlyWCokPfRK4ktVlA4MaKDW8F1QF0qglR0o61jLsZDunZU3gVqdwPR8pTrETTChP5N+IXg/NMFODqLm2PIXnxrQS7AS1vHDsBWDkKQ/keIVjhiREKCQ9eDi6Y3NDjinchsFNPKHFgEutNmgqRcXWbtCqEgSkaXsWfbvW5DnVjhHgwDchwq2Fazw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(4636009)(396003)(376002)(366004)(346002)(136003)(39860400002)(451199015)(316002)(41300700001)(6916009)(54906003)(6666004)(186003)(6512007)(9686003)(8936002)(6506007)(26005)(7416002)(66556008)(8676002)(2906002)(5660300002)(66476007)(7406005)(4326008)(66946007)(86362001)(83380400001)(478600001)(38100700002)(6486002)(33716001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SJv4kmFsdSENuLlE6nggVF6uhdFs/mdy9zJqHrSVD6zQrlCn2aYWY+GNpCAI?=
 =?us-ascii?Q?MA6pKHUaqDZ/CGhKPquTZKxZp4FBE2zOR7+0xt3dDibtviMoTUY8ekPw6gV+?=
 =?us-ascii?Q?LHqxMx/tndXiBvBKv1VtQz3VXrFAJndUfGrDfgCXsG/LwKOsUoKHxQjwV4i2?=
 =?us-ascii?Q?PaRQ1N112JmOZHwJRiPPIHr5hZezi8fN/fgiaZ80nFPIT2T/q8lofuEOUCeS?=
 =?us-ascii?Q?xW1fJu/5hMAU+cAMmPW8RAs3YlOlilEA7iKySpQKdAPQ1hBHnxGnCwIa341n?=
 =?us-ascii?Q?m1Ti43ecigt6TAK7FCq0PxUMxQm9sxuAU7V7dHW28BR5ffNM7ymH80Oy6syA?=
 =?us-ascii?Q?p9tHEORmJPAkDOcBHZ9Qt7hJny5p+X4vKHD+gibLA5y78KYxqxCkbjuzExHT?=
 =?us-ascii?Q?iUP/S8g9cM97WwDhDy1Ed4x86J90uxuFjslnlTA2LA/U0NC+aZKkteSoUheI?=
 =?us-ascii?Q?hDqwTNiMG9VaJ9QECmVm2m2AjYQMnacT4lXKM+ZxcOVaqN+aM5x5tnHzCKkM?=
 =?us-ascii?Q?1jT/hp1QCu11tu0Wxxg5bJOpiUZCd3foPrN1yEfOqpxjsAcf/97K09WquF5x?=
 =?us-ascii?Q?msUFpYE3hKx8VgdzSvaQa9GaYR76/6L+7o7nTGgBk/0NDM7141L1pFBapjbL?=
 =?us-ascii?Q?Eiy/i17N636H+44rThkecvmFKujaXoey1UqhKZxQ4d0Smu8AhkwuzZ3B1iLo?=
 =?us-ascii?Q?2ZqKgvyII51GzvS8woR7IxGb5sHKAuAoZvv158NpSYR0d+7GaF9wGpRQXABc?=
 =?us-ascii?Q?amBCUAeq0AMBbetiho+Kiv0WvjOGnvRB5+jejUGsSUqCVPo2R5+MZ8a8Y4gh?=
 =?us-ascii?Q?4gvSXpgacyLQUbdil48E8tuyXimImGx1z7xQNtJGl8XaLa81NSzj9nIKu8qH?=
 =?us-ascii?Q?TDptHFltVlk0OJi5q+YWkTjYlNI/EYyGqw1NDY/kGH68XnMT4XHkd6A6EL2h?=
 =?us-ascii?Q?2sFqEsLjJWYpJHBlap0Xc69B9cCiwQxz1x5yvCNzTKoTg2MRUTVFbCYSb0Ll?=
 =?us-ascii?Q?rXjJG05tXyAP7ZG2b7+z0TzUGU6iIO/+tBoHD37BVrbEdDAVazU3BuZrelFk?=
 =?us-ascii?Q?+BdljOkv1gl2VC5YhWYUcddOErzF3Zzrutbo1HuJbw36N7UjQwdEvHNNbJu/?=
 =?us-ascii?Q?pz43zy0dYg8UAQE4UPfovNVn3cBVzbjozOjxEW2M/7r4EMG5YiCX/68a4Jfl?=
 =?us-ascii?Q?a2eRFX3pr+W2EELq1uTUcVCQIwWVVEJ8QuJE9Pe/ZtQfY95RK9jdoEomtzo0?=
 =?us-ascii?Q?gCdLpz7m4HJNY/NRHtX0TvEssNAO1JSVQqQYFsb5Nia9ORiyUidIg1PFWbYw?=
 =?us-ascii?Q?FaJz4ZXHYLhCXXBSGNUrLCCyku9QvLXIxddmVqukh6ohDcnb0KP315ZLAZjH?=
 =?us-ascii?Q?uGvF2dnysd7hbC5hM8Dq6QgpV1lE9eD9MPcgmnoxrILUArZ01Wcy7AkV8GzQ?=
 =?us-ascii?Q?o40SY30i2uqNW8WgtsylvLCogOKrGQh897qN5LvIDBLEjjUCVX+rMjpQd0Zc?=
 =?us-ascii?Q?zGDJhdJOQ5xSVbsOtWUAe1pjfzr3InP5dXWM7yDGW1Q6dqTk7ZE651cLsWBA?=
 =?us-ascii?Q?aZthDWuccyqM+xM31Tt5WdYnOziy9xbgBMTT1AXs?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3dc874df-d156-4785-e838-08dab29a2cd5
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2022 12:54:07.4832 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /poaWTJjYdyIlr8llvr+NfLAmFJaa5ULuKtgO5Tq6k7PEov+2TIYf2kmp9NijtnNUE59TgOt3SuE2gS5pqw2XA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4451
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
Subject: Re: [Bridge] [PATCH v8 net-next 01/12] net: bridge: add locked
 entry fdb flag to extend locked port feature
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

On Tue, Oct 18, 2022 at 06:56:08PM +0200, Hans J. Schultz wrote:
> Add an intermediate state for clients behind a locked port to allow for
> possible opening of the port for said clients. The clients mac address
> will be added with the locked flag set, denying access through the port

The entry itself is not denying the access through the port, but
rather the fact that the port is locked and there is no matching FDB
entry.

> for the mac address, but also creating a new FDB add event giving
> userspace daemons the ability to unlock the mac address. This feature
> corresponds to the Mac-Auth and MAC Authentication Bypass (MAB) named
> features. The latter defined by Cisco.

Worth mentioning that the feature is enabled via the 'mab' bridge port
option (BR_PORT_MAB).

> 
> Only the kernel can set this FDB entry flag, while userspace can read
> the flag and remove it by replacing or deleting the FDB entry.
> 
> Locked entries will age out with the set bridge ageing time.
> 
> Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>

Overall looks OK to me. See one comment below.

Reviewed-by: Ido Schimmel <idosch@nvidia.com>

[...]

> @@ -1178,6 +1192,14 @@ int br_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
>  		vg = nbp_vlan_group(p);
>  	}
>  
> +	if (tb[NDA_FLAGS_EXT])
> +		ext_flags = nla_get_u32(tb[NDA_FLAGS_EXT]);
> +
> +	if (ext_flags & NTF_EXT_LOCKED) {
> +		pr_info("bridge: RTM_NEWNEIGH has invalid extended flags\n");

I understand this function makes use of pr_info(), but it already gets
extack and it's a matter of time until the pr_info() instances will be
converted to extack. I would just use extack here like you are doing in
the next patch.

Also, I find this message more helpful:

"Cannot add FDB entry with \"locked\" flag set"

> +		return -EINVAL;
> +	}
> +
>  	if (tb[NDA_FDB_EXT_ATTRS]) {
>  		attr = tb[NDA_FDB_EXT_ATTRS];
>  		err = nla_parse_nested(nfea_tb, NFEA_MAX, attr,
