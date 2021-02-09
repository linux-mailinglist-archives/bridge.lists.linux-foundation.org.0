Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6352C315914
	for <lists.bridge@lfdr.de>; Tue,  9 Feb 2021 23:01:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E3E176F6B5
	for <lists.bridge@lfdr.de>; Tue,  9 Feb 2021 22:01:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XdCnmvGiT8JV for <lists.bridge@lfdr.de>;
	Tue,  9 Feb 2021 22:01:49 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 4113C6F6A8; Tue,  9 Feb 2021 22:01:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA2566E7C0;
	Tue,  9 Feb 2021 22:01:33 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A66D7C013A;
	Tue,  9 Feb 2021 22:01:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DC5E8C013A
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 22:01:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CF90F85F98
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 22:01:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cztlxuseLncO for <bridge@lists.linux-foundation.org>;
 Tue,  9 Feb 2021 22:01:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com
 [66.111.4.230])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8757286226
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 22:01:31 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id D256F58010D;
 Tue,  9 Feb 2021 17:01:29 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 09 Feb 2021 17:01:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=If0a9D
 G+vl8Jyo4MLhR7mY6t7WMqf7KoKRp8rDPToCk=; b=EijxwlpjAizDL0+dXE/wNW
 Muaw7NUG6HGq3B61vSEu12cmEUsUFET0BKJS3avziOX677RJdzJAlZmE6S/WX9wJ
 +MHJWCwuoIfyVT+Y9EpxZ35zAUtl0Dqw27zw44fJOq9wJunYvfOwUOGc6Mo7YDYj
 5BZbRNqXkjWCTfdA7KB0fFJmTN9CtkFHJzjO7hRYvpU2x75ExIpP1+9r3PKLTJer
 gFAHezuHUsK/j8aJuGan8NZ5pJhj9hjWx/LtlVx+rEDnuVRrHSj8w+RtmFfjnC5x
 U7pLm8EmM6ZDLhCngCR7PH9D0wfzX/+uEsC/9kPD9LuTjWhcn3zl8wmYGCapxF1w
 ==
X-ME-Sender: <xms:OAYjYMT-jk-rKKwYdHWAgEyWEW7Usa3RtSg77HTOUBSQAed9XtsJfQ>
 <xme:OAYjYMCVRCyWu-QQHF_OYc39memdYFbhdfPub2icbZOmpFrZJr5tsiEfcK-hYtb66
 ogZ75rLjW0X4q8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrheehgdduheejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpedtffekkeefudffveegueejffejhfetgfeuuefgvedtieehudeuueekhfduheel
 teenucfkphepkeegrddvvdelrdduheefrdeggeenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehiughoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:OAYjYMEeAvDb5iN1yuY04-xL2NmLAyFTUyv3N5hwoWcCcCpdUimOHQ>
 <xmx:OAYjYGDsI19McKZr4-DISEZk9KWFMVnCCSNBskNlqys0hmmED4YedA>
 <xmx:OAYjYEW53jilG-nI9nyH-mD88sVkNgydBaK_0W6GNCFXVFOCN8xRaA>
 <xmx:OQYjYLrAtFIFtqNOWnkv1XKmsHLR5HmNmPnoogc1DVUiZXVVcwAyCA>
Received: from localhost (igld-84-229-153-44.inter.net.il [84.229.153.44])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0E0C1240066;
 Tue,  9 Feb 2021 17:01:27 -0500 (EST)
Date: Wed, 10 Feb 2021 00:01:24 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <20210209220124.GA271860@shredder.lan>
References: <20210209151936.97382-1-olteanv@gmail.com>
 <20210209151936.97382-5-olteanv@gmail.com>
 <20210209185100.GA266253@shredder.lan>
 <20210209202045.obayorcud4fg2qqb@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210209202045.obayorcud4fg2qqb@skbuf>
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

On Tue, Feb 09, 2021 at 10:20:45PM +0200, Vladimir Oltean wrote:
> On Tue, Feb 09, 2021 at 08:51:00PM +0200, Ido Schimmel wrote:
> > On Tue, Feb 09, 2021 at 05:19:29PM +0200, Vladimir Oltean wrote:
> > > So switchdev drivers operating in standalone mode should disable address
> > > learning. As a matter of practicality, we can reduce code duplication in
> > > drivers by having the bridge notify through switchdev of the initial and
> > > final brport flags. Then, drivers can simply start up hardcoded for no
> > > address learning (similar to how they already start up hardcoded for no
> > > forwarding), then they only need to listen for
> > > SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS and their job is basically done, no
> > > need for special cases when the port joins or leaves the bridge etc.
> > 
> > How are you handling the case where a port leaves a LAG that is linked
> > to a bridge? In this case the port becomes a standalone port, but will
> > not get this notification.
> 
> Apparently the answer to that question is "I delete the code that makes
> this use case work", how smart of me. Thanks.

Not sure how you expect to interpret this.

> 
> Unless you have any idea how I could move the logic into the bridge, I
> guess I'm stuck with DSA and all the other switchdev drivers having this
> forest of corner cases to deal with. At least I can add a comment so I'm
> not tempted to delete it next time.

There are too many moving pieces with stacked devices. It is not only
LAG/bridge. In L3 you have VRFs, SVIs, macvlans etc. It might be better
to gracefully / explicitly not handle a case rather than pretending to
handle it correctly with complex / buggy code.

For example, you should refuse to be enslaved to a LAG that already has
upper devices such as a bridge. You are probably not handling this
correctly / at all. This is easy. Just a call to
netdev_has_any_upper_dev().

The reverse, during unlinking, would be to refuse unlinking if the upper
has uppers of its own. netdev_upper_dev_unlink() needs to learn to
return an error and callers such as team/bond need to learn to handle
it, but it seems patchable.
