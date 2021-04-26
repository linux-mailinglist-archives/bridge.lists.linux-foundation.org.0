Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B471136B3EB
	for <lists.bridge@lfdr.de>; Mon, 26 Apr 2021 15:15:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3AF538343F;
	Mon, 26 Apr 2021 13:15:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NA0ivzD0a3ZH; Mon, 26 Apr 2021 13:15:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB7808343E;
	Mon, 26 Apr 2021 13:15:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 96DC4C0020;
	Mon, 26 Apr 2021 13:15:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5EAA6C000B
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 13:15:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4D3CE605C0
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 13:15:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=nvidia.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kIazobb7lR9k for <bridge@lists.linux-foundation.org>;
 Mon, 26 Apr 2021 13:15:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2061e.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe5b::61e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3ED69605A8
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 13:15:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KupBDYUlVYNO/lZpFdTIsh3KrK7RcAMQ7F+M3S3Ul2kNJEX3sdw5ooMmyQthvrlRvOf+NQ/nTy9Iyi2S21l/3DTembmWMwIBtEkxA6wRE3ZeYPwzUpoVQKFRnomZfjWwMg58c7wVo6jrMKk0U+XltpOcC9tCrBarafqInNlN16ZSBX0yeTdHZnn9OMfY2FfjvMR4BgqFMsOeCsqKkOBORmB4T3bZvR7B4RfLeInK2mopq8+lbYTSIp4E21RtYpgw5Oq8s7drOOpTTw+YrlAW1m0sBQ4OENkEBQmgRYCiXFJAPmhFTJgaBSnJvoIJZne5xYQvr8w1qq6XipynfcBDwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ElITN/SEJa7a510AWVg3PsY9eUAEFGGK8FAip/Gkb5Q=;
 b=AegfRgGdIvbNNY2KjBpHo1ngjSYAjv5zu/SlsRypkFJPoJ+sgtIvVzBz6xqUE8s/qhl5tupWgZv8QAvwN94gG/AQG2mbp2knStQ+3bpMFmeogYyZ/clyLkGt6l8yi5IcE3yQtdLhOi7/mmsMd0a+IOdl6UcvepDq1OaRIfHndr2ZzUNFgDPW5grhZbAzMuwzv5j8xpt+/VJzR0Fap4OFulnkMV5UuZoZdrIE0kWBh8i1ngsFVTh0jfCXhSXhH1J6Wkm4op/BThgtHibxNyLFHwXM1+sItwOllW+WLSzvIMINIPtB8BOzbG3MYoHY8W6alymBoph32Sw1Sr7aB73ecg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ElITN/SEJa7a510AWVg3PsY9eUAEFGGK8FAip/Gkb5Q=;
 b=uSFWwwKhoa73x37R/1HkzHIa3k3VD+FsFJoEaHF+kdrv8owPT9K8PTkj/D0PKN+9cQZjmVG02LBr3CscNk1IHPLul7sn9ssYdXCJKUJdszTA8yfbtiGD9KjxKk+9OWlvsZDhXOMXngwo5ViAblVWiUVZLsgdmgZoiS9EfsTgnLDHnLvMy4lehRuxsQUCpXpJ4rigEshJiOaVeLs3FuH5TSZyAvJfAd8y5AmWgGPguuxSw2G01Zvb8Se9xxoDoMb7FcmGahwiBwNvnuM2J84UnO9kXVpfYcFwKSCGoMEVcwelOve81z3KzIBV2xlelQYYQcwCz0FXT9sBXXgwn3mgYQ==
Authentication-Results: lists.linux-foundation.org; dkim=none (message not
 signed) header.d=none;lists.linux-foundation.org; dmarc=none action=none
 header.from=nvidia.com;
Received: from DM4PR12MB5278.namprd12.prod.outlook.com (2603:10b6:5:39e::17)
 by DM4PR12MB5344.namprd12.prod.outlook.com (2603:10b6:5:39f::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.21; Mon, 26 Apr
 2021 13:15:50 +0000
Received: from DM4PR12MB5278.namprd12.prod.outlook.com
 ([fe80::a145:fd5b:8d6f:20e6]) by DM4PR12MB5278.namprd12.prod.outlook.com
 ([fe80::a145:fd5b:8d6f:20e6%2]) with mapi id 15.20.4065.027; Mon, 26 Apr 2021
 13:15:50 +0000
To: Herbert Xu <herbert@gondor.apana.org.au>
References: <20210425155742.30057-1-ap420073@gmail.com>
 <20210425155742.30057-3-ap420073@gmail.com>
 <ed54816f-2591-d8a7-61d8-63b7f49852c1@nvidia.com>
 <20210426124806.4zqhtn4wewair4ua@gondor.apana.org.au>
From: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <1e8cda49-4bc3-6f0b-29f3-97848aab18f0@nvidia.com>
Date: Mon, 26 Apr 2021 16:15:42 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <20210426124806.4zqhtn4wewair4ua@gondor.apana.org.au>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [213.179.129.39]
X-ClientProxiedBy: ZR0P278CA0088.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:22::21) To DM4PR12MB5278.namprd12.prod.outlook.com
 (2603:10b6:5:39e::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.21.240.78] (213.179.129.39) by
 ZR0P278CA0088.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:22::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4065.22 via Frontend Transport; Mon, 26 Apr 2021 13:15:46 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d7d6f3d2-5ab0-49be-afc4-08d908b569bb
