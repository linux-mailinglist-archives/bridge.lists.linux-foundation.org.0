Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA7E373136
	for <lists.bridge@lfdr.de>; Tue,  4 May 2021 22:07:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E6E6140146;
	Tue,  4 May 2021 20:07:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LWlXI_u73K2e; Tue,  4 May 2021 20:07:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTP id 47C04405C9;
	Tue,  4 May 2021 20:07:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 04369C001C;
	Tue,  4 May 2021 20:07:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0120AC0001
 for <bridge@lists.linux-foundation.org>; Tue,  4 May 2021 20:07:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D5E0460D4E
 for <bridge@lists.linux-foundation.org>; Tue,  4 May 2021 20:07:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20150623.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y2blOPlfo536 for <bridge@lists.linux-foundation.org>;
 Tue,  4 May 2021 20:07:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com
 [IPv6:2a00:1450:4864:20::230])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7D9F560697
 for <bridge@lists.linux-foundation.org>; Tue,  4 May 2021 20:07:18 +0000 (UTC)
Received: by mail-lj1-x230.google.com with SMTP id p12so12774205ljg.1
 for <bridge@lists.linux-foundation.org>; Tue, 04 May 2021 13:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=Dm0qTmtQ/pvhRjI4p1Lrq8NFg5VnRTeGtk7rmeTytwI=;
 b=11kZCEtxU2UYQXpmUmE5+iqDdHTzWhWjpYaRuZgkSKM49tHI1Lar+DIFIWoGEm7UmA
 fijwNhVz7+JogMVUKw+ZGCpi/UQrWa/UoMr1x9p2/aEfNpEjyGkn+kKlZrdU880FJqpv
 3Wsufin2uf9zyehYYRRWK0HKjgjJfceLh5wyAQGOHslgEFEhEisAf6LBknUDjQZxpg+k
 +Mgsx1DH06HyBRAwMAm6jRgSg5CQHJjG4q8bWOzwAgdubOK9GPJPSB24AEyFwuKZgiQC
 7D3v35c5pcew6mO4UIPb6b6qBKcvd9OJynQoxUTzHkmrudWIlLr2QFQdZBBHD7mlZV02
 bBhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Dm0qTmtQ/pvhRjI4p1Lrq8NFg5VnRTeGtk7rmeTytwI=;
 b=lT9r5yxP5be56ivOZgNBZ/ciLljFMjqmk0nckassXR9q7wdwBXS1/jLPdhXU7njpoI
 T5dhoUV18acNNZ4c9IAKUe1ikC+X1cnIkTjcEDQCYfOLlm4VVy1B2THX+wSE2hHQuRVR
 xuaPdKtu8NhUMuwJ2WWx5Lr7CO9mOrErN178vcF1pFKOuX23xzAjKtYwCnyCQB7P7m98
 z/1QBy2yY9nK/BQQN3E/oky3noLOVFBFEeqqNfxfgoYXBNXdQikHDATZKSeDz4+jjUts
 cAbgi0xJ+cdbK073fZvCZXlCxwt6ZuYxA594gd+j7AzOyGncBGVygKKxz2YG38pyPjf6
 MjYA==
X-Gm-Message-State: AOAM532+MF6MgQNedEuG8qBWpRdP/Ukq06i49zoZWfaL9aIC2wY4vLm5
 QRFsMQCcaf3MZGceVN5K11hmdYB7Dt7LLQ==
X-Google-Smtp-Source: ABdhPJy9/k4qlRebfBDAnegDjHFx2uvYqdCX5GejdLN+gg7jN0oOPu+gDiNWK85tcm8nNccI/sVo9g==
X-Received: by 2002:a2e:7d19:: with SMTP id y25mr6843944ljc.82.1620158836079; 
 Tue, 04 May 2021 13:07:16 -0700 (PDT)
Received: from wkz-x280 (h-90-88.A259.priv.bahnhof.se. [212.85.90.88])
 by smtp.gmail.com with ESMTPSA id c7sm208591lfv.27.2021.05.04.13.07.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 May 2021 13:07:15 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Vladimir Oltean <olteanv@gmail.com>, andrew@lunn.ch
In-Reply-To: <20210504152106.oppawchuruapg4sb@skbuf>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
 <20210426170411.1789186-7-tobias@waldekranz.com>
 <20210427101747.n3y6w6o7thl5cz3r@skbuf> <878s4uo8xc.fsf@waldekranz.com>
 <20210504152106.oppawchuruapg4sb@skbuf>
Date: Tue, 04 May 2021 22:07:14 +0200
Message-ID: <874kfintzh.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: f.fainelli@gmail.com, jiri@resnulli.us, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, vivien.didelot@gmail.com, idosch@idosch.org,
 nikolay@nvidia.com, roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
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

