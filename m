Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A306CB107
	for <lists.bridge@lfdr.de>; Mon, 27 Mar 2023 23:52:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5AE4481FFA;
	Mon, 27 Mar 2023 21:52:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5AE4481FFA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uVo2MgSIP-ti; Mon, 27 Mar 2023 21:52:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id DFD5481FFB;
	Mon, 27 Mar 2023 21:52:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DFD5481FFB
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 71EB5C008C;
	Mon, 27 Mar 2023 21:52:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 976FFC007A
 for <bridge@lists.linux-foundation.org>; Mon, 27 Mar 2023 21:52:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 78624610D7
 for <bridge@lists.linux-foundation.org>; Mon, 27 Mar 2023 21:52:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 78624610D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BefcI-EnEePE for <bridge@lists.linux-foundation.org>;
 Mon, 27 Mar 2023 21:52:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 481C2610C8
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 481C2610C8
 for <bridge@lists.linux-foundation.org>; Mon, 27 Mar 2023 21:52:37 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 0E9AE1884564;
 Mon, 27 Mar 2023 21:52:35 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 02FC225042EC;
 Mon, 27 Mar 2023 21:52:35 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id ED01F9B403E2; Mon, 27 Mar 2023 21:52:34 +0000 (UTC)
X-Screener-Id: e32ae469fa6e394734d05373d3a705875723cf1e
Received: from fujitsu (2-104-116-184-cable.dk.customer.tdc.net
 [2.104.116.184])
 by smtp.gigahost.dk (Postfix) with ESMTPSA id 38ACD91201E3;
 Mon, 27 Mar 2023 21:52:34 +0000 (UTC)
From: Hans Schultz <netdev@kapio-technology.com>
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20230327160009.bdswnalizdv2u77z@skbuf>
References: <20230318141010.513424-1-netdev@kapio-technology.com>
 <20230318141010.513424-3-netdev@kapio-technology.com>
 <20230327115206.jk5q5l753aoelwus@skbuf>
 <87355qb48h.fsf@kapio-technology.com>
 <20230327160009.bdswnalizdv2u77z@skbuf>
Date: Mon, 27 Mar 2023 23:49:58 +0200
Message-ID: <87pm8tooe1.fsf@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>,
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
 <linux-arm-kernel@lists.infradead.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 "maintainer:MICROCHIP KSZ SERIES
 ETHERNET SWITCH DRIVER" <UNGLinuxDriver@microchip.com>,
 "open list:RENESAS RZ/N1
 A5PSW SWITCH DRIVER" <linux-renesas-soc@vger.kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 2/6] net: dsa: propagate flags down
 towards drivers
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

On Mon, Mar 27, 2023 at 19:00, Vladimir Oltean <olteanv@gmail.com> wrote:
> A reasonable question you could ask yourself is: why do my BR_FDB_OFFLOADED
> entries have this flag in the software bridge in the first place?
> Did I add code for it? Is it because there is some difference between
> mv88e6xxx and ocelot/felix, or is it because dsa_fdb_offload_notify()
> gets called in both cases from generic code just the same?
>
> And if dsa_fdb_offload_notify() gets called in both cases just the same,
> but no other driver except for mv88e6xxx emits the SWITCHDEV_FDB_DEL_TO_BRIDGE
> which you've patched the bridge to expect in this series, then what exactly
> is surprising in the fact that offloaded and dynamic FDB entries now become
> stale, but are not removed from the software bridge as they were before?

Yes, I see I have missed that the dsa layer already adds the offloaded
flag in dsa_slave_switchdev_event_work() in slave.c.

My first approach was to use the SWITCHDEV_FDB_ADD_TO_BRIDGE event
and not the SWITCHDEV_FDB_OFFLOADED event as the first would set the
external learned flag which is not aged out by the bridge.
I have at some point earlier asked why there would be two quite
equivalent flags and what the difference between them are, but I didn't
get a response.

Now I see the difference and that I cannot use the offloaded flag
without changing the behaviour of the system as I actually change the
behaviour of the offloaded flag in this version of the patch-set.

So if the idea of a 'synthetically' learned fdb entry from the driver
using the SWITCHDEV_FDB_ADD_TO_BRIDGE event from the driver towards the
bridge instead is accepted, I can go with that?
(thus removing all the changes in the patch-set regarding the offloaded
flag ofcourse)
