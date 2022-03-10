Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 289594D550B
	for <lists.bridge@lfdr.de>; Fri, 11 Mar 2022 00:08:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4599660AE1;
	Thu, 10 Mar 2022 23:08:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SdUj4un52Rcs; Thu, 10 Mar 2022 23:08:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 8891B60B10;
	Thu, 10 Mar 2022 23:08:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 41F6DC0073;
	Thu, 10 Mar 2022 23:08:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BCC48C000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 23:08:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B2AD460AE1
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 23:08:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SvPcHhNCu6-C for <bridge@lists.linux-foundation.org>;
 Thu, 10 Mar 2022 23:08:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D06B160A9C
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 23:08:32 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id qx21so15372729ejb.13
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 15:08:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=HCHrcR4YJ2xtc4FY2BMgDcY7SCm93U/C5P25h42SrIY=;
 b=jMK7IMUs01zOlEllHurQiT1N5EPE1wNmEvxRQWfhXOx6gNoKLQNEXN2h1NrD+wszIC
 eyOfzZRXEy0kAWYzim/STmfiBrYySHORmABBbw4Lkb1s1p4q9m665GjjEh1YJkF9N1xz
 FTbBMcW5Zig5d/UOZIPy/tMxJfHz8OQMTF4KkQNMhRqvL0ePvKga7n4aGIUp2XbyXMfv
 hCPghJNtUQeDO5S11TO8nuerlPKjcnuXx01QfG8bfUkPztWENQo1yZtC69H5HkUfW1Xc
 qAwau6WUxk2Mu8IkhAdtfKQ/TKcm96WMK3t8Vt73ldjFpRo2jLbTiYT9xnWr3xH+joen
 Xl0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HCHrcR4YJ2xtc4FY2BMgDcY7SCm93U/C5P25h42SrIY=;
 b=pwpF22E0BaGlDZsGVrL+vWR0Frq3Au3sfa7H3xipZExPNrGUkMgoMhl22LC3LZeTof
 /ccFPvzgLZTUcmHBcOAORa+Cp5W5WOzY2AaO7HllmC1KQycTqmTioh2d2jEGO8vypn19
 qPDPvvdR6SWqHHPtXZBs3r5dF/y2kx3cnjMAztxQMuHTYI3T90db8QhGhIwQnoIMQBln
 0VLGbVTriL9ZCPwG6knvIJTs5G2fYdSlRpi4t/6YbqrlS5pI/nd1jg94VLegUDGERr3p
 BUOLjXdBqgG3MRzLr/WklgLqcbDxnXJHxvcZVOD9Xt4Y7p3LgItptL4ByzsPsfkncwTI
 OoEw==
X-Gm-Message-State: AOAM531FIkvMjsdIUtVQDe0+/JPZvhzsJj0uqgtQzZIZg/RwdVRSOSeW
 vD/d0uKW1lSYESBUbsNsd5M=
X-Google-Smtp-Source: ABdhPJw2ZHY1DrWCR9/CFH2RhvFid+fzatFjBzbAFNDCr9M96G4DwCMOxZL3FOZZ/3xaKCBGvYm1cw==
X-Received: by 2002:a17:906:7944:b0:6da:b834:2f3e with SMTP id
 l4-20020a170906794400b006dab8342f3emr6312071ejo.353.1646953710562; 
 Thu, 10 Mar 2022 15:08:30 -0800 (PST)
Received: from skbuf ([188.25.231.156]) by smtp.gmail.com with ESMTPSA id
 b24-20020a170906491800b006db31196e2bsm2271649ejq.218.2022.03.10.15.08.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 15:08:30 -0800 (PST)
Date: Fri, 11 Mar 2022 01:08:28 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220310230828.fvx24zhoyue5mkb7@skbuf>
References: <20220301100321.951175-1-tobias@waldekranz.com>
 <20220301100321.951175-8-tobias@waldekranz.com>
 <20220303222055.7a5pr4la3wmuuekc@skbuf>
 <87mthymblh.fsf@waldekranz.com>
 <20220310103509.g35syl776kyh5j2n@skbuf>
 <87h785n67k.fsf@waldekranz.com>
 <20220310161857.33owtynhm3pdyxiy@skbuf>
 <87bkydmnmy.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87bkydmnmy.fsf@waldekranz.com>
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

