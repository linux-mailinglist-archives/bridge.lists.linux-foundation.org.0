Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 587116883D5
	for <lists.bridge@lfdr.de>; Thu,  2 Feb 2023 17:12:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5DAC640CF2;
	Thu,  2 Feb 2023 16:12:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5DAC640CF2
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=b3LzJGL6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KUBu4YKvjDOz; Thu,  2 Feb 2023 16:12:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 9754641030;
	Thu,  2 Feb 2023 16:12:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9754641030
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 26022C0078;
	Thu,  2 Feb 2023 16:12:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0D431C002B
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 16:12:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CF3858138A
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 16:12:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF3858138A
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm3 header.b=b3LzJGL6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LatY27EV_2P0 for <bridge@lists.linux-foundation.org>;
 Thu,  2 Feb 2023 16:12:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA29281E94
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CA29281E94
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 16:12:08 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id AEC345C0105;
 Thu,  2 Feb 2023 11:12:05 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Thu, 02 Feb 2023 11:12:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
 :feedback-id:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:sender:subject:subject:to:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1675354324; x=1675440724; bh=ObQsoYKIVUZK8T5LMlYjRR5D1GUZ
 gLRpBI3oPI8zUtY=; b=b3LzJGL6jVprIAtYXbPj6MoE8W8TtEVEP5V/o8XUxFXe
 oGbVI9nudMn7G2i+j6MIw134LG+mvHuWwfKHEhOM7MAvkxTi8sPp+Qn8ryv84DRf
 sJQmDsVQpFRGYl20lDWf+uGHC9OApeaVIhJNHXyOcAJdaZfixjyTWNmHIzozJIGd
 H19ARCpeZIIwmmsxZwsd5QZ8NNADoxsMVWQ6cmhA60oM7lW725UvIFo7hqQpMIeG
 O89BeVAokiYFacMpESCPC4HCmGwwaAwTQpRgN37A27uSj3deIMQZYyIyRNaM+4h1
 xe+DMq/bPFdqAJfuYS06saVH8Dy88eJgxi4n1RXewg==
X-ME-Sender: <xms:0-DbY-EZs1kahAJmUcICVxo98Y5mAcqYjGEdaddShA3vritad3N1RA>
 <xme:0-DbY_VG5FvXoZASimjx8L7hLFLO6q8Ka1XbHS1U3EJTItWgrSxYUrae_5dr9SSLP
 XejnyIRHxLPazI>
X-ME-Received: <xmr:0-DbY4KsLg8VUe6qhmvb-pki0TBwIgF2EpK-LKH7bKtQ1PDiFYenLPL2j08TAenxLaC7xSZnK29C1kyWw6ugJToFD-w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrudefkedgkedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcu
 ufgthhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrth
 htvghrnhephefhtdejvdeiffefudduvdffgeetieeigeeugfduffdvffdtfeehieejtdfh
 jeeknecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiughoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:0-DbY4Grl27-Wviov3dYNm86QDWEZUIKpVKjJbfy7OCPUdYzcoQd3A>
 <xmx:0-DbY0Ww2Y_nQxhgguzrRdE8iEYiYzR2-k3ALQLi_wXFlf0KTX5B7Q>
 <xmx:0-DbY7OnkKpmgLwd7EJcHvBRllA0x6hPsQDOUEwJKaWOnUKXfnyDow>
 <xmx:1ODbY2hWpglKZfHmzgQ5qH6wW8y9D6By7gnLxfQ4w0TGv96VzbW6Cg>
