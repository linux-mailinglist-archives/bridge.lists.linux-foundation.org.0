Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A3656B50D
	for <lists.bridge@lfdr.de>; Fri,  8 Jul 2022 11:06:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 18AE184653;
	Fri,  8 Jul 2022 09:06:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18AE184653
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NKZM1szE4JFV; Fri,  8 Jul 2022 09:06:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 8D5EA84655;
	Fri,  8 Jul 2022 09:06:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D5EA84655
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1EA1AC0078;
	Fri,  8 Jul 2022 09:06:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 92989C002D
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 09:06:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5831E611BC
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 09:06:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5831E611BC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wp2oxr992gtz for <bridge@lists.linux-foundation.org>;
 Fri,  8 Jul 2022 09:06:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C9CA60B58
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1C9CA60B58
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 09:06:27 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id DB73F1887457;
 Fri,  8 Jul 2022 09:06:24 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id D3BF425032B7;
 Fri,  8 Jul 2022 09:06:24 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id CA8D7A1E00AE; Fri,  8 Jul 2022 09:06:24 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Fri, 08 Jul 2022 11:06:24 +0200
From: netdev@kapio-technology.com
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20220708084904.33otb6x256huddps@skbuf>
References: <20220707152930.1789437-1-netdev@kapio-technology.com>
 <20220707152930.1789437-4-netdev@kapio-technology.com>
 <20220708084904.33otb6x256huddps@skbuf>
User-Agent: Gigahost Webmail
Message-ID: <e6f418705e19df370c8d644993aa9a6f@kapio-technology.com>
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

On 2022-07-08 10:49, Vladimir Oltean wrote:
> Hi Hans,
> 
> On Thu, Jul 07, 2022 at 05:29:27PM +0200, Hans Schultz wrote:
>> Ignore locked fdb entries coming in on all drivers.
>> 
>> Signed-off-by: Hans Schultz <netdev@kapio-technology.com>
>> ---
> 
> A good patch should have a reason for the change in the commit message.
> This has no reason because there is no reason.
> 
> Think about it, you've said it yourself in patch 1:
> 
> | Only the kernel can set this FDB entry flag, while userspace can read
> | the flag and remove it by replacing or deleting the FDB entry.
> 
> So if user space will never add locked FDB entries to the bridge,
> then FDB entries with is_locked=true are never transported using
> SWITCHDEV_FDB_ADD_TO_DEVICE to drivers, and so, there is no reason at
> all to pass is_locked to drivers, just for them to ignore something 
> that
> won't appear.

Correct me if I am wrong, but since the bridge can add locked entries, 
and
the ensuring fdb update will create a SWITCHDEV_FDB_ADD_TO_DEVICE, those 
entries
should reach the driver. The policy to ignore those in the driver can be
seen as either the right thing to do, or not yet implemented.

I remember Ido wrote at a point that the scheme they use is to trap 
various
packets to the CPU and let the bridge add the locked entry, which I then
understand is sent to the driver with a SWITCHDEV_FDB_ADD_TO_DEVICE 
event.

> 
> You just need this for SWITCHDEV_FDB_ADD_TO_BRIDGE, so please keep it
> only in those code paths, and remove it from net/dsa/slave.c as well.
> 
>>  drivers/net/dsa/b53/b53_common.c       | 5 +++++
>>  drivers/net/dsa/b53/b53_priv.h         | 1 +
>>  drivers/net/dsa/hirschmann/hellcreek.c | 5 +++++
>>  drivers/net/dsa/lan9303-core.c         | 5 +++++
>>  drivers/net/dsa/lantiq_gswip.c         | 5 +++++
>>  drivers/net/dsa/microchip/ksz9477.c    | 5 +++++
>>  drivers/net/dsa/mt7530.c               | 5 +++++
>>  drivers/net/dsa/mv88e6xxx/chip.c       | 5 +++++
>>  drivers/net/dsa/ocelot/felix.c         | 5 +++++
>>  drivers/net/dsa/qca8k.c                | 5 +++++
>>  drivers/net/dsa/sja1105/sja1105_main.c | 5 +++++
>>  include/net/dsa.h                      | 1 +
>>  net/dsa/switch.c                       | 4 ++--
>>  13 files changed, 54 insertions(+), 2 deletions(-)
