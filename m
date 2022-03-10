Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 240704D4DB8
	for <lists.bridge@lfdr.de>; Thu, 10 Mar 2022 16:57:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 285AE4040C;
	Thu, 10 Mar 2022 15:57:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lq31DUaruSxP; Thu, 10 Mar 2022 15:57:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 3AA3940364;
	Thu, 10 Mar 2022 15:57:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EA1D0C0073;
	Thu, 10 Mar 2022 15:57:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 158EEC000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 15:57:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0C03041907
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 15:57:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gsL9x-i2t4NG for <bridge@lists.linux-foundation.org>;
 Thu, 10 Mar 2022 15:57:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EA53A418FF
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 15:57:26 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id g17so10237118lfh.2
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 07:57:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=/3Y7SdvtHwEXMZpktqa2soQUFfSCdXW3oRVPXSTvSbE=;
 b=tSpqQw0bwEGHuAanvQKc5+pflShk4r3gq7B+rHffAcSv/JOK4oV94jG4z+j5vImUgu
 yGXSE5E7P2FCs8jftQW0PEl2V2K72yXlkTF8p0lbN64Yc3tRXaLgDrNk4hXU6o81WvQf
 zMDojsPuHf78Ga6Ig5LITEb/idNmhedGptxc1RCTYU1iF80MEPx+Qg5uGOm1om98zTBN
 Ok2FIx/yuBhdiAElx+giJpDl8y279vJKucDKO/IWivpKqLFcVMZgIH0s5aPMA4vIoPj3
 vgEVuu3wMmmTuPOIB6uKw9sKZIPQku4cjeig+ngjdj1OWDQ2ztornt5QRvnc+mI5u7VC
 Cqqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=/3Y7SdvtHwEXMZpktqa2soQUFfSCdXW3oRVPXSTvSbE=;
 b=kvPZQsdXoCWj0S4Yzo7rb8BediS6ywiS+uSCvZlBxu93UHo4nzvGi29XVUI8S34nHt
 gjBONRqHLw2W5j00IXkE2kCV6Ccuo4P+VEA8h2hIIzjwsaZxP0xUHsN7CpjKuqx2WuxV
 kchAjHArMsOv32VeSnOTi+TDNCGE6sBEEsFkYcraa4QLERr6cNKxLV9aQ8CW1+sD72h0
 tMGwHhjqf9ntC11iimxqG32CHjLEpR/gg0f8mPOm6GfRJ2zetiyuPshMGC8W8aSPjYvc
 vZHEBdg2Sz1kcKaq058DwpYclrIP/DhtPg6RHdyOyPXhTe9UFQoFq/lqGXNQZUVd9NtQ
 9LEg==
X-Gm-Message-State: AOAM531x6Nftyk63bRBSd3WgGU7nUA4TfGMqSfAEZc9ZvoA/7fCqMe82
 PqsFvVj1+E12csh5ltuLCdd++g==
X-Google-Smtp-Source: ABdhPJyrGGFnP3gPCYapzqVJIAt8GXYaRjaqbFCFALzg7lkzWXuKdQPtl/3y98MZd1iij4I13Alkaw==
X-Received: by 2002:a05:6512:2608:b0:448:35c4:bc9f with SMTP id
 bt8-20020a056512260800b0044835c4bc9fmr3310862lfb.666.1646927844389; 
 Thu, 10 Mar 2022 07:57:24 -0800 (PST)
Received: from [192.168.51.243] ([78.128.78.220])
 by smtp.gmail.com with ESMTPSA id
 j18-20020a2e8512000000b0024801df115asm1097416lji.109.2022.03.10.07.57.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Mar 2022 07:57:24 -0800 (PST)
Message-ID: <e3f57a64-4823-7cf3-0345-3777c44c2fe4@blackwall.org>
Date: Thu, 10 Mar 2022 17:57:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Hans Schultz <schultz.hans@gmail.com>, davem@davemloft.net, kuba@kernel.org
References: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
 <20220310142320.611738-2-schultz.hans+netdev@gmail.com>
 <0eeaf59f-e7eb-7439-3c0a-17e7ac6741f0@blackwall.org>
 <86v8wles1g.fsf@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <86v8wles1g.fsf@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

On 10/03/2022 17:38, Hans Schultz wrote:
> On tor, mar 10, 2022 at 16:42, Nikolay Aleksandrov <razor@blackwall.org> wrote:
>> On 10/03/2022 16:23, Hans Schultz wrote:
>>> Add an intermediate state for clients behind a locked port to allow for
>>> possible opening of the port for said clients. This feature corresponds
>>> to the Mac-Auth and MAC Authentication Bypass (MAB) named features. The
>>> latter defined by Cisco.
>>>
>>> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
>>> ---
>>>    include/uapi/linux/neighbour.h |  1 +
>>>    net/bridge/br_fdb.c            |  6 ++++++
>>>    net/bridge/br_input.c          | 11 ++++++++++-
>>>    net/bridge/br_private.h        |  3 ++-
>>>    4 files changed, 19 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/include/uapi/linux/neighbour.h b/include/uapi/linux/neighbour.h
>>> index db05fb55055e..83115a592d58 100644
>>> --- a/include/uapi/linux/neighbour.h
>>> +++ b/include/uapi/linux/neighbour.h
>>> @@ -208,6 +208,7 @@ enum {
>>>    	NFEA_UNSPEC,
>>>    	NFEA_ACTIVITY_NOTIFY,
>>>    	NFEA_DONT_REFRESH,
>>> +	NFEA_LOCKED,
>>>    	__NFEA_MAX
>>>    };
>>
>> Hmm, can you use NDA_FLAGS_EXT instead ?
>> That should simplify things and reduce the nl size.
>>
> 
> I am using NDA_FDB_EXT_ATTRS. NFEA_LOCKED is just the
> flag as the other flags section is full wrt the normal flags, but maybe it
> doesn't fit in that section?
> 

