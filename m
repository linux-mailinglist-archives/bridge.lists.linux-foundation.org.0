Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDB64E9075
	for <lists.bridge@lfdr.de>; Mon, 28 Mar 2022 10:48:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B912080B38;
	Mon, 28 Mar 2022 08:48:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vFH7HXqhEvUk; Mon, 28 Mar 2022 08:48:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 352F180B63;
	Mon, 28 Mar 2022 08:48:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E6800C0082;
	Mon, 28 Mar 2022 08:48:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6B4ECC0012
 for <bridge@lists.linux-foundation.org>; Mon, 28 Mar 2022 08:48:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 441B680B30
 for <bridge@lists.linux-foundation.org>; Mon, 28 Mar 2022 08:48:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dde0v6rrteNw for <bridge@lists.linux-foundation.org>;
 Mon, 28 Mar 2022 08:48:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0870C80B1B
 for <bridge@lists.linux-foundation.org>; Mon, 28 Mar 2022 08:48:32 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id r13so27129012ejd.5
 for <bridge@lists.linux-foundation.org>; Mon, 28 Mar 2022 01:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=zwJPgdmASzTH6rUlvxZwr5PTdXLRl2t9oiLunUPkhDI=;
 b=Vc9BuGDzt2Aq7ZF7TsAp6cgsOew4mETB3Kiu/IgeXzw4yQ1jLJk2Kk3XjzQ8H2VyXt
 6yN/wHf6ryA7FHyQSFYEAHyrzOUL96xTtfDtbBSWXyHlFYVcabJ0YCopZLA1xjADGR6y
 144gku2WwvzdQQoTqPGbxnPAGZYXhLZ+gGS0Yp1lgk8pbqnq9OPJL6STiceHQZVnydPa
 90xgSjcgnA9BuWe3vahoJCloqnmxBK0cfKSGMLW9Qz6fMCugG/gwngGtSmMruAbk58VV
 TwRatLm3Xkmg4a3w3q2zvcjFMWHPdTKvhLX/sCD4gILKQFW9lFGCy+eFuFwQbEYz3WDl
 PsOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zwJPgdmASzTH6rUlvxZwr5PTdXLRl2t9oiLunUPkhDI=;
 b=nWGPi6PfG3pFE5vOqan9DPFweAyPYVw4/UZ25Zi0figc/i6Az/NYa5f++sp81iK7/a
 P3NREo8bWdc4caVrfsgdH5h1Bc7/DVu9qEt+zuFSzLmlNs+uWftBjSRZ/SwzQOuS33ni
 6wW1dAAO9qbeNlubBHIVFxfih12FnL/IognDKTGiXtRZFMH7A1uP7znosq+wvWoBLda/
 3YEwVEtpctPT7nFzNUBmkvEIQR2O5vW5PLGkH7GbI2z5OhM6FQ4nt5GWVfceqbNVpkN0
 DciMneTeTl0jjA+Ojskb9B/VgE5C8XWorsMhkyWYvGX9n0f0nhFMf91yW7OTh4OSQWs3
 7ZSA==
X-Gm-Message-State: AOAM532Q5GKxRgutozAMHvPa5ZkxLgT50BY+FCz0AjhtpVdGae0TE3G1
 9uj6M2XccR69jke8ZnLI3r0=
X-Google-Smtp-Source: ABdhPJwUefoLDgvMcmDhdf7Fl2/ag7HvMRHUgM6p7nJ++qE0WtXvIBb8B4KvwxNa9qW3XYV0d+SdOA==
X-Received: by 2002:a17:907:7288:b0:6df:e98f:49b0 with SMTP id
 dt8-20020a170907728800b006dfe98f49b0mr26517719ejc.606.1648457311080; 
 Mon, 28 Mar 2022 01:48:31 -0700 (PDT)
Received: from skbuf ([188.26.57.45]) by smtp.gmail.com with ESMTPSA id
 bp8-20020a170907918800b006e0daaa63ddsm2671995ejb.60.2022.03.28.01.48.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Mar 2022 01:48:30 -0700 (PDT)
