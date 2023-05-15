Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B76117028BA
	for <lists.bridge@lfdr.de>; Mon, 15 May 2023 11:35:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 42DD941D95;
	Mon, 15 May 2023 09:35:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 42DD941D95
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=HCWk+uww
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ygcBXBsFjfgs; Mon, 15 May 2023 09:35:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 03DA041D75;
	Mon, 15 May 2023 09:35:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03DA041D75
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A7018C008A;
	Mon, 15 May 2023 09:35:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5E9D8C002A
 for <bridge@lists.linux-foundation.org>; Mon, 15 May 2023 09:35:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3989641C80
 for <bridge@lists.linux-foundation.org>; Mon, 15 May 2023 09:35:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3989641C80
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=HCWk+uww
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lMZFJZ-82poi for <bridge@lists.linux-foundation.org>;
 Mon, 15 May 2023 09:35:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E323441C73
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E323441C73
 for <bridge@lists.linux-foundation.org>; Mon, 15 May 2023 09:35:07 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id
 4fb4d7f45d1cf-50bceaf07b8so22854175a12.3
 for <bridge@lists.linux-foundation.org>; Mon, 15 May 2023 02:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1684143306; x=1686735306;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=b6FHZG952yMeP5d9uy/Sr8OyCyw/Y1TfApSk7BaVv4s=;
 b=HCWk+uwwmnNzMMeFpIcqFsZbLUsDRIeEHwo1VQDDLHp4Kxy+MKDbJs/9LEH/an1nHo
 52YfiUmhHZBk21K/ogwZ0iTfjHETHeHt/oyDQSoRUH0RMVPuwyf+ErqHPIPthVNI8MZs
 NyhVAfV25jd3pdZZnkhSXLvcyoDnVpV0unslH4x8UMFVLDhwDHW1QH+ecJo5leo6GFd6
 FPpjypqwOjuUuRwwYX4GBuh6/YLCe77FqMu77N4GDFRyF+8VH/aivB6dNyffMg421ypV
 kyz4WOZNKDpRYVHUCI5ILNR8sIpp3hl+X2m+5EHqFD55Op50jGDstMgmM80KQQ+kkfgC
 Q0lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684143306; x=1686735306;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=b6FHZG952yMeP5d9uy/Sr8OyCyw/Y1TfApSk7BaVv4s=;
 b=i1KtYzfom+HwIeq9xYF7Vj+ucBKnHw3+kKdSDrprbFW3izyBmOYl0qeGizFgY1KFFh
 8tXuq2cQBvG4LccV64JVPj7PCvSsMt06w/otVqjbXN+EZ4+QA3FBWRyTbpXmPpGV10/V
 8IW9CODyxa6f4F53PaJoxmFzMxPy90CdRRlEQSmO/Rgl/KBY6CSYNo0NfjrUFhm/wWtb
 0lolb4joiWhO1KPaB01QX5LfQs4aZKFjPi+b2CKMyS65PyRAMhJaDUEYo29eK9nh/xS/
 Jg2OnUsak93fdF4nGQ9c3m0nm91VbXmiUYkwfSj7UCyGhcHa5VeQMUaH3b3Y04DCVZn8
 WrYA==
X-Gm-Message-State: AC+VfDxorPGx70yy1e5v7hWXQ/PC2NIumjhm6s4DJntPJfMIQKK1AlWa
 RM8ixZTyLqhKmkaAaAk8ZQ6ZLg==
X-Google-Smtp-Source: ACHHUZ66vWCtLvXIxys9HxPVVhXKGwpoDvnNATiGt01x/wHNdVOVPRNLYWbBerSN4okyWIHUPWh5WQ==
X-Received: by 2002:aa7:c15a:0:b0:510:47a2:2b0c with SMTP id
 r26-20020aa7c15a000000b0051047a22b0cmr3188710edp.35.1684143305585; 
 Mon, 15 May 2023 02:35:05 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 b12-20020aa7dc0c000000b0050be1c28a0fsm7148224edu.7.2023.05.15.02.35.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 15 May 2023 02:35:05 -0700 (PDT)
