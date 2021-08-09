Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9D33E4912
	for <lists.bridge@lfdr.de>; Mon,  9 Aug 2021 17:44:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C68D0403EA;
	Mon,  9 Aug 2021 15:44:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FASQYB_let1P; Mon,  9 Aug 2021 15:44:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 51D80403F8;
	Mon,  9 Aug 2021 15:44:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1DD2CC001F;
	Mon,  9 Aug 2021 15:44:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 52B02C000E
 for <bridge@lists.linux-foundation.org>; Mon,  9 Aug 2021 15:44:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4171160626
 for <bridge@lists.linux-foundation.org>; Mon,  9 Aug 2021 15:44:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=nvidia.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ePB9Oi2GDGC2 for <bridge@lists.linux-foundation.org>;
 Mon,  9 Aug 2021 15:44:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2061d.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe5b::61d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5BF18605D4
 for <bridge@lists.linux-foundation.org>; Mon,  9 Aug 2021 15:44:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PiBQIa0hCWEnG2rw7iDj4tLzxc3xWhw9dmHBUQRa8FLL8zaeGx+X/el1Cv0WCrY4iLWXj6ejv6qD1PcwxZxo3qChm4AzMpRse06+247lr/snK2ke8N1dWmN160QnZzjVZVti98UjjTjJKP4pCA8zoJH/ea0PLGRD79aT7302x3h4+xTuD0CCqMqjTuzqmZbkq781avjH+VeyiYnbA+IUeMprZ5E4nXNS8t+uVU3kKuFhh6OeDVEyIq6mWncJdlPnBOxVIZ1EmgPVqS2nmN+scUIrIzp1lF5WfYJqlb2EKzcq/UvOeIl/XhXFjznURAXjy5XQUHd9qWvssmMSifTNrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vC/sSfgn41mQctQq+VvHgYGUdhl6nJ/LCTzp9qvcphs=;
 b=S7tDWUqxX5zVr3FZgjmE/J7UsbYKZV0qUZBVks8dW3gzjqVRjsSNvvB9K1/pvKahEWF925QG7IZXLuJnUaIgrXP+9DUNJPAXeqVZxLf/VlCpfk3iLgyaFFbUkCOGI51KRpF7oKsUoDSOEosFkZ9d2T2/mR8un90s1iWBBc8HGyky0A7Qr8SIXWCgwpRF1ZzIrOH0dW3ddELwFrU9kxPHRs5HAYOcJuoN2Z+hhcxdgMpokV4WG2Fz0CeAuSewPvBvN0YF30TwXTa+QhpSEnt+EB88WbJPD/s182qSy2V03+0rSAJKsORRpH+Mq2ldZNC/RLbm4SF+AxiQc16rB4MnGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vC/sSfgn41mQctQq+VvHgYGUdhl6nJ/LCTzp9qvcphs=;
 b=D5aeMchqmfPZiixRPeFG1OfiEnYgYpa5o5TdSYS6qdP3CtOP1ev6ies5ax4sTehKWHeTj4PV8ISN6OIY06uJfuAoFQ6zjZvqPO13oSdWsvILeAoJAl//Y1x/d++3eCnuCk67bbb6vpu8Ffl5zqsiRuZy2kMShAuzzaSeX9pbhyPJEQ1YnBO6vnCHctQ7pJcAQyuJO5bO5wruGeanTU/C8EKZXzF2JHfQtFk3Bp04B0Ihum79i+BNIb/BqrO/T7aJMCWCax3CuVJXAJNFaLIFFHvujFikbOC3q5+Rqg0Kpefybp+vS+KMZMdgJScsO2SwknfYPao6qdtqO7MSEgVKdw==
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nvidia.com;
Received: from DM4PR12MB5278.namprd12.prod.outlook.com (2603:10b6:5:39e::17)
 by DM8PR12MB5414.namprd12.prod.outlook.com (2603:10b6:8:3e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.21; Mon, 9 Aug
 2021 15:44:03 +0000
Received: from DM4PR12MB5278.namprd12.prod.outlook.com
 ([fe80::c170:83a0:720d:6287]) by DM4PR12MB5278.namprd12.prod.outlook.com
 ([fe80::c170:83a0:720d:6287%6]) with mapi id 15.20.4394.023; Mon, 9 Aug 2021
 15:44:03 +0000
To: Yang Yingliang <yangyingliang@huawei.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org
References: <20210809132023.978546-1-yangyingliang@huawei.com>
Message-ID: <01704dc6-23ae-c5f0-d34d-cfa7b8a2f08b@nvidia.com>
Date: Mon, 9 Aug 2021 18:43:55 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210809132023.978546-1-yangyingliang@huawei.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0150.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:41::14) To DM4PR12MB5278.namprd12.prod.outlook.com
 (2603:10b6:5:39e::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.21.241.187] (213.179.129.39) by
 ZR0P278CA0150.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:41::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4394.15 via Frontend Transport; Mon, 9 Aug 2021 15:44:01 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9cba0d83-f739-4860-0bcb-08d95b4c83b5
