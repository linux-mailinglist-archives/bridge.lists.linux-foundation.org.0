Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 53114480715
	for <lists.bridge@lfdr.de>; Tue, 28 Dec 2021 08:49:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8917581BB0;
	Tue, 28 Dec 2021 07:49:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lt5OEXPNfi8a; Tue, 28 Dec 2021 07:49:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id CC1CD81BE3;
	Tue, 28 Dec 2021 07:49:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AEFB4C006E;
	Tue, 28 Dec 2021 07:49:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6B61CC0012
 for <bridge@lists.linux-foundation.org>; Tue, 28 Dec 2021 07:49:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6210860A9F
 for <bridge@lists.linux-foundation.org>; Tue, 28 Dec 2021 07:49:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qTROPLR2Dd0O for <bridge@lists.linux-foundation.org>;
 Tue, 28 Dec 2021 07:49:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7B11460A93
 for <bridge@lists.linux-foundation.org>; Tue, 28 Dec 2021 07:49:00 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C08686117B;
 Tue, 28 Dec 2021 07:48:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEDDDC36AE8;
 Tue, 28 Dec 2021 07:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1640677739;
 bh=vjWCJZfAwXXP20rXbMDbhYZggarfLpPbp9icpEcf7X0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ILxAr2Y9+p0dzQD48EjjDP4M8FwIQSWlgvEN82u6eEuaP/8HsrG+ljcUMnsZOc+7Y
 o76Z716RwIEeN13hwLqbKOgjKWtqhV1cMqlQFkkUwXRLQ0FHuZ1HS3WniOoW1MuIzj
 mn5IdCE9gvPXQ2dA1+Fcl1adZ0zedimjV9zAVpns=
Date: Tue, 28 Dec 2021 08:48:44 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <YcrBXNJ5+ldyR+Ea@kroah.com>
References: <20211227172116.320768-1-nikolay@nvidia.com>
 <20211227172116.320768-2-nikolay@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211227172116.320768-2-nikolay@nvidia.com>
Cc: herbert@gondor.apana.org.au, eric.dumazet@gmail.com, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, stable@vger.kernel.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net 1/2] net: bridge: mcast: add and enforce
 query interval minimum
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

