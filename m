Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE379751D4A
	for <lists.bridge@lfdr.de>; Thu, 13 Jul 2023 11:33:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A116C400C6;
	Thu, 13 Jul 2023 09:33:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A116C400C6
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=UHzdVh0G
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fap_Mpx5GuNk; Thu, 13 Jul 2023 09:33:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id D618C416E0;
	Thu, 13 Jul 2023 09:33:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D618C416E0
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 77D11C0DD4;
	Thu, 13 Jul 2023 09:33:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 92073C0032
 for <bridge@lists.linux-foundation.org>; Thu, 13 Jul 2023 09:33:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6B38B60B2F
 for <bridge@lists.linux-foundation.org>; Thu, 13 Jul 2023 09:33:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B38B60B2F
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=UHzdVh0G
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pg_LHfzsSo8A for <bridge@lists.linux-foundation.org>;
 Thu, 13 Jul 2023 09:33:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 07D3B605A3
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 07D3B605A3
 for <bridge@lists.linux-foundation.org>; Thu, 13 Jul 2023 09:33:22 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id
 2adb3069b0e04-4fb73ba3b5dso892953e87.1
 for <bridge@lists.linux-foundation.org>; Thu, 13 Jul 2023 02:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1689240801; x=1691832801;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=PuoUSzTMaeW0KxRIpsbhRn0c0o1kWoxhrZZUjrUIJ00=;
 b=UHzdVh0Gxk+0ZZOvx0u4Z9RCt92RV0rJAtiU8cRZFeZ4nXzjCSxd725RCAkRTZS5eA
 0mdRFNx/Tg6rgiwqq8Jz8zBVkuDTp8OxVXU7Ne9kp5zrsamMxFgIC+h76CPW1XphMbZS
 xGgKJd7n92SO38N+/Tmt1moBtdClFhdSBZ52+k98dCA4Kv4v/rBRabDmGUkUDTPk/ouj
 XRO0HFt0Gcbe8FOGQUvAiF5qTPDr5gnfkcIgGPPpMom7TEeRt19aaPyEmc+OObrjsqgt
 xYN3yeF0rDvFy2RIVIQT2gTlzL7dPCiqhZJmc9u1W7Q/ZkDvWk1cU/bcL3lV4YlgiYU6
 ZboA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689240801; x=1691832801;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=PuoUSzTMaeW0KxRIpsbhRn0c0o1kWoxhrZZUjrUIJ00=;
 b=UKot7nCFJ2Z/JESLTZLZS25Cinaxgjeo5LZCGRQ8E4NxxCBjn2XLNljbx+Q8bt9b3C
 lplXdPjHxKxh4sb3K7Qb5SeUucc32DrGNKsz92NqZoaR9cNiT4bdJgTFQyuylittOUvu
 7ElwD6yn7i5eKXIY4QlOT17+lNIJtUdsjV+eR2VSvqgM+6dw09Ht6uv0Kg4jljb4uYiN
 sHgjuF8eIDKRhNx7R8flCsFBRuWo3T0CMglZ9OikBiYMCoBnZgL9u/kxbaCWEKTb+iwR
 zrzkOWuHJ364bb4kwMh12ESwTjqRocRNhSTyK5k/ngL6gUGCMsJrei/7e4l+8ZVEmkgQ
 +BGQ==
X-Gm-Message-State: ABy/qLYocO1HBjgbs+fyanLmIrI1qe7kWEFgssaNE5lo1jjGqylsT3aN
 h+Pc/lZ7s1q1YhjpFDqFWzCxzw==
X-Google-Smtp-Source: APBJJlHjCNfr204Lo2+tZHlL5G7RRcflxH+dvgrFeYiMweKPU1WjaL7kXrHOt7fKK8GOcPX2DULRHg==
X-Received: by 2002:a05:6512:3ad:b0:4f8:7614:48a5 with SMTP id
 v13-20020a05651203ad00b004f8761448a5mr644791lfp.66.1689240800781; 
 Thu, 13 Jul 2023 02:33:20 -0700 (PDT)
Received: from [192.168.51.243] ([78.128.78.220])
 by smtp.gmail.com with ESMTPSA id
 c11-20020ac2530b000000b004fba1170087sm1042563lfh.224.2023.07.13.02.33.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 13 Jul 2023 02:33:20 -0700 (PDT)
Message-ID: <ef77b43d-0b5a-9e5f-640a-5e3c981bd642@blackwall.org>
Date: Thu, 13 Jul 2023 12:33:19 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230713070925.3955850-1-idosch@nvidia.com>
 <20230713070925.3955850-4-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230713070925.3955850-4-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, taspelund@nvidia.com, roopa@nvidia.com,
 edumazet@google.com, dsahern@gmail.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: Re: [Bridge] [RFC PATCH net-next 3/4] bridge: Add backup nexthop ID
	support
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

