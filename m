Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E65FE53398D
	for <lists.bridge@lfdr.de>; Wed, 25 May 2022 11:11:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 22499611BC;
	Wed, 25 May 2022 09:11:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Is4V2nvC_KFG; Wed, 25 May 2022 09:11:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 8DD3B60AE0;
	Wed, 25 May 2022 09:11:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 312DDC007E;
	Wed, 25 May 2022 09:11:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 93B4AC002D
 for <bridge@lists.linux-foundation.org>; Wed, 25 May 2022 09:11:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6D0E140FBA
 for <bridge@lists.linux-foundation.org>; Wed, 25 May 2022 09:11:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PV2qCnix646Q for <bridge@lists.linux-foundation.org>;
 Wed, 25 May 2022 09:11:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com
 [IPv6:2a00:1450:4864:20::236])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 975344002B
 for <bridge@lists.linux-foundation.org>; Wed, 25 May 2022 09:11:04 +0000 (UTC)
Received: by mail-lj1-x236.google.com with SMTP id r3so16888441ljd.7
 for <bridge@lists.linux-foundation.org>; Wed, 25 May 2022 02:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=J5DCkWestgVKoHEZoLossBiU0LtcBuAy5pRj+r09hN4=;
 b=XP3vHIYmf/Ce3FGxCzpcX7HjyAZBtPpnAymzxt8qes+BDIeDOh6F7lvUPFfx9tnC2d
 +xpmCEvfyTHqVlt9SBLYRRGulX1GyGwjXVwLdpwO14peVNHNhC/MII2rabef1oU1ErBK
 uZNvN3T5485zyLUgwwpDngrc7ZKytkgjUuSjRsNTvH9Df89NPu+mu9qTsDxub0/hnh6C
 byCcXLsQtqiFctApMaQMfD87zErzxamzEsrJpPNHWIcIzFKIGY+PgHKumqiyb4GOareT
 KhMZwEFZbM0wSipJvO7WkM2n+0uetym0XUO7zrCJcc94gdFBZglaLeYg2gOGwAWC740i
 G1nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=J5DCkWestgVKoHEZoLossBiU0LtcBuAy5pRj+r09hN4=;
 b=2Cl14F8jWueKsblKJyGGpEJVWVchuyomRxALBJk9PaLDPVgcKMAbo2ihaqhlPPLSno
 XUZeA2fJ5weO+k+eI/Sh0Ch2NXdFtIdJ8pha9ysbJSB1B2bU2A4l3G+SyjxOy6y66s6B
 uBMHSGXkKxrFeL2zcy3GH10x4JKQ00eJE88wxCDK2Zwcr4vrGt0hUlvHXuhHDWr8lVue
 EXTuISs/X7QrIDT8FSJsZa28L7RD3e+9UjkL6qy5Gb8aaNKnpM0a3Nqy2FyRNxl27rxg
 G9eY1bmef2NzVGelM6VqMey6Q1cSoMZibJ7FKywwLmw6TBrqmS55Fz+Wi9hOC9dB/TDT
 brQA==
X-Gm-Message-State: AOAM532ZlUcmCL2pY9B3sqeR84qn9PLRS394b9UkPgChewoWkoL+dEIs
 izuQ4le4mqrw/S9h6KkET2U=
X-Google-Smtp-Source: ABdhPJxIXYAN5qFD5hWU5lh23XROsNBf9wj+TE2QF64dbWr41TJAr6prDo9vAodw5m5Udb8lTpYjkQ==
X-Received: by 2002:a2e:888f:0:b0:253:f1af:7577 with SMTP id
 k15-20020a2e888f000000b00253f1af7577mr5922075lji.99.1653469862534; 
 Wed, 25 May 2022 02:11:02 -0700 (PDT)
Received: from wse-c0127 (2-104-116-184-cable.dk.customer.tdc.net.
 [2.104.116.184]) by smtp.gmail.com with ESMTPSA id
 h4-20020ac250c4000000b00477be45fb23sm2951020lfm.56.2022.05.25.02.11.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 May 2022 02:11:01 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>, Hans Schultz
 <schultz.hans@gmail.com>, davem@davemloft.net, kuba@kernel.org
