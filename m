Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C01F037F6B7
	for <lists.bridge@lfdr.de>; Thu, 13 May 2021 13:29:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2BCF76070D;
	Thu, 13 May 2021 11:29:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aVLwiQNHahPA; Thu, 13 May 2021 11:29:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC3E7608A0;
	Thu, 13 May 2021 11:29:43 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B2BDAC001C;
	Thu, 13 May 2021 11:29:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5DE0EC0001
 for <bridge@lists.linux-foundation.org>; Thu, 13 May 2021 11:29:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3FA9360885
 for <bridge@lists.linux-foundation.org>; Thu, 13 May 2021 11:29:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hJ3xLK__46R2 for <bridge@lists.linux-foundation.org>;
 Thu, 13 May 2021 11:29:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2086.outbound.protection.outlook.com [40.107.94.86])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 83A9F60816
 for <bridge@lists.linux-foundation.org>; Thu, 13 May 2021 11:29:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YYdMYmFcxLoojN6vfbpiezWS46bEh3XyiEDrlNaEnyr3MqDnvj/Gxz/BAZNJeLyiUDsWyMr8hCfBssakulpz/usFf2Q1icTOglPwsUeVtVBoV5/txNlJIz+TwqxFocEWOGpI6j+o9Dia1WbPjf0ct4vLuWh5exqdR3xUG0wcpbaA7DjxD9Q7Vq913g5v4kGOivzcJdN2vrGJZuqJJWxfzIb2JML45+CSzz4/KKQekJMaiGUnkDno190M54OjUJyCEMrodPcbDTD01JNjG6G97WGbrSr+DxmRoZwhbfUn+9V7P3cAFn7k3KbIY+Pf/C8TMcmgnhWkf/4qMq5JAfs8CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qqw89t/M2amB8SM1NnWj1eHg5nIHze4lql2eXRdnFXE=;
 b=MTyEHKw7YKgjgbXsIdiI7RNTipZvfbHrRoAR519TRtB+ZslHVZzJnq+BDSNWf1PWjySX1SptK0PCoc70uH+cw/8QSq09yJ9GpzXXutf8Ieec7/5xASVS+VSpKLkDqow0iJ9Ej0wo7EfEIvVtxydH5TBxpRhVEuQb70QQiAaxYO5Sr2Xx+oo+faT0BspEqWJBMjjPqGwTZa30ozZR221d3+L0rbb9Rh7jFhDnfEidWJQJEtAy/AREMCADuFUtvyfpVUEgS/Rprpy8jgEK/EQzilJtV74AK3jR6DEvO5eqBLRzUlw911GmT0hEVE/FPtisalJKErBCQ6v/FqLrz9HeWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qqw89t/M2amB8SM1NnWj1eHg5nIHze4lql2eXRdnFXE=;
 b=Oq1eobls9WCOlI5DntjoVqsp45in985ctRgF7lkFOJa8WcxwCf+ovK48Cvs9MgVCrJfbKA4q92aqZ0tp45Ck5G1T4Ksdp3vpSSkQEEqeVjbqNQPmeLI2ePw61zo/BcaOC4wFLO1DSuf5qUQ9qxK35x4tAAz4BYHXLMg5euDL8s2DktnA78Kz5BDhRG9oCV4vZPdeh/VvmOU+xGTTseW9rKz17gFQyDJ0woAzTPVG2lKXcSwOezYRzVQB//QiEIavZaW/16arkW0CGG8IK1d9d9QX5l4M1MfNwqysfOzMKNXJB21O48+vh+UPUvZVdPsyqGGdZ0inKwvw8gfdtwc4/g==
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=nvidia.com; 
Received: from DM4PR12MB5278.namprd12.prod.outlook.com (2603:10b6:5:39e::17)
 by DM8PR12MB5399.namprd12.prod.outlook.com (2603:10b6:8:34::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4129.26; Thu, 13 May 2021 11:29:40 +0000
Received: from DM4PR12MB5278.namprd12.prod.outlook.com
 ([fe80::d556:5155:7243:5f0f]) by DM4PR12MB5278.namprd12.prod.outlook.com
 ([fe80::d556:5155:7243:5f0f%6]) with mapi id 15.20.4129.026; Thu, 13 May 2021
 11:29:40 +0000
To: =?UTF-8?Q?Linus_L=c3=bcssing?= <linus.luessing@c0d3.blue>,
 netdev@vger.kernel.org
References: <20210512231941.19211-1-linus.luessing@c0d3.blue>
 <20210512231941.19211-3-linus.luessing@c0d3.blue>
From: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <bade919c-8535-aa53-4fac-6532ca140c03@nvidia.com>
Date: Thu, 13 May 2021 14:29:33 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <20210512231941.19211-3-linus.luessing@c0d3.blue>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Originating-IP: [213.179.129.39]
X-ClientProxiedBy: ZR0P278CA0150.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:41::14) To DM4PR12MB5278.namprd12.prod.outlook.com
 (2603:10b6:5:39e::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.21.241.170] (213.179.129.39) by
 ZR0P278CA0150.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:41::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4108.24 via Frontend Transport; Thu, 13 May 2021 11:29:38 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 937d0778-9812-41f4-436f-08d91602657b
