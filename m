Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B5E4D44C9
	for <lists.bridge@lfdr.de>; Thu, 10 Mar 2022 11:35:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8DCB182416;
	Thu, 10 Mar 2022 10:35:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8pX-iOnnRALL; Thu, 10 Mar 2022 10:35:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 0E3F78144D;
	Thu, 10 Mar 2022 10:35:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BBFD7C0073;
	Thu, 10 Mar 2022 10:35:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 543B9C000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 10:35:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 299BF40B17
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 10:35:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MQlKCjGDOBu9 for <bridge@lists.linux-foundation.org>;
 Thu, 10 Mar 2022 10:35:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D7264400C9
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 10:35:13 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id kt27so11186474ejb.0
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 02:35:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=bQ6VLPxZA/BQp7aelq0Kynpjtxn593KsL+2rRCzYMD8=;
 b=U0dCQsgQp6TCd8rEA8cYnAwdl6fBTgG5WYSQgBEZDxV9AjrH4GFH4fDELvXQizUgC/
 kXIB633n8vkKo38n8IXo0Q1TjrsG2mKXzOFbuXxEnYqjo6M9G+bAs4QXHt2PX5dsA4Ql
 X4MQ9QK1QXZLtbGVOvNATbNZV535UYZRqmIHyW7xpO68RHpSCo72EH6IVCw8XVtT5e8u
 dP10Ixe8X2j/bxSCjm+QbUQFXvmm1vxihFhtJyZCMKL2Hk2tnI8rkzPy64lb7xQ12cKI
 DDVCiQJ2NdtgYVk2fonBeutA9GRSmSIvZJVL78zXh1lY0URGc2YH5GQkyU/hbhbg4qKE
 TxIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=bQ6VLPxZA/BQp7aelq0Kynpjtxn593KsL+2rRCzYMD8=;
 b=1QtBPINjnwi5QRXvr1N8TYFEaDdVfkbd0OBRC+kPt8/fVkxnZXeyl/vgvICAi7aqCj
 oUODHcYL2ZBzcUwv57jbQSPloIHtpaBqKCoJWPzCPPfAUQ0UXhOshJCA2jRCC9BwGwNh
 qpATEBwU3cTARy20jPURxvL8ufVJrmNrGAYj2CNjh5V2EG4LdQzVdaQhJAi4dvJdzMHP
 mGTl0iXy55jZMYXWQ/s9Q2o1YabOUsJSsO8Ck0pEC79Xa1VcLPitv0WsrnW71LyRBKAc
 oGi6wnfo472d0eE8Jw5rCs6OwuahAkjb509IB7yhgmszI3l+XxjLiNC1pUXNj6sZ0A+C
 BdTw==
X-Gm-Message-State: AOAM5336NjnmtHfNbSpyzQsnFP6TehJOjuHd/i053ll4u9BUEN0Xt4ew
 FNGAWHAwFcC8Ec7j5uhapgs=
X-Google-Smtp-Source: ABdhPJxLnqGbZcXUIDJ2roPuIoqLULkfDNTkDYyIquYyFTOLpJOxffqNQdBFwp96nFWSAVNPnQ5mUA==
X-Received: by 2002:a17:906:3803:b0:6cf:56b9:60a9 with SMTP id
 v3-20020a170906380300b006cf56b960a9mr3492920ejc.716.1646908511660; 
 Thu, 10 Mar 2022 02:35:11 -0800 (PST)
Received: from skbuf ([188.25.231.156]) by smtp.gmail.com with ESMTPSA id
 z22-20020a17090655d600b006d229436793sm1639756ejp.223.2022.03.10.02.35.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 02:35:11 -0800 (PST)
Date: Thu, 10 Mar 2022 12:35:09 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220310103509.g35syl776kyh5j2n@skbuf>
References: <20220301100321.951175-1-tobias@waldekranz.com>
 <20220301100321.951175-8-tobias@waldekranz.com>
 <20220303222055.7a5pr4la3wmuuekc@skbuf>
 <87mthymblh.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87mthymblh.fsf@waldekranz.com>
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