Message-ID: <e8d98be6-d540-59c6-79eb-353715625ea5@blackwall.org>
Date: Mon, 15 May 2023 12:35:03 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Johannes Nixdorf <jnixdorf-oss@avm.de>, netdev@vger.kernel.org
References: <20230515085046.4457-1-jnixdorf-oss@avm.de>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230515085046.4457-1-jnixdorf-oss@avm.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Eric Dumazet <edumazet@google.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
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

On 15/05/2023 11:50, Johannes Nixdorf wrote:
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
> Mitigate this by adding a bridge netlink setting IFLA_BR_FDB_MAX_ENTRIES,
> which, if nonzero, limits the amount of entries to a user specified
> maximum.
> 
> For backwards compatibility the default setting of 0 disables the limit.
> 
> All changes to fdb_n_entries are under br->hash_lock, which means we do
> not need additional locking. The call paths are (✓ denotes that
> br->hash_lock is taken around the next call):
> 
>  - fdb_delete <-+- fdb_delete_local <-+- br_fdb_changeaddr ✓
>                 |                     +- br_fdb_change_mac_address ✓
>                 |                     +- br_fdb_delete_by_port ✓
>                 +- br_fdb_find_delete_local ✓
>                 +- fdb_add_local <-+- br_fdb_changeaddr ✓
>                 |                  +- br_fdb_change_mac_address ✓
>                 |                  +- br_fdb_add_local ✓
>                 +- br_fdb_cleanup ✓
>                 +- br_fdb_flush ✓
>                 +- br_fdb_delete_by_port ✓
>                 +- fdb_delete_by_addr_and_port <--- __br_fdb_delete ✓
>                 +- br_fdb_external_learn_del ✓
>  - fdb_create <-+- fdb_add_local <-+- br_fdb_changeaddr ✓
>                 |                  +- br_fdb_change_mac_address ✓
>                 |                  +- br_fdb_add_local ✓
>                 +- br_fdb_update ✓
>                 +- fdb_add_entry <--- __br_fdb_add ✓
>                 +- br_fdb_external_learn_add ✓
> 
> Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
> ---
>  include/uapi/linux/if_link.h | 1 +
>  net/bridge/br_device.c       | 2 ++
>  net/bridge/br_fdb.c          | 6 ++++++
>  net/bridge/br_netlink.c      | 9 ++++++++-
>  net/bridge/br_private.h      | 2 ++
>  5 files changed, 19 insertions(+), 1 deletion(-)
> 

Hi,
If you're sending a patch series please add a cover letter (--cover-letter) which
explains what the series are trying to do and why.
I've had a patch that implements this feature for a while but didn't get to upstreaming it. :)
Anyway more comments below,

> diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
> index 4ac1000b0ef2..27cf5f2d8790 100644
> --- a/include/uapi/linux/if_link.h
> +++ b/include/uapi/linux/if_link.h
> @@ -510,6 +510,7 @@ enum {
>  	IFLA_BR_VLAN_STATS_PER_PORT,
>  	IFLA_BR_MULTI_BOOLOPT,
>  	IFLA_BR_MCAST_QUERIER_STATE,
> +	IFLA_BR_FDB_MAX_ENTRIES,
>  	__IFLA_BR_MAX,
>  };
>  
> diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
> index 8eca8a5c80c6..d455a28df7c9 100644
> --- a/net/bridge/br_device.c
> +++ b/net/bridge/br_device.c
> @@ -528,6 +528,8 @@ void br_dev_setup(struct net_device *dev)
>  	br->bridge_hello_time = br->hello_time = 2 * HZ;
>  	br->bridge_forward_delay = br->forward_delay = 15 * HZ;
>  	br->bridge_ageing_time = br->ageing_time = BR_DEFAULT_AGEING_TIME;
> +	br->fdb_n_entries = 0;
> +	br->fdb_max_entries = 0;

Unnecessary, the private area is already cleared.