On 13/07/2023 10:09, Ido Schimmel wrote:
> Add a new bridge port attribute that allows attaching a nexthop object
> ID to an skb that is redirected to a backup bridge port with VLAN
> tunneling enabled.
> 
> Specifically, when redirecting a known unicast packet, read the backup
> nexthop ID from the bridge port that lost its carrier and set it in the
> bridge control block of the skb before forwarding it via the backup
> port. Note that reading the ID from the bridge port should not result in
> a cache miss as the ID is added next to the 'backup_port' field that was
> already accessed. After this change, the 'state' field still stays on
> the first cache line, together with other data path related fields such
> as 'flags and 'vlgrp':
> 
> struct net_bridge_port {
>          struct net_bridge *        br;                   /*     0     8 */
>          struct net_device *        dev;                  /*     8     8 */
>          netdevice_tracker          dev_tracker;          /*    16     0 */
>          struct list_head           list;                 /*    16    16 */
>          long unsigned int          flags;                /*    32     8 */
>          struct net_bridge_vlan_group * vlgrp;            /*    40     8 */
>          struct net_bridge_port *   backup_port;          /*    48     8 */
>          u32                        backup_nhid;          /*    56     4 */
>          u8                         priority;             /*    60     1 */
>          u8                         state;                /*    61     1 */
>          u16                        port_no;              /*    62     2 */
>          /* --- cacheline 1 boundary (64 bytes) --- */
> [...]
> } __attribute__((__aligned__(8)));
> 
> When forwarding an skb via a bridge port that has VLAN tunneling
> enabled, check if the backup nexthop ID stored in the bridge control
> block is valid (i.e., not zero). If so, instead of attaching the
> pre-allocated metadata (that only has the tunnel key set), allocate a
> new metadata, set both the tunnel key and the nexthop object ID and
> attach it to the skb.
> 
> By default, do not dump the new attribute to user space as a value of
> zero is an invalid nexthop object ID.
> 
> The above is useful for EVPN multihoming. When one of the links
> composing an Ethernet Segment (ES) fails, traffic needs to be redirected
> towards the host via one of the other ES peers. For example, if a host
> is multihomed to three different VTEPs, the backup port of each ES link
> needs to be set to the VXLAN device and the backup nexthop ID needs to
> point to an FDB nexthop group that includes the IP addresses of the
> other two VTEPs. The VXLAN driver will extract the ID from the metadata
> of the redirected skb, calculate its flow hash and forward it towards
> one of the other VTEPs. If the ID does not exist, or represents an
> invalid nexthop object, the VXLAN driver will drop the skb. This
> relieves the bridge driver from the need to validate the ID.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>   include/uapi/linux/if_link.h |  1 +
>   net/bridge/br_forward.c      |  1 +
>   net/bridge/br_netlink.c      | 12 ++++++++++++
>   net/bridge/br_private.h      |  3 +++
>   net/bridge/br_vlan_tunnel.c  | 15 +++++++++++++++
>   net/core/rtnetlink.c         |  2 +-
>   6 files changed, 33 insertions(+), 1 deletion(-)
> 

One comment below, with that fixed you can add
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

> diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
> index 0f6a0fe09bdb..ce3117df9cec 100644
> --- a/include/uapi/linux/if_link.h
> +++ b/include/uapi/linux/if_link.h
> @@ -570,6 +570,7 @@ enum {
>   	IFLA_BRPORT_MCAST_N_GROUPS,
>   	IFLA_BRPORT_MCAST_MAX_GROUPS,
>   	IFLA_BRPORT_NEIGH_VLAN_SUPPRESS,
> +	IFLA_BRPORT_BACKUP_NHID,
>   	__IFLA_BRPORT_MAX
>   };
>   #define IFLA_BRPORT_MAX (__IFLA_BRPORT_MAX - 1)
> diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
> index 6116eba1bd89..9d7bc8b96b53 100644
> --- a/net/bridge/br_forward.c
> +++ b/net/bridge/br_forward.c
> @@ -154,6 +154,7 @@ void br_forward(const struct net_bridge_port *to,
>   		backup_port = rcu_dereference(to->backup_port);
>   		if (unlikely(!backup_port))
>   			goto out;
> +		BR_INPUT_SKB_CB(skb)->backup_nhid = READ_ONCE(to->backup_nhid);
>   		to = backup_port;
>   	}
>   
> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> index 05c5863d2e20..10f0d33d8ccf 100644
> --- a/net/bridge/br_netlink.c
> +++ b/net/bridge/br_netlink.c
> @@ -211,6 +211,7 @@ static inline size_t br_port_info_size(void)
>   		+ nla_total_size(sizeof(u8))	/* IFLA_BRPORT_MRP_IN_OPEN */
>   		+ nla_total_size(sizeof(u32))	/* IFLA_BRPORT_MCAST_EHT_HOSTS_LIMIT */
>   		+ nla_total_size(sizeof(u32))	/* IFLA_BRPORT_MCAST_EHT_HOSTS_CNT */
> +		+ nla_total_size(sizeof(u32))	/* IFLA_BRPORT_BACKUP_NHID */
>   		+ 0;
>   }
>   
> @@ -319,6 +320,10 @@ static int br_port_fill_attrs(struct sk_buff *skb,
>   			    backup_p->dev->ifindex);
>   	rcu_read_unlock();
>   
> +	if (p->backup_nhid &&
> +	    nla_put_u32(skb, IFLA_BRPORT_BACKUP_NHID, p->backup_nhid))
> +		return -EMSGSIZE;
> +

