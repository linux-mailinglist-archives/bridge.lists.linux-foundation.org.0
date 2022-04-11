Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DAB24FB5D7
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 10:21:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 670F660E74;
	Mon, 11 Apr 2022 08:20:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CvInozNoT2_Q; Mon, 11 Apr 2022 08:20:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 9DA4160E33;
	Mon, 11 Apr 2022 08:20:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 39D3BC0082;
	Mon, 11 Apr 2022 08:20:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 23076C002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 08:20:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1685F40556
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 08:20:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cFhVtDg24PGG for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 08:20:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com
 [64.147.123.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6EFAD40338
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 08:20:53 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 5AAED3201F27;
 Mon, 11 Apr 2022 04:20:52 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 11 Apr 2022 04:20:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1649665251; x=
 1649751651; bh=dHdCNUO3dPTJm9yrEeHeG1wWaiGHm3Q9QFpcLvdPavA=; b=e
 V+FCzUjqDsYK8Tbxj2R0vTH01vkX02gbiXvapts+duoiQKvaDXhnZwbmh3bPh5QT
 vzeQD+InZNKjKM7d2Ktj27QdPuwr6R90Ejeez3zZmWSBULEhUGvVB6AL+McfBH4p
 YkUfHAjaQf8ihn8qg79cnFDN0N5Yi8ap59RiiOP1+S4piU5OTFbflA1jc8/svBni
 kjiOjSrvZRYFy79c+LmNhC3M+6xCGgUJLC27JsadvXlu/SX7n+tnT+TBpJwrfJqF
 SpQB3ttU9psmKZwW07PCRdd29JbQIaohKYTjmtuPWuM2WPc9FLqyur4BVMLHt2tZ
 xVJdwkZHrZ/+CrohFUSvA==
X-ME-Sender: <xms:4-RTYv4x6DIVYKTY0UhN0i3pKCJeXhD9wVzaaiqEuEGNPHuyviMysQ>
 <xme:4-RTYk6Z5evFQ3bFRye_b2TkUEotKipPK5U3Ibxs8i-7iujIeCUWHI1c9iIgOlCw1
 pb9m8g6YoOfD-k>
X-ME-Received: <xmr:4-RTYmeyxqfnrHX1a41gMdw6vbvf60Pl4wOenR5sZR5Qh-nshExTxXgXiUbE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudekiedgtddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
 dttddtvdenucfhrhhomhepkfguohcuufgthhhimhhmvghluceoihguohhstghhsehiugho
 shgthhdrohhrgheqnecuggftrfgrthhtvghrnheptdffkeekfeduffevgeeujeffjefhte
 fgueeugfevtdeiheduueeukefhudehleetnecuvehluhhsthgvrhfuihiivgeptdenucfr
 rghrrghmpehmrghilhhfrhhomhepihguohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:4-RTYgLsuQGa0mLyc0cvjZ79qKZ0575fLv1tphwSoQykLcPKSNEvSQ>
 <xmx:4-RTYjINT1C3YoERrDifRyLG29nnMw7YI1qlg4Kmoc9dMX6fOIo3EQ>
 <xmx:4-RTYpwmgj5aJsUkoEPrSweqmcyRZZarKE_uROhfnOt_AE5JjeFY1g>
 <xmx:4-RTYr1D9kI4CqpOa5nEPSmXK-FfMj4LqHXHcGhwQaQNUMhZQEYlnw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 11 Apr 2022 04:20:51 -0400 (EDT)
Date: Mon, 11 Apr 2022 11:20:48 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <YlPk4GGqcAGCEZ4s@shredder>
References: <20220409105857.803667-1-razor@blackwall.org>
 <20220409105857.803667-3-razor@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220409105857.803667-3-razor@blackwall.org>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 davem@davemloft.net, kuba@kernel.org, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next 2/6] net: bridge: fdb: add support for
 fine-grained flushing
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

