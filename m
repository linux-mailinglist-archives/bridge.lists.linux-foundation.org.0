Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6938B31871D
	for <lists.bridge@lfdr.de>; Thu, 11 Feb 2021 10:35:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 18C1B86670;
	Thu, 11 Feb 2021 09:35:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fhsSfqr_YPpq; Thu, 11 Feb 2021 09:35:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2635186D62;
	Thu, 11 Feb 2021 09:35:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0EE4EC1DA9;
	Thu, 11 Feb 2021 09:35:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C3049C013A
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 09:35:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AA45386807
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 09:35:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KVT1Ehqf6kTH for <bridge@lists.linux-foundation.org>;
 Thu, 11 Feb 2021 09:35:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
 [209.85.208.49])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7374B86670
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 09:35:31 +0000 (UTC)
Received: by mail-ed1-f49.google.com with SMTP id l12so6264775edt.3
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 01:35:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=HCKcRp36jKpHDKsIoPlzTnpZmo2FFbM2qog3PW0onGA=;
 b=TeiLXz9uxBxr0RNLjVXoPdeXMU0vPvWH8GKmzaoGwcRAJXsTI4sqzxOFft+uqhVGuC
 3S9oJr9Bmqno+SA0dcWdgHYCedaajyGqKGGsc4xOvKVy8ccz5UCqmA9KGLNBJDQaHyEG
 VHmGPZwltdjper4JRzS3iuFYi5MKTUwcZTW93JdLwWT0LQ5Ozfo8NtuD8UXSa8rxJG98
 duXnERXYtR00eFVh969nmkyAfAQn5FIk7IZk8DQ8mfBZ9ACEpMUQuoZi4trlE87QtLbk
 l6E7NDEkQfzssfWAqKcV7mUOOqzDzKsGW5xcfmtpxgupkGs5LODApcHB9z1WBU5SSiy8
 APiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HCKcRp36jKpHDKsIoPlzTnpZmo2FFbM2qog3PW0onGA=;
 b=kOSWPySy/IVXuCfdXfPtAYqL2fSJF2KR5nkXUDo9Xhd02eTV4hHYIC0Tg8qyYdAQ7V
 zslf01KDjmqutEbVAiCGyvNTgMWW9EzVAGWinARK8jZdLXHbleYlmFfsTepDKrYr+riH
 +l0naBYZMxVnC91qBjvlUjGfnsIWgUVHU+8SP0fBk8lesXQAFq+QstNcJDUxmtsMNXjP
 R4ScbxnjtihxcVQhEGI1l6nFDLvrc0WySBD7KrxwPKiSUES/p8NvpldkJwo9L7dOSwxB
 Z66jUeK6p8NLabsfQ6sS9smEpFOTV2tBa/2f55WxukxTNCgznc9bnR29V7qvR+7g4WMR
 WbyQ==
X-Gm-Message-State: AOAM532uJB9i6TzcnyBdQNyBj6yMnxnJYXTfn/nebpKiBNK3tvs9Z2wr
 A2c+lsHq6lXclmKghb6QkZQ=
X-Google-Smtp-Source: ABdhPJzhRp4lLIofJYT+F83VReZpVe64dnuAnm/l2lEP0HrHgktCW0qPgvBMYd1i8qGDsCWxZbC3Rg==
X-Received: by 2002:a05:6402:c7:: with SMTP id
 i7mr7618522edu.328.1613036129899; 
 Thu, 11 Feb 2021 01:35:29 -0800 (PST)
