Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A44D24D5633
	for <lists.bridge@lfdr.de>; Fri, 11 Mar 2022 01:00:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 025C660DFE;
	Fri, 11 Mar 2022 00:00:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dYe2AK7ficVC; Fri, 11 Mar 2022 00:00:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 327E960D79;
	Fri, 11 Mar 2022 00:00:01 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EF389C0073;
	Fri, 11 Mar 2022 00:00:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4ECCCC000B
 for <bridge@lists.linux-foundation.org>; Fri, 11 Mar 2022 00:00:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3791660DFE
 for <bridge@lists.linux-foundation.org>; Fri, 11 Mar 2022 00:00:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xW2ha3UQgzpc for <bridge@lists.linux-foundation.org>;
 Thu, 10 Mar 2022 23:59:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F30C560D79
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 23:59:58 +0000 (UTC)
Received: by mail-lj1-x22f.google.com with SMTP id o6so10004653ljp.3
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 15:59:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=uv1ARUm9lyp+CQBIStJYjj77ryWDMuu9udI8j8V7TJc=;
 b=Rni0RTtGnmIflbR6+BQsLW0/KrHWFJIIfdNCKLIWk15qKmCOGP7bwaeqp8RKwvdb8k
 cZqel9Sw8mslp8JqaIYJDE2P5f2BoIEe1ZcMUl0GBpBSmjZQes8H0N5d3nhKsvxdZNQ7
 sNQNvuDgnLTAiVA3kA70fq2vIDbufBYEAZ1N62jFtUhbWq4dH1ltK86FrJrUs8ToxQJN
 ydL+6oBC3oYJ0Tlbo4PWNqJEs9WA76AdOp+iCGUadgCQuurGhXb+CR4z+KrDx17llFj2
 JC6j0xeux2yNo76YQRrH3nVY41FJhOyoWmm73QUtKiyWGJx3Gik/3WmbefsGgw54vD3b
 nuQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=uv1ARUm9lyp+CQBIStJYjj77ryWDMuu9udI8j8V7TJc=;
 b=RT9JsPfKtHPK8fl0HiYlG21T9tI+DlCFImeQqPijVMAcUZwCLauCV9DYoQ6qocjNeV
 p5b5Qikg+iksbICXl8OTCYQvLxU9euIkhjOl0dr1yyLwXu3wTx64+YnRmF0Lv8FnqZfL
 tKogScLWDO5LxGHEjX5s0fk52h5iOHWTME42HmNUSINzDw0j09IgXlZcsmU1ji/BgJop
 lvDAaQb203fiaKT34sR0WmU5BtospdK0hSbVN8GQDV289ZnX1LcyWI12a8lITsin3AcL
 7V9QkOtTbkQ+qMH6D01OYHjNupJ5U5B6F86Cs2zQTypgWuhXRjuB26Cimb1xfw+Nw6ZK
 baYQ==
X-Gm-Message-State: AOAM533QpdhviZiq75+QWQr7FDXIaRD6saoB/TP++poqX/m/AkdALA7E
 kdGCsLp2slnR8hmz4Sdsskg14k6tiD4tc2YWz/w=
X-Google-Smtp-Source: ABdhPJyQOf302TvXhH2b3rZR80tDsfCRQaobQOu5tWdLlVJfwHUAQpkxeQjo+jL9EMDlrUqsQxNIsQ==
X-Received: by 2002:a2e:b5b9:0:b0:246:b30:64c8 with SMTP id
 f25-20020a2eb5b9000000b002460b3064c8mr4379870ljn.17.1646956796325; 
 Thu, 10 Mar 2022 15:59:56 -0800 (PST)
Received: from wkz-x280 (h-212-85-90-115.A259.priv.bahnhof.se. [212.85.90.115])
 by smtp.gmail.com with ESMTPSA id
 w23-20020a0565120b1700b0044829a6061esm1248938lfu.186.2022.03.10.15.59.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 15:59:55 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20220310230828.fvx24zhoyue5mkb7@skbuf>
References: <20220301100321.951175-1-tobias@waldekranz.com>
 <20220301100321.951175-8-tobias@waldekranz.com>
 <20220303222055.7a5pr4la3wmuuekc@skbuf> <87mthymblh.fsf@waldekranz.com>
 <20220310103509.g35syl776kyh5j2n@skbuf> <87h785n67k.fsf@waldekranz.com>
 <20220310161857.33owtynhm3pdyxiy@skbuf> <87bkydmnmy.fsf@waldekranz.com>
 <20220310230828.fvx24zhoyue5mkb7@skbuf>
