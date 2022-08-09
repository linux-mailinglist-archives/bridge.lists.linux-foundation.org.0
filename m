Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BF358E08B
	for <lists.bridge@lfdr.de>; Tue,  9 Aug 2022 22:01:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A3B9540126;
	Tue,  9 Aug 2022 20:01:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A3B9540126
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xvc0_lUtHqbp; Tue,  9 Aug 2022 20:01:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id DF535400E4;
	Tue,  9 Aug 2022 20:01:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF535400E4
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7AB0BC002D;
	Tue,  9 Aug 2022 20:00:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BDB14C002D
 for <bridge@lists.linux-foundation.org>; Tue,  9 Aug 2022 20:00:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 780C140114
 for <bridge@lists.linux-foundation.org>; Tue,  9 Aug 2022 20:00:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 780C140114
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 17zIsokm7xvw for <bridge@lists.linux-foundation.org>;
 Tue,  9 Aug 2022 20:00:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 17729400E4
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 17729400E4
 for <bridge@lists.linux-foundation.org>; Tue,  9 Aug 2022 20:00:53 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id CA12218849F2;
 Tue,  9 Aug 2022 20:00:49 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id B35F725032B7;
 Tue,  9 Aug 2022 20:00:49 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id A6770A1A0047; Tue,  9 Aug 2022 20:00:49 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Tue, 09 Aug 2022 22:00:49 +0200
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <YvIm+OvXvxbH6POv@shredder>
References: <20220708084904.33otb6x256huddps@skbuf>
 <e6f418705e19df370c8d644993aa9a6f@kapio-technology.com>
 <20220708091550.2qcu3tyqkhgiudjg@skbuf>
 <e3ea3c0d72c2417430e601a150c7f0dd@kapio-technology.com>
 <20220708115624.rrjzjtidlhcqczjv@skbuf>
 <723e2995314b41ff323272536ef27341@kapio-technology.com>
 <YsqPWK67U0+Iw2Ru@shredder>
 <d3f674dc6b4f92f2fda3601685c78ced@kapio-technology.com>
 <Ys69DiAwT0Md+6ai@shredder>
 <79683d9cf122e22b66b5da3bbbb0ee1f@kapio-technology.com>
 <YvIm+OvXvxbH6POv@shredder>
User-Agent: Gigahost Webmail
Message-ID: <6c6fe135ce7b5b118289dc370135b0d3@kapio-technology.com>
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

On 2022-08-09 11:20, Ido Schimmel wrote:
> On Mon, Aug 01, 2022 at 05:33:49PM +0200, netdev@kapio-technology.com 
> wrote:
>> On 2022-07-13 14:39, Ido Schimmel wrote:
>> 
>> >
>> > What are "Storm Prevention" and "zero-DPV" FDB entries?
>> >
>> 
>> For the zero-DPV entries, I can summarize:
>> 
>> Since a CPU can become saturated from constant SA Miss Violations from 
>> a
>> denied source, source MAC address are masked by loading a zero-DPV
>> (Destination Port Vector) entry in the ATU. As the address now appears 
>> in
>> the database it will not cause more Miss Violations. ANY port trying 
>> to send
>> a frame to this unauthorized address is discarded. Any locked port 
>> trying to
>> use this unauthorized address has its frames discarded too (as the 
>> ports SA
>> bit is not set in the ATU entry).
> 
> What happens to unlocked ports that have learning enabled and are 
> trying
> to use this address as SMAC? AFAICT, at least in the bridge driver, the
> locked entry will roam, but will keep the "locked" flag, which is
> probably not what we want. Let's see if we can agree on these semantics
> for a "locked" entry:

The next version of this will block forwarding to locked entries in the 
bridge, so they will behave like the zero-DPV entries.

> 
> 1. It discards packets with matching DMAC, regardless of ingress port. 
> I
> read the document [1] you linked to in a different reply and could not
> find anything against this approach, so this might be fine or at least
> not very significant.
> 
> Note that this means that "locked" entries need to be notified to 
> device
> drivers so that they will install a matching entry in the HW FDB.

Okay, so as V4 does (just without the error noted).

> 
> 2. It is not refreshed and has ageing enabled. That is, after initial
> installation it will be removed by the bridge driver after configured
> ageing time unless converted to a regular (unlocked) entry.
> 
> I assume this allows you to remove the timer implementation from your
> driver and let the bridge driver notify you about the removal of this
> entry.

Okay, but only if the scheme is not so that the driver creates the 
locked entries itself, unless you indicate that the driver notifies the 
bridge, which then notifies back to the driver and installs the zero-DPV 
entry? If not I think the current implementation for the mv88e6xxx is 
fine.

> 
> 3. With regards to roaming, the entry cannot roam between locked ports
> (they need to have learning disabled anyway), but can roam to an
> unlocked port, in which case it becomes a regular entry that can roam
> and age.
> 
> If we agree on these semantics, then I can try to verify that at least
> Spectrum can support them (it seems mv88e6xxx can).

The consensus here is that at least for the mv88e6xxx, learning should 
be on and link local learning should be blocked by the userspace setting 
you pointed to earlier.

> 
> P.S. Sorry for the delay, I'm busy with other tasks at the moment.

I understand :-)

> 
> [1] 
> https://www.cisco.com/c/en/us/td/docs/solutions/Enterprise/Security/TrustSec_1-99/MAB/MAB_Dep_Guide.html#wp392522
