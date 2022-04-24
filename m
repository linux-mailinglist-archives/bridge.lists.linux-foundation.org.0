Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB0C50D568
	for <lists.bridge@lfdr.de>; Sun, 24 Apr 2022 23:52:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DCC064002B;
	Sun, 24 Apr 2022 21:52:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HjvmH1gTUEzg; Sun, 24 Apr 2022 21:52:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 5CA35401F2;
	Sun, 24 Apr 2022 21:52:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 24242C007C;
	Sun, 24 Apr 2022 21:52:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DB698C002D
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 21:52:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B51998132E
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 21:52:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zeacL1leIT1p for <bridge@lists.linux-foundation.org>;
 Sun, 24 Apr 2022 21:52:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E157B8130D
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 21:52:43 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id g23so9379839edy.13
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 14:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=HtsX7xXS5KyrSdS4F8RNS0VhDr01GCN2iAGgDFc6qBs=;
 b=Bk78u/NaLlBh/+udP1b42wGjGXL+P807SEn3bt4RGvsZ6lVNKA9vUhLUIDtJu4SHO9
 T9/5Z7yK5+CdL++dKToG8H03+Ijpr644TnAzeuf9hCa+Ky3DfQxmNbQ5argOSQrrIU3U
 GtLq73xG7eQILwhJGkUrnG9H1nHp9VbOLtGWDH+J8duVnfd4noatHsIok+vlhVQxcBwV
 fU1Niw1hMc/3HNwc+i2lL1L6woChrXpSTZvUa1Z58wx1w8zInanQQoj7M88+ZRlDn2Dj
 PAvZYWy4uvkiXgYhKbE7+XzaWRy0A+uRrdNZTwRRDs7joSr1nBCKZ/TZFLMqIaVXcRHo
 le3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=HtsX7xXS5KyrSdS4F8RNS0VhDr01GCN2iAGgDFc6qBs=;
 b=KMRYRcndFp5YzEi+G++3CpYWL6cSrbfdBFgcxNpMalx8mgvpwqnGSb+MZRk3yKS784
 6yBJkGS2E5HbxakvjDFqo69c2iHz4ldIsCjsqBwtUqTTmQyo9wMm68bWxLKNnleDITRN
 9nalizgceQCYqF8WIBdeYVj1ZTa13MCM6PvmooIF1LIBQ5sAgOp2bAdKZKCXsIeEJtjW
 0sONR5fy9mTOB+8V3V2eyk3nPlKUXh36KOWXWyGeTgxPQqKIUnE6TPMboa/ldOnV8jiQ
 FEDR5sgy8H49BWtCQ45oDjw5A/KeVYjb5F264VHe0aQ0ZKNAH41UkaYH+pXoO1nGp2c1
 Ev6w==
X-Gm-Message-State: AOAM532miIWy6G6olxZCoiTPlc+xwJ57x2nTPtAEUoeGWmjEj9yIaCoL
 mdFwLWWFNFKajOkz+xCVsfTOgw==
X-Google-Smtp-Source: ABdhPJxA/GkBOyzYFPNHFGGUbgZYaFFMjxcPjHcOGJU9afJPo3NAvQlf/gAy8hcMlADO4H+DYaO7FQ==
X-Received: by 2002:a05:6402:42d4:b0:416:5cac:a9a0 with SMTP id
 i20-20020a05640242d400b004165caca9a0mr15984539edc.86.1650837161997; 
 Sun, 24 Apr 2022 14:52:41 -0700 (PDT)
