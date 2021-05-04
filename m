Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3D4373241
	for <lists.bridge@lfdr.de>; Wed,  5 May 2021 00:12:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4538D8474E;
	Tue,  4 May 2021 22:12:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HN4z5wvrxCZF; Tue,  4 May 2021 22:12:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5CFC08474C;
	Tue,  4 May 2021 22:12:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2D928C001C;
	Tue,  4 May 2021 22:12:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6199AC0001
 for <bridge@lists.linux-foundation.org>; Tue,  4 May 2021 22:12:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4F5004191D
 for <bridge@lists.linux-foundation.org>; Tue,  4 May 2021 22:12:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20150623.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SNzMcpVXn5mt for <bridge@lists.linux-foundation.org>;
 Tue,  4 May 2021 22:12:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com
 [IPv6:2a00:1450:4864:20::22b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5413B41919
 for <bridge@lists.linux-foundation.org>; Tue,  4 May 2021 22:12:20 +0000 (UTC)
Received: by mail-lj1-x22b.google.com with SMTP id b7so9327726ljr.4
 for <bridge@lists.linux-foundation.org>; Tue, 04 May 2021 15:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=gVQmufPwKJtCQC2u2kfaalH0EtY79vcshm5uX6ahfOE=;
 b=Z6IF5X7hfmSyH+IZCb9KmKUYUj2RwtXF0I1HQFJG5l9mqGSplduBk9JjfiAp9WXOnm
 sUkUCJRf4X3WhL48q+pcJyaf17BQahzmsjqUrmSFUJA7S6XAa7CmG7bv5vD5p2lYLXM2
 3qCIXu+gemlBBbZlH8nT67iDve0G3jzurKThOjepG4zrMLdjeDTgeTUNAP2tNg4O2Ngp
 YscBQx9dTAJI5pxlCyYhkACj4vouEv8kUlZTAr6O2KjZ88KQ4gYC3i6Ywi/+BJTHHD5S
 DetLpUJYERMbO24QuoGh/YVZy1wxe2r7IMRaKxTWMLQWy+JI4RpX2sXMkAIP8lhLF7lo
 tW2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=gVQmufPwKJtCQC2u2kfaalH0EtY79vcshm5uX6ahfOE=;
 b=YsKy1xQ8H6s9AugsmgTm/EhoXOkwpg2SrC+F3v2OGFbYqZ+kaqad22fNHiW9g+2MHE
 n1ShUZWbiR27oZZr9H7fnZfqhdim6oTRaAH3yP1dK3zzJaXJ4Q2LGy1LbTQKWSD1zh59
 Z2ansVSgnPUEev6sGUbRKTflnWAZFsbO3qhzyDAaKzddrzv+w8oqwcBmN5tJz6OEROMJ
 UGFYbIAIrrjcwvbc3YDk2cd2HBClWr8atn1LOSqzfPIobOFOnIDLDStCChu3/0k0LUGj
 n5t0reHGABWRLj/sSynks9HTuikoMjGfdqQ8y+T/Yu9rf0Rol1ASLr9VSsXzgwY3i0Ue
 x+NQ==
X-Gm-Message-State: AOAM532t3qMzBB5RWdKplfm7chsOBPjKY+iw2rHNAv9RpQvsbuZvNmsX
 rHPuuxezQO/efyXkGnRYM8AyM39GT9Jm9w==
X-Google-Smtp-Source: ABdhPJwtJh6aAJ1yIf5atzwSsXELsfulOMLP4DBoKxRmdTDxt9vokgYKbQQtSSdbnf9sLGw0ZUZsvg==
X-Received: by 2002:a05:651c:316:: with SMTP id
 a22mr8754131ljp.255.1620166337733; 
 Tue, 04 May 2021 15:12:17 -0700 (PDT)
Received: from wkz-x280 (h-90-88.A259.priv.bahnhof.se. [212.85.90.88])
 by smtp.gmail.com with ESMTPSA id u27sm371593lfm.239.2021.05.04.15.12.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 May 2021 15:12:17 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Vladimir Oltean <olteanv@gmail.com>,
 Alexander Duyck <alexander.duyck@gmail.com>
In-Reply-To: <20210504205823.j5wg547lgyw776rl@skbuf>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
 <20210426170411.1789186-7-tobias@waldekranz.com>
 <20210427101747.n3y6w6o7thl5cz3r@skbuf> <878s4uo8xc.fsf@waldekranz.com>
 <20210504152106.oppawchuruapg4sb@skbuf> <874kfintzh.fsf@waldekranz.com>
 <20210504205823.j5wg547lgyw776rl@skbuf>
Date: Wed, 05 May 2021 00:12:15 +0200
Message-ID: <87y2cum9mo.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, May 04, 2021 at 23:58, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Tue, May 04, 2021 at 10:07:14PM +0200, Tobias Waldekranz wrote:
>> On Tue, May 04, 2021 at 18:21, Vladimir Oltean <olteanv@gmail.com> wrote:
>> > On Tue, May 04, 2021 at 04:44:31PM +0200, Tobias Waldekranz wrote:
>> >> On Tue, Apr 27, 2021 at 13:17, Vladimir Oltean <olteanv@gmail.com> wrote:
>> >> > On Mon, Apr 26, 2021 at 07:04:08PM +0200, Tobias Waldekranz wrote:
>> >> >> Allow DSA drivers to support forward offloading from a bridge by:
>> >> >> 
>> >> >> - Passing calls to .ndo_dfwd_{add,del}_station to the drivers.
>> >> >> 
>> >> >> - Recording the subordinate device of offloaded skbs in the control
>> >> >>   buffer so that the tagger can take the appropriate action.
>> >> >> 
>> >> >> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>> >> >> ---
>> >> >>  include/net/dsa.h |  7 +++++++
>> >> >>  net/dsa/slave.c   | 36 ++++++++++++++++++++++++++++++++++--
>> >> >>  2 files changed, 41 insertions(+), 2 deletions(-)
>> >> >> 
>> >> >> diff --git a/include/net/dsa.h b/include/net/dsa.h
>> >> >> index 1f9ba9889034..77d4df819299 100644
>> >> >> --- a/include/net/dsa.h
>> >> >> +++ b/include/net/dsa.h
>> >> >> @@ -119,6 +119,7 @@ struct dsa_netdevice_ops {
>> >> >>  
>> >> >>  struct dsa_skb_cb {
>> >> >>  	struct sk_buff *clone;
>> >> >> +	struct net_device *sb_dev;
>> >> >>  };
>> >> >>  
>> >> >>  struct __dsa_skb_cb {
>> >> >> @@ -828,6 +829,12 @@ struct dsa_switch_ops {
>> >> >>  					  const struct switchdev_obj_ring_role_mrp *mrp);
>> >> >>  	int	(*port_mrp_del_ring_role)(struct dsa_switch *ds, int port,
>> >> >>  					  const struct switchdev_obj_ring_role_mrp *mrp);
>> >> >> +
>> >> >> +	/* L2 forward offloading */
>> >> >> +	void *	(*dfwd_add_station)(struct dsa_switch *ds, int port,
>> >> >> +				    struct net_device *sb_dev);
>> >> >> +	void	(*dfwd_del_station)(struct dsa_switch *ds, int port,
>> >> >> +				    struct net_device *sb_dev);
>> >> >>  };
>> >> >>  
>> >> >>  #define DSA_DEVLINK_PARAM_DRIVER(_id, _name, _type, _cmodes)		\
>> >> >> diff --git a/net/dsa/slave.c b/net/dsa/slave.c
>> >> >> index 77b33bd161b8..3689ffa2dbb8 100644
>> >> >> --- a/net/dsa/slave.c
>> >> >> +++ b/net/dsa/slave.c
>> >> >> @@ -657,6 +657,13 @@ static netdev_tx_t dsa_slave_xmit(struct sk_buff *skb, struct net_device *dev)
>> >> >>  	return dsa_enqueue_skb(nskb, dev);
>> >> >>  }
>> >> >>  
>> >> >> +static u16 dsa_slave_select_queue(struct net_device *dev, struct sk_buff *skb,
>> >> >> +				  struct net_device *sb_dev)
>> >> >> +{
>> >> >> +	DSA_SKB_CB(skb)->sb_dev = sb_dev;
>> >> >> +	return netdev_pick_tx(dev, skb, sb_dev);
>> >> >> +}
>> >> >> +
>> >> >
>> >> > DSA_SKB_CB is going away:
>> >> > https://patchwork.kernel.org/project/netdevbpf/patch/20210427042203.26258-5-yangbo.lu@nxp.com/
>> >> >
>> >> > Let's either negotiate with Yangbo on keeping it, or make
>> >> > .ndo_select_queue a bypass towards the tagger, where it can use its own
>> >> > SKB_CB structure and be more flexible in general (I think I'm leaning
>> >> > towards the latter).
>> >> 
>> >> Thus far, Yangbo is a tough negotiator, giving me the silent treatment:
>> >> 
>> >> https://lore.kernel.org/netdev/87y2d2noe5.fsf@waldekranz.com/
>> >> 
>> >> :)
>> >> 
>> >> That memset is giving me a hard time. I have just disabled it on my
>> >> branch at the moment. Any ideas on how to get rid of it without breaking
>> >> timestamping?
>> >
>> > :)
>> >
>> > Is there any guarantee written somewhere that the ownership of skb->cb
>> > belongs to the NIC driver at the time of the ndo_select_queue call?
>> >
>> > If there is, then the trivial solution is to just move the memset in
>> > ndo_select_queue.
>> >
>> > If there isn't, then we've got bigger issues (such as, for example, the
>> > qdisc layer being able to overwrite your DSA_SKB_CB(skb)->sb_dev).
>> 
>> The comment says:
>> 
>>    "This is owned by whoever has the skb queued ATM."
>> 
>> But qdisc_skb_cb is a thing as it turns out - so I think I can kiss the
>> idea of stashing the pointer in the CB goodbye.
>> 
>> Looking at some of the other users of .ndo_select_queue, I get the
>> feeling that we should really:
>> 
>> - Pre-generate a FROM_CPU tag template and store it under "TxQ 0"
>> - Pre-generate a FORWARD tag template and store it under "TxQ 1"
>> - Redfine tag_dsa's .ndo_select_queue to be: `return sb_dev ? 1 : 0;`
>> - Fetch the template using skb_queue_mapping, fill in the VID, and send
>>   it.
>
> Different drivers use TX queues in different ways. For example, for the
> switches with TSN offloads, we set ds->num_tx_queues to a value equal to
> the number of hardware traffic classes, so that the CPU can inject
> packets with a specific QOS_CLASS field in the DSA header (think VLAN PCP).
> This is really visible with tc-taprio where some traffic classes can be
> completely turned off, so you can easily tell which TC was a packet
> enqueued to. Other switches use TX queues in other ways. Some Broadcom
> tagging protocols use the skb queue_mapping to direct the packets to one
> of multiple TX queues of the DSA master, in order to apply backpressure
> in case there is congestion on the front port.
>
> Selecting a TX queue based on which upper netdev the packet is coming
> form sounds to me like the oddest of the bunch. It really adds one more
> dimension to the existing uses, I am not sure that this is how it was
> intended to be done [ and why, for example, if the sb_dev was propagated
> so deeply into dev_queue_xmit, why was it not propagated all the way to
> .ndo_start_xmit ], but on the other hand, you have more working
> experience with the dev_queue_xmit_accel API than the zero I have.

