Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C558B4FB605
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 10:33:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4078481AF3;
	Mon, 11 Apr 2022 08:33:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5_QWsOzXrEYP; Mon, 11 Apr 2022 08:33:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 7CBE283F7E;
	Mon, 11 Apr 2022 08:33:30 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2A38BC0082;
	Mon, 11 Apr 2022 08:33:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9A63BC002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 08:33:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 69D0783F77
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 08:33:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B5Vr5B5JlCI1 for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 08:33:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com
 [64.147.123.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7EF9983F64
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 08:33:23 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 4673F3201DFD;
 Mon, 11 Apr 2022 04:33:22 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 11 Apr 2022 04:33:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1649666001; x=
 1649752401; bh=63DL3gXe7MJNSMKanG26OImrqCC36Hcg2tJwp9gTWBE=; b=K
 cDGr/e949d97dbVz8Wn4LtQsQVvRVoEbP8Ps/U9gBYxdloPnwkce6oJsiiPuhbA2
 cr9bQH4Zs72hhB2fKwoervmonih6C0UTSzhjcScIgXCagLYlcXbcO6kABLL/6KXg
 YuUm+Kz2rn5aciVNoIghnAPQuok39zrJGSkAEKza4NXLhhlkh11UdTm3cuNTuJ7N
 /VY4fOyeWIsYuVMYwo84w1DiT4DdXmcA88wC92g2X5eDch0sR/++Q0pZlvsEEhEq
 mfvRPcX0PqT+AcUp2fs1+9OBSEfE/5CALXVH3HZvckvuIQRA6Bk06H4pnA+xxnhp
 d/fPDhFjR/g+Q+AxKMt6Q==
X-ME-Sender: <xms:0edTYjEOEOvP7_i0INKSVJrevGFN0Sp-Q6_SB3dXOlJJZL9fCSWXmw>
 <xme:0edTYgUtuF3QCWHJhradBdzXMLY7GsBAGSkL7s2hHFkB2Km-sgkHC0MrOJtqfcx8l
 sD47O4SyRTtfvE>
X-ME-Received: <xmr:0edTYlIB2i3TZ6cPAyWIT0_wmt7A7sM5qymQ1MM1x0bXs3XlyF9t0mXxtorx>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudekiedgtdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
 dttddtvdenucfhrhhomhepkfguohcuufgthhhimhhmvghluceoihguohhstghhsehiugho
 shgthhdrohhrgheqnecuggftrfgrthhtvghrnhepgfevgfevueduueffieffheeifffgje
 elvedtteeuteeuffekvefggfdtudfgkeevnecuffhomhgrihhnpehkvghrnhgvlhdrohhr
 ghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:0edTYhGoffvzS5IdQ8VY9hAelEQlkmyfsfao1_dvByB2QO0MK_zvWw>
 <xmx:0edTYpWZb-PeOKYLJgnhf_JQgk8BNfOWyiC4Z4F4HxPxQMO_WxAU7A>
 <xmx:0edTYsPewmZBjGXy_xC5TCxX-SpjYOsj8YgsGU5-ukSsG1ZrLNzVCQ>
 <xmx:0edTYsQ5UXwgyAzCk6JS1sX1y3WfhLE40_exdYFVnSSecsvmTNRO6Q>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 11 Apr 2022 04:33:20 -0400 (EDT)
Date: Mon, 11 Apr 2022 11:33:18 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <YlPnznOq3k8KZg2n@shredder>
References: <20220409105857.803667-1-razor@blackwall.org>
 <20220409105857.803667-4-razor@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220409105857.803667-4-razor@blackwall.org>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 davem@davemloft.net, kuba@kernel.org, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next 3/6] net: bridge: fdb: add new nl
 attribute-based flush call
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

