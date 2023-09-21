Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5507A937E
	for <lists.bridge@lfdr.de>; Thu, 21 Sep 2023 12:14:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC33941F25;
	Thu, 21 Sep 2023 10:14:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC33941F25
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=KwNINXZs
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VPeHPdzJjbNJ; Thu, 21 Sep 2023 10:14:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id CAF3941DA3;
	Thu, 21 Sep 2023 10:14:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CAF3941DA3
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 59474C0DD3;
	Thu, 21 Sep 2023 10:14:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 72980C0032
 for <bridge@lists.linux-foundation.org>; Thu, 21 Sep 2023 10:14:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3CA4E60B30
 for <bridge@lists.linux-foundation.org>; Thu, 21 Sep 2023 10:14:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3CA4E60B30
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=KwNINXZs
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L7VAfe_IMMqQ for <bridge@lists.linux-foundation.org>;
 Thu, 21 Sep 2023 10:14:48 +0000 (UTC)
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C594360773
 for <bridge@lists.linux-foundation.org>; Thu, 21 Sep 2023 10:14:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C594360773
Received: by mail-lf1-x12e.google.com with SMTP id
 2adb3069b0e04-5033918c09eso1349742e87.2
 for <bridge@lists.linux-foundation.org>; Thu, 21 Sep 2023 03:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1695291286; x=1695896086;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Oet/D+JdIKmqqEXMeGgkoE2/3Tw5UCJOvyH76c8x0dQ=;
 b=KwNINXZsMjnEiGRvlR4pg72PfUiqST4odJtrrCmjWlRHKDGA0WLxgZ5SOL27xDYw0I
 fN+JqiyC6qFhK2r+Esqa1ixlCFgRy94EtFiqmWAehJsHtWoqg86H4w7FJ609e3a93KNm
 qCkGFIxdwqvLDWt5EK2Q2cjgajczbh1YoIMBH8yQ4Xabum09VDyMnE53EqT8mhdW6vT8
 XdM8SuhalO5ciJ61DfNQSC+vzhaKfZrBJet8XHk3vkBLjCNzR4jSW8h16NFb8m0z58zs
 xfBN8hZjZrImXHxIDmUfyTzFzTi6VIlfVfh4+j0EeCizVa6Q7cKyiadSpPgK5NPpYcvb
 xysw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695291286; x=1695896086;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Oet/D+JdIKmqqEXMeGgkoE2/3Tw5UCJOvyH76c8x0dQ=;
 b=T59Z00WsMTKpt5uFQaSie+HawLXx3rx6IvQkn/8X8kjFJiPMdjP0NKGO1TqCMQI7zP
 rvOCnmPUTkad/+Jin/XMgGwnQbEodJ3yWd8/T0Rh+8jcTuCLapT4zkM9/BLurUwWmWvj
 IZLRx400KjnxsYxWMbePITy+0/HSYpzBOTAzsLeXpqLAgH5QOcHKFJL0xhVvd5OcqeO0
 voyZLP61zBGwezmoMqo2NLQ08FxFiRG1Cav5WSyTD4ZOC3K9WamVT/U4W5ZxAnOaC/eQ
 EBTvqGNytu7rHUVy7/G5oSqswyuD9yIVgcSTFG5DBDb9yBd+lU5k7QpBdsRUoKKVO2qN
 onjQ==
X-Gm-Message-State: AOJu0Yy4Pm58eZWUVJGK63Wl+GRrs7Ta0CTNIXZBnvT2YSbvYOmVp9cY
 Fvfv1byJN9JxK2msiQAq2IbsTA==
X-Google-Smtp-Source: AGHT+IGSqpABR6NJIutspbmDVZEhOKpxYfh5Gelph+0yVDatq2aZ3E+NWHnq2oOH1AMJw/MFATUt/Q==
X-Received: by 2002:ac2:5b1c:0:b0:503:314f:affe with SMTP id
 v28-20020ac25b1c000000b00503314faffemr4577024lfn.17.1695291285601; 
 Thu, 21 Sep 2023 03:14:45 -0700 (PDT)
Received: from [192.168.0.105] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 ay15-20020a056402202f00b00532c32e2b2dsm622021edb.18.2023.09.21.03.14.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Sep 2023 03:14:45 -0700 (PDT)
Message-ID: <ab1130bb-38ce-1804-7981-6a4532d6ff7b@blackwall.org>
Date: Thu, 21 Sep 2023 13:14:43 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Johannes Nixdorf <jnixdorf-oss@avm.de>
References: <20230919-fdb_limit-v4-0-39f0293807b8@avm.de>
 <20230919-fdb_limit-v4-2-39f0293807b8@avm.de>
 <1c12b8f2-b28b-f326-b24f-f1ea602832d7@blackwall.org>
 <ZQvvgiz4rE8u6vba@u-jnixdorf.ads.avm.de>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <ZQvvgiz4rE8u6vba@u-jnixdorf.ads.avm.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, linux-kernel@vger.kernel.org,
 Oleksij Rempel <linux@rempel-privat.de>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, linux-kselftest@vger.kernel.org,
 David Ahern <dsahern@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Shuah Khan <shuah@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next v4 2/6] net: bridge: Set
 strict_start_type for br_policy
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

On 9/21/23 10:23, Johannes Nixdorf wrote:
> On Wed, Sep 20, 2023 at 01:46:02PM +0300, Nikolay Aleksandrov wrote:
>> On 9/19/23 11:12, Johannes Nixdorf wrote:
>>> Set any new attributes added to br_policy to be parsed strictly, to
>>> prevent userspace from passing garbage.
>>>
>>> Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
>>> ---
>>>    net/bridge/br_netlink.c | 2 ++
>>>    1 file changed, 2 insertions(+)
>>>
>>> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
>>> index 10f0d33d8ccf..505683ef9a26 100644
>>> --- a/net/bridge/br_netlink.c
>>> +++ b/net/bridge/br_netlink.c
>>> @@ -1229,6 +1229,8 @@ static size_t br_port_get_slave_size(const struct net_device *brdev,
>>>    }
>>>    static const struct nla_policy br_policy[IFLA_BR_MAX + 1] = {
>>> +	[IFLA_BR_UNSPEC]	= { .strict_start_type =
>>> +				    IFLA_BR_MCAST_QUERIER_STATE + 1 },
>>>    	[IFLA_BR_FORWARD_DELAY]	= { .type = NLA_U32 },
>>>    	[IFLA_BR_HELLO_TIME]	= { .type = NLA_U32 },
>>>    	[IFLA_BR_MAX_AGE]	= { .type = NLA_U32 },
>>>
>>
>> instead of IFLA_BR_MCAST_QUERIER_STATE + 1, why not move around the patch
>> and just use the new attribute name?
>> These are uapi, they won't change.
> 
> I wanted to avoid having a state between the two commits where the new
> attributes are already added, but not yet strictly verified. Otherwise
> they would present a slightly different UAPI at that one commit boundary
> than after this commit.
> 

That's not really a problem, the attribute is the same.

> This is also not the only place in the kernel where strict_start_type
> is specified that way. See e.g. commit c00041cf1cb8 ("net: bridge: Set
> strict_start_type at two policies"), even though that seems mostly be
> done to turn on strict_start_type preemtively, not in the same series
> that adds the new attribute.

Please, just use the new attribute to be more explicit where the strict 
parsing starts.

Thanks,
  Nik