Feedback-ID: i494840e7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 2 Feb 2023 11:12:02 -0500 (EST)
Date: Thu, 2 Feb 2023 18:11:59 +0200
From: Ido Schimmel <idosch@idosch.org>
To: netdev@kapio-technology.com
Message-ID: <Y9vgz4x/O+dIp+0/@shredder>
References: <20230130173429.3577450-1-netdev@kapio-technology.com>
 <20230130173429.3577450-2-netdev@kapio-technology.com>
 <Y9qrAup9Xt/ZDEG0@shredder>
 <f27dd18d9d0b7ff8b693af8a58ea8616@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f27dd18d9d0b7ff8b693af8a58ea8616@kapio-technology.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Russell King <linux@armlinux.org.uk>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 =?iso-8859-1?Q?Cl=E9ment_L=E9ger?= <clement.leger@bootlin.com>,
 Christian Marangi <ansuelsmth@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, netdev@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET SWITCH DRIVER"
 <UNGLinuxDriver@microchip.com>,
 "open list:RENESAS RZ/N1 A5PSW SWITCH DRIVER"
 <linux-renesas-soc@vger.kernel.org>, Vladimir Oltean <olteanv@gmail.com>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/5] net: bridge: add dynamic flag to
 switchdev notifier
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

On Thu, Feb 02, 2023 at 08:28:36AM +0100, netdev@kapio-technology.com wrote:
> On 2023-02-01 19:10, Ido Schimmel wrote:
> > On Mon, Jan 30, 2023 at 06:34:25PM +0100, Hans J. Schultz wrote:
> > > To be able to add dynamic FDB entries to drivers from userspace, the
> > > dynamic flag must be added when sending RTM_NEWNEIGH events down.
> > > 
> > > Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
> > > ---
> > >  include/net/switchdev.h   | 1 +
> > >  net/bridge/br_switchdev.c | 2 ++
> > >  2 files changed, 3 insertions(+)
> > > 
> > > diff --git a/include/net/switchdev.h b/include/net/switchdev.h
> > > index ca0312b78294..aaf918d4ba67 100644
> > > --- a/include/net/switchdev.h
> > > +++ b/include/net/switchdev.h
> > > @@ -249,6 +249,7 @@ struct switchdev_notifier_fdb_info {
> > >  	u8 added_by_user:1,
> > >  	   is_local:1,
> > >  	   locked:1,
> > > +	   is_dyn:1,
> > >  	   offloaded:1;
> > >  };
> > > 
> > > diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
> > > index 7eb6fd5bb917..4420fcbbfdb2 100644
> > > --- a/net/bridge/br_switchdev.c
> > > +++ b/net/bridge/br_switchdev.c
> > > @@ -136,6 +136,8 @@ static void br_switchdev_fdb_populate(struct
> > > net_bridge *br,
> > >  	item->added_by_user = test_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
> > >  	item->offloaded = test_bit(BR_FDB_OFFLOADED, &fdb->flags);
> > >  	item->is_local = test_bit(BR_FDB_LOCAL, &fdb->flags);
> > > +	item->is_dyn = !test_bit(BR_FDB_STATIC, &fdb->flags) &&
> > 
> > Why not 'is_static' and be consistent with the bridge flag like all the
> > other fields?
> > 
> > Regardless of how you name this field, it is irrelevant for
> > 'SWITCHDEV_FDB_ADD_TO_BRIDGE' notifications that all add FDB entries
> > with the 'BR_FDB_ADDED_BY_EXT_LEARN' flag set, which makes
> > 'BR_FDB_STATIC' irrelevant.
> > 
> > > +		item->added_by_user;
> > 
> > Unclear why this is needed...
> > 
> 
> The answer to those two questions lies in my earlier correspondences (with
> Oltean) on the RFC version.

It is not up to me as a reviewer to dig up old versions of the patch and
find out what was changed and why. It is up to you as the submitter of
the patch to provide all this information in the patch posting. Please
read:
https://www.kernel.org/doc/html/latest/process/submitting-patches.html

Specifically:

"Review comments or questions that do not lead to a code change should
almost certainly bring about a comment or changelog entry so that the
next reviewer better understands what is going on."

And:

"Other comments relevant only to the moment or the maintainer, not
suitable for the permanent changelog, should also go here. A good
example of such comments might be patch changelogs which describe what
has changed between the v1 and v2 version of the patch.

Please put this information after the --- line which separates the
changelog from the rest of the patch. The version information is not
part of the changelog which gets committed to the git tree. It is
additional information for the reviewers."

Thanks