On Sat, Apr 09, 2022 at 01:58:53PM +0300, Nikolay Aleksandrov wrote:
> Add the ability to specify exactly which fdbs to be flushed. They are
> described by a new structure - net_bridge_fdb_flush_desc. Currently it
> can match on port/bridge ifindex, vlan id and fdb flags. It is used to
> describe the existing dynamic fdb flush operation.
> 
> Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
> ---
>  net/bridge/br_fdb.c      | 36 +++++++++++++++++++++++++++++-------
>  net/bridge/br_netlink.c  |  9 +++++++--
>  net/bridge/br_private.h  | 10 +++++++++-
>  net/bridge/br_sysfs_br.c |  6 +++++-
>  4 files changed, 50 insertions(+), 11 deletions(-)
> 
> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
> index 6ccda68bd473..4b0bf88c4121 100644
> --- a/net/bridge/br_fdb.c
> +++ b/net/bridge/br_fdb.c
> @@ -558,18 +558,40 @@ void br_fdb_cleanup(struct work_struct *work)
>  	mod_delayed_work(system_long_wq, &br->gc_work, work_delay);
>  }
>  
> -/* Completely flush all dynamic entries in forwarding database.*/
> -void br_fdb_flush(struct net_bridge *br)
> +static bool __fdb_flush_matches(const struct net_bridge *br,
> +				const struct net_bridge_fdb_entry *f,
> +				const struct net_bridge_fdb_flush_desc *desc)
> +{
> +	const struct net_bridge_port *dst = READ_ONCE(f->dst);
> +	int port_ifidx, br_ifidx = br->dev->ifindex;
> +
> +	port_ifidx = dst ? dst->dev->ifindex : 0;
> +
> +	return (!desc->vlan_id || desc->vlan_id == f->key.vlan_id) &&
> +	       (!desc->port_ifindex ||
> +		(desc->port_ifindex == port_ifidx ||
> +		 (!dst && desc->port_ifindex == br_ifidx))) &&
> +	       (!desc->flags_mask ||
> +		((f->flags & desc->flags_mask) == desc->flags));

I find this easier to read:

port_ifidx = dst ? dst->dev->ifindex : br_ifidx;

if (desc->vlan_id && desc->vlan_id != f->key.vlan_id)
	return false;
if (desc->port_ifindex && desc->port_ifindex != port_ifidx)
	return false;
if (desc->flags_mask && (f->flags & desc->flags_mask) != desc->flags)
	return false;

return true;

> +}
> +
> +/* Flush forwarding database entries matching the description */
> +void br_fdb_flush(struct net_bridge *br,
> +		  const struct net_bridge_fdb_flush_desc *desc)
>  {
>  	struct net_bridge_fdb_entry *f;
> -	struct hlist_node *tmp;
>  
> -	spin_lock_bh(&br->hash_lock);
> -	hlist_for_each_entry_safe(f, tmp, &br->fdb_list, fdb_node) {
> -		if (!test_bit(BR_FDB_STATIC, &f->flags))
> +	rcu_read_lock();
> +	hlist_for_each_entry_rcu(f, &br->fdb_list, fdb_node) {
> +		if (!__fdb_flush_matches(br, f, desc))
> +			continue;
> +
> +		spin_lock_bh(&br->hash_lock);
> +		if (!hlist_unhashed(&f->fdb_node))
>  			fdb_delete(br, f, true);
> +		spin_unlock_bh(&br->hash_lock);
>  	}
> -	spin_unlock_bh(&br->hash_lock);
> +	rcu_read_unlock();
>  }
>  
>  /* Flush all entries referring to a specific port.
> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> index fe2211d4c0c7..6e6dce6880c9 100644
> --- a/net/bridge/br_netlink.c
> +++ b/net/bridge/br_netlink.c
> @@ -1366,8 +1366,13 @@ static int br_changelink(struct net_device *brdev, struct nlattr *tb[],
>  		br_recalculate_fwd_mask(br);
>  	}
>  
> -	if (data[IFLA_BR_FDB_FLUSH])
> -		br_fdb_flush(br);
> +	if (data[IFLA_BR_FDB_FLUSH]) {
> +		struct net_bridge_fdb_flush_desc desc = {
> +			.flags_mask = BR_FDB_STATIC
> +		};
> +
> +		br_fdb_flush(br, &desc);

I wanted to ask why you are not doing the same for IFLA_BRPORT_FLUSH,
but then I read the implementation of br_fdb_delete_by_port() and
remembered the comment in the cover letter regarding fdb_delete vs
fdb_delete_local. Probably best to note it in the commit message

> +	}
>  
>  #ifdef CONFIG_BRIDGE_IGMP_SNOOPING
>  	if (data[IFLA_BR_MCAST_ROUTER]) {
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 6e62af2e07e9..e6930e9ee69d 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -274,6 +274,13 @@ struct net_bridge_fdb_entry {
>  	struct rcu_head			rcu;
>  };
>  
> +struct net_bridge_fdb_flush_desc {
> +	unsigned long			flags;
> +	unsigned long			flags_mask;
> +	int				port_ifindex;
> +	u16				vlan_id;
> +};
> +
>  #define MDB_PG_FLAGS_PERMANENT	BIT(0)
>  #define MDB_PG_FLAGS_OFFLOAD	BIT(1)
>  #define MDB_PG_FLAGS_FAST_LEAVE	BIT(2)
> @@ -759,7 +766,8 @@ int br_fdb_init(void);
>  void br_fdb_fini(void);
>  int br_fdb_hash_init(struct net_bridge *br);
>  void br_fdb_hash_fini(struct net_bridge *br);
> -void br_fdb_flush(struct net_bridge *br);
> +void br_fdb_flush(struct net_bridge *br,
> +		  const struct net_bridge_fdb_flush_desc *desc);
>  void br_fdb_find_delete_local(struct net_bridge *br,
>  			      const struct net_bridge_port *p,
>  			      const unsigned char *addr, u16 vid);
> diff --git a/net/bridge/br_sysfs_br.c b/net/bridge/br_sysfs_br.c
> index 3f7ca88c2aa3..612e367fff20 100644
> --- a/net/bridge/br_sysfs_br.c
> +++ b/net/bridge/br_sysfs_br.c
> @@ -344,7 +344,11 @@ static DEVICE_ATTR_RW(group_addr);
>  static int set_flush(struct net_bridge *br, unsigned long val,
>  		     struct netlink_ext_ack *extack)
>  {
> -	br_fdb_flush(br);
> +	struct net_bridge_fdb_flush_desc desc = {
> +		.flags_mask = BR_FDB_STATIC
> +	};
> +
> +	br_fdb_flush(br, &desc);
>  	return 0;
>  }
>  
> -- 
> 2.35.1
> 
