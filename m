Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 492A53185D5
	for <lists.bridge@lfdr.de>; Thu, 11 Feb 2021 08:45:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC3E66F694
	for <lists.bridge@lfdr.de>; Thu, 11 Feb 2021 07:45:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gxt6WKajf4BB for <lists.bridge@lfdr.de>;
	Thu, 11 Feb 2021 07:45:00 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id E7C8E6F4F9; Thu, 11 Feb 2021 07:45:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57BAC6F4A1;
	Thu, 11 Feb 2021 07:44:53 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 26538C1DA9;
	Thu, 11 Feb 2021 07:44:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 60737C013A
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 07:44:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4DCE986B4F
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 07:44:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cUQfXSCF2NxB for <bridge@lists.linux-foundation.org>;
 Thu, 11 Feb 2021 07:44:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
 [66.111.4.229])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BE43286B4E
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 07:44:50 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id C578758030D;
 Thu, 11 Feb 2021 02:44:49 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Thu, 11 Feb 2021 02:44:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Jhw14S
 7gzUfxDfXY3MFGd9GM2K8HzhgZoqO1xwIOyI8=; b=XSA4aEVKrOLqFVMFHen/+J
 U6nQ81UiLHi0PhCffPAtMnqtR1/rCMIfmRJbmPNSy8se+SAE7G63ax9MF9SFqpLT
 sn6CTKZuxpKMPXvQMoPn9vLkdFxjX60R1z/i3pdTXMjwpH42p+qul+A3SnieudiI
 3itCJCzG0MqIt7OE4kxR/Jqdh6wFdoSv/T6CL9s7YadNkQnZQAfHOyqSB2e3zJeX
 QWhcFKvqeRm6q2U4LWmaZI/w8QL65WN1jFdXcgh4DrM36gdF356OUxm1Q89jmnET
 x6z8U6R5h2Zn+S5a3Q++JIgjf4qXQBea/V9daTppn5u1VtuXNtwJWWZd/vOGRpyg
 ==
X-ME-Sender: <xms:b-AkYAMT1j4HNRQ-BurfrnoTDv70mzZxO5Ud5his7QQvby5VT91u5g>
 <xme:b-AkYJiqsmkOHwMT_KQrMja17-n7M7OPxKF7PAt_PAVAxU4zr9PIBRUTou9sT51-M
 y1UZbML_7caRRM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrheekgdduudduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpedtffekkeefudffveegueejffejhfetgfeuuefgvedtieehudeuueekhfduheel
 teenucfkphepkeegrddvvdelrdduheefrdeggeenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehiughoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:b-AkYK4HlSG3at4b4cix3E1iR-_7guQgfUiGUVYxOensYBobT8fGQA>
 <xmx:b-AkYI1OTzd3KB2adCAPQ4fRkUdagHg8g-TaKwd7AO5sECOfhpcwYw>
 <xmx:b-AkYNtP0_531KU-LKWbvRAtq2lKgAn-71cyZT4PFyfdlyPQ_fYFCw>
 <xmx:ceAkYHfZxfFxLmfOSYd3z20Ju2JoE1bgRrE6DyOzRoIuhY1ilU2AeA>
Received: from localhost (igld-84-229-153-44.inter.net.il [84.229.153.44])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2CE6324005D;
 Thu, 11 Feb 2021 02:44:46 -0500 (EST)
Date: Thu, 11 Feb 2021 09:44:43 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <20210211074443.GB324421@shredder.lan>
References: <20210209151936.97382-1-olteanv@gmail.com>
 <20210209151936.97382-5-olteanv@gmail.com>
 <20210209185100.GA266253@shredder.lan>
 <20210209202045.obayorcud4fg2qqb@skbuf>
 <20210209220124.GA271860@shredder.lan>
 <20210209225153.j7u6zwnpdgskvr2v@skbuf>
 <20210210105949.GB287766@shredder.lan>
 <20210210232352.m7nqzvs2g4i74rx4@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210210232352.m7nqzvs2g4i74rx4@skbuf>
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

On Thu, Feb 11, 2021 at 01:23:52AM +0200, Vladimir Oltean wrote:
> On Wed, Feb 10, 2021 at 12:59:49PM +0200, Ido Schimmel wrote:
> > > > The reverse, during unlinking, would be to refuse unlinking if the upper
> > > > has uppers of its own. netdev_upper_dev_unlink() needs to learn to
> > > > return an error and callers such as team/bond need to learn to handle
> > > > it, but it seems patchable.
> > >
> > > Again, this was treated prior to my deletion in this series and not by
> > > erroring out, I just really didn't think it through.
> > >
> > > So you're saying that if we impose that all switchdev drivers restrict
> > > the house of cards to be constructed from the bottom up, and destructed
> > > from the top down, then the notification of bridge port flags can stay
> > > in the bridge layer?
> >
> > I actually don't think it's a good idea to have this in the bridge in
> > any case. I understand that it makes sense for some devices where
> > learning, flooding, etc are port attributes, but in other devices these
> > can be {port,vlan} attributes and then you need to take care of them
> > when a vlan is added / deleted and not only when a port is removed from
> > the bridge. So for such devices this really won't save anything. I would
> > thus leave it to the lower levels to decide.
> 
> Just for my understanding, how are per-{port,vlan} attributes such as
> learning and flooding managed by the Linux bridge? How can I disable
> flooding only in a certain VLAN?

You can't (currently). But it does not change the fact that in some
devices these are {port,vlan} attributes and we are talking here about
the interface towards these devices. Having these as {port,vlan}
attributes allows you to support use cases such as a port being enslaved
to a VLAN-aware bridge and its VLAN upper(s) enslaved to VLAN unaware
bridge(s). Obviously you need to ensure there is no conflict between the
VLANs used by the VLAN-aware bridge and the VLAN device(s).
