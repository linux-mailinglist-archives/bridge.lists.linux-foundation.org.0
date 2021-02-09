Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DF83155CE
	for <lists.bridge@lfdr.de>; Tue,  9 Feb 2021 19:26:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 337A5867E2;
	Tue,  9 Feb 2021 18:26:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 01vazeA81QV0; Tue,  9 Feb 2021 18:26:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 366DD867DA;
	Tue,  9 Feb 2021 18:26:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 283A1C013A;
	Tue,  9 Feb 2021 18:26:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8DDECC013A
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 18:26:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 72BA987182
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 18:26:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sUFkKtl4yxY0 for <bridge@lists.linux-foundation.org>;
 Tue,  9 Feb 2021 18:26:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
 [66.111.4.229])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A0D1081E87
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 18:26:25 +0000 (UTC)
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailnew.nyi.internal (Postfix) with ESMTP id C2BC9580171;
 Tue,  9 Feb 2021 13:26:24 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute7.internal (MEProxy); Tue, 09 Feb 2021 13:26:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=jbTXSE
 kHbtCMu+f135EDu0ufO51m7hO7fIyJQPnw2cM=; b=Av5rWJhyVsredRqpbe+/Uz
 F6LRuAWYNgnYiqjcioKGv21NJd19zUqh8Yz62DRSZbvWqOEATjoeCug2VAQND4o3
 rSu7q7pXakLyzIaBI89YmdmqqKNzd9PhP4WqX04efbSc5lGj193sXRzM2g4Gd6/z
 pwrWh8hiX4DvPGJat9nzP4a2GPMF5KgWu3vYqg0IW/xV6cKuPD50OP2+FSJIMK3x
 G7lOEM4+dZWPDWW0F69f1QqzHpN0r+mvCTEHNUAjFT6lJdiOqr7wyCC/VrXdbKJ9
 L9y+7Q7imyAVmXrCRAw42xW2hVQWj9u4dYh6Q/QxgFHcLo5YGsB1PLeUb6e2ee+Q
 ==
X-ME-Sender: <xms:zNMiYP3haaEoL0jF1iJoVGmPbWsCguNeDd3w4o9KskECGTpZpLSPHA>
 <xme:zNMiYAHyfBICO7zxoJq3Neb4Iesy3u5ZBbegiXQngD2R7g2SUZF_cXccjZ77viGHQ
 sinNXDrmuG1Kp8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrheehgdduudegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpefgvefgveeuudeuffeiffehieffgfejleevtdetueetueffkeevgffgtddugfek
 veenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecukfhppeekgedrvddvledrudehfe
 drgeegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhep
 ihguohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:zNMiYJRxAYDMnRHOHA0WoUtVVEdSj4mQobBjnoJDI802tand7mi_ig>
 <xmx:zNMiYHBJPXqqxcD7RB1HHiMbeQ_FD8QPLOIR4h0qr45TGGM98Zcx0g>
 <xmx:zNMiYJ3R_bCNPZscbk0g_qj79gAW3SkLz16iJu5fXQJgffjtxFYFeQ>
 <xmx:0NMiYMg3AiQ6JXmNSLpUYMQXU4uLmtnHQHR6f5u-HFBvBDdB-sXH9w>
Received: from localhost (igld-84-229-153-44.inter.net.il [84.229.153.44])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7364424005D;
 Tue,  9 Feb 2021 13:26:20 -0500 (EST)
Date: Tue, 9 Feb 2021 20:26:17 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <20210209182617.GB262892@shredder.lan>
References: <20210209151936.97382-1-olteanv@gmail.com>
 <20210209151936.97382-4-olteanv@gmail.com>
 <20210209173631.c75cdjxphwzipeg5@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210209173631.c75cdjxphwzipeg5@skbuf>
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
Subject: Re: [Bridge] [PATCH v2 net-next 03/11] net: bridge: don't print in
 br_switchdev_set_port_flag
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

On Tue, Feb 09, 2021 at 07:36:31PM +0200, Vladimir Oltean wrote:
> On Tue, Feb 09, 2021 at 05:19:28PM +0200, Vladimir Oltean wrote:
> > From: Vladimir Oltean <vladimir.oltean@nxp.com>
> >
> > Currently br_switchdev_set_port_flag has two options for error handling
> > and neither is good:
> > - The driver returns -EOPNOTSUPP in PRE_BRIDGE_FLAGS if it doesn't
> >   support offloading that flag, and this gets silently ignored and
> >   converted to an errno of 0. Nobody does this.
> > - The driver returns some other error code, like -EINVAL, in
> >   PRE_BRIDGE_FLAGS, and br_switchdev_set_port_flag shouts loudly.
> >
> > The problem is that we'd like to offload some port flags during bridge
> > join and leave, but also not have the bridge shout at us if those fail.
> > But on the other hand we'd like the user to know that we can't offload
> > something when they set that through netlink. And since we can't have
> > the driver return -EOPNOTSUPP or -EINVAL depending on whether it's
> > called by the user or internally by the bridge, let's just add an extack
> > argument to br_switchdev_set_port_flag and propagate it to its callers.
> > Then, when we need offloading to really fail silently, this can simply
> > be passed a NULL argument.
> >
> > Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> > ---
> 
> The build fails because since I started working on v2 and until I sent
> it, Jakub merged net into net-next which contained this fix:
> https://patchwork.kernel.org/project/netdevbpf/patch/20210207194733.1811529-1-olteanv@gmail.com/
> for which I couldn't change prototype due to it missing in net-next.
> I think I would like to rather wait to gather some feedback first before
> respinning v3, if possible.

It seems that in the sysfs call path br_switchdev_set_port_flag() will
be called with the bridge lock held, which is going to be a problem
given that patch #8 allows this function to block.
