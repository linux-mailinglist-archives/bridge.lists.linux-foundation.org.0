Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5814D4F5B
	for <lists.bridge@lfdr.de>; Thu, 10 Mar 2022 17:33:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A6E248475F;
	Thu, 10 Mar 2022 16:33:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AawBwBgfE-13; Thu, 10 Mar 2022 16:33:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 0B53684762;
	Thu, 10 Mar 2022 16:33:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D1EE8C000B;
	Thu, 10 Mar 2022 16:33:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 42998C000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 16:33:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1E44F40575
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 16:33:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QjcrKwx0LK-1 for <bridge@lists.linux-foundation.org>;
 Thu, 10 Mar 2022 16:33:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com
 [IPv6:2a00:1450:4864:20::129])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BF43D400CC
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 16:33:06 +0000 (UTC)
Received: by mail-lf1-x129.google.com with SMTP id bu29so10491810lfb.0
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 08:33:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=B7oFKopF/ybeQa/teChmQ0Yg8Uh0H2eRFEQBuI2o4kc=;
 b=I5jVSX/Gy5iKr+6UJuMYJiQ5GXOp4zOsI6dYdUjBQZPcJbPvrY041p13LD1tgt5EIs
 pZd8OQJdOPhpyZ+ZVntFl3zdgb75JPGzTeZ8+QHdd38MWPWw7QRyS/xXD/SrLY3k50Cx
 AS3hvkYGyJH9vqTdaWWI5J+lvf1y0QDyswlFbkBHZtbrs4UqYoXyD7RHVXPJcOsmrVIo
 wxu0pcFU2Kj9K8tSNfuyF2VOQCAY3zK5UWR63MBE3lzviA943i0aNKS4H7LDvoL6CV29
 NFMjJthhm9s6AKCN5t14VBPKAxm3wpaRoxKAfyqC7vtuq5vhIsX203cka9g0XZxkrFMF
 EsvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=B7oFKopF/ybeQa/teChmQ0Yg8Uh0H2eRFEQBuI2o4kc=;
 b=QVp0UQF5WdbSEtULTI8OqCRfCVlT2OGodciPPCQUNVXxp+I3dYDXRRJHeNrIe83Z2N
 rxaYi/2TAk0pFDKv+oLe7r2GtUA6N1xAji14Qd5oslrkS08L6gEuUZEa89UVkL3zz/tk
 D5aaQAGPE6OnQzvzJTPNS/jjDzuqR3HHFIMb1FB0wPx9ricYmB6TcmJL4cCvNkKVqA8F
 I7SDvgxTUn7raT+2Xo228Ve8GMUfLwv6dkKx32ecbcqztTHX8OYKN4uSL/yuQXc6hn3O
 WovF2aYikVGyJEHpX3M20lfvjEXrY7Vbox7SRZbz7fOLRf8csUfcPuR5EO2hh56yGQVc
 fViw==
X-Gm-Message-State: AOAM532stKMo+EvUZ0CpDciCtQNHsv7xXjaBac/QiaTIhyUu03GLA4q9
 dB12OydEN2fShk+4gtZwl8o9LeqMAHjO9Q==
X-Google-Smtp-Source: ABdhPJy2kA2giqI3s0O795ZfZbaQTN5FV5T5Cm1zy4crZamsjrvOFiDFiQwT05R97FDOwYMm0kRxAw==
X-Received: by 2002:ac2:5d70:0:b0:448:5d7b:dcb1 with SMTP id
 h16-20020ac25d70000000b004485d7bdcb1mr3433923lft.352.1646929984720; 
 Thu, 10 Mar 2022 08:33:04 -0800 (PST)
Received: from wse-c0127 ([208.127.141.29]) by smtp.gmail.com with ESMTPSA id
 m27-20020a056512015b00b00445b827ccf0sm1058774lfo.236.2022.03.10.08.33.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 08:33:04 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>, Hans Schultz
 <schultz.hans@gmail.com>, davem@davemloft.net, kuba@kernel.org
In-Reply-To: <dc47275b-27f8-5de0-ae6e-e82013a03d1f@blackwall.org>
References: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
 <20220310142320.611738-2-schultz.hans+netdev@gmail.com>
 <0eeaf59f-e7eb-7439-3c0a-17e7ac6741f0@blackwall.org>
 <86v8wles1g.fsf@gmail.com>
 <e3f57a64-4823-7cf3-0345-3777c44c2fe4@blackwall.org>
 <8635jp23ez.fsf@gmail.com>
 <dc47275b-27f8-5de0-ae6e-e82013a03d1f@blackwall.org>
