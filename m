Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8327A9282
	for <lists.bridge@lfdr.de>; Thu, 21 Sep 2023 10:06:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2E8C540116;
	Thu, 21 Sep 2023 08:06:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E8C540116
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256 header.s=mail header.b=s5BAmOkM
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z-vaaYDBqUhG; Thu, 21 Sep 2023 08:06:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id AAADA400AB;
	Thu, 21 Sep 2023 08:06:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AAADA400AB
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4CE7DC0DD3;
	Thu, 21 Sep 2023 08:06:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6F4B0C0032
 for <bridge@lists.linux-foundation.org>; Thu, 21 Sep 2023 08:06:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3CE6A40116
 for <bridge@lists.linux-foundation.org>; Thu, 21 Sep 2023 08:06:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CE6A40116
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xmnpIp1KeOc9 for <bridge@lists.linux-foundation.org>;
 Thu, 21 Sep 2023 08:06:09 +0000 (UTC)
Received: from mail.avm.de (mail.avm.de [IPv6:2001:bf0:244:244::94])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 09579400AB
 for <bridge@lists.linux-foundation.org>; Thu, 21 Sep 2023 08:06:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 09579400AB
Received: from mail-auth.avm.de (unknown [IPv6:2001:bf0:244:244::71])
 by mail.avm.de (Postfix) with ESMTPS;
 Thu, 21 Sep 2023 10:06:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=avm.de; s=mail;
 t=1695283566; bh=EzGmNrSKOJc7ZUWqu95aGt4JAKmhiqLPdGsju567CAk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s5BAmOkMuI+eBqvoX4jxWJ6gSAWinUICiwcr9FCuzw16BjWz/LRBk2pOKtoc289IH
 LLJsqZbrXEYCAGHSdUrrGPH+OErDMkrB5B6yA98g/ZVu5NLG3t/vI0+YXCJQzJw16Z
 0CqlBe9j3IF5pEnsxff5BskDQAnpen3+7kaJM3Fo=
Received: from localhost (unknown [172.17.88.63])
 by mail-auth.avm.de (Postfix) with ESMTPSA id 1044581C20;
 Thu, 21 Sep 2023 10:06:01 +0200 (CEST)
Date: Thu, 21 Sep 2023 10:06:00 +0200
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <ZQv5aNbgqxCuOKyr@u-jnixdorf.ads.avm.de>
References: <20230919-fdb_limit-v4-0-39f0293807b8@avm.de>
 <20230919-fdb_limit-v4-5-39f0293807b8@avm.de>
 <cc14cd4a-f3bb-3d6f-5b38-ec73cad32570@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cc14cd4a-f3bb-3d6f-5b38-ec73cad32570@blackwall.org>
X-purgate-ID: 149429::1695283561-FD4345D2-604B728F/0/0
X-purgate-type: clean
X-purgate-size: 3303
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for
 further information)
X-purgate: clean
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, linux-kernel@vger.kernel.org,
 Oleksij Rempel <linux@rempel-privat.de>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, linux-kselftest@vger.kernel.org,
 David Ahern <dsahern@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Shuah Khan <shuah@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next v4 5/6] net: bridge: Add a
 configurable default FDB learning limit
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
From: Johannes Nixdorf via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Johannes Nixdorf <jnixdorf-oss@avm.de>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Wed, Sep 20, 2023 at 02:00:27PM +0300, Nikolay Aleksandrov wrote:
> On 9/19/23 11:12, Johannes Nixdorf wrote:
> > Add a Kconfig option to configure a default FDB learning limit system
> > wide, so a distributor building a special purpose kernel can limit all
> > created bridges by default.
> > 
> > The limit is only a soft default setting and overrideable on a per bridge
> > basis using netlink.
> > 
> > Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
> > ---
> >   net/bridge/Kconfig     | 13 +++++++++++++
> >   net/bridge/br_device.c |  2 ++
> >   2 files changed, 15 insertions(+)
> > 
> > diff --git a/net/bridge/Kconfig b/net/bridge/Kconfig
> > index 3c8ded7d3e84..c0d9c08088c4 100644
> > --- a/net/bridge/Kconfig
> > +++ b/net/bridge/Kconfig
> > @@ -84,3 +84,16 @@ config BRIDGE_CFM
> >   	  Say N to exclude this support and reduce the binary size.
> >   	  If unsure, say N.
> > +
> > +config BRIDGE_DEFAULT_FDB_MAX_LEARNED
> > +	int "Default FDB learning limit"
> > +	default 0
> > +	depends on BRIDGE
> > +	help
> > +	  Sets a default limit on the number of learned FDB entries on
> > +	  new bridges. This limit can be overwritten via netlink on a
> > +	  per bridge basis.
> > +
> > +	  The default of 0 disables the limit.
> > +
> > +	  If unsure, say 0.
> > diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
> > index 9a5ea06236bd..3214391c15a0 100644
> > --- a/net/bridge/br_device.c
> > +++ b/net/bridge/br_device.c
> > @@ -531,6 +531,8 @@ void br_dev_setup(struct net_device *dev)
> >   	br->bridge_ageing_time = br->ageing_time = BR_DEFAULT_AGEING_TIME;
> >   	dev->max_mtu = ETH_MAX_MTU;
> > +	br->fdb_max_learned = CONFIG_BRIDGE_DEFAULT_FDB_MAX_LEARNED;
> > +
> >   	br_netfilter_rtable_init(br);
> >   	br_stp_timer_init(br);
> >   	br_multicast_init(br);
> > 
> 
> This one I'm not sure about at all. Distributions can just create the bridge
> with a predefined limit. This is not flexible and just adds
> one more kconfig option that is rather unnecessary. Why having a kconfig
> knob is better than bridge creation time limit setting? You still have
> to create the bridge, so why not set the limit then?

The problem I'm trying to solve here are unaware applications. Assuming
this change lands in the next Linux release there will still be quite
some time until the major applications that create bridges (distribution
specific or common network management tools, the container solution of
they day, for embedded some random vendor tools, etc.) will pick it
up. In this series I chose a default of 0 to not break existing setups
that rely on some arbitrary amount of FDB entries, so those unaware
applications will create bridges without limits. I added the Kconfig
setting so someone who knows their use cases can still set a more fitting
default limit.

More specifically to our use case as an embedded vendor that builds their
own kernels and knows they have no use case that requires huge FDB tables,
the kernel config allows us to set a safe default limit before starting
to teach all our applications and our upstream vendors' code about the
new netlink attribute. As this patch is relatively simple, we can also
keep it downstream if there is opposition to it here though.
