Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B967A08C7
	for <lists.bridge@lfdr.de>; Thu, 14 Sep 2023 17:15:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6504260FAD;
	Thu, 14 Sep 2023 15:15:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6504260FAD
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=qeekKOhX
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id euykPKfEF5uw; Thu, 14 Sep 2023 15:15:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id CFA9960FD9;
	Thu, 14 Sep 2023 15:15:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CFA9960FD9
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 778C7C008C;
	Thu, 14 Sep 2023 15:15:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 677ECC0032
 for <bridge@lists.linux-foundation.org>; Thu, 14 Sep 2023 15:15:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 41A1660FD9
 for <bridge@lists.linux-foundation.org>; Thu, 14 Sep 2023 15:15:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 41A1660FD9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hYFOdmZG41ax for <bridge@lists.linux-foundation.org>;
 Thu, 14 Sep 2023 15:15:28 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1021460FAD
 for <bridge@lists.linux-foundation.org>; Thu, 14 Sep 2023 15:15:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1021460FAD
Received: by mail-lf1-x12f.google.com with SMTP id
 2adb3069b0e04-501ce655fcbso1793692e87.2
 for <bridge@lists.linux-foundation.org>; Thu, 14 Sep 2023 08:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1694704526; x=1695309326;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=BrNzThEUI5fLlkgWOlz9qpDOnszAeALvT3xNb1ip2FY=;
 b=qeekKOhXUk/4hFrq77ecY+9c5k7sAhE3v2BBdMpq3F4atfoGVbmeXBslfOfbdsseuE
 4wYZXqRdmJMQSBFE9ZEkizgWXxpRsAz4hKzq2QqnCGgX8NQBwPOtvD80lCMjniukYi8b
 GCwEe4E/2F2RTAA/recYxHyQbcEDFS/K9fXs5Xt+Ru1ImvvbmOJL8cDqnedRNrYtOP00
 CAQFhgDtYsZ03SIVD4AGsSH2jkTW8G8jCnK5u8Vkdeb07WbjLbb8lnkI3EXThm/ZE36x
 cDWAzbCcBCyd0+pn8FuQhc02sneQz27vH9jGmZUIYAwsLNlMj3bQxjF9xYci0r54GshK
 QAFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694704526; x=1695309326;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=BrNzThEUI5fLlkgWOlz9qpDOnszAeALvT3xNb1ip2FY=;
 b=rNR0R/Crqb0Xt+ldAfM4aSVOdfa6HI3l3jgKhqqFkdnoUSmsR8PpYzsia1Tq36C8bv
 d5rV42zDV1I33SOy/Wg7VFHJYs2IVcVCLXPNCJPbBmi75Kzgm8JkjK7meX93j7LO/sUm
 xwiqwI6BM/6Vt8KPeiZHayYaOaCghMFfkLiiC9Ey3xkedgaxHNGL/FttMlU4a4zuU/gz
 zvOWkB+ZJ+mchMgEyLmV2c3AfoiISjj8yjgm3f8oaoh6RKecnqL7nBSJFaVomE7nSlWL
 YxqbR5GZ5IiNryb3KZjhjU3Lf2jq5s7weZBNqxnKSzlu2ty9MbI7Z1oAnNWeY7R2xShk
 CEcg==
X-Gm-Message-State: AOJu0YyrkJFfrTqRWg5FXqOh00z4pvvcJidBesc/uQpRfHiiiTG+W00j
 EmK7g+TvW1J5MBt9ZWPjj5Twqg==
X-Google-Smtp-Source: AGHT+IGuZpid9Pql/7rrl1nbTO+5IU95A25NhAduCC4gw0hgKPktdsfXi98hVZe6tk2xRNGo6LKKUg==
X-Received: by 2002:a05:6512:b98:b0:500:b3fe:916e with SMTP id
 b24-20020a0565120b9800b00500b3fe916emr5284069lfv.2.1694704525548; 
 Thu, 14 Sep 2023 08:15:25 -0700 (PDT)
