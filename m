Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D7A24E921
	for <lists.bridge@lfdr.de>; Sat, 22 Aug 2020 19:46:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E81AE85BD3;
	Sat, 22 Aug 2020 17:46:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F1pWO8FF5ZhK; Sat, 22 Aug 2020 17:46:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5638186481;
	Sat, 22 Aug 2020 17:45:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 44922C0051;
	Sat, 22 Aug 2020 17:45:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AEF8EC0051
 for <bridge@lists.linux-foundation.org>; Mon, 17 Aug 2020 14:51:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9E7A187590
 for <bridge@lists.linux-foundation.org>; Mon, 17 Aug 2020 14:51:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pKGJhoQ+1Saq for <bridge@lists.linux-foundation.org>;
 Mon, 17 Aug 2020 14:51:53 +0000 (UTC)
X-Greylist: delayed 00:26:27 by SQLgrey-1.7.6
Received: from fudo.makrotopia.org (fudo.makrotopia.org [185.142.180.71])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C53A787568
 for <bridge@lists.linux-foundation.org>; Mon, 17 Aug 2020 14:51:53 +0000 (UTC)
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.93.0.4) (envelope-from <daniel@makrotopia.org>)
 id 1k7g4J-0003Pz-N0; Mon, 17 Aug 2020 16:25:03 +0200
Date: Mon, 17 Aug 2020 15:24:38 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Sven Eckelmann <sven@narfation.org>
Message-ID: <20200817142438.GB1299@makrotopia.org>
References: <20200816202424.3526-1-linus.luessing@c0d3.blue>
 <87zh6t650b.fsf@miraculix.mork.no> <1830568.o5y0iYavLQ@sven-edge>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1830568.o5y0iYavLQ@sven-edge>
X-Mailman-Approved-At: Sat, 22 Aug 2020 17:45:56 +0000
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 gluon@luebeck.freifunk.net, openwrt-devel@lists.openwrt.org,
 "David S . Miller" <davem@davemloft.net>,
 =?iso-8859-1?Q?Bj=F8rn?= Mork <bjorn@mork.no>
Subject: Re: [Bridge] [gluon] Re: [RFC PATCH net-next] bridge: Implement MLD
 Querier wake-up calls / Android bug workaround
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

On Mon, Aug 17, 2020 at 03:17:37PM +0200, Sven Eckelmann wrote:
> On Monday, 17 August 2020 10:39:00 CEST Bjørn Mork wrote:
> > Linus Lüssing <linus.luessing@c0d3.blue> writes:
> [...]
> > This is not a bug.  They are deliberately breaking IPv6 because they
> > consider this a feature.  You should not try to work around such issues.
> > It is a fight you cannot win.  Any workaround will only encourage them
> > to come up with new ways to break IPv6.
> 
> Who are "they" and where is this information coming from? And what do they 
> gain from breaking IPv6? Wouldn't it be easier for them just to disable IPv6 
> than adding random looking bugs?

They are Google and they want IPv6 to be used in a way which exposes
as much user data as possible to their servers (that's my guess).
Every additional identifying bit is like gold for them (that's their
business model).
Hence they like SLAAC and addressing schemes which reflect the network
topology and are enforcing that direction beyond good reason (that
should be obvious[1] to everyone[2] by now[3], no matter what the
reasons for that are).
You may say, hey, SLAAC also allows me to use Privary Extension and I'm
sure your browser will make use of that. But does the DNS resolver?
And what about all those Google services running in background? I'm not
sure all of them instruct the kernel to open every single socket using
a privacy source address...
Simply, when relying on SLAAC + Privary Extensions it's up to the
(mobile) client to avoid being very easily tracked.
When using DHCPv6 the situation is like it was for v4 (ok, it's still
a bit worse because you can distinguish clients much better).

As a work-around, I've been limiting source EUI-64 addresses from
leaving my local network -- but that's surely not what everyone would
want to make sure their local devices MAC addresses aren't leaked and
also just breaking v6 in yet another way.
I don't consider NAT66 an option and would like to avoid even
connection-tracking on v6 as it was promissed :). Tethering should
work using DHCPv6 prefix delegation imho rather than ND-proxy or
NAT66 which are both quite a burden for the battery-powered device
offering the tethering gateway (ie. each forwarded packet then needs
CPU intervention, I can't see anything great about that).



[1]: https://www.nullzero.co.uk/android-does-not-support-dhcpv6-and-google-wont-fix-that/

[2]: https://www.techrepublic.com/article/androids-lack-of-dhcpv6-support-frustrates-enterprise-network-admins/

[3]: https://lostintransit.se/2020/05/22/its-2020-and-androids-ipv6-is-still-broken/
