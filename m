Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BA14AB902
	for <lists.bridge@lfdr.de>; Mon,  7 Feb 2022 11:49:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66AD340291;
	Mon,  7 Feb 2022 10:49:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pF4DJISMbtee; Mon,  7 Feb 2022 10:49:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id A78654015C;
	Mon,  7 Feb 2022 10:49:30 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 585C2C0073;
	Mon,  7 Feb 2022 10:49:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EBAD2C000B
 for <bridge@lists.linux-foundation.org>; Mon,  7 Feb 2022 10:49:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C472B40298
 for <bridge@lists.linux-foundation.org>; Mon,  7 Feb 2022 10:49:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rHz9jhS3axGD for <bridge@lists.linux-foundation.org>;
 Mon,  7 Feb 2022 10:49:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AB77D40012
 for <bridge@lists.linux-foundation.org>; Mon,  7 Feb 2022 10:49:28 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 79B445C01E0;
 Mon,  7 Feb 2022 05:49:27 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 07 Feb 2022 05:49:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=TLHvkqnvKu+Cu1jgu
 lQq7VpWe7mcePPJ4UZ8y6nbUXU=; b=YaT8XGxe2r7OcLMTmBgGzNtKo8z5JtMK2
 20qSf7vcA449F+polHmIDX8Ut43AM7jg5/jShw5neeWKotINsrOmr7wu+vle5jKx
 D1MuSttwfPfCCiXPRDTyCAwzhbGHQC0AbKEB8WuZ9EIyL8HZGGjnPSDZU5S10SFO
 wzW9qzOopd3KB3uacTChG7J/GIQGYGsUyHcaESTvUqHLKlxxfYkYZ3gIIIfdnQ+y
 mrNuSz+3GQFz4cDNBcwRT9X8SRZYplZ72WhZbJb9KqAgJuhjy8DTPPR6IM3um7EL
 GbdG6dYErX6fKUSefgE2XYLLY2DNRYBp1BfqGIxEBgJtfMkVXZZ/g==
X-ME-Sender: <xms:N_kAYhS2OhRBctBZt3ijW2rOoB4AXOGVRWy6Ho-tjlmij9h2dUUnmA>
 <xme:N_kAYqya-9aTBbPxdSsaC3itDgXif2FH2G61_-DhUVkBTFVqlxI3DoPDwKyyWpANt
 wH7MkWWtZ41Jb4>
X-ME-Received: <xmr:N_kAYm27B0z0j4PeTHLXOJkh3HyrskEgPf4LUTT36EopY0VQ0ZKpaz6BWUt696i0Nhyrh8IGEN754atKO1ON-u_Cnh4DNQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrheehgddulecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcuufgt
 hhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrthhtvg
 hrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudehleet
 necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepihguoh
 hstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:N_kAYpAnDuUB5T1nzIcd-dmDokb3QjP8yH5jpIbwSr7vUYtqVuwd7Q>
 <xmx:N_kAYqj8ldN6jr93_YG1B_szJb2kJ6r2BQXPdL5UC8v0vqNwmD99Bw>
 <xmx:N_kAYtofovMcmBtSkBbuakcIiPqorY8xfyFuqcUXNrIrA7QO6XDokQ>
 <xmx:N_kAYlXI0UQYIGFYRhkYcnf1HSe-IG4jVqg2kScXTdW2noT0hjt8Zw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 7 Feb 2022 05:49:26 -0500 (EST)
Date: Mon, 7 Feb 2022 12:49:22 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <YgD5MglBy/UbN0uX@shredder>
References: <20220207100742.15087-1-schultz.hans+netdev@gmail.com>
 <20220207100742.15087-2-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220207100742.15087-2-schultz.hans+netdev@gmail.com>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Hans Schultz <schultz.hans+netdev@gmail.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/4] net: bridge: Add support for
 bridge port in locked mode
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

