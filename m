Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 190AF4D7FFA
	for <lists.bridge@lfdr.de>; Mon, 14 Mar 2022 11:37:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1062B40376;
	Mon, 14 Mar 2022 10:37:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gppqwKIS4orP; Mon, 14 Mar 2022 10:37:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 14CC1404C1;
	Mon, 14 Mar 2022 10:37:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CB6B1C0084;
	Mon, 14 Mar 2022 10:37:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E6DC6C0012
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 10:37:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C747A60EAF
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 10:37:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sH7_sLqB3KBa for <bridge@lists.linux-foundation.org>;
 Mon, 14 Mar 2022 10:37:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B774260D4E
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 10:37:48 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id qt6so32754118ejb.11
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 03:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=yA1PUpNaaU438Qdsw8uGHv+PhN27r0uo54eSzuWIqzQ=;
 b=htpaPsBWIhk9Lp3ysfhCNyhgm+tyrndaW4X+SPkjo07T6W2Xrp8HehI6a8dtpSNUrl
 xwjvNYJrhSYDpNw5E/EqLdB7nbtv7xyOS+2+ZExE0IQB+nNXd7QuqybibxP6RUb78Euf
 rO3qoG1KDMDprLNSe+8Bb9BbJYeIm+Ga1tRu1vGDSQPa1dZgBjTHqHsieI9rjJ7oOBdX
 yhk+uT7rgL2D8eClU+ekY429xN8a98zTxk3awCbkkmAGlMUPtfZkAJV+LEluk2LOW3wZ
 Ubg0mulQc8bUW6jYNO8yJar9xygAdjOJe5JJAL8iUd8dGpTbwAcBVtBWISO/ReuL7WCN
 WUSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=yA1PUpNaaU438Qdsw8uGHv+PhN27r0uo54eSzuWIqzQ=;
 b=4bNRwxtE6XcwWmqjrc2Umb4NalGWzeCr91Y82q1mt84CeMFUcyitZhnQZ0TRUMWZHg
 O1lAmwGw+jH+qmSjKOR34bUxXNOByMFUBsH+x+rHlJd8l01+a6mUrY/mH4/y1g09WyOB
 4gU4+NDYyoDJaJCVDeixX05t28sotaxXN+7DuzwxBFszXiT7yu4TVBZT7t/QfVnBioU6
 +O0f/fkt+paNKojCw6dTQhCQeVCnxlCRjnN9IAMLQ6XmNBvuUHu0EPlUUPAFIwpXJLIv
 BMBoSK4ebC6ntIFtrdma81ZQQ2NVF4R3UwRWR85N34SegojCfHdp6BXg8ZTZi2ufIpXM
 dB/w==
X-Gm-Message-State: AOAM530gxZWzwtrwi/apGg03K+ysBl1ON24PJeWIyzYrcyMTJioNNFt9
 p12biTio/pjb4M8lIKDZNktrAw==
X-Google-Smtp-Source: ABdhPJwKRvibeHjI8Dr+gy3mQvlt/4VrthMgf0JTc5QPgmu74aKKcmgRFQ6ZWFM62y7Fv0MZBCMmGg==
X-Received: by 2002:a17:906:4ccd:b0:6b7:75ca:3eac with SMTP id
 q13-20020a1709064ccd00b006b775ca3eacmr17722806ejt.167.1647254266396; 
 Mon, 14 Mar 2022 03:37:46 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 s21-20020a170906961500b006daac87ddb0sm6636613ejx.140.2022.03.14.03.37.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Mar 2022 03:37:46 -0700 (PDT)
Message-ID: <9c103a85-f0e2-77cd-9fc6-dc19d99b19ec@blackwall.org>
Date: Mon, 14 Mar 2022 12:37:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Tobias Waldekranz <tobias@waldekranz.com>, davem@davemloft.net,
 kuba@kernel.org
References: <20220314095231.3486931-1-tobias@waldekranz.com>
 <20220314095231.3486931-2-tobias@waldekranz.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220314095231.3486931-2-tobias@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Petr Machata <petrm@nvidia.com>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Cooper Lees <me@cooperlees.com>, Roopa Prabhu <roopa@nvidia.com>,
 Matt Johnston <matt@codeconstruct.com.au>, Vladimir Oltean <olteanv@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v3 net-next 01/14] net: bridge: mst: Multiple
 Spanning Tree (MST) mode
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

