Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECC3672B60
	for <lists.bridge@lfdr.de>; Wed, 18 Jan 2023 23:35:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC3CC820B1;
	Wed, 18 Jan 2023 22:35:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC3CC820B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ISZU_UPM4Huv; Wed, 18 Jan 2023 22:35:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 5C99D820C1;
	Wed, 18 Jan 2023 22:35:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C99D820C1
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F1E65C0078;
	Wed, 18 Jan 2023 22:35:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 41C9BC002D
 for <bridge@lists.linux-foundation.org>; Wed, 18 Jan 2023 22:35:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2334A610AD
 for <bridge@lists.linux-foundation.org>; Wed, 18 Jan 2023 22:35:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2334A610AD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EB1SXn_dMjUv for <bridge@lists.linux-foundation.org>;
 Wed, 18 Jan 2023 22:35:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 48A7660E71
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 48A7660E71
 for <bridge@lists.linux-foundation.org>; Wed, 18 Jan 2023 22:35:11 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 3957518839F7;
 Wed, 18 Jan 2023 22:35:09 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id D5A7B25003AB;
 Wed, 18 Jan 2023 22:35:08 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id BD31391201E4; Wed, 18 Jan 2023 22:35:08 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Wed, 18 Jan 2023 23:35:08 +0100
From: netdev@kapio-technology.com
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20230117231750.r5jr4hwvpadgopmf@skbuf>
References: <20230117185714.3058453-1-netdev@kapio-technology.com>
 <20230117185714.3058453-3-netdev@kapio-technology.com>
 <20230117231750.r5jr4hwvpadgopmf@skbuf>
User-Agent: Gigahost Webmail
Message-ID: <e4acb7edb300d41a9459890133b928b4@kapio-technology.com>
X-Sender: netdev@kapio-technology.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Russell King <linux@armlinux.org.uk>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 =?UTF-8?Q?Cl=C3=A9ment_L=C3=A9ger?= <clement.leger@bootlin.com>,
 Christian Marangi <ansuelsmth@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, netdev@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET
 SWITCH DRIVER" <UNGLinuxDriver@microchip.com>, "open list:RENESAS RZ/N1
 A5PSW SWITCH DRIVER" <linux-renesas-soc@vger.kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [RFC PATCH net-next 2/5] net: dsa: propagate flags
 down towards drivers
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

On 2023-01-18 00:17, Vladimir Oltean wrote:
> On Tue, Jan 17, 2023 at 07:57:11PM +0100, Hans J. Schultz wrote:
>> Dynamic FDB flag needs to be propagated through the DSA layer to be
>> added to drivers.
>> Use a u16 for fdb flags for future use, so that other flags can also 
>> be
>> sent the same way without having to change function interfaces.
>> 
>> Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
>> ---
>> @@ -3364,6 +3368,7 @@ static int dsa_slave_fdb_event(struct net_device 
>> *dev,
>>  	struct dsa_port *dp = dsa_slave_to_port(dev);
>>  	bool host_addr = fdb_info->is_local;
>>  	struct dsa_switch *ds = dp->ds;
>> +	u16 fdb_flags = 0;
>> 
>>  	if (ctx && ctx != dp)
>>  		return 0;
>> @@ -3410,6 +3415,9 @@ static int dsa_slave_fdb_event(struct net_device 
>> *dev,
>>  		   orig_dev->name, fdb_info->addr, fdb_info->vid,
>>  		   host_addr ? " as host address" : "");
>> 
>> +	if (fdb_info->is_dyn)
>> +		fdb_flags |= DSA_FDB_FLAG_DYNAMIC;
>> +
> 
> Hmm, I don't think this is going to work with the 
> assisted_learning_on_cpu_port
> feature ("if (switchdev_fdb_is_dynamically_learned(fdb_info))"). The
> reason being
> that a "dynamically learned" FDB entry (defined as this):
> 
> static inline bool
> switchdev_fdb_is_dynamically_learned(const struct
> switchdev_notifier_fdb_info *fdb_info)
> {
> 	return !fdb_info->added_by_user && !fdb_info->is_local;
> }
> 
> is also dynamic in the DSA_FDB_FLAG_DYNAMIC sense. But we install a
> static FDB entry for it on the CPU port.
> 
> And in your follow-up patch 3/5, you make all drivers except mv88e6xxx
> ignore all DSA_FDB_FLAG_DYNAMIC entries (including the ones snooped 
> from
> address learning on software interfaces). So this breaks those drivers
> which don't implement DSA_FDB_FLAG_DYNAMIC but do set
> ds->assisted_learning_on_cpu_port
> to true.

I am not sure I understand you entirely.
 From my standpoint I see it as so: that until now any fdb entry coming 
to port_fdb_add() (or port_fdb_del()) are seen as static entries. And 
this changes nothing with respect to those static entries as how drivers 
handle them.
When the new dynamic flag is true, all drivers will ignore it in patch 
#3, so basically nothing will change by that. Then in patch #5 the 
dynamic flag is handled by the mv88e6xxx driver.

I don't know the assisted_learning_on_cpu_port feature you mention, but 
there has still not been anything but static entries going towards 
port_fdb_add() yet...

> 
> I think you also want to look at the added_by_user flag to disambiguate
> between a dynamic FDB entry added from learning (which it's ok to
> offload as static, because software ageing will remove it) and one 
> added
> by the user.
> 
>>  	INIT_WORK(&switchdev_work->work, dsa_slave_switchdev_event_work);
>>  	switchdev_work->event = event;
>>  	switchdev_work->dev = dev;
>> @@ -3418,6 +3426,7 @@ static int dsa_slave_fdb_event(struct net_device 
>> *dev,
>>  	ether_addr_copy(switchdev_work->addr, fdb_info->addr);
>>  	switchdev_work->vid = fdb_info->vid;
>>  	switchdev_work->host_addr = host_addr;
>> +	switchdev_work->fdb_flags = fdb_flags;
>> 
>>  	dsa_schedule_work(&switchdev_work->work);
>> 
