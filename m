Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F65C234AAF
	for <lists.bridge@lfdr.de>; Fri, 31 Jul 2020 20:10:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A9A2288660;
	Fri, 31 Jul 2020 18:10:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fn6+di-k4XZI; Fri, 31 Jul 2020 18:10:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id F2A24887AE;
	Fri, 31 Jul 2020 18:10:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CDF12C004D;
	Fri, 31 Jul 2020 18:10:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E23D2C004D
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 18:10:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B26D22153B
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 18:10:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xAOcyMsf6Fx4 for <bridge@lists.linux-foundation.org>;
 Fri, 31 Jul 2020 18:10:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 2376D2052E
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 18:10:15 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id bo3so9642977ejb.11
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 11:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ZG9+n5eeTXjDw0TEthtVnssj2KNpNT9BdmTxnsWf0Uk=;
 b=Nx+HweGFlG/thbNm1CofpaFrKo+JQhvr4NKAgHMtXKq0gkg9t7JrtGbPojNABwv3HQ
 pRxBA8+t4B5AyE7BQAxazr/Gls0ogQ81iZfGTn0luvtdbbr0y02bKr6fdkS1yINrfpLc
 mO4xFqDT3docA1KRCagNFG+WhoW7E4OOKKad4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZG9+n5eeTXjDw0TEthtVnssj2KNpNT9BdmTxnsWf0Uk=;
 b=Mvyb3yrAXPBF8U8kUXxGW3a6EDD3vdyh1Igpelu3623pwMeqI9ygYoYIPUtHJY7+GA
 t10PNo5ZzoFwq3iQzTr/+I5CL00MF9TI1cPpFtZ5xgaIf+yIYg9OKjf2fn+ryCmpd6TH
 mu0xNCjLHY8yGGfxwLJPYe7P5cT8RoVs8sUOobzFR5NDgkVhvIPm5q0JDUTHg4O77o3T
 SaiWBLvrfMB4Wm5NYS6WJ1pr0cLQ0/zbaCVlvpt8Qz14IxeE60PsHmMBsriuW6bRIWD7
 3e8o8AnS5PArpSejz5Xj+52rDwVE2LVB2STTRmhjuXK8yb017asRn7+6DV0TW+bnDCuR
 c3zw==
X-Gm-Message-State: AOAM532qROgkKTEYe4zFdYbwVS1zWraYT4rBQkUNXaWWsAUaDzfXCG0y
 0CpyjnD5KCPu3a7ubkGgALKfiLDDGZc=
X-Google-Smtp-Source: ABdhPJz0gjPSLOXJqD4KqkaEtambwkNtypW/ApsrvX/lOZ3fkkFwmzNncz+fvFk4jqTfpiSMTgzkwQ==
X-Received: by 2002:a17:906:46cc:: with SMTP id
 k12mr5178913ejs.366.1596219013355; 
 Fri, 31 Jul 2020 11:10:13 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id qn10sm9625918ejb.39.2020.07.31.11.10.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 31 Jul 2020 11:10:10 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: David Ahern <dsahern@gmail.com>, netdev@vger.kernel.org
References: <20200731162616.345380-1-nikolay@cumulusnetworks.com>
 <07823615-29a8-9553-d56b-1beef55a07bc@gmail.com>
 <181931fb-dc60-7db6-60ac-b8ff1402efec@cumulusnetworks.com>
 <2bdc90a2-834f-941d-fea7-04e3c8924f7b@cumulusnetworks.com>
Message-ID: <39736ed8-8565-ab64-5163-da6f2acba68a@cumulusnetworks.com>
Date: Fri, 31 Jul 2020 21:10:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <2bdc90a2-834f-941d-fea7-04e3c8924f7b@cumulusnetworks.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net] net: bridge: clear bridge's private skb
	space on xmit
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

On 31/07/2020 20:51, Nikolay Aleksandrov wrote:
> On 31/07/2020 20:37, Nikolay Aleksandrov wrote:
>> On 31/07/2020 20:27, David Ahern wrote:
>>> On 7/31/20 10:26 AM, Nikolay Aleksandrov wrote:
>>>> We need to clear all of the bridge private skb variables as they can be
>>>> stale due to the packet being recirculated through the stack and then
>>>> transmitted through the bridge device. Similar memset is already done on
>>>> bridge's input. We've seen cases where proxyarp_replied was 1 on routed
>>>> multicast packets transmitted through the bridge to ports with neigh
>>>> suppress which were getting dropped. Same thing can in theory happen with
>>>> the port isolation bit as well.
>>>>
>>>> Fixes: 821f1b21cabb ("bridge: add new BR_NEIGH_SUPPRESS port flag to suppress arp and nd flood")
>>>> Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
>>>> ---
>>>>  net/bridge/br_device.c | 2 ++
>>>>  1 file changed, 2 insertions(+)
>>>>
>>>> diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
>>>> index 8c7b78f8bc23..9a2fb4aa1a10 100644
>>>> --- a/net/bridge/br_device.c
>>>> +++ b/net/bridge/br_device.c
>>>> @@ -36,6 +36,8 @@ netdev_tx_t br_dev_xmit(struct sk_buff *skb, struct net_device *dev)
>>>>  	const unsigned char *dest;
>>>>  	u16 vid = 0;
>>>>  
>>>> +	memset(skb->cb, 0, sizeof(struct br_input_skb_cb));
>>>> +
>>>>  	rcu_read_lock();
>>>>  	nf_ops = rcu_dereference(nf_br_ops);
>>>>  	if (nf_ops && nf_ops->br_dev_xmit_hook(skb)) {
>>>>
>>>
>>> What's the performance hit of doing this on every packet?
>>>
>>> Can you just set a flag that tells the code to reset on recirculation?
>>> Seems like br_input_skb_cb has space for that.
>>>
>>
>> Virtually non-existent, we had a patch that turned that field into a 16 byte
>> field so that is really 2 8 byte stores. It is already cache hot, we could
>> initialize each individual field separately as br_input does.
>>
>> I don't want to waste flags on such thing, this makes it future-proof 
>> and I'll remove the individual field zeroing later which will alleviate
>> the cost further.
>>
> 
> Also note that we already do this on input for each packet since the
> struct was reduced to 16 bytes. It's the safest way since every different
> sub-part of the bridge uses some set of these private variables and
> we've had many similar bugs where they were used stale or unintentionally
> were not initialized for some path.
> 

In addition this doesn't need to be a recirculation, in theory it could happen
by a routed packet to svi on the bridge which got its skb->cb initialized before
hitting the bridge's xmit function. So a flag can't catch all possible cases.


