Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B67602E74
	for <lists.bridge@lfdr.de>; Tue, 18 Oct 2022 16:29:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D369E83381;
	Tue, 18 Oct 2022 14:29:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D369E83381
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qEkkLQ9tWfOg; Tue, 18 Oct 2022 14:29:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 5E38F8336D;
	Tue, 18 Oct 2022 14:29:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E38F8336D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 06B6BC007C;
	Tue, 18 Oct 2022 14:29:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 69D86C002D
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 14:29:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4F15883339
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 14:29:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4F15883339
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MqGVzRYphpyI for <bridge@lists.linux-foundation.org>;
 Tue, 18 Oct 2022 14:29:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85D5783337
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 85D5783337
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 14:29:07 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 8DDEA18839FE;
 Tue, 18 Oct 2022 14:29:05 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 77D5B25001FA;
 Tue, 18 Oct 2022 14:29:05 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 487C69EC0005; Tue, 18 Oct 2022 14:29:05 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Tue, 18 Oct 2022 16:29:05 +0200
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <Y0gbVoeV/e6wzlbM@shredder>
References: <20221009174052.1927483-1-netdev@kapio-technology.com>
 <20221009174052.1927483-4-netdev@kapio-technology.com>
 <Y0gbVoeV/e6wzlbM@shredder>
User-Agent: Gigahost Webmail
Message-ID: <3246a8d773146f0cbe39dd8ec182efaf@kapio-technology.com>
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
 Daniel Borkmann <daniel@iogearbox.net>,
 Florent Fourcot <florent.fourcot@wifirst.fr>,
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
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Vladimir Oltean <olteanv@gmail.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v7 net-next 3/9] net: switchdev: add support
 for offloading of the FDB locked flag
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

On 2022-10-13 16:06, Ido Schimmel wrote:
> On Sun, Oct 09, 2022 at 07:40:46PM +0200, Hans J. Schultz wrote:
>> Add support for offloading of the MAB/MacAuth feature flag and the FDB
>> locked flag which is used by the Mac-Auth/MAB feature.
>> 
>> Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
>> ---
>>  include/net/dsa.h         |  2 ++
>>  include/net/switchdev.h   |  1 +
>>  net/bridge/br.c           |  4 ++--
>>  net/bridge/br_fdb.c       | 12 ++++++++++--
>>  net/bridge/br_private.h   |  2 +-
>>  net/bridge/br_switchdev.c |  3 ++-
>>  net/dsa/dsa_priv.h        |  6 ++++--
>>  net/dsa/port.c            | 10 ++++++----
>>  net/dsa/slave.c           | 10 ++++++++--
>>  net/dsa/switch.c          | 16 ++++++++--------
>>  10 files changed, 44 insertions(+), 22 deletions(-)
> 
> There is more than one logical change here. I suggest splitting it to
> make review easier:
> 
> 1. A patch allowing the bridge driver to install locked entries 
> notified
> from device drivers. These changes:
> 
> include/net/switchdev.h   |  1 +
> net/bridge/br.c           |  4 ++--
> net/bridge/br_fdb.c       | 12 ++++++++++--
> net/bridge/br_private.h   |  2 +-
> 
> And the br_switchdev_fdb_populate() hunk
> 
> 2. A patch allowing DSA core to report locked entries to the bridge
> driver

2. This requires no code in the DSA layer as the bridge listens directly 
to the
kernel switchdev notifications.

> 
> 3. A patch adding the new MAB flag to BR_PORT_FLAGS_HW_OFFLOAD
> 
> 4. A patch allowing DSA core to propagate the MAB flag to device 
> drivers
> 
> [...]
> 
>> diff --git a/net/dsa/port.c b/net/dsa/port.c
>> index e4a0513816bb..eab32b7a945a 100644
>> --- a/net/dsa/port.c
>> +++ b/net/dsa/port.c
>> @@ -304,7 +304,7 @@ static int dsa_port_inherit_brport_flags(struct 
>> dsa_port *dp,
>>  					 struct netlink_ext_ack *extack)
>>  {
>>  	const unsigned long mask = BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD |
>> -				   BR_BCAST_FLOOD | BR_PORT_LOCKED;
>> +				   BR_BCAST_FLOOD;
> 
> Not sure how this is related to the patchset.
> 
>>  	struct net_device *brport_dev = dsa_port_to_bridge_port(dp);
>>  	int flag, err;
