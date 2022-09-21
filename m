Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 436B35BF690
	for <lists.bridge@lfdr.de>; Wed, 21 Sep 2022 08:43:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F814607FF;
	Wed, 21 Sep 2022 06:43:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F814607FF
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=6wind.com header.i=@6wind.com header.a=rsa-sha256 header.s=google header.b=FXGNEyoJ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5LYGuGY8FO12; Wed, 21 Sep 2022 06:43:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 55599606EC;
	Wed, 21 Sep 2022 06:43:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55599606EC
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E299DC0077;
	Wed, 21 Sep 2022 06:43:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0CA21C002D
 for <bridge@lists.linux-foundation.org>; Wed, 21 Sep 2022 06:43:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D5B04607FF
 for <bridge@lists.linux-foundation.org>; Wed, 21 Sep 2022 06:43:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5B04607FF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SwIFubjxjVt0 for <bridge@lists.linux-foundation.org>;
 Wed, 21 Sep 2022 06:43:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 61314606EC
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 61314606EC
 for <bridge@lists.linux-foundation.org>; Wed, 21 Sep 2022 06:43:41 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id cc5so8210411wrb.6
 for <bridge@lists.linux-foundation.org>; Tue, 20 Sep 2022 23:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6wind.com; s=google;
 h=content-transfer-encoding:in-reply-to:organization:from:references
 :cc:to:content-language:subject:reply-to:user-agent:mime-version
 :date:message-id:from:to:cc:subject:date;
 bh=rUO6t6C3l9V7+NJRQvXy0uGhA6vMbQwppUZNMvDDpV8=;
 b=FXGNEyoJ6TsxJT/6jnwzdEYEYt1X515xt7/Jhk/45XOE+8eGOFiXA/Hpb+Uj5wjO4k
 dpvq2t2OrrobHCE3A1uLZq4sJ85dpbR/4O6LW73t0CVSUWoR3HtPjmHd4yiz/T65PQhb
 1S08uTdvI2ZRtrJHrAYuz+UJS6QnnnaloiOMVuqhPvpAd+i7Q1WlihyBPbQdy2lcYTrs
 d/Bc7XNHJC1bBj7STOS6tkrZ/r/EUXbRRyNe/sBulywi/NzOD6r0ZoY6IHx4Abax1vVa
 wQOh1QX8K3zoEjUnYP3am1l0Fhjuqk2WLTMKUSiS/2bgq5cMXALRiKKzJLAHNdyCcGQM
 KhzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:organization:from:references
 :cc:to:content-language:subject:reply-to:user-agent:mime-version
 :date:message-id:x-gm-message-state:from:to:cc:subject:date;
 bh=rUO6t6C3l9V7+NJRQvXy0uGhA6vMbQwppUZNMvDDpV8=;
 b=mPUvebdz88++HQqkmkI1y8KOUxwY+4u5zOIbfs0zVp26uiOILIa72RaIHSPB5hXNPm
 I2V3NNOABD2nqk+T7JDG5riV2fwdo8jRmwximLC8ux+/BzLoaA38U4FWtZoBrO4/NSlp
 S7NnCjSCD1uMTJCu/dPwNJVz7lCQ1NL3SdcZSJKx3mNe9d5lSHms0pF9AxLyVcf2sffT
 t8NQ0SNo7h+pPPGuh6shSnsq39AH7fc3kLGOOq5x4aqgPdk58r0JeM2GsTGXA9nXNMOQ
 5WlHI2ueAYroWjB5LYDDcg7gpMB6q1c1AwTMMqa0/33/kOPm51v4EKTGGCnYWOvF3TiL
 tJBg==
X-Gm-Message-State: ACrzQf2hlskb4o2bkVzZC1gHGSuptiyfDBYm0AZWTym6xnWozDryCi3N
 kaq5j4RMLeuuDL16nnGopLI7mw==
X-Google-Smtp-Source: AMsMyM4jYnJHLvtAJQjCSLHXhWg95c/lHNeFctxmznAxybidyvgTk+r20eLliLQ5Hppi6odo8gRrVg==
X-Received: by 2002:a5d:598f:0:b0:22a:f74d:ae24 with SMTP id
 n15-20020a5d598f000000b0022af74dae24mr10211658wri.544.1663742619299; 
 Tue, 20 Sep 2022 23:43:39 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:b41:c160:d6f:4b37:41db:866e?
 ([2a01:e0a:b41:c160:d6f:4b37:41db:866e])
 by smtp.gmail.com with ESMTPSA id
 e6-20020a05600c4b8600b003b4de550e34sm1649852wmp.40.2022.09.20.23.43.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Sep 2022 23:43:38 -0700 (PDT)