Received: from [192.168.0.117] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 a94-20020a509ee7000000b00425e7035c4bsm619579edf.61.2022.04.24.14.52.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 24 Apr 2022 14:52:41 -0700 (PDT)
Message-ID: <0f1e1250-920a-c7d1-900c-98ef3e0456d8@blackwall.org>
Date: Mon, 25 Apr 2022 00:52:39 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>, netdev@vger.kernel.org
References: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <c3a882e4fb6f9228f704ebe3c1fcace14ee6cdf2.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <7c8367b6-95c7-ea39-fafe-72495f343625@blackwall.org>
 <d89eefc2-664f-8537-d10e-6fdfbb6823ed@gmail.com>
 <4bf69eef-7444-1238-0f4a-fb0fccda080c@blackwall.org>
 <3bcb2d3d-8b8b-8a8f-1285-7277394b4e6b@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <3bcb2d3d-8b8b-8a8f-1285-7277394b4e6b@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Cc: shshaikh@marvell.com, jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 vladimir.oltean@nxp.com, bridge@lists.linux-foundation.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, sbrivio@redhat.com,
 claudiu.manoil@nxp.com, anthony.l.nguyen@intel.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net,
 UNGLinuxDriver@microchip.com, intel-wired-lan@lists.osuosl.org
Subject: Re: [Bridge] [PATCH net-next v3 1/2] rtnetlink: add extack support
 in fdb del handlers
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

On 4/25/22 00:09, Alaa Mohamed wrote:
> 
> On ٢٤‏/٤‏/٢٠٢٢ ٢١:٥٥, Nikolay Aleksandrov wrote:
>> On 24/04/2022 22:49, Alaa Mohamed wrote:
>>> On ٢٤‏/٤‏/٢٠٢٢ ٢١:٠٢, Nikolay Aleksandrov wrote:
>>>> On 24/04/2022 15:09, Alaa Mohamed wrote:
>>>>> Add extack support to .ndo_fdb_del in netdevice.h and
>>>>> all related methods.
>>>>>
>>>>> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
>>>>> ---
>>>>> changes in V3:
>>>>>           fix errors reported by checkpatch.pl
>>>>> ---
>>>>>    drivers/net/ethernet/intel/ice/ice_main.c        | 4 ++--
>>>>>    drivers/net/ethernet/mscc/ocelot_net.c           | 4 ++--
>>>>>    drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c | 2 +-
>>>>>    drivers/net/macvlan.c                            | 2 +-
>>>>>    drivers/net/vxlan/vxlan_core.c                   | 2 +-
>>>>>    include/linux/netdevice.h                        | 2 +-
>>>>>    net/bridge/br_fdb.c                              | 2 +-
>>>>>    net/bridge/br_private.h                          | 2 +-
>>>>>    net/core/rtnetlink.c                             | 4 ++--
>>>>>    9 files changed, 12 insertions(+), 12 deletions(-)
>>>>>
>>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c 
>>>>> b/drivers/net/ethernet/intel/ice/ice_main.c
>>>>> index d768925785ca..7b55d8d94803 100644
>>>>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>>>>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>>>>> @@ -5678,10 +5678,10 @@ ice_fdb_add(struct ndmsg *ndm, struct 
>>>>> nlattr __always_unused *tb[],
>>>>>    static int
>>>>>    ice_fdb_del(struct ndmsg *ndm, __always_unused struct nlattr *tb[],
>>>>>            struct net_device *dev, const unsigned char *addr,
>>>>> -        __always_unused u16 vid)
>>>>> +        __always_unused u16 vid, struct netlink_ext_ack *extack)
>>>>>    {
>>>>>        int err;
>>>>> -
>>>>> +
>>>> What's changed here?
>>> In the previous version, I removed the blank line after "int err;" 
>>> and you said I shouldn't so I added blank line.
>>>
>> Yeah, my question is are you fixing a dos ending or something else?
>> The blank line is already there, what's wrong with it?
> No, I didn't.
>>
>> The point is it's not nice to mix style fixes and other changes, more so
>> if nothing is mentioned in the commit message.
> Got it, So, what should I do to fix it?

Don't change that line? I mean I'm even surprised this made it in the 
patch. As I mentioned above, there is already a new line there so I'm 
not sure how you're removing it and adding it again. :)

Cheers,
  Nik
