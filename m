Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E94D3735B3
	for <lists.bridge@lfdr.de>; Wed,  5 May 2021 09:40:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C70D3400C9;
	Wed,  5 May 2021 07:40:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FiQ8_lXxfgR8; Wed,  5 May 2021 07:40:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTP id 69181401CA;
	Wed,  5 May 2021 07:40:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 35763C0024;
	Wed,  5 May 2021 07:40:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2C461C0001
 for <bridge@lists.linux-foundation.org>; Wed,  5 May 2021 07:40:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 05E426073D
 for <bridge@lists.linux-foundation.org>; Wed,  5 May 2021 07:40:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dY9-1OSx_FwQ for <bridge@lists.linux-foundation.org>;
 Wed,  5 May 2021 07:40:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
 [66.111.4.229])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C7742605D4
 for <bridge@lists.linux-foundation.org>; Wed,  5 May 2021 07:40:08 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id C325A58095A;
 Wed,  5 May 2021 03:40:05 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Wed, 05 May 2021 03:40:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=XGAZ/H
 Ub1ggaRYimKsJOVdJMZycWod7347H73fuhCGY=; b=D1N5qqeiHaEaEHhEL6jiu3
 P2uWIqjr3JjFcPYiEWhGcBB1JNfiecYZ9VQCVuiWLasYA+oHBAwkRbcdDVgK3O03
 SIlP5iPe9TQ30STXOA3auIpgr+GCw9p1Feye6FiqDkMh7RnL3PeTdy3aRYzZeLiB
 nqLvUOS5a6tLdULj9C31IJMF3ckKKWRw9Vt2o9WHuEgH1EU9XvMxedPjg1DUVxLC
 oerpeLFfd5rFAgYhj8QsB8HKysyzQJ0+42fq74EhgGyox6a+iZASx/D5fVFq9ANw
 /xqpZk9jSFoPIDSTEFMP6RXkV+217vJpcmnn4fyCgENncJL9lkrlA3OtsCekKEfA
 ==
X-ME-Sender: <xms:00uSYHUihf4d1QjKyA07Xr7-UqoXKAHac00JGV1BWzWGmkcypb_cmg>
 <xme:00uSYPnldn2lqww0jFJqBtshsyysPUv8naP8SWpUo5M07Y6Ybp0bJ0DLLYESW8G61
 nuXDf3XVH9EioI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdefjedguddujecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcu
 ufgthhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrth
 htvghrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudeh
 leetnecukfhppeekgedrvddvledrudehfedrudekjeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiughoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:00uSYDb5KSWqMLYB8WYrKAOQV2kK7nEMxeUkrHE1Z53CAOZpwb1iwQ>
 <xmx:00uSYCUMcV9uah9CDZ_aidGfKYXtASMVabQdsHmpszKtwkmIgo5JZQ>
 <xmx:00uSYBkua7gJK8pX1x_tH33qv3xiXSHk-w9k_Q4-YrGnYk3uxUcrTA>
 <xmx:1UuSYCiApZvkqH-2B5PQh7GX7dY1mhzxxUGxrGZfeCZNXIHL1zzcMQ>
Received: from localhost (igld-84-229-153-187.inter.net.il [84.229.153.187])
 by mail.messagingengine.com (Postfix) with ESMTPA;
 Wed,  5 May 2021 03:40:02 -0400 (EDT)
Date: Wed, 5 May 2021 10:39:58 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <YJJLzr5sJ2FYZRZ4@shredder.lan>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
 <20210426170411.1789186-3-tobias@waldekranz.com>
 <YI6+kQxjCcnYmwkx@shredder> <87h7jknqwn.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87h7jknqwn.fsf@waldekranz.com>
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

On Mon, May 03, 2021 at 10:49:12AM +0200, Tobias Waldekranz wrote:
> On Sun, May 02, 2021 at 18:00, Ido Schimmel <idosch@idosch.org> wrote:
> > On Mon, Apr 26, 2021 at 07:04:04PM +0200, Tobias Waldekranz wrote:
> >> - skb->cb->offload_fwd_mark becomes skb->cb->src_hwdom. There is a
> >>   slight change here: Whereas previously this was only set for
> >>   offloaded packets, we now always track the incoming hwdom. As all
> >>   uses where already gated behind checks of skb->offload_fwd_mark,
> >>   this will not introduce any functional change, but it paves the way
> >>   for future changes where the ingressing hwdom must be known both for
> >>   offloaded and non-offloaded frames.
> >
> > [...]
> >
> >> @@ -43,15 +43,15 @@ int nbp_switchdev_mark_set(struct net_bridge_port *p)
> >>  void nbp_switchdev_frame_mark(const struct net_bridge_port *p,
> >>  			      struct sk_buff *skb)
> >>  {
> >> -	if (skb->offload_fwd_mark && !WARN_ON_ONCE(!p->offload_fwd_mark))
> >> -		BR_INPUT_SKB_CB(skb)->offload_fwd_mark = p->offload_fwd_mark;
> >> +	if (p->hwdom)
> >> +		BR_INPUT_SKB_CB(skb)->src_hwdom = p->hwdom;
> >>  }
> >
> > I assume you are referring to this change? "src_hwdom" sounds weird if
> > it's expected to be valid for non-offloaded frames.
> 
> Perhaps "non-offloaded" was a sloppy description on my part. I was
> trying to describe frames that originate from a switchdev, but have not
> been forwarded by hardware; e.g. STP BPDUs, IGMP reports, etc. So
> nbp_switchdev_frame_mark now basically says: "If this skb came in from a
> switchdev, make sure to note which one".
> 
> > Can you elaborate about "future changes where the ingressing hwdom must
> > be known both for offloaded and non-offloaded frames"?
> 
> Typical example: The switchdev has a fixed configuration to trap STP
> BPDUs, but STP is not running on the bridge and the group_fwd_mask
> allows them to be forwarded. Say we have this setup:
> 
>       br0
>     /  |  \
> swp0 swp1 swp2
> 
> A BPDU comes in on swp0 and is trapped to the CPU; the driver does not
> set skb->offload_fwd_mark. The bridge determines that the frame should
> be forwarded to swp{1,2}. It is imperative that forward offloading is
> _not_ allowed in this case, as the source hwdom is already "poisoned".
> 
> Recording the source hwdom allows this case to be handled properly.

OK, thanks for the explanation. If it is allowed, then the packet will
be transmitted from swp0, from which it was received.

> 
> > Probably best to split this change to a different patch given the rest
> > of the changes are mechanical.
> 
> Right, but I think the change in name to warrants a change in
> semantics. It is being renamed to src_hwdom because it now holds just
> that information. Again, there is no functional change introduced by
> this since nbp_switchdev_allowed_egress always checks for the presence
> of skb->offload_fwd_mark anyway. But if you feel strongly about it, I
> will split it up.

If you put the explanation above in the changelog, then it should be
fine to keep it as one patch.

> 
> >>  
> >>  bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
> >>  				  const struct sk_buff *skb)
> >>  {
> >>  	return !skb->offload_fwd_mark ||
> >> -	       BR_INPUT_SKB_CB(skb)->offload_fwd_mark != p->offload_fwd_mark;
> >> +	       BR_INPUT_SKB_CB(skb)->src_hwdom != p->hwdom;
> >>  }
> >>  
> >>  /* Flags that can be offloaded to hardware */
> >> -- 
> >> 2.25.1
> >> 
