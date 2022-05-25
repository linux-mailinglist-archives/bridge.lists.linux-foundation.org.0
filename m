Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0540253388D
	for <lists.bridge@lfdr.de>; Wed, 25 May 2022 10:34:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E75A41BCF;
	Wed, 25 May 2022 08:34:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vtfKsgK0TLNZ; Wed, 25 May 2022 08:34:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id EAEFC41BCE;
	Wed, 25 May 2022 08:34:33 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9DB28C007E;
	Wed, 25 May 2022 08:34:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A6679C002D
 for <bridge@lists.linux-foundation.org>; Wed, 25 May 2022 08:34:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8B5E441BCE
 for <bridge@lists.linux-foundation.org>; Wed, 25 May 2022 08:34:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wo7_8gXCycLG for <bridge@lists.linux-foundation.org>;
 Wed, 25 May 2022 08:34:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 77F5541BC5
 for <bridge@lists.linux-foundation.org>; Wed, 25 May 2022 08:34:31 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id u30so34824919lfm.9
 for <bridge@lists.linux-foundation.org>; Wed, 25 May 2022 01:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=5L0FJw8nrreK+iWXw2F3MaAOrCQpmilHML/7HPSt5+4=;
 b=azwYnsS6jJEQvSuK4hoXH6WieSqwBE2dO+Bdu6YXtPBvcuUmTfpC2qwzKvfRSAGzKe
 AywA5P/AgCEHA+hSDE09wNNIxJeazza54hvRtKsM0KHE9XkEoUECPoherZUTjO/quYLX
 Ia/SRkqrRtnoKqZUnvfJDwwtnDjK4AWeTkS5oTNe/kttqS2+ML3Ah3K8aCLre0PQ/WsB
 FLtIyd+3n8Ag8VLjPa5MMsnq6nMbmdQGOMUy8F5fLL1tf6aShTHh97UcbwtSsm4BnOQ0
 kr5CBdH2eljtkZpg56jZHdcWO1mU1QK+FEeFMv1xX9ebJkDih3+MTRBgbslM8CaHJyNz
 Ic+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=5L0FJw8nrreK+iWXw2F3MaAOrCQpmilHML/7HPSt5+4=;
 b=4mrML5auuFQ3bQs0VE2IFkbPFdvcPdI1hJwL44MCCjNcAE8w9W/WXd7DIOwbB5J6I0
 CixqH1jwscSHMKwgJwzxTjlGj3828khJMxZW3IqdylmWyNBjYYINcHLr3qQvHaksy1lc
 w/Xt0zx74pQJoeI9g69ZwpNDwpZ1Spjo/pewrR6lOnmjlCZN6ndvRGp9bS2dSYvXBHCI
 HXdTCpi9x8fsrDuSgVOGNg74+wKlkKBue7JtIwz8kALdyoROT4bsGPUVX5QZ1CvWYZ4f
 eSsigxoGj5mKkwZQVqJ2f6SSvnXhgpyGvqAueFVwP4ryB/LIYCDIt3OEQWrzbVTshWQS
 WnBw==
X-Gm-Message-State: AOAM531jqh8EGhvK0CmIq3iXfGbxlbRVMA38sNoLXxxv5dvxoPvxOV/w
 /H3y1Hc3XxyM2SrlUSmpgGY=
X-Google-Smtp-Source: ABdhPJxic4FhRXu/llodR7HOqkXULwkms1mxQ9iH9XF+99sL0VI5R5WVn65/uHa0tDznw59r1oiRnQ==
X-Received: by 2002:ac2:548e:0:b0:477:c2fa:b18e with SMTP id
 t14-20020ac2548e000000b00477c2fab18emr21744727lfk.269.1653467669317; 
 Wed, 25 May 2022 01:34:29 -0700 (PDT)
Received: from wse-c0127 (2-104-116-184-cable.dk.customer.tdc.net.
 [2.104.116.184]) by smtp.gmail.com with ESMTPSA id
 i22-20020a2e8096000000b00250664c906asm2972324ljg.133.2022.05.25.01.34.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 May 2022 01:34:28 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>, Hans Schultz
 <schultz.hans@gmail.com>, davem@davemloft.net, kuba@kernel.org
In-Reply-To: <b78fb006-04c4-5a25-7ba5-94428cc9591a@blackwall.org>
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-2-schultz.hans+netdev@gmail.com>
 <01e6e35c-f5c9-9776-1263-058f84014ed9@blackwall.org>
 <86zgj6oqa9.fsf@gmail.com>
 <b78fb006-04c4-5a25-7ba5-94428cc9591a@blackwall.org>
Date: Wed, 25 May 2022 10:34:27 +0200
Message-ID: <86fskyggdo.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On ons, maj 25, 2022 at 11:06, Nikolay Aleksandrov <razor@blackwall.org> wrote:
> On 24/05/2022 19:21, Hans Schultz wrote:
>>>
>>> Hi Hans,
>>> So this approach has a fundamental problem, f->dst is changed without any synchronization
>>> you cannot rely on it and thus you cannot account for these entries properly. We must be very
>>> careful if we try to add any new synchronization not to affect performance as well.
>>> More below...
>>>
>>>> @@ -319,6 +326,9 @@ static void fdb_delete(struct net_bridge *br, struct net_bridge_fdb_entry *f,
>>>>  	if (test_bit(BR_FDB_STATIC, &f->flags))
>>>>  		fdb_del_hw_addr(br, f->key.addr.addr);
>>>>  
>>>> +	if (test_bit(BR_FDB_ENTRY_LOCKED, &f->flags) && !test_bit(BR_FDB_OFFLOADED, &f->flags))
>>>> +		atomic_dec(&f->dst->locked_entry_cnt);
>>>
>>> Sorry but you cannot do this for multiple reasons:
>>>  - f->dst can be NULL
>>>  - f->dst changes without any synchronization
>>>  - there is no synchronization between fdb's flags and its ->dst
>>>
>>> Cheers,
>>>  Nik
>> 
>> Hi Nik,
>> 
>> if a port is decoupled from the bridge, the locked entries would of
>> course be invalid, so maybe if adding and removing a port is accounted
>> for wrt locked entries and the count of locked entries, would that not
>> work?
>> 
>> Best,
>> Hans
>
> Hi Hans,
> Unfortunately you need the correct amount of locked entries per-port if you want
> to limit their number per-port, instead of globally. So you need a
> consistent

Hi Nik,
the used dst is a port structure, so it is per-port and not globally.

Best,
Hans

> fdb view with all its attributes when changing its dst in this case, which would
> require new locking because you have multiple dependent struct fields and it will
> kill roaming/learning scalability. I don't think this use case is worth the complexity it
> will bring, so I'd suggest an alternative - you can monitor the number of locked entries
> per-port from a user-space agent and disable port learning or some similar solution that
> doesn't require any complex kernel changes. Is the limit a requirement to add the feature?
>
> I have an idea how to do it and to minimize the performance hit if it really is needed
> but it'll add a lot of complexity which I'd like to avoid if possible.
>
> Cheers,
>  Nik
