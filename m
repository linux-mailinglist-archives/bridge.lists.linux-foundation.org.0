Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B95E3480712
	for <lists.bridge@lfdr.de>; Tue, 28 Dec 2021 08:48:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6638A60A9E;
	Tue, 28 Dec 2021 07:48:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hoPZE2X29bVh; Tue, 28 Dec 2021 07:48:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id BA0AA60A97;
	Tue, 28 Dec 2021 07:48:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7F4EFC006E;
	Tue, 28 Dec 2021 07:48:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6BD5EC0012
 for <bridge@lists.linux-foundation.org>; Tue, 28 Dec 2021 07:48:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5298560A97
 for <bridge@lists.linux-foundation.org>; Tue, 28 Dec 2021 07:48:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RcQIjgtIAmog for <bridge@lists.linux-foundation.org>;
 Tue, 28 Dec 2021 07:48:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2E00160A93
 for <bridge@lists.linux-foundation.org>; Tue, 28 Dec 2021 07:48:46 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 08C5561180;
 Tue, 28 Dec 2021 07:48:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CF51C36AE8;
 Tue, 28 Dec 2021 07:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1640677724;
 bh=Ru/VX84qZ9i8SqAI0BDyiw6l+oMBXweHbnTM7nIfTHg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r8yx6BLBVfjR6lhoKCobNissmorasFAxHnYxnuYWCEhy2opsWzlsVEMq8HT3V30pG
 uxd6AVbQQ5/QWEAyKWztDcjtO5DIHcgDb0G8SqOorSKi6BXrP3ez3ZGRfex5bldLy5
 KZVKV998UczS5n2lGH1FNYTZskvABpZaLANvSGug=
Date: Tue, 28 Dec 2021 08:48:36 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <YcrBVOqvlscLiJNi@kroah.com>
References: <20211227172116.320768-1-nikolay@nvidia.com>
 <20211227172116.320768-3-nikolay@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211227172116.320768-3-nikolay@nvidia.com>
Cc: herbert@gondor.apana.org.au, eric.dumazet@gmail.com, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, stable@vger.kernel.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net 2/2] net: bridge: mcast: add and enforce
 startup query interval minimum
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

