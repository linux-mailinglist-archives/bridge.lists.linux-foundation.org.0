Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F056573A117
	for <lists.bridge@lfdr.de>; Thu, 22 Jun 2023 14:40:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8EFF060AFC;
	Thu, 22 Jun 2023 12:40:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8EFF060AFC
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=JQ58LZ6L
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b_ZVNCr-q278; Thu, 22 Jun 2023 12:40:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id F156760B8C;
	Thu, 22 Jun 2023 12:40:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F156760B8C
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A3263C0089;
	Thu, 22 Jun 2023 12:40:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8EA20C0029
 for <bridge@lists.linux-foundation.org>; Thu, 22 Jun 2023 12:40:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 549E283C14
 for <bridge@lists.linux-foundation.org>; Thu, 22 Jun 2023 12:40:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 549E283C14
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=JQ58LZ6L
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lxpsPIgNgagV for <bridge@lists.linux-foundation.org>;
 Thu, 22 Jun 2023 12:40:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5363A83C12
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5363A83C12
 for <bridge@lists.linux-foundation.org>; Thu, 22 Jun 2023 12:40:02 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id
 a640c23a62f3a-970028cfb6cso1060001066b.1
 for <bridge@lists.linux-foundation.org>; Thu, 22 Jun 2023 05:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1687437600; x=1690029600;
 h=content-transfer-encoding:in-reply-to:references:cc:to:from
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=LsK1sNilPpNZyHN9WQGL4EimC36qJwszd8aOmbOaOZ0=;
 b=JQ58LZ6L4hdiZJ1EDWP7GueqzEquugpQF20hgvi7FiLPFWebmE00SpSJgbZJ4xmu+9
 O29yg+vmEpEHE9xoAv8PNa7L+FPppkVgOXy8OgwbQiPOniMZyLfYB9VTqvUUX6MgvbGU
 /LE1do8C6LzuKz663NyHiI8Shm0PzGDdiJUtjA/lwH52SBj/icml22dL9M2xCY0u9Rfo
 05/6jVCv/JDJSrgMTryTFjM97hILL316edw65Tgy3r4z6B1iRiWdgSwmHkshcQn7c1Wf
 0MkX3RWRgQSBAIooW5YumJ+9Fy5NO9wQnN5UYqICRhwr9nKYgfezxhZRZdlHUQ/507jW
 iLJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687437600; x=1690029600;
 h=content-transfer-encoding:in-reply-to:references:cc:to:from
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=LsK1sNilPpNZyHN9WQGL4EimC36qJwszd8aOmbOaOZ0=;
 b=J4C3H+wdWEFYcbp3dOPeKkPmyjP9sdZ2oth0Pi9se9mBmgH7lQJ8PTbPxEHTYtGeZT
 UepEaE77wql+pnjQOfWKKYw73tYswX60xu10kdz4cM2WE0vQRqQgc0T7xgttvWEYeetB
 S2Y70eoN9rxlUJP5Gld96CVqO/nJKIzD2Ic5sPilR6RX7bR/HCXfAYQEVHvDTqb8n50Y
 QJNcLkJQHaVP/qim4BEORTZK3XGHAIiOwAsH+ulgIZ59RheOdSIg/9+wFBbQ0PnhHh8z
 AXyxxH8vHZq1La3LJy3dy6WmzveE/dHzSx9hJbjMAgC23xFi/l072dvPD6pDd+dwB1Ct
 KigA==
X-Gm-Message-State: AC+VfDxVeJT8IL3mlDFaO3Ps6nwln85e677atXiW9HHeiS1bk0zYRzQo
 W9rKYDnDunFkZJTY4T8oPAk56w==
X-Google-Smtp-Source: ACHHUZ7uM4mI49Ssx6iWVrCacu1zR4fxp8/mO0D/kdraqLz1DWZP7XXiNQSxw+6AhVZwib4KvdNJOw==
X-Received: by 2002:a17:907:6088:b0:988:c97b:894b with SMTP id
 ht8-20020a170907608800b00988c97b894bmr10574751ejc.68.1687437600201; 
 Thu, 22 Jun 2023 05:40:00 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 la18-20020a170906ad9200b009888f0bbd38sm4566193ejb.169.2023.06.22.05.39.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 22 Jun 2023 05:39:59 -0700 (PDT)
Message-ID: <3c776ba9-7e32-51c8-5211-a354d1329543@blackwall.org>
Date: Thu, 22 Jun 2023 15:39:58 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
From: Nikolay Aleksandrov <razor@blackwall.org>
To: Johannes Nixdorf <jnixdorf-oss@avm.de>
References: <20230619071444.14625-1-jnixdorf-oss@avm.de>
 <20230619071444.14625-3-jnixdorf-oss@avm.de>
 <aac18591-b06b-d48d-368a-99fc3ac50e24@blackwall.org>
 <ZJGrLYsT7CcavLeR@u-jnixdorf.ads.avm.de>
 <475afa9a-708d-f06c-e203-4c0c32d1cebf@blackwall.org>
In-Reply-To: <475afa9a-708d-f06c-e203-4c0c32d1cebf@blackwall.org>
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

