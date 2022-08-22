Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACB259BA96
	for <lists.bridge@lfdr.de>; Mon, 22 Aug 2022 09:49:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E56C860BC7;
	Mon, 22 Aug 2022 07:49:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E56C860BC7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a0MNDYHixwX9; Mon, 22 Aug 2022 07:49:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 7782860BEF;
	Mon, 22 Aug 2022 07:49:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7782860BEF
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1ABACC007B;
	Mon, 22 Aug 2022 07:49:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4BD01C002D
 for <bridge@lists.linux-foundation.org>; Mon, 22 Aug 2022 07:49:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 24AB5409A2
 for <bridge@lists.linux-foundation.org>; Mon, 22 Aug 2022 07:49:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 24AB5409A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3_PXq8QH4e93 for <bridge@lists.linux-foundation.org>;
 Mon, 22 Aug 2022 07:49:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A89DF40999
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A89DF40999
 for <bridge@lists.linux-foundation.org>; Mon, 22 Aug 2022 07:49:32 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id F28C81884643;
 Mon, 22 Aug 2022 07:49:28 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id E1D1E25032B7;
 Mon, 22 Aug 2022 07:49:28 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id BB1D4A1A0048; Mon, 22 Aug 2022 07:49:28 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Mon, 22 Aug 2022 09:49:28 +0200
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <YwMW4iGccDu6jpaZ@shredder>
References: <5a4cfc6246f621d006af69d4d1f61ed1@kapio-technology.com>
 <YvkM7UJ0SX+jkts2@shredder>
 <34dd1318a878494e7ab595f8727c7d7d@kapio-technology.com>
 <YwHZ1J9DZW00aJDU@shredder>
 <ce4266571b2b47ae8d56bd1f790cb82a@kapio-technology.com>
 <YwMW4iGccDu6jpaZ@shredder>
User-Agent: Gigahost Webmail
Message-ID: <c2822d6dd66a1239ff8b7bfd06019008@kapio-technology.com>
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

On 2022-08-22 07:40, Ido Schimmel wrote:
> On Sun, Aug 21, 2022 at 03:43:04PM +0200, netdev@kapio-technology.com 
> wrote:
> 
> I personally think that the mv88e6xxx semantics are very weird (e.g., 
> no
> roaming, traffic blackhole) and I don't want them to determine how the
> feature works in the pure software bridge or other hardware
> implementations. On the other hand, I understand your constraints and I
> don't want to create a situation where user space is unable to
> understand how the data path works from the bridge FDB dump with
> mv88e6xxx.
> 
> My suggestion is to have mv88e6xxx report the "locked" entry to the
> bridge driver with additional flags that describe its behavior in terms
> of roaming, ageing and forwarding.
> 
> In terms of roaming, since in mv88e6xxx the entry can't roam you should
> report the entry with the "sticky" flag.

As I am not familiar with roaming in this context, I need to know how 
the SW bridge should behave in this case. In this I am assuming that 
roaming is regarding unauthorized entries.
In this case, is the roaming only between locked ports or does the 
roaming include that the entry can move to a unlocked port, resulting in 
the locked flag getting removed?

> In terms of ageing, since
> mv88e6xxx is the one doing the ageing and not the bridge driver, report
> the entry with the "extern_learn" flag.

Just for the record, I see that entries coming from the driver to the 
bridge will always have the "extern learn" flag set as can be seen from 
the SWITCHDEV_FDB_ADD_TO_BRIDGE events handling in br_switchdev_event() 
in br.c, which I think is the correct behavior.

> In terms of forwarding, in
> mv88e6xxx the entry discards all matching packets. We can introduce a
> new FDB flag that instructs the entry to silently discard all matching
> packets. Like we have with blackhole routes and nexthops.

Any suggestions to the name of this flag?

> 
> I believe that the above suggestion allows you to fully describe how
> these entries work in mv88e6xxx while keeping the bridge driver in sync
> with complete visibility towards user space.
> 
> It also frees the pure software implementation from the constraints of
> mv88e6xxx, allowing "locked" entries to behave like any other
> dynamically learned entries modulo the fact that they cannot "unlock" a
> locked port.
> 
> Yes, it does mean that user space will get a bit different behavior 
> with
> mv88e6xxx compared to a pure software solution, but a) It's only the
> corner cases that act a bit differently. As a whole, the feature works
> largely the same. b) User space has complete visibility to understand
> the behavior of the offloaded data path.
> 

>> 
>> I will change it in iproute2 to:
>> bridge link set dev DEV mab on|off
> 
> And s/BR_PORT_MACAUTH/BR_PORT_MAB/ ?

Sure, I will do that. :-)
