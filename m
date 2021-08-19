Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FC23F1DB8
	for <lists.bridge@lfdr.de>; Thu, 19 Aug 2021 18:22:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6157F4044F;
	Thu, 19 Aug 2021 16:22:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Vm212e_F7m6; Thu, 19 Aug 2021 16:22:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 042DF40805;
	Thu, 19 Aug 2021 16:22:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B942BC0022;
	Thu, 19 Aug 2021 16:22:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2606EC000E
 for <bridge@lists.linux-foundation.org>; Thu, 19 Aug 2021 16:22:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 102A5817F2
 for <bridge@lists.linux-foundation.org>; Thu, 19 Aug 2021 16:22:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GUhCz_AWFF8R for <bridge@lists.linux-foundation.org>;
 Thu, 19 Aug 2021 16:22:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2B460814B5
 for <bridge@lists.linux-foundation.org>; Thu, 19 Aug 2021 16:22:47 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id b7so9723509edu.3
 for <bridge@lists.linux-foundation.org>; Thu, 19 Aug 2021 09:22:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=sgDW0EeKIbc+tXjRijAMbaibbrP+Mz/1SBwo8s0GZRs=;
 b=bHeGJQpbkzoTrOkfCmMFaZkuTpg5QP5tMmyTlG8ndVg9eD+zGCnzPv7A2aI22Lmxia
 XHL5utpReYqP9T/3rMhb8joLsWDGFSJggm5MFwVMzWxgZC45U5JVUKhOaY6JhEdpbUr0
 PmynGgOCXXPAn8691qSlko5mP/2C94gMR9qK+WBAWJcNVLvffSxSSiBauH+8MNi5Qe4v
 hfQVd7b76yCpAM54eJJaxCO9VpuqbEFS0MqmL80AyPAPTwh6crTMCu8mQsCaJaOc//4M
 UK6gxB62fXVUdjDbnQ0FDopH+swhy+Ly1PclxpHSGQFWHM4eKlqccpyxchnP+z6ap0MI
 Odqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sgDW0EeKIbc+tXjRijAMbaibbrP+Mz/1SBwo8s0GZRs=;
 b=hh0rumqbXss8VntMDVU3evyNQaYRyROHahJWcWM5+TMY8hsoVsEaMpD+X03VxHnWqh
 L0wHV1ePXCBi9vEaa48oo3DQSSTh/xltU1SSlV7wSOrjcF3i9CemTIHk4Quqr61nj08/
 oGHUacn8kfrDm0yYFc53++mBk/fhd1pQRwaorCd2id6+LDUExfMOHOUQxQw8HlOhuqCh
 w5XyjdajzYC6yf5Dea86fQgVd32izxTffPwRwWURlFfavsLTqFR2nP6SP4wXcNO9/TH3
 wceTISEwIksKoTNdNWaIq3S4n50GXajIERHwJ8TbVUMJSEC5Ka+3WKGS1WTx89J/D9rJ
 rb9A==
X-Gm-Message-State: AOAM53309lGt+6kC8GjzGqgfg7NDHwyOMXNVW5ne4vhZjjSxqdS9s7JS
 Gbhc6IV9Udt9HQiGR70aWF+x4A==
X-Google-Smtp-Source: ABdhPJwDflUsJEgmQVE8lQzR79B4ronR5T/P3YOz4uDNkODM3tVmRf4z0FcLRzMfN9LtAUjsgZALhw==
X-Received: by 2002:a05:6402:2554:: with SMTP id
 l20mr17177108edb.252.1629390166253; 
 Thu, 19 Aug 2021 09:22:46 -0700 (PDT)
Received: from [192.168.0.111] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id h10sm1951831edb.74.2021.08.19.09.22.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Aug 2021 09:22:45 -0700 (PDT)
To: Joachim Wiberg <troglobit@gmail.com>, netdev@vger.kernel.org
References: <20210719170637.435541-1-razor@blackwall.org>
 <875yw1qv9a.fsf@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <458e3729-0bf0-8c45-9e45-352da76eaeb6@blackwall.org>
Date: Thu, 19 Aug 2021 19:22:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <875yw1qv9a.fsf@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
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

On 19/08/2021 19:01, Joachim Wiberg wrote:
> Hi Hik, everyone!
> 

Hi,
> On Mon, Jul 19, 2021 at 20:06, Nikolay Aleksandrov <razor@blackwall.org> wrote:
>> From: Nikolay Aleksandrov <nikolay@nvidia.com>
>> This patchset adds initial per-vlan multicast support, most of the code
>> deals with moving to multicast context pointers from bridge/port pointers.
> 
> Awesome work, this looks very interesting! :)  I've already built and
> tested net-next for regressions on Marvell SOHO switches, looking good
> so far.
> 
> Curious, are you planning querier per-vlan, including use-ifaddr support
> as well?  In our in-house hack, which I posted a few years ago, we added
> some "dumpster diving" to inet_select_addr(), but it got rather tricky.
> So I've been leaning towards having that in userspace instead.
> 

Yes, that is already supported (use-ifaddr needs attention though). In my next
patch-set where I added the initial global vlan mcast options I added control
for per-vlan querier with per-vlan querier elections and so on. The use-ifaddr
needs more work though, that's why I still haven't added that option. I need
to add the per-vlan/port router control option so we'll have mostly everything
ready in a single release.

>> Future patch-sets which build on this one (in order):
>>  - iproute2 support for all the new uAPIs
> 
> I'm very eager to try out all the new IGMP per-VLAN stuff, do you have
> any branch of the iproute2 support available yet for testing?  For now
> I've hard-coded BROPT_MCAST_VLAN_SNOOPING_ENABLED in br_multicast_init()
> as a workaround, and everything seems to work just as expected :-)

I don't have it public yet because I need to polish the support, currently
it's very rough, enough for testing purposes for these patch-sets. :)
I plan to work on that after I finish with the per-vlan/port router control.

> 
> Best regards
>  /Joachim
> 

Thanks,
 Nik