Date: Thu, 10 Mar 2022 17:33:01 +0100
Message-ID: <86tuc5939e.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH net-next 1/3] net: bridge: add fdb flag to
 extent locked port feature
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

On tor, mar 10, 2022 at 18:14, Nikolay Aleksandrov <razor@blackwall.org> wrote:
> On 10/03/2022 18:11, Hans Schultz wrote:
>> On tor, mar 10, 2022 at 17:57, Nikolay Aleksandrov <razor@blackwall.org> wrote:
>>> On 10/03/2022 17:38, Hans Schultz wrote:
>>>> On tor, mar 10, 2022 at 16:42, Nikolay Aleksandrov <razor@blackwall.org> wrote:
>>>>> On 10/03/2022 16:23, Hans Schultz wrote:
>>>>>> Add an intermediate state for clients behind a locked port to allow for
>>>>>> possible opening of the port for said clients. This feature corresponds
>>>>>> to the Mac-Auth and MAC Authentication Bypass (MAB) named features. The
>>>>>> latter defined by Cisco.
>>>>>>
>>>>>> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
>>>>>> ---
>>>>>>     include/uapi/linux/neighbour.h |  1 +
>>>>>>     net/bridge/br_fdb.c            |  6 ++++++
>>>>>>     net/bridge/br_input.c          | 11 ++++++++++-
>>>>>>     net/bridge/br_private.h        |  3 ++-
>>>>>>     4 files changed, 19 insertions(+), 2 deletions(-)
>>>>>>
>>>>>> diff --git a/include/uapi/linux/neighbour.h b/include/uapi/linux/neighbour.h
>>>>>> index db05fb55055e..83115a592d58 100644
>>>>>> --- a/include/uapi/linux/neighbour.h
>>>>>> +++ b/include/uapi/linux/neighbour.h
>>>>>> @@ -208,6 +208,7 @@ enum {
>>>>>>     	NFEA_UNSPEC,
>>>>>>     	NFEA_ACTIVITY_NOTIFY,
>>>>>>     	NFEA_DONT_REFRESH,
>>>>>> +	NFEA_LOCKED,
>>>>>>     	__NFEA_MAX
>>>>>>     };
>>>>>
>>>>> Hmm, can you use NDA_FLAGS_EXT instead ?
>>>>> That should simplify things and reduce the nl size.
>>>>>
>>>>
>>>> I am using NDA_FDB_EXT_ATTRS. NFEA_LOCKED is just the
>>>> flag as the other flags section is full wrt the normal flags, but maybe it
>>>> doesn't fit in that section?
>>>>
>>>
>>> Actually wait a second, this is completely wrong use of NDA_FDB_EXT_ATTRS.
>>> That is a nested attribute, so the code below is wrong. More below..
>>>
>>>> I will just note that iproute2 support for parsing nested attributes
>>>> does not work, thus the BR_FDB_NOTIFY section (lines 150-165) are
>>>> obsolete with respect to iproute2 as it is now. I cannot rule out that
>>>> someone has some other tool that can handle this BR_FDB_NOTIFY, but I
>>>> could not make iproute2 as it stands handle nested attributes. And of
>>>> course there is no handling of NDA_FDB_EXT_ATTRS in iproute2 now.
>>>>>>>     #define NFEA_MAX (__NFEA_MAX - 1)
>>>>>> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
>>>>>> index 6ccda68bd473..396dcf3084cf 100644
>>>>>> --- a/net/bridge/br_fdb.c
>>>>>> +++ b/net/bridge/br_fdb.c
>>>>>> @@ -105,6 +105,7 @@ static int fdb_fill_info(struct sk_buff *skb, const struct net_bridge *br,
>>>>>>     	struct nda_cacheinfo ci;
>>>>>>     	struct nlmsghdr *nlh;
>>>>>>     	struct ndmsg *ndm;
>>>>>> +	u8 ext_flags = 0;
>>>>>>     
>>>>>>     	nlh = nlmsg_put(skb, portid, seq, type, sizeof(*ndm), flags);
>>>>>>     	if (nlh == NULL)
>>>>>> @@ -125,11 +126,16 @@ static int fdb_fill_info(struct sk_buff *skb, const struct net_bridge *br,
>>>>>>     		ndm->ndm_flags |= NTF_EXT_LEARNED;
>>>>>>     	if (test_bit(BR_FDB_STICKY, &fdb->flags))
>>>>>>     		ndm->ndm_flags |= NTF_STICKY;
>>>>>> +	if (test_bit(BR_FDB_ENTRY_LOCKED, &fdb->flags))
>>>>>> +		ext_flags |= 1 << NFEA_LOCKED;
>>>>>>     
>>>>>>     	if (nla_put(skb, NDA_LLADDR, ETH_ALEN, &fdb->key.addr))
>>>>>>     		goto nla_put_failure;
>>>>>>     	if (nla_put_u32(skb, NDA_MASTER, br->dev->ifindex))
>>>>>>     		goto nla_put_failure;
>>>>>> +	if (nla_put_u8(skb, NDA_FDB_EXT_ATTRS, ext_flags))
>>>>>> +		goto nla_put_failure;
>>>>>> +
>>>
>>> This is wrong. NDA_FDB_EXT_ATTRS is a nested attribute, you can't use it as a u8.
>>> You need to have this structure:
>>>    [ NDA_FDB_EXT_ATTRS ]
>>>     ` [ NFEA_LOCKED ]
>>>
>>> But that's why I asked if you could use the NDA_FLAGS_EXT attribute. You can see
>>> the logic from the neigh code.
>> 
>> Ahh yes, NDA_FLAGS_EXT was not there in the 5.15.x kernel I have
>> originally being making the patches in.
>> 
>> I hope that the handling of nested attributes has been fixed in
>> iproute2. ;-)
>> 
>
> It hasn't been broken, I'm guessing you're having issues with the nested bit being set.
> Check NLA_F_NESTED and NLA_TYPE_MASK.
>

Hmmm, then I wonder why I could not make the same code as in the said
lines (150-165) in br_fdb.c give any parsed attributes in iproute2 under
tb[NDA_FDB_EXT_ATTR].

Did I miss something, or are those lines incorrect?

>>>
>>> Also note that you need to account for the new attribute's size in fdb_nlmsg_size().
>>>
>>>
>>>>>>     	ci.ndm_used	 = jiffies_to_clock_t(now - fdb->used);
>>>>>>     	ci.ndm_confirmed = 0;
>>>>>>     	ci.ndm_updated	 = jiffies_to_clock_t(now - fdb->updated);
>>>>>> diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
>>>>>> index e0c13fcc50ed..897908484b18 100644
>>>>>> --- a/net/bridge/br_input.c
>>>>>> +++ b/net/bridge/br_input.c
>>>>>> @@ -75,6 +75,7 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
>>>>>>     	struct net_bridge_mcast *brmctx;
>>>>>>     	struct net_bridge_vlan *vlan;
>>>>>>     	struct net_bridge *br;
>>>>>> +	unsigned long flags = 0;
>>>>>
>>>>> Please move this below...
>>>>>
>>>>>>     	u16 vid = 0;
>>>>>>     	u8 state;
>>>>>>     
>>>>>> @@ -94,8 +95,16 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
>>>>>>     			br_fdb_find_rcu(br, eth_hdr(skb)->h_source, vid);
>>>>>>     
>>>>>>     		if (!fdb_src || READ_ONCE(fdb_src->dst) != p ||
>>>>>> -		    test_bit(BR_FDB_LOCAL, &fdb_src->flags))
>>>>>> +		    test_bit(BR_FDB_LOCAL, &fdb_src->flags)) {
>>>>>> +			if (!fdb_src) {
>>>>>
>>>>> ... here where it's only used.
>>>>>
>>>>
>>>> Forgot that one. Shall do!
>>>>
>>>>>> +				set_bit(BR_FDB_ENTRY_LOCKED, &flags);
>>>>>> +				br_fdb_update(br, p, eth_hdr(skb)->h_source, vid, flags);
>>>>>> +			}
>>>>>>     			goto drop;
>>>>>> +		} else {
>>>>>> +			if (test_bit(BR_FDB_ENTRY_LOCKED, &fdb_src->flags))
>>>>>> +				goto drop;
>>>>>> +		}
>>>>>>     	}
>>>>>>     
>>>>>>     	nbp_switchdev_frame_mark(p, skb);
>>>>>> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
>>>>>> index 48bc61ebc211..f5a0b68c4857 100644
>>>>>> --- a/net/bridge/br_private.h
>>>>>> +++ b/net/bridge/br_private.h
>>>>>> @@ -248,7 +248,8 @@ enum {
>>>>>>     	BR_FDB_ADDED_BY_EXT_LEARN,
>>>>>>     	BR_FDB_OFFLOADED,
>>>>>>     	BR_FDB_NOTIFY,
>>>>>> -	BR_FDB_NOTIFY_INACTIVE
>>>>>> +	BR_FDB_NOTIFY_INACTIVE,
>>>>>> +	BR_FDB_ENTRY_LOCKED,
>>>>>>     };
>>>>>>     
>>>>>>     struct net_bridge_fdb_key {
