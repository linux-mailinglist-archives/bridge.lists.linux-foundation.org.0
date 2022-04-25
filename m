Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E842450DF49
	for <lists.bridge@lfdr.de>; Mon, 25 Apr 2022 13:47:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0D3A4094C;
	Mon, 25 Apr 2022 11:47:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Ejr4jXyUiTV; Mon, 25 Apr 2022 11:47:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 10FCC4091F;
	Mon, 25 Apr 2022 11:47:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B4D41C007C;
	Mon, 25 Apr 2022 11:47:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 67C95C002D
 for <bridge@lists.linux-foundation.org>; Mon, 25 Apr 2022 11:47:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 44164408BC
 for <bridge@lists.linux-foundation.org>; Mon, 25 Apr 2022 11:47:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P5O5-MkPjhz8 for <bridge@lists.linux-foundation.org>;
 Mon, 25 Apr 2022 11:47:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 218F740866
 for <bridge@lists.linux-foundation.org>; Mon, 25 Apr 2022 11:47:28 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id q23so7560847wra.1
 for <bridge@lists.linux-foundation.org>; Mon, 25 Apr 2022 04:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=zL3zAyFVSY3b9tOnPyfU+7HZbn2fwn34DVHclMTOxIM=;
 b=LrsaqLT1q3SQ0uASZlNpLZwn2OT10CWeUnsTzofQWIG4W4bfOEmT13Q91UpjOLMq7s
 lrpBPBf94SI7EbFNxbrX+Z/FunV8lwcQwOa8PswQHuORAvup4TEAo9xf7hVSakwwOPnA
 GuyV9BEc3s+TJiupOCo9LTsOKC9C6/h//ZfyR20aJ+FFVWNNnmWzPtf364WCXaoPaiM5
 lJvrTGrUjdYY83vBcra2zXLR6P5SmQ0YLe3A8WGIcfxftiwix3egfw7A3/HPPdM1/fDx
 ZBTN1+CxT+TbhNO/G/yP80ZMrIydOgwnA8vEQlWD/vnscKXAi3LFneb72yKNQ2XFhKBZ
 2N3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=zL3zAyFVSY3b9tOnPyfU+7HZbn2fwn34DVHclMTOxIM=;
 b=ILEMowW4uM4486s87lAJ1LqGLEmzz1IfJlg07sEUk/8Ux2qVdklOlh9fp5ct7OQIpc
 uHbW+onJvU7I/ueYUI3r6lxJjhNhwje3s/hK0VuaXSY00CAtboOuwDLnY9fpNTHl/lxN
 oWBXQMJo9op1M0i7kZRggsw4qpAmeNBKqvC4uMAwqQ6Pgfm9Nf0NtFuHgvE9kr71DECG
 AzQpyL5bTrJCLAM5cOAzNTaGtDvpMbNVk2LMyYY1PpT03k1s3oghWeeQizSnGOKs6Mzd
 5S0ysgf00pvwzzCK2jwKdoEDYfQsmebiBmflBBjwmw6cos1Zy5MXzqsP2Pj4kMF7QWTV
 WVIw==
X-Gm-Message-State: AOAM533x+8SB15xlnt23hpVz9N/xRbrm1o6+48VJFVPgj8BW08mQpSRF
 HO0OqpQeVXd7dnnBFepNMLg=
X-Google-Smtp-Source: ABdhPJyszTsPH0cgFDvwgEGg3ulNmRSFpWw0T28e1SHB0fW84CGCOgMtYS/1BwvzpMIoRdQ6c5PcsA==
X-Received: by 2002:a5d:5228:0:b0:20a:d7e9:7ed8 with SMTP id
 i8-20020a5d5228000000b0020ad7e97ed8mr5654205wra.687.1650887247334; 
 Mon, 25 Apr 2022 04:47:27 -0700 (PDT)
Received: from [192.168.1.5] ([41.42.183.233])
 by smtp.gmail.com with ESMTPSA id
 f4-20020a7bc8c4000000b0038ebbe10c5esm11185583wml.25.2022.04.25.04.47.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 Apr 2022 04:47:26 -0700 (PDT)
