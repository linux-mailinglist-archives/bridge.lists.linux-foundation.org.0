Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCAE7137327
	for <lists.bridge@lfdr.de>; Fri, 10 Jan 2020 17:21:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C6BED884A9;
	Fri, 10 Jan 2020 16:21:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AG0w8DUiABol; Fri, 10 Jan 2020 16:21:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id D91E087E7D;
	Fri, 10 Jan 2020 16:21:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C2C1FC0881;
	Fri, 10 Jan 2020 16:21:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CE51DC0881
 for <bridge@lists.linux-foundation.org>; Fri, 10 Jan 2020 16:21:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CA44C86B3B
 for <bridge@lists.linux-foundation.org>; Fri, 10 Jan 2020 16:21:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QllAEAClneZ5 for <bridge@lists.linux-foundation.org>;
 Fri, 10 Jan 2020 16:21:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A29DB86B34
 for <bridge@lists.linux-foundation.org>; Fri, 10 Jan 2020 16:21:23 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id v28so2043784edw.12
 for <bridge@lists.linux-foundation.org>; Fri, 10 Jan 2020 08:21:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KnI6ES0j9XY6jcwzTlsj131h+JWOvX8VRTZ1RCgJifQ=;
 b=Ea+osL09dRoXu66ScO2+RVTAk8lusf/xYkFZena0Qk+fmzyioNXzK16eQ2TYeolOvy
 wBs11xid6m+6Ec2LelV7nTveV20Oyv5prPjjiPlMpjyICYZGkMXcdWWCxeG+wVhfMmQ/
 rtPql6Hz8/afPt5M5TYsYRvOqBlOrlXzF499xHDwoV5osvGKkPLXTCsCJuarTAhYe4os
 XrwvYOLJx3XVt9PPTrJWtKCauiow9AZaUj/rMS1FLJNmzfjhoiD3O0G9afus28TsGIIv
 abRYjqP4yI2GCSJwzmZsC3ohVjpyDoccKEJdZPR1+IzDk1sPQVR2tltGYJEOAXNjMwQu
 5kgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KnI6ES0j9XY6jcwzTlsj131h+JWOvX8VRTZ1RCgJifQ=;
 b=qSnxxcE92x0jqMOtn3fE4ZfEvN3v1QBz/Gkyxpw0NKZKN9yhDnRqGJkk/h1m3oEzxT
 ioi6iqlzYL33+fEH3emS78zFc1/pXe5iFUnLp1jqoPVJY9gnzOd2mkXQsrcpRUbAcRLy
 AnoLQEGnAwgyPZl2YDoEm3rNkFNiJWhlU+kt8UxvnmSMTXgP+XnlJZfipmutT8qe6Y97
 l2xW0g3Q9FzB/txYIlfJE9yghuQUeypFnrBixWIIn/soz0zXXJ6yPB5aDzlBzRhyZiXw
 rw8IxlD25tcV61rOb8Btk0AxIIs0nE1SJnD0zWQLdcnKz8QapOBg17tVGspGOoc2TC24
 qkbw==
X-Gm-Message-State: APjAAAX0lsW6b+usxuxeHUB55j4qZ7tccSz99Bidui/NZq9iV2lT7/V0
 9aKNqocVLs3NYL0EazvQVAAmxQx6TknuM0z5o/w=
X-Google-Smtp-Source: APXvYqyCUL4vX+2L4tiQgtDWM1tcJ7+z5F0dGB38hN8LzgDtNvujtIgmaCbdsPuaYD7RdcN8r9x7fqjCPzRVUkTg+z0=
X-Received: by 2002:a50:ef17:: with SMTP id m23mr4404621eds.106.1578673281844; 
 Fri, 10 Jan 2020 08:21:21 -0800 (PST)
MIME-Version: 1.0
References: <20200109150640.532-1-horatiu.vultur@microchip.com>
 <6f1936e9-97e5-9502-f062-f2925c9652c9@cumulusnetworks.com>
 <20200110160456.enzomhfsce7bptu3@soft-dev3.microsemi.net>
In-Reply-To: <20200110160456.enzomhfsce7bptu3@soft-dev3.microsemi.net>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Fri, 10 Jan 2020 18:21:10 +0200
Message-ID: <CA+h21hrq7U4EdqSgpYQRjK8rkcJdvD5jXCSOH_peA-R4xCocTg@mail.gmail.com>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Andrew Lunn <andrew@lunn.ch>, Jakub Kicinski <jakub.kicinski@netronome.com>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 netdev <netdev@vger.kernel.org>, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, lkml <linux-kernel@vger.kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>, anirudh.venkataramanan@intel.com,
 Jiri Pirko <jiri@mellanox.com>, Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 David Ahern <dsahern@gmail.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [RFC net-next Patch 0/3] net: bridge: mrp: Add support
 for Media Redundancy Protocol(MRP)
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