On Mon, Dec 27, 2021 at 07:21:15PM +0200, Nikolay Aleksandrov wrote:
> As reported[1] if query interval is set too low and we have multiple
> bridges or even a single bridge with multiple querier vlans configured
> we can crash the machine. Add a 1 second minimum which must be enforced
> by overwriting the value if set lower (i.e. without returning an error) to
> avoid breaking user-space. If that happens a log message is emitted to let
> the administrator know that the interval has been set to the minimum.
> The issue has been present since these intervals could be user-controlled.
> 
> [1] https://lore.kernel.org/netdev/e8b9ce41-57b9-b6e2-a46a-ff9c791cf0ba@gmail.com/
> 
> Fixes: d902eee43f19 ("bridge: Add multicast count/interval sysfs entries")
> Reported-by: Eric Dumazet <eric.dumazet@gmail.com>
> Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> ---
>  net/bridge/br_multicast.c    | 16 ++++++++++++++++
>  net/bridge/br_netlink.c      |  2 +-
>  net/bridge/br_private.h      |  3 +++
>  net/bridge/br_sysfs_br.c     |  2 +-
>  net/bridge/br_vlan_options.c |  2 +-
>  5 files changed, 22 insertions(+), 3 deletions(-)
> 
> diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
> index f3d751105343..998da4a2d209 100644
> --- a/net/bridge/br_multicast.c
> +++ b/net/bridge/br_multicast.c
> @@ -4522,6 +4522,22 @@ int br_multicast_set_mld_version(struct net_bridge_mcast *brmctx,
>  }
>  #endif
>  
> +void br_multicast_set_query_intvl(struct net_bridge_mcast *brmctx,
> +				  unsigned long val)
> +{
> +	unsigned long intvl_jiffies = clock_t_to_jiffies(val);
> +
> +	if (intvl_jiffies < BR_MULTICAST_QUERY_INTVL_MIN) {
> +		br_info(brmctx->br,
> +			"trying to set multicast query interval below minimum, setting to %lu (%ums)\n",
> +			jiffies_to_clock_t(BR_MULTICAST_QUERY_INTVL_MIN),
> +			jiffies_to_msecs(BR_MULTICAST_QUERY_INTVL_MIN));
> +		intvl_jiffies = BR_MULTICAST_QUERY_INTVL_MIN;
> +	}
> +
> +	brmctx->multicast_query_interval = intvl_jiffies;
> +}
> +
>  /**
>   * br_multicast_list_adjacent - Returns snooped multicast addresses
>   * @dev:	The bridge port adjacent to which to retrieve addresses
> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> index 0c8b5f1a15bc..701dd8b8455e 100644
> --- a/net/bridge/br_netlink.c
> +++ b/net/bridge/br_netlink.c
> @@ -1357,7 +1357,7 @@ static int br_changelink(struct net_device *brdev, struct nlattr *tb[],
>  	if (data[IFLA_BR_MCAST_QUERY_INTVL]) {
>  		u64 val = nla_get_u64(data[IFLA_BR_MCAST_QUERY_INTVL]);
>  
> -		br->multicast_ctx.multicast_query_interval = clock_t_to_jiffies(val);
> +		br_multicast_set_query_intvl(&br->multicast_ctx, val);
>  	}
>  
>  	if (data[IFLA_BR_MCAST_QUERY_RESPONSE_INTVL]) {
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index c0efd697865a..4ed7f11042e8 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -28,6 +28,7 @@
>  #define BR_MAX_PORTS	(1<<BR_PORT_BITS)
>  
>  #define BR_MULTICAST_DEFAULT_HASH_MAX 4096
> +#define BR_MULTICAST_QUERY_INTVL_MIN msecs_to_jiffies(1000)
>  
>  #define BR_HWDOM_MAX BITS_PER_LONG
>  
> @@ -963,6 +964,8 @@ int br_multicast_dump_querier_state(struct sk_buff *skb,
>  				    int nest_attr);
>  size_t br_multicast_querier_state_size(void);
>  size_t br_rports_size(const struct net_bridge_mcast *brmctx);
> +void br_multicast_set_query_intvl(struct net_bridge_mcast *brmctx,
> +				  unsigned long val);
>  
>  static inline bool br_group_is_l2(const struct br_ip *group)
>  {
> diff --git a/net/bridge/br_sysfs_br.c b/net/bridge/br_sysfs_br.c
> index d9a89ddd0331..f5bd1114a434 100644
> --- a/net/bridge/br_sysfs_br.c
> +++ b/net/bridge/br_sysfs_br.c
> @@ -658,7 +658,7 @@ static ssize_t multicast_query_interval_show(struct device *d,
>  static int set_query_interval(struct net_bridge *br, unsigned long val,
>  			      struct netlink_ext_ack *extack)
>  {
> -	br->multicast_ctx.multicast_query_interval = clock_t_to_jiffies(val);
> +	br_multicast_set_query_intvl(&br->multicast_ctx, val);
>  	return 0;
>  }
>  
> diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
> index 8ffd4ed2563c..bf1ac0874279 100644
> --- a/net/bridge/br_vlan_options.c
> +++ b/net/bridge/br_vlan_options.c
> @@ -521,7 +521,7 @@ static int br_vlan_process_global_one_opts(const struct net_bridge *br,
>  		u64 val;
>  
>  		val = nla_get_u64(tb[BRIDGE_VLANDB_GOPTS_MCAST_QUERY_INTVL]);
> -		v->br_mcast_ctx.multicast_query_interval = clock_t_to_jiffies(val);
> +		br_multicast_set_query_intvl(&v->br_mcast_ctx, val);
>  		*changed = true;
>  	}
>  	if (tb[BRIDGE_VLANDB_GOPTS_MCAST_QUERY_RESPONSE_INTVL]) {
> -- 
> 2.33.1
> 

<formletter>

This is not the correct way to submit patches for inclusion in the
stable kernel tree.  Please read:
    https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
for how to do this properly.

</formletter>