On Thu, Mar 10, 2022 at 11:46:45PM +0100, Tobias Waldekranz wrote:
> On Thu, Mar 10, 2022 at 18:18, Vladimir Oltean <olteanv@gmail.com> wrote:
> > On Thu, Mar 10, 2022 at 05:05:35PM +0100, Tobias Waldekranz wrote:
> >> On Thu, Mar 10, 2022 at 12:35, Vladimir Oltean <olteanv@gmail.com> wrote:
> >> > On Thu, Mar 10, 2022 at 09:54:34AM +0100, Tobias Waldekranz wrote:
> >> >> >> +	if (!dsa_port_can_configure_learning(dp) || dp->learning) {
> >> >> >> +		switch (state->state) {
> >> >> >> +		case BR_STATE_DISABLED:
> >> >> >> +		case BR_STATE_BLOCKING:
> >> >> >> +		case BR_STATE_LISTENING:
> >> >> >> +			/* Ideally we would only fast age entries
> >> >> >> +			 * belonging to VLANs controlled by this
> >> >> >> +			 * MST.
> >> >> >> +			 */
> >> >> >> +			dsa_port_fast_age(dp);
> >> >> >
> >> >> > Does mv88e6xxx support this? If it does, you might just as well
> >> >> > introduce another variant of ds->ops->port_fast_age() for an msti.
> >> >> 
> >> >> You can limit ATU operations to a particular FID. So the way I see it we
> >> >> could either have:
> >> >> 
> >> >> int (*port_vlan_fast_age)(struct dsa_switch *ds, int port, u16 vid)
> >> >> 
> >> >> + Maybe more generic. You could imagine there being a way to trigger
> >> >>   this operation from userspace for example.
> >> >> - We would have to keep the VLAN<->MSTI mapping in the DSA layer in
> >> >>   order to be able to do the fan-out in dsa_port_set_mst_state.
> >> >> 
> >> >> or:
> >> >> 
> >> >> int (*port_msti_fast_age)(struct dsa_switch *ds, int port, u16 msti)
> >> >> 
> >> >> + Let's the mapping be an internal affair in the driver.
> >> >> - Perhaps, less generically useful.
> >> >> 
> >> >> Which one do you prefer? Or is there a hidden third option? :)
> >> >
> >> > Yes, I was thinking of "port_msti_fast_age". I don't see a cheap way of
> >> > keeping VLAN to MSTI associations in the DSA layer. Only if we could
> >> > retrieve this mapping from the bridge layer - maybe with something
> >> > analogous to br_vlan_get_info(), but br_mst_get_info(), and this gets
> >> > passed a VLAN_N_VID sized bitmap, which the bridge populates with ones
> >> > and zeroes.
> >> 
> >> That can easily be done. Given that, should we go for port_vlan_fast_age
> >> instead? port_msti_fast_age feels like an awkward interface, since I
> >> don't think there is any hardware out there that can actually perform
> >> that operation without internally fanning it out over all affected VIDs
> >> (or FIDs in the case of mv88e6xxx).
> >
> > Yup, yup. My previous email was all over the place with regard to the
> > available options, because I wrote it in multiple phases so it wasn't
> > chronologically ordered top-to-bottom. But port_vlan_fast_age() makes
> > the most sense if you can implement br_mst_get_info(). Same goes for
> > dsa_port_notify_bridge_fdb_flush().
> >
> >> > The reason why I asked for this is because I'm not sure of the
> >> > implications of flushing the entire FDB of the port for a single MSTP
> >> > state change. It would trigger temporary useless flooding in other MSTIs
> >> > at the very least. There isn't any backwards compatibility concern to
> >> > speak of, so we can at least try from the beginning to limit the
> >> > flushing to the required VLANs.
> >> 
> >> Aside from the performance implications of flows being temporarily
> >> flooded I don't think there are any.
> >> 
> >> I suppose if you've disabled flooding of unknown unicast on that port,
> >> you would loose the flow until you see some return traffic (or when one
> >> side gives up and ARPs). While somewhat esoteric, it would be nice to
> >> handle this case if the hardware supports it.
> >
> > If by "handle this case" you mean "flush only the affected VLANs", then
> > yes, I fully agree.
> >
> >> > What I didn't think about, and will be a problem, is
> >> > dsa_port_notify_bridge_fdb_flush() - we don't know the vid to flush.
> >> > The easy way out here would be to export dsa_port_notify_bridge_fdb_flush(),
> >> > add a "vid" argument to it, and let drivers call it. Thoughts?
> >> 
> >> To me, this seems to be another argument in favor of
> >> port_vlan_fast_age. That way you would know the VIDs being flushed at
> >> the DSA layer, and driver writers needn't concern themselves with having
> >> to remember to generate the proper notifications back to the bridge.
> >
> > See above.
> >
> >> > Alternatively, if you think that cross-flushing FDBs of multiple MSTIs
> >> > isn't a real problem, I suppose we could keep the "port_fast_age" method.
> >> 
> >> What about falling back to it if the driver doesn't support per-VLAN
> >> flushing? Flushing all entries will work in most cases, at the cost of
> >> some temporary flooding. Seems more useful than refusing the offload
> >> completely.
> >
> > So here's what I don't understand. Do you expect a driver other than
> > mv88e6xxx to do something remotely reasonable under a bridge with MSTP
> > enabled? The idea being to handle gracefully the case where a port is
> > BLOCKING in an MSTI but FORWARDING in another. Because if not, let's
> > just outright not offload that kind of bridge, and only concern
> > ourselves with what MST-capable drivers can do.
> 
> I think you're right. I was trying to make it easier for other driver
> writers, but it will just be more confusing and error prone.
> 
> Alright, so v3 will have something like this:
> 
> bool dsa_port_can_offload_mst(struct dsa_port *dp)
> {
> 	return ds->ops->vlan_msti_set &&
> 		ds->ops->port_mst_state_set &&
> 		ds->ops->port_vlan_fast_age &&
> 		dsa_port_can_configure_learning(dp);
> }
> 
> If this returns false, we have two options:
> 
> 1. Return -EOPNOTSUPP, which the bridge will be unable to discriminate
>    from a non-switchdev port saying "I have no idea what you're talking
>    about". I.e. the bridge will happily apply the config, but the
>    hardware won't match. I don't like this, but it lines up with most
>    other stuff.
> 
> 2. Return a hard error, e.g. -EINVAL/-ENOSYS. This will keep the bridge
>    in sync with the hardware and also gives some feedback to the
>    user. This seems like the better approach to me, but it is a new kind
>    of paradigm.
> 
> What do you think?

Wait, what? It matters a lot where you place the call to
dsa_port_can_offload_mst(), too. You don't have to propagate a hard
error code, either, at least if you make dsa_port_bridge_join() return
-EOPNOTSUPP prior to calling switchdev_bridge_port_offload(), no?
DSA transforms this error code into 0, and dsa_port_offloads_bridge*()
starts returning false, which makes us ignore all MSTP related switchdev
notifiers.
The important part will be to make sure that MSTP is enabled for this
bridge from the get-go (that being the only case in which we can offload
an MSTP aware bridge), and refusing to offload dynamic changes to its
MSTP state. I didn't re-check now, but I think I remember there being
limitations even in the software bridge related to dynamic MSTP mode
changes anyway - there had to not be any port VLANs, which IIUC means
that you actually need to _delete_ the port PVIDs which are automatically
created before you could change the MSTP mode.

This is the model, what's wrong with it? I said "don't offload the
bridge", not "don't offload specific MSTP operations".

> > I'm shadowing you with a prototype (and untested so far) MSTP
> > implementation for the ocelot/felix drivers, and those switches can
> > flush the MAC table per VLAN too. So I don't see an immediate need to
> > have a fallback implementation if you'll also provide it for mv88e6xxx.
> > Let's treat that only if the need arises.
> 
> Cool. Agreed, v3 will implement .port_vlan_fast_age for mv88e6xxx.
