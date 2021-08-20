Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB213F26C4
	for <lists.bridge@lfdr.de>; Fri, 20 Aug 2021 08:26:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6B914071A;
	Fri, 20 Aug 2021 06:26:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9HmzCtLEsQIF; Fri, 20 Aug 2021 06:26:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 8360E40719;
	Fri, 20 Aug 2021 06:26:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3FD7AC001F;
	Fri, 20 Aug 2021 06:26:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 832F2C000E
 for <bridge@lists.linux-foundation.org>; Fri, 20 Aug 2021 06:26:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5FB7340719
 for <bridge@lists.linux-foundation.org>; Fri, 20 Aug 2021 06:26:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uKVm3GfmaUrl for <bridge@lists.linux-foundation.org>;
 Fri, 20 Aug 2021 06:26:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1D1CB40364
 for <bridge@lists.linux-foundation.org>; Fri, 20 Aug 2021 06:26:12 +0000 (UTC)
Received: by mail-lf1-x12d.google.com with SMTP id o10so18227934lfr.11
 for <bridge@lists.linux-foundation.org>; Thu, 19 Aug 2021 23:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=xM/5hg73CAO5nDlUiWnC06sBYRoGEVNZps4ThjEK80g=;
 b=SM1DxTrgTQmc/EbSc5o/ZKIU4t62Dau5mNSp1bsk7iNoKcDtfvVrYZ+dAjdNqwDI4x
 nzZKOWr7tfhFVPyHPSlQURghDVLrbMfgs43M7gPs+0Uio3Cpz2RTkontu83Eb5mqdD3x
 OfK85T0Upyl6y/12E5n1WE0FwhaPhAS68b7KKXmpmZfkRI286LwpC3WlK4agL7LGhxYo
 xeYHLXxFaBRst7J9z64xRfBl0XEtWNcH9VGL5vGE/T6AMbtDcdvXM8PAmExa+LN6S9qr
 5RKsTcMQqfMeaucp4c3MObUiIn8thVESL/Uxh5Vp5kfczH7zxWIx/+QUw3kXePwqCkPM
 meGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=xM/5hg73CAO5nDlUiWnC06sBYRoGEVNZps4ThjEK80g=;
 b=P/SEwqEQpGOiG6W1Yd3fT+4x33VHZ9Nb5Its+mEoWxJE5McAhOGHyVU2OND4W3nw56
 HKKmR/JINn4yoNvwzAeudlmcL+eNdugPN98F0y5TiNLxkbGQhpZG02be4XZAeXhpcjZH
 Vv4zfyYIBYyyv/EF2TsyXN1jADlDxKPX08enWS17Yde/6Q4CVIz+1FTEAhnpb4gHXoG1
 1BLLoPkfvn68b1s4s0ah2c7MHMkn206sqH4h3F7HIvcYlJ6S82VnKaa+EWZdRezS6iam
 bIB0tr6IZZJMVHVqBfCbd1Rg1Ket+U83SqDnkVKBBNViPxXqkSu1dr3mmW8G4np+stu8
 aNug==
X-Gm-Message-State: AOAM532970HZ8px1EnYdnu766XlYpNPFJquCV41gTD448J5rN+tHB94M
 9Wpsyw2MA5mfksou+3mXmmk=
X-Google-Smtp-Source: ABdhPJygigIOh3nwUm5DE31I2p4oPZ2Dma+yQlZ7L6UHOGLe18iCJvkPJk3AuAOtuy+WJR7ClhlHbw==
X-Received: by 2002:a05:6512:401a:: with SMTP id
 br26mr9465748lfb.539.1629440771118; 
 Thu, 19 Aug 2021 23:26:11 -0700 (PDT)
Received: from wbg (h-155-4-221-58.NA.cust.bahnhof.se. [155.4.221.58])
 by smtp.gmail.com with ESMTPSA id bu31sm529124lfb.153.2021.08.19.23.26.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Aug 2021 23:26:10 -0700 (PDT)
From: Joachim Wiberg <troglobit@gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>, netdev@vger.kernel.org
In-Reply-To: <458e3729-0bf0-8c45-9e45-352da76eaeb6@blackwall.org>
References: <20210719170637.435541-1-razor@blackwall.org>
 <875yw1qv9a.fsf@gmail.com>
 <458e3729-0bf0-8c45-9e45-352da76eaeb6@blackwall.org>
Date: Fri, 20 Aug 2021 08:26:09 +0200
Message-ID: <871r6or5ry.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next 00/15] net: bridge: multicast: add
	vlan support
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

On Thu, Aug 19, 2021 at 19:22, Nikolay Aleksandrov <razor@blackwall.org> wrote:
> On 19/08/2021 19:01, Joachim Wiberg wrote:
>> On Mon, Jul 19, 2021 at 20:06, Nikolay Aleksandrov <razor@blackwall.org> wrote:
>>> From: Nikolay Aleksandrov <nikolay@nvidia.com>
>> Curious, are you planning querier per-vlan, including use-ifaddr support
>> as well?  In our in-house hack, which I posted a few years ago, we added
>> some "dumpster diving" to inet_select_addr(), but it got rather tricky.
>> So I've been leaning towards having that in userspace instead.
> Yes, that is already supported (use-ifaddr needs attention though). In my next
> patch-set where I added the initial global vlan mcast options I added control
> for per-vlan querier with per-vlan querier elections and so on. The use-ifaddr
> needs more work though, that's why I still haven't added that option. I need
> to add the per-vlan/port router control option so we'll have mostly everything
> ready in a single release.

Wow, OK now we're talking, yeah that would be great to have in place as well!

>>> Future patch-sets which build on this one (in order):
>>>  - iproute2 support for all the new uAPIs
>> I'm very eager to try out all the new IGMP per-VLAN stuff, do you have
>> any branch of the iproute2 support available yet for testing?
> I don't have it public yet because I need to polish the support, currently
> it's very rough, enough for testing purposes for these patch-sets. :)
> I plan to work on that after I finish with the per-vlan/port router control.

Alright, I can appreciate that.  Really looking forward to this, I'll be
patiently waiting here in the wings, testing this out.

Fantastic work with this, again! :)

All the best
 /Joachim
 
