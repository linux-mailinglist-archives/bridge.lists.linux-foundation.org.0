Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFF95338A4
	for <lists.bridge@lfdr.de>; Wed, 25 May 2022 10:38:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1217A84185;
	Wed, 25 May 2022 08:38:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 72NwG-juBduP; Wed, 25 May 2022 08:38:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 9B40F84196;
	Wed, 25 May 2022 08:38:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4F8F2C007E;
	Wed, 25 May 2022 08:38:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DDD69C002D
 for <bridge@lists.linux-foundation.org>; Wed, 25 May 2022 08:38:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C502140E41
 for <bridge@lists.linux-foundation.org>; Wed, 25 May 2022 08:38:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NjSss8RpUvqu for <bridge@lists.linux-foundation.org>;
 Wed, 25 May 2022 08:38:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 573DB40DC2
 for <bridge@lists.linux-foundation.org>; Wed, 25 May 2022 08:38:42 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id y24so4281404wmq.5
 for <bridge@lists.linux-foundation.org>; Wed, 25 May 2022 01:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=KtU04oFIh5Z0YSsR5FQRVyG/XaU2MIHApujJFCWuZlw=;
 b=QqGYFn4Ab/DfOssUeWALroVEeCh9UhII4ToDkKRqMH2XJaQXYENX3C07V7wDmMpuPs
 JB3nZ4QAR/l9TljZY57Uuupxe1QmncQMTZ5I50aguJnVGNj9v5id7qb2+BG1fcInEp2L
 b9z2+5kDCMMMCrsXu7n7v40qvPya+hxNYfNUtz0O9ntgyGKdkE02ugcZO98fspQhi80T
 u/uE2lleR4T3dIgB7EKLlUELP3N/KLVAA7/6/EEP16i87GjgEC6aZW5yNb/sGrVc69iw
 gxuZU+B3cTUODouyMdi1eNJJ5xxLm0G9V7ka82qlV5C9zfWaWc31Q5mm4ez/nueuTqH5
 AQfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=KtU04oFIh5Z0YSsR5FQRVyG/XaU2MIHApujJFCWuZlw=;
 b=O6PtYBSwptiqL1nmBV1nqiUMBqS9A1YJe7lAHMLeBEKS73Xr/kIwIGgFlu5Bw5E3vK
 ElYZYBKUchB3aN8tQI9vGfEa2mzhimhZ7b6xjyhb+fVAL4dIcWFIG3a14VkQOEcIXTD3
 ddh7OSuTxW5ES2oU8di3R251k80YJ1LgiLAj0GcIxBOF7Ih7EBJlXmjCUbQpGhKK8RPb
 GfZLwO1PC82TtOu31i6/JTEMFSyuDiAQc0PHocACwXOYSzS/P/G7Bb1wxiaXvddCiacp
 beHZqP6Y1w92HS2v5a6Tg+Hsg9rnQx8Sin/63hfhC2z8Ym49iExNQwNf5ZGh6D65crU6
 FlQA==
X-Gm-Message-State: AOAM533BVWRbalh3ZOA/ZAVerQJYkzpxs8VZaXQo9m3pnoFGyvVMiWDw
 az3lCKwDZ70htwBHBn2F+p7+Ow==
X-Google-Smtp-Source: ABdhPJxg30sXPTLAyZtvayj2nwwa80y3xEtCg/2rQQDarGJN5d/Z2NA4PqAO4xPOizxFU+5GcDqMVw==
X-Received: by 2002:a7b:cf11:0:b0:397:33e3:87b2 with SMTP id
 l17-20020a7bcf11000000b0039733e387b2mr7086443wmg.152.1653467920448; 
 Wed, 25 May 2022 01:38:40 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 n11-20020a5d598b000000b0020c61af5e1fsm1620689wri.51.2022.05.25.01.38.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 May 2022 01:38:39 -0700 (PDT)
Message-ID: <040a1551-2a9f-18d0-9987-f196bb429c1b@blackwall.org>
Date: Wed, 25 May 2022 11:38:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Hans Schultz <schultz.hans@gmail.com>, davem@davemloft.net, kuba@kernel.org
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-2-schultz.hans+netdev@gmail.com>
 <01e6e35c-f5c9-9776-1263-058f84014ed9@blackwall.org>
 <86zgj6oqa9.fsf@gmail.com>
 <b78fb006-04c4-5a25-7ba5-94428cc9591a@blackwall.org>
 <86fskyggdo.fsf@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <86fskyggdo.fsf@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH V3 net-next 1/4] net: bridge: add fdb flag to
 extent locked port feature
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

On 25/05/2022 11:34, Hans Schultz wrote:
> On ons, maj 25, 2022 at 11:06, Nikolay Aleksandrov <razor@blackwall.org> wrote:
>> On 24/05/2022 19:21, Hans Schultz wrote:
>>>>
>>>> Hi Hans,
>>>> So this approach has a fundamental problem, f->dst is changed without any synchronization
>>>> you cannot rely on it and thus you cannot account for these entries properly. We must be very
>>>> careful if we try to add any new synchronization not to affect performance as well.
>>>> More below...
>>>>
>>>>> @@ -319,6 +326,9 @@ static void fdb_delete(struct net_bridge *br, struct net_bridge_fdb_entry *f,
>>>>>  	if (test_bit(BR_FDB_STATIC, &f->flags))
>>>>>  		fdb_del_hw_addr(br, f->key.addr.addr);
>>>>>  
>>>>> +	if (test_bit(BR_FDB_ENTRY_LOCKED, &f->flags) && !test_bit(BR_FDB_OFFLOADED, &f->flags))
>>>>> +		atomic_dec(&f->dst->locked_entry_cnt);
>>>>
>>>> Sorry but you cannot do this for multiple reasons:
>>>>  - f->dst can be NULL
>>>>  - f->dst changes without any synchronization
>>>>  - there is no synchronization between fdb's flags and its ->dst
>>>>
>>>> Cheers,
>>>>  Nik
>>>
>>> Hi Nik,
>>>
>>> if a port is decoupled from the bridge, the locked entries would of
>>> course be invalid, so maybe if adding and removing a port is accounted
>>> for wrt locked entries and the count of locked entries, would that not
>>> work?
>>>
>>> Best,
>>> Hans
>>
>> Hi Hans,
>> Unfortunately you need the correct amount of locked entries per-port if you want
>> to limit their number per-port, instead of globally. So you need a
>> consistent
> 
> Hi Nik,
> the used dst is a port structure, so it is per-port and not globally.
> 
> Best,
> Hans
> 

Yeah, I know. :) That's why I wrote it, if the limit is not a feature requirement I'd suggest
dropping it altogether, it can be enforced externally (e.g. from user-space) if needed.

By the way just fyi net-next is closed right now due to merge window. And one more
thing please include a short log of changes between versions when you send a new one.
I had to go look for v2 to find out what changed.

>> fdb view with all its attributes when changing its dst in this case, which would
>> require new locking because you have multiple dependent struct fields and it will
>> kill roaming/learning scalability. I don't think this use case is worth the complexity it
>> will bring, so I'd suggest an alternative - you can monitor the number of locked entries
>> per-port from a user-space agent and disable port learning or some similar solution that
>> doesn't require any complex kernel changes. Is the limit a requirement to add the feature?
>>
>> I have an idea how to do it and to minimize the performance hit if it really is needed
>> but it'll add a lot of complexity which I'd like to avoid if possible.
>>
>> Cheers,
>>  Nik

