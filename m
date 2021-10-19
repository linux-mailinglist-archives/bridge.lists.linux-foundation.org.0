Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 37706433BC1
	for <lists.bridge@lfdr.de>; Tue, 19 Oct 2021 18:09:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A517E80B16;
	Tue, 19 Oct 2021 16:09:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iRAHDXhCVH5b; Tue, 19 Oct 2021 16:09:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 3AD6D80BBD;
	Tue, 19 Oct 2021 16:09:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 06511C0022;
	Tue, 19 Oct 2021 16:09:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2340CC000D
 for <bridge@lists.linux-foundation.org>; Tue, 19 Oct 2021 16:09:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0AD8780B16
 for <bridge@lists.linux-foundation.org>; Tue, 19 Oct 2021 16:09:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i7z4Jhs98Zyg for <bridge@lists.linux-foundation.org>;
 Tue, 19 Oct 2021 16:09:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2063.outbound.protection.outlook.com [40.107.93.63])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 16E7680A69
 for <bridge@lists.linux-foundation.org>; Tue, 19 Oct 2021 16:09:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IqTM0GRkweOLnuKRhf56EMda2QAObdDMH8TjLvpm/ZBK5Z4RSxYUwLTXUblVq8LaTLxWEGYAvajBnfV9JYbQtk6O/ZmPgx11gIiAM3KTNspgSUBovMdk/hqxBvJbs8vdh+0V5XaSm2L5uR3j3hg8vSwXc0HCkXseD5SMch9xdgePae8Tti51rWUuKyEsPdjGENmhKxKzklRxGMrRemA3vlm3++a9VHSQrLBGojvSFrHURvS93cZY9wosJB7p5jTn3kouCA4m4B2RR3V0/OwM3Ci6Wwprax4hcZG4lsrWRJ60xFVivgTmOgtPjKHhc6TIpPynlM0eI3Ogl+NhkFQcjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yeVn+3UfkKxZOp00Sa0Ra+gr80KmUXeDuXI3JWLy5vU=;
 b=dwqZoqDVgt9a5uo5yWAj3YeMGK7YxPSS3dHQD7mVQCcr58xHPXHg+AlFLcNGje6wcMzVabyD60qx+kofgTtldn3zK7YCoBLTYhd8WiPe3hQQbHT+xYkjFJ/9T0+LkXkJdxGh634JSWahrNOgnfuobGqc/2a5JFqX5p/8XYazUDe/GXtO+N9d8JCc6ApY3X4MzE/AGhudWY4Vx23TJm4txYLezqzRZwvuDaGn/CvLp4Xt0naXUoI/22lHY3583yjQNoUzp3M2R2ighGHEFvVr5l9YmEkNnT5L63PJR3Hwlv8tzv3bduWWDUYQ4nTwxJ2KUxwK33Ov+FQ8PFQgbNvFxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yeVn+3UfkKxZOp00Sa0Ra+gr80KmUXeDuXI3JWLy5vU=;
 b=A/9aLoqM+aK2eWpVDmCPEPx2a7HZW1a4atrdNHifB3nBMkckh9z3wRBsd9HOKFjbTJyD/Y/+jIAoIdzp3bPoTWDs5TsHHBeR5MNzSqPWribKo6GEXgsmRt6+ltFYNy000ALELsb71BWeujJ366lVV3uRJXoYbuUrWzjkoXOIWPb/Mcp5BtEYXzFSTrXhksqOidSsYUn3Xx5ZUGtDvrNsyw5wrRAuC4vgGOt0pjk4bgt0FrkOlnA8kF+8qIQekZcXLieB7Kd9/kAnRGc1k2hGPHCHIqIw+MmEOGAzvf/TpnleXFPFSKz8axp+zk0gZ4US9SRDnST3zHyGl8+HArvwcw==
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=nvidia.com;
Received: from DM4PR12MB5278.namprd12.prod.outlook.com (2603:10b6:5:39e::17)
 by DM4PR12MB5389.namprd12.prod.outlook.com (2603:10b6:5:39a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.17; Tue, 19 Oct
 2021 16:09:49 +0000
Received: from DM4PR12MB5278.namprd12.prod.outlook.com
 ([fe80::513c:d3d8:9c43:2cea]) by DM4PR12MB5278.namprd12.prod.outlook.com
 ([fe80::513c:d3d8:9c43:2cea%8]) with mapi id 15.20.4608.018; Tue, 19 Oct 2021
 16:09:49 +0000
Message-ID: <a6bbd579-3d5f-6cbd-9523-49226a2b5a7a@nvidia.com>
Date: Tue, 19 Oct 2021 19:09:42 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
Content-Language: en-US
To: Hangbin Liu <liuhangbin@gmail.com>
References: <20211018082612.625417-1-liuhangbin@gmail.com>
 <ab707f4d-587a-0fae-e673-5da49f5946db@nvidia.com>
 <YW5a9JLnfZc1M8Gh@Laptop-X1>
In-Reply-To: <YW5a9JLnfZc1M8Gh@Laptop-X1>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AS9PR06CA0025.eurprd06.prod.outlook.com
 (2603:10a6:20b:462::30) To DM4PR12MB5278.namprd12.prod.outlook.com
 (2603:10b6:5:39e::17)
MIME-Version: 1.0
Received: from [10.21.240.28] (213.179.129.39) by
 AS9PR06CA0025.eurprd06.prod.outlook.com (2603:10a6:20b:462::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.15 via Frontend
 Transport; Tue, 19 Oct 2021 16:09:48 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9326e9c8-da12-41ed-54a7-08d9931ae091
X-MS-TrafficTypeDiagnostic: DM4PR12MB5389:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM4PR12MB5389C6AF8B6BBBC33BBC2BB0DFBD9@DM4PR12MB5389.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4EwKD4sAmKNixWWy0XhZ2LTB9smNbl56epd/UEfgt5QvXDKK97LTXt66FEI1t6P1efwtdtdYcme6Xjai84naRlyMHDd7aA8fktXCf+FWOZvIs5uyXNYR9p+zitoIEoPDHAL3+DJtm6wKNEb3NvTPcAt61nWDBTViJDhjt9TeouLX6VNU8lSY0kugxjr5UbY8+2EeWw31NtI2B5gjec1hhFSKh6ogxY17yrMeZA0R9ehinFiYxHH4uRMRDZBL0SE0u4hgEzOA5MZ/qC0ea7g8GVdU694k2a9+M0Aqk0NlUdnqigKiha/sXtonbOi9Mh5gRsbz0BQxic2Um3703iBW3VGB+wLfMK7nOzGmhauw/lZh8/MDTRMr7kMdN4/8uAFA272WIm7PPuNr877rw0qAT8aFltKaXOhCH1jjGAvCWOU2LuuhT2c/zGhY+Ag4cGLorvLXglrS2bER3H8ox7JmxjAw7J5+YlGl4btMSJUT2/ev4G+x+tDHV73eOEJkwsAYg6uRTiYdHozSoExb98k9ruxzFZNKd3LpdBlS3PZ3TP4DKtSS5mR3YRFUTybAm4pcQfN0xZeptUWysOylrX4YGVeMbQVcdlHpkvlRTfSnu/JPOm7fjb1kUZy9l78SR8c7E+woDTpn6UcO3JZ1GBuVeMZbd1eFqEua2scfDt0V4DZrcCW36DBlZzc+SGptHqQ/DQkhQrWJ4VxJtr7IWOc3mmZ/bHE7EKDMIYPIT9F8WRQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR12MB5278.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(186003)(8676002)(6486002)(6666004)(26005)(956004)(2616005)(31686004)(66946007)(2906002)(83380400001)(5660300002)(508600001)(53546011)(66556008)(8936002)(36756003)(86362001)(16576012)(4326008)(31696002)(66476007)(316002)(6916009)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d2xEb1pRV2xRQUpiT3hFbWIzdkZkVllvZURNNFBqTXdyalArRVp3U21RS1pE?=
 =?utf-8?B?K3ptVk1kcjZ4ZXBmTW1oRkorRjlmc1VESlZVTG11ZzdNanZTNHdvVkVkTTZz?=
 =?utf-8?B?dXZkYlpqbWhLcHlCWks0QktOQ01KU2l0SmpEdnd5UGI5am9uR1YvbWM2MzQ4?=
 =?utf-8?B?M0dVeWVzcGJwUTU0U0V1b0VuaFF6bHlyVS9OZTU0VnFYeDYzMkRZTzJpclpR?=
 =?utf-8?B?T3p3YWVJVkhUN3hWSnRQQytEWjRJS213aTM2elkvVmowditOdm9wMksvakl0?=
 =?utf-8?B?ZGQrUE9WM0I4SW9XQkhibVFuaDhRY0NCZVptSnQzcldyeWNReWxDWFZHNDhF?=
 =?utf-8?B?SDlic1JzMWJKVkRJMkRGb3BKaUowS0xBenNOODJYMkhRa1V2TDB5eHRkM2dq?=
 =?utf-8?B?eXZLTTd5Lyt2cXloRFZaeUdBTDBRTnRDR21NZ1pJRmFyZldSamxrUk5RSmhq?=
 =?utf-8?B?OUtIRWhhRERMQTZ4N1NBTDIxaXlFeGNqRmFwMHVzTWdiNjkwcTZKSnh5cktK?=
 =?utf-8?B?QUtJRTZLUlRQSks5cU96a3c5RHlOOElHVys1R09pUUNORmc5R0VwbDVZZUsy?=
 =?utf-8?B?bUpIdmVrUnpuNkxONjlTQXFuaGVzUkhkRnV2czJ4a25DeGVxNG1iZlc3dkhr?=
 =?utf-8?B?K0xuN0NGdzI5VXR5ejlwMExXbVNZZWFuNjZBMDRHemdmc1FRbDhVdUFRRmFB?=
 =?utf-8?B?YUplZXVIUVFkUDZ1ODR3SE9WclhNZWZxdUlwNkpLM3dvWnRnVEVEUGFFQXJh?=
 =?utf-8?B?OWNDdEQrSUtTZ2tkMXFnMHdiNitmQzE2b29uQ3pQQnpRZk5GYzMvYkFnbGRo?=
 =?utf-8?B?SDJHVzVHSVFuZ01BTHlQTkpwdkh3RTh4ZjJldjlZVjZSTWFZOEZ5Yi9PditO?=
 =?utf-8?B?OFMrcU1VUWNvczBhT0RNWWNsSFdzYllDQjBXd0JTV2o4ZFMxb092Zk5sVWNQ?=
 =?utf-8?B?anlOcnh1YTErMFJGL3k0TldlcE5tY1VCUk1FNFNzZ3hTVlhNYmxJVFhYOHRq?=
 =?utf-8?B?ejk4NFpxbFVaTTI1RlZ4VmFtMVkxL2tiNjg2SWM2R1RJc3I0clZMdDVpK0lS?=
 =?utf-8?B?eVRXQVFoanBXTkxtRjd1RWhyMXFzY3lYaHFNVm1WNkhwZ3hueGhtcnJTM1NJ?=
 =?utf-8?B?Y3ZKTDJyWk1zcTFNaGFXM0xCa0RXTGl0Y0xkVE4zc3loM2xnYWNLTlU4RDRG?=
 =?utf-8?B?V3k3QmVkNU14Yk9ITjI0RUt6VHJJU3B1cVZmU1RUSXZnRkhlQ1ZPOFowR1FZ?=
 =?utf-8?B?UllKSGlydWhnNTdVNUc1Qm9LbHNkckVOamY2alY2Tm1HZmxtZ1hQQzJmbjd0?=
 =?utf-8?B?MklxaldNUVF5Yy9JTEY0N1JJUTFIVjg4NTkrRUVySm1KMFdnUCtyQVJ3WEtt?=
 =?utf-8?B?SmxQZWh0RG90cUNWdDNydHhQbTN5eVhoRGxpY2ZkeXJsMDBZNXlNaHl1aWVC?=
 =?utf-8?B?dGhWb0lpaFkxU21IRUh6aUtwYjQyQS95cWRGMHdpSXpVTmg5bFlLdXBOYyt0?=
 =?utf-8?B?WGxmSGVOZnN6Q2lITjNHTE5zcklhNWMvTHJHV01GUmRIVWJrM1FZMHRiOTVQ?=
 =?utf-8?B?Nm5LekJ2NThBenExd2p3bDBCQXBIT1R1a3pLeDZMQklZOWpmY2JndlVMYzBE?=
 =?utf-8?B?VnJ0WlR0RHcwa1AvVXQ0R0ZJOENWV3NYWmpCT2YxbUdxRG92MU9tRUo0Vllq?=
 =?utf-8?B?aTlqMytlQkhLZzFGcit6dmkzZTFYN3BGMk8rL1ZRelF1T2hoakVIcGpndVVu?=
 =?utf-8?Q?HX4sxdNWikGhTvM3sWay5Oo4Wci7oVcX+yVJpkV?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9326e9c8-da12-41ed-54a7-08d9931ae091
X-MS-Exchange-CrossTenant-AuthSource: DM4PR12MB5278.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2021 16:09:49.6734 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y3wZzHSCpvrRMqK5PnpU1/T6SAY0EpxODOoNLpS2yfN9DoOsFpjl/Pm0Ef4QRQtUBv61xwhH5T8JqjN5d+g2Bg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5389
Cc: kuba@kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
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

On 19/10/2021 08:43, Hangbin Liu wrote:
> Hi Nikolay,
> 
> On Mon, Oct 18, 2021 at 01:28:14PM +0300, Nikolay Aleksandrov wrote:
>> On 18/10/2021 11:26, Hangbin Liu wrote:
>>> There is no meaning to set an IGMP counter/timer to 0. Or it will cause
>>> unexpected behavior. E.g. if set multicast_membership_interval to 0,
>>> bridge will remove the mdb immediately after adding.
>>>
>>> Fixes: 79b859f573d6 ("bridge: netlink: add support for multicast_last_member_count")
>>> Fixes: b89e6babad4b ("bridge: netlink: add support for multicast_startup_query_count")
>>> Fixes: 7e4df51eb35d ("bridge: netlink: add support for igmp's intervals")
>>> Signed-off-by: Hangbin Liu <liuhangbin@gmail.com>
>>> ---
>>>  net/bridge/br_netlink.c  | 73 +++++++++++++++++++++++++++++---------
>>>  net/bridge/br_sysfs_br.c | 75 +++++++++++++++++++++++++++++++---------
>>>  2 files changed, 116 insertions(+), 32 deletions(-)
>>>
>>
>> Nacked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
>>
>> For a few reasons,
>> I'll start with the obvious that - yes, users are allowed to change the values to non-RFC
>> compliant, but we cannot change that now as we'd risk breaking user-space which is probably
>> doing that somewhere with some of the values below. We can fix any issues that might arise
>> from doing it though, so it doesn't affect normal operation. If changing some of the options
>> to 0 or to unreasonably high values lead to problems let's fix those and we could discuss
>> adding constraints there if necessary.
> 
> I started this patch when I saw there is not limit for setting
> multicast_membership_interval to 0, which will cause bridge remove the
> mdb directly after adding. Do you think this is a problem.
> 
> And what about others? I don't think there is a meaning to set other intervals
> to 0.
> 

The problem is not if there is meaning, we cannot start restricting option values now after
they've become uapi (and have been for a very long time) because we can break user-space even
though chances are pretty low. I don't think this patch is acceptable, I commented on the other
patch issues but they don't matter because of this.

Thanks,
 Nik
