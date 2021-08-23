Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F693F48CC
	for <lists.bridge@lfdr.de>; Mon, 23 Aug 2021 12:39:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA77F600C6;
	Mon, 23 Aug 2021 10:39:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HrMNzN1mUB9L; Mon, 23 Aug 2021 10:39:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 578A96059F;
	Mon, 23 Aug 2021 10:39:48 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0B2F7C001F;
	Mon, 23 Aug 2021 10:39:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5F22CC000E
 for <bridge@lists.linux-foundation.org>; Mon, 23 Aug 2021 10:39:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5474680B2C
 for <bridge@lists.linux-foundation.org>; Mon, 23 Aug 2021 10:39:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=nvidia.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9-RtSXn2oQW4 for <bridge@lists.linux-foundation.org>;
 Mon, 23 Aug 2021 10:39:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on20620.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe59::620])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3D9A380B10
 for <bridge@lists.linux-foundation.org>; Mon, 23 Aug 2021 10:39:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H0nQlm+MLle6jdEQunPtU/bJNYMT6svq0EkJkFxTukQ7F0YSncH/2OlVUKxKmjC3t5Ag3jHlga/NMnq6dsOk337MmLN0h4ZG5mSjPeZ0706G9yKhXQ9WLLcqP/9PFZIQWBQbJxif97JlXhN4KUW9CQ9xxlR9Mwsrn1QiBtPDAx/CZ9lBm3LU82JKw62Xsm3BFg+wkLvwECCAwIjG9cV9IgaLrBKi/Q2+mwLoN1ehstJwvFM6QdrHkfC9eD+f0QmjFKJ6XrJ0AIvRg6p7yGOkvnARKweCoPMklljaO0jDQUMm+KGPYugUWk0Y2Nh7v+Dpi0sLEfRb4BmEbKN9Y06saA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ljBFLuXJ/cSUndGBlyeCHlEliS+JhIo5P/GMln0Iihc=;
 b=XswDE6BLwC5cP5irWFjDPMSeRAP9KFSU4JY05Em0nfpnnSzl//zA5K3shoSjnlNcj1SXEUsJb3pFwz3xn0PEvmOecj8BgkgYqlM0UXjUpS67DZJniqI4p/6fYYg9fEBgrzxcusODhXYaWViz4RKsSRU3Mo0QiVrQH2sv2flcQYkXUCbQPf/kN4WmAWVg0XLSdB/aIFJ8fxO+LujveD6GGD5VP7T2MRseavlBmvnTjzD9jH8AxcOVC7OyxKiahjfeD/HdKxm8gMqi0254TSBPTo34NpVA0UEV7MR14SBoO6oojQoGg/uty3xP5bWP1A9Bp0E+Oyhzkn9xtHexQuDedA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ljBFLuXJ/cSUndGBlyeCHlEliS+JhIo5P/GMln0Iihc=;
 b=ul01kYNmnXb2fTXZivo1w9Ze1WSlD//UUkDJKn8vLopHZCvgstSWkV1pDphY4JjqbGPzjJDOdynqBJEEpOVsst3DPIgs5B5lQ8HJgIn55ilWyw7wvGRZDKd0A5I4HVP27EUoxfmbZvSItwfWrleyg7sTNS/tZXQI6HPAMfppDZkc7jqogyiMa03+0jDfLYcfMR+La7bh6VFxus7fepmMmOHzbfX4MDSUUuZESG25T1d/VKnasrE4Z8lcgzYuNpiHuOnSMmlGAv4ybFQgK/AyrJjuyJX4VJ+dU/U8kGztF7/k93gjDUEfa4LU190VTKssHEzUlrdcTDnmyoUNpqKIJA==
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=nvidia.com; 
Received: from DM4PR12MB5278.namprd12.prod.outlook.com (2603:10b6:5:39e::17)
 by DM4PR12MB5102.namprd12.prod.outlook.com (2603:10b6:5:391::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Mon, 23 Aug
 2021 10:25:28 +0000
Received: from DM4PR12MB5278.namprd12.prod.outlook.com
 ([fe80::c170:83a0:720d:6287]) by DM4PR12MB5278.namprd12.prod.outlook.com
 ([fe80::c170:83a0:720d:6287%6]) with mapi id 15.20.4436.024; Mon, 23 Aug 2021
 10:25:28 +0000
To: Kangmin Park <l4stpr0gr4m@gmail.com>, Roopa Prabhu <roopa@nvidia.com>
References: <20210823102118.17966-1-l4stpr0gr4m@gmail.com>
Message-ID: <d37ff915-6d94-2d22-9e93-46b374fc47d7@nvidia.com>
Date: Mon, 23 Aug 2021 13:25:20 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210823102118.17966-1-l4stpr0gr4m@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0117.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:20::14) To DM4PR12MB5278.namprd12.prod.outlook.com
 (2603:10b6:5:39e::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.21.240.23] (213.179.129.39) by
 ZR0P278CA0117.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:20::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4436.19 via Frontend Transport; Mon, 23 Aug 2021 10:25:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ab3705c0-6a9f-4e5c-9975-08d96620539f
