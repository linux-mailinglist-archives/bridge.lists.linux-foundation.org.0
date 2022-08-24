Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D28359F3EE
	for <lists.bridge@lfdr.de>; Wed, 24 Aug 2022 09:07:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C2FCD81394;
	Wed, 24 Aug 2022 07:07:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2FCD81394
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o-vh5CM4DlGd; Wed, 24 Aug 2022 07:07:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 585E08132E;
	Wed, 24 Aug 2022 07:07:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 585E08132E
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E51BFC0078;
	Wed, 24 Aug 2022 07:07:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5EAC5C002D
 for <bridge@lists.linux-foundation.org>; Wed, 24 Aug 2022 07:07:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 32A174055D
 for <bridge@lists.linux-foundation.org>; Wed, 24 Aug 2022 07:07:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32A174055D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9MwXZmEKcS2R for <bridge@lists.linux-foundation.org>;
 Wed, 24 Aug 2022 07:07:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD63740544
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AD63740544
 for <bridge@lists.linux-foundation.org>; Wed, 24 Aug 2022 07:07:28 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 84B0B1884C76;
 Wed, 24 Aug 2022 07:07:23 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 6880E25032B8;
 Wed, 24 Aug 2022 07:07:23 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 5802FA1A0052; Wed, 24 Aug 2022 07:07:23 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Wed, 24 Aug 2022 09:07:23 +0200
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <YwTJ5f5RzkC/DSdi@shredder>
References: <YvkM7UJ0SX+jkts2@shredder>
 <34dd1318a878494e7ab595f8727c7d7d@kapio-technology.com>
 <YwHZ1J9DZW00aJDU@shredder>
 <ce4266571b2b47ae8d56bd1f790cb82a@kapio-technology.com>
 <YwMW4iGccDu6jpaZ@shredder>
 <c2822d6dd66a1239ff8b7bfd06019008@kapio-technology.com>
 <YwR4MQ2xOMlvKocw@shredder>
 <9dcb4db4a77811308c56fe5b9b7c5257@kapio-technology.com>
 <YwSAtgS7fgHNLMEy@shredder>
 <553c573ad6a2ddfccfc47c7847cc5fb7@kapio-technology.com>
 <YwTJ5f5RzkC/DSdi@shredder>
User-Agent: Gigahost Webmail
Message-ID: <5390cb1d1485db40a71bb3fbf674b67a@kapio-technology.com>
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

On 2022-08-23 14:36, Ido Schimmel wrote:
> On Tue, Aug 23, 2022 at 09:37:54AM +0200, netdev@kapio-technology.com 
> wrote:
> 
> "learning on locked on" is really a misconfiguration, but it can also
> happen today and entries do not roam with the "locked" flag for the
> simple reason that it does not exist. I see two options:
> 
> 1. Do not clear / set "locked" flag during roaming. Given learning
> should be disabled on locked ports, then the only half interesting case
> is roaming to an unlocked port. Keeping the "locked" flag basically
> means "if you were to lock the port, then the presence of this entry is
> not enough to let traffic with the SA be forwarded by the bridge".
> Unlikely that anyone will do that.
> 
> 2. Always set "locked" flag for learned entries (new & roamed) on 
> locked
> ports and clear it for learned entries on unlocked ports.
> 
> Both options are consistent in how they treat the "locked" flag (either
> always do nothing or always set/clear) and both do not impact the
> integrity of the solution when configured correctly (disabling learning
> on locked ports). I guess users will find option 2 easier to understand
> / work with.

Roaming to a locked port with an entry without the locked bit set would 
open the port for said MAC without necessary authorization. Thus I think 
that the only real option is the 2. case.