Received: from [192.168.0.105] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 qx15-20020a170906fccf00b009a5f1d15644sm1127905ejb.119.2023.09.14.08.15.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 14 Sep 2023 08:15:25 -0700 (PDT)
Message-ID: <e0b3861a-18eb-80ad-1cf8-c563f97e2157@blackwall.org>
Date: Thu, 14 Sep 2023 18:15:23 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Johannes Nixdorf <jnixdorf-oss@avm.de>,
 "David S. Miller" <davem@davemloft.net>, Andrew Lunn <andrew@lunn.ch>,
 David Ahern <dsahern@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Oleksij Rempel <linux@rempel-privat.de>,
 Paolo Abeni <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>,
 Shuah Khan <shuah@kernel.org>, Vladimir Oltean <vladimir.oltean@nxp.com>
References: <20230905-fdb_limit-v3-0-7597cd500a82@avm.de>
 <20230905-fdb_limit-v3-3-7597cd500a82@avm.de>
Content-Language: en-US
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230905-fdb_limit-v3-3-7597cd500a82@avm.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [Bridge] [PATCH net-next v3 3/6] net: bridge: Track and limit
 dynamically learned FDB entries
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

On 9/5/23 14:47, Johannes Nixdorf wrote:
> A malicious actor behind one bridge port may spam the kernel with packets
> with a random source MAC address, each of which will create an FDB entry,
> each of which is a dynamic allocation in the kernel.
> 
> There are roughly 2^48 different MAC addresses, further limited by the
> rhashtable they are stored in to 2^31. Each entry is of the type struct
> net_bridge_fdb_entry, which is currently 128 bytes big. This means the
> maximum amount of memory allocated for FDB entries is 2^31 * 128B =
> 256GiB, which is too much for most computers.
> 
> Mitigate this by maintaining a per bridge count of those automatically
> generated entries in fdb_n_learned_entries, and a limit in
> fdb_max_learned_entries. If the limit is hit new entries are not learned
> anymore.
> 
> For backwards compatibility the default setting of 0 disables the limit.
> 
> User-added entries by netlink or from bridge or bridge port addresses
> are never blocked and do not count towards that limit.
> 
> Introduce a new fdb entry flag BR_FDB_DYNAMIC_LEARNED to keep track of
> whether an FDB entry is included in the count. The flag is enabled for
> dynamically learned entries, and disabled for all other entries. This
> should be equivalent to BR_FDB_ADDED_BY_USER and BR_FDB_LOCAL being unset,
> but contrary to the two flags it can be toggled atomically.
> 
> Atomicity is required here, as there are multiple callers that modify the
> flags, but are not under a common lock (br_fdb_update is the exception
> for br->hash_lock, br_fdb_external_learn_add for RTNL).
> 
> Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
> ---
>   net/bridge/br_fdb.c     | 34 ++++++++++++++++++++++++++++++++--
>   net/bridge/br_private.h |  4 ++++
>   2 files changed, 36 insertions(+), 2 deletions(-)
> 
> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
> index 06e28ef8d9ff..f8a96ed9a338 100644
> --- a/net/bridge/br_fdb.c
> +++ b/net/bridge/br_fdb.c
> @@ -329,11 +329,18 @@ static void fdb_delete(struct net_bridge *br, struct net_bridge_fdb_entry *f,
>   	hlist_del_init_rcu(&f->fdb_node);
>   	rhashtable_remove_fast(&br->fdb_hash_tbl, &f->rhnode,
>   			       br_fdb_rht_params);
> +	if (test_bit(BR_FDB_DYNAMIC_LEARNED, &f->flags))

this is racy with br_fdb_update(), the fdb entry is still visible 
because a grace period hasn't passed, so in theory br_fdb_update() can
unset the bit after this test and...
> +		atomic_dec(&br->fdb_n_learned_entries);
... this will decrease once more wrongly

>   	fdb_notify(br, f, RTM_DELNEIGH, swdev_notify);
>   	call_rcu(&f->rcu, fdb_rcu_free);
>   }
>   
> -/* Delete a local entry if no other port had the same address. */
> +/* Delete a local entry if no other port had the same address.
> + *
> + * This function should only be called on entries with BR_FDB_LOCAL set,
> + * so even with BR_FDB_ADDED_BY_USER cleared we never need to increase
> + * the accounting for dynamically learned entries again.
> + */
>   static void fdb_delete_local(struct net_bridge *br,
>   			     const struct net_bridge_port *p,
>   			     struct net_bridge_fdb_entry *f)
> @@ -388,9 +395,20 @@ static struct net_bridge_fdb_entry *fdb_create(struct net_bridge *br,
>   					       __u16 vid,
>   					       unsigned long flags)
>   {
> +	bool learned = !test_bit(BR_FDB_ADDED_BY_USER, &flags) &&
> +		       !test_bit(BR_FDB_LOCAL, &flags);
> +	u32 max_learned = READ_ONCE(br->fdb_max_learned_entries);
>   	struct net_bridge_fdb_entry *fdb;
>   	int err;
>   
> +	if (likely(learned)) {
> +		int n_learned = atomic_read(&br->fdb_n_learned_entries);
> +
> +		if (unlikely(max_learned && n_learned >= max_learned))
> +			return NULL;
> +		__set_bit(BR_FDB_DYNAMIC_LEARNED, &flags);
> +	}
> +
>   	fdb = kmem_cache_alloc(br_fdb_cache, GFP_ATOMIC);
>   	if (!fdb)
>   		return NULL;
> @@ -407,6 +425,9 @@ static struct net_bridge_fdb_entry *fdb_create(struct net_bridge *br,
>   		return NULL;
>   	}
>   
> +	if (likely(learned))
> +		atomic_inc(&br->fdb_n_learned_entries);
> +
>   	hlist_add_head_rcu(&fdb->fdb_node, &br->fdb_list);
>   
>   	return fdb;
> @@ -893,8 +914,11 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
>   					clear_bit(BR_FDB_LOCKED, &fdb->flags);
>   			}
>   
> -			if (unlikely(test_bit(BR_FDB_ADDED_BY_USER, &flags)))
> +			if (unlikely(test_bit(BR_FDB_ADDED_BY_USER, &flags))) {
>   				set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
> +				if (test_and_clear_bit(BR_FDB_DYNAMIC_LEARNED, &fdb->flags))
> +					atomic_dec(&br->fdb_n_learned_entries);
> +			}
>   			if (unlikely(fdb_modified)) {
>   				trace_br_fdb_update(br, source, addr, vid, flags);
>   				fdb_notify(br, fdb, RTM_NEWNEIGH, true);
> @@ -1071,6 +1095,8 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
>   		}
>   
>   		set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
> +		if (test_and_clear_bit(BR_FDB_DYNAMIC_LEARNED, &fdb->flags))
> +			atomic_dec(&br->fdb_n_learned_entries);
>   	}
>   
>   	if (fdb_to_nud(br, fdb) != state) {
> @@ -1445,6 +1471,10 @@ int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
>   		if (!p)
>   			set_bit(BR_FDB_LOCAL, &fdb->flags);
>   
> +		if ((swdev_notify || !p) &&
> +		    test_and_clear_bit(BR_FDB_DYNAMIC_LEARNED, &fdb->flags))
> +			atomic_dec(&br->fdb_n_learned_entries);
> +
>   		if (modified)
>   			fdb_notify(br, fdb, RTM_NEWNEIGH, swdev_notify);
>   	}
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index a63b32c1638e..675cc40ae1dc 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -274,6 +274,7 @@ enum {
>   	BR_FDB_NOTIFY,
>   	BR_FDB_NOTIFY_INACTIVE,
>   	BR_FDB_LOCKED,
> +	BR_FDB_DYNAMIC_LEARNED,
>   };
>   
>   struct net_bridge_fdb_key {
> @@ -554,6 +555,9 @@ struct net_bridge {
>   	struct kobject			*ifobj;
>   	u32				auto_cnt;
>   
> +	atomic_t			fdb_n_learned_entries;
> +	u32				fdb_max_learned_entries;
> +
>   #ifdef CONFIG_NET_SWITCHDEV
>   	/* Counter used to make sure that hardware domains get unique
>   	 * identifiers in case a bridge spans multiple switchdev instances.
> 