X-MS-TrafficTypeDiagnostic: DM8PR12MB5414:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM8PR12MB54147F74B2BF5D7648B831AADFF69@DM8PR12MB5414.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: l4hFWdxVB7pYxIlRZLzYfUOulG2KkZkxkRdp8AMqFuEbnTpu9vb0SrNN6d2xRLlNCNYtOi2l8+LMFwZdpvpK05iAo/RWOnrA6JY7uTIp1/HV6jBGYRVvuNLaQGNzzmk44UY2Ojawb6MukQCUtw3p5TUyhsr5qi0L5jz9e5RiOtj3ogkxZxtzwx9TuB36mLPwL+Oi8p9W+dBV0QKOn12+US07Vj1l8TEtXT+V/lOHusYf2woEHdQyJh4VKZFAhU1o/J1NxGs1Hx4LwvyuK8qXjhPaBpZNM+zvSG9PKHIZ4bHvYueVntJucBXsLtm0PFf39TaC/GTFt/MmzyVthcxu+2sAY2HfpazV8TxsIO5LKScXotjkqSV3GFMYqxsgFzkt5nG/e/F5xLxMiD2Cb1E+g3qQCPyxyx/MA734d2DMxamnrzCLPb7IKjqy3k0eYSzfRwJvYGxfuY3xybI0ojWth0oIxk96PJfP5SuAKgiaxZnWRzocy4IGUgmUmuf240wnua/IayI90Mn1TzkxJ6z972XF3eP3aGqZJYdlAOic5BlM5KUiyYdD2zCQ4T+4QRcPRFeAKco4bdrXQ29UB60fGFkmVrsXjz9xBiDQb1h454iBcKYI5MLV3ldYa3hkVjVUNvXvlLgpDIawveXBLb1Web2JtdpUVgWUOD6B1Ny6iiaoIehQ25AD3lNJN1wYMw++Oct41TXvkgFMNzxhHwRJWImkF5BRCkJLNgmQF14rbMHhvToJbMaWle9i6zS0EJOKGp6gjGymW19XR018SX1/QQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR12MB5278.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(346002)(366004)(376002)(39860400002)(396003)(2906002)(31696002)(26005)(5660300002)(8676002)(478600001)(6666004)(8936002)(31686004)(2616005)(16576012)(66556008)(66946007)(6486002)(38100700002)(956004)(86362001)(186003)(66476007)(4326008)(316002)(53546011)(36756003)(45980500001)(43740500002)(505234006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YXJLeFVKaGZLblNOWjBlUVVBRnRWdFhhRngyYmRoY29tSlkwRjNZQlNFN3Mr?=
 =?utf-8?B?RW5PMlZLZ01xejM1b1lHMFAyRkR4MlUwNm5UcHhiQVdIR0srSllNbk5iTTVF?=
 =?utf-8?B?SU9GbVd5Q0RJdDlnMVF6ejdDMWJ0VmpyNzhabWQwVitDMGZSa1VQTzVabks2?=
 =?utf-8?B?Lzg0VlZqdEVNRHFMN2ZNL2ZMYlRUZlB3a3hTbTlabyt0dy9Vczg0YjF2T0lU?=
 =?utf-8?B?K3pZZUlyYmdwQWYvOU1jSXZ5czFkK08ySmJGWHIxdEVlR2ZRa2Q0emJBdUVB?=
 =?utf-8?B?NmwyNjRveXlhbVArZms1VExQRU9UaDFpOUoyT1U5THVCaUpqRXViVE1iZC96?=
 =?utf-8?B?ZVdMemdNdkQycUxpaFRuUzYvOHhtcWdWY2E2VlFtWVk1R21Bakwwa05RbmhV?=
 =?utf-8?B?ZGgrcm5YWVNKaHBSV0ZFeE9LeHc4ZVREQktxMUNROGtjMXVEc1VXeU5xdjIw?=
 =?utf-8?B?M1lwR09KTkhpOE50YkwvN0tPTVM4TnBDOWRTRTRHMGt1ZXN5ZmVJK0xTQ3dR?=
 =?utf-8?B?d2ZkNHhyWFNqNUJlNG51NFZrS09TUDRKcXI5aE9PSkZjNjVuN2JaOFVNMFZ5?=
 =?utf-8?B?ZElsemZXSjdYSkVkRXFUTmVKNUhxL0FCWlI1Tnl0UWNWL3RSOU1TVEFYUEZz?=
 =?utf-8?B?Rnl5c2d4c0pwRXBLb3Zub2ZtZUlxb0ZuekJqbFRSbGlTRCtYaFZNbEw5OHBF?=
 =?utf-8?B?b09UbEFNQTQ0bG12UEduM0Jndkt0L2NNeGVOT0FrdnR4TkNQNkhTWGFLMUti?=
 =?utf-8?B?SGxuTVBQdU5ZUWt2dHI2V2pzVElIREF5Zkl2T2tmVmxhSEp0U0R4Nitkc01F?=
 =?utf-8?B?K2RhYk81d1VvbjBnUW0wV0lEdjV3Z1NIVjhHejMxZG5kQzZEZm1xQ3JWa1J1?=
 =?utf-8?B?NkxHbnQwQlJZV2hJc0g2ekt6TmEvSTN6aVpqU2o1VE4zSFBMTzZGLzczSmU4?=
 =?utf-8?B?dUJXaWlaeTBOeXE0b0c1VWlobHpUaWhIMmxxN0xyYm12UGJRZDdVOXYrS3NX?=
 =?utf-8?B?VHFGMERJWlFMTEdlazZ2TzB5OXpoOGt0alRKSmZUamcreU11NVAreVNWM1hl?=
 =?utf-8?B?TmpXOU1sOHFqa2ZETi9TTmFGcU1Eczh3d0FIVXRZWmpBc1RzMzF3YUU1azlY?=
 =?utf-8?B?L0tEV3NyS0pjY0o2WFhmSVdJOGQxd3VJZzdGUEFyNXp6WVFGb0xuYVlKc016?=
 =?utf-8?B?K0pjNmVPdjBZVGd5VFNuOXZKc0hPMDFsbS93NUlncVY1RWpRV2hwazBoazRW?=
 =?utf-8?B?dTNZSWhIbUxwQVBNMThBWEZLMHcvckZObEc3cHA5TGdyQWNWZTZpeGlqZzQw?=
 =?utf-8?B?YmVpNjFNTEkydzBIQXRDcGRicHNDeXBxOTFjbUxDVUVjLytYVXdwYmE1WHdM?=
 =?utf-8?B?UFRvRkxkTDZ1azI4ODA5dVd4WXUvQUFKN0FwdUduNkhWR2MrMXR5ZFVvWHRn?=
 =?utf-8?B?MkVveHAwcW5QbHRtVUxQRUo4bld4WVd0QlNrUjd3VVY5MVh2b0F6SmlYRllS?=
 =?utf-8?B?eGZja1NNb1J4REZiM0k5bnAxbUdRc2lQcVEzTUZIOThXZFc1Q0xORDNXUEFM?=
 =?utf-8?B?T0MyQnNSMlBjMU42L3RxOFB6MjhOUHh2Ri9TNEZXYVIyR0lCelhYemdBVXdY?=
 =?utf-8?B?eGpzOGp2OUxOOTdOQmFXRENTekhBelcrZ0w0Y1l3d1czdzZvTnhzNyt5eWlB?=
 =?utf-8?B?dkVqMy9PN0NENDRqcFhGYkVkMER6ZU1IaFFIQmVweExnUUpXK1hoSjJFS0V1?=
 =?utf-8?Q?ZYYxw7EwHoW36pPbsqW+BXhp7mphTWTbgR86w7M?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cba0d83-f739-4860-0bcb-08d95b4c83b5
X-MS-Exchange-CrossTenant-AuthSource: DM4PR12MB5278.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Aug 2021 15:44:03.5844 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2KVd6V39lhH9KS/dHT3Y3w62u8uvzFnjTSGpNCDcofydZddz74P39fEISYO+38wg8bDmMqPKcDw/9yXFuWTnbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR12MB5414
Cc: kuba@kernel.org, davem@davemloft.net, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net v3] net: bridge: fix memleak in br_add_if()
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