Yeah it does not feel right. I expect mv88e6xxx will also want to expose
the real number of queues in the future. Some of the newer devices have
support for time aware shapers for example.

As for why sb_dev is not propagated to .ndo_start_xmit: I chalked it up
to the existing users managing the macvlan offloads by directing those
flows to a particular TxQ. I.e. they simply had no need for it.

Or perhaps they did not have the nerve to send the commit that changed
the signature of _every_ driver's .ndo_start_xmit :)

> By the way (to show how little I know) what does "d" in "dfwd" stand for?
> It almost sounds to me like a typo that was carried along from
> NETIF_F_HW_L2FW_DOFFLOAD_BIT.

That has been bugging me as well! I have no idea.

> We might need to ask for the input of some people from Intel who worked
> on this offload framework. For example, I just added Alexander Duyck
> hoping he can provide some suggestions. We just want the sb_dev in
> ndo_start_xmit, and abusing ndo_select_queue seems like a huge hack just
> to obtain that.

I think you are right.

>> There is really no need to recompute the static parts of the tags on
>> each skb. It would mean moving some knowledge of the tagging format to
>> the driver. But that boundary is pretty artificial for
>> mv88e6xxx. tag_dsa has no use outside of mv88e6xxx, and mv88e6xxx does
>> not work with any other tagger. I suppose you could even move the whole
>> tagger to drivers/net/dsa/mv88e6xxx/?
>> 
>> What do you think?
>> 
>> Andrew?
>
> [ not Andrew, but ]
>
> I made that mistake so that you don't have to. You don't actually gain
> as much as you think (performance is about the same, what you win in
> instruction count and conditionals you lose in the memcpy),

