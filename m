Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DDF586BA8
	for <lists.bridge@lfdr.de>; Mon,  1 Aug 2022 15:14:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D641C4048C;
	Mon,  1 Aug 2022 13:14:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D641C4048C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U0fwdOEwlePM; Mon,  1 Aug 2022 13:14:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 4B5DA40488;
	Mon,  1 Aug 2022 13:14:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B5DA40488
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DCBA8C0071;
	Mon,  1 Aug 2022 13:14:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 18408C002D
 for <bridge@lists.linux-foundation.org>; Mon,  1 Aug 2022 13:14:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D67844048C
 for <bridge@lists.linux-foundation.org>; Mon,  1 Aug 2022 13:14:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D67844048C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UUl-u96zGShp for <bridge@lists.linux-foundation.org>;
 Mon,  1 Aug 2022 13:14:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 991B740488
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 991B740488
 for <bridge@lists.linux-foundation.org>; Mon,  1 Aug 2022 13:14:42 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 83E631885393;
 Mon,  1 Aug 2022 13:14:39 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 771CB25032B7;
 Mon,  1 Aug 2022 13:14:39 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 71C6DA1E00B9; Mon,  1 Aug 2022 13:14:39 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Mon, 01 Aug 2022 15:14:39 +0200
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <Yt0ouiEcAHs8AqAA@shredder>
References: <723e2995314b41ff323272536ef27341@kapio-technology.com>
 <YsqPWK67U0+Iw2Ru@shredder>
 <d3f674dc6b4f92f2fda3601685c78ced@kapio-technology.com>
 <Ys69DiAwT0Md+6ai@shredder>
 <648ba6718813bf76e7b973150b73f028@kapio-technology.com>
 <YtQosZV0exwyH6qo@shredder>
 <4500e01ec4e2f34a8bbb58ac9b657a40@kapio-technology.com>
 <20220721115935.5ctsbtoojtoxxubi@skbuf> <YtlUWGdgViyjF6MK@shredder>
 <20220721142001.twcmiyvhvlxmp24j@skbuf> <Yt0ouiEcAHs8AqAA@shredder>
User-Agent: Gigahost Webmail
Message-ID: <2c95ec0a86674c598b5faf6d66410e1f@kapio-technology.com>
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

On 2022-07-24 13:10, Ido Schimmel wrote:
> 
>> In the mv88e6xxx offload implementation, the locked entries eventually
>> age out from time to time, practically giving the true owner of the 
>> MAC
>> address another chance every 5 minutes or so. In the pure software
>> implementation of locked FDB entries I'm not quite sure. It wouldn't
>> make much sense for the behavior to differ significantly though.
> 
> From what I can tell, the same happens in software, but this behavior
> does not really make sense to me. It differs from how other learned
> entries age/roam and can lead to problems such as the one described
> above. It is also not documented anywhere, so I can't tell if it's
> intentional or an oversight. We need to have a good reason for such a
> behavior other than the fact that it appears to conform to the quirks 
> of
> one hardware implementation.
> 
>> 
>> > It seems like the main purpose of these locked entries is to signal to
>> > user space the presence of a certain MAC behind a locked port, but they
>> > should not be able to affect packet forwarding in the bridge, unlike
>> > regular entries.
>> 
>> So essentially what you want is for br_handle_frame_finish() to treat
>> "dst = br_fdb_find_rcu(br, eth_hdr(skb)->h_dest, vid);" as NULL if
>> test_bit(BR_FDB_LOCKED, &dst->flags) is true?
> 
> Yes. It's not clear to me why unauthorized hosts should be given the
> ability to affect packet forwarding in the bridge through these locked
> entries when their primary purpose seems to be notifying user space
> about the presence of the MAC. At the very least this should be
> explained in the commit message, to indicate that some thought went 
> into
> this decision.
> 

I guess you are right that the SW setup locked entries can be used to 
gain uni-directional traffic through a switch, which should really not 
be the case.
In this case I expect the zero-DPV entries to not give this ability, 
which is the correct behaviour with MAB IMHO.

>> 
>> > Regarding a separate knob for MAB, I tend to agree we need it. Otherwise
>> > we cannot control which locked ports are able to populate the FDB with
>> > locked entries. I don't particularly like the fact that we overload an
>> > existing flag ("learning") for that. Any reason not to add an explicit
>> > flag ("mab")? At least with the current implementation, locked entries
>> > cannot roam between locked ports and cannot be refreshed, which differs
>> > from regular learning.
>> 
>> Well, assuming we model the software bridge closer to mv88e6xxx (where
>> locked FDB entries can roam after a certain time), does this change 
>> things?
>> In the software implementation I think it would make sense for them to
>> be able to roam right away (the age-out interval in mv88e6xxx is just 
>> a
>> compromise between responsiveness to roaming and resistance to DoS).
> 
> Exactly. If this is the best that we can do with mv88e6xxx, then so be
> it, but other implementations (software/hardware) do not have the same
> limitations and I don't see a reason to bend them.
> 
> Regarding "learning" vs. "mab" (or something else), the former is a
> well-defined flag available since forever. In 5.18 and 5.19 it can also
> be enabled together with "locked" and packets from an unauthorized host
> (modulo link-local ones) will not populate the FDB. I prefer not to
> change an existing behavior.
> 
> From usability point of view, I think a new flag would be easier to
> explain than explaining that "learning on" behaves like A or B, based 
> on
> whether "locked on" is set. The bridge can also be taught to forbid the
> new flag from being set when "locked" is not set.
> 
> A user space daemon that wants to try 802.1x and fallback to MAB can
> enable both flags or enable "mab" after some timer expires.

With this driver it is not really an option to use +learning for a 
opt-in for MAB. I think locked port should always have -learning before 
locking the port. In fact there is a problem in this implementation with 
MAB if -learning is applied after locking the port, as that will disable 
MAB, but also refresh and all other violation interrupts.
So I guess I need to disable the learning flag to the driver when the 
port is locked, or even from the bridge?