X-MS-TrafficTypeDiagnostic: DM4PR12MB5102:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM4PR12MB5102952185302856693EC378DFC49@DM4PR12MB5102.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:529;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +VpTPPpiAbYT6scpzVU3SaYagDAKNzq2TxE0VwMYvCqw7KKUsUdhhk88PHmpG9jU9FTptivqRa/09O6ZiBLmEeVa/H7jasFtxSmHhfVPEhtTjb6UM8CNse2Fk/7HcGpuyRAMeBQVEyYTgjEX8sKX8Np1eFoRxWTTaN5Ev8uQfOQDsqzPJjqfMtxD3IoDtVd7SEN/e7CDAYsPErFtEFRnjidD/oYgIX00GJGKF0yicKWPa/OYcZ+fCy+RSrOQe6JQPMoccD0btMkDxpbBX3VfSCUvDWNpn6Ho90xBMZiICbrxkm0hx59rRHMgoChocC4AqkeWder1fVBKD00KUnOg/gsjV0QlNhPA1hMfcve9ASBMCdje8Rg/Nw0mky9meQbrQDsY217oeMFqe21hdQl/IX6X260e6HA9y0pj5SC8HQ2Ctr0xHHDwfKnfwxJAfTS4sEO1anbkvO8iZorUdGDa3PVjGMwlum+2ME50x1badK3F5/6IoDy6hHw21ghOiqR9wiKJ/I4uWqf9pDBaBr4hpxajZB+agcgPlDjhEOLpAgiZ55Sda7b9tt5ti9ZQfQDcdfriZgpYdDAQMmnuKtpr48FhZDZq6RStFPJnDD1/hLeqmPB7o26BWdgJBdpnov9KHKNiiw4EhhYFs6vRAvLYy7gSMVpMAHmyUAT0IbRahH3AZKrRyGhvf1mAauO1zPE3hx6nx2NTFL6EZtLFd9k2+/YGQVavvnz0RLH1YJm42N4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR12MB5278.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(26005)(31686004)(36756003)(2616005)(66476007)(66556008)(6486002)(4326008)(956004)(66946007)(6666004)(2906002)(186003)(86362001)(110136005)(53546011)(8936002)(38100700002)(54906003)(508600001)(16576012)(31696002)(83380400001)(5660300002)(8676002)(316002)(6636002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T0M2L09nN2pvUWkxSFU1ajF1dEVxVmNNaC8xOTh0ZGJYcWI0K2pzZk5SZmo1?=
 =?utf-8?B?TytlNEZPVnJFbU84eFBacThOWlZpeVpLNFlUaVlWdVRLMjNucXUyNEtLN2xK?=
 =?utf-8?B?MXpZRm1qdFQ3bWdkRG8zRU1VR3cxYTR4K3hudDVNdW43eHZYeDhtcXFKRzZQ?=
 =?utf-8?B?UlVBdUluZTRxR2ZKTDNpME5GeFVlZThkQkpiMzQ0U3lJa3k1QjFsdzIrUUhy?=
 =?utf-8?B?bGExR0t3ei9USC9KekFEYXBINHlSMTNDOE1YQkVyM01JbW5SZlVEYU13VFdT?=
 =?utf-8?B?WmpxRFFkakdjTXpjcWJReGhRQTY0cDNjZ1U1bEdGa0VsejdObFpBQW10TjdM?=
 =?utf-8?B?Ym9IZytFajJnMEhsbTZGdGNSOC9UN3ByLzVXd3BoeHFrVTltblYvNjZjaGZ2?=
 =?utf-8?B?SDhmSm5Fd2hWUVpSR3o0Qy9oamtmMjFKeWhQQ25ldjE0NG9jV0E2NGVkWU51?=
 =?utf-8?B?bzJxRzBtRzNoSFZraDl6VTZhK1pFVTJDazdBM21KckRsZUtxMlJPdFRiWVk1?=
 =?utf-8?B?MVJTWWJyYTdPMUtNMzlycU9NVE54Q2w0K3JNbGtkUjl6MFJTbXFSM3EwN2Jn?=
 =?utf-8?B?emdVS2EyQTZtOHYvbGRvRFRySXNqU1BIVDdRZ2tldkg5dGE3dWZaam1JMUlC?=
 =?utf-8?B?NWYwOTJYaTZsZTBBT0NNUWgvZnZjY3pnOStxNXRTSTRMSDlsenBaR1hLekpj?=
 =?utf-8?B?eUxJMFFOS3JjOU5OUERmeXpHU0VtdWh5dnpnM3pLeFhhVHF4VGFxei9hQXNI?=
 =?utf-8?B?cHI5V2lpNGozWkJieW82TFduUlA0YlF0WTY0YjFhdTF1SDNDdTE0MlBrOTJM?=
 =?utf-8?B?VDZNeVZETCtSa2owdjFHM3hLQ2h3YXlOVXNMT0Nzakt1NExoc2liOGFTSEMw?=
 =?utf-8?B?VFEyRWxXTzhFNDUzekRybDRwVEV3dDRMSW03aUVtcVFHZHA1eE5ranZ2anBH?=
 =?utf-8?B?QktId3N4anhtei9MUE5uQWxVRWpZWUlMOHV6SFljSFBKRDF4a05JcHVPUzFk?=
 =?utf-8?B?Njc2eTJkUGM2SGdIcW5tWVdPYU5scldpdXhYL0s2bkFiVWUzUis2WDdLMERK?=
 =?utf-8?B?YWRyNGF0QzY5S0lrVHg1emRLTjdGWWN5WHE0VU9YZjlob0dSSUlzRXRYUThZ?=
 =?utf-8?B?b1lZVUdUVUxIZXF0MkFHY3ZFL3NaQ29LOWI1b2ozeDYzMTRCSjFTY3ByZnpq?=
 =?utf-8?B?U2o2RVdVYlRKSFg4Q3JIelprNmF3cVRic2k4ZUdhUmpWZGdwR25GOG01eHVt?=
 =?utf-8?B?NjBkWjdyb0lTMk1mQXVxcU1nSXV1OUpnd0phUkpTN1lWSGlWR2ZlaExkVkFy?=
 =?utf-8?B?K3pWMHdFSzRaTWYwMkphSFF2RXNkcVEvQUMybHEzd09rUE5HYjMyMUdIeWZW?=
 =?utf-8?B?cm9vaktYTFA3UUlpbHZpem44eTNxZlBOYk5sTkN4N0FNaHNWL3VId2tSL3JJ?=
 =?utf-8?B?K2pDQWZNekkvTHFBV2t3VmVWTm9KckxuQ0lIWHQ4ZWdJTktXVWpzSEFzQzJs?=
 =?utf-8?B?TllxRXBCbXBiNk9GcWRVYWhDaHF1ZituUkh5MGZ2dGFPOGNSV0Uxck1YN3Zy?=
 =?utf-8?B?bzFpcGswU2tqcVdUajgyaDN3ci9BKzJMQnRCZldCeTV1MXF4SVRZRHVWbkRC?=
 =?utf-8?B?ODYzQ3B2QWFSaS9vMXhrT2k3dnluMURjZ0FSc3dnSGhSa1J6dm4zZncvSkhI?=
 =?utf-8?B?U2FKN3N4TGl1dnhJbVVUK1FDK1dZeDlMdStCNmxFY2xKYkJKMXFyNXg1dmVL?=
 =?utf-8?Q?9YjI3rAK+n6wqerzXkgBKHwej10+IQ11M7MPEkn?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab3705c0-6a9f-4e5c-9975-08d96620539f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR12MB5278.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2021 10:25:28.0259 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DZB1an+4d7uEIQwjfoAuYARvQAoqDkFkgnVzN4yGsL9o1PRznh0aDFcb7C3GgmcGhvZ6g8SPy7zkymW1UKQdEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5102
Cc: Jakub Kicinski <kuba@kernel.org>, bridge@lists.linux-foundation.org,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Subject: Re: [Bridge] [PATCH v3 net-next] net: bridge: change return type of
 br_handle_ingress_vlan_tunnel
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

On 23/08/2021 13:21, Kangmin Park wrote:
> br_handle_ingress_vlan_tunnel() is only referenced in
> br_handle_frame(). If br_handle_ingress_vlan_tunnel() is called and
> return non-zero value, goto drop in br_handle_frame().
> 
> But, br_handle_ingress_vlan_tunnel() always return 0. So, the
> routines that check the return value and goto drop has no meaning.
> 
> Therefore, change return type of br_handle_ingress_vlan_tunnel() to
> void and remove if statement of br_handle_frame().
> 
> Signed-off-by: Kangmin Park <l4stpr0gr4m@gmail.com>
> ---
> v3:
>  - remove unnecessary return statement
> 
> v2:
>  - cleanup instead of modifying ingress function
>  - change prototype of ingress function
>  - cleanup br_handle_frame function
>  - change commit message accordingly
> 
>  net/bridge/br_input.c          |  7 ++-----
>  net/bridge/br_private_tunnel.h |  6 +++---
>  net/bridge/br_vlan_tunnel.c    | 14 ++++++--------
>  3 files changed, 11 insertions(+), 16 deletions(-)
> 

Looks good to me,
Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>

