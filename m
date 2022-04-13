Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED534FF2C5
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 10:55:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 27AF060E2E;
	Wed, 13 Apr 2022 08:55:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BaX9xz72P7Ny; Wed, 13 Apr 2022 08:55:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 7961860B63;
	Wed, 13 Apr 2022 08:55:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 249EEC0088;
	Wed, 13 Apr 2022 08:55:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 68576C002C
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 08:55:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 55A4381CE1
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 08:55:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uisTwtTSa2Wu for <bridge@lists.linux-foundation.org>;
 Wed, 13 Apr 2022 08:55:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E41281ABA
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 08:55:12 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id p15so2518999ejc.7
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 01:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=Ez9/yP1s87N+1yj0ixi93WFUp2UAs8p8KEyavyAbZ4o=;
 b=Jc4YQVsDKpV89pGPAWo5qWsUEX9okNNbUdQX5waBxGzmnQiQa/mbsc9ZD/haG+LijO
 wBtj5avf0qvFtY4eZxpnnA55k5A2OspSD97kZ2fYlOs84zBpTqO//g12Z/5lFFrmpFKF
 Mfr+40RnFzzv60rkA2OUXGs29OLkiUcAnggK05totC4vJ7EGKgIFy+aQCAq4g2JHb3Wa
 mRLTWBPSvbroOmN593TaRbfmmE5cHaHAgkjsKMFYStHg83RLu/zcao595PAyeZ+ymfWT
 AN5Zi08DkUGSccOOFOoDGdHrNkipiDg9RUFpdoEgBismi6W5WqQPWVh83jz/NBHz675E
 g2mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=Ez9/yP1s87N+1yj0ixi93WFUp2UAs8p8KEyavyAbZ4o=;
 b=yMub+XKQPr4Jy4Dm6GTSShLB/kewxcD8TfG7kygBNaqEzWpilezCr9yXnM7MMcSPwn
 cqGmIq8XikzPV0psQbMVTwAVPD4QcuxroEl+gdQZj7Mh3l00+ghjcQN+YREAB9EFtffE
 ayCn3JXuSM6HXFMOG4DXQ2kIJgVTaB5GPYhxwy4DZBVCt4FA5YDFP/8dkahXg/DRsDFe
 4a250aGQSynsLnSz/N+Wh8/CP0zpusu3kQQ87fdPNGvB/IQl1gZICCvRdDAEBU5zkV4F
 AxDU7m3ODltRE3ZuSUw3m8jk36u11VHFcKCNFjwNrEPnrYLOKfNgPw5wp15KvSoxrYjG
 +jyQ==
X-Gm-Message-State: AOAM531iCepbdGVH4Zur6PTQSifSXwQ/9o+HvJcxXVvhi3qljj6x1EEB
 41hsvPrxhPt1NfzxIdUQemz8dw==
X-Google-Smtp-Source: ABdhPJyt2pD1+D9SWy2qEWWoMVlRshABpiAdz6j/3FBhooBaVqJtmlotjh+vBVhh2gPEFQkFGrRfcw==
X-Received: by 2002:a17:907:1b20:b0:6da:649b:d99e with SMTP id
 mp32-20020a1709071b2000b006da649bd99emr37888295ejc.712.1649840111115; 
 Wed, 13 Apr 2022 01:55:11 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 do8-20020a170906c10800b006dfe680dbfcsm13899620ejc.43.2022.04.13.01.55.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Apr 2022 01:55:10 -0700 (PDT)
Message-ID: <96bb8ff0-26d8-e9d3-e7c8-78f2abd28126@blackwall.org>
Date: Wed, 13 Apr 2022 11:55:09 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Joachim Wiberg <troglobit@gmail.com>, Roopa Prabhu <roopa@nvidia.com>
References: <20220411133837.318876-1-troglobit@gmail.com>
 <20220411133837.318876-9-troglobit@gmail.com>
 <ebd182a2-20bc-471c-e649-a2689ea5a5d1@blackwall.org>
 <87v8ve9ppr.fsf@gmail.com>
 <5d597756-2fe1-e7cc-9ef3-c0323e2274f2@blackwall.org>
 <87pmll9xj1.fsf@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <87pmll9xj1.fsf@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH RFC net-next 08/13] net: bridge: avoid
 classifying unknown multicast as mrouters_only
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

On 13/04/2022 11:51, Joachim Wiberg wrote:
> On Tue, Apr 12, 2022 at 20:37, Nikolay Aleksandrov <razor@blackwall.org> wrote:
>> On 12/04/2022 20:27, Joachim Wiberg wrote:
>>> [snip]
>>> From this I'd like to argue that our current behavior in the bridge is
>>> wrong.  To me it's clear that, since we have a confiugration option, we
>>> should forward unknown IP multicast to all MCAST_FLOOD ports (as well as
>>> the router ports).
>> Definitely not wrong. In fact:
>> "Switches that do not forward unregistered packets to all ports must
>>  include a configuration option to force the flooding of unregistered
>>  packets on specified ports. [..]"
>> is already implemented because the admin can mark any port as a router and
>> enable flooding to it.
> 
> Hmm, I understand your point (here and below), and won't drive this
> point further.  Instead I'll pick up on what you said in your first
> reply ... (below, last)
> 
> Btw, thank you for taking the time to reply and explain your standpoint,
> really helps my understanding of how we can develop the bridge further,
> without breaking userspace! :)
> 
>>> [1]: https://www.rfc-editor.org/rfc/rfc4541.html#section-2.1.2
>> RFC4541 is only recommending, it's not a mandatory behaviour. This
>> default has been placed for a very long time and a lot of users and
>> tests take it into consideration.
> 
> Noted.
> 
>> We cannot break such assumptions and start suddenly flooding packets,
>> but we can leave it up to the admin or distribution/network software
>> to configure it as default.
> 
> So, if I add a bridge flag, default off as you mentioned out earlier,
> which changes the default behavior of MCAST_FLOOD, then you'd be OK with
> that?  Something cheeky like this perhaps:
> 
>     if (!ipv4_is_local_multicast(ip_hdr(skb)->daddr))
>        	BR_INPUT_SKB_CB(skb)->mrouters_only = !br_opt_get(br, BROPT_MCAST_FLOOD_RFC4541);

Exactly! And that is exactly what I had in mind when I wrote it. :)

Thanks,
 Nik

> 
> 
> Best regards
>  /Joachim

