Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C813431647B
	for <lists.bridge@lfdr.de>; Wed, 10 Feb 2021 12:00:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D27AC8584A;
	Wed, 10 Feb 2021 11:00:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dP6ms3IcUcUI; Wed, 10 Feb 2021 11:00:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 373E6849CD;
	Wed, 10 Feb 2021 11:00:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2997AC013A;
	Wed, 10 Feb 2021 11:00:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F33A8C013A
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 10:59:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E688C87289
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 10:59:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DMzlElZQJoKD for <bridge@lists.linux-foundation.org>;
 Wed, 10 Feb 2021 10:59:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com
 [66.111.4.230])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1C78987285
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 10:59:57 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 328AC580324;
 Wed, 10 Feb 2021 05:59:55 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Wed, 10 Feb 2021 05:59:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=5fXHGY
 xrTC05uatkM7mitonKpiC7Bf6g34qbrlEBtbI=; b=at1X+c2FFqoR2jFLPaHr1d
 yGhAM34eDzIBMRNapWY8+VUEC/TmkZ084CKIrfWdRFIM1H/1b6dVxKh9nx0EIbfL
 rGA9VnThnFISRUKQx/2LTY054kmJuePF46eJjOzQ9MFRrcuTia2vklPuVkS236y1
 SUqfO7qMtKDlnh7Z/5f1rZBpE/BkxB6WIH9IikGLn110LovjtAzosWbsLxJCTU74
 e08In/xIwgktwJKaB/ZGPA4EcV5EWOA2cza8KiSINZYV0SDCaQdr+Tl7f2Al4yqq
 O0zda5STP5HavurJfYdnTP1W6iXPqU2ZdscLGGTrA9XAojBgQ8dKFoZswuv+YsqQ
 ==
X-ME-Sender: <xms:qbwjYEtZELEeVD7gxEvs3Gqu4JlzcqyWrZdIhCrN4uzPRAXL9MLOIQ>
 <xme:qbwjYBeDSbe-a0NSHyVgS7RQXW6C9cSxJRKJF_5U6Trli3Bvgg-EDm_Ys9GIIosAr
 O0Z9bf75lS2tm8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrheejgddvvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcuufgt
 hhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrthhtvg
 hrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudehleet
 necukfhppeekgedrvddvledrudehfedrgeegnecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepihguohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:qbwjYPzSp9gaoDvNT1Gl6d8mHObNdXeivImHPxN53G0B-UjST2pQug>
 <xmx:qbwjYHOpNlR1EV43rgfe61x32BHw65rKVBYwjccbd8PU8Tb8NejrNA>
 <xmx:qbwjYE88yyP54Rt5qIUwmqoX4IlxMl74qFGXFgLdM4xs6OoZe70TVg>
 <xmx:q7wjYFjRs-lfmFBy1tN56HTaUSRM14Ia0A7MY_FfxrFDHN_MIymJwQ>
Received: from localhost (igld-84-229-153-44.inter.net.il [84.229.153.44])
 by mail.messagingengine.com (Postfix) with ESMTPA id C464B24005D;
 Wed, 10 Feb 2021 05:59:52 -0500 (EST)
Date: Wed, 10 Feb 2021 12:59:49 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <20210210105949.GB287766@shredder.lan>
References: <20210209151936.97382-1-olteanv@gmail.com>
 <20210209151936.97382-5-olteanv@gmail.com>
 <20210209185100.GA266253@shredder.lan>
 <20210209202045.obayorcud4fg2qqb@skbuf>
 <20210209220124.GA271860@shredder.lan>
 <20210209225153.j7u6zwnpdgskvr2v@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210209225153.j7u6zwnpdgskvr2v@skbuf>
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

On Wed, Feb 10, 2021 at 12:51:53AM +0200, Vladimir Oltean wrote:
> On Wed, Feb 10, 2021 at 12:01:24AM +0200, Ido Schimmel wrote:
> > On Tue, Feb 09, 2021 at 10:20:45PM +0200, Vladimir Oltean wrote:
> > > On Tue, Feb 09, 2021 at 08:51:00PM +0200, Ido Schimmel wrote:
> > > > On Tue, Feb 09, 2021 at 05:19:29PM +0200, Vladimir Oltean wrote:
> > > > > So switchdev drivers operating in standalone mode should disable address
> > > > > learning. As a matter of practicality, we can reduce code duplication in
> > > > > drivers by having the bridge notify through switchdev of the initial and
> > > > > final brport flags. Then, drivers can simply start up hardcoded for no
> > > > > address learning (similar to how they already start up hardcoded for no
> > > > > forwarding), then they only need to listen for
> > > > > SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS and their job is basically done, no
> > > > > need for special cases when the port joins or leaves the bridge etc.
> > > >
> > > > How are you handling the case where a port leaves a LAG that is linked
> > > > to a bridge? In this case the port becomes a standalone port, but will
> > > > not get this notification.
> > >
> > > Apparently the answer to that question is "I delete the code that makes
> > > this use case work", how smart of me. Thanks.
> >
> > Not sure how you expect to interpret this.
> 
> Next patch (05/11) deletes that explicit notification from dsa_port_bridge_leave,
> function which is called from dsa_port_lag_leave too, apparently with good reason.
> 
> > > Unless you have any idea how I could move the logic into the bridge, I
> > > guess I'm stuck with DSA and all the other switchdev drivers having this
> > > forest of corner cases to deal with. At least I can add a comment so I'm
> > > not tempted to delete it next time.
> >
> > There are too many moving pieces with stacked devices. It is not only
> > LAG/bridge. In L3 you have VRFs, SVIs, macvlans etc. It might be better
> > to gracefully / explicitly not handle a case rather than pretending to
> > handle it correctly with complex / buggy code.
> >
> > For example, you should refuse to be enslaved to a LAG that already has
> > upper devices such as a bridge. You are probably not handling this
> > correctly / at all. This is easy. Just a call to
> > netdev_has_any_upper_dev().
> 
> Correct, good point, in particular this means that joining a bridged LAG
> will not get me any notifications of that LAG's CHANGEUPPER because that
> was consumed a long time ago. An equally valid approach seems to be to
> check for netdev_master_upper_dev_get_rcu in dsa_port_lag_join, and call
> dsa_port_bridge_join on the upper if that is present.

The bridge might already have a state you are not familiar with (e.g.,
FDB entry pointing to the LAG), so best to just forbid this. I think
it's fair to impose such limitations (assuming they are properly
communicated to user space) given it results in a much less
buggy/complex code to maintain.

> 
> > The reverse, during unlinking, would be to refuse unlinking if the upper
> > has uppers of its own. netdev_upper_dev_unlink() needs to learn to
> > return an error and callers such as team/bond need to learn to handle
> > it, but it seems patchable.
> 
> Again, this was treated prior to my deletion in this series and not by
> erroring out, I just really didn't think it through.
> 
> So you're saying that if we impose that all switchdev drivers restrict
> the house of cards to be constructed from the bottom up, and destructed
> from the top down, then the notification of bridge port flags can stay
> in the bridge layer?

I actually don't think it's a good idea to have this in the bridge in
any case. I understand that it makes sense for some devices where
learning, flooding, etc are port attributes, but in other devices these
can be {port,vlan} attributes and then you need to take care of them
when a vlan is added / deleted and not only when a port is removed from
the bridge. So for such devices this really won't save anything. I would
thus leave it to the lower levels to decide.
