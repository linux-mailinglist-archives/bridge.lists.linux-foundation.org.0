Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C125ED611
	for <lists.bridge@lfdr.de>; Wed, 28 Sep 2022 09:29:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76AE0415C9;
	Wed, 28 Sep 2022 07:29:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76AE0415C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0bP0V4zxlFKy; Wed, 28 Sep 2022 07:29:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id A5B50415F2;
	Wed, 28 Sep 2022 07:29:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5B50415F2
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2B2E3C0078;
	Wed, 28 Sep 2022 07:29:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5B41BC002D
 for <bridge@lists.linux-foundation.org>; Wed, 28 Sep 2022 07:29:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2973460B91
 for <bridge@lists.linux-foundation.org>; Wed, 28 Sep 2022 07:29:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2973460B91
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3H4AJp-wO7cP for <bridge@lists.linux-foundation.org>;
 Wed, 28 Sep 2022 07:29:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0DD9607C1
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F0DD9607C1
 for <bridge@lists.linux-foundation.org>; Wed, 28 Sep 2022 07:29:03 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id D2A211883981;
 Wed, 28 Sep 2022 07:29:00 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id C75842500370;
 Wed, 28 Sep 2022 07:29:00 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id B3B719EC0019; Wed, 28 Sep 2022 07:29:00 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Wed, 28 Sep 2022 09:29:00 +0200
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <YzPwwuCe0HkJpkQe@shredder>
References: <Yxmgs7Du62V1zyjK@shredder>
 <8dfc9b525f084fa5ad55019f4418a35e@kapio-technology.com>
 <20220908112044.czjh3xkzb4r27ohq@skbuf>
 <152c0ceadefbd742331c340bec2f50c0@kapio-technology.com>
 <20220911001346.qno33l47i6nvgiwy@skbuf>
 <15ee472a68beca4a151118179da5e663@kapio-technology.com>
 <Yx73FOpN5uhPQhFl@shredder>
 <086704ce7f323cc1b3cca78670b42095@kapio-technology.com>
 <Yyq6BnUfctLeerqE@shredder>
 <7a4549d645f9bbbf41e814f087eb07d1@kapio-technology.com>
 <YzPwwuCe0HkJpkQe@shredder>
User-Agent: Gigahost Webmail
Message-ID: <d020fe746b30dd048970b3668ffad498@kapio-technology.com>
X-Sender: netdev@kapio-technology.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, bridge@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Christian Marangi <ansuelsmth@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Vladimir Oltean <olteanv@gmail.com>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v5 net-next 6/6] selftests: forwarding: add
 test of MAC-Auth Bypass to locked port tests
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

On 2022-09-28 08:59, Ido Schimmel wrote:
> Sorry for the delay, was away.

Good to have you back. :-)

> 
> On Tue, Sep 27, 2022 at 10:33:10AM +0200, netdev@kapio-technology.com 
> wrote:
>> On 2022-09-21 09:15, Ido Schimmel wrote:
>> > 	bridge fdb add `mac_get $h2` dev br0 blackhole
>> 
>> To make this work, I think we need to change the concept, so that 
>> blackhole
>> FDB entries are added to ports connected to the bridge, thus
>>      bridge fdb add MAC dev $swpX master blackhole
>> 
>> This makes sense as the driver adds them based on the port where the 
>> SMAC is
>> seen, even though the effect of the blackhole FDB entry is switch 
>> wide.
> 
> Asking user space to associate a blackhole entry with a bridge port 
> does
> not make sense to me because unlike regular entries, blackhole entries
> do not forward packets out of this port. Blackhole routes and nexthops
> are not associated with a device either.
> 
>> Adding them to the bridge (e.g. f.ex. br0) will not work in the SW 
>> bridge as
>> the entries then are not found.
> 
> Why not found? This works:
> 
>  # bridge fdb add 00:11:22:33:44:55 dev br0 self local
>  $ bridge fdb get 00:11:22:33:44:55 br br0
>  00:11:22:33:44:55 dev br0 master br0 permanent
> 
> With blackhole support I expect:
> 
>  # bridge fdb add 00:11:22:33:44:55 dev br0 self local blackhole
>  $ bridge fdb get 00:11:22:33:44:55 br br0
>  00:11:22:33:44:55 dev br0 master br0 permanent blackhole

In my previous replies, I have notified that fdb_find_rcu() does not 
find the entry added with br0, and thus fdb_add_entry() that does the 
replace does not replace but adds a new entry. I have been thinking that 
it is because when added with br0 as dev it is added to dev br0's fdb, 
which is not the same as 'dev <Dev> master' fdb...

I think bridge fdb get works in a different way, as I know the get 
functionality gets all fdb entries from all devices and filters them (if 
I am not mistaken)...
