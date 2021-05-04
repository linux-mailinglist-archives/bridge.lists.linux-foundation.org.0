Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A043731B1
	for <lists.bridge@lfdr.de>; Tue,  4 May 2021 22:58:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45C6E8442E;
	Tue,  4 May 2021 20:58:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8mJCYo4IqDhm; Tue,  4 May 2021 20:58:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTP id 60AD78442A;
	Tue,  4 May 2021 20:58:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 23C99C001C;
	Tue,  4 May 2021 20:58:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 93BE7C0001
 for <bridge@lists.linux-foundation.org>; Tue,  4 May 2021 20:58:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 739B08442A
 for <bridge@lists.linux-foundation.org>; Tue,  4 May 2021 20:58:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gzHfH-tpFuUb for <bridge@lists.linux-foundation.org>;
 Tue,  4 May 2021 20:58:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2ED4584383
 for <bridge@lists.linux-foundation.org>; Tue,  4 May 2021 20:58:27 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id bf4so12042767edb.11
 for <bridge@lists.linux-foundation.org>; Tue, 04 May 2021 13:58:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=BOYKBuZRJDbnnKXC7x8lqvP/cMCF6N41p+a+mjYpo7Q=;
 b=Rc80ATLRiIJBFOz426Sho77/hatvwZj0CiB+n73qKhlbZSW+Qa+oCjucM8K96rHj46
 HAe/FkSDdAm0Wz+jdHReKxbUm6LA1aiYgCzL63il9xVTPynl9VhDLd80HV0M6t7YLShN
 bVEIIlk0FvICtUJi06+Aysj/Y0CYjuQeKRoFBcKyfzHz0DSkfJehbEI1rz2NO19svOux
 sQ85B3i9IeGE6gzr8ixzM/VoYAPAmgmG5Ih9F39a93AKOKjN4fXN2k7eAgmk7vwNbKAr
 5aiBRsNpD83fOzQHDegi4leBj1Kt07JUIIxWmlcm0trIjQC4v2OPT/NrjB363NbIvST/
 Xp/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=BOYKBuZRJDbnnKXC7x8lqvP/cMCF6N41p+a+mjYpo7Q=;
 b=XmRvROAkgS1YOYcTB25f5kG9RQ6F2jai9whYN/4kJscnTuTQdf3ZvfnU42pOdll4oi
 JteM0gdws69fQFzbO2wUTl1alOUhvk2PGMYPPdxZRJb99IDSdHAWRAaL0i/rvZa9cdCe
 JE4+dwTRQuKYCFZkio/Gm5O3K9CYYit2eMG0VpJFv/0o5t10o08saPGmWyOiLCLI2c3B
 3fVDSuoOBucGI8zH8ef/NWLkseBOqhwm1s+iIDUdB7WnZC5026awCZsGINgBl4s+TaRd
 mNKcP3H+sy23wabf41D7/nC9CXi8TLw6C0u/XNlVgABRKy/Ba36UHY4TGeT6EME4U7+J
 RNgQ==
X-Gm-Message-State: AOAM530ltvQNXr9sR9/TPPWYhiVynTSZkEkwkBCc+o+p5sBjs5/bC600
 ef+HzzyJJrdVH1L75L9aBe0=
X-Google-Smtp-Source: ABdhPJySVo+NFOi75pswUNHEMMknWDB+RdmHjasna57IXz0ExIxKQClYQ4IWjwgNxVhKIoV9uqnT0w==
X-Received: by 2002:aa7:cb0a:: with SMTP id s10mr27998588edt.36.1620161905334; 
 Tue, 04 May 2021 13:58:25 -0700 (PDT)
Received: from skbuf ([86.127.41.210])
 by smtp.gmail.com with ESMTPSA id kx3sm1893442ejc.44.2021.05.04.13.58.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 May 2021 13:58:25 -0700 (PDT)
Date: Tue, 4 May 2021 23:58:23 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>,
 Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20210504205823.j5wg547lgyw776rl@skbuf>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
 <20210426170411.1789186-7-tobias@waldekranz.com>
 <20210427101747.n3y6w6o7thl5cz3r@skbuf>
 <878s4uo8xc.fsf@waldekranz.com>
 <20210504152106.oppawchuruapg4sb@skbuf>
 <874kfintzh.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <874kfintzh.fsf@waldekranz.com>
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 vivien.didelot@gmail.com, idosch@idosch.org, nikolay@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next 6/9] net: dsa: Forward offloading
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

