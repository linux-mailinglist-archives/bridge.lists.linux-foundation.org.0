Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2884F3731B9
	for <lists.bridge@lfdr.de>; Tue,  4 May 2021 23:04:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB63D605D5;
	Tue,  4 May 2021 21:04:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SBGr9gR83HTQ; Tue,  4 May 2021 21:04:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 51E94605EF;
	Tue,  4 May 2021 21:04:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 203CFC001C;
	Tue,  4 May 2021 21:04:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5E61BC0001
 for <bridge@lists.linux-foundation.org>; Tue,  4 May 2021 21:04:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 36A5D605EF
 for <bridge@lists.linux-foundation.org>; Tue,  4 May 2021 21:04:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UFCI6oO4B9S3 for <bridge@lists.linux-foundation.org>;
 Tue,  4 May 2021 21:04:33 +0000 (UTC)
X-Greylist: delayed 00:30:59 by SQLgrey-1.8.0
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 29883605D5
 for <bridge@lists.linux-foundation.org>; Tue,  4 May 2021 21:04:33 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
 (envelope-from <andrew@lunn.ch>)
 id 1le1jM-002XKq-IS; Tue, 04 May 2021 22:33:20 +0200
Date: Tue, 4 May 2021 22:33:20 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <YJGvkJBKPj2WloXf@lunn.ch>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
 <20210426170411.1789186-7-tobias@waldekranz.com>
 <20210427101747.n3y6w6o7thl5cz3r@skbuf>
 <878s4uo8xc.fsf@waldekranz.com>
 <20210504152106.oppawchuruapg4sb@skbuf>
 <874kfintzh.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <874kfintzh.fsf@waldekranz.com>
Cc: f.fainelli@gmail.com, jiri@resnulli.us, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, vivien.didelot@gmail.com, idosch@idosch.org,
 nikolay@nvidia.com, roopa@nvidia.com, kuba@kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next 6/9] net: dsa: Forward offloading
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

> There is really no need to recompute the static parts of the tags on
> each skb. It would mean moving some knowledge of the tagging format to
> the driver. But that boundary is pretty artificial for
> mv88e6xxx. tag_dsa has no use outside of mv88e6xxx, and mv88e6xxx does
> not work with any other tagger. I suppose you could even move the whole
> tagger to drivers/net/dsa/mv88e6xxx/?
> 
> What do you think?
> 
> Andrew?

We have resisted this before.

What information do you actually need to share between the tagger and
the driver? Both tag_lan9303.c and tag_ocelot_8021q.c do reference
their switch driver data structures, so some sharing is allowed. But
please try to keep the surface areas down.

       Andrew
