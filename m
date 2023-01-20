Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 16860675F88
	for <lists.bridge@lfdr.de>; Fri, 20 Jan 2023 22:16:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0EF3D41921;
	Fri, 20 Jan 2023 21:16:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0EF3D41921
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uFIstbAJLWEr; Fri, 20 Jan 2023 21:16:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 75B124172F;
	Fri, 20 Jan 2023 21:16:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 75B124172F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0B7DBC007B;
	Fri, 20 Jan 2023 21:16:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B4245C002D
 for <bridge@lists.linux-foundation.org>; Fri, 20 Jan 2023 21:16:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8313D416C5
 for <bridge@lists.linux-foundation.org>; Fri, 20 Jan 2023 21:16:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8313D416C5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V7DjjVx1qqtv for <bridge@lists.linux-foundation.org>;
 Fri, 20 Jan 2023 21:16:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C0CF415F6
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1C0CF415F6
 for <bridge@lists.linux-foundation.org>; Fri, 20 Jan 2023 21:16:06 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 4A5AF1883A74;
 Fri, 20 Jan 2023 21:16:03 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 412112500327;
 Fri, 20 Jan 2023 21:16:03 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 2D75D91201E4; Fri, 20 Jan 2023 21:16:03 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Fri, 20 Jan 2023 22:16:03 +0100
From: netdev@kapio-technology.com
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20230119134045.fqdt6zrna5x3iavt@skbuf>
References: <20230117185714.3058453-1-netdev@kapio-technology.com>
 <20230117185714.3058453-2-netdev@kapio-technology.com>
 <20230117230806.ipwcbnq4jcc4qs7z@skbuf>
 <a3bba3eb856a00b5e5e0c1e2ffe8749a@kapio-technology.com>
 <20230119093358.gbyka2x4qbxxr43b@skbuf>
 <20230119134045.fqdt6zrna5x3iavt@skbuf>
User-Agent: Gigahost Webmail
Message-ID: <29501147c96e7e2f06c999410d42e2bf@kapio-technology.com>
X-Sender: netdev@kapio-technology.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Russell King <linux@armlinux.org.uk>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 =?UTF-8?Q?Cl=C3=A9ment_L=C3=A9ger?= <clement.leger@bootlin.com>,
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
 A5PSW SWITCH DRIVER" <linux-renesas-soc@vger.kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [RFC PATCH net-next 1/5] net: bridge: add dynamic flag
 to switchdev notifier
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

On 2023-01-19 14:40, Vladimir Oltean wrote:
> On Thu, Jan 19, 2023 at 11:33:58AM +0200, Vladimir Oltean wrote:
>> On Wed, Jan 18, 2023 at 11:14:00PM +0100, netdev@kapio-technology.com 
>> wrote:
>> > > > +	item->is_dyn = !test_bit(BR_FDB_STATIC, &fdb->flags);
>> > >
>> > > Why reverse logic? Why not just name this "is_static" and leave any
>> > > further interpretations up to the consumer?
>> >
>> > My reasoning for this is that the common case is to have static entries,
>> > thus is_dyn=false, so whenever someone uses a switchdev_notifier_fdb_info
>> > struct the common case does not need to be entered.
>> > Otherwise it might also break something when someone uses this struct and if
>> > it was 'is_static' and they forget to code is_static=true they will get
>> > dynamic entries without wanting it and it can be hard to find such an error.
>> 
>> I'll leave it up to bridge maintainers if this is preferable to 
>> patching
>> all callers of SWITCHDEV_FDB_ADD_TO_BRIDGE such that they set 
>> is_static=true.
> 
> Actually, why would you assume that all users of 
> SWITCHDEV_FDB_ADD_TO_BRIDGE
> want to add static FDB entries? You can't avoid inspecting the code and
> making sure that the is_dyn/is_static flag is set correctly either way.

Well, up until this patch set there is no option, besides entries from 
SWITCHDEV_FDB_ADD_TO_BRIDGE events will get the external learned flag 
set, so they will not be aged by the bridge, and so dynamic entries that 
way don't make much sense I think. Is that not right?
