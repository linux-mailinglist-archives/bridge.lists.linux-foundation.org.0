Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7751E3F52
	for <lists.bridge@lfdr.de>; Wed, 27 May 2020 12:44:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0AF2986CD7;
	Wed, 27 May 2020 10:44:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cn68TCr_X8bE; Wed, 27 May 2020 10:44:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BC7C586CE0;
	Wed, 27 May 2020 10:44:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9E9CDC016F;
	Wed, 27 May 2020 10:44:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 394EFC016F
 for <bridge@lists.linux-foundation.org>; Wed, 27 May 2020 10:44:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 21765878FE
 for <bridge@lists.linux-foundation.org>; Wed, 27 May 2020 10:44:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AcV1lbZbEkMZ for <bridge@lists.linux-foundation.org>;
 Wed, 27 May 2020 10:44:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9E4B18783F
 for <bridge@lists.linux-foundation.org>; Wed, 27 May 2020 10:44:07 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id s8so23456050wrt.9
 for <bridge@lists.linux-foundation.org>; Wed, 27 May 2020 03:44:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=cyfVyRxGW8/NdsFeOI1Y5YAqa2rhehgoWDl3oYqjWXo=;
 b=NOoYje3ItNsgAwlUx+eNr2FCS5OON7gcEdsgiu+SV9WB5h+oLgFvxJe2NYL61y5oNl
 vv3apt1NQd9KLiO+MlVeM1DWrgS/cvox+CJQjwzSJaz+EgwqhY/VTPZq47jfeWaSQpaH
 3OCWJah52ccqHhHqJBq6WFESxqNaPfH4xdhLY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cyfVyRxGW8/NdsFeOI1Y5YAqa2rhehgoWDl3oYqjWXo=;
 b=HwxBeukTjIikxOgnqAYT4D1y6YiFtOSjMoOAdxV8ASXR6JZDTAKrFjFOt1uddceenT
 ptAyPDeP+1OHk5z4AawFv2r+5cuBiXwr+9gg3gmicuaQbI4rXT5xB2vkRVF0R3oI+6JZ
 o1abgrcK+rHPOcP00fyl4QpT/JQKsxL9ySUDJmxw9a68sLhGQDEjXJxOB2kFEStqPtn8
 43gIo/midBCedUQVEqV6MJ7WLCcMBqrHIqi8WUAEFpVgSPNWM1xllLFJyz56Eb4fGxF0
 VDPQiyrIil4RnQr+cUqm1v3Mp5drPG5Plrq2EQr4fw9BFakixvsJI2qns/7wROKix06K
 V/hA==
X-Gm-Message-State: AOAM533dnwLn2dPMoQNdFI2/HFrrbB7FYkO03hpLTLsu8Pyl4PtLRa5h
 wUvPyGyntW7zm8fKPbkCNP9MM6VAT/y9OA==
X-Google-Smtp-Source: ABdhPJz6b+lzhxLH9V771ui9xidTKahP5sYXiJU2UfDF14U3j153N8lSWE7ZGqIL95Ai8wEsqFR3Bw==
X-Received: by 2002:a5d:5006:: with SMTP id e6mr24149233wrt.170.1590576245491; 
 Wed, 27 May 2020 03:44:05 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id o8sm2324432wmb.20.2020.05.27.03.44.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 May 2020 03:44:04 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net,
 kuba@kernel.org, roopa@cumulusnetworks.com, mkubecek@suse.cz,
 UNGLinuxDriver@microchip.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bridge@lists.linux-foundation.org
References: <20200527123430.616826-1-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <77e0f250-208e-dcb6-d138-4df413db4e69@cumulusnetworks.com>
Date: Wed, 27 May 2020 13:44:02 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200527123430.616826-1-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next v2] bridge: mrp: Rework the MRP
	netlink interface
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

