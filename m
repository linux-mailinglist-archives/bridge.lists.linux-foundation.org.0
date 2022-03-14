Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD734D885C
	for <lists.bridge@lfdr.de>; Mon, 14 Mar 2022 16:40:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFBB883DF3;
	Mon, 14 Mar 2022 15:40:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yr-tBTBGwPA4; Mon, 14 Mar 2022 15:40:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 45BA5828EF;
	Mon, 14 Mar 2022 15:40:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F3279C0084;
	Mon, 14 Mar 2022 15:40:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1CE58C000B
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 15:40:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 090C84019C
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 15:40:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id skPm2lS12CBM for <bridge@lists.linux-foundation.org>;
 Mon, 14 Mar 2022 15:40:49 +0000 (UTC)
X-Greylist: delayed 00:09:50 by SQLgrey-1.8.0
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AC4DC40102
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 15:40:49 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.west.internal (Postfix) with ESMTP id C5C633200583;
 Mon, 14 Mar 2022 11:30:54 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Mon, 14 Mar 2022 11:30:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=pEToz/RLY6LFPSFhK
 SUFSFy9Ab9OvwzMQVPbQ7N0Y0w=; b=S/6p7N5kFPA3uChrVyQtn/rnjAMnHfA1g
 jplH1MadhbhRYELfvfDWQnMoAimlhvvt79ogseAIza1GKpmgUzwqGQ4Y+4t70CVe
 dedzEfWWTPtY8CHVyh1fyyl8gvj5S7y+pmOrjy0Qa2K2wtVpDNYwYB5RCZHXlhq9
 +jTEfYluqNpvvg+bHvYlR+JIUccw1qyfeg6aeL7Sb6WYxRD/FxhKY2HVEiPFvjiS
 /dLbOornuOu2kw82ttC2hRdVj3Dq0zAF8Qx2GbmVj8fpE7mBuOhW3tbFeDHFGd9U
 hkSkIIYGS+OKUaJfm7XkjKUp8ix8NLGbu3k0GqXla/puDSHJQ0ePg==
X-ME-Sender: <xms:rV8vYmtka-43_JCKySr_kMEJbJeUkQ3YTT-F3LXDfcLlc4CNkTeuWg>
 <xme:rV8vYrf_i6S658A0MzdVN9sI5IvnpYHYt4_nYk206S2YIr5WdYTIj8mjCn81-4jhU
 z5K4CI383GoANQ>
X-ME-Received: <xmr:rV8vYhyjbj24W4YxdSZZFsqryPTrDvoiRCymLSWAyfXGJxc62K2EjW-wnZf0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddruddvkedgjeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpedtffekkeefudffveegueejffejhfetgfeuuefgvedtieehudeuueekhfduheel
 teenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:rV8vYhMHWnkoreSC-dAIr0OlTTrMEMVZ_YyDLICKYN-tepsVXr7dUA>
 <xmx:rV8vYm_Zd8k_d2dRODlplnWgo_kyxciZ27eaUgQl4JfxHGR-mvnOog>
 <xmx:rV8vYpXqm6oy5oDPpWyIKU6XCEPyi9ckOmsFGK3f5aFTE6NZLhynuA>
 <xmx:rl8vYqUDJpzFYodJKvdhDYLMSoj4t6GL8ne20qgT1cQJxoRZwULgOQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 14 Mar 2022 11:30:52 -0400 (EDT)
Date: Mon, 14 Mar 2022 17:30:50 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <Yi9fqkQ9wH3Duqhg@shredder>
References: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
 <20220310142320.611738-2-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220310142320.611738-2-schultz.hans+netdev@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Vladimir Oltean <olteanv@gmail.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/3] net: bridge: add fdb flag to
 extent locked port feature
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

