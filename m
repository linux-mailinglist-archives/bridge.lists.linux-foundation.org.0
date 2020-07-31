Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 284B1234A52
	for <lists.bridge@lfdr.de>; Fri, 31 Jul 2020 19:38:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BDFA9887B5;
	Fri, 31 Jul 2020 17:38:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wPMqOQ42u3PA; Fri, 31 Jul 2020 17:38:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 73D99887B0;
	Fri, 31 Jul 2020 17:38:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 56E9BC004D;
	Fri, 31 Jul 2020 17:38:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 662EDC004D
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 17:38:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5BE608878B
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 17:38:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JQ-Rs2h0Tr5T for <bridge@lists.linux-foundation.org>;
 Fri, 31 Jul 2020 17:38:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F19BD88789
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 17:38:37 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id n2so22893229edr.5
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 10:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=EVbdnM3VWE8j0IwvbJMEc4diNGnNb/B1uyEmvQtSeCE=;
 b=Hnj4coJ1kihuonOox3v5ubtJyIKCGYcpnUSMN34Prm+Zx/o6YUVk+HXGTaTaU1h2Bf
 0FyLpWhWQWOxGp3ML7sD1vIHO1ELDM8iC2r07cSKN+NZSQKUrbATt1QiNhbeegDW6eiT
 Ltbc/MskAF960te2RlFIxEnLrVoWRx2mYvaOk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=EVbdnM3VWE8j0IwvbJMEc4diNGnNb/B1uyEmvQtSeCE=;
 b=KJIgssBNlSDndwTchNv/Iej9LszTJy4jIBTbGnvcybDhaDzOFstOl6Zbb+XtaED2a/
 cZQZ0v+w6Rvf3YMZvLWF44kmYDfgigCSp59fvT6Qx6u8od5nu0TJ4TxI3/nWBqdhvuDm
 T8brQmDKQCiUa4MT36el3bR9rdCoWL5P34y85siIshgYQBhJO/az6/UDAkQm1J7f/DJS
 +jZYZMWaMUJAsFTnpDKG/fdzEvFXbFDvlJCp+f0cahsp09R4DQ0lh4eVwmvAElr6PinU
 w9mD1xyaOHzwlF4GGfstRpq7MIseAxs31/3QIDokAygme1PVDsBVigAKIZsaI6rSptBC
 s4EA==
X-Gm-Message-State: AOAM531encU91vfzBsAjVZcNxEs6+s42L+nixvcxH0QYXXMz4bjZvjyu
 WMcNPfqi9C87DQ3EexGVXw7XTQ==
X-Google-Smtp-Source: ABdhPJwwuic0MpECXVNB43X574zTf0G/mNEH5QgAY73b/KLLLetJSS6eMhzJRtnO+Dg/UZ3756Bd0A==
X-Received: by 2002:a05:6402:12d0:: with SMTP id
 k16mr5013989edx.199.1596217116339; 
 Fri, 31 Jul 2020 10:38:36 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id br25sm9740551ejb.25.2020.07.31.10.38.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 31 Jul 2020 10:38:33 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: David Ahern <dsahern@gmail.com>, netdev@vger.kernel.org
References: <20200731162616.345380-1-nikolay@cumulusnetworks.com>
 <07823615-29a8-9553-d56b-1beef55a07bc@gmail.com>
 <181931fb-dc60-7db6-60ac-b8ff1402efec@cumulusnetworks.com>
Message-ID: <968147d8-616d-364f-cf03-55bb7b08a518@cumulusnetworks.com>
Date: Fri, 31 Jul 2020 20:38:33 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <181931fb-dc60-7db6-60ac-b8ff1402efec@cumulusnetworks.com>
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

On 31/07/2020 20:37, Nikolay Aleksandrov wrote:
> On 31/07/2020 20:27, David Ahern wrote:
>> On 7/31/20 10:26 AM, Nikolay Aleksandrov wrote:
>>> We need to clear all of the bridge private skb variables as they can be
>>> stale due to the packet being recirculated through the stack and then
>>> transmitted through the bridge device. Similar memset is already done on
>>> bridge's input. We've seen cases where proxyarp_replied was 1 on routed
>>> multicast packets transmitted through the bridge to ports with neigh
>>> suppress which were getting dropped. Same thing can in theory happen with
>>> the port isolation bit as well.
>>>
>>> Fixes: 821f1b21cabb ("bridge: add new BR_NEIGH_SUPPRESS port flag to suppress arp and nd flood")
>>> Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
>>> ---
>>>  net/bridge/br_device.c | 2 ++
>>>  1 file changed, 2 insertions(+)
>>>
>>> diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
>>> index 8c7b78f8bc23..9a2fb4aa1a10 100644
>>> --- a/net/bridge/br_device.c
>>> +++ b/net/bridge/br_device.c
>>> @@ -36,6 +36,8 @@ netdev_tx_t br_dev_xmit(struct sk_buff *skb, struct net_device *dev)
>>>  	const unsigned char *dest;
>>>  	u16 vid = 0;
>>>  
>>> +	memset(skb->cb, 0, sizeof(struct br_input_skb_cb));
>>> +
>>>  	rcu_read_lock();
>>>  	nf_ops = rcu_dereference(nf_br_ops);
>>>  	if (nf_ops && nf_ops->br_dev_xmit_hook(skb)) {
>>>
>>
>> What's the performance hit of doing this on every packet?
>>
>> Can you just set a flag that tells the code to reset on recirculation?
>> Seems like br_input_skb_cb has space for that.
>>
> 
> Virtually non-existent, we had a patch that turned that field into a 16 byte
> field so that is really 2 8 byte stores. It is already cache hot, we could

err, s/field/struct/

> initialize each individual field separately as br_input does.
> 
> I don't want to waste flags on such thing, this makes it future-proof 
> and I'll remove the individual field zeroing later which will alleviate
> the cost further.
> 
> 