On 22/06/2023 15:27, Nikolay Aleksandrov wrote:
> On 20/06/2023 16:35, Johannes Nixdorf wrote:
>> On Tue, Jun 20, 2023 at 09:55:31AM +0300, Nikolay Aleksandrov wrote:
>>> On 6/19/23 10:14, Johannes Nixdorf wrote:
>>>> +/* Set a FDB flag that implies the entry was not learned, and account
>>>> + * for changes in the learned status.
>>>> + */
>>>> +static void __fdb_set_flag_not_learned(struct net_bridge *br,
>>>> +				       struct net_bridge_fdb_entry *fdb,
>>>> +				       long nr)
>>>> +{
>>>> +	WARN_ON_ONCE(!(BIT(nr) & BR_FDB_NOT_LEARNED_MASK));
>>>
>>> Please use *_bit
>>
>> Can you tell me which *_bit helper you had in mind? The shortest option I could
>> come up with the ones I found seemed needlessly verbose and wasteful:
>>
>>   static const unsigned long br_fdb_not_learned_mask = BR_FDB_NOT_LEARNED_MASK;
>>   ...
>>   WARN_ON_ONCE(test_bit(nr, &br_fdb_not_learned_mask));
>>
>>>> +
>>>> +	/* learned before, but we set a flag that implies it's manually added */
>>>> +	if (!(fdb->flags & BR_FDB_NOT_LEARNED_MASK))
>>>
>>> Please use *_bit
>>
>> This will be fixed by the redesign to get rid of my use of hash_lock
>> (proposed later in this mail), as I'll only have to test one bit and can
>> use test_and_clear_bit then.
>>
>>>> +		br->fdb_cur_learned_entries--;
>>>> +	set_bit(nr, &fdb->flags);
>>>> +}
>>>
>>> Having a helper that conditionally decrements only is counterintuitive and
>>> people can get confused. Either add 2 helpers for inc/dec and use
>>> them where appropriate or don't use helpers at all.
>>
>> The *_set_bit helper can only cause the count to drop, as there
>> is currently no flag that could turn a manually added entry back into
>> a dynamically learned one.
>>
>> The analogous helper that increments the value would be *_clear_bit,
>> which I did not add because it has no users.
>>
>>>> +	spin_unlock_bh(&br->hash_lock);
>>>> +}
>>>> +
>>>>   /* When a static FDB entry is deleted, the HW address from that entry is
>>>>    * also removed from the bridge private HW address list and updates all
>>>>    * the ports with needed information.
>>>> @@ -321,6 +353,8 @@ static void fdb_del_hw_addr(struct net_bridge *br, const unsigned char *addr)
>>>>   static void fdb_delete(struct net_bridge *br, struct net_bridge_fdb_entry *f,
>>>>   		       bool swdev_notify)
>>>>   {
>>>> +	bool learned = !(f->flags & BR_FDB_NOT_LEARNED_MASK);
>>>
>>> *_bit
>>
>> I do not know a *_bit helper that would help me test the intersection
>> of multiple bits on both sides. Do you have any in mind?
>>
>>>> +
>>>>   	return fdb;
>>>>   }
>>>> @@ -894,7 +940,7 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
>>>>   			}
>>>>   			if (unlikely(test_bit(BR_FDB_ADDED_BY_USER, &flags)))
>>>> -				set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
>>>> +				fdb_set_flag_not_learned(br, fdb, BR_FDB_ADDED_BY_USER);
>>>
>>> Unacceptable to take hash_lock and block all learning here, eventual
>>> consistency is ok or some other method that is much lighter and doesn't
>>> block all learning or requires a lock.
>>
>> At the time of writing v2, this seemed difficult because we want to test
>> multiple bits and increment a counter, but remembering that clear_bit
>> is never called for the bits I care about I came up with the following
>> approach:
>>
>>   a) Add a new flag BR_FDB_DYNAMIC_LEARNED, which is set to 1 iff
>>      BR_FDB_ADDED_BY_USER or BR_FDB_LOCAL are set in br_create.
>>      Every time BR_FDB_ADDED_BY_USER or BR_FDB_LOCAL is set, also clear
>>      BR_FDB_DYNAMIC_LEARNED, and decrement the count if it was 1 before.
>>      This solves the problem of testing two bits at once, and would not
>>      have been possible if we had a code path that could clear both bits,
>>      as it is not as easy to decide when to set BR_FDB_DYNAMIC_LEARNED
>>      again in that case.
> 
> I think you can try without adding any new flags, the places that add dynamic
> entries are known for the inc part of the problem, and an entry can become
> local/added_by_user again only through well known paths as well. You may be able to
> infer whether to inc/dec and make it work with careful fn argument passing.
> Could you please look into that way? I'd prefer that we don't add new flags as
> there are already so many.
> 

To clarify  - just look into it if it is possible and looks sane, if not do go
ahead with the new flag.

>>   b) Replace the current count with an atomic_t.
>>
> 
> Sounds good.
> 
>> I'll change it this way for v3.
>>
>>>>   		return -EMSGSIZE;
>>>>   #ifdef CONFIG_BRIDGE_VLAN_FILTERING
>>>> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
>>>> index 2119729ded2b..df079191479e 100644
>>>> --- a/net/bridge/br_private.h
>>>> +++ b/net/bridge/br_private.h
>>>> @@ -275,6 +275,8 @@ enum {
>>>>   	BR_FDB_LOCKED,
>>>>   };
>>>> +#define BR_FDB_NOT_LEARNED_MASK (BIT(BR_FDB_LOCAL) | BIT(BR_FDB_ADDED_BY_USER))
>>>
>>> Not learned sounds confusing and doesn't accurately describe the entry.
>>> BR_FDB_DYNAMIC_LEARNED perhaps or some other name, that doesn't cause
>>> double negatives (not not learned).
>>
>> Your proposal would not have captured the mask, as it describes all the
>> opposite cases, which were _not_ dynamically learned.
>>
>> But with the proposed new flag from the hash_lock comment we can trivially
>> flip the meaning, so I went with your proposed name there.
> 

