Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1147704849
	for <lists.bridge@lfdr.de>; Tue, 16 May 2023 10:56:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0A43B408D4;
	Tue, 16 May 2023 08:56:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A43B408D4
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=5Hpp8XI5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RzAC4D0e4hoP; Tue, 16 May 2023 08:56:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 7DF40408C0;
	Tue, 16 May 2023 08:56:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7DF40408C0
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 271A4C008A;
	Tue, 16 May 2023 08:56:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 97D43C002A
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 08:56:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7F616408BF
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 08:56:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F616408BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sz-oQhX9_5N9 for <bridge@lists.linux-foundation.org>;
 Tue, 16 May 2023 08:56:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 933E94018F
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 933E94018F
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 08:56:44 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id
 4fb4d7f45d1cf-50bc040c7b8so20876733a12.2
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 01:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1684227403; x=1686819403;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=oZ2+hh0DnQ/NXjwImsX9ZO3XM0rQ+jTm6Yb7M2fUD9w=;
 b=5Hpp8XI5BZc4LZtMiKQE21xGeEtocrIgXXQoWxbj1j3P4P1xoYfrCjgFF+hpFW73XG
 YjA8g4+2HWQjrSlz6ZiZ4OgwUW0WyFVvTwCQNOIYvYRVAGHzFZVr8k9n58xuFoF2WNRA
 fsiviShfcv8lHCnd37tRKKfeos2jss1nE2I9FOU7H+a31CkNYQfMXgeU+O+Zs4Jx7uzb
 2DzhwNetMQdAGPMH2myBsWXduB8wDv+Db2t8RfEq7V2EtZXOwABiqeN00b9O98Rrae9p
 yg6YB8kmNPBXpeY2ZhnYxx0TyF2PIAIME0ZEp+f0BtKEwEmWJHtdOBxBhrAoNtVJ5S9u
 Ibtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684227403; x=1686819403;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=oZ2+hh0DnQ/NXjwImsX9ZO3XM0rQ+jTm6Yb7M2fUD9w=;
 b=h5MW1/UmMwUO+pQjAc03GqQ4XtTN2FjfYaIv1BQFGxmuylTM1uVGrMkxdJD2Xu6Vmj
 Koa5xeEJ65SrTaGvM9iFcewgqfHx32+con/7n/bXy1yrLzW3gKhD6Yuz9HQDG0JW6uG4
 VB3q3j/ZZLYMsvUGfGiA4gQz1ituPzPytUIQ4flk8f+s7ykU7MW2YqkJBqICowaKIUIa
 MvW/Mk6skmZgf/Y3hAtvuml7raJn2tJczmqDkKOvOX7+ycwsptrIlikVsB1U2PvniN/L
 hRNBOlSQtWlvbtpybW6wqvtWCBPFoClZQHCUnOSN1XzaBfQONtwf7zj0TxIZYdSDfQir
 nLhA==
X-Gm-Message-State: AC+VfDwX6tlt7uI/SNyQUUvNnFMYNyq/Jjw2V+R1YbNKS+UmpVnCYakf
 i2ni1D13cXlZ/hWTcM+03B1TSV4HBkscGERnWMmDYA==
X-Google-Smtp-Source: ACHHUZ7Ik0cpt96Sx4IGaHZmqvBurnRQf4VSfPBclD+Fg0tz0glfiJ+Y+g46KlyobtHXYJKl2nggfA==
X-Received: by 2002:aa7:c2c4:0:b0:50b:caae:ae6e with SMTP id
 m4-20020aa7c2c4000000b0050bcaaeae6emr25977807edp.17.1684227402569; 
 Tue, 16 May 2023 01:56:42 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 q22-20020a056402041600b004ad601533a3sm8053101edv.55.2023.05.16.01.56.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 May 2023 01:56:42 -0700 (PDT)
Message-ID: <f899f032-b726-7b6d-953d-c7f3f98744ca@blackwall.org>
Date: Tue, 16 May 2023 11:56:41 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Johannes Nixdorf <jnixdorf-oss@avm.de>
References: <20230515085046.4457-1-jnixdorf-oss@avm.de>
 <a1d13117-a0c5-d06e-86b7-eacf4811102f@blackwall.org>
 <ZGNEk3F8mcT7nNdB@u-jnixdorf.ads.avm.de>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <ZGNEk3F8mcT7nNdB@u-jnixdorf.ads.avm.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Cc: netdev@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Vladimir Oltean <vladimir.oltean@nxp.com>,
 Eric Dumazet <edumazet@google.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 1/2] bridge: Add a limit on FDB entries
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

