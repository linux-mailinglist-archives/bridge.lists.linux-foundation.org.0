Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A302C4FF2D6
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 11:00:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5F9541714;
	Wed, 13 Apr 2022 09:00:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M7l56uPWI906; Wed, 13 Apr 2022 09:00:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 9E0AD416F9;
	Wed, 13 Apr 2022 09:00:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4FEDBC0088;
	Wed, 13 Apr 2022 09:00:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 470BFC002C
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 09:00:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1F09B605B7
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 09:00:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N1L8YFRO3tVR for <bridge@lists.linux-foundation.org>;
 Wed, 13 Apr 2022 09:00:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1A45960B47
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 09:00:44 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id b15so1543704edn.4
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 02:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language
 :from:to:cc:references:in-reply-to:content-transfer-encoding;
 bh=5ZKbS5mFW0wYcfmERfQx2D+wsG6WIRzsydtnS1G3otA=;
 b=kTRmGMVKJL4Lbotut2iU3K6cxKxnhKkntNjNs4zGWHEPXgAvf8m3/8Dh71lAvt0U7+
 9Un3v9b12rqAPg7D5UjNmQ9hAavvbtdb+ck9bL/6NWkkcG49ak7BtkfDBKiz2mhOfNCZ
 xiUeBctyZ+97hKJwS3BkUDRag/+M+bIhPpOEYXRLVRCGMJOHEztwsRRBuPHlnSsHlLIW
 dbEKlU8WUQK69mt1WdQXpOXo5OGTMMtJu9mH8N2/I9U5Elyn9whK3zDZ3Zg7HFqNHRsT
 ZzpCyOgFhznESvKXnABLIJLPaUM8/AVHhtS9KtjfXeKMJOxDDiRi54brFA5N96UURMZ5
 Xrdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:from:to:cc:references:in-reply-to
 :content-transfer-encoding;
 bh=5ZKbS5mFW0wYcfmERfQx2D+wsG6WIRzsydtnS1G3otA=;
 b=Tcrk0OaNoBa/5bFul7k+DbHN3TIwHlEoXnaguMiky3YtfNGjUX0cQUkQMlJPv0vSTM
 Q9QOqxDn6cGMAVOUyJvjHdBTAha6RYhe6wZEXNrhHU0PihnMeiLZyiI2BXujRNJJhzoR
 gzTYsEeKbmKFZCBkleSTxjJjWZwN142k86lq4W1+s4Fz2A0dfVg/u1sqK0avqc5v+byK
 JwhCvCCdfO7TCl9yN/o1Rfs5W0iLJ4xzkTwF4QI+2Zmw0hwf+1uPBOnyDDhc0fSRr+PB
 vnl/VBJ3AmdW0O4L6rSEC22UDsh0SKF97f+rOzZRFaOZCiH+CZP+NTE1Eh0r7F3zoxl3
 9I+Q==
X-Gm-Message-State: AOAM530PWyGzksdagaHjj9Yh69cnDfIIXlBOVQ0ty4Et8cptyygkCrCo
 UEKr6fBJ9Zo63kyzIiv+vISz5w==
X-Google-Smtp-Source: ABdhPJx2xF/aOgjmJNQlWTN9v9v6QBFPrUjiDQPVS6Uqe+j9Y3OLSjqJB3FtZRtoNtVk8eRix8IHtQ==
X-Received: by 2002:a05:6402:50c7:b0:419:534f:bbd7 with SMTP id
 h7-20020a05640250c700b00419534fbbd7mr41354575edb.209.1649840442131; 
 Wed, 13 Apr 2022 02:00:42 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 q15-20020a1709060e4f00b006cdf4535cf2sm13875685eji.67.2022.04.13.02.00.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Apr 2022 02:00:41 -0700 (PDT)
Message-ID: <586b97b3-0882-b42c-20f8-275a05b51beb@blackwall.org>
Date: Wed, 13 Apr 2022 12:00:40 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
From: Nikolay Aleksandrov <razor@blackwall.org>
To: Joachim Wiberg <troglobit@gmail.com>, Roopa Prabhu <roopa@nvidia.com>
References: <20220411133837.318876-1-troglobit@gmail.com>
 <20220411133837.318876-9-troglobit@gmail.com>
 <ebd182a2-20bc-471c-e649-a2689ea5a5d1@blackwall.org>
 <87v8ve9ppr.fsf@gmail.com>
 <5d597756-2fe1-e7cc-9ef3-c0323e2274f2@blackwall.org>
 <87pmll9xj1.fsf@gmail.com>
 <96bb8ff0-26d8-e9d3-e7c8-78f2abd28126@blackwall.org>
In-Reply-To: <96bb8ff0-26d8-e9d3-e7c8-78f2abd28126@blackwall.org>
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

On 13/04/2022 11:55, Nikolay Aleksandrov wrote:
> On 13/04/2022 11:51, Joachim Wiberg wrote:
>> On Tue, Apr 12, 2022 at 20:37, Nikolay Aleksandrov <razor@blackwall.org> wrote:
>>> On 12/04/2022 20:27, Joachim Wiberg wrote:
>>>> [snip]
>>>> From this I'd like to argue that our current behavior in the bridge is
>>>> wrong.  To me it's clear that, since we have a confiugration option, we
>>>> should forward unknown IP multicast to all MCAST_FLOOD ports (as well as
>>>> the router ports).
>>> Definitely not wrong. In fact:
>>> "Switches that do not forward unregistered packets to all ports must
>>>  include a configuration option to force the flooding of unregistered
>>>  packets on specified ports. [..]"
>>> is already implemented because the admin can mark any port as a router and
>>> enable flooding to it.
>>
>> Hmm, I understand your point (here and below), and won't drive this
>> point further.  Instead I'll pick up on what you said in your first
>> reply ... (below, last)
>>
>> Btw, thank you for taking the time to reply and explain your standpoint,
>> really helps my understanding of how we can develop the bridge further,
>> without breaking userspace! :)
>>
>>>> [1]: https://www.rfc-editor.org/rfc/rfc4541.html#section-2.1.2
>>> RFC4541 is only recommending, it's not a mandatory behaviour. This
>>> default has been placed for a very long time and a lot of users and
>>> tests take it into consideration.
>>
>> Noted.
>>
>>> We cannot break such assumptions and start suddenly flooding packets,
>>> but we can leave it up to the admin or distribution/network software
>>> to configure it as default.
>>
>> So, if I add a bridge flag, default off as you mentioned out earlier,
>> which changes the default behavior of MCAST_FLOOD, then you'd be OK with
>> that?  Something cheeky like this perhaps:
>>
>>     if (!ipv4_is_local_multicast(ip_hdr(skb)->daddr))
>>        	BR_INPUT_SKB_CB(skb)->mrouters_only = !br_opt_get(br, BROPT_MCAST_FLOOD_RFC4541);
> 
> Exactly! And that is exactly what I had in mind when I wrote it. :)
> 

Just please use a different option name that better suggests what it does.

> Thanks,
>  Nik
> 
>>
>>
>> Best regards
>>  /Joachim
> 

