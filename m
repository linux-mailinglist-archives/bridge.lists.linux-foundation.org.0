Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCC95910C7
	for <lists.bridge@lfdr.de>; Fri, 12 Aug 2022 14:30:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E6744400D1;
	Fri, 12 Aug 2022 12:29:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E6744400D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4lEdZ6QuNDw2; Fri, 12 Aug 2022 12:29:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 7553040467;
	Fri, 12 Aug 2022 12:29:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7553040467
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 18BA8C007B;
	Fri, 12 Aug 2022 12:29:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8E190C002D
 for <bridge@lists.linux-foundation.org>; Fri, 12 Aug 2022 12:29:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 553176114A
 for <bridge@lists.linux-foundation.org>; Fri, 12 Aug 2022 12:29:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 553176114A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9F4GWrcOpGAN for <bridge@lists.linux-foundation.org>;
 Fri, 12 Aug 2022 12:29:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D52F61142
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4D52F61142
 for <bridge@lists.linux-foundation.org>; Fri, 12 Aug 2022 12:29:52 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 164E11884573;
 Fri, 12 Aug 2022 12:29:49 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 0C00325032BB;
 Fri, 12 Aug 2022 12:29:49 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 0400CA1A004F; Fri, 12 Aug 2022 12:29:48 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Fri, 12 Aug 2022 14:29:48 +0200
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
User-Agent: Gigahost Webmail
Message-ID: <5a4cfc6246f621d006af69d4d1f61ed1@kapio-technology.com>
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

On 2022-08-11 13:28, Ido Schimmel wrote:

>> > I'm talking about roaming, not forwarding. Let's say you have a locked
>> > entry with MAC X pointing to port Y. Now you get a packet with SMAC X
>> > from port Z which is unlocked. Will the FDB entry roam to port Z? I
>> > think it should, but at least in current implementation it seems that
>> > the "locked" flag will not be reset and having locked entries pointing
>> > to an unlocked port looks like a bug.
>> >
>> 

In general I have been thinking that the said setup is a network 
configuration error as I was arguing in an earlier conversation with 
Vladimir. In this setup we must remember that SMAC X becomes DMAC X in 
the return traffic on the open port. But the question arises to me why 
MAC X would be behind the locked port without getting authed while being 
behind an open port too?
In a real life setup, I don't think you would want random hosts behind a 
locked port in the MAB case, but only the hosts you will let through. 
Other hosts should be regarded as intruders.

If we are talking about a station move, then the locked entry will age 
out and MAC X will function normally on the open port after the timeout, 
which was a case that was taken up in earlier discussions.

But I will anyhow do some testing with this 'edge case' (of being behind 
both a locked and an unlocked port) if I may call it so, and see to that 
the offloaded and non-offloaded cases correspond to each other, and will 
work satisfactory.

I think it will be good to have a flag to enable the mac-auth/MAB 
feature, and I suggest just calling the flag 'mab', as it is short.

Otherwise I don't see any major issues with the whole feature as it is.