On 09/08/2021 16:20, Yang Yingliang wrote:
> I got a memleak report:
> 
> BUG: memory leak
> unreferenced object 0x607ee521a658 (size 240):
> comm "syz-executor.0", pid 955, jiffies 4294780569 (age 16.449s)
> hex dump (first 32 bytes, cpu 1):
> 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
> 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
> backtrace:
> [<00000000d830ea5a>] br_multicast_add_port+0x1c2/0x300 net/bridge/br_multicast.c:1693
> [<00000000274d9a71>] new_nbp net/bridge/br_if.c:435 [inline]
> [<00000000274d9a71>] br_add_if+0x670/0x1740 net/bridge/br_if.c:611
> [<0000000012ce888e>] do_set_master net/core/rtnetlink.c:2513 [inline]
> [<0000000012ce888e>] do_set_master+0x1aa/0x210 net/core/rtnetlink.c:2487
> [<0000000099d1cafc>] __rtnl_newlink+0x1095/0x13e0 net/core/rtnetlink.c:3457
> [<00000000a01facc0>] rtnl_newlink+0x64/0xa0 net/core/rtnetlink.c:3488
> [<00000000acc9186c>] rtnetlink_rcv_msg+0x369/0xa10 net/core/rtnetlink.c:5550
> [<00000000d4aabb9c>] netlink_rcv_skb+0x134/0x3d0 net/netlink/af_netlink.c:2504
> [<00000000bc2e12a3>] netlink_unicast_kernel net/netlink/af_netlink.c:1314 [inline]
> [<00000000bc2e12a3>] netlink_unicast+0x4a0/0x6a0 net/netlink/af_netlink.c:1340
> [<00000000e4dc2d0e>] netlink_sendmsg+0x789/0xc70 net/netlink/af_netlink.c:1929
> [<000000000d22c8b3>] sock_sendmsg_nosec net/socket.c:654 [inline]
> [<000000000d22c8b3>] sock_sendmsg+0x139/0x170 net/socket.c:674
> [<00000000e281417a>] ____sys_sendmsg+0x658/0x7d0 net/socket.c:2350
> [<00000000237aa2ab>] ___sys_sendmsg+0xf8/0x170 net/socket.c:2404
> [<000000004f2dc381>] __sys_sendmsg+0xd3/0x190 net/socket.c:2433
> [<0000000005feca6c>] do_syscall_64+0x37/0x90 arch/x86/entry/common.c:47
> [<000000007304477d>] entry_SYSCALL_64_after_hwframe+0x44/0xae
> 
> On error path of br_add_if(), p->mcast_stats allocated in
> new_nbp() need be freed, or it will be leaked.
> 
> Fixes: 1080ab95e3c7 ("net: bridge: add support for IGMP/MLD stats and export them via netlink")
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
> ---
> v3:
>   use br_multicast_del_port() to free mcast_stats
> ---
>  net/bridge/br_if.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/net/bridge/br_if.c b/net/bridge/br_if.c
> index 5aa508a08a691..b5fb2b682e191 100644
> --- a/net/bridge/br_if.c
> +++ b/net/bridge/br_if.c
> @@ -604,6 +604,7 @@ int br_add_if(struct net_bridge *br, struct net_device *dev,
>  
>  	err = dev_set_allmulti(dev, 1);
>  	if (err) {
> +		br_multicast_del_port(p);
>  		kfree(p);	/* kobject not yet init'd, manually free */
>  		goto err1;
>  	}
> @@ -708,6 +709,7 @@ int br_add_if(struct net_bridge *br, struct net_device *dev,
>  err3:
>  	sysfs_remove_link(br->ifobj, p->dev->name);
>  err2:
> +	br_multicast_del_port(p);
>  	kobject_put(&p->kobj);
>  	dev_set_allmulti(dev, -1);
>  err1:
> 

I currently cannot test it, but it looks good to me.
Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