Actually wait a second, this is completely wrong use of NDA_FDB_EXT_ATTRS.
That is a nested attribute, so the code below is wrong. More below..

> I will just note that iproute2 support for parsing nested attributes
> does not work, thus the BR_FDB_NOTIFY section (lines 150-165) are
> obsolete with respect to iproute2 as it is now. I cannot rule out that
> someone has some other tool that can handle this BR_FDB_NOTIFY, but I
> could not make iproute2 as it stands handle nested attributes. And of
> course there is no handling of NDA_FDB_EXT_ATTRS in iproute2 now.
> >>>    #define NFEA_MAX (__NFEA_MAX - 1)
>>> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
>>> index 6ccda68bd473..396dcf3084cf 100644
>>> --- a/net/bridge/br_fdb.c
>>> +++ b/net/bridge/br_fdb.c
>>> @@ -105,6 +105,7 @@ static int fdb_fill_info(struct sk_buff *skb, const struct net_bridge *br,
>>>    	struct nda_cacheinfo ci;
>>>    	struct nlmsghdr *nlh;
>>>    	struct ndmsg *ndm;
>>> +	u8 ext_flags = 0;
>>>    
>>>    	nlh = nlmsg_put(skb, portid, seq, type, sizeof(*ndm), flags);
>>>    	if (nlh == NULL)
>>> @@ -125,11 +126,16 @@ static int fdb_fill_info(struct sk_buff *skb, const struct net_bridge *br,
>>>    		ndm->ndm_flags |= NTF_EXT_LEARNED;
>>>    	if (test_bit(BR_FDB_STICKY, &fdb->flags))
>>>    		ndm->ndm_flags |= NTF_STICKY;
>>> +	if (test_bit(BR_FDB_ENTRY_LOCKED, &fdb->flags))
>>> +		ext_flags |= 1 << NFEA_LOCKED;
>>>    
>>>    	if (nla_put(skb, NDA_LLADDR, ETH_ALEN, &fdb->key.addr))
>>>    		goto nla_put_failure;
>>>    	if (nla_put_u32(skb, NDA_MASTER, br->dev->ifindex))
>>>    		goto nla_put_failure;
>>> +	if (nla_put_u8(skb, NDA_FDB_EXT_ATTRS, ext_flags))
>>> +		goto nla_put_failure;
>>> +

This is wrong. NDA_FDB_EXT_ATTRS is a nested attribute, you can't use it as a u8.
You need to have this structure:
  [ NDA_FDB_EXT_ATTRS ]
   ` [ NFEA_LOCKED ]

But that's why I asked if you could use the NDA_FLAGS_EXT attribute. You can see
the logic from the neigh code.

Also note that you need to account for the new attribute's size in fdb_nlmsg_size().


>>>    	ci.ndm_used	 = jiffies_to_clock_t(now - fdb->used);
>>>    	ci.ndm_confirmed = 0;
>>>    	ci.ndm_updated	 = jiffies_to_clock_t(now - fdb->updated);
>>> diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
>>> index e0c13fcc50ed..897908484b18 100644
>>> --- a/net/bridge/br_input.c
>>> +++ b/net/bridge/br_input.c
>>> @@ -75,6 +75,7 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
>>>    	struct net_bridge_mcast *brmctx;
>>>    	struct net_bridge_vlan *vlan;
>>>    	struct net_bridge *br;
>>> +	unsigned long flags = 0;
>>
>> Please move this below...
>>
>>>    	u16 vid = 0;
>>>    	u8 state;
>>>    
>>> @@ -94,8 +95,16 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
>>>    			br_fdb_find_rcu(br, eth_hdr(skb)->h_source, vid);
>>>    
>>>    		if (!fdb_src || READ_ONCE(fdb_src->dst) != p ||
>>> -		    test_bit(BR_FDB_LOCAL, &fdb_src->flags))
>>> +		    test_bit(BR_FDB_LOCAL, &fdb_src->flags)) {
>>> +			if (!fdb_src) {
>>
>> ... here where it's only used.
>>
> 
> Forgot that one. Shall do!
> 
>>> +				set_bit(BR_FDB_ENTRY_LOCKED, &flags);
>>> +				br_fdb_update(br, p, eth_hdr(skb)->h_source, vid, flags);
>>> +			}
>>>    			goto drop;
>>> +		} else {
>>> +			if (test_bit(BR_FDB_ENTRY_LOCKED, &fdb_src->flags))
>>> +				goto drop;
>>> +		}
>>>    	}
>>>    
>>>    	nbp_switchdev_frame_mark(p, skb);
>>> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
>>> index 48bc61ebc211..f5a0b68c4857 100644
>>> --- a/net/bridge/br_private.h
>>> +++ b/net/bridge/br_private.h
>>> @@ -248,7 +248,8 @@ enum {
>>>    	BR_FDB_ADDED_BY_EXT_LEARN,
>>>    	BR_FDB_OFFLOADED,
>>>    	BR_FDB_NOTIFY,
>>> -	BR_FDB_NOTIFY_INACTIVE
>>> +	BR_FDB_NOTIFY_INACTIVE,
>>> +	BR_FDB_ENTRY_LOCKED,
>>>    };
>>>    
>>>    struct net_bridge_fdb_key {

