Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D44CA59D24D
	for <lists.bridge@lfdr.de>; Tue, 23 Aug 2022 09:38:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C8AF408F2;
	Tue, 23 Aug 2022 07:38:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C8AF408F2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wlt5LShFDj8v; Tue, 23 Aug 2022 07:38:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 99EB5408FD;
	Tue, 23 Aug 2022 07:38:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99EB5408FD
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3D87AC007B;
	Tue, 23 Aug 2022 07:38:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E65B5C002D
 for <bridge@lists.linux-foundation.org>; Tue, 23 Aug 2022 07:37:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CC5DE408FC
 for <bridge@lists.linux-foundation.org>; Tue, 23 Aug 2022 07:37:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CC5DE408FC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ShialDg4HIYV for <bridge@lists.linux-foundation.org>;
 Tue, 23 Aug 2022 07:37:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A3C41408F2
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A3C41408F2
 for <bridge@lists.linux-foundation.org>; Tue, 23 Aug 2022 07:37:56 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id B7DBF1884AE4;
 Tue, 23 Aug 2022 07:37:54 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id AE68E25032BA;
 Tue, 23 Aug 2022 07:37:54 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 86C83A1A0060; Tue, 23 Aug 2022 07:37:54 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Tue, 23 Aug 2022 09:37:54 +0200
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <YwSAtgS7fgHNLMEy@shredder>
References: <5a4cfc6246f621d006af69d4d1f61ed1@kapio-technology.com>
 <YvkM7UJ0SX+jkts2@shredder>
 <34dd1318a878494e7ab595f8727c7d7d@kapio-technology.com>
 <YwHZ1J9DZW00aJDU@shredder>
 <ce4266571b2b47ae8d56bd1f790cb82a@kapio-technology.com>
 <YwMW4iGccDu6jpaZ@shredder>
 <c2822d6dd66a1239ff8b7bfd06019008@kapio-technology.com>
 <YwR4MQ2xOMlvKocw@shredder>
 <9dcb4db4a77811308c56fe5b9b7c5257@kapio-technology.com>
 <YwSAtgS7fgHNLMEy@shredder>
User-Agent: Gigahost Webmail
Message-ID: <553c573ad6a2ddfccfc47c7847cc5fb7@kapio-technology.com>
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

On 2022-08-23 09:24, Ido Schimmel wrote:
> On Tue, Aug 23, 2022 at 09:13:54AM +0200, netdev@kapio-technology.com 
> wrote:
>> On 2022-08-23 08:48, Ido Schimmel wrote:
>> > On Mon, Aug 22, 2022 at 09:49:28AM +0200, netdev@kapio-technology.com
>> > wrote:
>> 
>> > > As I am not familiar with roaming in this context, I need to know
>> > > how the SW
>> > > bridge should behave in this case.
>> >
>> 
>> > > In this case, is the roaming only between locked ports or does the
>> > > roaming include that the entry can move to a unlocked port, resulting
>> > > in the locked flag getting removed?
>> >
>> > Any two ports. If the "locked" entry in mv88e6xxx cannot move once
>> > installed, then the "sticky" flag accurately describes it.
>> >
>> 
>> But since I am also doing the SW bridge implementation without 
>> mv88e6xxx I
>> need it to function according to needs.
>> Thus the locked entries created in the bridge I shall not put the 
>> sticky
>> flag on, but there will be the situation where a locked entry can move 
>> to an
>> unlocked port, which we regarded as a bug.
> 
> I do not regard this as a bug. It makes sense to me that an authorized
> port can cause an entry pointing to an unauthorized port to roam to
> itself. Just like normal learned entries. What I considered as a bug is
> the fact that the "locked" flag is not cleared when roaming to an
> authorized port.
> 
>> In that case there is two possibilities, the locked entry can move to
>> an unlocked port with the locked flag being removed or the locked
>> entry can only move to another locked port?
> 
> My suggestion is to allow roaming and maintain / clear the "locked" 
> flag
> based on whether the new destination port is locked or not.

Thus I understand it as saying that the "locked" flag can also be set 
when roaming from an unlocked port to a locked port?