On 27/05/2020 15:34, Horatiu Vultur wrote:
> This patch reworks the MRP netlink interface. Before, each attribute
> represented a binary structure which made it hard to be extended.
> Therefore update the MRP netlink interface such that each existing
> attribute to be a nested attribute which contains the fields of the
> binary structures.
> In this way the MRP netlink interface can be extended without breaking
> the backwards compatibility. It is also using strict checking for
> attributes under the MRP top attribute.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
> 
> v2:
>  - make static br_mrp_*_parse functions
>  - return meaningful error messages in case attributes are missing
> 
> ---
>  include/uapi/linux/if_bridge.h |  64 +++++++-
>  net/bridge/br_mrp.c            |   8 +-
>  net/bridge/br_mrp_netlink.c    | 266 ++++++++++++++++++++++++++++-----
>  net/bridge/br_private_mrp.h    |   2 +-
>  4 files changed, 290 insertions(+), 50 deletions(-)
> 

Since this is still only in net-next the change seems fine.
Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

> diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
> index bd8c95488f161..5a43eb86c93bf 100644
> --- a/include/uapi/linux/if_bridge.h
> +++ b/include/uapi/linux/if_bridge.h
> @@ -169,17 +169,69 @@ enum {
>  	__IFLA_BRIDGE_MRP_MAX,
>  };
>  
> +#define IFLA_BRIDGE_MRP_MAX (__IFLA_BRIDGE_MRP_MAX - 1)
> +
> +enum {
> +	IFLA_BRIDGE_MRP_INSTANCE_UNSPEC,
> +	IFLA_BRIDGE_MRP_INSTANCE_RING_ID,
> +	IFLA_BRIDGE_MRP_INSTANCE_P_IFINDEX,
> +	IFLA_BRIDGE_MRP_INSTANCE_S_IFINDEX,
> +	__IFLA_BRIDGE_MRP_INSTANCE_MAX,
> +};
> +
> +#define IFLA_BRIDGE_MRP_INSTANCE_MAX (__IFLA_BRIDGE_MRP_INSTANCE_MAX - 1)
> +
> +enum {
> +	IFLA_BRIDGE_MRP_PORT_STATE_UNSPEC,
> +	IFLA_BRIDGE_MRP_PORT_STATE_STATE,
> +	__IFLA_BRIDGE_MRP_PORT_STATE_MAX,
> +};
> +
> +#define IFLA_BRIDGE_MRP_PORT_STATE_MAX (__IFLA_BRIDGE_MRP_PORT_STATE_MAX - 1)
> +
> +enum {
> +	IFLA_BRIDGE_MRP_PORT_ROLE_UNSPEC,
> +	IFLA_BRIDGE_MRP_PORT_ROLE_ROLE,
> +	__IFLA_BRIDGE_MRP_PORT_ROLE_MAX,
> +};
> +
> +#define IFLA_BRIDGE_MRP_PORT_ROLE_MAX (__IFLA_BRIDGE_MRP_PORT_ROLE_MAX - 1)
> +
> +enum {
> +	IFLA_BRIDGE_MRP_RING_STATE_UNSPEC,
> +	IFLA_BRIDGE_MRP_RING_STATE_RING_ID,
> +	IFLA_BRIDGE_MRP_RING_STATE_STATE,
> +	__IFLA_BRIDGE_MRP_RING_STATE_MAX,
> +};
> +
> +#define IFLA_BRIDGE_MRP_RING_STATE_MAX (__IFLA_BRIDGE_MRP_RING_STATE_MAX - 1)
> +
> +enum {
> +	IFLA_BRIDGE_MRP_RING_ROLE_UNSPEC,
> +	IFLA_BRIDGE_MRP_RING_ROLE_RING_ID,
> +	IFLA_BRIDGE_MRP_RING_ROLE_ROLE,
> +	__IFLA_BRIDGE_MRP_RING_ROLE_MAX,
> +};
> +
> +#define IFLA_BRIDGE_MRP_RING_ROLE_MAX (__IFLA_BRIDGE_MRP_RING_ROLE_MAX - 1)
> +
> +enum {
> +	IFLA_BRIDGE_MRP_START_TEST_UNSPEC,
> +	IFLA_BRIDGE_MRP_START_TEST_RING_ID,
> +	IFLA_BRIDGE_MRP_START_TEST_INTERVAL,
> +	IFLA_BRIDGE_MRP_START_TEST_MAX_MISS,
> +	IFLA_BRIDGE_MRP_START_TEST_PERIOD,
> +	__IFLA_BRIDGE_MRP_START_TEST_MAX,
> +};
> +
> +#define IFLA_BRIDGE_MRP_START_TEST_MAX (__IFLA_BRIDGE_MRP_START_TEST_MAX - 1)
> +
>  struct br_mrp_instance {
>  	__u32 ring_id;
>  	__u32 p_ifindex;
>  	__u32 s_ifindex;
>  };
>  
> -struct br_mrp_port_role {
> -	__u32 ring_id;
> -	__u32 role;
> -};
> -
>  struct br_mrp_ring_state {
>  	__u32 ring_id;
>  	__u32 ring_state;
> @@ -197,8 +249,6 @@ struct br_mrp_start_test {
>  	__u32 period;
>  };
>  
> -#define IFLA_BRIDGE_MRP_MAX (__IFLA_BRIDGE_MRP_MAX - 1)
> -
>  struct bridge_stp_xstats {
>  	__u64 transition_blk;
>  	__u64 transition_fwd;
> diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
> index 528d767eb026f..8ea59504ef47a 100644
> --- a/net/bridge/br_mrp.c
> +++ b/net/bridge/br_mrp.c
> @@ -376,24 +376,24 @@ int br_mrp_set_port_state(struct net_bridge_port *p,
>   * note: already called with rtnl_lock
>   */
>  int br_mrp_set_port_role(struct net_bridge_port *p,
> -			 struct br_mrp_port_role *role)
> +			 enum br_mrp_port_role_type role)
>  {
>  	struct br_mrp *mrp;
>  
>  	if (!p || !(p->flags & BR_MRP_AWARE))
>  		return -EINVAL;
>  
> -	mrp = br_mrp_find_id(p->br, role->ring_id);
> +	mrp = br_mrp_find_port(p->br, p);
>  
>  	if (!mrp)
>  		return -EINVAL;
>  
> -	if (role->role == BR_MRP_PORT_ROLE_PRIMARY)
> +	if (role == BR_MRP_PORT_ROLE_PRIMARY)
>  		rcu_assign_pointer(mrp->p_port, p);
>  	else
>  		rcu_assign_pointer(mrp->s_port, p);
>  
> -	br_mrp_port_switchdev_set_role(p, role->role);
> +	br_mrp_port_switchdev_set_role(p, role);
>  
>  	return 0;
>  }
> diff --git a/net/bridge/br_mrp_netlink.c b/net/bridge/br_mrp_netlink.c
> index 4a08a99519b04..d9de780d2ce06 100644
> --- a/net/bridge/br_mrp_netlink.c
> +++ b/net/bridge/br_mrp_netlink.c
> @@ -8,19 +8,222 @@
>  
>  static const struct nla_policy br_mrp_policy[IFLA_BRIDGE_MRP_MAX + 1] = {
>  	[IFLA_BRIDGE_MRP_UNSPEC]	= { .type = NLA_REJECT },
> -	[IFLA_BRIDGE_MRP_INSTANCE]	= { .type = NLA_EXACT_LEN,
> -				    .len = sizeof(struct br_mrp_instance)},
> -	[IFLA_BRIDGE_MRP_PORT_STATE]	= { .type = NLA_U32 },
> -	[IFLA_BRIDGE_MRP_PORT_ROLE]	= { .type = NLA_EXACT_LEN,
> -				    .len = sizeof(struct br_mrp_port_role)},
> -	[IFLA_BRIDGE_MRP_RING_STATE]	= { .type = NLA_EXACT_LEN,
> -				    .len = sizeof(struct br_mrp_ring_state)},
> -	[IFLA_BRIDGE_MRP_RING_ROLE]	= { .type = NLA_EXACT_LEN,
> -				    .len = sizeof(struct br_mrp_ring_role)},
> -	[IFLA_BRIDGE_MRP_START_TEST]	= { .type = NLA_EXACT_LEN,
> -				    .len = sizeof(struct br_mrp_start_test)},
> +	[IFLA_BRIDGE_MRP_INSTANCE]	= { .type = NLA_NESTED },
> +	[IFLA_BRIDGE_MRP_PORT_STATE]	= { .type = NLA_NESTED },
> +	[IFLA_BRIDGE_MRP_PORT_ROLE]	= { .type = NLA_NESTED },
> +	[IFLA_BRIDGE_MRP_RING_STATE]	= { .type = NLA_NESTED },
> +	[IFLA_BRIDGE_MRP_RING_ROLE]	= { .type = NLA_NESTED },
> +	[IFLA_BRIDGE_MRP_START_TEST]	= { .type = NLA_NESTED },
>  };
>  
> +static const struct nla_policy
> +br_mrp_instance_policy[IFLA_BRIDGE_MRP_INSTANCE_MAX + 1] = {
> +	[IFLA_BRIDGE_MRP_INSTANCE_UNSPEC]	= { .type = NLA_REJECT },
> +	[IFLA_BRIDGE_MRP_INSTANCE_RING_ID]	= { .type = NLA_U32 },
> +	[IFLA_BRIDGE_MRP_INSTANCE_P_IFINDEX]	= { .type = NLA_U32 },
> +	[IFLA_BRIDGE_MRP_INSTANCE_S_IFINDEX]	= { .type = NLA_U32 },
> +};
> +
> +static int br_mrp_instance_parse(struct net_bridge *br, struct nlattr *attr,
> +				 int cmd, struct netlink_ext_ack *extack)
> +{
> +	struct nlattr *tb[IFLA_BRIDGE_MRP_INSTANCE_MAX + 1];
> +	struct br_mrp_instance inst;
> +	int err;
> +
> +	err = nla_parse_nested(tb, IFLA_BRIDGE_MRP_INSTANCE_MAX, attr,
> +			       br_mrp_instance_policy, extack);
> +	if (err)
> +		return err;
> +
> +	if (!tb[IFLA_BRIDGE_MRP_INSTANCE_RING_ID] ||
> +	    !tb[IFLA_BRIDGE_MRP_INSTANCE_P_IFINDEX] ||
> +	    !tb[IFLA_BRIDGE_MRP_INSTANCE_S_IFINDEX]) {
> +		NL_SET_ERR_MSG_MOD(extack,
> +				   "Missing attribute: RING_ID or P_IFINDEX or S_IFINDEX");
> +		return -EINVAL;
> +	}
> +
> +	memset(&inst, 0, sizeof(inst));
> +
> +	inst.ring_id = nla_get_u32(tb[IFLA_BRIDGE_MRP_INSTANCE_RING_ID]);
> +	inst.p_ifindex = nla_get_u32(tb[IFLA_BRIDGE_MRP_INSTANCE_P_IFINDEX]);
> +	inst.s_ifindex = nla_get_u32(tb[IFLA_BRIDGE_MRP_INSTANCE_S_IFINDEX]);
> +
> +	if (cmd == RTM_SETLINK)
> +		return br_mrp_add(br, &inst);
> +	else
> +		return br_mrp_del(br, &inst);
> +
> +	return 0;
> +}
> +
> +static const struct nla_policy
> +br_mrp_port_state_policy[IFLA_BRIDGE_MRP_PORT_STATE_MAX + 1] = {
> +	[IFLA_BRIDGE_MRP_PORT_STATE_UNSPEC]	= { .type = NLA_REJECT },
> +	[IFLA_BRIDGE_MRP_PORT_STATE_STATE]	= { .type = NLA_U32 },
> +};
> +
> +static int br_mrp_port_state_parse(struct net_bridge_port *p,
> +				   struct nlattr *attr,
> +				   struct netlink_ext_ack *extack)
> +{
> +	struct nlattr *tb[IFLA_BRIDGE_MRP_PORT_STATE_MAX + 1];
> +	enum br_mrp_port_state_type state;
> +	int err;
> +
> +	err = nla_parse_nested(tb, IFLA_BRIDGE_MRP_PORT_STATE_MAX, attr,
> +			       br_mrp_port_state_policy, extack);
> +	if (err)
> +		return err;
> +
> +	if (!tb[IFLA_BRIDGE_MRP_PORT_STATE_STATE]) {
> +		NL_SET_ERR_MSG_MOD(extack, "Missing attribute: STATE");
> +		return -EINVAL;
> +	}
> +
> +	state = nla_get_u32(tb[IFLA_BRIDGE_MRP_PORT_STATE_STATE]);
> +
> +	return br_mrp_set_port_state(p, state);
> +}
> +
> +static const struct nla_policy
> +br_mrp_port_role_policy[IFLA_BRIDGE_MRP_PORT_ROLE_MAX + 1] = {
> +	[IFLA_BRIDGE_MRP_PORT_ROLE_UNSPEC]	= { .type = NLA_REJECT },
> +	[IFLA_BRIDGE_MRP_PORT_ROLE_ROLE]	= { .type = NLA_U32 },
> +};
> +
> +static int br_mrp_port_role_parse(struct net_bridge_port *p,
> +				  struct nlattr *attr,
> +				  struct netlink_ext_ack *extack)
> +{
> +	struct nlattr *tb[IFLA_BRIDGE_MRP_PORT_ROLE_MAX + 1];
> +	enum br_mrp_port_role_type role;
> +	int err;
> +
> +	err = nla_parse_nested(tb, IFLA_BRIDGE_MRP_PORT_ROLE_MAX, attr,
> +			       br_mrp_port_role_policy, extack);
> +	if (err)
> +		return err;
> +
> +	if (!tb[IFLA_BRIDGE_MRP_PORT_ROLE_ROLE]) {
> +		NL_SET_ERR_MSG_MOD(extack, "Missing attribute: ROLE");
> +		return -EINVAL;
> +	}
> +
> +	role = nla_get_u32(tb[IFLA_BRIDGE_MRP_PORT_ROLE_ROLE]);
> +
> +	return br_mrp_set_port_role(p, role);
> +}
> +
> +static const struct nla_policy
> +br_mrp_ring_state_policy[IFLA_BRIDGE_MRP_RING_STATE_MAX + 1] = {
> +	[IFLA_BRIDGE_MRP_RING_STATE_UNSPEC]	= { .type = NLA_REJECT },
> +	[IFLA_BRIDGE_MRP_RING_STATE_RING_ID]	= { .type = NLA_U32 },
> +	[IFLA_BRIDGE_MRP_RING_STATE_STATE]	= { .type = NLA_U32 },
> +};
> +
> +static int br_mrp_ring_state_parse(struct net_bridge *br, struct nlattr *attr,
> +				   struct netlink_ext_ack *extack)
> +{
> +	struct nlattr *tb[IFLA_BRIDGE_MRP_RING_STATE_MAX + 1];
> +	struct br_mrp_ring_state state;
> +	int err;
> +
> +	err = nla_parse_nested(tb, IFLA_BRIDGE_MRP_RING_STATE_MAX, attr,
> +			       br_mrp_ring_state_policy, extack);
> +	if (err)
> +		return err;
> +
> +	if (!tb[IFLA_BRIDGE_MRP_RING_STATE_RING_ID] ||
> +	    !tb[IFLA_BRIDGE_MRP_RING_STATE_STATE]) {
> +		NL_SET_ERR_MSG_MOD(extack,
> +				   "Missing attribute: RING_ID or STATE");
> +		return -EINVAL;
> +	}
> +
> +	memset(&state, 0x0, sizeof(state));
> +
> +	state.ring_id = nla_get_u32(tb[IFLA_BRIDGE_MRP_RING_STATE_RING_ID]);
> +	state.ring_state = nla_get_u32(tb[IFLA_BRIDGE_MRP_RING_STATE_STATE]);
> +
> +	return br_mrp_set_ring_state(br, &state);
> +}
> +
> +static const struct nla_policy
> +br_mrp_ring_role_policy[IFLA_BRIDGE_MRP_RING_ROLE_MAX + 1] = {
> +	[IFLA_BRIDGE_MRP_RING_ROLE_UNSPEC]	= { .type = NLA_REJECT },
> +	[IFLA_BRIDGE_MRP_RING_ROLE_RING_ID]	= { .type = NLA_U32 },
> +	[IFLA_BRIDGE_MRP_RING_ROLE_ROLE]	= { .type = NLA_U32 },
> +};
> +
> +static int br_mrp_ring_role_parse(struct net_bridge *br, struct nlattr *attr,
> +				  struct netlink_ext_ack *extack)
> +{
> +	struct nlattr *tb[IFLA_BRIDGE_MRP_RING_ROLE_MAX + 1];
> +	struct br_mrp_ring_role role;
> +	int err;
> +
> +	err = nla_parse_nested(tb, IFLA_BRIDGE_MRP_RING_ROLE_MAX, attr,
> +			       br_mrp_ring_role_policy, extack);
> +	if (err)
> +		return err;
> +
> +	if (!tb[IFLA_BRIDGE_MRP_RING_ROLE_RING_ID] ||
> +	    !tb[IFLA_BRIDGE_MRP_RING_ROLE_ROLE]) {
> +		NL_SET_ERR_MSG_MOD(extack,
> +				   "Missing attribute: RING_ID or ROLE");
> +		return -EINVAL;
> +	}
> +
> +	memset(&role, 0x0, sizeof(role));
> +
> +	role.ring_id = nla_get_u32(tb[IFLA_BRIDGE_MRP_RING_ROLE_RING_ID]);
> +	role.ring_role = nla_get_u32(tb[IFLA_BRIDGE_MRP_RING_ROLE_ROLE]);
> +
> +	return br_mrp_set_ring_role(br, &role);
> +}
> +
> +static const struct nla_policy
> +br_mrp_start_test_policy[IFLA_BRIDGE_MRP_START_TEST_MAX + 1] = {
> +	[IFLA_BRIDGE_MRP_START_TEST_UNSPEC]	= { .type = NLA_REJECT },
> +	[IFLA_BRIDGE_MRP_START_TEST_RING_ID]	= { .type = NLA_U32 },
> +	[IFLA_BRIDGE_MRP_START_TEST_INTERVAL]	= { .type = NLA_U32 },
> +	[IFLA_BRIDGE_MRP_START_TEST_MAX_MISS]	= { .type = NLA_U32 },
> +	[IFLA_BRIDGE_MRP_START_TEST_PERIOD]	= { .type = NLA_U32 },
> +};
> +
> +static int br_mrp_start_test_parse(struct net_bridge *br, struct nlattr *attr,
> +				   struct netlink_ext_ack *extack)
> +{
> +	struct nlattr *tb[IFLA_BRIDGE_MRP_START_TEST_MAX + 1];
> +	struct br_mrp_start_test test;
> +	int err;
> +
> +	err = nla_parse_nested(tb, IFLA_BRIDGE_MRP_START_TEST_MAX, attr,
> +			       br_mrp_start_test_policy, extack);
> +	if (err)
> +		return err;
> +
> +	if (!tb[IFLA_BRIDGE_MRP_START_TEST_RING_ID] ||
> +	    !tb[IFLA_BRIDGE_MRP_START_TEST_INTERVAL] ||
> +	    !tb[IFLA_BRIDGE_MRP_START_TEST_MAX_MISS] ||
> +	    !tb[IFLA_BRIDGE_MRP_START_TEST_PERIOD]) {
> +		NL_SET_ERR_MSG_MOD(extack,
> +				   "Missing attribute: RING_ID or INTERVAL or MAX_MISS or PERIOD");
> +		return -EINVAL;
> +	}
> +
> +	memset(&test, 0x0, sizeof(test));
> +
> +	test.ring_id = nla_get_u32(tb[IFLA_BRIDGE_MRP_START_TEST_RING_ID]);
> +	test.interval = nla_get_u32(tb[IFLA_BRIDGE_MRP_START_TEST_INTERVAL]);
> +	test.max_miss = nla_get_u32(tb[IFLA_BRIDGE_MRP_START_TEST_MAX_MISS]);
> +	test.period = nla_get_u32(tb[IFLA_BRIDGE_MRP_START_TEST_PERIOD]);
> +
> +	return br_mrp_start_test(br, &test);
> +}
> +
>  int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
>  		 struct nlattr *attr, int cmd, struct netlink_ext_ack *extack)
>  {
> @@ -44,58 +247,45 @@ int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
>  		return err;
>  
>  	if (tb[IFLA_BRIDGE_MRP_INSTANCE]) {
> -		struct br_mrp_instance *instance =
> -			nla_data(tb[IFLA_BRIDGE_MRP_INSTANCE]);
> -
> -		if (cmd == RTM_SETLINK)
> -			err = br_mrp_add(br, instance);
> -		else
> -			err = br_mrp_del(br, instance);
> +		err = br_mrp_instance_parse(br, tb[IFLA_BRIDGE_MRP_INSTANCE],
> +					    cmd, extack);
>  		if (err)
>  			return err;
>  	}
>  
>  	if (tb[IFLA_BRIDGE_MRP_PORT_STATE]) {
> -		enum br_mrp_port_state_type state =
> -			nla_get_u32(tb[IFLA_BRIDGE_MRP_PORT_STATE]);
> -
> -		err = br_mrp_set_port_state(p, state);
> +		err = br_mrp_port_state_parse(p, tb[IFLA_BRIDGE_MRP_PORT_STATE],
> +					      extack);
>  		if (err)
>  			return err;
>  	}
>  
>  	if (tb[IFLA_BRIDGE_MRP_PORT_ROLE]) {
> -		struct br_mrp_port_role *role =
> -			nla_data(tb[IFLA_BRIDGE_MRP_PORT_ROLE]);
> -
> -		err = br_mrp_set_port_role(p, role);
> +		err = br_mrp_port_role_parse(p, tb[IFLA_BRIDGE_MRP_PORT_ROLE],
> +					     extack);
>  		if (err)
>  			return err;
>  	}
>  
>  	if (tb[IFLA_BRIDGE_MRP_RING_STATE]) {
> -		struct br_mrp_ring_state *state =
> -			nla_data(tb[IFLA_BRIDGE_MRP_RING_STATE]);
> -
> -		err = br_mrp_set_ring_state(br, state);
> +		err = br_mrp_ring_state_parse(br,
> +					      tb[IFLA_BRIDGE_MRP_RING_STATE],
> +					      extack);
>  		if (err)
>  			return err;
>  	}
>  
>  	if (tb[IFLA_BRIDGE_MRP_RING_ROLE]) {
> -		struct br_mrp_ring_role *role =
> -			nla_data(tb[IFLA_BRIDGE_MRP_RING_ROLE]);
> -
> -		err = br_mrp_set_ring_role(br, role);
> +		err = br_mrp_ring_role_parse(br, tb[IFLA_BRIDGE_MRP_RING_ROLE],
> +					     extack);
>  		if (err)
>  			return err;
>  	}
>  
>  	if (tb[IFLA_BRIDGE_MRP_START_TEST]) {
> -		struct br_mrp_start_test *test =
> -			nla_data(tb[IFLA_BRIDGE_MRP_START_TEST]);
> -
> -		err = br_mrp_start_test(br, test);
> +		err = br_mrp_start_test_parse(br,
> +					      tb[IFLA_BRIDGE_MRP_START_TEST],
> +					      extack);
>  		if (err)
>  			return err;
>  	}
> diff --git a/net/bridge/br_private_mrp.h b/net/bridge/br_private_mrp.h
> index 2921a4b59f8e7..a0f53cc3ab85c 100644
> --- a/net/bridge/br_private_mrp.h
> +++ b/net/bridge/br_private_mrp.h
> @@ -37,7 +37,7 @@ int br_mrp_del(struct net_bridge *br, struct br_mrp_instance *instance);
>  int br_mrp_set_port_state(struct net_bridge_port *p,
>  			  enum br_mrp_port_state_type state);
>  int br_mrp_set_port_role(struct net_bridge_port *p,
> -			 struct br_mrp_port_role *role);
> +			 enum br_mrp_port_role_type role);
>  int br_mrp_set_ring_state(struct net_bridge *br,
>  			  struct br_mrp_ring_state *state);
>  int br_mrp_set_ring_role(struct net_bridge *br, struct br_mrp_ring_role *role);
> 