On Tue, May 04, 2021 at 10:07:14PM +0200, Tobias Waldekranz wrote:
> On Tue, May 04, 2021 at 18:21, Vladimir Oltean <olteanv@gmail.com> wrote:
> > On Tue, May 04, 2021 at 04:44:31PM +0200, Tobias Waldekranz wrote:
> >> On Tue, Apr 27, 2021 at 13:17, Vladimir Oltean <olteanv@gmail.com> wrote:
> >> > On Mon, Apr 26, 2021 at 07:04:08PM +0200, Tobias Waldekranz wrote:
> >> >> Allow DSA drivers to support forward offloading from a bridge by:
> >> >> 
> >> >> - Passing calls to .ndo_dfwd_{add,del}_station to the drivers.
> >> >> 
> >> >> - Recording the subordinate device of offloaded skbs in the control
> >> >>   buffer so that the tagger can take the appropriate action.
> >> >> 
> >> >> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> >> >> ---
> >> >>  include/net/dsa.h |  7 +++++++
> >> >>  net/dsa/slave.c   | 36 ++++++++++++++++++++++++++++++++++--
> >> >>  2 files changed, 41 insertions(+), 2 deletions(-)
> >> >> 
> >> >> diff --git a/include/net/dsa.h b/include/net/dsa.h
> >> >> index 1f9ba9889034..77d4df819299 100644
> >> >> --- a/include/net/dsa.h
> >> >> +++ b/include/net/dsa.h
> >> >> @@ -119,6 +119,7 @@ struct dsa_netdevice_ops {
> >> >>  
> >> >>  struct dsa_skb_cb {
> >> >>  	struct sk_buff *clone;
> >> >> +	struct net_device *sb_dev;
> >> >>  };
> >> >>  
> >> >>  struct __dsa_skb_cb {
> >> >> @@ -828,6 +829,12 @@ struct dsa_switch_ops {
> >> >>  					  const struct switchdev_obj_ring_role_mrp *mrp);
> >> >>  	int	(*port_mrp_del_ring_role)(struct dsa_switch *ds, int port,
> >> >>  					  const struct switchdev_obj_ring_role_mrp *mrp);
> >> >> +
> >> >> +	/* L2 forward offloading */
> >> >> +	void *	(*dfwd_add_station)(struct dsa_switch *ds, int port,
> >> >> +				    struct net_device *sb_dev);
> >> >> +	void	(*dfwd_del_station)(struct dsa_switch *ds, int port,
> >> >> +				    struct net_device *sb_dev);
> >> >>  };
> >> >>  
> >> >>  #define DSA_DEVLINK_PARAM_DRIVER(_id, _name, _type, _cmodes)		\
> >> >> diff --git a/net/dsa/slave.c b/net/dsa/slave.c
> >> >> index 77b33bd161b8..3689ffa2dbb8 100644
> >> >> --- a/net/dsa/slave.c
> >> >> +++ b/net/dsa/slave.c
> >> >> @@ -657,6 +657,13 @@ static netdev_tx_t dsa_slave_xmit(struct sk_buff *skb, struct net_device *dev)
> >> >>  	return dsa_enqueue_skb(nskb, dev);
> >> >>  }
> >> >>  
> >> >> +static u16 dsa_slave_select_queue(struct net_device *dev, struct sk_buff *skb,
> >> >> +				  struct net_device *sb_dev)
> >> >> +{
> >> >> +	DSA_SKB_CB(skb)->sb_dev = sb_dev;
> >> >> +	return netdev_pick_tx(dev, skb, sb_dev);
> >> >> +}
> >> >> +
> >> >
> >> > DSA_SKB_CB is going away:
> >> > https://patchwork.kernel.org/project/netdevbpf/patch/20210427042203.26258-5-yangbo.lu@nxp.com/
> >> >
> >> > Let's either negotiate with Yangbo on keeping it, or make
> >> > .ndo_select_queue a bypass towards the tagger, where it can use its own
> >> > SKB_CB structure and be more flexible in general (I think I'm leaning
> >> > towards the latter).
> >> 
> >> Thus far, Yangbo is a tough negotiator, giving me the silent treatment:
> >> 
> >> https://lore.kernel.org/netdev/87y2d2noe5.fsf@waldekranz.com/
> >> 
> >> :)
> >> 
> >> That memset is giving me a hard time. I have just disabled it on my
> >> branch at the moment. Any ideas on how to get rid of it without breaking
> >> timestamping?
> >
> > :)
> >
> > Is there any guarantee written somewhere that the ownership of skb->cb
> > belongs to the NIC driver at the time of the ndo_select_queue call?
> >
> > If there is, then the trivial solution is to just move the memset in
> > ndo_select_queue.
> >
> > If there isn't, then we've got bigger issues (such as, for example, the
> > qdisc layer being able to overwrite your DSA_SKB_CB(skb)->sb_dev).
> 
> The comment says:
> 
>    "This is owned by whoever has the skb queued ATM."
> 
> But qdisc_skb_cb is a thing as it turns out - so I think I can kiss the
> idea of stashing the pointer in the CB goodbye.
> 
> Looking at some of the other users of .ndo_select_queue, I get the
> feeling that we should really:
> 
> - Pre-generate a FROM_CPU tag template and store it under "TxQ 0"
> - Pre-generate a FORWARD tag template and store it under "TxQ 1"
> - Redfine tag_dsa's .ndo_select_queue to be: `return sb_dev ? 1 : 0;`
> - Fetch the template using skb_queue_mapping, fill in the VID, and send
>   it.

