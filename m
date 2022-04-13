Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3CB4FF46D
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 12:09:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 558A640529;
	Wed, 13 Apr 2022 10:09:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FvC0_RvRRSdU; Wed, 13 Apr 2022 10:09:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id B24ED40509;
	Wed, 13 Apr 2022 10:09:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6A7D2C0088;
	Wed, 13 Apr 2022 10:09:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5BFADC002C
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:09:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 47BA540509
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:09:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uhm191ENlkxZ for <bridge@lists.linux-foundation.org>;
 Wed, 13 Apr 2022 10:09:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 850D040299
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:09:31 +0000 (UTC)
Received: by mail-lj1-x22f.google.com with SMTP id h11so1566023ljb.2
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 03:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=efy0+EnQP5PJX65iN7lLdABg99YrXmm11VO8VbF4k54=;
 b=DNxHKkvgH+pJLWotvx+1iV3jxDIC1IBaRM0JYVNzLxZpg99AI9DOHXVy9xzShoefMi
 Vkpwf5I7PpgCZ1MaGSbhNugcWxYjKoEVoYgIT9h6L1IRDGQBn4g+sOmrqSSgVdesD2hS
 rbD7AGmGI2ZlRD4MA2U5+Q6qA9yGsowVyP9BjO24FR3A7jDY4gI8TWG33U2NkQA957hb
 MFexZtOHlHMrN6otqs/Dv14pz4bFVUA2mN2sMgEf0nA4l2I3dR4XkrGCkPCoB4kzOKYi
 ITZRpG5ZdC4oRuiW6qUIFlTQtDmyi8jiv5556Shmy7nfJfxHJp4p1yjEKSGM6vPzanw2
 ZoJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=efy0+EnQP5PJX65iN7lLdABg99YrXmm11VO8VbF4k54=;
 b=4oFYl2oiOIQIsrAFdtEu1k8RUNCQp//Z4Y73/oGjgEhH/ZYxcoXUl3a56Gphaw30bQ
 6BzsmsIZMIze6JJtt152gxYrVGI5HneL5ftGgJSl7NRycnTNHIifhflBnXpkS7h7YMCi
 MbSrAUN4ReNGJqeCPOru4ab0UeYSmn5WJu9Y2Anpb70hZ5kNOWNBYvh2HLPplOaGg9tg
 8cvMxJ+xhx1xqpC+DRioFxVZPJKwWzVVZ9VNUNmLpk7WgWUqoudFgfIKvpv1piN380+l
 tvWm19xqf+mPHLOzWUN3J5QpVKED4y9liNe6WS/LjY9Njw8SS20vC+hB1KxzgyhJNoxZ
 4Byg==
X-Gm-Message-State: AOAM531S5PWEI2jge83jiUeRj/O150gQNyAW/SjcmD0wOLKXbkKR2F52
 WvggxX67YJf7UITPeBgfNkU=
X-Google-Smtp-Source: ABdhPJzMnH+o4RfBUBmpnFW7rhBQFs5GvZowAQSG50OGovrLWeXM0FpZNalE8V0KPeiZZ7YX7JbS1g==
X-Received: by 2002:a2e:9e81:0:b0:24b:4d4:aba0 with SMTP id
 f1-20020a2e9e81000000b0024b04d4aba0mr26004569ljk.283.1649844569524; 
 Wed, 13 Apr 2022 03:09:29 -0700 (PDT)
Received: from wbg (a124.broadband3.quicknet.se. [46.17.184.124])
 by smtp.gmail.com with ESMTPSA id
 a28-20020a05651c211c00b0024b5e766079sm1133008ljq.130.2022.04.13.03.09.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 03:09:29 -0700 (PDT)
From: Joachim Wiberg <troglobit@gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>, Roopa Prabhu <roopa@nvidia.com>
In-Reply-To: <2cf8c40c-c122-24c0-1c01-b61da9830e9d@blackwall.org>
References: <20220411133837.318876-1-troglobit@gmail.com>
 <20220411133837.318876-2-troglobit@gmail.com>
 <99b0790a-9746-ea08-b57e-52c53436666d@blackwall.org>
 <87k0bt9uq9.fsf@gmail.com>
 <2cf8c40c-c122-24c0-1c01-b61da9830e9d@blackwall.org>
Date: Wed, 13 Apr 2022 12:09:28 +0200
Message-ID: <87czhl9twn.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH RFC net-next 01/13] net: bridge: add control of
	bum flooding to bridge itself
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

On Wed, Apr 13, 2022 at 12:58, Nikolay Aleksandrov <razor@blackwall.org> wrote:
> On 13/04/2022 12:51, Joachim Wiberg wrote:
>> Interesting, you mean by speculatively setting local_rcv = true and
>> postpone the decsion to br_pass_frame_up(), right?  Yeah that would
>> indeed be a bit more work.
> Yes, I was thinking maybe local_rcv can become an enum with an exact reason for the
> local_rcv, so if it's > 0 do the local_rcv and br_pass_frame_up() then
> can make a proper decision without passing all of the vars. I haven't tried it,
> so not sure if it's feasible. :)

Ah, yeah that could definitely work. Thanks, I'll keep that in mind! :)
