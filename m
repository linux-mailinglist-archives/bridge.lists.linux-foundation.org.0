Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F917A79B3
	for <lists.bridge@lfdr.de>; Wed, 20 Sep 2023 12:50:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EAAFE40AA4;
	Wed, 20 Sep 2023 10:50:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EAAFE40AA4
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=HOvblEvf
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gQbE7ddMU564; Wed, 20 Sep 2023 10:50:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 6AC5B40127;
	Wed, 20 Sep 2023 10:50:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6AC5B40127
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1C775C008C;
	Wed, 20 Sep 2023 10:50:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EEF7AC0032
 for <bridge@lists.linux-foundation.org>; Wed, 20 Sep 2023 10:50:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BBE7C40162
 for <bridge@lists.linux-foundation.org>; Wed, 20 Sep 2023 10:50:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BBE7C40162
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fz9oTSTuLzMS for <bridge@lists.linux-foundation.org>;
 Wed, 20 Sep 2023 10:50:36 +0000 (UTC)
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4AAA740127
 for <bridge@lists.linux-foundation.org>; Wed, 20 Sep 2023 10:50:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4AAA740127
Received: by mail-ej1-x62d.google.com with SMTP id
 a640c23a62f3a-99c93638322so169883266b.1
 for <bridge@lists.linux-foundation.org>; Wed, 20 Sep 2023 03:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1695207034; x=1695811834;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=WdySEJI2yS6LDSRHQg7SGzxRhw3iuitdUpfv1l3JcAY=;
 b=HOvblEvfeQibFzu1u1azOAqHBWBz3p/XIdED26TLVPmUEHHoxdxVCLuMOPRfjR744/
 /QqhTt5Gk8SUbFBTZLvRxIZ8Y+hXy9HDPQHxM6AwcIyYaDBvW91T7LlcT9zJW5JezMCD
 WIwbNspIZ5w44tjTzK+yOcyWV1OpmtpIxvpKbdl+Gs8VdU/dzPb0+ZnY/Pfc93nuVZWX
 AdCtr5GBD7UE/zRQn3E+jLg+TaJPfSbSEvEGTHI69RTwkQzTJIV9XC94f0QzsSGC7GaO
 ZPrUcyQ9rFyWVCxsquEE9oQalpc6FXA0YzjsodN7vt9jnRfQvl/ujaoOokYxtulQ7qCd
 scdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695207034; x=1695811834;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=WdySEJI2yS6LDSRHQg7SGzxRhw3iuitdUpfv1l3JcAY=;
 b=uoNv31zwgPPA+JqG+uq9Pa3kVWDXRXKJAT9IMayYHixeWIz9iEqT1OTCDYjvmrGjP5
 QnU7cz8Qx8ncbO7i0/6HPBOl7Gq3Fv6XpEW57dyoz9WYVafcZlmS9xkD29ThM3NHMWwc
 EAsKpPCBKnruKUekIEl2rJN5KB8/FxoY1NxUaA+sv+Fgmyj/eeW4G+bEdEL3KuIdx43t
 d+SbrYdOFN6keNusC4xOHpc1C36dR57YoUk57KYRC9k3sk/2rmUOPz/uQUBkkpaHXZlc
 fL0FLkertyV7Ec9DiozJdbOiGjFQMZgTVV8weCwWF8qegjB5hgXy9iixuSqh4RMMlp4t
 YdMA==
X-Gm-Message-State: AOJu0Ywwfu212rBJoQcYSxIK/NsE6srj2qcX6HzryVBA00D7UGp8qqWK
 fLwU3XK/6MZ6udO57sNE07YHWQ==
X-Google-Smtp-Source: AGHT+IEXAc0tImdf+B7fXBw8e7MEehjBdBzYqQ4u5phtJfnemHHVkzrvbPIMmv9UT9jYRTr16t3u9w==
X-Received: by 2002:a17:907:3e15:b0:9ad:e3fd:d46c with SMTP id
 hp21-20020a1709073e1500b009ade3fdd46cmr7182594ejc.10.1695207033924; 
 Wed, 20 Sep 2023 03:50:33 -0700 (PDT)
Received: from [192.168.0.105] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 c6-20020a17090620c600b009888aa1da11sm9182888ejc.188.2023.09.20.03.50.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 Sep 2023 03:50:33 -0700 (PDT)
Message-ID: <f5aca33e-693f-9d8d-c45a-41ada00a9f03@blackwall.org>
Date: Wed, 20 Sep 2023 13:50:32 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Johannes Nixdorf <jnixdorf-oss@avm.de>,
 "David S. Miller" <davem@davemloft.net>, Andrew Lunn <andrew@lunn.ch>,
 David Ahern <dsahern@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Oleksij Rempel <linux@rempel-privat.de>,
 Paolo Abeni <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>,
 Shuah Khan <shuah@kernel.org>, Vladimir Oltean <vladimir.oltean@nxp.com>
References: <20230919-fdb_limit-v4-0-39f0293807b8@avm.de>
 <20230919-fdb_limit-v4-4-39f0293807b8@avm.de>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230919-fdb_limit-v4-4-39f0293807b8@avm.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [Bridge] [PATCH net-next v4 4/6] net: bridge: Add netlink knobs
 for number / max learned FDB entries
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