On 14/03/2022 11:52, Tobias Waldekranz wrote:
> Allow the user to switch from the current per-VLAN STP mode to an MST
> mode.
> 
> Up to this point, per-VLAN STP states where always isolated from each
> other. This is in contrast to the MSTP standard (802.1Q-2018, Clause
> 13.5), where VLANs are grouped into MST instances (MSTIs), and the
> state is managed on a per-MSTI level, rather that at the per-VLAN
> level.
> 
> Perhaps due to the prevalence of the standard, many switching ASICs
> are built after the same model. Therefore, add a corresponding MST
> mode to the bridge, which we can later add offloading support for in a
> straight-forward way.
> 
> For now, all VLANs are fixed to MSTI 0, also called the Common
> Spanning Tree (CST). That is, all VLANs will follow the port-global
> state.
> 
> Upcoming changes will make this actually useful by allowing VLANs to
> be mapped to arbitrary MSTIs and allow individual MSTI states to be
> changed.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---
[snip]
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 48bc61ebc211..35b47f6b449a 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -178,6 +178,7 @@ enum {
>   * @br_mcast_ctx: if MASTER flag set, this is the global vlan multicast context
>   * @port_mcast_ctx: if MASTER flag unset, this is the per-port/vlan multicast
>   *                  context
> + * @msti: if MASTER flag set, this holds the VLANs MST instance
>   * @vlist: sorted list of VLAN entries
>   * @rcu: used for entry destruction
>   *
> @@ -210,6 +211,8 @@ struct net_bridge_vlan {
>  		struct net_bridge_mcast_port	port_mcast_ctx;
>  	};
>  
> +	u16				msti;
> +
>  	struct list_head		vlist;
>  
>  	struct rcu_head			rcu;
> @@ -445,6 +448,7 @@ enum net_bridge_opts {
>  	BROPT_NO_LL_LEARN,
>  	BROPT_VLAN_BRIDGE_BINDING,
>  	BROPT_MCAST_VLAN_SNOOPING_ENABLED,
> +	BROPT_MST_ENABLED,
>  };
>  
>  struct net_bridge {
> @@ -1765,6 +1769,29 @@ static inline bool br_vlan_state_allowed(u8 state, bool learn_allow)
>  }
>  #endif
>  
> +/* br_mst.c */
> +#ifdef CONFIG_BRIDGE_VLAN_FILTERING

There is already such ifdef, you can embed all MST code inside it.

> +DECLARE_STATIC_KEY_FALSE(br_mst_used);
> +static inline bool br_mst_is_enabled(struct net_bridge *br)
> +{
> +	return static_branch_unlikely(&br_mst_used) &&
> +		br_opt_get(br, BROPT_MST_ENABLED);
> +}
> +
> +void br_mst_set_state(struct net_bridge_port *p, u16 msti, u8 state);
> +void br_mst_vlan_init_state(struct net_bridge_vlan *v);
> +int br_mst_set_enabled(struct net_bridge *br, bool on,
> +		       struct netlink_ext_ack *extack);
> +#else
> +static inline bool br_mst_is_enabled(struct net_bridge *br)
> +{
> +	return false;
> +}
> +
> +static inline void br_mst_set_state(struct net_bridge_port *p,
> +				    u16 msti, u8 state) {}
> +#endif
> +
>  struct nf_br_ops {
>  	int (*br_dev_xmit_hook)(struct sk_buff *skb);
>  };
> diff --git a/net/bridge/br_stp.c b/net/bridge/br_stp.c
> index 1d80f34a139c..82a97a021a57 100644
> --- a/net/bridge/br_stp.c
> +++ b/net/bridge/br_stp.c
> @@ -43,6 +43,9 @@ void br_set_state(struct net_bridge_port *p, unsigned int state)
>  		return;
>  
>  	p->state = state;
> +	if (br_opt_get(p->br, BROPT_MST_ENABLED))
> +		br_mst_set_state(p, 0, state);
> +
>  	err = switchdev_port_attr_set(p->dev, &attr, NULL);
>  	if (err && err != -EOPNOTSUPP)
>  		br_warn(p->br, "error setting offload STP state on port %u(%s)\n",
> diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
> index 7557e90b60e1..0f5e75ccac79 100644
> --- a/net/bridge/br_vlan.c
> +++ b/net/bridge/br_vlan.c
> @@ -226,6 +226,24 @@ static void nbp_vlan_rcu_free(struct rcu_head *rcu)
>  	kfree(v);
>  }
>  
> +static void br_vlan_init_state(struct net_bridge_vlan *v)
> +{
> +	struct net_bridge *br;
> +
> +	if (br_vlan_is_master(v))
> +		br = v->br;
> +	else
> +		br = v->port->br;
> +
> +	if (br_opt_get(br, BROPT_MST_ENABLED)) {
> +		br_mst_vlan_init_state(v);
> +		return;
> +	}
> +
> +	v->state = BR_STATE_FORWARDING;
> +	v->msti = 0;
> +}
> +
>  /* This is the shared VLAN add function which works for both ports and bridge
>   * devices. There are four possible calls to this function in terms of the
>   * vlan entry type:
> @@ -322,7 +340,7 @@ static int __vlan_add(struct net_bridge_vlan *v, u16 flags,
>  	}
>  
>  	/* set the state before publishing */
> -	v->state = BR_STATE_FORWARDING;
> +	br_vlan_init_state(v);
>  
>  	err = rhashtable_lookup_insert_fast(&vg->vlan_hash, &v->vnode,
>  					    br_vlan_rht_params);
> diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
> index a6382973b3e7..09112b56e79c 100644
> --- a/net/bridge/br_vlan_options.c
> +++ b/net/bridge/br_vlan_options.c
> @@ -99,6 +99,11 @@ static int br_vlan_modify_state(struct net_bridge_vlan_group *vg,
>  		return -EBUSY;
>  	}
>  
> +	if (br_opt_get(br, BROPT_MST_ENABLED)) {
> +		NL_SET_ERR_MSG_MOD(extack, "Can't modify vlan state directly when MST is enabled");
> +		return -EBUSY;
> +	}
> +
>  	if (v->state == state)
>  		return 0;
>  