X-MS-TrafficTypeDiagnostic: DM4PR12MB5344:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM4PR12MB534416B2BCE8B8B86E5B63F5DF429@DM4PR12MB5344.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /6R2X+deJTjGxlycPb0Dbxdk0zup7yIAoteGoVz8KfBU5zkcsXwwKdLBT7J9Q6AVRRiKAuiHbaqoZreZx8TPaqpDVon7tMvbQAQUWCYGASj0ZouqLlRsyH6NvkEAFK7LMI06HzmT1Vwo0qP3N0urKZq57ebcho7fhUbOQyhF8HtskEpma0yrAyWFII+EfwNbH6cS86KlZSh/65EFoHeEQUUW0LIlfsLkJL/ad2CTr9gHt9N8dhI7tpwNu0y9u48NA+z8B+JEvhLDBTk9WniX3lwFjCekciXHtS0Q7yPPoUb4eae+Qgw2BW5/Ui+bTG1Xjx2EMwY/wWjcmvZ0EcTSFwKwiLYq11qxu+mbzxbX8/G2BYUKlWEaAmPnCLxElYa5esrvgPWwRBaY8uVzvWpGIglHfk9Q1sfw+jsxQ0TlrRQsxkrzpS28yY/rbqbHlhZfNK8ZMrLC11X6ZdJB5Z8oUqqUiWU9F9YV+gmhPQXwdrubf7GD037C+qTTx5fxZTP7sIvBJdc5y5hG+tqFAiFZPd0UD8rJgcH50dgCvNUICsXsiV9Rxka/061q5GDMVgbvfyIw60Eml8lmH4qz2gfg8+G0EUJ5denHdJwvS2YYeRXUjAplr2QWEy/598psh9GxTxLI/FCHQwoAS0mEuTDBEmamOhu3Gogfw8pfg9GZxzJ2e3KjteN/iiCwvmWLFi3T
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR12MB5278.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(366004)(136003)(346002)(376002)(39860400002)(8936002)(186003)(5660300002)(4744005)(6666004)(86362001)(316002)(16576012)(956004)(66946007)(31686004)(66556008)(66476007)(2906002)(16526019)(478600001)(6916009)(38100700002)(36756003)(8676002)(83380400001)(6486002)(2616005)(4326008)(31696002)(7416002)(26005)(53546011)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?NEVjK0RHU2xFWjJHNHk2c1BkdGpIeGRRMWttTy9zRzY4MzFXQkZHVVQvWG5P?=
 =?utf-8?B?K3IzRm8rOEdFYVNaY2x3YlVMQmNCa0IyRVdFM2F0Ykd5UEVmQ1JQUU9QeVQx?=
 =?utf-8?B?YXBSMkpyZjFBZzBzeXlhVW5UcjQ2TE1yYTZwZlNJd01Cbk5DU2pNSzlNb3l6?=
 =?utf-8?B?SEh2c2NuOTRQYlVBckZzOUZHRi8rb1JudTNBSERxZ3FLMUFmWnR0RW1lTlBJ?=
 =?utf-8?B?OVdXRERzaTV2RW9UUXVLUk1ZN2QrdTJPTjk3bElxelhNdjV2NTJjSFd6VVMy?=
 =?utf-8?B?UEhzemU4Rm11RjduUmJ1T2NpaWVjM2hMZVpUQ3hxKy9zaFkxUktzMnFzd2sy?=
 =?utf-8?B?bzB5NFdZL1R6Zy9oS0dOOElRQytWdnQzTWZ3akZxdHd0UVFmTzQ0b2ZlYm55?=
 =?utf-8?B?eFc1SWg5UjlwYUNMRkluVDVNQ1pCSVd4TFo1cGZvOEpMNHZBYkRpcVNTYUkv?=
 =?utf-8?B?WW1UdUgwUzVrS2FTRTZ0WU5obXVXOG9menkxUDhGOHNmRTkyRlpkYkRGOW5P?=
 =?utf-8?B?K3UyVUJXbVdpZmQ0YTQrSHNudDBJdTMwbnI5M3BvcGpYdEZ3VHB2aUV3cW9p?=
 =?utf-8?B?N0NLMEtidndLV0hTNmMxWHQzZ29UTE9wczRqQjdHMGZEOWpLRGtpQ2Nxb3JH?=
 =?utf-8?B?UnZFdGFDWEQvdDV5ZDJLMFpmMnJ3STRjNjBESkNSTVZqSDRyQ3g1U1VKNGJo?=
 =?utf-8?B?dndGT3ZoVThvZVRNa2tCcG5SWXVxVG9hT0dPQ0FBaUFVMXNtaEZockJML0JW?=
 =?utf-8?B?TnYwNDVyWGEzMENicG1ZNGNhV2xTNmJhR0tMVHUxMFFrYlpNRTdZVGdOV2l2?=
 =?utf-8?B?MVhqdzR0ZXNtUG1GMVFoSVZxOGF3NlR2Ni9RN0gySkpHY0ZobHh1eE4zTzd4?=
 =?utf-8?B?R0FLYzA3VEpvZFRrWUVHVFpaaUFDeVN2S2R0NjdtT0psQUNCb1RHb1BvTlVB?=
 =?utf-8?B?T3EzSFBvckYyM0lPbUwxMTVodjh0K3VESy9MWmdEVlVlNVY5bjB5RHAxQ2o3?=
 =?utf-8?B?KzYwNlZLamJROVV4NkRWeW14bVZmUXRHNkpZdzFhVWhMWFpFc1pwRVRITDNE?=
 =?utf-8?B?WHpGWHVCZ09FWGlHN3pmN1R0dGJUN1dIa3RPVlNIM3AzOE95Wnk0Vnl2VVNw?=
 =?utf-8?B?d3A4UlFkVVlLVFNhNXVFblo3NkJDeENnYzIvNHloNk5Fa1JRNnZ1UlFvRDJz?=
 =?utf-8?B?ekhVMVRBcUhjZU9wLzAzb1FuK2NrOUdUaXpadFNzajFvdjlVVHozdTNsK3pQ?=
 =?utf-8?B?cmlRZXZrTHp5b3ByRjJJWmRjZUowQStQVUVWaEtjcS9vOUJ5cVpuMk45YzJn?=
 =?utf-8?B?WlUyWTl6OVZNL3g3QjVzUEhSRU9ZMm4waXhJVWdOTFNtZXZzWUYrcWNwWTFN?=
 =?utf-8?B?Y3pSbjZLcmNTZTVWSjRxK1hMaWV1dXIwZWdFN2tVZ3oyU1BPZ0NHWEZRMU5B?=
 =?utf-8?B?V3NyZEQ2S05oREJ2TjVjRmZlQmRmUEdacWxkYVNzS0VmV3BNaFNqWCtTNzVx?=
 =?utf-8?B?MG1SWUE2NVZMdVp2WTNuSnV3SnVlYXYwZjdkWmIySk5xL3pZcldkVi93N3dR?=
 =?utf-8?B?anIzdEpnVWkxRWZzWXhWeWIyZ0F5U3lOZmcreW45OVE5TmpZUHVvT1NGdEZZ?=
 =?utf-8?B?a0haQWFlblBtNVg5S1JNWU8zc3RSUTdOQ0tGZkg0QU5yZVlQdEtrNEY2MzVy?=
 =?utf-8?B?cGhmaGZLMmRDK2kzcXJ2Ukp6cVh0SGZHM2Z5MWJWRzNxR1pLQlpmdU1lbi9i?=
 =?utf-8?Q?Rf1eOJgunTJxSCcM8qlEGXFtdRE1TUsC/0gveFe?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7d6f3d2-5ab0-49be-afc4-08d908b569bb
