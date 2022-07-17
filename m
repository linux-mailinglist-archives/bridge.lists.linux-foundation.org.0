Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC6957762B
	for <lists.bridge@lfdr.de>; Sun, 17 Jul 2022 14:34:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C56BB408DD;
	Sun, 17 Jul 2022 12:34:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C56BB408DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jo3KhGJwGAXa; Sun, 17 Jul 2022 12:34:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 2A2F8409D3;
	Sun, 17 Jul 2022 12:34:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A2F8409D3
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C095DC0078;
	Sun, 17 Jul 2022 12:34:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A2F53C002D
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 12:34:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6753441767
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 12:34:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6753441767
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LD2qFt5iVyb8 for <bridge@lists.linux-foundation.org>;
 Sun, 17 Jul 2022 12:34:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76F594171C
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 76F594171C
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 12:34:24 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id B476B1886603;
 Sun, 17 Jul 2022 12:34:22 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id A495425032B7;
 Sun, 17 Jul 2022 12:34:22 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 899B5A1E00AF; Sun, 17 Jul 2022 12:34:22 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Sun, 17 Jul 2022 14:34:22 +0200
From: netdev@kapio-technology.com
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20220717004725.ngix64ou2mz566is@skbuf>
References: <20220707152930.1789437-1-netdev@kapio-technology.com>
 <20220707152930.1789437-6-netdev@kapio-technology.com>
 <20220717004725.ngix64ou2mz566is@skbuf>
User-Agent: Gigahost Webmail
Message-ID: <3918e3d1a8b78dedc14b950ba1eee8d5@kapio-technology.com>
X-Sender: netdev@kapio-technology.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v4 net-next 5/6] net: dsa: mv88e6xxx:
 mac-auth/MAB implementation
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

> 
> In other words, this patch set makes MAB work and breaks everything 
> else.
> I'm willing to investigate exactly what is it that breaks the other
> selftest, but not today. It may be related to the "RTNETLINK answers:
> File exists"
> messages, which themselves come from the commands
> | bridge fdb add 00:01:02:03:04:01 dev lan2 master static
> 
> If I were to randomly guess at almost 4AM in the morning, it has to do 
> with
> "bridge fdb add" rather than the "bridge fdb replace" that's used for
> the MAB selftest. The fact I pointed out a few revisions ago, that MAB
> needs to be opt-in, is now coming back to bite us. Since it's not
> opt-in, the mv88e6xxx driver always creates locked FDB entries, and 
> when
> we try to "bridge fdb add", the kernel says "hey, the FDB entry is
> already there!". Is that it?

Yes, that sounds like a reasonable explanation, as it adds 'ext learned, 
offloaded' entries. If you try and replace the 'add' with 'replace' in 
those tests, does it work?

> 
> As for how to opt into MAB. Hmm. MAB seems to be essentially CPU
> assisted learning, which creates locked FDB entries. I wonder whether 
> we
> should reconsider the position that address learning makes no sense on
> locked ports, and say that "+locked -learning" means no MAB, and
> "+locked +learning" means MAB? This would make a bunch of things more
> natural to handle in the kernel, and would also give us the opt-in we 
> need.

I have done the one and then the other. We need to have some final 
decision on this point. And remember that this gave rise to an extra 
patch to fix link-local learning if learning is turned on on a locked 
port, which resulted in the decision to allways have learning off on 
locked ports.

> 
> 
> 
> Side note, the VTU and ATU member violation printks annoy me so badly.
> They aren't stating something super useful and they're a DoS attack
> vector in itself, even if they're rate limited. I wonder whether we
> could just turn the prints into a set of ethtool counters and call it a 
> day?

Sounds like a good idea to me. :-)
