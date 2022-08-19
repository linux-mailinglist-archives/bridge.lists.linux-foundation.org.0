Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7BC599BBC
	for <lists.bridge@lfdr.de>; Fri, 19 Aug 2022 14:19:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2528C415CA;
	Fri, 19 Aug 2022 12:19:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2528C415CA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R_AxvvsFyqk1; Fri, 19 Aug 2022 12:19:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id A9523415D0;
	Fri, 19 Aug 2022 12:19:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A9523415D0
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 360B8C0078;
	Fri, 19 Aug 2022 12:19:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5B6DDC002D
 for <bridge@lists.linux-foundation.org>; Fri, 19 Aug 2022 12:19:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2A3DB83E62
 for <bridge@lists.linux-foundation.org>; Fri, 19 Aug 2022 12:19:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A3DB83E62
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jUUHMdRXe8pl for <bridge@lists.linux-foundation.org>;
 Fri, 19 Aug 2022 12:19:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA38E82E19
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CA38E82E19
 for <bridge@lists.linux-foundation.org>; Fri, 19 Aug 2022 12:19:14 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 6AB43188488D;
 Fri, 19 Aug 2022 12:18:34 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id B357F2503313;
 Fri, 19 Aug 2022 12:18:23 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 02302A1A5E40; Fri, 19 Aug 2022 09:51:11 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Fri, 19 Aug 2022 11:51:11 +0200
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <YvkM7UJ0SX+jkts2@shredder>
References: <5a4cfc6246f621d006af69d4d1f61ed1@kapio-technology.com>
 <YvkM7UJ0SX+jkts2@shredder>
User-Agent: Gigahost Webmail
Message-ID: <34dd1318a878494e7ab595f8727c7d7d@kapio-technology.com>
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

On 2022-08-14 16:55, Ido Schimmel wrote:
> On Fri, Aug 12, 2022 at 02:29:48PM +0200, netdev@kapio-technology.com 
> wrote:
>> On 2022-08-11 13:28, Ido Schimmel wrote:
>> 
>> > > > I'm talking about roaming, not forwarding. Let's say you have a locked
>> > > > entry with MAC X pointing to port Y. Now you get a packet with SMAC X
>> > > > from port Z which is unlocked. Will the FDB entry roam to port Z? I
>> > > > think it should, but at least in current implementation it seems that
>> > > > the "locked" flag will not be reset and having locked entries pointing
>> > > > to an unlocked port looks like a bug.

I have made the locked entries sticky in the bridge, so that they don't 
move to other ports.

>> > > >
>> > >
>> 
>> In general I have been thinking that the said setup is a network
>> configuration error as I was arguing in an earlier conversation with
>> Vladimir. In this setup we must remember that SMAC X becomes DMAC X in 
>> the
>> return traffic on the open port. But the question arises to me why MAC 
>> X
>> would be behind the locked port without getting authed while being 
>> behind an
>> open port too?
>> In a real life setup, I don't think you would want random hosts behind 
>> a
>> locked port in the MAB case, but only the hosts you will let through. 
>> Other
>> hosts should be regarded as intruders.
>> 
>> If we are talking about a station move, then the locked entry will age 
>> out
>> and MAC X will function normally on the open port after the timeout, 
>> which
>> was a case that was taken up in earlier discussions.
>> 
>> But I will anyhow do some testing with this 'edge case' (of being 
>> behind
>> both a locked and an unlocked port) if I may call it so, and see to 
>> that the
>> offloaded and non-offloaded cases correspond to each other, and will 
>> work
>> satisfactory.
> 
> It would be best to implement these as additional test cases in the
> current selftest. Then you can easily test with both veth pairs and
> loopbacks and see that the hardware and software data paths behave the
> same.
> 

How many loops would be needed to have a selftest with a HUB and a MAC 
on both a locked and an unlocked port?

>> 
>> I think it will be good to have a flag to enable the mac-auth/MAB 
>> feature,
>> and I suggest just calling the flag 'mab', as it is short.

I have now created the flag to enable Mac-Auth/MAB with iproute2:
bridge link set dev DEV macauth on|off

with the example output from 'bridge -d link show dev DEV' when macauth 
is enabled:
1: ethX: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master br0 state 
forwarding priority 32 cost 19
     hairpin off guard off root_block off fastleave off learning on flood 
off mcast_flood on bcast_flood on mcast_router 1 mcast_to_unicast off 
neigh_suppress off vlan_tunnel off isolated off locked mab on

The flag itself in the code is called BR_PORT_MACAUTH.

> 
> Fine by me, but I'm not sure everyone agrees.
