Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E393E9A98
	for <lists.bridge@lfdr.de>; Wed, 11 Aug 2021 23:53:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0769D40343;
	Wed, 11 Aug 2021 21:53:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4sWj-K5qnDSz; Wed, 11 Aug 2021 21:53:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id ACFAB40380;
	Wed, 11 Aug 2021 21:52:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 58EE6C001F;
	Wed, 11 Aug 2021 21:52:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0E823C000E
 for <bridge@lists.linux-foundation.org>; Wed, 11 Aug 2021 21:52:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E3E39404E2
 for <bridge@lists.linux-foundation.org>; Wed, 11 Aug 2021 21:52:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nux3ARsmb9pe for <bridge@lists.linux-foundation.org>;
 Wed, 11 Aug 2021 21:52:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BC685404E1
 for <bridge@lists.linux-foundation.org>; Wed, 11 Aug 2021 21:52:53 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id AD6435C00BE;
 Wed, 11 Aug 2021 17:52:52 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 11 Aug 2021 17:52:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=FK7M9k
 Owfu+KZDsOKjdiQ8lyNCXWTSpz2RJWMEH8QTE=; b=myEzfllXbQ91dfcBRmK3Yi
 EIsoDkH8QYIvtmWI06mfJudcL/j9ABgMuHQZ3ULavzfvBITA5nKaqFbyb+yC7wZu
 NoEcIzQwFqIIoquw6vTg52KjbQQNXrpjLVffJ2xB9BlmaxTD9jrfP2vS2MehMPPI
 8GsnpdKafi0DoMVN56gkf/E4fYfS6K2nhhsMmXi9PgU47cIlJOiCQjW4CGT8rLIM
 fypQcoUzK6i7wIfAzLMHAzmsf4YImpn+iJU4Hd1ryS67+WD7i9cNz/DFMnhZ/b8w
 skGLGNQ2PEBwVNMBIgMUOR7zwjZKKbgVvqCHqfqu8DB7msNEPpOvSpFw/08a1qKw
 ==
X-ME-Sender: <xms:s0YUYUnGq_w357Aj6jRi8dtC1AJH12uVnu7vtD7FX1uJ8SBzjcos3g>
 <xme:s0YUYT0fi0oZZNJsDq2PhiWBd30nh_eI9vI2DpyVqHaPLqjW0DWS7CJDRZzP5b9G6
 LJpYQcVtlB9xaI>
X-ME-Received: <xmr:s0YUYSpz6WQ-iCSqCkIXM9-2Q7zT7okw6Kq6AyxZ0GUIfLdYpN5bJk5K41TSFHUB2gQaQW9enmLeXNN30jjB6khz2_-2kQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrkedvgddtvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcuufgt
 hhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrthhtvg
 hrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudehleet
 necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepihguoh
 hstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:s0YUYQkxeZAQTq8K-r0ZKyWpsQ3XSR5dIHp-R6_U0dQKJqiZRbDfMg>
 <xmx:s0YUYS27N6QbEsSQbfH9XrGmmsHLukeSPstwge_6FvIHLcsTs0vhpw>
 <xmx:s0YUYXu8RxKwwqd9spBJenIhKgJ-TTF_EiMB4RiAQlgiobaaEAYUrg>
 <xmx:tEYUYbnynv0_56JXPddZ1sA5cfeG3RFgk5qeNMCgbHpri8iiifsUUg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 11 Aug 2021 17:52:51 -0400 (EDT)
Date: Thu, 12 Aug 2021 00:52:48 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <YRRGsL60WeDGQOnv@shredder>
References: <20210811135247.1703496-1-dqfext@gmail.com>
 <YRRDcGWaWHgBkNhQ@shredder> <20210811214506.4pf5t3wgabs5blqj@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210811214506.4pf5t3wgabs5blqj@skbuf>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "open list:ETHERNET BRIDGE" <netdev@vger.kernel.org>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 open list <linux-kernel@vger.kernel.org>, DENG Qingfang <dqfext@gmail.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next] net: bridge: switchdev: allow port
 isolation to be offloaded
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

On Thu, Aug 12, 2021 at 12:45:06AM +0300, Vladimir Oltean wrote:
> On Thu, Aug 12, 2021 at 12:38:56AM +0300, Ido Schimmel wrote:
> > On Wed, Aug 11, 2021 at 09:52:46PM +0800, DENG Qingfang wrote:
> > > Add BR_ISOLATED flag to BR_PORT_FLAGS_HW_OFFLOAD, to allow switchdev
> > > drivers to offload port isolation.
> > >
> > > Suggested-by: Vladimir Oltean <olteanv@gmail.com>
> > > Signed-off-by: DENG Qingfang <dqfext@gmail.com>
> > > ---
> > >  net/bridge/br_switchdev.c | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
> > > index 6bf518d78f02..898257153883 100644
> > > --- a/net/bridge/br_switchdev.c
> > > +++ b/net/bridge/br_switchdev.c
> > > @@ -71,7 +71,8 @@ bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
> > >
> > >  /* Flags that can be offloaded to hardware */
> > >  #define BR_PORT_FLAGS_HW_OFFLOAD (BR_LEARNING | BR_FLOOD | \
> > > -				  BR_MCAST_FLOOD | BR_BCAST_FLOOD)
> > > +				  BR_MCAST_FLOOD | BR_BCAST_FLOOD | \
> > > +				  BR_ISOLATED)
> >
> > Why add it now and not as part of a patchset that actually makes use of
> > the flag in a driver that offloads port isolation?
> 
> The way the information got transmitted is a bit unfortunate.
> 
> Making BR_ISOLATED part of BR_PORT_FLAGS_HW_OFFLOAD is a matter of
> correctness when switchdev offloads the data path. Since this feature
> will not work correctly without driver intervention, it makes sense that
> drivers should reject it currently, which is exactly what this patch
> accomplishes - it makes the code path go through the
> SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS driver handlers, which return
> -EINVAL for everything they don't recognize.

If the purpose is correctness, then this is not the only flag that was
missed. BR_HAIRPIN_MODE is also relevant for the data path, for example.

Anyway, the commit message needs to be reworded to reflect the true
purpose of the patch.

> 
> (yes, we do still have a problem for drivers that don't catch
> SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS at all, switchdev will return
> -EOPNOTSUPP for those which is then ignored, but those are in the
> minority)