On 9/19/23 11:12, Johannes Nixdorf wrote:
> The previous patch added accounting and a limit for the number of
> dynamically learned FDB entries per bridge. However it did not provide
> means to actually configure those bounds or read back the count. This
> patch does that.
> 
> Two new netlink attributes are added for the accounting and limit of
> dynamically learned FDB entries:
>   - IFLA_BR_FDB_N_LEARNED (RO) for the number of entries accounted for
>     a single bridge.
>   - IFLA_BR_FDB_MAX_LEARNED (RW) for the configured limit of entries for
>     the bridge.
> 
> The new attributes are used like this:
> 
>   # ip link add name br up type bridge fdb_max_learned 256
>   # ip link add name v1 up master br type veth peer v2
>   # ip link set up dev v2
>   # mausezahn -a rand -c 1024 v2
>   0.01 seconds (90877 packets per second
>   # bridge fdb | grep -v permanent | wc -l
>   256
>   # ip -d link show dev br
>   13: br: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 [...]
>       [...] fdb_n_learned 256 fdb_max_learned 256
> 
> Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
> ---
>   include/uapi/linux/if_link.h |  2 ++
>   net/bridge/br_netlink.c      | 15 ++++++++++++++-
>   2 files changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
> index ce3117df9cec..0486f314c176 100644
> --- a/include/uapi/linux/if_link.h
> +++ b/include/uapi/linux/if_link.h
> @@ -510,6 +510,8 @@ enum {
>   	IFLA_BR_VLAN_STATS_PER_PORT,
>   	IFLA_BR_MULTI_BOOLOPT,
>   	IFLA_BR_MCAST_QUERIER_STATE,
> +	IFLA_BR_FDB_N_LEARNED,
> +	IFLA_BR_FDB_MAX_LEARNED,
>   	__IFLA_BR_MAX,
>   };
>   
> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> index 505683ef9a26..f5d49a05e61b 100644
> --- a/net/bridge/br_netlink.c
> +++ b/net/bridge/br_netlink.c
> @@ -1267,6 +1267,8 @@ static const struct nla_policy br_policy[IFLA_BR_MAX + 1] = {
>   	[IFLA_BR_VLAN_STATS_PER_PORT] = { .type = NLA_U8 },
>   	[IFLA_BR_MULTI_BOOLOPT] =
>   		NLA_POLICY_EXACT_LEN(sizeof(struct br_boolopt_multi)),
> +	[IFLA_BR_FDB_N_LEARNED] = { .type = NLA_U32 },

hmm? I thought this one was RO.

> +	[IFLA_BR_FDB_MAX_LEARNED] = { .type = NLA_U32 },
>   };
>   
>   static int br_changelink(struct net_device *brdev, struct nlattr *tb[],
> @@ -1541,6 +1543,12 @@ static int br_changelink(struct net_device *brdev, struct nlattr *tb[],
>   			return err;
>   	}
>   
> +	if (data[IFLA_BR_FDB_MAX_LEARNED]) {
> +		u32 val = nla_get_u32(data[IFLA_BR_FDB_MAX_LEARNED]);
> +
> +		WRITE_ONCE(br->fdb_max_learned, val);
> +	}
> +
>   	return 0;
>   }
>   
> @@ -1595,6 +1603,8 @@ static size_t br_get_size(const struct net_device *brdev)
>   	       nla_total_size_64bit(sizeof(u64)) + /* IFLA_BR_TOPOLOGY_CHANGE_TIMER */
>   	       nla_total_size_64bit(sizeof(u64)) + /* IFLA_BR_GC_TIMER */
>   	       nla_total_size(ETH_ALEN) +       /* IFLA_BR_GROUP_ADDR */
> +	       nla_total_size(sizeof(u32)) +    /* IFLA_BR_FDB_N_LEARNED */
> +	       nla_total_size(sizeof(u32)) +    /* IFLA_BR_FDB_MAX_LEARNED */
>   #ifdef CONFIG_BRIDGE_IGMP_SNOOPING
>   	       nla_total_size(sizeof(u8)) +     /* IFLA_BR_MCAST_ROUTER */
>   	       nla_total_size(sizeof(u8)) +     /* IFLA_BR_MCAST_SNOOPING */
> @@ -1670,7 +1680,10 @@ static int br_fill_info(struct sk_buff *skb, const struct net_device *brdev)
>   	    nla_put_u8(skb, IFLA_BR_TOPOLOGY_CHANGE_DETECTED,
>   		       br->topology_change_detected) ||
>   	    nla_put(skb, IFLA_BR_GROUP_ADDR, ETH_ALEN, br->group_addr) ||
> -	    nla_put(skb, IFLA_BR_MULTI_BOOLOPT, sizeof(bm), &bm))
> +	    nla_put(skb, IFLA_BR_MULTI_BOOLOPT, sizeof(bm), &bm) ||
> +	    nla_put_u32(skb, IFLA_BR_FDB_N_LEARNED,
> +			atomic_read(&br->fdb_n_learned)) ||
> +	    nla_put_u32(skb, IFLA_BR_FDB_MAX_LEARNED, br->fdb_max_learned))
>   		return -EMSGSIZE;
>   
>   #ifdef CONFIG_BRIDGE_VLAN_FILTERING
> 

