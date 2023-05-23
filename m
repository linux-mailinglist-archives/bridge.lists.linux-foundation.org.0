Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB83470DD23
	for <lists.bridge@lfdr.de>; Tue, 23 May 2023 15:03:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9EC8B405A4;
	Tue, 23 May 2023 13:03:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9EC8B405A4
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=BSWx4ZvS
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p38rHWlUQ1ga; Tue, 23 May 2023 13:03:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id AA31E404E4;
	Tue, 23 May 2023 13:03:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA31E404E4
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4EFFEC007C;
	Tue, 23 May 2023 13:03:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 54812C002A
 for <bridge@lists.linux-foundation.org>; Tue, 23 May 2023 13:03:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E8AAA400FE
 for <bridge@lists.linux-foundation.org>; Tue, 23 May 2023 13:03:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E8AAA400FE
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=BSWx4ZvS
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KKorBTOQo-s6 for <bridge@lists.linux-foundation.org>;
 Tue, 23 May 2023 13:03:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC84E40022
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AC84E40022
 for <bridge@lists.linux-foundation.org>; Tue, 23 May 2023 13:03:23 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id
 a640c23a62f3a-96fb1642b09so477834966b.0
 for <bridge@lists.linux-foundation.org>; Tue, 23 May 2023 06:03:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1684847001; x=1687439001;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=MtuLbrEh7BlwROWf1pslTcmB5/eMhxKXbbO35Rej/2A=;
 b=BSWx4ZvSHeFN3DVRK4aPNDwO3q2sJVjboIeFA/r8O6w07EFv30YTG8Ynp68+I/WQkf
 Gx4xRUGOb+SO4u1QHszLxatyHvrZD438hI4gXE7lcpVAm2BI5LbyNcZatltsTqYW+jcq
 oWoMSihVGsRBUobDkxJDyscUSCJEyoW/9SP50bOwqwpmTa9WIKDBQnezE7aRfBysAtP1
 NQit3JYQOZZW9DCgm1dcH+o5QGEr7MnfXFPTU/B5uymQhfnZjNu3JrjTQnLOCX8R+Q6V
 GaCb0fz4aJT5gXbJ5kF/EfYQXqbLT976Fmt6x7g1x/cXO0T7yhxyr5gra9vpcTrsGtyt
 kgsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684847001; x=1687439001;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=MtuLbrEh7BlwROWf1pslTcmB5/eMhxKXbbO35Rej/2A=;
 b=J8Uj7nc8lGv3C4Tu7RWs7nVvf3IwCGXivFM1UcXxEegv6ZQLdNQQTsVzQi8FcPzfum
 DyH9DQVUlOmg/4JxnE78z2Q4CLDv761GZ4CSC5b+OQfnlI5XA8osSqUDDdHuc7UeS1d7
 wQD9LTEPVErcinLQmr0SqR8T1jUMIddmodK4A9ltdZYj2G1+or3BT4KEQJ7kTTLRTj70
 ENJnpeCl11bPVRLF4Fb467P2x2e+FTO+Mxl5kFP8IBS5x3rLb3AZMTrK9TqprH9U87aG
 eoytqQZfRPqqxDu5AZoDk5PtopNB6h6qpvvwdzSmIWYohe71grUZER/Ozw1IVbUmXnvl
 dNNw==
X-Gm-Message-State: AC+VfDy7N7AJzFPkBnLohey+HI7TbwWlLqq1vF2D9rxoXSFAThavhMzG
 3JRIulirO51h+WqyOilg8pOimA==
X-Google-Smtp-Source: ACHHUZ4TM2+jJWPiQWnVqP6sHyysYTXw5utnGRNkKZNR7bYEokjBnoKce0h6jbNMYg5uPTwtgkq0Vw==
X-Received: by 2002:a17:906:eec8:b0:94f:8605:3f31 with SMTP id
 wu8-20020a170906eec800b0094f86053f31mr14251281ejb.42.1684847001390; 
 Tue, 23 May 2023 06:03:21 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 gx1-20020a1709068a4100b0096ae4451c65sm4362589ejc.157.2023.05.23.06.03.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 23 May 2023 06:03:20 -0700 (PDT)
