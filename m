Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 839895A0DE1
	for <lists.bridge@lfdr.de>; Thu, 25 Aug 2022 12:27:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6FC6B40C42;
	Thu, 25 Aug 2022 10:27:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6FC6B40C42
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5eU2wiJIweO1; Thu, 25 Aug 2022 10:27:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 0278440C3F;
	Thu, 25 Aug 2022 10:27:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0278440C3F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 974A6C007C;
	Thu, 25 Aug 2022 10:27:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AF9EEC002D
 for <bridge@lists.linux-foundation.org>; Thu, 25 Aug 2022 10:27:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CAEDA60E46
 for <bridge@lists.linux-foundation.org>; Thu, 25 Aug 2022 10:27:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CAEDA60E46
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QSRG8c0BkSVP for <bridge@lists.linux-foundation.org>;
 Thu, 25 Aug 2022 10:27:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B18C760C2C
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B18C760C2C
 for <bridge@lists.linux-foundation.org>; Thu, 25 Aug 2022 10:27:04 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 4C64118849A5;
 Thu, 25 Aug 2022 10:27:01 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 35EB525032B7;
 Thu, 25 Aug 2022 10:27:01 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 2BD179EC0003; Thu, 25 Aug 2022 10:27:01 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Thu, 25 Aug 2022 12:27:01 +0200
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <Ywc/qTNqVbS4E7zS@shredder>
References: <5a4cfc6246f621d006af69d4d1f61ed1@kapio-technology.com>
 <YvkM7UJ0SX+jkts2@shredder>
 <34dd1318a878494e7ab595f8727c7d7d@kapio-technology.com>
 <YwHZ1J9DZW00aJDU@shredder>
 <7016ed2ce9a30537e4278e37878900d8@kapio-technology.com>
 <Ywc/qTNqVbS4E7zS@shredder>
User-Agent: Gigahost Webmail
Message-ID: <7dfe15571370dfb5348a3d0e5478f62c@kapio-technology.com>
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

On 2022-08-25 11:23, Ido Schimmel wrote:
>> 
>> 
>> Ido, I am not so known to the selftests, so I am wondering why I don't 
>> see
>> either check_err or check_fail fail, whichever I use, when I think 
>> they
>> should and then they are not really checking...
>> 
>> 
>>         local mac=10:20:30:30:20:10
>> 
>> 
>>         $MZ $h1 -t udp -a $mac -b rand
>>         bridge fdb show dev $swp1 | grep -q "$mac vlan 1 master br0 
>> locked"
>>         check_err $? "MAB station move: no locked entry on first 
>> injection"
>> 
>>         $MZ $h2 -t udp -a $mac -b rand
>>         bridge fdb show dev $swp1 | grep -q "$mac vlan 1 master br0 
>> locked"
>>         check_err $? "MAB station move: locked entry did not move"
>> 
>> What is wrong here?
> 
> Did you try adding a sleep between mausezahn and the FDB dump? At least
> that is what learning_test() is doing. It is possible that the packet 
> is
> not sent / processed fast enough for the bridge to learn it before the
> dump.
> 

I missed the call to log_test at the end of the test.

>> 
>> For a mv88e6xxx test I guess I can make a check to verify that this 
>> driver
>> is in use?
> 
> Not in a generic forwarding test. Maybe in
> tools/testing/selftests/drivers/net/dsa/
> 
> My preference would be to get as much tests as possible in
> tools/testing/selftests/net/forwarding/bridge_locked_port.sh.

I now have a roaming test in 
tools/testing/selftests/net/forwarding/bridge_locked_port.sh, but it 
will not pass with mv88e6xxx as it is meant for the SW bridge.

I can check if the sticky flag is set on the locked entry and then skip 
the test if it is.

The bridge_locked_port.sh test is linked in 
tools/testing/selftests/drivers/net/dsa/, but if I cannot check if the 
mv88e6xxx driver or other switchcores are in use, I cannot do more.

> 
> I'm not sure which tests you are planning for mv88e6xxx, but we can 
> pass
> / fail test cases based on the flags we observe in the FDB dump. For
> example, if the entry has the "sticky" flag, then the expectation is
> that the roaming test will fail. Otherwise, it should pass.
