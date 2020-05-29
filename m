Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C121E77F1
	for <lists.bridge@lfdr.de>; Fri, 29 May 2020 10:12:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3889F89343;
	Fri, 29 May 2020 08:12:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZQ428SJhvhpi; Fri, 29 May 2020 08:12:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 11E188934D;
	Fri, 29 May 2020 08:12:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DEEE6C016F;
	Fri, 29 May 2020 08:12:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 05258C016F
 for <bridge@lists.linux-foundation.org>; Fri, 29 May 2020 08:12:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E4885883BF
 for <bridge@lists.linux-foundation.org>; Fri, 29 May 2020 08:12:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pl2Brw2J-R+k for <bridge@lists.linux-foundation.org>;
 Fri, 29 May 2020 08:12:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D9DE6883BE
 for <bridge@lists.linux-foundation.org>; Fri, 29 May 2020 08:12:11 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id v19so2203643wmj.0
 for <bridge@lists.linux-foundation.org>; Fri, 29 May 2020 01:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=5+fxliSeoLCLlOvZdamHCOkQy99HBngARsCHQl3OrwI=;
 b=DFlPCHv3OERcdYRzt8Y0QvSIMTMYTjAXEHa5Pk4ML1hZ57oA1ree/pZLBRLmF4mXSA
 tD8I/ABrbVa/F0/5qlkXi2+5QploJYrK2lgA6k1jhy+QE50BKDOHdjcYNPfyExCbFJvn
 EY2zGaqoYgLAQX5xuvR6gPRAwKC+IairWrNWs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5+fxliSeoLCLlOvZdamHCOkQy99HBngARsCHQl3OrwI=;
 b=kpYCObyrYfCFX6AHc8zojHn7pZKZnRiKHroa1aCsvIMUYwlLHrooYRmy+fiupgtNEx
 kIpyg289S9qRW5n+16kFhwe0KnZYs3XPrnAEEqE2O27FB2/ssebzTQT1hZ/cbIWs98Q3
 teXGdxhPWugZUregyTcltkc0SavT1O8IxWH29k+7Ykym6ZG84FH9t9Rc7tBgC/HYL3nK
 uDN/o3IAsXzGhfOYhzYio5rmuFydHL++TuTkCABqtLeG1yCm8rw1V3Cbp2fYmRxvYF+b
 ScMT5fvNXs3bnKEGFYnsdKBc5NlR1D07gTDf4G6JRMdLuePVAuzL1pMCkWpPHicJbNoh
 DDtA==
X-Gm-Message-State: AOAM530C0wggmvGkHDjCjUh8HGh+tjuEitrRx+SiMuhWAHp2UVhWb4Qx
 5YyA0IAnvAjJJDYTFGImNhsiqOGv/ic=
X-Google-Smtp-Source: ABdhPJwUuvTjfMdWczk9cZjFBRn0F9Epnf3aYuTApUytcC5KC0FSQvQGiVHyGTn05ocQl5zr4I7jfw==
X-Received: by 2002:a1c:3c89:: with SMTP id j131mr7150208wma.59.1590739929838; 
 Fri, 29 May 2020 01:12:09 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id v2sm9053462wrn.21.2020.05.29.01.12.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 29 May 2020 01:12:09 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, roopa@cumulusnetworks.com, 
 jiri@resnulli.us, ivecera@redhat.com, davem@davemloft.net, kuba@kernel.org,
 UNGLinuxDriver@microchip.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bridge@lists.linux-foundation.org
References: <20200529100514.920537-1-horatiu.vultur@microchip.com>
 <20200529100514.920537-2-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <fc47aca8-a188-5e57-fe76-8e57c2910920@cumulusnetworks.com>
Date: Fri, 29 May 2020 11:12:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200529100514.920537-2-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next 1/2] bridge: mrp: Set the priority of
 MRP instance
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