On Tue, May 04, 2021 at 18:21, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Tue, May 04, 2021 at 04:44:31PM +0200, Tobias Waldekranz wrote:
>> On Tue, Apr 27, 2021 at 13:17, Vladimir Oltean <olteanv@gmail.com> wrote:
>> > On Mon, Apr 26, 2021 at 07:04:08PM +0200, Tobias Waldekranz wrote:
>> >> Allow DSA drivers to support forward offloading from a bridge by:
>> >> 
>> >> - Passing calls to .ndo_dfwd_{add,del}_station to the drivers.
>> >> 
>> >> - Recording the subordinate device of offloaded skbs in the control
>> >>   buffer so that the tagger can take the appropriate action.
>> >> 
>> >> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>> >> ---
>> >>  include/net/dsa.h |  7 +++++++
>> >>  net/dsa/slave.c   | 36 ++++++++++++++++++++++++++++++++++--
>> >>  2 files changed, 41 insertions(+), 2 deletions(-)
>> >> 
>> >> diff --git a/include/net/dsa.h b/include/net/dsa.h
>> >> index 1f9ba9889034..77d4df819299 100644
>> >> --- a/include/net/dsa.h
>> >> +++ b/include/net/dsa.h
>> >> @@ -119,6 +119,7 @@ struct dsa_netdevice_ops {
>> >>  
>> >>  struct dsa_skb_cb {
>> >>  	struct sk_buff *clone;
>> >> +	struct net_device *sb_dev;
>> >>  };
>> >>  
>> >>  struct __dsa_skb_cb {
>> >> @@ -828,6 +829,12 @@ struct dsa_switch_ops {
>> >>  					  const struct switchdev_obj_ring_role_mrp *mrp);
>> >>  	int	(*port_mrp_del_ring_role)(struct dsa_switch *ds, int port,
>> >>  					  const struct switchdev_obj_ring_role_mrp *mrp);
>> >> +
>> >> +	/* L2 forward offloading */
>> >> +	void *	(*dfwd_add_station)(struct dsa_switch *ds, int port,
>> >> +				    struct net_device *sb_dev);
>> >> +	void	(*dfwd_del_station)(struct dsa_switch *ds, int port,
>> >> +				    struct net_device *sb_dev);
>> >>  };
>> >>  
>> >>  #define DSA_DEVLINK_PARAM_DRIVER(_id, _name, _type, _cmodes)		\
>> >> diff --git a/net/dsa/slave.c b/net/dsa/slave.c
>> >> index 77b33bd161b8..3689ffa2dbb8 100644
>> >> --- a/net/dsa/slave.c
>> >> +++ b/net/dsa/slave.c
>> >> @@ -657,6 +657,13 @@ static netdev_tx_t dsa_slave_xmit(struct sk_buff *skb, struct net_device *dev)
>> >>  	return dsa_enqueue_skb(nskb, dev);
>> >>  }
>> >>  
>> >> +static u16 dsa_slave_select_queue(struct net_device *dev, struct sk_buff *skb,
>> >> +				  struct net_device *sb_dev)
>> >> +{
>> >> +	DSA_SKB_CB(skb)->sb_dev = sb_dev;
>> >> +	return netdev_pick_tx(dev, skb, sb_dev);
>> >> +}
>> >> +
>> >
>> > DSA_SKB_CB is going away:
>> > https://patchwork.kernel.org/project/netdevbpf/patch/20210427042203.26258-5-yangbo.lu@nxp.com/
>> >
>> > Let's either negotiate with Yangbo on keeping it, or make
>> > .ndo_select_queue a bypass towards the tagger, where it can use its own
>> > SKB_CB structure and be more flexible in general (I think I'm leaning
>> > towards the latter).
>> 
>> Thus far, Yangbo is a tough negotiator, giving me the silent treatment:
>> 
>> https://lore.kernel.org/netdev/87y2d2noe5.fsf@waldekranz.com/
>> 
>> :)
>> 
>> That memset is giving me a hard time. I have just disabled it on my
>> branch at the moment. Any ideas on how to get rid of it without breaking
>> timestamping?
>
> :)
>
> Is there any guarantee written somewhere that the ownership of skb->cb
> belongs to the NIC driver at the time of the ndo_select_queue call?
>
> If there is, then the trivial solution is to just move the memset in
> ndo_select_queue.
>
> If there isn't, then we've got bigger issues (such as, for example, the
> qdisc layer being able to overwrite your DSA_SKB_CB(skb)->sb_dev).

The comment says:

   "This is owned by whoever has the skb queued ATM."

But qdisc_skb_cb is a thing as it turns out - so I think I can kiss the
idea of stashing the pointer in the CB goodbye.

Looking at some of the other users of .ndo_select_queue, I get the
feeling that we should really:

- Pre-generate a FROM_CPU tag template and store it under "TxQ 0"
- Pre-generate a FORWARD tag template and store it under "TxQ 1"
- Redfine tag_dsa's .ndo_select_queue to be: `return sb_dev ? 1 : 0;`
- Fetch the template using skb_queue_mapping, fill in the VID, and send
  it.

There is really no need to recompute the static parts of the tags on
each skb. It would mean moving some knowledge of the tagging format to
the driver. But that boundary is pretty artificial for
mv88e6xxx. tag_dsa has no use outside of mv88e6xxx, and mv88e6xxx does
not work with any other tagger. I suppose you could even move the whole
tagger to drivers/net/dsa/mv88e6xxx/?

What do you think?

Andrew?
