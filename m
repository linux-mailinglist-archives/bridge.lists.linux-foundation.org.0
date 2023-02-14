Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F96696FC8
	for <lists.bridge@lfdr.de>; Tue, 14 Feb 2023 22:34:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B541160A92;
	Tue, 14 Feb 2023 21:34:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B541160A92
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TIr6klog27xo; Tue, 14 Feb 2023 21:34:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 50AB960B3F;
	Tue, 14 Feb 2023 21:34:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 50AB960B3F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DEA41C0078;
	Tue, 14 Feb 2023 21:34:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 868AEC002B
 for <bridge@lists.linux-foundation.org>; Tue, 14 Feb 2023 21:34:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 54B7581394
 for <bridge@lists.linux-foundation.org>; Tue, 14 Feb 2023 21:34:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54B7581394
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JwxKC6GQ4D43 for <bridge@lists.linux-foundation.org>;
 Tue, 14 Feb 2023 21:34:13 +0000 (UTC)
X-Greylist: delayed 00:17:10 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 11A5481295
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 11A5481295
 for <bridge@lists.linux-foundation.org>; Tue, 14 Feb 2023 21:34:12 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 53CD71884412;
 Tue, 14 Feb 2023 21:16:59 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 48AD725002E1;
 Tue, 14 Feb 2023 21:16:59 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 407DC9B403E3; Tue, 14 Feb 2023 21:16:59 +0000 (UTC)
X-Screener-Id: e32ae469fa6e394734d05373d3a705875723cf1e
Received: from fujitsu (2-104-116-184-cable.dk.customer.tdc.net
 [2.104.116.184])
 by smtp.gigahost.dk (Postfix) with ESMTPSA id 8F0F391201E3;
 Tue, 14 Feb 2023 21:16:58 +0000 (UTC)
From: Hans Schultz <netdev@kapio-technology.com>
To: Simon Horman <simon.horman@corigine.com>
In-Reply-To: <Y+EkiAyexZrPoCpP@corigine.com>
References: <20230130173429.3577450-1-netdev@kapio-technology.com>
 <20230130173429.3577450-6-netdev@kapio-technology.com>
 <Y9lkXlyXg1d1D0j3@corigine.com>
 <9b12275969a204739ccfab972d90f20f@kapio-technology.com>
 <Y9zDxlwSn1EfCTba@corigine.com> <20230203204422.4wrhyathxfhj6hdt@skbuf>
 <Y94TebdRQRHMMj/c@corigine.com>
 <4abbe32d007240b9c3aea9c8ca936fa3@kapio-technology.com>
 <Y+EkiAyexZrPoCpP@corigine.com>
Date: Tue, 14 Feb 2023 22:14:55 +0100
Message-ID: <87fsb83q5s.fsf@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Russell King <linux@armlinux.org.uk>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 =?utf-8?Q?Cl=C3=A9ment_L=C3=A9ger?= <clement.leger@bootlin.com>,
 Christian Marangi <ansuelsmth@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, netdev@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET
 SWITCH DRIVER" <UNGLinuxDriver@microchip.com>, "open list:RENESAS RZ/N1
 A5PSW SWITCH DRIVER" <linux-renesas-soc@vger.kernel.org>,
 Vladimir Oltean <olteanv@gmail.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 5/5] net: dsa: mv88e6xxx:
 implementation of dynamic ATU entries
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

On Mon, Feb 06, 2023 at 17:02, Simon Horman <simon.horman@corigine.com> wrote:
>
> Just to clarify my suggestion one last time, it would be along the lines
> of the following (completely untested!). I feel that it robustly covers
> all cases for fdb_flags. And as a bonus doesn't need to be modified
> if other (unsupported) flags are added in future.
>
> 	if (fdb_flags & ~(DSA_FDB_FLAG_DYNAMIC))
> 		return -EOPNOTSUPP;
>
> 	is_dynamic = !!(fdb_flags & DSA_FDB_FLAG_DYNAMIC)
> 	if (is_dynamic)
> 		state = MV88E6XXX_G1_ATU_DATA_STATE_UC_AGE_7_NEWEST;
>
>
> And perhaps for other drivers:
>
> 	if (fdb_flags & ~(DSA_FDB_FLAG_DYNAMIC))
> 		return -EOPNOTSUPP;
> 	if (fdb_flags)
> 		return 0;
>
> Perhaps a helper would be warranted for the above.

How would such a helper look? Inline function is not clean.

>
> But in writing this I think that, perhaps drivers could return -EOPNOTSUPP
> for the DSA_FDB_FLAG_DYNAMIC case and the caller can handle, rather tha
> propagate, -EOPNOTSUPP.

I looked at that, but changing the caller is also a bit ugly.

>
> Returning -EOPNOTSUPP is the normal way to drivers to respond to requests
> for unsupported hardware offloads. Sticking to that may be clearner
> in the long run. That said, I do agree your current patch is correct
> given the flag that is defined (by your patchset).