On Mon, Dec 27, 2021 at 07:21:16PM +0200, Nikolay Aleksandrov wrote:
> As reported[1] if startup query interval is set too low in combination with
> large number of startup queries and we have multiple bridges or even a
> single bridge with multiple querier vlans configured we can crash the
> machine. Add a 1 second minimum which must be enforced by overwriting the
> value if set lower (i.e. without returning an error) to avoid breaking
> user-space. If that happens a log message is emitted to let the admin know
> that the startup interval has been set to the minimum. It doesn't make
> sense to make the startup interval lower than the normal query interval
> so use the same value of 1 second. The issue has been present since these
> intervals could be user-controlled.
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
> index 998da4a2d209..de2409889489 100644
> --- a/net/bridge/br_multicast.c
> +++ b/net/bridge/br_multicast.c
> @@ -4538,6 +4538,22 @@ void br_multicast_set_query_intvl(struct net_bridge_mcast *brmctx,
>  	brmctx->multicast_query_interval = intvl_jiffies;
>  }
>  
> +void br_multicast_set_startup_query_intvl(struct net_bridge_mcast *brmctx,
> +					  unsigned long val)
> +{
> +	unsigned long intvl_jiffies = clock_t_to_jiffies(val);
> +
> +	if (intvl_jiffies < BR_MULTICAST_STARTUP_QUERY_INTVL_MIN) {
> +		br_info(brmctx->br,
> +			"trying to set multicast startup query interval below minimum, setting to %lu (%ums)\n",
> +			jiffies_to_clock_t(BR_MULTICAST_STARTUP_QUERY_INTVL_MIN),
> +			jiffies_to_msecs(BR_MULTICAST_STARTUP_QUERY_INTVL_MIN));
> +		intvl_jiffies = BR_MULTICAST_STARTUP_QUERY_INTVL_MIN;
> +	}
> +
> +	brmctx->multicast_startup_query_interval = intvl_jiffies;
> +}
> +
>  /**
>   * br_multicast_list_adjacent - Returns snooped multicast addresses
>   * @dev:	The bridge port adjacent to which to retrieve addresses
> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> index 701dd8b8455e..2ff83d84230d 100644
> --- a/net/bridge/br_netlink.c
> +++ b/net/bridge/br_netlink.c
> @@ -1369,7 +1369,7 @@ static int br_changelink(struct net_device *brdev, struct nlattr *tb[],
>  	if (data[IFLA_BR_MCAST_STARTUP_QUERY_INTVL]) {
>  		u64 val = nla_get_u64(data[IFLA_BR_MCAST_STARTUP_QUERY_INTVL]);
>  
> -		br->multicast_ctx.multicast_startup_query_interval = clock_t_to_jiffies(val);
> +		br_multicast_set_startup_query_intvl(&br->multicast_ctx, val);
>  	}
>  
>  	if (data[IFLA_BR_MCAST_STATS_ENABLED]) {
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 4ed7f11042e8..2187a0c3fd22 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -29,6 +29,7 @@
>  
>  #define BR_MULTICAST_DEFAULT_HASH_MAX 4096
>  #define BR_MULTICAST_QUERY_INTVL_MIN msecs_to_jiffies(1000)
> +#define BR_MULTICAST_STARTUP_QUERY_INTVL_MIN BR_MULTICAST_QUERY_INTVL_MIN
>  
>  #define BR_HWDOM_MAX BITS_PER_LONG
>  
> @@ -966,6 +967,8 @@ size_t br_multicast_querier_state_size(void);
>  size_t br_rports_size(const struct net_bridge_mcast *brmctx);
>  void br_multicast_set_query_intvl(struct net_bridge_mcast *brmctx,
>  				  unsigned long val);
> +void br_multicast_set_startup_query_intvl(struct net_bridge_mcast *brmctx,
> +					  unsigned long val);
>  
>  static inline bool br_group_is_l2(const struct br_ip *group)
>  {
> diff --git a/net/bridge/br_sysfs_br.c b/net/bridge/br_sysfs_br.c
> index f5bd1114a434..7b0c19772111 100644
> --- a/net/bridge/br_sysfs_br.c
> +++ b/net/bridge/br_sysfs_br.c
> @@ -706,7 +706,7 @@ static ssize_t multicast_startup_query_interval_show(
>  static int set_startup_query_interval(struct net_bridge *br, unsigned long val,
>  				      struct netlink_ext_ack *extack)
>  {
> -	br->multicast_ctx.multicast_startup_query_interval = clock_t_to_jiffies(val);
> +	br_multicast_set_startup_query_intvl(&br->multicast_ctx, val);
>  	return 0;
>  }
>  
> diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
> index bf1ac0874279..a6382973b3e7 100644
> --- a/net/bridge/br_vlan_options.c
> +++ b/net/bridge/br_vlan_options.c
> @@ -535,7 +535,7 @@ static int br_vlan_process_global_one_opts(const struct net_bridge *br,
>  		u64 val;
>  
>  		val = nla_get_u64(tb[BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_INTVL]);
> -		v->br_mcast_ctx.multicast_startup_query_interval = clock_t_to_jiffies(val);
> +		br_multicast_set_startup_query_intvl(&v->br_mcast_ctx, val);
>  		*changed = true;
>  	}
>  	if (tb[BRIDGE_VLANDB_GOPTS_MCAST_QUERIER]) {
> -- 
> 2.33.1
> 

<formletter>

This is not the correct way to submit patches for inclusion in the
stable kernel tree.  Please read:
    https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
for how to do this properly.

</formletter>