Date: Fri, 11 Mar 2022 00:59:54 +0100
Message-ID: <878rthmk91.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v2 net-next 07/10] net: dsa: Pass MST state
 changes to driver
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

On Fri, Mar 11, 2022 at 01:08, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Thu, Mar 10, 2022 at 11:46:45PM +0100, Tobias Waldekranz wrote:
>> On Thu, Mar 10, 2022 at 18:18, Vladimir Oltean <olteanv@gmail.com> wrote:
>> > On Thu, Mar 10, 2022 at 05:05:35PM +0100, Tobias Waldekranz wrote:
>> >> On Thu, Mar 10, 2022 at 12:35, Vladimir Oltean <olteanv@gmail.com> wrote:
>> >> > On Thu, Mar 10, 2022 at 09:54:34AM +0100, Tobias Waldekranz wrote:
>> >> >> >> +	if (!dsa_port_can_configure_learning(dp) || dp->learning) {
>> >> >> >> +		switch (state->state) {
>> >> >> >> +		case BR_STATE_DISABLED:
>> >> >> >> +		case BR_STATE_BLOCKING:
>> >> >> >> +		case BR_STATE_LISTENING:
>> >> >> >> +			/* Ideally we would only fast age entries
>> >> >> >> +			 * belonging to VLANs controlled by this
>> >> >> >> +			 * MST.
>> >> >> >> +			 */
>> >> >> >> +			dsa_port_fast_age(dp);
>> >> >> >
>> >> >> > Does mv88e6xxx support this? If it does, you might just as well
>> >> >> > introduce another variant of ds->ops->port_fast_age() for an msti.
>> >> >> 
>> >> >> You can limit ATU operations to a particular FID. So the way I see it we
>> >> >> could either have:
>> >> >> 
>> >> >> int (*port_vlan_fast_age)(struct dsa_switch *ds, int port, u16 vid)
>> >> >> 
>> >> >> + Maybe more generic. You could imagine there being a way to trigger
>> >> >>   this operation from userspace for example.
>> >> >> - We would have to keep the VLAN<->MSTI mapping in the DSA layer in
>> >> >>   order to be able to do the fan-out in dsa_port_set_mst_state.
>> >> >> 
>> >> >> or:
>> >> >> 
>> >> >> int (*port_msti_fast_age)(struct dsa_switch *ds, int port, u16 msti)
>> >> >> 
>> >> >> + Let's the mapping be an internal affair in the driver.
>> >> >> - Perhaps, less generically useful.
>> >> >> 
>> >> >> Which one do you prefer? Or is there a hidden third option? :)
>> >> >
>> >> > Yes, I was thinking of "port_msti_fast_age". I don't see a cheap way of
>> >> > keeping VLAN to MSTI associations in the DSA layer. Only if we could
>> >> > retrieve this mapping from the bridge layer - maybe with something
>> >> > analogous to br_vlan_get_info(), but br_mst_get_info(), and this gets
>> >> > passed a VLAN_N_VID sized bitmap, which the bridge populates with ones
>> >> > and zeroes.
>> >> 
>> >> That can easily be done. Given that, should we go for port_vlan_fast_age
>> >> instead? port_msti_fast_age feels like an awkward interface, since I
>> >> don't think there is any hardware out there that can actually perform
>> >> that operation without internally fanning it out over all affected VIDs
>> >> (or FIDs in the case of mv88e6xxx).
>> >
>> > Yup, yup. My previous email was all over the place with regard to the
>> > available options, because I wrote it in multiple phases so it wasn't
>> > chronologically ordered top-to-bottom. But port_vlan_fast_age() makes
>> > the most sense if you can implement br_mst_get_info(). Same goes for
>> > dsa_port_notify_bridge_fdb_flush().
>> >
>> >> > The reason why I asked for this is because I'm not sure of the
>> >> > implications of flushing the entire FDB of the port for a single MSTP
>> >> > state change. It would trigger temporary useless flooding in other MSTIs
>> >> > at the very least. There isn't any backwards compatibility concern to
>> >> > speak of, so we can at least try from the beginning to limit the
>> >> > flushing to the required VLANs.
>> >> 
>> >> Aside from the performance implications of flows being temporarily
>> >> flooded I don't think there are any.
>> >> 
>> >> I suppose if you've disabled flooding of unknown unicast on that port,
>> >> you would loose the flow until you see some return traffic (or when one
>> >> side gives up and ARPs). While somewhat esoteric, it would be nice to
>> >> handle this case if the hardware supports it.
>> >
>> > If by "handle this case" you mean "flush only the affected VLANs", then
>> > yes, I fully agree.
>> >
>> >> > What I didn't think about, and will be a problem, is
>> >> > dsa_port_notify_bridge_fdb_flush() - we don't know the vid to flush.
>> >> > The easy way out here would be to export dsa_port_notify_bridge_fdb_flush(),
>> >> > add a "vid" argument to it, and let drivers call it. Thoughts?
>> >> 
>> >> To me, this seems to be another argument in favor of
>> >> port_vlan_fast_age. That way you would know the VIDs being flushed at
>> >> the DSA layer, and driver writers needn't concern themselves with having
>> >> to remember to generate the proper notifications back to the bridge.
>> >
>> > See above.
>> >
>> >> > Alternatively, if you think that cross-flushing FDBs of multiple MSTIs
>> >> > isn't a real problem, I suppose we could keep the "port_fast_age" method.
>> >> 
>> >> What about falling back to it if the driver doesn't support per-VLAN
>> >> flushing? Flushing all entries will work in most cases, at the cost of
>> >> some temporary flooding. Seems more useful than refusing the offload
>> >> completely.
>> >
>> > So here's what I don't understand. Do you expect a driver other than
>> > mv88e6xxx to do something remotely reasonable under a bridge with MSTP
>> > enabled? The idea being to handle gracefully the case where a port is
>> > BLOCKING in an MSTI but FORWARDING in another. Because if not, let's
>> > just outright not offload that kind of bridge, and only concern
>> > ourselves with what MST-capable drivers can do.
>> 
>> I think you're right. I was trying to make it easier for other driver
>> writers, but it will just be more confusing and error prone.
>> 
>> Alright, so v3 will have something like this:
>> 
>> bool dsa_port_can_offload_mst(struct dsa_port *dp)
>> {
>> 	return ds->ops->vlan_msti_set &&
>> 		ds->ops->port_mst_state_set &&
>> 		ds->ops->port_vlan_fast_age &&
>> 		dsa_port_can_configure_learning(dp);
>> }
>> 
>> If this returns false, we have two options:
>> 
>> 1. Return -EOPNOTSUPP, which the bridge will be unable to discriminate
>>    from a non-switchdev port saying "I have no idea what you're talking
>>    about". I.e. the bridge will happily apply the config, but the
>>    hardware won't match. I don't like this, but it lines up with most
>>    other stuff.
>> 
>> 2. Return a hard error, e.g. -EINVAL/-ENOSYS. This will keep the bridge
>>    in sync with the hardware and also gives some feedback to the
>>    user. This seems like the better approach to me, but it is a new kind
>>    of paradigm.
>> 
>> What do you think?
>
> Wait, what? It matters a lot where you place the call to
> dsa_port_can_offload_mst(), too. You don't have to propagate a hard
> error code, either, at least if you make dsa_port_bridge_join() return
> -EOPNOTSUPP prior to calling switchdev_bridge_port_offload(), no?
> DSA transforms this error code into 0, and dsa_port_offloads_bridge*()
> starts returning false, which makes us ignore all MSTP related switchdev
> notifiers.

Right. So we also need:

1. A br_mst_enabled() that we can call from dsa_port_bridge_join to
   validate the initial state.

2. A switchdev attr event sent out when enabling/disabling MST on the
   bridge, so that we can NAK the change.

> The important part will be to make sure that MSTP is enabled for this
> bridge from the get-go (that being the only case in which we can offload
> an MSTP aware bridge), and refusing to offload dynamic changes to its
> MSTP state. I didn't re-check now, but I think I remember there being

Hang on though. Won't that mean that this sequence...

ip link add dev br0 type bridge \
    vlan_filtering 1 vlan_default_pvid 0 mst_enable 1
ip link set dev swp1 master br0

...will work, but offloading will be disabled on swp0; whereas this
sequence...

ip link add dev br0 type bridge \
    vlan_filtering 1 vlan_default_pvid 0
ip link set dev swp1 master br0
ip link set dev br0 type bridge mst_enable 1

...will fail on the final command? Even though they are logically
equivalent? But maybe that's just the way the cookie crumbles.

> limitations even in the software bridge related to dynamic MSTP mode
> changes anyway - there had to not be any port VLANs, which IIUC means
> that you actually need to _delete_ the port PVIDs which are automatically
> created before you could change the MSTP mode.

There are some ergonomic issues there, yes. I might look at it again and
see if there is some reasonable way of allowing the mode to be changed
even when VLANs are present.

> This is the model, what's wrong with it? I said "don't offload the
> bridge", not "don't offload specific MSTP operations".

Nothing is wrong, I just couldn't see the whole picture.

This is the way.
