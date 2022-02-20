Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B38BF4BCD76
	for <lists.bridge@lfdr.de>; Sun, 20 Feb 2022 10:22:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E1B081911;
	Sun, 20 Feb 2022 09:22:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H5CevurW4SYt; Sun, 20 Feb 2022 09:21:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 7800F81757;
	Sun, 20 Feb 2022 09:21:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D6036C0073;
	Sun, 20 Feb 2022 09:21:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7E43AC0033
 for <bridge@lists.linux-foundation.org>; Sun, 20 Feb 2022 09:21:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 695A060B98
 for <bridge@lists.linux-foundation.org>; Sun, 20 Feb 2022 09:21:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KXxG5Ol3wArp for <bridge@lists.linux-foundation.org>;
 Sun, 20 Feb 2022 09:21:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from new2-smtp.messagingengine.com (new2-smtp.messagingengine.com
 [66.111.4.224])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C7B5A60B8D
 for <bridge@lists.linux-foundation.org>; Sun, 20 Feb 2022 09:21:47 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 097D65802C7;
 Sun, 20 Feb 2022 04:21:47 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Sun, 20 Feb 2022 04:21:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=MQZZTj8nabcqXlOJo
 8XpXYmPncZlkb2pDfrS1E/GCWs=; b=KPnK0JrrURZg2WB91bNRyRRM9j3C9wClc
 a9v83tOZN9Uut3wzny0nLKGJ/f70x9a6yywbUUGMcW4inDsa3EjQKwxNIayD6eBZ
 BQba8pBxL95XH2OWwCKBkidPeEatOhwZ1CKtNnrhKbttlBEkf/d9MRkXHubAZMzP
 NW3IW3VFXwVxYJnSZBQQzeaQe8EJnDwWVhUjjHwGt6n1BE/nQAKIfLhoYa4qgqP+
 ngyEPPZ1PeX8qdcWEQzgGvhNC4Tjz6+FvVlzWDO3fzDuGNSFSbW3SgAW7CuyX1Z/
 iWq0qjIqgwNev9+byaMnUftAdHnJANOhwvhtfmOeHZg9j2MBqlAQA==
X-ME-Sender: <xms:KggSYs6Kezvy_fa_YcLTi2eOf-NVF6TaXeSZ-_PBVVzOFVYqz9cCRA>
 <xme:KggSYt5JLTQuSHcmOsoKTzTVrMo9BRHKzR0HRKnoNhceqaSdSICea1ob3YeWtXipE
 Qyn5FrzBx6pnUM>
X-ME-Received: <xmr:KggSYrc_rnvaO8qd7ASefAJ91OwmJ_mFGP4qF-xpS6JFDG_GzxS_Ix3X_C3mPTb5a1E7VKcdb78lIZmRCsrV-nOJLdM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrkeeggddtfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcuufgt
 hhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrthhtvg
 hrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudehleet
 necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepihguoh
 hstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:KggSYhL3Buph9p5ptNXVL7bQouavOosMF_G0afDYrkJtrI2WTAMl_g>
 <xmx:KggSYgIjzYO1OwTGLggYYeswk-zZzdqJU1xQ_xMG5i_zsf1BM7o4RQ>
 <xmx:KggSYixQiu74wM0c98Xpt3xlgHd23PpDTx6D6Vo1jcEImJGa_4Sh6A>
 <xmx:KwgSYs_oP7bh9Ec1aAScZyPonKCqRAi2vzjDWQVy5YThHxx21NNmrw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 20 Feb 2022 04:21:45 -0500 (EST)
Date: Sun, 20 Feb 2022 11:21:43 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <YhIIJxxXP3JzD60/@shredder>
References: <20220218155148.2329797-1-schultz.hans+netdev@gmail.com>
 <20220218155148.2329797-5-schultz.hans+netdev@gmail.com>
 <20220219100034.lh343dkmc4fbiad3@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220219100034.lh343dkmc4fbiad3@skbuf>
Cc: Petr Machata <petrm@nvidia.com>, Andrew Lunn <andrew@lunn.ch>,
 Baowen Zheng <baowen.zheng@corigine.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Amit Cohen <amcohen@nvidia.com>,
 netdev@vger.kernel.org, Hans Schultz <schultz.hans@gmail.com>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 David Ahern <dsahern@kernel.org>, Hans Schultz <schultz.hans+netdev@gmail.com>,
 Po-Hsu Lin <po-hsu.lin@canonical.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Stephen Suryaputra <ssuryaextr@gmail.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v3 4/5] net: dsa: mv88e6xxx: Add
 support for bridge port locked mode
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

On Sat, Feb 19, 2022 at 12:00:34PM +0200, Vladimir Oltean wrote:
> On Fri, Feb 18, 2022 at 04:51:47PM +0100, Hans Schultz wrote:
> > diff --git a/drivers/net/dsa/mv88e6xxx/port.c b/drivers/net/dsa/mv88e6xxx/port.c
> > index ab41619a809b..46b7381899a0 100644
> > --- a/drivers/net/dsa/mv88e6xxx/port.c
> > +++ b/drivers/net/dsa/mv88e6xxx/port.c
> > @@ -1234,6 +1234,39 @@ int mv88e6xxx_port_set_mirror(struct mv88e6xxx_chip *chip, int port,
> >  	return err;
> >  }
> >  
> > +int mv88e6xxx_port_set_lock(struct mv88e6xxx_chip *chip, int port,
> > +			    bool locked)
> > +{
> > +	u16 reg;
> > +	int err;
> > +
> > +	err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_CTL0, &reg);
> > +	if (err)
> > +		return err;
> > +
> > +	reg &= ~MV88E6XXX_PORT_CTL0_SA_FILT_MASK;
> > +	if (locked)
> > +		reg |= MV88E6XXX_PORT_CTL0_SA_FILT_DROP_ON_LOCK;
> > +
> > +	err = mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_CTL0, reg);
> > +	if (err)
> > +		return err;
> > +
> > +	err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_ASSOC_VECTOR, &reg);
> > +	if (err)
> > +		return err;
> > +
> > +	reg &= ~MV88E6XXX_PORT_ASSOC_VECTOR_LOCKED_PORT;
> > +	if (locked)
> > +		reg |= MV88E6XXX_PORT_ASSOC_VECTOR_LOCKED_PORT;
> > +
> > +	err = mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_ASSOC_VECTOR, reg);
> 
> 	return mv88e6xxx_port_write(...);

Not familiar with mv88e6xxx, but shouldn't there be a rollback of
previous operations? Specifically mv88e6xxx_port_write()

> 
> > +	if (err)
> > +		return err;
> > +
> > +	return 0;
> > +}