On 16/05/2023 11:53, Johannes Nixdorf wrote:
> On Tue, May 16, 2023 at 11:38:11AM +0300, Nikolay Aleksandrov wrote:
>> On 15/05/2023 11:50, Johannes Nixdorf wrote:
>>> A malicious actor behind one bridge port may spam the kernel with packets
>>> with a random source MAC address, each of which will create an FDB entry,
>>> each of which is a dynamic allocation in the kernel.
>>>
>>> There are roughly 2^48 different MAC addresses, further limited by the
>>> rhashtable they are stored in to 2^31. Each entry is of the type struct
>>> net_bridge_fdb_entry, which is currently 128 bytes big. This means the
>>> maximum amount of memory allocated for FDB entries is 2^31 * 128B =
>>> 256GiB, which is too much for most computers.
>>>
>>> Mitigate this by adding a bridge netlink setting IFLA_BR_FDB_MAX_ENTRIES,
>>> which, if nonzero, limits the amount of entries to a user specified
>>> maximum.
>>>
>>> For backwards compatibility the default setting of 0 disables the limit.
>>>
>>> All changes to fdb_n_entries are under br->hash_lock, which means we do
>>> not need additional locking. The call paths are (✓ denotes that
>>> br->hash_lock is taken around the next call):
>>>
>>>  - fdb_delete <-+- fdb_delete_local <-+- br_fdb_changeaddr ✓
>>>                 |                     +- br_fdb_change_mac_address ✓
>>>                 |                     +- br_fdb_delete_by_port ✓
>>>                 +- br_fdb_find_delete_local ✓
>>>                 +- fdb_add_local <-+- br_fdb_changeaddr ✓
>>>                 |                  +- br_fdb_change_mac_address ✓
>>>                 |                  +- br_fdb_add_local ✓
>>>                 +- br_fdb_cleanup ✓
>>>                 +- br_fdb_flush ✓
>>>                 +- br_fdb_delete_by_port ✓
>>>                 +- fdb_delete_by_addr_and_port <--- __br_fdb_delete ✓
>>>                 +- br_fdb_external_learn_del ✓
>>>  - fdb_create <-+- fdb_add_local <-+- br_fdb_changeaddr ✓
>>>                 |                  +- br_fdb_change_mac_address ✓
>>>                 |                  +- br_fdb_add_local ✓
>>>                 +- br_fdb_update ✓
>>>                 +- fdb_add_entry <--- __br_fdb_add ✓
>>>                 +- br_fdb_external_learn_add ✓
>>>
>>> Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
>>> ---
>>>  include/uapi/linux/if_link.h | 1 +
>>>  net/bridge/br_device.c       | 2 ++
>>>  net/bridge/br_fdb.c          | 6 ++++++
>>>  net/bridge/br_netlink.c      | 9 ++++++++-
>>>  net/bridge/br_private.h      | 2 ++
>>>  5 files changed, 19 insertions(+), 1 deletion(-)
>>>
>>
>> I completely missed the fact that you don't deal with the situation where you already have fdbs created
>> and a limit is set later, then it would be useless because it will start counting from 0 even though
>> there are already entries.
> 
> This should not be an issue. The accounting starts with the bridge
> creation and is never suspended, so if the user sets a limit later we
> do not restart counting at 0.
> 
> The only corner case I can see there is if the user sets a new limit
> lower than the current number of FDB entries. In that case the code
> currently leaves the bridge in a state where the limit is violated,
> but refuses new FDB entries until the total is back below the limit. The
> alternative of cleaning out old FDB entries until their number is under
> the limit again seems to be more error prone to me as well, so I'd rather
> leave it that way.
> 

Ah, good. That's ok then.

>> Also another issue that came to mind is that you don't deal with fdb_create()
>> for "special" entries, i.e. when adding a port. Currently it will print an error, but you should revisit
>> all callers and see where it might be a problem.
> 
> I'll have a look again, also to see whether only counting dynamic
> entries created as a reaction to observed packets might be a viable
> alternative. If the user creates the entries by adding a port or manually
> via netlink I see no reason to restrict them to the same limit.

Hmm.. perhaps we can add a flag mask of entries to count. Initially it can be
only dynamic entries. We should include more people in this discussion (+CC Ido and Vladimir).
Switchdev folks might have more specific requirements and restrictions, so it'd be nice to get
their input as well.





