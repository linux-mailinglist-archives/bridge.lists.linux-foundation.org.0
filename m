Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E6F4D4E85
	for <lists.bridge@lfdr.de>; Thu, 10 Mar 2022 17:19:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7FE2061219;
	Thu, 10 Mar 2022 16:19:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IEFGo9c8Qh_8; Thu, 10 Mar 2022 16:19:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id DC82A61218;
	Thu, 10 Mar 2022 16:19:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AC406C0082;
	Thu, 10 Mar 2022 16:19:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2B6C0C000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 16:19:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0A7F640570
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 16:19:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G1kADI5gNAWo for <bridge@lists.linux-foundation.org>;
 Thu, 10 Mar 2022 16:19:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AB3D9403BF
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 16:19:01 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id dr20so13125836ejc.6
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 08:19:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ZnfzIl/XKnXSQq2KD9VQO6H3UQ7J9fUV7zmQlLiotKs=;
 b=aTALYhu38lknVv7BfYemP6WiHW/GFkCSGNdbnorghVU13Psbuj2T7cfar5d9OyBVST
 PY59zXV+CAGveUnRCnTqNt6Z3KTaH1ToDHxtzFZhPSrlZKSLXMjCyadeQIMNWkOaP/d9
 nSXAeaOm3w1iseNHF6cyT6+D6j0XjbtbpfGwIoXKYzvS2skP40grTKbowPAKuZBIT8TU
 CMiwOwYYEMOnHV7Un7g7eN8IOCt1pgM1GbnoQ6ekqy5H+4ie4mhPMWzlHXxawqfgnCEN
 4L/nbeMHZUV7uYGP5qfUULJfA0fiHSI/fNhEnRqWK2cYau5O5qUQVvDD2eyHUhcpgCCx
 bBXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZnfzIl/XKnXSQq2KD9VQO6H3UQ7J9fUV7zmQlLiotKs=;
 b=qHYjR7EyLOrqIWdt3NU/R6S0KmxJi0PfXa6Woy8VW0syyamQCDXFm7SwQDW7VBm+uk
 O0udiP7bDYSXW6jMnTH2i9MNxMhrsV5l0MnCaT1FBwvqPqXTCwEq/pfyezwONadIE/vr
 FUa+WoKqqp/mBNFLt+fIsBKSRLrk/fK76ilTrXngOIkeo84j8V8sh9+vDieqKtyMmymQ
 Hr/Rs23XOZC3mTPrkXdAETcz9AxpqBHaJwM1fLF2OsHnME0p+GjaPbL2Z1WT/Av0wJHy
 QTnr+H86KeIici2DE5Xsswf4CC+DP3aTDur0yjqLgx0GxqiWmgQTLmnzaSqNlkBswGrq
 w/HQ==
X-Gm-Message-State: AOAM53257AkX1uw81Xni0B2GvKYs8b63npDDCZ5NBcvzHPivA6Z301Nb
 +Jktz7Y/VNYkibSMLTFvHtQ=
X-Google-Smtp-Source: ABdhPJzVD+zvPbiraqopDuXXStXu/l+JGmVkl9+j84TaeHBWiBByJf46bIvVitxsyzVaH1Tj5j7XJg==
X-Received: by 2002:a17:906:c0c9:b0:6db:207:c41f with SMTP id
 bn9-20020a170906c0c900b006db0207c41fmr5175917ejb.292.1646929139399; 
 Thu, 10 Mar 2022 08:18:59 -0800 (PST)
Received: from skbuf ([188.25.231.156]) by smtp.gmail.com with ESMTPSA id
 l24-20020a170906231800b006d69a771a34sm1935088eja.93.2022.03.10.08.18.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 08:18:58 -0800 (PST)
Date: Thu, 10 Mar 2022 18:18:57 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220310161857.33owtynhm3pdyxiy@skbuf>
References: <20220301100321.951175-1-tobias@waldekranz.com>
 <20220301100321.951175-8-tobias@waldekranz.com>
 <20220303222055.7a5pr4la3wmuuekc@skbuf>
 <87mthymblh.fsf@waldekranz.com>
 <20220310103509.g35syl776kyh5j2n@skbuf>
 <87h785n67k.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87h785n67k.fsf@waldekranz.com>
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

