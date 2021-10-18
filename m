Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 61053431619
	for <lists.bridge@lfdr.de>; Mon, 18 Oct 2021 12:28:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A2DA4048A;
	Mon, 18 Oct 2021 10:28:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dgI0L55bvPYc; Mon, 18 Oct 2021 10:28:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id C78BB40492;
	Mon, 18 Oct 2021 10:28:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 80DCAC001E;
	Mon, 18 Oct 2021 10:28:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5E132C000D
 for <bridge@lists.linux-foundation.org>; Mon, 18 Oct 2021 10:28:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 482F2403B6
 for <bridge@lists.linux-foundation.org>; Mon, 18 Oct 2021 10:28:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=nvidia.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JQ3leftQwKwS for <bridge@lists.linux-foundation.org>;
 Mon, 18 Oct 2021 10:28:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam08on2079.outbound.protection.outlook.com [40.107.100.79])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D3890402B9
 for <bridge@lists.linux-foundation.org>; Mon, 18 Oct 2021 10:28:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ebZWskkbwj0BZpBZcTrsXwHPFQ87TzchRICVMBukWiZBUfQfYoBxuTqiZg85jE13ONILBCYZbuRAs/Xlp+/I6fEb8cQdXUy/HR7sQ4Zzpnuji2itt4W4kOW2WzokQwtCFKJEN7WiwLAgBzgSrj2LTp6iUV7fYgkE10ILRfoTHp9JdhqMu3BUen5LPqhjg95GM7Hq02cFloyX++75Ss9HhRZH9X9p4w2P+CrN0h/vtmzpcXlBv7VdMdf4OAaIPH2Iic+jJ1gvwjEOM/GID9rRPLJKr/hzSub+Mxvpz4W1Kkzz0bZPm9A1FRmFcUJGrlZWXqw57RM7NKVePCU0sCdZvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3h9iP+bpr660/cL/QHyMr/9YPNnb1d7Ml36XvAePJVg=;
 b=SQbFjnwrFTbyLDFadPqG6Wnao2qEC8SR12dZLKvXxSQnaYbUGlp72HkpHuAjJqmaHt0ATsDbOisTVUgdWE96ho/K5pvhUkMjglCfji4wG7GrqyfzUkBTdoKfJ/xuLdQyhWHLEfrgDn/D5xkvLwveKZ3VpDgk0Hn6Vw+6Co6U1+QBtXlgSelPmocF+YCArUJUP/ol+SQQCvlrrs/Bmvkoza/5bDiJM7ic9dQD4GkSqFYJbrD1shXQqkqyAzXBNNYaUeGLgiY6apm6Ttlv/xrJTPyKoPTUSH2jD1Dw3LbI2XTBmk9SFWiWmzX07F/QwnHGSIOcZa94fmWV0h1mw3XUpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3h9iP+bpr660/cL/QHyMr/9YPNnb1d7Ml36XvAePJVg=;
 b=QRE2lwB57taADFRUDju+11+ZkNei2GOtjiOKleu9TQ7pn6xlXS7Pmd7NF+eNMErBVltPdr7WWs1Vs3ycBrKBCotO5AqHjWsMsuLsolwF8MJrv8mLT3WjyOjx0ac6G0ZLCHoF7i1IOU6mjqDolG2+ZgKQFLnun3FfJ3ZlsFATi+UHQa3fR+YZqJGJVQY7Zt+3OTnEGNSBsxSRtYK42p2TNt42VC6hmnPRXhH65VB2wzBuIgiKJSq9yH7ABCilrFd84rJ2DKWgePh8SG65/jlOXas98s0pORtImGUP0EylaXAcGDc6JpOi0hPXgcF6s+8nBOGTAmHbXoR3MNRBr1gSeQ==
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=nvidia.com;
Received: from DM4PR12MB5278.namprd12.prod.outlook.com (2603:10b6:5:39e::17)
 by DM6PR12MB5536.namprd12.prod.outlook.com (2603:10b6:5:1ba::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16; Mon, 18 Oct
 2021 10:28:20 +0000
Received: from DM4PR12MB5278.namprd12.prod.outlook.com
 ([fe80::513c:d3d8:9c43:2cea]) by DM4PR12MB5278.namprd12.prod.outlook.com
 ([fe80::513c:d3d8:9c43:2cea%8]) with mapi id 15.20.4608.018; Mon, 18 Oct 2021
 10:28:20 +0000
Message-ID: <ab707f4d-587a-0fae-e673-5da49f5946db@nvidia.com>
Date: Mon, 18 Oct 2021 13:28:14 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
Content-Language: en-US
To: Hangbin Liu <liuhangbin@gmail.com>,
 Nikolay Aleksandrov <razor@blackwall.org>
References: <20211018082612.625417-1-liuhangbin@gmail.com>
In-Reply-To: <20211018082612.625417-1-liuhangbin@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0105.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:23::20) To DM4PR12MB5278.namprd12.prod.outlook.com
 (2603:10b6:5:39e::17)
