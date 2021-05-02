Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 129C6370D8F
	for <lists.bridge@lfdr.de>; Sun,  2 May 2021 17:06:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F856403F7;
	Sun,  2 May 2021 15:06:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zzCZSyQeA4iJ; Sun,  2 May 2021 15:06:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1F9AA40209;
	Sun,  2 May 2021 15:06:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DE324C0024;
	Sun,  2 May 2021 15:06:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B01C0C0001
 for <bridge@lists.linux-foundation.org>; Sun,  2 May 2021 15:06:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9D29241E19
 for <bridge@lists.linux-foundation.org>; Sun,  2 May 2021 15:06:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NaKGQXiuwbYc for <bridge@lists.linux-foundation.org>;
 Sun,  2 May 2021 15:06:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from new2-smtp.messagingengine.com (new2-smtp.messagingengine.com
 [66.111.4.224])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9DB4741DF7
 for <bridge@lists.linux-foundation.org>; Sun,  2 May 2021 15:06:01 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 296A55807A3;
 Sun,  2 May 2021 11:00:37 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Sun, 02 May 2021 11:00:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=6G/27z
 xuGvxwdfFNgVyByoy1R/9INnm6KuI/THNxp7Q=; b=sDgXzjQif6CKetgCO5COh3
 z/wGfU4m+oKFU0FEG9VzYb5OxJb0xDvUIVJnr14mnTRap9HOivHT3XBsU7+T6olj
 OyvgiY3pvgF1Unsx517MssWAQq5NlAxV5w3esUKvqam58dVtOR1nokIRATFuFz72
 UDNKPJEVD0d1vtq0hNX5mMWoXWt8+hAH8NBE8/+PktMotKQ6HhCQQpCn0/T/e+lZ
 HK0tnCywCTT/2IdynPzzpzF8egM2F9jMXkVCubuPbfdiZRegcAO+kLgYGBpIvkb0
 NAi15VOXO8qKFFcyYBelz7tbdrzX5a7DY8wOg+L/qaqMtk74PRSetImlMQp9jU8A
 ==
X-ME-Sender: <xms:lL6OYODLdyFkh5vFanDtHN5zR_yfeBy7DGnd4RYc55_ZyAAnN1TPZg>
 <xme:lL6OYIgqo1swXPrY_oVn9AWiuPaBtIO8lE448rskjToGKe9gcI-skez4XymCzhxkW
 0h8gaUxBiD5ego>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdefuddgudefgecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcu
 ufgthhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrth
 htvghrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudeh
 leetnecukfhppeduleefrdegjedrudeihedrvdehudenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiughoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:lL6OYBmkb7lY3dgVCfRZmW6JUmdwPbZjZEeN80UH8rB2HVMSeH5w9A>
 <xmx:lL6OYMzA5nt75kVMO1_fbBe7xx0yo4qS5yG8geT173pEiYV_kuCNDg>
 <xmx:lL6OYDQjy_LLLINd1pS-6RzanM5hq4Td_3QW-Ir8-rnHd5ecZ39BCg>
 <xmx:lb6OYI-snTz7lT_ST1LeJclO_aZyZn-37vvXoSCslIXmwuXZMk-7GA>
Received: from localhost (unknown [193.47.165.251])
 by mail.messagingengine.com (Postfix) with ESMTPA;
 Sun,  2 May 2021 11:00:35 -0400 (EDT)
Date: Sun, 2 May 2021 18:00:33 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <YI6+kQxjCcnYmwkx@shredder>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
 <20210426170411.1789186-3-tobias@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210426170411.1789186-3-tobias@waldekranz.com>
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 vivien.didelot@gmail.com, nikolay@nvidia.com, roopa@nvidia.com,
 kuba@kernel.org, olteanv@gmail.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next 2/9] net: bridge: Disambiguate
	offload_fwd_mark
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

On Mon, Apr 26, 2021 at 07:04:04PM +0200, Tobias Waldekranz wrote:
> - skb->cb->offload_fwd_mark becomes skb->cb->src_hwdom. There is a
>   slight change here: Whereas previously this was only set for
>   offloaded packets, we now always track the incoming hwdom. As all
>   uses where already gated behind checks of skb->offload_fwd_mark,
>   this will not introduce any functional change, but it paves the way
>   for future changes where the ingressing hwdom must be known both for
>   offloaded and non-offloaded frames.

[...]

> @@ -43,15 +43,15 @@ int nbp_switchdev_mark_set(struct net_bridge_port *p)
>  void nbp_switchdev_frame_mark(const struct net_bridge_port *p,
>  			      struct sk_buff *skb)
>  {
> -	if (skb->offload_fwd_mark && !WARN_ON_ONCE(!p->offload_fwd_mark))
> -		BR_INPUT_SKB_CB(skb)->offload_fwd_mark = p->offload_fwd_mark;
> +	if (p->hwdom)
> +		BR_INPUT_SKB_CB(skb)->src_hwdom = p->hwdom;
>  }

I assume you are referring to this change? "src_hwdom" sounds weird if
it's expected to be valid for non-offloaded frames.

Can you elaborate about "future changes where the ingressing hwdom must
be known both for offloaded and non-offloaded frames"?

Probably best to split this change to a different patch given the rest
of the changes are mechanical.

>  
>  bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
>  				  const struct sk_buff *skb)
>  {
>  	return !skb->offload_fwd_mark ||
> -	       BR_INPUT_SKB_CB(skb)->offload_fwd_mark != p->offload_fwd_mark;
> +	       BR_INPUT_SKB_CB(skb)->src_hwdom != p->hwdom;
>  }
>  
>  /* Flags that can be offloaded to hardware */
> -- 
> 2.25.1
> 