In-Reply-To: <040a1551-2a9f-18d0-9987-f196bb429c1b@blackwall.org>
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-2-schultz.hans+netdev@gmail.com>
 <01e6e35c-f5c9-9776-1263-058f84014ed9@blackwall.org>
 <86zgj6oqa9.fsf@gmail.com>
 <b78fb006-04c4-5a25-7ba5-94428cc9591a@blackwall.org>
 <86fskyggdo.fsf@gmail.com>
 <040a1551-2a9f-18d0-9987-f196bb429c1b@blackwall.org>
Date: Wed, 25 May 2022 11:11:00 +0200
Message-ID: <86v8tu7za3.fsf@gmail.com>
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

On ons, maj 25, 2022 at 11:38, Nikolay Aleksandrov <razor@blackwall.org> wrote:
> On 25/05/2022 11:34, Hans Schultz wrote:
>> On ons, maj 25, 2022 at 11:06, Nikolay Aleksandrov <razor@blackwall.org> wrote:
>>> On 24/05/2022 19:21, Hans Schultz wrote:
>>>>>
>>>>> Hi Hans,
>>>>> So this approach has a fundamental problem, f->dst is changed without any synchronization
>>>>> you cannot rely on it and thus you cannot account for these entries properly. We must be very
>>>>> careful if we try to add any new synchronization not to affect performance as well.
>>>>> More below...
>>>>>
>>>>>> @@ -319,6 +326,9 @@ static void fdb_delete(struct net_bridge *br, struct net_bridge_fdb_entry *f,
>>>>>>  	if (test_bit(BR_FDB_STATIC, &f->flags))
>>>>>>  		fdb_del_hw_addr(br, f->key.addr.addr);
>>>>>>  
>>>>>> +	if (test_bit(BR_FDB_ENTRY_LOCKED, &f->flags) && !test_bit(BR_FDB_OFFLOADED, &f->flags))
>>>>>> +		atomic_dec(&f->dst->locked_entry_cnt);
>>>>>
>>>>> Sorry but you cannot do this for multiple reasons:
>>>>>  - f->dst can be NULL
>>>>>  - f->dst changes without any synchronization
>>>>>  - there is no synchronization between fdb's flags and its ->dst
>>>>>
>>>>> Cheers,
>>>>>  Nik
>>>>
>>>> Hi Nik,
>>>>
>>>> if a port is decoupled from the bridge, the locked entries would of
>>>> course be invalid, so maybe if adding and removing a port is accounted
>>>> for wrt locked entries and the count of locked entries, would that not
>>>> work?
>>>>
>>>> Best,
>>>> Hans
>>>
>>> Hi Hans,
>>> Unfortunately you need the correct amount of locked entries per-port if you want
>>> to limit their number per-port, instead of globally. So you need a
>>> consistent
>> 
>> Hi Nik,
>> the used dst is a port structure, so it is per-port and not globally.
>> 
>> Best,
>> Hans
>> 
>
> Yeah, I know. :) That's why I wrote it, if the limit is not a feature requirement I'd suggest
> dropping it altogether, it can be enforced externally (e.g. from user-space) if needed.
>
> By the way just fyi net-next is closed right now due to merge window. And one more
> thing please include a short log of changes between versions when you send a new one.
> I had to go look for v2 to find out what changed.
>

Okay, I will drop the limit in the bridge module, which is an easy thing
to do. :) (It is mostly there to ensure against DOS attacks if someone
bombards a locked port with random mac addresses.)
I have a similar limitation in the driver, which should then probably be
dropped too?

The mayor difference between v2 and v3 is in the mv88e6xxx driver, where
I now keep an inventory of locked ATU entries and remove them based on a
timer (mv88e6xxx_switchcore.c).

I guess the mentioned log should be in the cover letter part?


>>> fdb view with all its attributes when changing its dst in this case, which would
>>> require new locking because you have multiple dependent struct fields and it will
>>> kill roaming/learning scalability. I don't think this use case is worth the complexity it
>>> will bring, so I'd suggest an alternative - you can monitor the number of locked entries
>>> per-port from a user-space agent and disable port learning or some similar solution that
>>> doesn't require any complex kernel changes. Is the limit a requirement to add the feature?
>>>
>>> I have an idea how to do it and to minimize the performance hit if it really is needed
>>> but it'll add a lot of complexity which I'd like to avoid if possible.
>>>
>>> Cheers,
>>>  Nik
