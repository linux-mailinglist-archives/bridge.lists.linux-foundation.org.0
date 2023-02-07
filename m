Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F3668E299
	for <lists.bridge@lfdr.de>; Tue,  7 Feb 2023 22:03:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0DCA840186;
	Tue,  7 Feb 2023 21:03:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0DCA840186
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=CcvznQfX
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MfahsRHI2PUg; Tue,  7 Feb 2023 21:03:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id D80B64057A;
	Tue,  7 Feb 2023 21:03:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D80B64057A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6A105C007C;
	Tue,  7 Feb 2023 21:03:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2AF4CC002B
 for <bridge@lists.linux-foundation.org>; Tue,  7 Feb 2023 21:03:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DE78C81E80
 for <bridge@lists.linux-foundation.org>; Tue,  7 Feb 2023 21:03:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE78C81E80
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=CcvznQfX
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZdDbNCEB-qM0 for <bridge@lists.linux-foundation.org>;
 Tue,  7 Feb 2023 21:03:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9FCD981E65
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9FCD981E65
 for <bridge@lists.linux-foundation.org>; Tue,  7 Feb 2023 21:03:03 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id v10so17822997edi.8
 for <bridge@lists.linux-foundation.org>; Tue, 07 Feb 2023 13:03:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=duUT8E4UuVznxi1URA7/9KIa7Q1q0GAqecTAd9LPU9U=;
 b=CcvznQfXzeyZsD3wyfiFfJfntgQmnu0yYpnGCLfaqbHs+nWi1lvMJBr1zhlMmB/i/e
 RgKI6bDS3F4+PlHabLUY+RD2V3xVLqFC/Kzbk+D/OnzvJwDzn0I33LoDphR02ZECuzPt
 7P3cn1nJjZFVEZs3nYhsPDF246YnuzwQTpQuJiDh4XhprhvKesEtTvnEGujNg6sC64dX
 0KXDLo4bnY97Zjs7sVFQcap2LEZMxk5Uocm1AHqeD/IY58Eu4M/VnlNsh4JMDzDK0sBP
 zS2Oo6B39XJliMJX5QiMy4+WAqFxGVc2dZ/CnvGDh0JiL2zJ+01aMRabY735jkECcRUU
 Tk3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=duUT8E4UuVznxi1URA7/9KIa7Q1q0GAqecTAd9LPU9U=;
 b=nWuRhwIsFbQCgi583jMQq8Zc3jOxAU+0Pdso9685GOtvMHKJ6GBOaywHjdo7N4D9rs
 V/vV7UEdAbiW2LCBKQlG2q45YKP6GPApLrnHOkW9ShL0a2Rnhy9/oRGPynbz86YoY9Ka
 Q5P89R8T9tLDbYqQQ5ogrUE+OPUpaVd7NjkCVBNlqOzlvl+gUP6Iw1BUlxlJFoAEhnps
 6i335sybgiTygw+VEeUD3GPdGgGC7eHAfXwX2elBWPvtnJnM/iE9StT3XBEDbEsQBQiL
 Ejk+iggG7w+9giUOuTdJv00pNnrFpls3kYQwDnfuUQv9eZz1wmF0ibCV6/hvJmdW7BgK
 G6dw==
X-Gm-Message-State: AO0yUKXy0rDcnsEJVwdCONETNvB1h5++1EOP+OMKIH0HdE8ysYu4wCNI
 kdHg3T6De+uPRtmb2noj+Yh3uw==
X-Google-Smtp-Source: AK7set9IEqE7yzYVaInOeuTb1GjnzZGY4vAqwaZ4VCy2UPclZ7k4vDf2ZZzMyDp9zDPAkd6BDE567w==
X-Received: by 2002:a50:8e5d:0:b0:4aa:b76e:6b7a with SMTP id
 29-20020a508e5d000000b004aab76e6b7amr5395468edx.36.1675803781606; 
 Tue, 07 Feb 2023 13:03:01 -0800 (PST)
Received: from [192.168.100.228] (212-147-51-13.fix.access.vtx.ch.
 [212.147.51.13]) by smtp.gmail.com with ESMTPSA id
 el8-20020a056402360800b004a2470f920esm6876480edb.25.2023.02.07.13.03.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Feb 2023 13:03:01 -0800 (PST)
Message-ID: <0a820f10-f10f-64b7-14ba-58d9337cbb69@blackwall.org>
Date: Tue, 7 Feb 2023 22:02:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>
References: <20230204170801.3897900-1-idosch@nvidia.com>
 <3d7387d0-cff6-f403-55fc-1cb41e87db1a@blackwall.org>
 <Y+IZEJSwNZLH2aXN@shredder>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <Y+IZEJSwNZLH2aXN@shredder>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 edumazet@google.com, mlxsw@nvidia.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC PATCH net-next 00/13] vxlan: Add MDB support
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

On 2/7/23 11:25, Ido Schimmel wrote:
> On Tue, Feb 07, 2023 at 12:24:25AM +0100, Nikolay Aleksandrov wrote:
>> Hmm, while I agree that having the control plane in user-space is nice,
>> I do like having a relatively straight-forward and well maintained
>> protocol implementation in the kernel too, similar to its IGMPv3 client
>> support which doesn't need third party packages or external software
>> libraries to work. That being said, I do have (an unfinished) patch-set
>> that adds a bridge daemon to FRR, I think we can always add a knob to
>> switch to some more advanced user-space daemon which can snoop.
>>
>> Anyway to the point - this patch-set looks ok to me, from bridge PoV
>> it's mostly code shuffling, and the new vxlan code is fairly straight-
>> forward.
> 
> Thanks for taking a look. I was hoping you would comment on this
> section... :)
>

:)

> After sending the RFC I realized that what I wrote about the user space
> implementation is not accurate. An AF_PACKET socket opened on the VXLAN
> device will only give you the decapsulated IGMP / MLD packets. You
> wouldn't know from which remote VTEP they arrived. However, my point
> still stands: As long as the kernel is not performing snooping we can
> defer the forming of the replication lists to user space and avoid the
> complexity of the "added_by_star_ex" entries (among many other things).
> If in the future we need to implement snooping in the kernel, then we
> will expose a new knob (e.g., "mcast_snooping", default off), which will
> also enable the "added_by_star_ex" entries.
> 

Yep, I agree that it would be best for this case and we don't need the 
extra complexity in the kernel. I was referring more to the standard
IGMPv3 implementation (both client and bridge).

> I tried looking what other implementations are doing and my impression
> is that by "VXLAN IGMP snooping" they all refer to the snooping done in
> the bridge driver. That is, instead of treating the VXLAN port as a
> router port, the bridge will only forward specific groups to the VXLAN
> port, but this multicast traffic will be forwarded to all the VTEPs.
> This is already supported by the kernel.
> 
> Regarding what you wrote about a new knob in the bridge driver, you mean
> that this knob will enable MDB lookup regardless of "mcast_snooping"?

Yep, we can implement the snooping logic in user-space and use the
bridge only as a dataplane (that's what my bridge daemon in frr was
going to do for IGMPv3 and also explicit host tracking).

> Currently this knob enables both snooping and MDB lookup. Note that I
> didn't add a new knob to the VXLAN device because I figured that if user
> space doesn't want MDB lookup, then it will not configure MDB entries.
>

Yeah, of course. The set makes sense as it is since vxlan's logic would
be in user-space.

> Thanks!