Date: Mon, 28 Mar 2022 11:48:28 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <20220328084828.ergz2h64p7ugebwl@skbuf>
References: <20220324110959.t4hqale35qbrakdu@skbuf> <86v8w3vbk4.fsf@gmail.com>
 <20220324142749.la5til4ys6zva4uf@skbuf> <86czia1ned.fsf@gmail.com>
 <20220325132102.bss26plrk4sifby2@skbuf> <86fsn6uoqz.fsf@gmail.com>
 <20220325140003.a4w4hysqbzmrcxbq@skbuf> <86tubmt408.fsf@gmail.com>
 <20220325203057.vrw5nbwqctluc6u3@skbuf> <86ee2m8r2e.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <86ee2m8r2e.fsf@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 2/4] net: switchdev: add support
 for offloading of fdb locked flag
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

On Mon, Mar 28, 2022 at 09:38:33AM +0200, Hans Schultz wrote:
> On fre, mar 25, 2022 at 22:30, Vladimir Oltean <olteanv@gmail.com> wrote:
> > On Fri, Mar 25, 2022 at 05:01:59PM +0100, Hans Schultz wrote:
> >> > An attacker sweeping through the 2^47 source MAC address range is a
> >> > problem regardless of the implementations proposed so far, no?
> >> 
> >> The idea is to have a count on the number of locked entries in both the
> >> ATU and the FDB, so that a limit on entries can be enforced.
> >
> > I can agree with that.
> >
> > Note that as far as I understand regular 802.1X, these locked FDB
> > entries are just bloatware if you don't need MAC authentication bypass,
> > because the source port is already locked, so it drops all traffic from
> > an unknown MAC SA except for the link-local packets necessary to run
> > EAPOL, which are trapped to the CPU.
> 
> 802.1X and MAC Auth can be completely seperated by hostapd listning
> directly on the locked port interface before entering the bridge.

I don't understand this, sorry. What do you mean "before entering the
bridge"?

> > So maybe user space should opt into the MAC authentication bypass
> > process, really, since that requires secure CPU-assisted learning, and
> > regular 802.1X doesn't. It's a real additional burden that shouldn't be
> > ignored or enabled by default.
> >
> >> > If unlimited growth of the mv88e6xxx locked ATU entry cache is a
> >> > concern (which it is), we could limit its size, and when we purge a
> >> > cached entry in software is also when we could emit a
> >> > SWITCHDEV_FDB_DEL_TO_BRIDGE for it, right?
> >> 
> >> I think the best would be dynamic entries in both the ATU and the FDB
> >> for locked entries.
> >
> > Making locked (DPV=0) ATU entries be dynamic (age out) makes sense.
> > Since you set the IgnoreWrongData for source ports, you suppress ATU
> > interrupts for this MAC SA, which in turn means that a station which is
> > unauthorized on port A can never redeem itself when it migrates to port B,
> > for which it does have an authorization, since software never receives
> > any notice that it has moved to a new port.
> >
> > But making the locked bridge FDB entry be dynamic, why does it matter?
> > I'm not seeing this through. To denote that it can migrate, or to denote
> > that it can age out? These locked FDB entries are 'extern_learn', so
> > they aren't aged out by the bridge anyway, they are aged out by whomever
> > added them => in our case the SWITCHDEV_FDB_DEL_TO_BRIDGE that I mentioned.
> >
> I think the FDB and the ATU should be as much in sync as possible, and
> the FDB definitely should not keep stale entries that only get removed
> by link down. The SWITCHDEV_FDB_DEL_TO_BRIDGE route would requre an
> interrupt when a entry ages out in the ATU, but we know that that cannot
> happen with DPV=0. Thus the need to add dynamic entries with
> SWITCHDEV_FDB_ADD_TO_BRIDGE. 

So what is your suggestion exactly? You want the driver to notify the
locked FDB entry via FDB_ADD_TO_BRIDGE with the dynamic flag, and then
rely on the bridge's software ageing timer to delete it? How does that
deletion propagate back to the driver then? I'm unclear on the ownership
model you propose.

> >> How the two are kept in sync is another question, but if there is a
> >> switchcore, it will be the 'master', so I don't think the bridge
> >> module will need to tell the switchcore to remove entries in that
> >> case. Or?
> >
> > The bridge will certainly not *need* to tell the switch to delete a
> > locked FDB entry, but it certainly *can* (and this is in fact part of
> > the authorization process, replace an ATU entry with DPV=0 with an ATU
> > entry with DPV=BIT(port)).
> 
> Yes you are right, but I was implicitly only regarding internal
> mechanisms in the 'bridge + switchcore', and not userspace netlink
> commands.
> >
> > I feel as if I'm missing the essence of your reply.