On Thu, Mar 10, 2022 at 05:05:35PM +0100, Tobias Waldekranz wrote:
> On Thu, Mar 10, 2022 at 12:35, Vladimir Oltean <olteanv@gmail.com> wrote:
> > On Thu, Mar 10, 2022 at 09:54:34AM +0100, Tobias Waldekranz wrote:
> >> >> +	if (!dsa_port_can_configure_learning(dp) || dp->learning) {
> >> >> +		switch (state->state) {
> >> >> +		case BR_STATE_DISABLED:
> >> >> +		case BR_STATE_BLOCKING:
> >> >> +		case BR_STATE_LISTENING:
> >> >> +			/* Ideally we would only fast age entries
> >> >> +			 * belonging to VLANs controlled by this
> >> >> +			 * MST.
> >> >> +			 */
> >> >> +			dsa_port_fast_age(dp);
> >> >
> >> > Does mv88e6xxx support this? If it does, you might just as well
> >> > introduce another variant of ds->ops->port_fast_age() for an msti.
> >> 
> >> You can limit ATU operations to a particular FID. So the way I see it we
> >> could either have:
> >> 
> >> int (*port_vlan_fast_age)(struct dsa_switch *ds, int port, u16 vid)
> >> 
> >> + Maybe more generic. You could imagine there being a way to trigger
> >>   this operation from userspace for example.
> >> - We would have to keep the VLAN<->MSTI mapping in the DSA layer in
> >>   order to be able to do the fan-out in dsa_port_set_mst_state.
> >> 
> >> or:
> >> 
> >> int (*port_msti_fast_age)(struct dsa_switch *ds, int port, u16 msti)
> >> 
> >> + Let's the mapping be an internal affair in the driver.
> >> - Perhaps, less generically useful.
> >> 
> >> Which one do you prefer? Or is there a hidden third option? :)
> >
> > Yes, I was thinking of "port_msti_fast_age". I don't see a cheap way of
> > keeping VLAN to MSTI associations in the DSA layer. Only if we could
> > retrieve this mapping from the bridge layer - maybe with something
> > analogous to br_vlan_get_info(), but br_mst_get_info(), and this gets
> > passed a VLAN_N_VID sized bitmap, which the bridge populates with ones
> > and zeroes.
> 
> That can easily be done. Given that, should we go for port_vlan_fast_age
> instead? port_msti_fast_age feels like an awkward interface, since I
> don't think there is any hardware out there that can actually perform
> that operation without internally fanning it out over all affected VIDs
> (or FIDs in the case of mv88e6xxx).

Yup, yup. My previous email was all over the place with regard to the
available options, because I wrote it in multiple phases so it wasn't
chronologically ordered top-to-bottom. But port_vlan_fast_age() makes
the most sense if you can implement br_mst_get_info(). Same goes for
dsa_port_notify_bridge_fdb_flush().

> > The reason why I asked for this is because I'm not sure of the
> > implications of flushing the entire FDB of the port for a single MSTP
> > state change. It would trigger temporary useless flooding in other MSTIs
> > at the very least. There isn't any backwards compatibility concern to
> > speak of, so we can at least try from the beginning to limit the
> > flushing to the required VLANs.
> 
> Aside from the performance implications of flows being temporarily
> flooded I don't think there are any.
> 
> I suppose if you've disabled flooding of unknown unicast on that port,
> you would loose the flow until you see some return traffic (or when one
> side gives up and ARPs). While somewhat esoteric, it would be nice to
> handle this case if the hardware supports it.

If by "handle this case" you mean "flush only the affected VLANs", then
yes, I fully agree.

> > What I didn't think about, and will be a problem, is
> > dsa_port_notify_bridge_fdb_flush() - we don't know the vid to flush.
> > The easy way out here would be to export dsa_port_notify_bridge_fdb_flush(),
> > add a "vid" argument to it, and let drivers call it. Thoughts?
> 
> To me, this seems to be another argument in favor of
> port_vlan_fast_age. That way you would know the VIDs being flushed at
> the DSA layer, and driver writers needn't concern themselves with having
> to remember to generate the proper notifications back to the bridge.

See above.

> > Alternatively, if you think that cross-flushing FDBs of multiple MSTIs
> > isn't a real problem, I suppose we could keep the "port_fast_age" method.
> 
> What about falling back to it if the driver doesn't support per-VLAN
> flushing? Flushing all entries will work in most cases, at the cost of
> some temporary flooding. Seems more useful than refusing the offload
> completely.

So here's what I don't understand. Do you expect a driver other than
mv88e6xxx to do something remotely reasonable under a bridge with MSTP
enabled? The idea being to handle gracefully the case where a port is
BLOCKING in an MSTI but FORWARDING in another. Because if not, let's
just outright not offload that kind of bridge, and only concern
ourselves with what MST-capable drivers can do.
I'm shadowing you with a prototype (and untested so far) MSTP
implementation for the ocelot/felix drivers, and those switches can
flush the MAC table per VLAN too. So I don't see an immediate need to
have a fallback implementation if you'll also provide it for mv88e6xxx.
Let's treat that only if the need arises.

> >> > And since it is new code, you could require that drivers _do_ support
> >> > configuring learning before they could support MSTP. After all, we don't
> >> > want to keep legacy mechanisms in place forever.
> >> 
> >> By "configuring learning", do you mean this new fast-age-per-vid/msti,
> >> or being able to enable/disable learning per port? If it's the latter,
> >> I'm not sure I understand how those two are related.
> >
> > The code from dsa_port_set_state() which you've copied:
> >
> > 	if (!dsa_port_can_configure_learning(dp) ||
> > 	    (do_fast_age && dp->learning)) {
> >
> > has this explanation:
> >
> > 1. DSA keeps standalone ports in the FORWARDING state.
> > 2. DSA also disables address learning on standalone ports, where this is
> >    possible (dsa_port_can_configure_learning(dp) == true).
> > 3. When a port joins a bridge, it leaves its FORWARDING state from
> >    standalone mode and inherits the bridge port's BLOCKING state
> > 4. dsa_port_set_state() treats a port transition from FORWARDING to
> >    BLOCKING as a transition requiring an FDB flush
> > 5. due to (2), the FDB flush at stage (4) is in fact not needed, because
> >    the FDB of that port should already be empty. Flushing the FDB may be
> >    a costly operation for some drivers, so it is avoided if possible.
> >
> > So this is why the "dsa_port_can_configure_learning()" check is there -
> > for compatibility with drivers that can't configure learning => they
> > keep learning enabled also in standalone mode => they need an FDB flush
> > when a standalone port joins a bridge.
> >
> > What I'm saying is: for drivers that offload MSTP, let's force them to
> > get the basics right first (have configurable learning), rather than go
> > forward forever with a backwards compatibility mode.
> 
> Makes sense, I'll just move it up to the initial capability check.