On Thu, Mar 10, 2022 at 09:54:34AM +0100, Tobias Waldekranz wrote:
> >> +	if (!dsa_port_can_configure_learning(dp) || dp->learning) {
> >> +		switch (state->state) {
> >> +		case BR_STATE_DISABLED:
> >> +		case BR_STATE_BLOCKING:
> >> +		case BR_STATE_LISTENING:
> >> +			/* Ideally we would only fast age entries
> >> +			 * belonging to VLANs controlled by this
> >> +			 * MST.
> >> +			 */
> >> +			dsa_port_fast_age(dp);
> >
> > Does mv88e6xxx support this? If it does, you might just as well
> > introduce another variant of ds->ops->port_fast_age() for an msti.
> 
> You can limit ATU operations to a particular FID. So the way I see it we
> could either have:
> 
> int (*port_vlan_fast_age)(struct dsa_switch *ds, int port, u16 vid)
> 
> + Maybe more generic. You could imagine there being a way to trigger
>   this operation from userspace for example.
> - We would have to keep the VLAN<->MSTI mapping in the DSA layer in
>   order to be able to do the fan-out in dsa_port_set_mst_state.
> 
> or:
> 
> int (*port_msti_fast_age)(struct dsa_switch *ds, int port, u16 msti)
> 
> + Let's the mapping be an internal affair in the driver.
> - Perhaps, less generically useful.
> 
> Which one do you prefer? Or is there a hidden third option? :)

Yes, I was thinking of "port_msti_fast_age". I don't see a cheap way of
keeping VLAN to MSTI associations in the DSA layer. Only if we could
retrieve this mapping from the bridge layer - maybe with something
analogous to br_vlan_get_info(), but br_mst_get_info(), and this gets
passed a VLAN_N_VID sized bitmap, which the bridge populates with ones
and zeroes.

The reason why I asked for this is because I'm not sure of the
implications of flushing the entire FDB of the port for a single MSTP
state change. It would trigger temporary useless flooding in other MSTIs
at the very least. There isn't any backwards compatibility concern to
speak of, so we can at least try from the beginning to limit the
flushing to the required VLANs.

What I didn't think about, and will be a problem, is
dsa_port_notify_bridge_fdb_flush() - we don't know the vid to flush.
The easy way out here would be to export dsa_port_notify_bridge_fdb_flush(),
add a "vid" argument to it, and let drivers call it. Thoughts?

Alternatively, if you think that cross-flushing FDBs of multiple MSTIs
isn't a real problem, I suppose we could keep the "port_fast_age" method.

> > And since it is new code, you could require that drivers _do_ support
> > configuring learning before they could support MSTP. After all, we don't
> > want to keep legacy mechanisms in place forever.
> 
> By "configuring learning", do you mean this new fast-age-per-vid/msti,
> or being able to enable/disable learning per port? If it's the latter,
> I'm not sure I understand how those two are related.

The code from dsa_port_set_state() which you've copied:

	if (!dsa_port_can_configure_learning(dp) ||
	    (do_fast_age && dp->learning)) {

has this explanation:

1. DSA keeps standalone ports in the FORWARDING state.
2. DSA also disables address learning on standalone ports, where this is
   possible (dsa_port_can_configure_learning(dp) == true).
3. When a port joins a bridge, it leaves its FORWARDING state from
   standalone mode and inherits the bridge port's BLOCKING state
4. dsa_port_set_state() treats a port transition from FORWARDING to
   BLOCKING as a transition requiring an FDB flush
5. due to (2), the FDB flush at stage (4) is in fact not needed, because
   the FDB of that port should already be empty. Flushing the FDB may be
   a costly operation for some drivers, so it is avoided if possible.

So this is why the "dsa_port_can_configure_learning()" check is there -
for compatibility with drivers that can't configure learning => they
keep learning enabled also in standalone mode => they need an FDB flush
when a standalone port joins a bridge.

What I'm saying is: for drivers that offload MSTP, let's force them to
get the basics right first (have configurable learning), rather than go
forward forever with a backwards compatibility mode.