Hi Horatiu,

On Fri, 10 Jan 2020 at 18:04, Horatiu Vultur
<horatiu.vultur@microchip.com> wrote:
>
> Hi Nik,
>
> > I agree with Stephen here, IMO you have to take note of how STP has progressed
> > and that bringing it in the kernel was a mistake, these days mstpd has an active
> > community and much better support which is being extended. This looks best implemented
> > in user-space in my opinion with minimal kernel changes to support it. You could simply
> > open a packet socket with a filter and work through that, you don't need new netlink
> > sockets. I'm not familiar with the protocol so can't really be the judge of that, if
> > you present a good argument for needing a new netlink socket for these packets - then
> > sure, ok.
>
> We are aware of the STP story, and in case of STP I do agree, it is much
> better to have this in user-space. But while MRP has much in common with
> STP, it also differs in some important areas.
>
> Most importantly, MRP requires sending and receiving thousands of frames
> per second. To achieve the 10ms recovery time, the tx period per
> interface is 500us, on two interfaces, adding up to 4000 frames per
> second to RX and 4000 to TX(if the ring is closed). And this is per
> ring...
>
> The CPU systems in the kind of switches we are working on can not handle
> this load, and it was not meant to handle this. Instead the switch core
> can do the periodic injection of frames and automatic terminate them.
>
> In patch posted, we have not added this HW offload (we have this in our
> internal repos, where we also have implemented the remaining part of the
> protocol). The reason for this is that we wanted to do a proper SW
> implementation and then HW offload it.
>
> Looking back, I can see that what we have presented here could be done
> equally good in user-space (roughly), but that is because the HW offload
> is not part of this patch.
>
> The problem in putting it in user-space is that we do not have a nice a
> clean API where it is just putting a port in forwarding/blocking state
> (like we have with STP). To do an abstraction that actually allow us to
> utilize the HW to offload a protocol like MRP will very easy become too
> specific for our SoC and rejected with that argument.
>
> >
> > If you do decide to continue with the kernel version (which I would again discourage)
> > a few general points (from a quick scan):
> >  - the single 1.6+k line patch is just hard to review, please break it into more digestable
> >    and logical pieces
> We will work in this.
>
> >  - the locking is wrong, also there're a few use-after-free bugs
> Oops, that is not good - happy that you caught it. A hint on where,
> would be great.
>
> >  - please re-work the bridge integration code, it can be simplified and tests can be eliminated
> We will have a second look at that.
>
> >  - your netlink helpers usage is generally wrong and needs more work
> Ok - some hints on what we did wrong would be great.
>
> >  - use the already existing port states instead of adding new ones and you can avoid some tests in fast-path
> I assume you want us to re-use the STP concept of forwarding/blocking
> and relay on the checks it already has.
>
> >  - perhaps look into using br_afspec() for configuration/retrieval initially ? I don't think you need the new rtm messages yet.
> Is that a good example on how to do the netlink interface, and you want
> us to use that as a reference?
>
> >  - I'm sure I can go on, but I really think all of this should be put in user-space -
> >    in-kernel STP is a great example of how _not_ to do it. :) As a bonus you'll avoid 90% of the
> >    problems above just by making your own abstractions and using them for it.
> Please continue.
>
> We do not see any good paths for getting user-space based solutions
> which actually does use the HW offloading accepted upstream. If this
> path exists then we would like to understand it and evaluate it
> properly.
>
> --
> /Horatiu

I think it would help your case if you explained a bit more about the
hw offload primitives you have implemented internally. I believe you
are talking about the frame generation engine in the Ocelot switch
which has 1024 frame slots that are periodically sent based on one of
8 timers. For receive, I believe that the functionality is to offload
the consumption of these periodic frames, and just raise an interrupt
if frames were expected but not received.
For your use case of MRP, it makes perfect sense to have this. I am
just not sure (and not knowledgeable enough in Linux) what this engine
is offloading from the operating system's perspective.

Your justification for implementing MRP in the kernel seems to be that
it's better to make MRP part of the kernel uapi than a configuration
interface for your periodic engine, which in principle I agree with.
I'm just not sure if the offload that you propose will have a trivial
path into the kernel either, so it would make sense for reviewers to
see everything put together first.

Thanks,
-Vladimir