Received: from skbuf (5-12-227-87.residential.rdsnet.ro. [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id cb21sm3396330edb.57.2021.02.11.01.35.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Feb 2021 01:35:29 -0800 (PST)
Date: Thu, 11 Feb 2021 11:35:27 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Ido Schimmel <idosch@idosch.org>
Message-ID: <20210211093527.qyaa3czumgggvm7z@skbuf>
References: <20210209151936.97382-1-olteanv@gmail.com>
 <20210209151936.97382-5-olteanv@gmail.com>
 <20210209185100.GA266253@shredder.lan>
 <20210209202045.obayorcud4fg2qqb@skbuf>
 <20210209220124.GA271860@shredder.lan>
 <20210209225153.j7u6zwnpdgskvr2v@skbuf>
 <20210210105949.GB287766@shredder.lan>
 <20210210232352.m7nqzvs2g4i74rx4@skbuf>
 <20210211074443.GB324421@shredder.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210211074443.GB324421@shredder.lan>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, linux-omap@vger.kernel.org,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Taras Chornyi <tchornyi@marvell.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, UNGLinuxDriver@microchip.com,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v2 net-next 04/11] net: bridge: offload initial
 and final port flags through switchdev
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

On Thu, Feb 11, 2021 at 09:44:43AM +0200, Ido Schimmel wrote:
> On Thu, Feb 11, 2021 at 01:23:52AM +0200, Vladimir Oltean wrote:
> > On Wed, Feb 10, 2021 at 12:59:49PM +0200, Ido Schimmel wrote:
> > > > > The reverse, during unlinking, would be to refuse unlinking if the upper
> > > > > has uppers of its own. netdev_upper_dev_unlink() needs to learn to
> > > > > return an error and callers such as team/bond need to learn to handle
> > > > > it, but it seems patchable.
> > > >
> > > > Again, this was treated prior to my deletion in this series and not by
> > > > erroring out, I just really didn't think it through.
> > > >
> > > > So you're saying that if we impose that all switchdev drivers restrict
> > > > the house of cards to be constructed from the bottom up, and destructed
> > > > from the top down, then the notification of bridge port flags can stay
> > > > in the bridge layer?
> > >
> > > I actually don't think it's a good idea to have this in the bridge in
> > > any case. I understand that it makes sense for some devices where
> > > learning, flooding, etc are port attributes, but in other devices these
> > > can be {port,vlan} attributes and then you need to take care of them
> > > when a vlan is added / deleted and not only when a port is removed from
> > > the bridge. So for such devices this really won't save anything. I would
> > > thus leave it to the lower levels to decide.
> >
> > Just for my understanding, how are per-{port,vlan} attributes such as
> > learning and flooding managed by the Linux bridge? How can I disable
> > flooding only in a certain VLAN?
>
> You can't (currently). But it does not change the fact that in some
> devices these are {port,vlan} attributes and we are talking here about
> the interface towards these devices. Having these as {port,vlan}
> attributes allows you to support use cases such as a port being enslaved
> to a VLAN-aware bridge and its VLAN upper(s) enslaved to VLAN unaware
> bridge(s).

I don't think I understand the use case really. You mean something like this?

    br1 (vlan_filtering=0)
    /           \
   /             \
 swp0.100         \
   |               \
   |(vlan_filtering \
   |  br0  =1)       \
   | /   \            \
   |/     \            \
 swp0    swp1         swp2

A packet received on swp0 with VLAN tag 100 will go to swp0.100 which
will be forwarded according to the FDB of br1, and will be delivered to
swp2 as untagged? Respectively in the other direction, a packet received
on swp2 will have a VLAN 100 tag pushed on egress towards swp0, even if
it is already VLAN-tagged?

What do you even use this for?
And also: if the {port,vlan} attributes can be simulated by making the
bridge port be an 8021q upper of a physical interface, then as far as
the bridge is concerned, they still are per-port attributes, and they
are per-{port,vlan} only as far as the switch driver is concerned -
therefore I don't see why it isn't okay for the bridge to notify the
brport flags in exactly the same way for them too.

> Obviously you need to ensure there is no conflict between the
> VLANs used by the VLAN-aware bridge and the VLAN device(s).

On the other hand I think I have a more real-life use case that I think
is in conflict with this last phrase.
I have a VLAN-aware bridge and I want to run PTP in VLAN 7, but I also
need to add VLAN 7 in the VLAN table of the bridge ports so that it
doesn't drop traffic. PTP is link-local, so I need to run it on VLAN
uppers of the switch ports. Like this:

ip link add br0 type bridge vlan_filtering 1
ip link set swp0 master br0
ip link set swp1 master br0
bridge vlan add dev swp0 vid 7 master
bridge vlan add dev swp1 vid 7 master
bridge vlan add dev br0 vid 7 self
ip link add link swp0 name swp0.7 type vlan id 7
ip link add link swp1 name swp0.7 type vlan id 7
ptp4l -i swp0.7 -i swp1.7 -m

How can I do that considering that you recommend avoiding conflicts
between the VLAN-aware bridge and 8021q uppers? Or is that true only
when the 8021q uppers are bridged?
