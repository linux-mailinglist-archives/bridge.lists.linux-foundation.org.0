Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8101C4D54CC
	for <lists.bridge@lfdr.de>; Thu, 10 Mar 2022 23:46:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CFF1A4014E;
	Thu, 10 Mar 2022 22:46:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ewDrdWcrtGGd; Thu, 10 Mar 2022 22:46:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id CE92C40BCF;
	Thu, 10 Mar 2022 22:46:53 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8695DC0073;
	Thu, 10 Mar 2022 22:46:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7E0FEC000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 22:46:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 747DF847C3
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 22:46:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id af_m9qNQMcSZ for <bridge@lists.linux-foundation.org>;
 Thu, 10 Mar 2022 22:46:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 44244847BE
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 22:46:50 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id n19so11990642lfh.8
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 14:46:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=kNGw6kwfJ9oR81XHWCviYz3UmAwtDikl6Vryp12s7L4=;
 b=mm0bhIpm22ir/MobtaQvP5TVOKaZQVMD3quuZEhneXZwcgksahQDr4PLmFTeh+HarY
 hGAL0SOBgl1HiJt7x2fWvqh+5lvk6DvIpTSzb+BXxrG0oNIA5Y3Opo6Ap3hWLEdEK1kL
 nhpN1sfwkzVG8wh3daExMd8rMC1Jy9e14CvVnllQ9uoABFj2ZXpwq8nV3Tns4JaYIuGb
 SU5dAkIbM54+fJzCd0XIWHJbTJxGlo1l/FtdkNJkTg+FS/ycnIk1T1ncbQu0D22fGLc8
 GUZh8SUyx8hi6Sr7GmOXxhmRJUtjqaW2n/NRikFtGlUUua38qhY6H2yOJKb2VxL0eoEs
 cvrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=kNGw6kwfJ9oR81XHWCviYz3UmAwtDikl6Vryp12s7L4=;
 b=0+nsm/NBmgsLvEXz2XNMmlLAVjG07Ra4pC4sbQP1Fz9XyzaB/eO6xesagxHsGT1mX5
 qL8T1Ag0AvBhXSJw/dOY0dkH2viqndZ+eU5emJBKP7tOoEg4k5WyWxLJUDCCgy6DMrcm
 N1pi1HnzJWtPGvBe0kV/FkEwtAwhmilbRXnZuRSgL7Yvy82Irfp3H9xawPWxWgJyHVDK
 UVZ91bSRj5gbwRd+Kx5z4Y05vv+bMYhyHcvSGCvdgKUJa8G3EKzzvbMHpwnWrK3cfD1c
 3XWxCcCnCvB8hqPeXbqKBEr9DNvsCkHfwU2AltIWqnwvz4xUytNBXXbx1mYkl7zGYcaA
 l3TQ==
X-Gm-Message-State: AOAM5313+mxN/o3EJWg94mL4o2Eq5fczqvNUIjZNLM7xTz0lcnnIGUWu
 EejHkX8Or/+rKUw9LStgi/qLwoLxvnosH7iT49g=
X-Google-Smtp-Source: ABdhPJw8Vf6nao2GEYEsqaqv3EJ8N1s6Rot81x92k1xK4twMASCbzunZyEJJnVMHf6kHrWgKTwiBQg==
X-Received: by 2002:a05:6512:ad6:b0:448:60f9:ae31 with SMTP id
 n22-20020a0565120ad600b0044860f9ae31mr3654206lfu.51.1646952407661; 
 Thu, 10 Mar 2022 14:46:47 -0800 (PST)
Received: from wkz-x280 (h-212-85-90-115.A259.priv.bahnhof.se. [212.85.90.115])
 by smtp.gmail.com with ESMTPSA id
 n13-20020a056512388d00b00443d9064160sm1214493lft.125.2022.03.10.14.46.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 14:46:47 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20220310161857.33owtynhm3pdyxiy@skbuf>
References: <20220301100321.951175-1-tobias@waldekranz.com>
 <20220301100321.951175-8-tobias@waldekranz.com>
 <20220303222055.7a5pr4la3wmuuekc@skbuf> <87mthymblh.fsf@waldekranz.com>
 <20220310103509.g35syl776kyh5j2n@skbuf> <87h785n67k.fsf@waldekranz.com>
 <20220310161857.33owtynhm3pdyxiy@skbuf>
Date: Thu, 10 Mar 2022 23:46:45 +0100
Message-ID: <87bkydmnmy.fsf@waldekranz.com>
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