That is valuable info, thank you. But I think the most important
improvement I see would be the ability to couple the tagger tighter to
the driver when we add more complicated features.

> and you
> create a dependency between the tagger and the switch driver which was
> supposed by design to not exist.

Sure, but _why_ should it not exist? Many fields in the tag can only be
correctly generated/interpreted in combination with knowledge of the
current configuration, which is the driver's domain. The dependency is
already there, etched in silicon.

> For my drivers I tried to remove this
> dependency - see commit 7c4bb540e917 ("net: dsa: tag_ocelot: create
> separate tagger for Seville"). Also, in the case of Ocelot switches,
> a template was used to mask out handling differences between switch
> generations, and present them to user space as "the same tagger".
> Another bad idea. In general, if a tagging protocol is testable with
> dsa_loop this is a plus. People at NXP wanted to see how their drivers
> perform with Marvell switches (what are their options for balancing with
> RFS/RSS) and this is what they did, changed DSA_TAG_PROTO_NONE from what
> dsa_loop advertises. If they need the actual switch driver to initialize
> the tagger's template, suddenly it's not so fun anymore.

I shall have to look more closely at dsa_loop, so far I have just seen
the name float by on a few occasions.

> If it ever becomes important enough, I suppose dsa_loop could even gain
> support for the new .change_tag_protocol API to advertise the
> feasibility of the idea in general, although given how DYI dsa_loop is
> in general, maybe changing the tag protocol at runtime isn't so
> important.
