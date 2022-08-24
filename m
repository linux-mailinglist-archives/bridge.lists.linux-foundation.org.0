Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAA65A02B9
	for <lists.bridge@lfdr.de>; Wed, 24 Aug 2022 22:29:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 350E4828DE;
	Wed, 24 Aug 2022 20:29:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 350E4828DE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VAlepO0jXMyB; Wed, 24 Aug 2022 20:29:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id C52A58290B;
	Wed, 24 Aug 2022 20:29:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C52A58290B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6C539C0078;
	Wed, 24 Aug 2022 20:29:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B90FFC002D
 for <bridge@lists.linux-foundation.org>; Wed, 24 Aug 2022 20:29:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8B7FB417C3
 for <bridge@lists.linux-foundation.org>; Wed, 24 Aug 2022 20:29:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B7FB417C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ujSHIXrNK8s8 for <bridge@lists.linux-foundation.org>;
 Wed, 24 Aug 2022 20:29:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8332F417B8
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8332F417B8
 for <bridge@lists.linux-foundation.org>; Wed, 24 Aug 2022 20:29:24 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id C7A9E188444D;
 Wed, 24 Aug 2022 20:29:20 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id BEA8025032B7;
 Wed, 24 Aug 2022 20:29:20 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id B7D589EC0004; Wed, 24 Aug 2022 20:29:20 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Wed, 24 Aug 2022 22:29:20 +0200
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <YwHZ1J9DZW00aJDU@shredder>
References: <5a4cfc6246f621d006af69d4d1f61ed1@kapio-technology.com>
 <YvkM7UJ0SX+jkts2@shredder>
 <34dd1318a878494e7ab595f8727c7d7d@kapio-technology.com>
 <YwHZ1J9DZW00aJDU@shredder>
User-Agent: Gigahost Webmail
Message-ID: <7016ed2ce9a30537e4278e37878900d8@kapio-technology.com>
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
> 
> I assume you want a hub to simulate multiple MACs behind the same port.
> You don't need a hub for that. You can set the MAC using mausezahn. See
> '-a' option:
> 
> "
>    -a <src-mac|keyword>
>        Use specified source MAC address with hexadecimal notation such
> as 00:00:aa:bb:cc:dd.  By default the interface MAC address will be
> used. The  keywords  ''rand''
>        and  ''own''  refer to a random MAC address (only unicast
> addresses are created) and the own address, respectively. You can also
> use the keywords mentioned below
>        although broadcast-type source addresses are officially invalid.
> "
> 


Ido, I am not so known to the selftests, so I am wondering why I don't 
see either check_err or check_fail fail, whichever I use, when I think 
they should and then they are not really checking...


         local mac=10:20:30:30:20:10


         $MZ $h1 -t udp -a $mac -b rand
         bridge fdb show dev $swp1 | grep -q "$mac vlan 1 master br0 
locked"
         check_err $? "MAB station move: no locked entry on first 
injection"

         $MZ $h2 -t udp -a $mac -b rand
         bridge fdb show dev $swp1 | grep -q "$mac vlan 1 master br0 
locked"
         check_err $? "MAB station move: locked entry did not move"

What is wrong here?

For a mv88e6xxx test I guess I can make a check to verify that this 
driver is in use?
