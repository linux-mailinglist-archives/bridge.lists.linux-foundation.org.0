Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2F64FC5DF
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 22:34:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 507C8400B9;
	Mon, 11 Apr 2022 20:34:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vp9Cd9rRQFyw; Mon, 11 Apr 2022 20:34:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 541654038E;
	Mon, 11 Apr 2022 20:34:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0DDF1C0084;
	Mon, 11 Apr 2022 20:34:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 46C90C002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 20:34:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2FA6482F3D
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 20:34:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ria2VYcD8MMI for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 20:34:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AF25782F19
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 20:34:26 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id g18so8317400ejc.10
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 13:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=fvLrmjGULh5PeO+698QVj9ZjZ1CYMCZHBP99ly4kD/A=;
 b=34csYC9WDohbsDYhUY9ZiLOG1OoQLGMc5ViVUEhy6OYmjO+LkV9jJE/I1MJZNU3W5I
 9/fA3rx0fhYE9SDD9J7IPmCd2cUwJ4aNT57QF2p/u3KPlt06Punp7WDgiHNcwC5fByOx
 I/lFSLPYMqD+NAtniR1JpgDe+ZS7eujWeEkdEdtRRcxHvSoEWkrAs1vojnLownJLnK+G
 uRV+GFPPLDvXmQdg1Yn/pyOLWw4GAYVo4D2IFZhCB18kNqtjxQzKg+tIx7Figw925RYG
 Pnh7+4nBMdKv3KaDByk11ULhpRYOxMkSm2BbpY/ZyWBzc02WQ/epu8MA4ySz7oWsroIV
 Ol8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=fvLrmjGULh5PeO+698QVj9ZjZ1CYMCZHBP99ly4kD/A=;
 b=ABOTCKh2n4bfcVpfTROSYTo0zbNi/61dlzYeuZU8ygPiQ3yhyj8duoiJE2Uqs6p4iZ
 8lWv0wdfyz/odJxB9dGk8steqcE6TxZOYf3EbDIcHCgClfuwYNzBcCG6+rJLKiz8xaRO
 9c0mNp73bk09Q2RrdEHrJLHsREPruMbMmlslFh49uotzLkRcwzUde+g6hpmIIHNgTkaY
 x9oaA16kuCINwQsdHO471JJIVC2bD0jFSGhYHHB4VnOieqYJrC6rMHM6zF/miqOcFE/P
 Mi0iOcZmkQK1U8+nEmgGaWQKTYKnFl7b+uT9g75kPSrwnk2VCqjFjikiPzg3xYWghTCH
 N/ag==
X-Gm-Message-State: AOAM530t/FNtqDNDeYZVqGLRwed5SoeMFm+ewlHkC31LWLJf44cpZX9j
 ytjqith45J2JsP37qeHwwk3+JA==
X-Google-Smtp-Source: ABdhPJwS1D5H0wd9vgIlSJjfBXx8eqKAAxj8SruUHxsaBeWkxBPHhaCruKN5rO0iG4OmBNPDHBymVw==
X-Received: by 2002:a17:907:33cc:b0:6e8:81ca:f9e8 with SMTP id
 zk12-20020a17090733cc00b006e881caf9e8mr8299174ejb.51.1649709264838; 
 Mon, 11 Apr 2022 13:34:24 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 g8-20020a17090670c800b006e49b0641ebsm12295105ejk.195.2022.04.11.13.34.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 11 Apr 2022 13:34:24 -0700 (PDT)
Message-ID: <3c25f674-d90b-7028-e591-e2248919cca9@blackwall.org>
Date: Mon, 11 Apr 2022 23:34:23 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>, Roopa Prabhu <roopa@nvidia.com>
References: <20220411172934.1813604-1-razor@blackwall.org>
 <0d08b6ce-53bb-bffa-4f04-ede9bfc8ab63@nvidia.com>
 <c46ac324-34a2-ca0c-7c8c-35dc9c1aa0ab@blackwall.org>
 <92f578b7-347e-22c7-be83-cae4dce101f6@blackwall.org>
 <ca093c4f-d99c-d885-16cb-240b0ce4d8d8@nvidia.com>
 <20220411124910.772dc7a0@kernel.org>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220411124910.772dc7a0@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 davem@davemloft.net, idosch@idosch.org
Subject: Re: [Bridge] [PATCH net-next v2 0/8] net: bridge: add flush
	filtering support
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

On 11/04/2022 22:49, Jakub Kicinski wrote:
> On Mon, 11 Apr 2022 12:22:24 -0700 Roopa Prabhu wrote:
>>>> I thought about that option, but I didn't like overloading delneigh like that.
>>>> del currently requires a mac address and we need to either signal the device supports> a null mac, or we should push that verification to ndo_fdb_del users. Also we'll have  
>>> that's the only thing, overloading delneigh with a flush-behaviour (multi-del or whatever)
>>> would require to push the mac check to ndo_fdb_del implementers
>>>
>>> I don't mind going that road if others agree that we should do it through delneigh
>>> + a bit/option to signal flush, instead of a new rtm type.
>>>  
>>>> attributes which are flush-specific and will work only when flushing as opposed to when
>>>> deleting a specific mac, so handling them in the different cases can become a pain.  
>>> scratch the specific attributes, those can be adapted for both cases
>>>  
>>>> MDBs will need DELMDB to be modified in a similar way.
>>>>
>>>> IMO a separate flush op is cleaner, but I don't have a strong preference.
>>>> This can very easily be adapted to delneigh with just a bit more mechanical changes
>>>> if the mac check is pushed to the ndo implementers.
>>>>
>>>> FLUSHNEIGH can easily work for neighs, just need another address family rtnl_register
>>>> that implements it, the new ndo is just for PF_BRIDGE. :)  
>>
>> all great points. My only reason to explore RTM_DELNEIGH is to see if we 
>> can find a recipe to support similar bulk deletes of other objects 
>> handled via rtm msgs in the future. Plus, it allows you to maintain 
>> symmetry between flush requests and object delete notification msg types.
>>
>> Lets see if there are other opinions.
> 
> I'd vote for reusing RTM_DELNEIGH, but that's purely based on

OK, I'll look into the delneigh solution. Note that for backwards compatibility
we won't be able to return proper error because rtnl_fdb_del will be called without
a mac address, so for old kernels with new iproute2 fdb flush will return "invalid
address" as an error.

> intuition, I don't know this code. I'd also lean towards core
> creating struct net_bridge_fdb_flush_desc rather than piping
> raw netlink attrs thru. Lastly feels like fdb ops should find 

I don't think the struct can really be centralized, at least for the
bridge case it contains private fields which parsed attributes get mapped to,
specifically the ndm flags and state, and their maps are all mapped into
bridge-private flags. Or did you mean pass the raw attribute vals through a
struct instead of a nlattr table?

> a new home rather than ndos, but that's largely unrelated..

I like separating the ops idea. I'll add that to my bridge todo list. :)

Thanks,
 Nik