Different drivers use TX queues in different ways. For example, for the
switches with TSN offloads, we set ds->num_tx_queues to a value equal to
the number of hardware traffic classes, so that the CPU can inject
packets with a specific QOS_CLASS field in the DSA header (think VLAN PCP).
This is really visible with tc-taprio where some traffic classes can be
completely turned off, so you can easily tell which TC was a packet
enqueued to. Other switches use TX queues in other ways. Some Broadcom
tagging protocols use the skb queue_mapping to direct the packets to one
of multiple TX queues of the DSA master, in order to apply backpressure
in case there is congestion on the front port.

Selecting a TX queue based on which upper netdev the packet is coming
form sounds to me like the oddest of the bunch. It really adds one more
dimension to the existing uses, I am not sure that this is how it was
intended to be done [ and why, for example, if the sb_dev was propagated
so deeply into dev_queue_xmit, why was it not propagated all the way to
.ndo_start_xmit ], but on the other hand, you have more working
experience with the dev_queue_xmit_accel API than the zero I have.

By the way (to show how little I know) what does "d" in "dfwd" stand for?
It almost sounds to me like a typo that was carried along from
NETIF_F_HW_L2FW_DOFFLOAD_BIT.

We might need to ask for the input of some people from Intel who worked
on this offload framework. For example, I just added Alexander Duyck
hoping he can provide some suggestions. We just want the sb_dev in
ndo_start_xmit, and abusing ndo_select_queue seems like a huge hack just
to obtain that.

> There is really no need to recompute the static parts of the tags on
> each skb. It would mean moving some knowledge of the tagging format to
> the driver. But that boundary is pretty artificial for
> mv88e6xxx. tag_dsa has no use outside of mv88e6xxx, and mv88e6xxx does
> not work with any other tagger. I suppose you could even move the whole
> tagger to drivers/net/dsa/mv88e6xxx/?
> 
> What do you think?
> 
> Andrew?

[ not Andrew, but ]

I made that mistake so that you don't have to. You don't actually gain
as much as you think (performance is about the same, what you win in
instruction count and conditionals you lose in the memcpy), and you
create a dependency between the tagger and the switch driver which was
supposed by design to not exist. For my drivers I tried to remove this
dependency - see commit 7c4bb540e917 ("net: dsa: tag_ocelot: create
separate tagger for Seville"). Also, in the case of Ocelot switches,
a template was used to mask out handling differences between switch
generations, and present them to user space as "the same tagger".
Another bad idea. In general, if a tagging protocol is testable with
dsa_loop this is a plus. People at NXP wanted to see how their drivers
perform with Marvell switches (what are their options for balancing with
RFS/RSS) and this is what they did, changed DSA_TAG_PROTO_NONE from what
dsa_loop advertises. If they need the actual switch driver to initialize
the tagger's template, suddenly it's not so fun anymore.

If it ever becomes important enough, I suppose dsa_loop could even gain
support for the new .change_tag_protocol API to advertise the
feasibility of the idea in general, although given how DYI dsa_loop is
in general, maybe changing the tag protocol at runtime isn't so
important.