On 29/05/2020 13:05, Horatiu Vultur wrote:
> Each MRP instance has a priority, a lower value means a higher priority.
> The priority of MRP instance is stored in MRP_Test frame in this way
> all the MRP nodes in the ring can see other nodes priority.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  include/net/switchdev.h        | 1 +
>  include/uapi/linux/if_bridge.h | 2 ++
>  net/bridge/br_mrp.c            | 3 ++-
>  net/bridge/br_mrp_netlink.c    | 5 +++++
>  net/bridge/br_mrp_switchdev.c  | 1 +
>  net/bridge/br_private_mrp.h    | 1 +
>  6 files changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/include/net/switchdev.h b/include/net/switchdev.h
> index db519957e134b..f82ef4c45f5ed 100644
> --- a/include/net/switchdev.h
> +++ b/include/net/switchdev.h
> @@ -116,6 +116,7 @@ struct switchdev_obj_mrp {
>  	struct net_device *p_port;
>  	struct net_device *s_port;
>  	u32 ring_id;
> +	u16 prio;
>  };
>  
>  #define SWITCHDEV_OBJ_MRP(OBJ) \
> diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
> index 5a43eb86c93bf..0162c1370ecb6 100644
> --- a/include/uapi/linux/if_bridge.h
> +++ b/include/uapi/linux/if_bridge.h
> @@ -176,6 +176,7 @@ enum {
>  	IFLA_BRIDGE_MRP_INSTANCE_RING_ID,
>  	IFLA_BRIDGE_MRP_INSTANCE_P_IFINDEX,
>  	IFLA_BRIDGE_MRP_INSTANCE_S_IFINDEX,
> +	IFLA_BRIDGE_MRP_INSTANCE_PRIO,
>  	__IFLA_BRIDGE_MRP_INSTANCE_MAX,
>  };
>  
> @@ -230,6 +231,7 @@ struct br_mrp_instance {
>  	__u32 ring_id;
>  	__u32 p_ifindex;
>  	__u32 s_ifindex;
> +	__u16 prio;
>  };
>  
>  struct br_mrp_ring_state {
> diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
> index 8ea59504ef47a..f8fd037219fe9 100644
> --- a/net/bridge/br_mrp.c
> +++ b/net/bridge/br_mrp.c
> @@ -147,7 +147,7 @@ static struct sk_buff *br_mrp_alloc_test_skb(struct br_mrp *mrp,
>  	br_mrp_skb_tlv(skb, BR_MRP_TLV_HEADER_RING_TEST, sizeof(*hdr));
>  	hdr = skb_put(skb, sizeof(*hdr));
>  
> -	hdr->prio = cpu_to_be16(MRP_DEFAULT_PRIO);
> +	hdr->prio = cpu_to_be16(mrp->prio);
>  	ether_addr_copy(hdr->sa, p->br->dev->dev_addr);
>  	hdr->port_role = cpu_to_be16(port_role);
>  	hdr->state = cpu_to_be16(mrp->ring_state);
> @@ -290,6 +290,7 @@ int br_mrp_add(struct net_bridge *br, struct br_mrp_instance *instance)
>  		return -ENOMEM;
>  
>  	mrp->ring_id = instance->ring_id;
> +	mrp->prio = instance->prio;
>  
>  	p = br_mrp_get_port(br, instance->p_ifindex);
>  	spin_lock_bh(&br->lock);
> diff --git a/net/bridge/br_mrp_netlink.c b/net/bridge/br_mrp_netlink.c
> index d9de780d2ce06..332d9894a9485 100644
> --- a/net/bridge/br_mrp_netlink.c
> +++ b/net/bridge/br_mrp_netlink.c
> @@ -22,6 +22,7 @@ br_mrp_instance_policy[IFLA_BRIDGE_MRP_INSTANCE_MAX + 1] = {
>  	[IFLA_BRIDGE_MRP_INSTANCE_RING_ID]	= { .type = NLA_U32 },
>  	[IFLA_BRIDGE_MRP_INSTANCE_P_IFINDEX]	= { .type = NLA_U32 },
>  	[IFLA_BRIDGE_MRP_INSTANCE_S_IFINDEX]	= { .type = NLA_U32 },
> +	[IFLA_BRIDGE_MRP_INSTANCE_PRIO]		= { .type = NLA_U16 },
>  };
>  
>  static int br_mrp_instance_parse(struct net_bridge *br, struct nlattr *attr,
> @@ -49,6 +50,10 @@ static int br_mrp_instance_parse(struct net_bridge *br, struct nlattr *attr,
>  	inst.ring_id = nla_get_u32(tb[IFLA_BRIDGE_MRP_INSTANCE_RING_ID]);
>  	inst.p_ifindex = nla_get_u32(tb[IFLA_BRIDGE_MRP_INSTANCE_P_IFINDEX]);
>  	inst.s_ifindex = nla_get_u32(tb[IFLA_BRIDGE_MRP_INSTANCE_S_IFINDEX]);
> +	inst.prio = MRP_DEFAULT_PRIO;
> +
> +	if (tb[IFLA_BRIDGE_MRP_INSTANCE_PRIO])
> +		inst.prio = nla_get_u32(tb[IFLA_BRIDGE_MRP_INSTANCE_PRIO]);

	[IFLA_BRIDGE_MRP_INSTANCE_PRIO]		= { .type = NLA_U16 },

it seems you should be using nla_get_u16 above

>  
>  	if (cmd == RTM_SETLINK)
>  		return br_mrp_add(br, &inst);
> diff --git a/net/bridge/br_mrp_switchdev.c b/net/bridge/br_mrp_switchdev.c
> index 51cb1d5a24b4f..3a776043bf80d 100644
> --- a/net/bridge/br_mrp_switchdev.c
> +++ b/net/bridge/br_mrp_switchdev.c
> @@ -12,6 +12,7 @@ int br_mrp_switchdev_add(struct net_bridge *br, struct br_mrp *mrp)
>  		.p_port = rtnl_dereference(mrp->p_port)->dev,
>  		.s_port = rtnl_dereference(mrp->s_port)->dev,
>  		.ring_id = mrp->ring_id,
> +		.prio = mrp->prio,
>  	};
>  	int err;
>  
> diff --git a/net/bridge/br_private_mrp.h b/net/bridge/br_private_mrp.h
> index a0f53cc3ab85c..558941ce23669 100644
> --- a/net/bridge/br_private_mrp.h
> +++ b/net/bridge/br_private_mrp.h
> @@ -14,6 +14,7 @@ struct br_mrp {
>  	struct net_bridge_port __rcu	*s_port;
>  
>  	u32				ring_id;
> +	u16				prio;
>  
>  	enum br_mrp_ring_role_type	ring_role;
>  	u8				ring_role_offloaded;
> 