On Thu, Mar 10, 2022 at 18:18, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Thu, Mar 10, 2022 at 05:05:35PM +0100, Tobias Waldekranz wrote:
>> On Thu, Mar 10, 2022 at 12:35, Vladimir Oltean <olteanv@gmail.com> wrote:
>> > On Thu, Mar 10, 2022 at 09:54:34AM +0100, Tobias Waldekranz wrote:
>> >> >> +	if (!dsa_port_can_configure_learning(dp) || dp->learning) {
>> >> >> +		switch (state->state) {
>> >> >> +		case BR_STATE_DISABLED:
>> >> >> +		case BR_STATE_BLOCKING:
>> >> >> +		case BR_STATE_LISTENING:
>> >> >> +			/* Ideally we would only fast age entries
>> >> >> +			 * belonging to VLANs controlled by this
>> >> >> +			 * MST.
>> >> >> +			 */
>> >> >> +			dsa_port_fast_age(dp);
>> >> >
>> >> > Does mv88e6xxx support this? If it does, you might just as well
>> >> > introduce another variant of ds->ops->port_fast_age() for an msti.
>> >> 
>> >> You can limit ATU operations to a particular FID. So the way I see it we
>> >> could either have:
>> >> 
>> >> int (*port_vlan_fast_age)(struct dsa_switch *ds, int port, u16 vid)
>> >> 
>> >> + Maybe more generic. You could imagine there being a way to trigger
>> >>   this operation from userspace for example.
>> >> - We would have to keep the VLAN<->MSTI mapping in the DSA layer in
>> >>   order to be able to do the fan-out in dsa_port_set_mst_state.
>> >> 
>> >> or:
>> >> 
>> >> int (*port_msti_fast_age)(struct dsa_switch *ds, int port, u16 msti)
>> >> 
>> >> + Let's the mapping be an internal affair in the driver.
>> >> - Perhaps, less generically useful.
>> >> 
>> >> Which one do you prefer? Or is there a hidden third option? :)
>> >
>> > Yes, I was thinking of "port_msti_fast_age". I don't see a cheap way of
>> > keeping VLAN to MSTI associations in the DSA layer. Only if we could
>> > retrieve this mapping from the bridge layer - maybe with something
>> > analogous to br_vlan_get_info(), but br_mst_get_info(), and this gets
>> > passed a VLAN_N_VID sized bitmap, which the bridge populates with ones
>> > and zeroes.
>> 
>> That can easily be done. Given that, should we go for port_vlan_fast_age
>> instead? port_msti_fast_age feels like an awkward interface, since I
>> don't think there is any hardware out there that can actually perform
>> that operation without internally fanning it out over all affected VIDs
>> (or FIDs in the case of mv88e6xxx).
>
> Yup, yup. My previous email was all over the place with regard to the
> available options, because I wrote it in multiple phases so it wasn't
> chronologically ordered top-to-bottom. But port_vlan_fast_age() makes
> the most sense if you can implement br_mst_get_info(). Same goes for
> dsa_port_notify_bridge_fdb_flush().
>
>> > The reason why I asked for this is because I'm not sure of the
>> > implications of flushing the entire FDB of the port for a single MSTP
>> > state change. It would trigger temporary useless flooding in other MSTIs
>> > at the very least. There isn't any backwards compatibility concern to
>> > speak of, so we can at least try from the beginning to limit the
>> > flushing to the required VLANs.
>> 
>> Aside from the performance implications of flows being temporarily
>> flooded I don't think there are any.
>> 
>> I suppose if you've disabled flooding of unknown unicast on that port,
>> you would loose the flow until you see some return traffic (or when one
>> side gives up and ARPs). While somewhat esoteric, it would be nice to
>> handle this case if the hardware supports it.
>
> If by "handle this case" you mean "flush only the affected VLANs", then
> yes, I fully agree.
>
>> > What I didn't think about, and will be a problem, is
>> > dsa_port_notify_bridge_fdb_flush() - we don't know the vid to flush.
>> > The easy way out here would be to export dsa_port_notify_bridge_fdb_flush(),
>> > add a "vid" argument to it, and let drivers call it. Thoughts?
>> 
>> To me, this seems to be another argument in favor of
>> port_vlan_fast_age. That way you would know the VIDs being flushed at
>> the DSA layer, and driver writers needn't concern themselves with having
>> to remember to generate the proper notifications back to the bridge.
>
> See above.
>
>> > Alternatively, if you think that cross-flushing FDBs of multiple MSTIs
>> > isn't a real problem, I suppose we could keep the "port_fast_age" method.
>> 
>> What about falling back to it if the driver doesn't support per-VLAN
>> flushing? Flushing all entries will work in most cases, at the cost of
>> some temporary flooding. Seems more useful than refusing the offload
>> completely.
>
> So here's what I don't understand. Do you expect a driver other than
> mv88e6xxx to do something remotely reasonable under a bridge with MSTP
> enabled? The idea being to handle gracefully the case where a port is
> BLOCKING in an MSTI but FORWARDING in another. Because if not, let's
> just outright not offload that kind of bridge, and only concern
> ourselves with what MST-capable drivers can do.

I think you're right. I was trying to make it easier for other driver
writers, but it will just be more confusing and error prone.

Alright, so v3 will have something like this:

bool dsa_port_can_offload_mst(struct dsa_port *dp)
{
	return ds->ops->vlan_msti_set &&
		ds->ops->port_mst_state_set &&
		ds->ops->port_vlan_fast_age &&
		dsa_port_can_configure_learning(dp);
}

If this returns false, we have two options:

1. Return -EOPNOTSUPP, which the bridge will be unable to discriminate
   from a non-switchdev port saying "I have no idea what you're talking
   about". I.e. the bridge will happily apply the config, but the
   hardware won't match. I don't like this, but it lines up with most
   other stuff.

2. Return a hard error, e.g. -EINVAL/-ENOSYS. This will keep the bridge
   in sync with the hardware and also gives some feedback to the
   user. This seems like the better approach to me, but it is a new kind
   of paradigm.

What do you think?

> I'm shadowing you with a prototype (and untested so far) MSTP
> implementation for the ocelot/felix drivers, and those switches can
> flush the MAC table per VLAN too. So I don't see an immediate need to
> have a fallback implementation if you'll also provide it for mv88e6xxx.
> Let's treat that only if the need arises.

Cool. Agreed, v3 will implement .port_vlan_fast_age for mv88e6xxx.
