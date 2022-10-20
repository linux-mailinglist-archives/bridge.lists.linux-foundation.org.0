Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E63606944
	for <lists.bridge@lfdr.de>; Thu, 20 Oct 2022 21:59:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BCF2360D66;
	Thu, 20 Oct 2022 19:59:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BCF2360D66
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zasPLWy8D7Uf; Thu, 20 Oct 2022 19:59:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 3BE066FB2B;
	Thu, 20 Oct 2022 19:59:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3BE066FB2B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D6941C0078;
	Thu, 20 Oct 2022 19:59:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8D835C002D
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 19:59:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6C8CB4038E
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 19:59:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C8CB4038E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AsxTI8wxzTT1 for <bridge@lists.linux-foundation.org>;
 Thu, 20 Oct 2022 19:59:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8EE3F4041C
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8EE3F4041C
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 19:59:05 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 896781884703;
 Thu, 20 Oct 2022 19:59:03 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 6B69E25001FA;
 Thu, 20 Oct 2022 19:59:03 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 62A2E9EC0002; Thu, 20 Oct 2022 19:59:03 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Thu, 20 Oct 2022 21:59:03 +0200
From: netdev@kapio-technology.com
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20221020132538.reirrskemcjwih2m@skbuf>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-11-netdev@kapio-technology.com>
 <20221018165619.134535-11-netdev@kapio-technology.com>
 <20221020132538.reirrskemcjwih2m@skbuf>
User-Agent: Gigahost Webmail
Message-ID: <77c2b6507fd267cefdaf74e53c2bd325@kapio-technology.com>
X-Sender: netdev@kapio-technology.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Joachim Wiberg <troglobit@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Amit Cohen <amcohen@nvidia.com>, Christian Marangi <ansuelsmth@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Schultz <schultz.hans@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 Petr Machata <petrm@nvidia.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Florent Fourcot <florent.fourcot@wifirst.fr>,
 UNGLinuxDriver@microchip.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v8 net-next 10/12] net: dsa: mv88e6xxx:
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

On 2022-10-20 15:25, Vladimir Oltean wrote:
>> +
>> +#include <net/switchdev.h>
>> +#include <linux/list.h>
>> +#include "chip.h"
>> +#include "global1.h"
>> +#include "switchdev.h"
>> +
>> +static void mv88e6xxx_atu_locked_entry_purge(struct 
>> mv88e6xxx_atu_locked_entry *ale,
>> +					     bool notify, bool take_nl_lock)
>> +{
>> +	struct switchdev_notifier_fdb_info info = {
>> +		.addr = ale->mac,
>> +		.vid = ale->vid,
>> +		.locked = true,
>> +		.offloaded = true,
>> +	};
>> +	struct mv88e6xxx_atu_entry entry;
>> +	struct net_device *brport;
>> +	struct dsa_port *dp;
>> +
>> +	entry.portvec = MV88E6XXX_G1_ATU_DATA_PORT_VECTOR_NO_EGRESS;
>> +	entry.state = MV88E6XXX_G1_ATU_DATA_STATE_UC_UNUSED;
>> +	entry.trunk = false;
>> +	ether_addr_copy(entry.mac, ale->mac);
>> +
>> +	mv88e6xxx_reg_lock(ale->chip);
>> +	mv88e6xxx_g1_atu_loadpurge(ale->chip, ale->fid, &entry);
>> +	mv88e6xxx_reg_unlock(ale->chip);
>> +
>> +	dp = dsa_to_port(ale->chip->ds, ale->port);
>> +
>> +	if (notify) {
>> +		if (take_nl_lock)
>> +			rtnl_lock();
> 
> Is this tested with lockdep? I see the function is called with other
> locks held (p->ale_list_lock). Isn't there a lock inversion anywhere?
> Locks always need to be taken in the same order, and rtnl_lock is a
> pretty high level lock, not exactly the kind you could take just like
> that.
> 

I am very sure that there is no lock inversions or double locks taken.
It is only in the clean-up from time-out of driver locked entries that
the nl lock needs to be taken (as the code reveals). In all other
instances, the nl lock is already taken as far as this implementation 
goes.