X-MS-Exchange-CrossTenant-AuthSource: DM4PR12MB5278.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2021 13:15:50.7259 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /qpiMCKB3owIqiLSysuF7Kiudfj9N1AbaFjkLrCcMOU3uqcK0ZinLzla76Tif+gLMxV65AmzUyBkc6ce/rul3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5344
Cc: bridge@lists.linux-foundation.org, cong.wang@bytedance.com,
 daniel@iogearbox.net, yoshfuji@linux-ipv6.org, netdev@vger.kernel.org,
 dsahern@kernel.org, roopa@nvidia.com, ast@kernel.org, bjorn@kernel.org,
 vfalico@gmail.com, j.vosburgh@gmail.com, kuba@kernel.org, weiwan@google.com,
 andriin@fb.com, davem@davemloft.net, Taehee Yoo <ap420073@gmail.com>
Subject: Re: [Bridge] [PATCH net 2/2] net: bridge: fix lockdep
 multicast_lock false positive splat
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
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On 26/04/2021 15:48, Herbert Xu wrote:
> On Sun, Apr 25, 2021 at 07:45:27PM +0300, Nikolay Aleksandrov wrote:
>>
>> Ugh.. that's just very ugly. :) The setup you've described above is by all means invalid, but
>> possible unfortunately. The bridge already checks if it's being added as a port to another
>> bridge, but not through multiple levels of indirection. These locks are completely unrelated
>> as they're in very different contexts (different devices).
> 
> Surely we should forbid this? Otherwise what's to stop someone
> from creating a loop?
> 
> Cheers,
> 

Indeed that would be best, it's very easy to loop them.