X-MS-TrafficTypeDiagnostic: DM8PR12MB5399:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM8PR12MB539980DE4AB9D005E2EECA98DF519@DM8PR12MB5399.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: okue0vucOiGLhlxjt9TgOaxvUJObuhXmLsaPmeEvCJSSwqLbOVrkT/9N3MUs6HYSUItQOHPm819OQsvVd6zkfzzl2E9Q7LVoQXrl1KEYmX+YeUtt5Gn9O+nJ4UAmumTxw0RiR6x7qiLsezfuSl7Wnn8f2XTuheaWoaGk/MAUbiqwmG8l2f2uE7mfpr41oWH/K7QYVQjAb78syBib0QsJ1TLd2NrxJKvrSuzjylWXxIyu4nhddZxALtvUlU+JhiJW1IqBYWDGwrviAMUDa/fYgtONjOhMr4djdLywsSLHWZs1PMYSfAaRaRv9HVs37DxDj3ikSqmw77tuVbJytNEt0m+6K5+BXNifSy2gZugcBWtBOt48PlOmPE6CcRvrNTXZ9q90WUERd+wfdlpmgwDEXyVC+lUtahJKEoJxg788rC2FsVgaLBYwYPi9t0PP2sffwZz0JcgRPUK1+481oAUg+qvTjfb+bIvQ1YEdPedDCdPQ+yG3+v9vQykQUvurMzLjuXu7ht1ZP1J6sVXVW3gFcUlxLTB9YdRV4pZotgqe9yidWdt5vywaYE1aN3g058ncWefJQCkS/oubx1KQqA3aAVkETqOJ+Igz5O7VAMcabHlcn/UZYw02vpERt+KBOUAxnQQUHGVMxyIcwoncZaK4VGOA26Qwj/qrxLyCzJ/Gl9ezNVgzTSjzL9DZBsOaq6W5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR12MB5278.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(39860400002)(376002)(136003)(346002)(396003)(8676002)(38100700002)(4326008)(26005)(4744005)(6666004)(478600001)(186003)(36756003)(53546011)(2906002)(31686004)(8936002)(6486002)(66946007)(54906003)(16576012)(31696002)(66556008)(83380400001)(86362001)(66574015)(66476007)(316002)(5660300002)(16526019)(956004)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?TkZPWklXU2l3UUZDM08wdWlaVm1JTDBHYXRidkFwTXgzeXFqYkg4c0krNG44?=
 =?utf-8?B?QUs0Mk0rZURPRnhlSXhSUzJLc1FzRGlobDUyTUlBcWNpTnZhVFZ1QU1nclRQ?=
 =?utf-8?B?b1pjVmE0c1RuMVdFQUthNllCRlR4dWhOOXJCSkI1R3lEaVJUMjNTMWpTTmxZ?=
 =?utf-8?B?VGlGNWRuUW1kVHVyeHFVeGREWjdNdGQzUlpyOUtjLzFhRW43TlBJSXpocUNK?=
 =?utf-8?B?SzhoczREZG43K0FxMlJvV21yaS8relFnaGE5NjNPd3ZYRzNRUkVPWVJSN1ZE?=
 =?utf-8?B?UUJ4YmNoNzUzR1BKWUV0SUd3WDdkNlNSTEVNRUdoLzFsZU9sY2N2Ty9MM2hp?=
 =?utf-8?B?YkowZ29NK1VWVEZ0VXVBWDZ1UVJWZFZFUDBvc1dBQzVkMm9wczMxMDlISmlT?=
 =?utf-8?B?dWh4VEdmLzBGVlJQczNHZzg4aFJrODVHUjhGUTJKYWNrUGpQOXMydjVMQ3VO?=
 =?utf-8?B?R3c5SEsvZjUyeVh3eXNlekVqT3ptS3U1N2V3TS9ZUVJ4QXRIK2g4S0VJM0lC?=
 =?utf-8?B?T2dqWll0QVFlOWtpUE5ycGhrcjJoVlpsUHpkN3M5bENyVlBCTVpiSEs0VFVR?=
 =?utf-8?B?bGxHK0kxL3hzYUZoeXpJRGQ3bTJBSHZ4VktaNjF5VCtWS2R0MDhwVm9kc01R?=
 =?utf-8?B?d0l5N211R0Z1aGxMdk8rcmFLY3dVamt1by9jTHJsVkhQemc2VzRIa1krT3Vk?=
 =?utf-8?B?ekR5RHpkci9HZnNRUFRqbWpOenRNUXZ2eTNCL1ozVkU5TE00R3psQXY4MDRZ?=
 =?utf-8?B?dndZRTRuN1ovUkUrZ2ZCaVV6SkJXTjhET1BrbnJOVnkydVkzZVZ3MXFaVFpl?=
 =?utf-8?B?QUF3YkxydnhaNlUweWRwUzdJdFdtc2VrTWRPVklCbTlaTnNlWXFLdGxVY1R6?=
 =?utf-8?B?TG1EeUFjZlRscmpmVVMyZllUNHFNby9vRTlkWXpEVWp0ZG5XMGZTa3ZLRFdH?=
 =?utf-8?B?cUs0eEV0UTM2bnZqZWFBVmNnenliSzVZZCtTd1RRVWJ0dmtUWnZFcWJQT2pw?=
 =?utf-8?B?K2Y3VDN1Z1pudzhDMElGZGljRm5zOGlMYjRvdkY0b096KzFzWlBoZ3IzTFY5?=
 =?utf-8?B?UmlRaHB3TlVwZFpCTU1RWXZBMjRqQ3BlVUpPVzEwMEwrWGdKSjlqd1J5SEZz?=
 =?utf-8?B?ckpDNDU2UXY5a243L1FZcWVtZlg2K3dUMm95aWZlYnBpQStTT2NYcHI0ZHFn?=
 =?utf-8?B?OTlQQ0R4LzZiY1BmY3BkaGl5S2I2dURIci80VGtma01ZOXJPRTRiaTcwMTQ0?=
 =?utf-8?B?cjV3RUxCQk5raDdlWGZxUnRVcmdJdVJIOVpEUFdxM2pqa0dtNW1DV2thRVZ3?=
 =?utf-8?B?cVJUd2YwM2RZWXJCUGhEUS9BQ2l0UGZXQjNRZG9lZUROdTBSVVpyeHFZV0Iy?=
 =?utf-8?B?Sk5hcUQ5cTMyR1JVOFgvb09LdzNPRWtzaFJzQVc3TVdETDBRVnVtRE9GUTk2?=
 =?utf-8?B?bDFyT0hmdTE4U1U4VGZ3WnIwYzE5ckFBcUcwektjYmRzQWEybmEzUzh0bXND?=
 =?utf-8?B?V2VybGFoR1R3OWpkK2ZaNlBHVU5leUtmbjRkVkJUS2k3SkNEajZETWRibTV6?=
 =?utf-8?B?eExweW9xejkyaitqTi9HdkgyQTRjZ1BNQytDYTgrYit6ZVVFdXgvQXQwd2tB?=
 =?utf-8?B?bi9XYUpOM1pOcUF0QW5SNGVKUHhXR2ZOU0daaEYrWS8zaU84QkJ3UElqdG43?=
 =?utf-8?B?NnhpbG9LcEppUVpTYlA2cHA4azAzbnRBOFJLN1VIck9GajIvOERHaGRNcGE4?=
 =?utf-8?Q?Xpk113SldyxVEmQ9wWl/yy6ytMPHlIg+84G8rw5?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 937d0778-9812-41f4-436f-08d91602657b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR12MB5278.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2021 11:29:39.9342 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9htsO9y75QY4xL62mj759HYVm/mQ4yzLHs0zvBM+jLTOnmgxKD+Tei+QHmUyc0SNj0iSY3TsWmSsnzelaOjHJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR12MB5399
Cc: Jakub Kicinski <kuba@kernel.org>, bridge@lists.linux-foundation.org,
 "David S . Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>
Subject: Re: [Bridge] [net-next v3 02/11] net: bridge: mcast: add wrappers
 for router node retrieval
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

On 13/05/2021 02:19, Linus Lüssing wrote:
> In preparation for the upcoming split of multicast router state into
> their IPv4 and IPv6 variants and to avoid IPv6 #ifdef clutter later add
> two wrapper functions for router node retrieval in the payload
> forwarding code.
> 
> Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
> ---
>  net/bridge/br_forward.c |  5 +++--
>  net/bridge/br_private.h | 10 ++++++++++
>  2 files changed, 13 insertions(+), 2 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>