READ_ONCE(), see the comment above backup_port :)

>   	return 0;
>   }
>   
> @@ -895,6 +900,7 @@ static const struct nla_policy br_port_policy[IFLA_BRPORT_MAX + 1] = {
>   	[IFLA_BRPORT_MCAST_N_GROUPS] = { .type = NLA_REJECT },
>   	[IFLA_BRPORT_MCAST_MAX_GROUPS] = { .type = NLA_U32 },
>   	[IFLA_BRPORT_NEIGH_VLAN_SUPPRESS] = NLA_POLICY_MAX(NLA_U8, 1),
> +	[IFLA_BRPORT_BACKUP_NHID] = { .type = NLA_U32 },
>   };
>   
>   /* Change the state of the port and notify spanning tree */
> @@ -1065,6 +1071,12 @@ static int br_setport(struct net_bridge_port *p, struct nlattr *tb[],
>   			return err;
>   	}
>   
> +	if (tb[IFLA_BRPORT_BACKUP_NHID]) {
> +		u32 backup_nhid = nla_get_u32(tb[IFLA_BRPORT_BACKUP_NHID]);
> +
> +		WRITE_ONCE(p->backup_nhid, backup_nhid);
> +	}
> +
>   	return 0;
>   }
>   
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index a63b32c1638e..05a965ef76f1 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -387,6 +387,7 @@ struct net_bridge_port {
>   	struct net_bridge_vlan_group	__rcu *vlgrp;
>   #endif
>   	struct net_bridge_port		__rcu *backup_port;
> +	u32				backup_nhid;
>   
>   	/* STP */
>   	u8				priority;
> @@ -605,6 +606,8 @@ struct br_input_skb_cb {
>   	 */
>   	unsigned long fwd_hwdoms;
>   #endif
> +
> +	u32 backup_nhid;
>   };
>   
>   #define BR_INPUT_SKB_CB(__skb)	((struct br_input_skb_cb *)(__skb)->cb)
> diff --git a/net/bridge/br_vlan_tunnel.c b/net/bridge/br_vlan_tunnel.c
> index 6399a8a69d07..81833ca7a2c7 100644
> --- a/net/bridge/br_vlan_tunnel.c
> +++ b/net/bridge/br_vlan_tunnel.c
> @@ -201,6 +201,21 @@ int br_handle_egress_vlan_tunnel(struct sk_buff *skb,
>   	if (err)
>   		return err;
>   
> +	if (BR_INPUT_SKB_CB(skb)->backup_nhid) {
> +		tunnel_dst = __ip_tun_set_dst(0, 0, 0, 0, 0, TUNNEL_KEY,
> +					      tunnel_id, 0);
> +		if (!tunnel_dst)
> +			return -ENOMEM;
> +
> +		tunnel_dst->u.tun_info.mode |= IP_TUNNEL_INFO_TX |
> +					       IP_TUNNEL_INFO_BRIDGE;
> +		tunnel_dst->u.tun_info.key.nhid =
> +			BR_INPUT_SKB_CB(skb)->backup_nhid;
> +		skb_dst_set(skb, &tunnel_dst->dst);
> +
> +		return 0;
> +	}
> +
>   	tunnel_dst = rcu_dereference(vlan->tinfo.tunnel_dst);
>   	if (tunnel_dst && dst_hold_safe(&tunnel_dst->dst))
>   		skb_dst_set(skb, &tunnel_dst->dst);
> diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
> index 3ad4e030846d..9e7e3377ec10 100644
> --- a/net/core/rtnetlink.c
> +++ b/net/core/rtnetlink.c
> @@ -61,7 +61,7 @@
>   #include "dev.h"
>   
>   #define RTNL_MAX_TYPE		50
> -#define RTNL_SLAVE_MAX_TYPE	43
> +#define RTNL_SLAVE_MAX_TYPE	44
>   
>   struct rtnl_link {
>   	rtnl_doit_func		doit;

