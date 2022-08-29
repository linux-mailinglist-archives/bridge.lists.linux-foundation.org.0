Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 099505A4469
	for <lists.bridge@lfdr.de>; Mon, 29 Aug 2022 10:01:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D8CEF400C1;
	Mon, 29 Aug 2022 08:01:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D8CEF400C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RQ0wLQsoQ4lj; Mon, 29 Aug 2022 08:01:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 4A9F14048A;
	Mon, 29 Aug 2022 08:01:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4A9F14048A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E9E45C007B;
	Mon, 29 Aug 2022 08:01:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 848E5C002D
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 08:01:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5ED3781852
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 08:01:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5ED3781852
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8iD3aphippLY for <bridge@lists.linux-foundation.org>;
 Mon, 29 Aug 2022 08:01:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46FBE817B5
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 46FBE817B5
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 08:01:22 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 939241884923;
 Mon, 29 Aug 2022 08:01:18 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 6632225032B7;
 Mon, 29 Aug 2022 08:01:18 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 5AE9C9EC0002; Mon, 29 Aug 2022 08:01:18 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Mon, 29 Aug 2022 10:01:18 +0200
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <YwxtVhlPjq+M9QMY@shredder>
References: <20220826114538.705433-1-netdev@kapio-technology.com>
 <20220826114538.705433-7-netdev@kapio-technology.com>
 <YwpgvkojEdytzCAB@shredder>
 <7654860e4d7d43c15d482c6caeb6a773@kapio-technology.com>
 <YwxtVhlPjq+M9QMY@shredder>
User-Agent: Gigahost Webmail
Message-ID: <2967ccc234bb672f5440a4b175b73768@kapio-technology.com>
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

On 2022-08-29 09:40, Ido Schimmel wrote:
> On Sun, Aug 28, 2022 at 02:00:29PM +0200, netdev@kapio-technology.com 
> wrote:
>> On 2022-08-27 20:21, Ido Schimmel wrote:
>> > On Fri, Aug 26, 2022 at 01:45:38PM +0200, Hans Schultz wrote:
>> > > +locked_port_mab()
>> > > +{
>> > > +	RET=0
>> > > +	check_locked_port_support || return 0
>> > > +
>> > > +	ping_do $h1 192.0.2.2
>> > > +	check_err $? "MAB: Ping did not work before locking port"
>> > > +
>> > > +	bridge link set dev $swp1 locked on
>> > > +	bridge link set dev $swp1 learning on
>> >
>> > "locked on learning on" is counter intuitive and IMO very much a
>> > misconfiguration that we should have disallowed when the "locked" option
>> > was introduced. It is my understanding that the only reason we are even
>> > talking about it is because mv88e6xxx needs it for MAB for some reason.
>> 
>> As the way mv88e6xxx implements "learning off" is to remove port 
>> association
>> for ingress packets on a port, but that breaks many other things such 
>> as
>> refreshing ATU entries and violation interrupts, so it is needed and 
>> the
>> question is then what is the worst to have 'learning on' on a locked 
>> port or
>> to have the locked port enabling learning in the driver silently?
>> 
>> Opinions seem to differ. Note that even on locked ports without MAB, 
>> port
>> association on ingress is still needed in future as I have a dynamic 
>> ATU
>> patch set coming, that uses age out violation and hardware refreshing 
>> to let
>> the hardware keep the dynamic entries as long as the authorized 
>> station is
>> sending, but will age the entry out if the station keeps silent for 
>> the
>> ageing time. But that patch set is dependent on this patch set, and I 
>> don't
>> think I can send it before this is accepted...
> 
> Can you explain how you envision user space to work once everything is
> merged? I want to make sure we have the full picture before more stuff
> is merged. From what you describe, I expect the following:
> 
> 1. Create topology, assuming two unauthorized ports:
> 
> # ip link add name br0 type bridge no_linklocal_learn 1 (*)
> # ip link set dev swp1 master br0
> # ip link set dev swp2 master br0
> # bridge link set dev swp1 learning on locked on
> # bridge link set dev swp2 learning on locked on

The final decision on this rests with you I would say. Actually I forgot 
to remove the port association in the driver in this version.

> # ip link set dev swp1 up
> # ip link set dev swp2 up
> # ip link set dev br0 up
> 
> 2. Assuming h1 behind swp1 was authorized using 802.1X:
> 
> # bridge fdb replace $H1_MAC dev swp1 master dynamic

With the new MAB flag 'replace' is not needed when MAB is not enabled.

> 
> 3. Assuming 802.1X authentication failed for h2 behind swp2, enable 
> MAB:
> 
> # bridge link set dev swp2 mab on
> 
> 4. Assuming $H2_MAC is in our allow list:
> 
> # bridge fdb replace $H2_MAC dev swp2 master dynamic
> 
> Learning is on in order to refresh the dynamic entries that user space
> installed.

Yes, port association is needed for those reasons. :-)

> 
> (*) Need to add support for this option in iproute2. Already exposed
> over netlink (see 'IFLA_BR_MULTI_BOOLOPT').

Should I do that in this patch set?