MIME-Version: 1.0
Received: from [10.21.240.28] (213.179.129.39) by
 ZR0P278CA0105.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:23::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4608.16 via Frontend Transport; Mon, 18 Oct 2021 10:28:19 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3acda3a7-2d8b-4344-3b4f-08d9922201b8
X-MS-TrafficTypeDiagnostic: DM6PR12MB5536:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR12MB55362172C528B4D55639EADEDFBC9@DM6PR12MB5536.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ByyG6ZmejmCalivvNTpHIrY8RFie+LAV/CL9l1lmCvWiu8KyPiKEcIhyz0/wvm8hvn3VrbyL4Cqad/YdSeFka3z3ZY3gAEnjb2Sf3hMm/6Dp4Kc8mIcVGLbDI5MEk6ydn4arFPi/qO8dLK9NpVp0T/kwa8rOjzh0EVZCyOSSCAx5rW065c7qboCGgD9VjKEMWxnp9mPszZwCkvGzIUEAsYaogBVTxQXqz1PEw0FNtC5J11/s0yl4UTh7cD4zzOf5MIudEwf8lJty4r09wu5ZtoO5SLVwaw5EoXSsIyrrI5aeTwiKuYO65gojbFIUVFkDIkgRYd9UlpIDo2X3BKowZh9NbJhu84qMM6egqz5YTsI7O+MxzWhCMs9ezbo4ZpkS/hgkmgUA6nUu0lsP3oMdUqzEiOfNIgx5bvFlYXhpAulNYjFVXyaMBXHr2B20hT/AUe97LhXIVYgrOem5BHkQsQ12keAWH6KmOC2J6Y/KaRevFF3G1F7qqYqTPI9QIIHbDWIaSbcEOgV5u+EOW+ja1AhLvYY0WcssjsIOzX3mOWAmHbUGRJffn8FR/v8+ItCpzpyJiA2l7/FkItFTIhVNcwtm9Kg0dQVZvkYaBBuHUDcrdTeHFKcXQnS8ew2T/ygUHaAEr065Qwv6dY2wikbtRInD49SgYJLOQUd7tEL/PnIjlPDwOojgN5Nt+4EP07ey3mA7bs9/dcXBagar7CdryIEH/DqRR/zetteFsA3im/E=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR12MB5278.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(8936002)(66476007)(66556008)(66946007)(4326008)(36756003)(6666004)(83380400001)(5660300002)(16576012)(2616005)(8676002)(2906002)(86362001)(38100700002)(31686004)(53546011)(26005)(316002)(6486002)(110136005)(31696002)(508600001)(956004)(186003)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MjhKRzB4Vzd6cWJUa0hxQU1yNzFaeU5WRW9YZnpmUXk2SXRSNUNudWN3RkFq?=
 =?utf-8?B?eDJXQUJweUF0T0RwRVBPR005WGk4ajZXbXpRY2wwVmxEbzFEODE2cld2cmpi?=
 =?utf-8?B?bXlOSnpqUENJdlZRKzBCMFdzNittc3FZK0RmSkg0ZlNnYVFyUElYWXFLaWd3?=
 =?utf-8?B?VG50SnF5bHdCcjJqS2xBVWtGMnYydWx2ZjlRcDFVaG9uejNja1lmMzMrczhl?=
 =?utf-8?B?TVFIU2NCdTRLR3JKMHA3bVhQUFJXSGZUVWNGcHpwbnpTc2V0cWQ4dXA3emNO?=
 =?utf-8?B?Q0xJcjVHL2Z0d1hyaHI5RThkWkg0bmUrWUVwQjhMemlDWjFLVllZOTlDWHNL?=
 =?utf-8?B?MzdVMVBvT1lKZXVTc0lodWtJNTZKM0RDNlNZL1NjcTRkVjVMNkFaOE5tbjdW?=
 =?utf-8?B?bFM0dUovdEZXa1JGYlRsSFEzVVl0YkpIdTE3ZFc1VGVlOEVoM1Z0eE1WYXRS?=
 =?utf-8?B?Vkd5a1dQbkZJWVNWbDZHTDQrbjlMbzJEV0JUNDdyWHZNVTlRdzAxQnRDS1Ns?=
 =?utf-8?B?cWZsd3RkSlIvSEVGT2c0bWNoMnBRblgzU0hUWGtySE9kanpNb2lVMlNTSGpJ?=
 =?utf-8?B?eXhOM0cwV25TVUhqS01IREtQK21ONmVqY1AzU0V0ZXQ2U3ZmUDVwSktFcFVQ?=
 =?utf-8?B?MGU3VzFnNXpoUSs0OVlYWnk4N1lkcHg3UWF1WXQ4VmVBSzdlOWFMclg4Mll3?=
 =?utf-8?B?dS9FdzlHMm5rdEZnVk9iYjJwYXMyMjRSL244U3Zoa2l5NFduaUhQUU1UMTZo?=
 =?utf-8?B?Q2JxTVZXZjhia1FMTllaNGpmMTdPZGNNMGlPNytQQUZPNzVEdFhnUHZHSk80?=
 =?utf-8?B?UjdnZTJqNjgwaGNnT2NiZGhiMEJoNDQvZGhGMVFOMC9iaG9tQ0haSEs3eGVQ?=
 =?utf-8?B?K0xSSElqQzhFNTNyZ1VyYlpmN09PUEhTZEROdC9Ma1had24xRDNWdTcyaDBO?=
 =?utf-8?B?YU5aeWJKeTNYb2ExdldGSlZ1WVdEallXOEJ5TGswcjRSNHIxR21RVCtYT1pr?=
 =?utf-8?B?cVpEWU12UmZ5ekxWVzcrbVJ6KytobUNRUHk4cDRoNUtiSkZpTUtlTzNFZGt4?=
 =?utf-8?B?RUF3VnB0OVN6VVFhZnhmMUJVT2RIelplelRCdXNGRk9jUUMzSUlydHpBTUJx?=
 =?utf-8?B?QVFsVzJ4VlJmSlpoakVaWk8zNFJIVDloR3hKUWV3V21Wb1BiTnhSSnZlbldE?=
 =?utf-8?B?eHI1MkRraFVkYm1td0VFVUNueXdLSGVqQ2ZlRnloZSs0dGJKOTlxcld3eHEy?=
 =?utf-8?B?MVUrSTRRelRycVU3RmdHajY3NU5BaFpMcXA3a3NvZWVJUDNmeTAzWCt1dnI5?=
 =?utf-8?B?RVUzaHFZdEZnSGMySlh4d1V1aXVkSEJ3a1F3bXdKYmlYOVZsNHFlTUFKUVV6?=
 =?utf-8?B?TWpiWnMzSzkyNWZEUTM3T3Q3SUd0aXl3N2FaSy92eUs4MnZjZW1wdjJKWExI?=
 =?utf-8?B?NW8yOGdoSUpFTnAvRHY5ZUszVFlJZmY3U1JjRWNKeFEzVFZ1NHBVMlY4UTl1?=
 =?utf-8?B?RFhJRDFsa1F6aVdIMEppbGxiZmZQVTY4ZkQrSmJoeTU3SlpwRm5tNGRYOWFG?=
 =?utf-8?B?YkhpWDZnS2g1c1dEWkJRdjBjdWZSaWV6YXRUZlNFTHhmeU90VFIyMmVrN2k0?=
 =?utf-8?B?TGhuNFFOWmYzcGpTUlBCZ0hsQTMwejk2TFVrTnpsWVhBeWdGVGswSjFGVWMr?=
 =?utf-8?B?bFZualpKNWJUNWRyNW83Y0RFYVBLWFhqSmsvODJaWTRkR2ovbmxWNVNrc1o5?=
 =?utf-8?Q?N49AeLoRIhyVR2UkCfJTkjNBqH22kOExmyqc+NN?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3acda3a7-2d8b-4344-3b4f-08d9922201b8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR12MB5278.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2021 10:28:20.7479 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: js5cb9+WI5TKIbzVRZ71KudUN57nckOrhRA9OscNvwb6rvClcTH+4fzmX9K17GNGSZs5eBRAu4qG3FJNUKrpdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB5536
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org, davem@davemloft.net,
 roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net] net: bridge: mcast: Do not allow users to
 set IGMP counter/timer to zero
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
From: Nikolay Aleksandrov via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Nikolay Aleksandrov <nikolay@nvidia.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On 18/10/2021 11:26, Hangbin Liu wrote:
> There is no meaning to set an IGMP counter/timer to 0. Or it will cause
> unexpected behavior. E.g. if set multicast_membership_interval to 0,
> bridge will remove the mdb immediately after adding.
> 
> Fixes: 79b859f573d6 ("bridge: netlink: add support for multicast_last_member_count")
> Fixes: b89e6babad4b ("bridge: netlink: add support for multicast_startup_query_count")
> Fixes: 7e4df51eb35d ("bridge: netlink: add support for igmp's intervals")
> Signed-off-by: Hangbin Liu <liuhangbin@gmail.com>
> ---
>  net/bridge/br_netlink.c  | 73 +++++++++++++++++++++++++++++---------
>  net/bridge/br_sysfs_br.c | 75 +++++++++++++++++++++++++++++++---------
>  2 files changed, 116 insertions(+), 32 deletions(-)
> 

Nacked-by: Nikolay Aleksandrov <nikolay@nvidia.com>

For a few reasons,
I'll start with the obvious that - yes, users are allowed to change the values to non-RFC
compliant, but we cannot change that now as we'd risk breaking user-space which is probably
doing that somewhere with some of the values below. We can fix any issues that might arise
from doing it though, so it doesn't affect normal operation. If changing some of the options
to 0 or to unreasonably high values lead to problems let's fix those and we could discuss
adding constraints there if necessary.

The second issue is that you're mixing different checks below, you say do not allow zero
but you're also checking for RFC compliance between different values.

The third issue is that you haven't done the same change for the same values for per-vlan
multicast options (we have the same options per-vlan as well).

Your fixes tags are wrong, too. Most of these values could be set well before they were
available through netlink.

Note on the style - generally I'd add helpers to set them and add the constraints in those
helpers, so they can be used for both netlink and sysfs. It would definitely target net-next
unless it's an actual bug fix.

Thanks,
 Nik
