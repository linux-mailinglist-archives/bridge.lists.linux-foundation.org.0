Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3B573A0E1
	for <lists.bridge@lfdr.de>; Thu, 22 Jun 2023 14:27:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A594E404D1;
	Thu, 22 Jun 2023 12:27:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A594E404D1
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=IaWVH/Nf
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vsZfStc1qZgm; Thu, 22 Jun 2023 12:27:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 0A89A418D9;
	Thu, 22 Jun 2023 12:27:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A89A418D9
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A0BC9C0089;
	Thu, 22 Jun 2023 12:27:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 97D4BC0029
 for <bridge@lists.linux-foundation.org>; Thu, 22 Jun 2023 12:27:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5D4B983C09
 for <bridge@lists.linux-foundation.org>; Thu, 22 Jun 2023 12:27:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D4B983C09
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=IaWVH/Nf
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xEc8bqwlIfm2 for <bridge@lists.linux-foundation.org>;
 Thu, 22 Jun 2023 12:27:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F92483BFF
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com
 [IPv6:2a00:1450:4864:20::22b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3F92483BFF
 for <bridge@lists.linux-foundation.org>; Thu, 22 Jun 2023 12:27:51 +0000 (UTC)
Received: by mail-lj1-x22b.google.com with SMTP id
 38308e7fff4ca-2b479d53d48so67140231fa.1
 for <bridge@lists.linux-foundation.org>; Thu, 22 Jun 2023 05:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1687436869; x=1690028869;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=u/ygENi/TRukcGplsNjzBiVqhwMmSkq5YICSahejN1A=;
 b=IaWVH/NfxheHiIX2w+iB/Zgv1GLJfgphI/V62AlVOx0cTJ23faHZsZ7mLXzortoVZ4
 L/uF1RErUsTdNm++peofR5duxFvM1gGZU89sjYnxvTe3L+qkZAbuh2DVePoUp8V9XkQs
 WIyxiaj68uyUIjkl+GaiO9gQugRg0aQMD4bXv3Jmcn7PaCyoU/gNPnnvrhZzGRrqa1w0
 dgtm7ru9Xqduy6trhRzeyihX4iRjg8SCk+Rd8TxnHfNs2vUbmywoqyiG6P8edh3iKvol
 dy4CttPKvjxisVEBjauwyOJOq6bvE5+wg4ELqhrSLQ/a7GqN2onFoBJJcPJkPxLPrLKv
 c02w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687436869; x=1690028869;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=u/ygENi/TRukcGplsNjzBiVqhwMmSkq5YICSahejN1A=;
 b=BPi/ruuxSQmXUKEjNYMh63LBPHFloC5iMPXfUQWuZ03UAuqjCAIRIl1Zl3tAuca/oA
 J3WNmiWpstyCSypy7bsDjPKAyqTh6OA/aklkp7lK1wxdJgkF3ke0SM6fzpcppS6W60qm
 cCAvtYsT1Q8RZvoZQd3VR+7FmlKlv9w9on+vLiBF1jrkV183Wdq7t2jn0NcZAjnB2C3Y
 XLLOv7S7rG4WNMjrynq3aMMcRhpYUeBfjFEGhWtSDJE4Yksvequ+UmFsO0roZ+gbc3ak
 t/MC3j5hRa6/CTIt9fhRIUIBzzCICCNzXdXvcVj9WquF12Bh3XZkieH/EhXNUE5n9dW7
 y3/A==
X-Gm-Message-State: AC+VfDxCMzfZiG7puhcqY311tZEM7cPw1Zc13SjjIPUhcHjXFzO8/3ys
 Ob/XylO4RtnmRBzvC7E/HDHp4g==
X-Google-Smtp-Source: ACHHUZ7U4xEIVyuEpSocYlFp5kFb1Iv0hr5K4qvSuauvXBoGyo3En6u1mzvU4hZ8MIybHzXvtNC1Hw==
X-Received: by 2002:a2e:894f:0:b0:2b4:7c90:c7c1 with SMTP id
 b15-20020a2e894f000000b002b47c90c7c1mr8176032ljk.9.1687436868835; 
 Thu, 22 Jun 2023 05:27:48 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 b17-20020a1709063f9100b0098cdd1e1926sm2266487ejj.179.2023.06.22.05.27.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 22 Jun 2023 05:27:48 -0700 (PDT)
Message-ID: <475afa9a-708d-f06c-e203-4c0c32d1cebf@blackwall.org>
Date: Thu, 22 Jun 2023 15:27:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Johannes Nixdorf <jnixdorf-oss@avm.de>
References: <20230619071444.14625-1-jnixdorf-oss@avm.de>
 <20230619071444.14625-3-jnixdorf-oss@avm.de>
 <aac18591-b06b-d48d-368a-99fc3ac50e24@blackwall.org>
 <ZJGrLYsT7CcavLeR@u-jnixdorf.ads.avm.de>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <ZJGrLYsT7CcavLeR@u-jnixdorf.ads.avm.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Roopa Prabhu <roopa@nvidia.com>,
 Oleksij Rempel <linux@rempel-privat.de>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, David Ahern <dsahern@gmail.com>
Subject: Re: [Bridge] [PATCH net-next v2 2/3] bridge: Add a limit on learned
 FDB entries
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

On 20/06/2023 16:35, Johannes Nixdorf wrote:
> On Tue, Jun 20, 2023 at 09:55:31AM +0300, Nikolay Aleksandrov wrote:
>> On 6/19/23 10:14, Johannes Nixdorf wrote:
>>> +/* Set a FDB flag that implies the entry was not learned, and account
>>> + * for changes in the learned status.
>>> + */
>>> +static void __fdb_set_flag_not_learned(struct net_bridge *br,
>>> +				       struct net_bridge_fdb_entry *fdb,
>>> +				       long nr)
>>> +{
>>> +	WARN_ON_ONCE(!(BIT(nr) & BR_FDB_NOT_LEARNED_MASK));
>>
>> Please use *_bit
> 
> Can you tell me which *_bit helper you had in mind? The shortest option I could
> come up with the ones I found seemed needlessly verbose and wasteful:
> 
>   static const unsigned long br_fdb_not_learned_mask = BR_FDB_NOT_LEARNED_MASK;
>   ...
>   WARN_ON_ONCE(test_bit(nr, &br_fdb_not_learned_mask));
> 
>>> +
>>> +	/* learned before, but we set a flag that implies it's manually added */
>>> +	if (!(fdb->flags & BR_FDB_NOT_LEARNED_MASK))
>>
>> Please use *_bit
> 
> This will be fixed by the redesign to get rid of my use of hash_lock
> (proposed later in this mail), as I'll only have to test one bit and can
> use test_and_clear_bit then.
> 
>>> +		br->fdb_cur_learned_entries--;
>>> +	set_bit(nr, &fdb->flags);
>>> +}
>>
>> Having a helper that conditionally decrements only is counterintuitive and
>> people can get confused. Either add 2 helpers for inc/dec and use
>> them where appropriate or don't use helpers at all.
> 
> The *_set_bit helper can only cause the count to drop, as there
> is currently no flag that could turn a manually added entry back into
> a dynamically learned one.
> 
> The analogous helper that increments the value would be *_clear_bit,
> which I did not add because it has no users.
> 
>>> +	spin_unlock_bh(&br->hash_lock);
>>> +}
>>> +
>>>   /* When a static FDB entry is deleted, the HW address from that entry is
>>>    * also removed from the bridge private HW address list and updates all
>>>    * the ports with needed information.
>>> @@ -321,6 +353,8 @@ static void fdb_del_hw_addr(struct net_bridge *br, const unsigned char *addr)
>>>   static void fdb_delete(struct net_bridge *br, struct net_bridge_fdb_entry *f,
>>>   		       bool swdev_notify)
>>>   {
>>> +	bool learned = !(f->flags & BR_FDB_NOT_LEARNED_MASK);
>>
>> *_bit
> 
> I do not know a *_bit helper that would help me test the intersection
> of multiple bits on both sides. Do you have any in mind?
> 
>>> +
>>>   	return fdb;
>>>   }
>>> @@ -894,7 +940,7 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
>>>   			}
>>>   			if (unlikely(test_bit(BR_FDB_ADDED_BY_USER, &flags)))
>>> -				set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
>>> +				fdb_set_flag_not_learned(br, fdb, BR_FDB_ADDED_BY_USER);
>>
>> Unacceptable to take hash_lock and block all learning here, eventual
>> consistency is ok or some other method that is much lighter and doesn't
>> block all learning or requires a lock.
> 
> At the time of writing v2, this seemed difficult because we want to test
> multiple bits and increment a counter, but remembering that clear_bit
> is never called for the bits I care about I came up with the following
> approach:
> 
>   a) Add a new flag BR_FDB_DYNAMIC_LEARNED, which is set to 1 iff
>      BR_FDB_ADDED_BY_USER or BR_FDB_LOCAL are set in br_create.
>      Every time BR_FDB_ADDED_BY_USER or BR_FDB_LOCAL is set, also clear
>      BR_FDB_DYNAMIC_LEARNED, and decrement the count if it was 1 before.
>      This solves the problem of testing two bits at once, and would not
>      have been possible if we had a code path that could clear both bits,
>      as it is not as easy to decide when to set BR_FDB_DYNAMIC_LEARNED
>      again in that case.

I think you can try without adding any new flags, the places that add dynamic
entries are known for the inc part of the problem, and an entry can become
local/added_by_user again only through well known paths as well. You may be able to
infer whether to inc/dec and make it work with careful fn argument passing.
Could you please look into that way? I'd prefer that we don't add new flags as
there are already so many.

>   b) Replace the current count with an atomic_t.
> 

Sounds good.

> I'll change it this way for v3.
> 
>>>   		return -EMSGSIZE;
>>>   #ifdef CONFIG_BRIDGE_VLAN_FILTERING
>>> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
>>> index 2119729ded2b..df079191479e 100644
>>> --- a/net/bridge/br_private.h
>>> +++ b/net/bridge/br_private.h
>>> @@ -275,6 +275,8 @@ enum {
>>>   	BR_FDB_LOCKED,
>>>   };
>>> +#define BR_FDB_NOT_LEARNED_MASK (BIT(BR_FDB_LOCAL) | BIT(BR_FDB_ADDED_BY_USER))
>>
>> Not learned sounds confusing and doesn't accurately describe the entry.
>> BR_FDB_DYNAMIC_LEARNED perhaps or some other name, that doesn't cause
>> double negatives (not not learned).
> 
> Your proposal would not have captured the mask, as it describes all the
> opposite cases, which were _not_ dynamically learned.
> 
> But with the proposed new flag from the hash_lock comment we can trivially
> flip the meaning, so I went with your proposed name there.

