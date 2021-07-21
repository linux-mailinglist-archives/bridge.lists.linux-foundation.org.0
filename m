Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6803D0942
	for <lists.bridge@lfdr.de>; Wed, 21 Jul 2021 08:55:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B04E82C33;
	Wed, 21 Jul 2021 06:55:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ybLayLg5FoyZ; Wed, 21 Jul 2021 06:55:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id B94EC82C3E;
	Wed, 21 Jul 2021 06:55:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 77B1EC0022;
	Wed, 21 Jul 2021 06:55:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9B3A2C000E
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jul 2021 06:55:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 77793401F3
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jul 2021 06:55:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eUiCpoORXA8T for <bridge@lists.linux-foundation.org>;
 Wed, 21 Jul 2021 06:55:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from new2-smtp.messagingengine.com (new2-smtp.messagingengine.com
 [66.111.4.224])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 49257400D7
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jul 2021 06:55:23 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 521AD581609;
 Wed, 21 Jul 2021 02:55:19 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Wed, 21 Jul 2021 02:55:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=6yi/O0
 LyOJ89V3sggDKStxOVOB4l9oGGCJnJDXDH4Io=; b=SmeNKoI4xLKnlWMFOlUQZc
 3VKleiE/Q7H0nBLuW0vQLhMdSU8bX/eNwmCqzta5i2lRmUTd+lANGA3NEBJqMUcR
 8LE6Ipvrj1I1rUjUPNi0/jnrhcMXGGZrqVxevV1ss5EVMIXS0FAScd1IUy7Ri9c0
 xZGhGvUrMujY/EOyvlzP7HIDMqhmq6BTLkC7BfRwU1hNSrgbe5Hs6rn2phkXDK4E
 DK51xDUEvXDtHReR/3LLgiClgn2gFkz3GMEbW72jcrxaM3lREjE1nP8L0tki/xbu
 COhHaTbHcwtUBQDdGZaMnZpca0VpKo/ZefkLr2Knzu+t0FEVJSYV8BP5Tq4A633g
 ==
X-ME-Sender: <xms:1cT3YCH2icXFKSg9wxJ7YGeau_xYlMAKJvRAI55bpwo3t9_I0T1dzQ>
 <xme:1cT3YDWOQduCITenGlx4hUjOFnBzrs2nNLDPJJvWATYhccX-FCWLmp5QcHEKoqxoA
 aWNa1XWBoh5CHY>
X-ME-Received: <xmr:1cT3YMKC6Ua95jz6yFXvQ_bArY8DkBM5oPkT3OAtfaLtflwXJBNuchIJLO4bnOvfEgud-3wt5pCGh4sV20pzdcdN9IEzaA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeefgddutdefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpedtffekkeefudffveegueejffejhfetgfeuuefgvedtieehudeuueekhfduheel
 teenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:1cT3YMFkogiDK8LhnXmNGE0PUVslZYHUdyGrY32oZfbexY-0zPAuqg>
 <xmx:1cT3YIUQ2g9VUJ6ehVx2i9jCNjjKjXmYImt3YphwqZofLXoUqasWLw>
 <xmx:1cT3YPMiM7yj4rQ4GngtrT1SakM8noLfNu9ND-_6a0iRTchNA6feWw>
 <xmx:18T3YJUlqZoL9lC1gXQFTASrDXNHO9_kDwHEeQfH_4yvEDDHxaGF8w>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 02:55:17 -0400 (EDT)
Date: Wed, 21 Jul 2021 09:55:14 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <YPfE0oEfwVe1u4rM@shredder>
References: <20210720134655.892334-1-vladimir.oltean@nxp.com>
 <YPbXTKj4teQZ1QRi@shredder> <20210720141200.xgk3mlipp2mzerjl@skbuf>
 <YPbcxPKjbDxChnlK@shredder> <20210720194717.qbdz5mmmxqbn3y3z@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210720194717.qbdz5mmmxqbn3y3z@skbuf>
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 Vivien Didelot <vivien.didelot@gmail.com>, DENG Qingfang <dqfext@gmail.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Marek Behun <kabel@blackhole.sk>,
 "David S. Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v5 net-next 00/10] Let switchdev drivers
 offload and unoffload bridge ports at their own convenience
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

On Tue, Jul 20, 2021 at 07:47:18PM +0000, Vladimir Oltean wrote:
> On Tue, Jul 20, 2021 at 05:25:08PM +0300, Ido Schimmel wrote:
> > If you don't want to change the order, then at least make the
> > replay/cleanup optional and set it to 'false' for mlxsw. This should
> > mean that the only change in mlxsw should be adding calls to
> > switchdev_bridge_port_offload() / switchdev_bridge_port_unoffload() in
> > mlxsw_sp_bridge_port_create() / mlxsw_sp_bridge_port_destroy(),
> > respectively.
> 
> Is there any specific reason why you suggested me to move the
> switchdev_bridge_port_offload() call from the top-level
> mlxsw_sp_port_bridge_join() into mlxsw_sp_bridge_port_create()
> (and similarly, from _pre_bridge_leave to _destroy)?
> 
> Even if you don't support replays right now, you'd need to move a bunch
> of code around before you would get them to work. As far as I can see,
> mlxsw_sp_bridge_port_create() is a bit too early and
> mlxsw_sp_bridge_port_destroy() is a bit too late. The port needs to be
> fairly up and running to be able to process the switchdev notifiers at
> that stage.
> 
> Do you mind if I keep the hooks where they are, which is what I do for
> all drivers? I don't think I am missing to handle any case.

I want to avoid introducing unnecessary changes. I will do them when
needed.

Thanks