On Sat, Apr 09, 2022 at 01:58:54PM +0300, Nikolay Aleksandrov wrote:
> Add a new fdb flush call which parses the embedded attributes in
> BRIDGE_FLUSH_FDB and fills in the fdb flush descriptor to delete only
> matching entries. Currently it's a complete flush, support for more
> fine-grained filtering will be added in the following patches.
> 
> Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
> ---
>  include/uapi/linux/if_bridge.h |  8 ++++++++
>  net/bridge/br_fdb.c            | 24 ++++++++++++++++++++++++
>  net/bridge/br_netlink.c        |  8 ++++++++
>  net/bridge/br_private.h        |  2 ++
>  4 files changed, 42 insertions(+)
> 
> diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
> index 221a4256808f..2f3799cf14b2 100644
> --- a/include/uapi/linux/if_bridge.h
> +++ b/include/uapi/linux/if_bridge.h
> @@ -807,7 +807,15 @@ enum {
>  /* embedded in IFLA_BRIDGE_FLUSH */
>  enum {
>  	BRIDGE_FLUSH_UNSPEC,
> +	BRIDGE_FLUSH_FDB,
>  	__BRIDGE_FLUSH_MAX
>  };
>  #define BRIDGE_FLUSH_MAX (__BRIDGE_FLUSH_MAX - 1)
> +
> +/* embedded in BRIDGE_FLUSH_FDB */
> +enum {
> +	FDB_FLUSH_UNSPEC,
> +	__FDB_FLUSH_MAX
> +};
> +#define FDB_FLUSH_MAX (__FDB_FLUSH_MAX - 1)
>  #endif /* _UAPI_LINUX_IF_BRIDGE_H */
> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
> index 4b0bf88c4121..62f694a739e1 100644
> --- a/net/bridge/br_fdb.c
> +++ b/net/bridge/br_fdb.c
> @@ -594,6 +594,30 @@ void br_fdb_flush(struct net_bridge *br,
>  	rcu_read_unlock();
>  }
>  
> +static const struct nla_policy br_fdb_flush_policy[FDB_FLUSH_MAX + 1] = {
> +	[FDB_FLUSH_UNSPEC]	= { .type = NLA_REJECT },
> +};
> +
> +int br_fdb_flush_nlattr(struct net_bridge *br, struct nlattr *fdb_flush_attr,
> +			struct netlink_ext_ack *extack)
> +{
> +	struct nlattr *fdb_flush_tb[FDB_FLUSH_MAX + 1];
> +	struct net_bridge_fdb_flush_desc desc = {};
> +	int err;
> +
> +	err = nla_parse_nested(fdb_flush_tb, FDB_FLUSH_MAX, fdb_flush_attr,
> +			       br_fdb_flush_policy, extack);
> +	if (err)
> +		return err;
> +
> +	br_debug(br, "flushing port ifindex: %d vlan id: %u flags: 0x%lx flags mask: 0x%lx\n",
> +		 desc.port_ifindex, desc.vlan_id, desc.flags, desc.flags_mask);
> +
> +	br_fdb_flush(br, &desc);
> +
> +	return 0;
> +}
> +
>  /* Flush all entries referring to a specific port.
>   * if do_all is set also flush static entries
>   * if vid is set delete all entries that match the vlan_id
> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> index 6e6dce6880c9..bd2c91e5723d 100644
> --- a/net/bridge/br_netlink.c
> +++ b/net/bridge/br_netlink.c
> @@ -781,6 +781,7 @@ int br_process_vlan_info(struct net_bridge *br,
>  
>  static const struct nla_policy br_flush_policy[BRIDGE_FLUSH_MAX + 1] = {
>  	[BRIDGE_FLUSH_UNSPEC]	= { .type = NLA_REJECT },
> +	[BRIDGE_FLUSH_FDB]	= { .type = NLA_NESTED },

In a previous submission [1] Jakub suggested using NLA_POLICY_NESTED()

[1] https://lore.kernel.org/netdev/20220224221447.6c7fa95d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com/

>  };
>  
>  static int br_flush(struct net_bridge *br, int cmd,
> @@ -804,6 +805,13 @@ static int br_flush(struct net_bridge *br, int cmd,
>  	if (err)
>  		return err;
>  
> +	if (flush_tb[BRIDGE_FLUSH_FDB]) {
> +		err = br_fdb_flush_nlattr(br, flush_tb[BRIDGE_FLUSH_FDB],
> +					  extack);
> +		if (err)
> +			return err;
> +	}
> +
>  	return 0;
>  }
>  
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index e6930e9ee69d..c7ea531d30ef 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -768,6 +768,8 @@ int br_fdb_hash_init(struct net_bridge *br);
>  void br_fdb_hash_fini(struct net_bridge *br);
>  void br_fdb_flush(struct net_bridge *br,
>  		  const struct net_bridge_fdb_flush_desc *desc);
> +int br_fdb_flush_nlattr(struct net_bridge *br, struct nlattr *fdb_flush_attr,
> +			struct netlink_ext_ack *extack);
>  void br_fdb_find_delete_local(struct net_bridge *br,
>  			      const struct net_bridge_port *p,
>  			      const unsigned char *addr, u16 vid);
> -- 
> 2.35.1
> 