On Mon, Feb 07, 2022 at 11:07:39AM +0100, Hans Schultz wrote:
> In a 802.1X scenario, clients connected to a bridge port shall not
> be allowed to have traffic forwarded until fully authenticated.
> A static fdb entry of the clients MAC address for the bridge port
> unlocks the client and allows bidirectional communication.
> 
> This scenario is facilitated with setting the bridge port in locked
> mode, which is also supported by various switchcore chipsets.
> 
> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
> ---
>  include/linux/if_bridge.h    |  1 +
>  include/uapi/linux/if_link.h |  1 +
>  net/bridge/br_input.c        | 10 +++++++++-
>  net/bridge/br_netlink.c      |  6 +++++-
>  4 files changed, 16 insertions(+), 2 deletions(-)
> 
> diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
> index 509e18c7e740..3aae023a9353 100644
> --- a/include/linux/if_bridge.h
> +++ b/include/linux/if_bridge.h
> @@ -58,6 +58,7 @@ struct br_ip_list {
>  #define BR_MRP_LOST_CONT	BIT(18)
>  #define BR_MRP_LOST_IN_CONT	BIT(19)
>  #define BR_TX_FWD_OFFLOAD	BIT(20)
> +#define BR_PORT_LOCKED		BIT(21)
>  
>  #define BR_DEFAULT_AGEING_TIME	(300 * HZ)
>  
> diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
> index 6218f93f5c1a..8fa2648fbc83 100644
> --- a/include/uapi/linux/if_link.h
> +++ b/include/uapi/linux/if_link.h
> @@ -532,6 +532,7 @@ enum {
>  	IFLA_BRPORT_GROUP_FWD_MASK,
>  	IFLA_BRPORT_NEIGH_SUPPRESS,
>  	IFLA_BRPORT_ISOLATED,
> +	IFLA_BRPORT_LOCKED,

Please add it at the end to avoid breaking uAPI

>  	IFLA_BRPORT_BACKUP_PORT,
>  	IFLA_BRPORT_MRP_RING_OPEN,
>  	IFLA_BRPORT_MRP_IN_OPEN,
> diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
> index b50382f957c1..469e3adbce07 100644
> --- a/net/bridge/br_input.c
> +++ b/net/bridge/br_input.c
> @@ -69,6 +69,7 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
>  	struct net_bridge_port *p = br_port_get_rcu(skb->dev);
>  	enum br_pkt_type pkt_type = BR_PKT_UNICAST;
>  	struct net_bridge_fdb_entry *dst = NULL;
> +	struct net_bridge_fdb_entry *fdb_entry;
>  	struct net_bridge_mcast_port *pmctx;
>  	struct net_bridge_mdb_entry *mdst;
>  	bool local_rcv, mcast_hit = false;
> @@ -81,6 +82,8 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
>  	if (!p || p->state == BR_STATE_DISABLED)
>  		goto drop;
>  
> +	br = p->br;
> +
>  	brmctx = &p->br->multicast_ctx;
>  	pmctx = &p->multicast_ctx;
>  	state = p->state;
> @@ -88,10 +91,15 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
>  				&state, &vlan))
>  		goto out;
>  
> +	if (p->flags & BR_PORT_LOCKED) {
> +		fdb_entry = br_fdb_find_rcu(br, eth_hdr(skb)->h_source, vid);
> +		if (!(fdb_entry && fdb_entry->dst == p))
> +			goto drop;

I'm not familiar with 802.1X so I have some questions:

1. Do we need to differentiate between no FDB entry and an FDB entry
pointing to a different port than we expect?

2. Does user space care about SAs that did not pass the check? That is,
does it need to see notifications? Counters?

> +	}
> +
>  	nbp_switchdev_frame_mark(p, skb);
>  
>  	/* insert into forwarding database after filtering to avoid spoofing */
> -	br = p->br;
>  	if (p->flags & BR_LEARNING)
>  		br_fdb_update(br, p, eth_hdr(skb)->h_source, vid, 0);
>  
> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> index 2ff83d84230d..7d4432ca9a20 100644
> --- a/net/bridge/br_netlink.c
> +++ b/net/bridge/br_netlink.c
> @@ -184,6 +184,7 @@ static inline size_t br_port_info_size(void)
>  		+ nla_total_size(1)	/* IFLA_BRPORT_VLAN_TUNNEL */
>  		+ nla_total_size(1)	/* IFLA_BRPORT_NEIGH_SUPPRESS */
>  		+ nla_total_size(1)	/* IFLA_BRPORT_ISOLATED */
> +		+ nla_total_size(1)	/* IFLA_BRPORT_LOCKED */
>  		+ nla_total_size(sizeof(struct ifla_bridge_id))	/* IFLA_BRPORT_ROOT_ID */
>  		+ nla_total_size(sizeof(struct ifla_bridge_id))	/* IFLA_BRPORT_BRIDGE_ID */
>  		+ nla_total_size(sizeof(u16))	/* IFLA_BRPORT_DESIGNATED_PORT */
> @@ -269,7 +270,8 @@ static int br_port_fill_attrs(struct sk_buff *skb,
>  							  BR_MRP_LOST_CONT)) ||
>  	    nla_put_u8(skb, IFLA_BRPORT_MRP_IN_OPEN,
>  		       !!(p->flags & BR_MRP_LOST_IN_CONT)) ||
> -	    nla_put_u8(skb, IFLA_BRPORT_ISOLATED, !!(p->flags & BR_ISOLATED)))
> +	    nla_put_u8(skb, IFLA_BRPORT_ISOLATED, !!(p->flags & BR_ISOLATED)) ||
> +	    nla_put_u8(skb, IFLA_BRPORT_LOCKED, !!(p->flags & BR_PORT_LOCKED)))
>  		return -EMSGSIZE;
>  
>  	timerval = br_timer_value(&p->message_age_timer);
> @@ -827,6 +829,7 @@ static const struct nla_policy br_port_policy[IFLA_BRPORT_MAX + 1] = {
>  	[IFLA_BRPORT_GROUP_FWD_MASK] = { .type = NLA_U16 },
>  	[IFLA_BRPORT_NEIGH_SUPPRESS] = { .type = NLA_U8 },
>  	[IFLA_BRPORT_ISOLATED]	= { .type = NLA_U8 },
> +	[IFLA_BRPORT_LOCKED] = { .type = NLA_U8 },
>  	[IFLA_BRPORT_BACKUP_PORT] = { .type = NLA_U32 },
>  	[IFLA_BRPORT_MCAST_EHT_HOSTS_LIMIT] = { .type = NLA_U32 },
>  };
> @@ -893,6 +896,7 @@ static int br_setport(struct net_bridge_port *p, struct nlattr *tb[],
>  	br_set_port_flag(p, tb, IFLA_BRPORT_VLAN_TUNNEL, BR_VLAN_TUNNEL);
>  	br_set_port_flag(p, tb, IFLA_BRPORT_NEIGH_SUPPRESS, BR_NEIGH_SUPPRESS);
>  	br_set_port_flag(p, tb, IFLA_BRPORT_ISOLATED, BR_ISOLATED);
> +	br_set_port_flag(p, tb, IFLA_BRPORT_LOCKED, BR_PORT_LOCKED);
>  
>  	changed_mask = old_flags ^ p->flags;
>  
> -- 
> 2.30.2
> 