Message-ID: <af356b89-ff7f-a562-2859-e8edeae5f23c@blackwall.org>
Date: Tue, 23 May 2023 16:03:19 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, Jakub Kicinski <kuba@kernel.org>
References: <20230518113328.1952135-1-idosch@nvidia.com>
 <20230518113328.1952135-2-idosch@nvidia.com>
 <1ed139d5-6cb9-90c7-323c-22cf916e96a0@blackwall.org>
 <ZGd+9CUBM+eWG5FR@shredder> <20230519145218.659b0104@kernel.org>
 <ZGx0/hwPmFFN2ivS@shredder>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <ZGx0/hwPmFFN2ivS@shredder>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: taras.chornyi@plvision.eu, petrm@nvidia.com, alexandre.belloni@bootlin.com,
 jiri@resnulli.us, taspelund@nvidia.com, leon@kernel.org,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 claudiu.manoil@nxp.com, UNGLinuxDriver@microchip.com, vladimir.oltean@nxp.com,
 edumazet@google.com, jhs@mojatatu.com, roopa@nvidia.com,
 xiyou.wangcong@gmail.com, pabeni@redhat.com, saeedm@nvidia.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/5] skbuff: bridge: Add layer 2 miss
	indication
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

On 23/05/2023 11:10, Ido Schimmel wrote:
> On Fri, May 19, 2023 at 02:52:18PM -0700, Jakub Kicinski wrote:
>> On Fri, 19 May 2023 16:51:48 +0300 Ido Schimmel wrote:
>>> diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
>>> index fc17b9fd93e6..274e55455b15 100644
>>> --- a/net/bridge/br_input.c
>>> +++ b/net/bridge/br_input.c
>>> @@ -46,6 +46,8 @@ static int br_pass_frame_up(struct sk_buff *skb)
>>>          */
>>>         br_switchdev_frame_unmark(skb);
>>>  
>>> +       skb->l2_miss = BR_INPUT_SKB_CB(skb)->miss;
>>> +
>>>         /* Bridge is just like any other port.  Make sure the
>>>          * packet is allowed except in promisc mode when someone
>>>          * may be running packet capture.
>>>
>>> Ran these changes through the selftest and it seems to work.
>>
>> Can we possibly put the new field at the end of the CB and then have TC
>> look at it in the CB? We already do a bit of such CB juggling in strp
>> (first member of struct sk_skb_cb).
> 
> Using the CB between different layers is very fragile and I would like
> to avoid it. Note that the skb can pass various layers until hitting the
> classifier, each of which can decide to memset() the CB.
> 
> Anyway, I think I have a better alternative. I added the 'l2_miss' bit
> to the tc skb extension and adjusted the bridge to mark packets via this
> extension. The entire thing is protected by the existing 'tc_skb_ext_tc'
> static key, so overhead is kept to a minimum when feature is disabled.
> Extended flower to enable / disable this key when filters that match on
> 'l2_miss' are added / removed.
> 
> bridge change to mark the packet:
> https://github.com/idosch/linux/commit/3fab206492fcad9177f2340680f02ced1b9a0dec.patch
> 
> flow_dissector change to dissect the info from the extension:
> https://github.com/idosch/linux/commit/1533c078b02586547817a4e63989a0db62aa5315.patch
> 
> flower change to enable / disable the key:
> https://github.com/idosch/linux/commit/cf84b277511ec80fe565c41271abc6b2e2f629af.patch
> 
> Advantages compared to the previous approach are that we do not need a
> new bit in the skb and that overhead is kept to a minimum when feature
> is disabled. Disadvantage is that overhead is higher when feature is
> enabled.
> 
> WDYT?
> 
> To be clear, merely asking for feedback on the general approach, not
> code review.
> 
> Thanks

TBH, I like this approach much better for obvious reasons. :)
Thanks for working on it.