Message-ID: <1efd4c00-4c78-2330-cfb3-fe81493e7e68@gmail.com>
Date: Mon, 25 Apr 2022 13:47:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Nikolay Aleksandrov <razor@blackwall.org>, netdev@vger.kernel.org
References: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <c3a882e4fb6f9228f704ebe3c1fcace14ee6cdf2.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <7c8367b6-95c7-ea39-fafe-72495f343625@blackwall.org>
 <d89eefc2-664f-8537-d10e-6fdfbb6823ed@gmail.com>
 <4bf69eef-7444-1238-0f4a-fb0fccda080c@blackwall.org>
 <3bcb2d3d-8b8b-8a8f-1285-7277394b4e6b@gmail.com>
 <0f1e1250-920a-c7d1-900c-98ef3e0456d8@blackwall.org>
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <0f1e1250-920a-c7d1-900c-98ef3e0456d8@blackwall.org>
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


On ٢٤‏/٤‏/٢٠٢٢ ٢٣:٥٢, Nikolay Aleksandrov wrote:
> On 4/25/22 00:09, Alaa Mohamed wrote:
>>
>> On ٢٤‏/٤‏/٢٠٢٢ ٢١:٥٥, Nikolay Aleksandrov wrote:
>>> On 24/04/2022 22:49, Alaa Mohamed wrote:
>>>> On ٢٤‏/٤‏/٢٠٢٢ ٢١:٠٢, Nikolay Aleksandrov wrote:
>>>>> On 24/04/2022 15:09, Alaa Mohamed wrote:
>>>>>> Add extack support to .ndo_fdb_del in netdevice.h and
>>>>>> all related methods.
>>>>>>
>>>>>> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
>>>>>> ---
>>>>>> changes in V3:
>>>>>>           fix errors reported by checkpatch.pl
>>>>>> ---
>>>>>>    drivers/net/ethernet/intel/ice/ice_main.c        | 4 ++--
>>>>>>    drivers/net/ethernet/mscc/ocelot_net.c           | 4 ++--
>>>>>>    drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c | 2 +-
>>>>>>    drivers/net/macvlan.c                            | 2 +-
>>>>>>    drivers/net/vxlan/vxlan_core.c                   | 2 +-
>>>>>>    include/linux/netdevice.h                        | 2 +-
>>>>>>    net/bridge/br_fdb.c                              | 2 +-
>>>>>>    net/bridge/br_private.h                          | 2 +-
>>>>>>    net/core/rtnetlink.c                             | 4 ++--
>>>>>>    9 files changed, 12 insertions(+), 12 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c 
>>>>>> b/drivers/net/ethernet/intel/ice/ice_main.c
>>>>>> index d768925785ca..7b55d8d94803 100644
>>>>>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>>>>>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>>>>>> @@ -5678,10 +5678,10 @@ ice_fdb_add(struct ndmsg *ndm, struct 
>>>>>> nlattr __always_unused *tb[],
>>>>>>    static int
>>>>>>    ice_fdb_del(struct ndmsg *ndm, __always_unused struct nlattr 
>>>>>> *tb[],
>>>>>>            struct net_device *dev, const unsigned char *addr,
>>>>>> -        __always_unused u16 vid)
>>>>>> +        __always_unused u16 vid, struct netlink_ext_ack *extack)
>>>>>>    {
>>>>>>        int err;
>>>>>> -
>>>>>> +
>>>>> What's changed here?
>>>> In the previous version, I removed the blank line after "int err;" 
>>>> and you said I shouldn't so I added blank line.
>>>>
>>> Yeah, my question is are you fixing a dos ending or something else?
>>> The blank line is already there, what's wrong with it?
>> No, I didn't.
>>>
>>> The point is it's not nice to mix style fixes and other changes, 
>>> more so
>>> if nothing is mentioned in the commit message.
>> Got it, So, what should I do to fix it?
>
> Don't change that line? I mean I'm even surprised this made it in the 
> patch. As I mentioned above, there is already a new line there so I'm 
> not sure how you're removing it and adding it again. :)
>
> Cheers,
>  Nik


Thanks Nik, I will fix this.