On Thu, Mar 10, 2022 at 03:23:18PM +0100, Hans Schultz wrote:
> Add an intermediate state for clients behind a locked port to allow for
> possible opening of the port for said clients. This feature corresponds
> to the Mac-Auth and MAC Authentication Bypass (MAB) named features. The
> latter defined by Cisco.
> 
> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
> ---
>  include/uapi/linux/neighbour.h |  1 +
>  net/bridge/br_fdb.c            |  6 ++++++
>  net/bridge/br_input.c          | 11 ++++++++++-
>  net/bridge/br_private.h        |  3 ++-
>  4 files changed, 19 insertions(+), 2 deletions(-)
> 
> diff --git a/include/uapi/linux/neighbour.h b/include/uapi/linux/neighbour.h
> index db05fb55055e..83115a592d58 100644
> --- a/include/uapi/linux/neighbour.h
> +++ b/include/uapi/linux/neighbour.h
> @@ -208,6 +208,7 @@ enum {
>  	NFEA_UNSPEC,
>  	NFEA_ACTIVITY_NOTIFY,
>  	NFEA_DONT_REFRESH,
> +	NFEA_LOCKED,
>  	__NFEA_MAX
>  };
>  #define NFEA_MAX (__NFEA_MAX - 1)
> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
> index 6ccda68bd473..396dcf3084cf 100644
> --- a/net/bridge/br_fdb.c
> +++ b/net/bridge/br_fdb.c
> @@ -105,6 +105,7 @@ static int fdb_fill_info(struct sk_buff *skb, const struct net_bridge *br,
>  	struct nda_cacheinfo ci;
>  	struct nlmsghdr *nlh;
>  	struct ndmsg *ndm;
> +	u8 ext_flags = 0;
>  
>  	nlh = nlmsg_put(skb, portid, seq, type, sizeof(*ndm), flags);
>  	if (nlh == NULL)
> @@ -125,11 +126,16 @@ static int fdb_fill_info(struct sk_buff *skb, const struct net_bridge *br,
>  		ndm->ndm_flags |= NTF_EXT_LEARNED;
>  	if (test_bit(BR_FDB_STICKY, &fdb->flags))
>  		ndm->ndm_flags |= NTF_STICKY;
> +	if (test_bit(BR_FDB_ENTRY_LOCKED, &fdb->flags))
> +		ext_flags |= 1 << NFEA_LOCKED;
>  
>  	if (nla_put(skb, NDA_LLADDR, ETH_ALEN, &fdb->key.addr))
>  		goto nla_put_failure;
>  	if (nla_put_u32(skb, NDA_MASTER, br->dev->ifindex))
>  		goto nla_put_failure;
> +	if (nla_put_u8(skb, NDA_FDB_EXT_ATTRS, ext_flags))
> +		goto nla_put_failure;
> +
>  	ci.ndm_used	 = jiffies_to_clock_t(now - fdb->used);
>  	ci.ndm_confirmed = 0;
>  	ci.ndm_updated	 = jiffies_to_clock_t(now - fdb->updated);
> diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
> index e0c13fcc50ed..897908484b18 100644
> --- a/net/bridge/br_input.c
> +++ b/net/bridge/br_input.c
> @@ -75,6 +75,7 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
>  	struct net_bridge_mcast *brmctx;
>  	struct net_bridge_vlan *vlan;
>  	struct net_bridge *br;
> +	unsigned long flags = 0;
>  	u16 vid = 0;
>  	u8 state;
>  
> @@ -94,8 +95,16 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
>  			br_fdb_find_rcu(br, eth_hdr(skb)->h_source, vid);
>  
>  		if (!fdb_src || READ_ONCE(fdb_src->dst) != p ||
> -		    test_bit(BR_FDB_LOCAL, &fdb_src->flags))
> +		    test_bit(BR_FDB_LOCAL, &fdb_src->flags)) {
> +			if (!fdb_src) {
> +				set_bit(BR_FDB_ENTRY_LOCKED, &flags);

This flag is read-only for user space, right? That is, the kernel needs
to reject it during netlink policy validation.

> +				br_fdb_update(br, p, eth_hdr(skb)->h_source, vid, flags);
> +			}
>  			goto drop;
> +		} else {

IIUC, we get here in case there is a non-local FDB entry with the SA
that points to our port. Can you write it as:

if (!fdb_src || READ_ONCE(fdb_src->dst) != p ||
    test_bit(BR_FDB_LOCAL, &fdb_src->flags) ||
    test_bit(BR_FDB_ENTRY_LOCKED, &fdb_src->flags)) {
    	if (!fdb_src) {
	...
	}
	goto drop;
}

> +			if (test_bit(BR_FDB_ENTRY_LOCKED, &fdb_src->flags))
> +				goto drop;
> +		}
>  	}
>  
>  	nbp_switchdev_frame_mark(p, skb);
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 48bc61ebc211..f5a0b68c4857 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -248,7 +248,8 @@ enum {
>  	BR_FDB_ADDED_BY_EXT_LEARN,
>  	BR_FDB_OFFLOADED,
>  	BR_FDB_NOTIFY,
> -	BR_FDB_NOTIFY_INACTIVE
> +	BR_FDB_NOTIFY_INACTIVE,
> +	BR_FDB_ENTRY_LOCKED,
>  };
>  
>  struct net_bridge_fdb_key {
> -- 
> 2.30.2
> 
