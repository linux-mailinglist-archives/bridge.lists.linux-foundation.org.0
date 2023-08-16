Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1817970B7
	for <lists.bridge@lfdr.de>; Thu,  7 Sep 2023 10:23:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4D329403EA;
	Thu,  7 Sep 2023 08:23:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4D329403EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vKydxjoqCHt6; Thu,  7 Sep 2023 08:23:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 9636640525;
	Thu,  7 Sep 2023 08:23:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9636640525
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 974FBC0DDB;
	Thu,  7 Sep 2023 08:23:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C460FC0032
 for <bridge@lists.linux-foundation.org>; Wed, 16 Aug 2023 12:41:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AB93A611A9
 for <bridge@lists.linux-foundation.org>; Wed, 16 Aug 2023 12:41:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB93A611A9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GlJ1t4dDM5KA for <bridge@lists.linux-foundation.org>;
 Wed, 16 Aug 2023 12:41:27 +0000 (UTC)
X-Greylist: delayed 987 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 16 Aug 2023 12:41:26 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC43360A6B
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com [45.249.212.255])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DC43360A6B
 for <bridge@lists.linux-foundation.org>; Wed, 16 Aug 2023 12:41:26 +0000 (UTC)
Received: from dggpemm500016.china.huawei.com (unknown [172.30.72.54])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4RQnNk3X8vz1GDcX;
 Wed, 16 Aug 2023 20:23:34 +0800 (CST)
Received: from [10.67.110.48] (10.67.110.48) by dggpemm500016.china.huawei.com
 (7.185.36.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Wed, 16 Aug
 2023 20:24:54 +0800
Message-ID: <e5624b47-52f1-e01c-6e5c-e8192132edf9@huawei.com>
Date: Wed, 16 Aug 2023 20:24:53 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Simon Horman <horms@kernel.org>, "GONG, Ruiqi" <gongruiqi@huaweicloud.com>
References: <20230816093443.1460204-1-gongruiqi@huaweicloud.com>
 <ZNywHiWhaL6pRZsd@vergenet.net>
In-Reply-To: <ZNywHiWhaL6pRZsd@vergenet.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.110.48]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpemm500016.china.huawei.com (7.185.36.25)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Thu, 07 Sep 2023 08:23:15 +0000
Cc: coreteam@netfilter.org, Kees Cook <keescook@chromium.org>,
 linux-kernel@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Florian Westphal <fw@strlen.de>,
 "Gustavo A . R . Silva" <gustavoars@kernel.org>,
 Jozsef Kadlecsik <kadlec@netfilter.org>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, netfilter-devel@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S .
 Miller" <davem@davemloft.net>, Pablo Neira Ayuso <pablo@netfilter.org>
Subject: Re: [Bridge] [PATCH net-next v2] netfilter: ebtables: replace
 zero-length array members
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
From: Gong Ruiqi via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Gong Ruiqi <gongruiqi1@huawei.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>



On 2023/08/16 19:16, Simon Horman wrote:
> On Wed, Aug 16, 2023 at 05:34:43PM +0800, GONG, Ruiqi wrote:
>> From: "GONG, Ruiqi" <gongruiqi1@huawei.com>
>>
>> As suggested by Kees[1], replace the old-style 0-element array members
>> of multiple structs in ebtables.h with modern C99 flexible array.
>>
>> [1]: https://lore.kernel.org/all/5E8E0F9C-EE3F-4B0D-B827-DC47397E2A4A@kernel.org/
>>
>> Link: https://github.com/KSPP/linux/issues/21
>> Signed-off-by: GONG, Ruiqi <gongruiqi1@huawei.com>
>> Reviewed-by: Kees Cook <keescook@chromium.org>
>> ---
>>
>> v2: designate to net-next; cc more netdev maintainers
> 
> It's slightly unclear to me if this should be targeting
> net-next or nf-next. But regardless, it doesn't seem
> to apply cleanly to the main branch of either tree.

I find out that it's because this patch depends on a previous patch I've
just sent:

[v4] netfilter: ebtables: fix fortify warnings in size_entry_mwt()

Maybe I should make them two into a patch set? Otherwise if I adapt this
patch to net-next, it won't be applied either if the above patch is
applied ...

> 
> Please consider resolving that and posting again,
> being sure to allow 24h before postings.
> 
> Link: https://www.kernel.org/doc/html/next/process/maintainer-netdev.html
>
