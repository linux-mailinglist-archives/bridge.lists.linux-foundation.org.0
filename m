Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id AD36A7DC96
	for <lists.bridge@lfdr.de>; Thu,  1 Aug 2019 15:34:02 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2781AEE6;
	Thu,  1 Aug 2019 13:33:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E31623C3E
	for <bridge@lists.linux-foundation.org>;
	Wed, 31 Jul 2019 13:46:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BE6AA6CE
	for <bridge@lists.linux-foundation.org>;
	Wed, 31 Jul 2019 13:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124;
	h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=0NRC7saKJ5HD00qHeigJW3alj6gmWgBSOf4VkoLAoSc=;
	b=JXw0y2cy74zcZYlRJQaphKCSHw
	0oZnZBNXiVaoB6HTz9u0KwJXN5xEHvXFcU1G0VabJIHCUqc7nci3IjPL4++JUn0jM8pqvNBscQj7h
	mSV0WKdYJst1outT/rtXeKlB29RzaIcQppVkxiPpwPlA3g3JqD7JfeykpDJG9oKteFsE=; 
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
	(envelope-from <andrew@lunn.ch>)
	id 1hsovO-00067q-UY; Wed, 31 Jul 2019 15:45:50 +0200
Date: Wed, 31 Jul 2019 15:45:50 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: "Allan W. Nielsen" <allan.nielsen@microchip.com>
Message-ID: <20190731134550.GA23028@lunn.ch>
References: <3cc69103-d194-2eca-e7dd-e2fa6a730223@cumulusnetworks.com>
	<20190729135205.oiuthcyesal4b4ct@lx-anielsen.microsemi.net>
	<e4cd0db9-695a-82a7-7dc0-623ded66a4e5@cumulusnetworks.com>
	<20190729143508.tcyebbvleppa242d@lx-anielsen.microsemi.net>
	<20190729175136.GA28572@splinter>
	<20190730062721.p4vrxo5sxbtulkrx@lx-anielsen.microsemi.net>
	<20190730143400.GO28552@lunn.ch>
	<20190730190000.diacyjw6owqkf7uf@lx-anielsen.microsemi.net>
	<20190731033156.GE9523@lunn.ch>
	<20190731080149.oyqcrw42utxjizsx@lx-anielsen.microsemi.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190731080149.oyqcrw42utxjizsx@lx-anielsen.microsemi.net>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
	roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	linux-kernel@vger.kernel.org, davem@davemloft.net,
	Ido Schimmel <idosch@idosch.org>,
	Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: Re: [Bridge] [PATCH] net: bridge: Allow bridge to joing multicast
	groups
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

> > 2) The interface is part of a bridge. There are a few sub-cases
> > 
> > a) IGMP snooping is being performed. We can block multicast where
> > there is no interest in the group. But this is limited to IP
> > multicast.
> Agree. And this is done today by installing an explicit offload rule to limit
> the flooding of a specific group.
> 
> > b) IGMP snooping is not being used and all interfaces in the bridge
> > are ports of the switch. IP Multicast can be blocked to the CPU.
> Does it matter if IGMP snooping is used or not? A more general statement could
> be:
> 
> - "All interfaces in the bridge are ports of the switch. IP Multicast can be
>   blocked to the CPU."

We have seen IPv6 neighbour discovery break in conditions like this. I
don't know the exact details.

You also need to watch out for 224.0.0.0/24. This is the link local
multicast range. There is no need to join MC addresses in that
range. It is assumed they will always be received. So even if IGMP is
enabled, you still need to pass some multicast traffic to the CPU.

> > So one possibility here is to teach the SW bridge about non-IP
> > multicast addresses. Initially the switch should forward all MAC
> > multicast frames to the CPU. If the frame is not an IPv4 or IPv6
> > frame, and there has not been a call to set_rx_mode() for the MAC
> > address on the br0 interface, and the bridge only contains switch
> > ports, switchdev could be used to block the multicast to the CPU
> > frame, but forward it out all other ports of the bridge.
> Close, but not exactly (due to the arguments above).
> 
> Here is how I see it:
> 
> Teach the SW bridge about non-IP multicast addresses. Initially the switch
> should forward all MAC multicast frames to the CPU. Today MDB rules can be
> installed (either static or dynamic by IGMP), which limit the flooding of IPv4/6
> multicast streams. In the same way, we should have a way to install a rule
> (FDM/ or MDB) to limit the flooding of L2 multicast frames.
> 
> If foreign interfaces (or br0 it self) is part of the destination list, then
> traffic also needs to go to the CPU.
> 
> By doing this, we can for explicitly configured dst mac address:
> - limit the flooding on the on the SW bridge interfaces
> - limit the flooding on the on the HW bridge interfaces
> - prevent them to go to the CPU if they are not needed

This is all very complex because of all the different corner cases. So
i don't think we want a user API to do the CPU part, we want the
network stack to do it. Otherwise the user is going to get is wrong,
break their network, and then come running to the list for help.

This also fits with how we do things in DSA. There is deliberately no
user space concept for configuring the DSA CPU port. To user space,
the switch is just a bunch of Linux interfaces. Everything to do with
the CPU port is hidden away in the DSA core layer, the DSA drivers,
and a little bit in the bridge.

       Andrew