>  	dev->max_mtu = ETH_MAX_MTU;
>  
>  	br_netfilter_rtable_init(br);
> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
> index e69a872bfc1d..8a833e6dee92 100644
> --- a/net/bridge/br_fdb.c
> +++ b/net/bridge/br_fdb.c
> @@ -329,6 +329,8 @@ static void fdb_delete(struct net_bridge *br, struct net_bridge_fdb_entry *f,
>  	hlist_del_init_rcu(&f->fdb_node);
>  	rhashtable_remove_fast(&br->fdb_hash_tbl, &f->rhnode,
>  			       br_fdb_rht_params);
> +	if (!WARN_ON(!br->fdb_n_entries))
> +		br->fdb_n_entries--;

This is pointless, just put the WARN_ON(!br->fdb_n_entries) above decrementing, if we
hit that we are already in trouble and not decrementing doesn't help us.

>  	fdb_notify(br, f, RTM_DELNEIGH, swdev_notify);
>  	call_rcu(&f->rcu, fdb_rcu_free);
>  }
> @@ -391,6 +393,9 @@ static struct net_bridge_fdb_entry *fdb_create(struct net_bridge *br,
>  	struct net_bridge_fdb_entry *fdb;
>  	int err;
>  
> +	if (unlikely(br->fdb_max_entries && br->fdb_n_entries >= br->fdb_max_entries))
> +		return NULL;
> +

This one needs more work, fdb_create() is also used when user-space is adding new
entries, so it would be nice to return a proper error.

>  	fdb = kmem_cache_alloc(br_fdb_cache, GFP_ATOMIC);
>  	if (!fdb)
>  		return NULL;
> @@ -408,6 +413,7 @@ static struct net_bridge_fdb_entry *fdb_create(struct net_bridge *br,
>  	}
>  
>  	hlist_add_head_rcu(&fdb->fdb_node, &br->fdb_list);
> +	br->fdb_n_entries++;
>  
>  	return fdb;
>  }
> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> index 05c5863d2e20..e5b8d36a3291 100644
> --- a/net/bridge/br_netlink.c
> +++ b/net/bridge/br_netlink.c
> @@ -1527,6 +1527,12 @@ static int br_changelink(struct net_device *brdev, struct nlattr *tb[],
>  			return err;
>  	}
>  
> +	if (data[IFLA_BR_FDB_MAX_ENTRIES]) {
> +		u32 val = nla_get_u32(data[IFLA_BR_FDB_MAX_ENTRIES]);
> +
> +		br->fdb_max_entries = val;
> +	}
> +
>  	return 0;
>  }
>  
> @@ -1656,7 +1662,8 @@ static int br_fill_info(struct sk_buff *skb, const struct net_device *brdev)
>  	    nla_put_u8(skb, IFLA_BR_TOPOLOGY_CHANGE_DETECTED,
>  		       br->topology_change_detected) ||
>  	    nla_put(skb, IFLA_BR_GROUP_ADDR, ETH_ALEN, br->group_addr) ||
> -	    nla_put(skb, IFLA_BR_MULTI_BOOLOPT, sizeof(bm), &bm))
> +	    nla_put(skb, IFLA_BR_MULTI_BOOLOPT, sizeof(bm), &bm) ||
> +	    nla_put_u32(skb, IFLA_BR_FDB_MAX_ENTRIES, br->fdb_max_entries))

You are not returning the current entry count, that is also needed.

>  		return -EMSGSIZE;
>  
>  #ifdef CONFIG_BRIDGE_VLAN_FILTERING
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 2119729ded2b..64fb359c6e3e 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -494,6 +494,8 @@ struct net_bridge {
>  #endif
>  
>  	struct rhashtable		fdb_hash_tbl;
> +	u32				fdb_n_entries;
> +	u32				fdb_max_entries;

These are not critical, so I'd use 4 byte holes in net_bridge and pack it better
instead of making it larger.

>  	struct list_head		port_list;
>  #if IS_ENABLED(CONFIG_BRIDGE_NETFILTER)
>  	union {

