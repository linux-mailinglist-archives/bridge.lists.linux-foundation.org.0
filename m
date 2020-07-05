Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 77AF5214F38
	for <lists.bridge@lfdr.de>; Sun,  5 Jul 2020 22:18:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D3F63226B0;
	Sun,  5 Jul 2020 20:18:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pMHgbQbqXn8q; Sun,  5 Jul 2020 20:18:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 54808227F7;
	Sun,  5 Jul 2020 20:18:50 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0689BC08A9;
	Sun,  5 Jul 2020 20:18:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4B36DC016F
 for <bridge@lists.linux-foundation.org>; Sun,  5 Jul 2020 20:18:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2A99D227F7
 for <bridge@lists.linux-foundation.org>; Sun,  5 Jul 2020 20:18:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L3m2kuFftbui for <bridge@lists.linux-foundation.org>;
 Sun,  5 Jul 2020 20:18:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 158FC226B0
 for <bridge@lists.linux-foundation.org>; Sun,  5 Jul 2020 20:18:47 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id dg28so32936679edb.3
 for <bridge@lists.linux-foundation.org>; Sun, 05 Jul 2020 13:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=uRhTWDkA5o7/NySYW2wL1hIHkuOz93fuM88SRvT6oPE=;
 b=VhN89pSLxTo5PCNoa5b0ZAYAN3W1VGnbgQFtp1/0Qub7yTB/xDgxOX4EHwgSu4DEjR
 3oDNyOo+7FQtZ2sNWL0hYu89xk0VX6MrTNhdx3pETU0uat88BijXNfrm/ZEzRlTfdG3+
 0TL23lZlx2ivaGM67hvR8wLnkK8pNxQaiHDvo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uRhTWDkA5o7/NySYW2wL1hIHkuOz93fuM88SRvT6oPE=;
 b=nKcEFgs42oFcbHwCQkGoIoebzmwE4KDgbM1vuCrpMT/mNeE8CREROyZOgQNX0yMXyg
 wBMktn+QqL3yUUZKRpAT4tTpuLfn8zGq1jHER90CUvcKb+gpdneFPh5S8+VIhBV4ctcJ
 493Llvpo0+fazG8Mk2IMbztuZx3CAGmJcwjpJUTll9mdlCPyei5DU82OMm8cIeTLtICz
 gcB+P+eWFaC9fyPTK/PMjy7HVd1MFki7PPfUo/P+eYZuvyWji0MVVYIW+T6iMMJyCPYP
 b68ej0bYL0uaCyf3mcTMuhYS/p24DOg8iznrmgEVUQBtCLGSFVx4vZjG0V5ySyYhjAOd
 Zkhg==
X-Gm-Message-State: AOAM530Jrsq6Ad604ZvOMpt5JOLRZPWiLbmMytywfKA+4rDGQY8BgXsn
 5lb4sKFgDyepAISnH++//rqgDA==
X-Google-Smtp-Source: ABdhPJy8DgylOl1exybBBxo2XdzG9lLnPmUNUH/UsdVCQ0knh9qf825HM839DJdLtEChAsa0TIImzw==
X-Received: by 2002:a50:f418:: with SMTP id r24mr46470686edm.382.1593980325425; 
 Sun, 05 Jul 2020 13:18:45 -0700 (PDT)
Received: from [192.168.0.112] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.googlemail.com with ESMTPSA id s14sm20764103edq.36.2020.07.05.13.18.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 05 Jul 2020 13:18:44 -0700 (PDT)
To: =?UTF-8?Q?Linus_L=c3=bcssing?= <linus.luessing@c0d3.blue>
References: <20200705182234.10257-1-linus.luessing@c0d3.blue>
 <093beb97-87e8-e112-78ad-b3e4fe230cdb@cumulusnetworks.com>
 <20200705190851.GC2648@otheros>
 <4728ef5e-0036-7de6-8b6f-f29885d76473@cumulusnetworks.com>
 <20200705194915.GD2648@otheros>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <15375380-b7ad-985c-6ad3-c86ece996cd0@cumulusnetworks.com>
Date: Sun, 5 Jul 2020 23:18:36 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200705194915.GD2648@otheros>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Cc: Martin Weinelt <martin@linuxlounge.net>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net] bridge: mcast: Fix MLD2 Report IPv6
 payload length check
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

On 7/5/20 10:49 PM, Linus Lüssing wrote:
> On Sun, Jul 05, 2020 at 10:11:39PM +0300, Nikolay Aleksandrov wrote:
>> On 7/5/20 10:08 PM, Linus Lüssing wrote:
>>> On Sun, Jul 05, 2020 at 09:33:13PM +0300, Nikolay Aleksandrov wrote:
>>>> On 05/07/2020 21:22, Linus Lüssing wrote:
>>>>> Commit e57f61858b7c ("net: bridge: mcast: fix stale nsrcs pointer in
>>>>> igmp3/mld2 report handling") introduced a small bug which would potentially
>>>>> lead to accepting an MLD2 Report with a broken IPv6 header payload length
>>>>> field.
>>>>>
>>>>> The check needs to take into account the 2 bytes for the "Number of
>>>>> Sources" field in the "Multicast Address Record" before reading it.
>>>>> And not the size of a pointer to this field.
>>>>>
>>>>> Fixes: e57f61858b7c ("net: bridge: mcast: fix stale nsrcs pointer in igmp3/mld2 report handling")
>>>>> Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
>>>>> ---
>>>>>    net/bridge/br_multicast.c | 2 +-
>>>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>
>>>>
>>>> I'd rather be more concerned with it rejecting a valid report due to wrong size. The ptr
>>>> size would always be bigger. :)
>>>>
>>>> Thanks!
>>>> Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
>>>
>>> Aiy, you're right, it's the other way round. I'll update the
>>> commit message and send a v2 in a minute, with your Acked-by
>>> included.
>>>
>>
>> By the way, I can't verify at the moment, but I think we can drop that whole
>> hunk altogether since skb_header_pointer() is used and it will simply return
>> an error if there isn't enough data for nsrcs.
>>
> 
> Hm, while unlikely, the IPv6 packet / header payload length might be
> shorter than the frame / skb size.
> 
> And even though it wouldn't crash reading over the IPv6 packet
> length, especially as skb_header_pointer() is used, I think we should
> still avoid reading over the size indicated by the IPv6 header payload
> length field, to stay protocol compliant.
> 
> Does that make sense?
> 

Sure, I just thought the ipv6_mc_may_pull() call after that includes those 2 bytes as well, so
we're covered. That is, it seems to be doing the same check with the full grec size included.

