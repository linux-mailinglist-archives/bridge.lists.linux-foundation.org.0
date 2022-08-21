Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A25D959B409
	for <lists.bridge@lfdr.de>; Sun, 21 Aug 2022 15:43:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C48B6402D7;
	Sun, 21 Aug 2022 13:43:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C48B6402D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HkBwMJLU9iJ4; Sun, 21 Aug 2022 13:43:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id A1742402DD;
	Sun, 21 Aug 2022 13:43:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1742402DD
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0D76CC007B;
	Sun, 21 Aug 2022 13:43:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 89E0AC002D
 for <bridge@lists.linux-foundation.org>; Sun, 21 Aug 2022 13:43:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 52536403C4
 for <bridge@lists.linux-foundation.org>; Sun, 21 Aug 2022 13:43:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 52536403C4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bRBmYvnv-W4J for <bridge@lists.linux-foundation.org>;
 Sun, 21 Aug 2022 13:43:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C451400BB
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5C451400BB
 for <bridge@lists.linux-foundation.org>; Sun, 21 Aug 2022 13:43:07 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id EE37018846D4;
 Sun, 21 Aug 2022 13:43:04 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id E76D125032B7;
 Sun, 21 Aug 2022 13:43:04 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id DC96FA1A004D; Sun, 21 Aug 2022 13:43:04 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Sun, 21 Aug 2022 15:43:04 +0200
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <YwHZ1J9DZW00aJDU@shredder>
References: <5a4cfc6246f621d006af69d4d1f61ed1@kapio-technology.com>
 <YvkM7UJ0SX+jkts2@shredder>
 <34dd1318a878494e7ab595f8727c7d7d@kapio-technology.com>
 <YwHZ1J9DZW00aJDU@shredder>
User-Agent: Gigahost Webmail
Message-ID: <ce4266571b2b47ae8d56bd1f790cb82a@kapio-technology.com>
X-Sender: netdev@kapio-technology.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v4 net-next 3/6] drivers: net: dsa: add locked
 fdb entry flag to drivers
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

On 2022-08-21 09:08, Ido Schimmel wrote:
> On Fri, Aug 19, 2022 at 11:51:11AM +0200, netdev@kapio-technology.com 
> wrote:
>> On 2022-08-14 16:55, Ido Schimmel wrote:
>> > On Fri, Aug 12, 2022 at 02:29:48PM +0200, netdev@kapio-technology.com
>> > wrote:
>> > > On 2022-08-11 13:28, Ido Schimmel wrote:
>> > >
>> > > > > > I'm talking about roaming, not forwarding. Let's say you have a locked
>> > > > > > entry with MAC X pointing to port Y. Now you get a packet with SMAC X
>> > > > > > from port Z which is unlocked. Will the FDB entry roam to port Z? I
>> > > > > > think it should, but at least in current implementation it seems that
>> > > > > > the "locked" flag will not be reset and having locked entries pointing
>> > > > > > to an unlocked port looks like a bug.
>> 
>> I have made the locked entries sticky in the bridge, so that they 
>> don't move
>> to other ports.
> 
> Please make sure that this design choice is explained in the commit
> message. To be clear, it cannot be "this is how device X happens to
> work".
> 

The real issue I think is that the locked entry should mask the MAC 
address involved (as the description I gave for zero-DPV entries and 
actually also storm prevention entries ensure), so that there is no 
forwarding to the address on any port, otherwise it will allow one-way 
traffic to a host that is not trusted. Thus flooding of unknown unicast 
on a locked port should of course be disabled ('flood off'), so that 
there is no way of sending to an unauthorized silent host behind the 
locked port.

The issue with the locked entry appearing on another SW bridge port from 
where it originated, I think is more of a cosmetic bug, though I could 
be mistaken. But adding the sticky flag to locked entries ensures that 
they do not move to another port.

This of course does that instant roaming is not possible, but I think 
that the right approach is to use the ageing out of entries to allow the 
station move/roaming.

The case of unwanted traffic to a MAC behind a locked port with a locked 
entry is what I would regard as more worthy of a selftest. The sticky 
flag I know will ensure that the locked entries do not move to other 
ports, and since it is only in the bridge this can be tested (e.g. using 
'bridge fdb show dev DEV'), I think that the test would be superfluos. 
What do you think of that and my other consideration for a test?


>> I have now created the flag to enable Mac-Auth/MAB with iproute2:
>> bridge link set dev DEV macauth on|off
> 
> You have 'macauth' here, but 'mab' in the output below. They need to
> match. I prefer the latter unless you have a good reason to use
> 'macauth'.
> 
>> 
>> with the example output from 'bridge -d link show dev DEV' when 
>> macauth is
>> enabled:
>> 1: ethX: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master br0 state
>> forwarding priority 32 cost 19
>>     hairpin off guard off root_block off fastleave off learning on 
>> flood off
>> mcast_flood on bcast_flood on mcast_router 1 mcast_to_unicast off
>> neigh_suppress off vlan_tunnel off isolated off locked mab on
>> 
>> The flag itself in the code is called BR_PORT_MACAUTH.
>> 
>> >
>> > Fine by me, but I'm not sure everyone agrees.

I will change it in iproute2 to:
bridge link set dev DEV mab on|off
