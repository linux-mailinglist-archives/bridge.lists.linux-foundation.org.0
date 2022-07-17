Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 700AF57761E
	for <lists.bridge@lfdr.de>; Sun, 17 Jul 2022 14:21:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 49DED41767;
	Sun, 17 Jul 2022 12:21:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49DED41767
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XGG3g9pSbONL; Sun, 17 Jul 2022 12:21:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 72B2E41795;
	Sun, 17 Jul 2022 12:21:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72B2E41795
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2015EC0078;
	Sun, 17 Jul 2022 12:21:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C7F8EC002D
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 12:21:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A133860B89
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 12:21:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A133860B89
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I-I4gL5mJORi for <bridge@lists.linux-foundation.org>;
 Sun, 17 Jul 2022 12:21:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94BCE608F5
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 94BCE608F5
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 12:21:50 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 4C92718858D8;
 Sun, 17 Jul 2022 12:21:47 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 4287225032B7;
 Sun, 17 Jul 2022 12:21:47 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 3C3E9A1E00AE; Sun, 17 Jul 2022 12:21:47 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Sun, 17 Jul 2022 14:21:47 +0200
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <Ys69DiAwT0Md+6ai@shredder>
References: <20220707152930.1789437-1-netdev@kapio-technology.com>
 <20220707152930.1789437-4-netdev@kapio-technology.com>
 <20220708084904.33otb6x256huddps@skbuf>
 <e6f418705e19df370c8d644993aa9a6f@kapio-technology.com>
 <20220708091550.2qcu3tyqkhgiudjg@skbuf>
 <e3ea3c0d72c2417430e601a150c7f0dd@kapio-technology.com>
 <20220708115624.rrjzjtidlhcqczjv@skbuf>
 <723e2995314b41ff323272536ef27341@kapio-technology.com>
 <YsqPWK67U0+Iw2Ru@shredder>
 <d3f674dc6b4f92f2fda3601685c78ced@kapio-technology.com>
 <Ys69DiAwT0Md+6ai@shredder>
User-Agent: Gigahost Webmail
Message-ID: <648ba6718813bf76e7b973150b73f028@kapio-technology.com>
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

On 2022-07-13 14:39, Ido Schimmel wrote:
> On Wed, Jul 13, 2022 at 09:09:58AM +0200, netdev@kapio-technology.com 
> wrote:

> 
> What are "Storm Prevention" and "zero-DPV" FDB entries?

They are both FDB entries that at the HW level drops all packets having 
a specific SA, thus using minimum resources.
(thus the name "Storm Prevention" aka, protection against DOS attacks. 
We must remember that we operate with CPU based learning.)

> 
> There is no decision that I'm aware of. I'm simply trying to understand
> how FDB entries that have 'BR_FDB_ENTRY_LOCKED' set are handled in
> mv88e6xxx and other devices in this class. We have at least three
> different implementations to consolidate:
> 
> 1. The bridge driver, pure software forwarding. The locked entry is
> dynamically created by the bridge. Packets received via the locked port
> with a SA corresponding to the locked entry will be dropped, but will
> refresh the entry. On the other hand, packets with a DA corresponding 
> to
> the locked entry will be forwarded as known unicast through the locked
> port.
> 
> 2. Hardware implementations like Spectrum that can be programmed to 
> trap
> packets that incurred an FDB miss. Like in the first case, the locked
> entry is dynamically created by the bridge driver and also aged by it.
> Unlike in the first case, since this entry is not present in hardware,
> packets with a DA corresponding to the locked entry will be flooded as
> unknown unicast.
> 
> 3. Hardware implementations like mv88e6xxx that fire an interrupt upon
> FDB miss. Need your help to understand how the above works there and
> why. Specifically, how locked entries are represented in hardware (if 
> at
> all) and what is the significance of not installing corresponding
> entries in hardware.
> 

With the mv88e6xxx, a miss violation with the SA occurs when there is no 
entry. If you then add a normal entry with the SA, the port is open for 
that SA of course. The zero-DPV entry is an entry that ensures that 
there is no more miss violation interrupts from that SA, while dropping 
all entries with the SA.

