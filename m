Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 841BD5776D6
	for <lists.bridge@lfdr.de>; Sun, 17 Jul 2022 16:58:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7BA344049C;
	Sun, 17 Jul 2022 14:57:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BA344049C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 721zNsqtLlAN; Sun, 17 Jul 2022 14:57:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id D9F0E403A9;
	Sun, 17 Jul 2022 14:57:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D9F0E403A9
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5DAA4C0078;
	Sun, 17 Jul 2022 14:57:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BF972C002D
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 14:57:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A147240951
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 14:57:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A147240951
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 53lXDSwafF1e for <bridge@lists.linux-foundation.org>;
 Sun, 17 Jul 2022 14:57:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F3424093A
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0F3424093A
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 14:57:53 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 1409A1886609;
 Sun, 17 Jul 2022 14:57:51 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 0A60E25032B8;
 Sun, 17 Jul 2022 14:57:51 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id EA7C7A1E00AF; Sun, 17 Jul 2022 14:57:50 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Sun, 17 Jul 2022 16:57:50 +0200
From: netdev@kapio-technology.com
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20220717135951.ho4raw3bzwlgixpb@skbuf>
References: <20220708091550.2qcu3tyqkhgiudjg@skbuf>
 <e3ea3c0d72c2417430e601a150c7f0dd@kapio-technology.com>
 <20220708115624.rrjzjtidlhcqczjv@skbuf>
 <723e2995314b41ff323272536ef27341@kapio-technology.com>
 <YsqPWK67U0+Iw2Ru@shredder>
 <d3f674dc6b4f92f2fda3601685c78ced@kapio-technology.com>
 <Ys69DiAwT0Md+6ai@shredder>
 <648ba6718813bf76e7b973150b73f028@kapio-technology.com>
 <20220717125718.mj7b3j3jmltu6gm5@skbuf>
 <a6ec816279b282a4ea72252a7400d5b3@kapio-technology.com>
 <20220717135951.ho4raw3bzwlgixpb@skbuf>
User-Agent: Gigahost Webmail
Message-ID: <e1c1e7c114f0226b116d9549cea8e7a9@kapio-technology.com>
X-Sender: netdev@kapio-technology.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, bridge@lists.linux-foundation.org,
 Ido Schimmel <idosch@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 Roopa Prabhu <roopa@nvidia.com>, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, netdev@vger.kernel.org, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
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

On 2022-07-17 15:59, Vladimir Oltean wrote:
> On Sun, Jul 17, 2022 at 03:09:10PM +0200, netdev@kapio-technology.com 
> wrote:
>> On 2022-07-17 14:57, Vladimir Oltean wrote:
>> > On Sun, Jul 17, 2022 at 02:21:47PM +0200, netdev@kapio-technology.com
>> > wrote:
>> > > On 2022-07-13 14:39, Ido Schimmel wrote:
>> > > > On Wed, Jul 13, 2022 at 09:09:58AM +0200, netdev@kapio-technology.com
>> > > > wrote:
>> > >
>> > > >
>> > > > What are "Storm Prevention" and "zero-DPV" FDB entries?
>> > >
>> > > They are both FDB entries that at the HW level drops all packets
>> > > having a
>> > > specific SA, thus using minimum resources.
>> > > (thus the name "Storm Prevention" aka, protection against DOS
>> > > attacks. We
>> > > must remember that we operate with CPU based learning.)
>> >
>> > DPV means Destination Port Vector, and an ATU entry with a DPV of 0
>> > essentially means a FDB entry pointing nowhere, so it will drop the
>> > packet. That's a slight problem with Hans' implementation, the bridge
>> > thinks that the locked FDB entry belongs to port X, but in reality it
>> > matches on all bridged ports (since it matches by FID). FID allocation
>> > in mv88e6xxx is slightly strange, all VLAN-unaware bridge ports,
>> > belonging to any bridge, share the same FID, so the FDB databases are
>> > not exactly isolated from each other.
>> 
>> But if the locked port is vlan aware and has a pvid, it should not 
>> block
>> other ports.
> 
> I don't understand what you want to say by that. It will block all 
> other
> packets with the same MAC SA that are classified to the same FID.
> In case of VLAN-aware bridges, the mv88e6xxx driver allocates a new FID
> for each VID (see mv88e6xxx_atu_new). In other words, if a locked port
> is VLAN-aware and has a pvid, then whatever the PVID may be, all ports
> in that same VLAN are still blocked in the same way.

Maybe I am just trying to understand the problem you are posing, so 
afaics MAC addresses should be unique and having the same MAC address 
behind a locked port and a not-locked port seems like a 
mis-configuration regardless of vlan setup? As the zero-DPV entry only 
blocks the specific SA MAC on a specific vlan, which is behind a locked 
port, there shouldn't be any problem...?

If the host behind a locked port starts sending on another vlan than 
where it got the first locked entry, another locked entry will occur, as 
the locked entries are MAC + vlan.

> 
>> Besides the fid will be zero with vlan unaware afaik, and all with
>> zero fid do not create locked entries.
> 
> If by 0 you mean 1 (MV88E6XXX_FID_BRIDGED), then you are correct: ports
> with FID 0 (MV88E6XXX_FID_STANDALONE) should not create locked FDB
> entries, because they are, well, standalone and not bridged.
> Again I don't exactly see the relevance though.