Message-ID: <99b9a532-5feb-fe00-3d4e-29d560d34dc0@6wind.com>
Date: Wed, 21 Sep 2022 08:43:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Nikolay Aleksandrov <razor@blackwall.org>, netdev@vger.kernel.org
References: <20220413105202.2616106-1-razor@blackwall.org>
 <20220413105202.2616106-5-razor@blackwall.org>
 <0198618f-7b52-3023-5e9f-b38c49af1677@6wind.com>
 <f26fa81a-dc13-6a27-2e63-74b13359756e@blackwall.org>
From: Nicolas Dichtel <nicolas.dichtel@6wind.com>
Organization: 6WIND
In-Reply-To: <f26fa81a-dc13-6a27-2e63-74b13359756e@blackwall.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Cc: dsahern@kernel.org, bridge@lists.linux-foundation.org, idosch@idosch.org,
 roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v4 04/12] net: netlink: add NLM_F_BULK
 delete request modifier
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
Reply-To: nicolas.dichtel@6wind.com
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>


Le 20/09/2022 à 11:05, Nikolay Aleksandrov a écrit :
> On 20/09/2022 10:49, Nicolas Dichtel wrote:
>>
>> Le 13/04/2022 à 12:51, Nikolay Aleksandrov a écrit :
>>> Add a new delete request modifier called NLM_F_BULK which, when
>>> supported, would cause the request to delete multiple objects. The flag
>>> is a convenient way to signal that a multiple delete operation is
>>> requested which can be gradually added to different delete requests. In
>>> order to make sure older kernels will error out if the operation is not
>>> supported instead of doing something unintended we have to break a
>>> required condition when implementing support for this flag, f.e. for
>>> neighbors we will omit the mandatory mac address attribute.
>>> Initially it will be used to add flush with filtering support for bridge
>>> fdbs, but it also opens the door to add similar support to others.
>>>
>>> Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
>>> ---
>>>  include/uapi/linux/netlink.h | 1 +
>>>  1 file changed, 1 insertion(+)
>>>
>>> diff --git a/include/uapi/linux/netlink.h b/include/uapi/linux/netlink.h
>>> index 4c0cde075c27..855dffb4c1c3 100644
>>> --- a/include/uapi/linux/netlink.h
>>> +++ b/include/uapi/linux/netlink.h
>>> @@ -72,6 +72,7 @@ struct nlmsghdr {
>>>  
>>>  /* Modifiers to DELETE request */
>>>  #define NLM_F_NONREC	0x100	/* Do not delete recursively	*/
>>> +#define NLM_F_BULK	0x200	/* Delete multiple objects	*/
>> Sorry to reply to an old patch, but FWIW, this patch broke the uAPI.
>> One of our applications was using NLM_F_EXCL with RTM_DELTFILTER. This is
>> conceptually wrong but it was working. After this patch, the kernel returns an
>> error (EOPNOTSUPP).
>>
>> Here is the patch series:
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/log/?h=92716869375b
>>
>> We probably can't do anything now, but to avoid this in the future, I see only
>> two options:
>>  - enforce flags validation depending on the operation (but this may break some
>>    existing apps)
>>  - stop adding new flags that overlap between NEW and DEL operations (by adding
>>    a comment or defining dummy flags).
>>
>> Any thoughts?
>>
> 
> Personally I'd prefer to enforce validation so we don't lose the flags because of buggy user-space
> applications, but we can break someone (who arguably should fix their app though). We already had
> that discussion while the set was under review[1] and just to be a bit more confident I also
Thanks for the link. Finally, someone has (almost) complained :D

> tried searching for open-source buggy users, but didn't find any.
The trend seems to let someone else add another specific flag if needed. Thus,
it seems that checking flags is the way to go.
The pro is that if someone complains, the patch could be reverted, which is not
the case for a new feature like this bulk for example.


Regards,
Nicolas
