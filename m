Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D79B8606863
	for <lists.bridge@lfdr.de>; Thu, 20 Oct 2022 20:47:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BCE860D5E;
	Thu, 20 Oct 2022 18:47:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1BCE860D5E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qORsd9RaFBch; Thu, 20 Oct 2022 18:47:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id A347960D66;
	Thu, 20 Oct 2022 18:47:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A347960D66
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4A139C0078;
	Thu, 20 Oct 2022 18:47:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4AB52C002D
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 18:47:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F11B642257
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 18:47:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F11B642257
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JsfQzNEtkyCH for <bridge@lists.linux-foundation.org>;
 Thu, 20 Oct 2022 18:47:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7682942256
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7682942256
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 18:47:41 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 56E301884CB9;
 Thu, 20 Oct 2022 18:47:39 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 4421F25001FA;
 Thu, 20 Oct 2022 18:47:39 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 38C139EC0005; Thu, 20 Oct 2022 18:47:39 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Thu, 20 Oct 2022 20:47:39 +0200
From: netdev@kapio-technology.com
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20221020133506.76wroc7owpwjzrkg@skbuf>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-6-netdev@kapio-technology.com>
 <20221018165619.134535-6-netdev@kapio-technology.com>
 <20221020130224.6ralzvteoxfdwseb@skbuf> <Y1FMAI9BzDRUPi5Y@shredder>
 <20221020133506.76wroc7owpwjzrkg@skbuf>
User-Agent: Gigahost Webmail
Message-ID: <8456155b8e0f6327e4fb595c7a08399b@kapio-technology.com>
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
 linux-arm-kernel@lists.infradead.org, Ido Schimmel <idosch@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 Jiri Pirko <jiri@resnulli.us>, Amit Cohen <amcohen@nvidia.com>,
 Christian Marangi <ansuelsmth@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Hans Schultz <schultz.hans@gmail.com>, Roopa Prabhu <roopa@nvidia.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Yuwei Wang <wangyuweihx@gmail.com>, Petr Machata <petrm@nvidia.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v8 net-next 05/12] net: dsa: propagate the
 locked flag down through the DSA layer
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

On 2022-10-20 15:35, Vladimir Oltean wrote:
> On Thu, Oct 20, 2022 at 04:24:16PM +0300, Ido Schimmel wrote:
>> On Thu, Oct 20, 2022 at 04:02:24PM +0300, Vladimir Oltean wrote:
>> > On Tue, Oct 18, 2022 at 06:56:12PM +0200, Hans J. Schultz wrote:
>> > > @@ -3315,6 +3316,7 @@ static int dsa_slave_fdb_event(struct net_device *dev,
>> > >  	struct dsa_port *dp = dsa_slave_to_port(dev);
>> > >  	bool host_addr = fdb_info->is_local;
>> > >  	struct dsa_switch *ds = dp->ds;
>> > > +	u16 fdb_flags = 0;
>> > >
>> > >  	if (ctx && ctx != dp)
>> > >  		return 0;
>> > > @@ -3361,6 +3363,9 @@ static int dsa_slave_fdb_event(struct net_device *dev,
>> > >  		   orig_dev->name, fdb_info->addr, fdb_info->vid,
>> > >  		   host_addr ? " as host address" : "");
>> > >
>> > > +	if (fdb_info->locked)
>> > > +		fdb_flags |= DSA_FDB_FLAG_LOCKED;
>> >
>> > This is the bridge->driver direction. In which of the changes up until
>> > now/through which mechanism will the bridge emit a
>> > SWITCHDEV_FDB_ADD_TO_DEVICE with fdb_info->locked = true?
>> 
>> I believe it can happen in the following call chain:
>> 
>> br_handle_frame_finish
>>    br_fdb_update // p->flags & BR_PORT_MAB
>>        fdb_notify
>>            br_switchdev_fdb_notify
>> 
>> This can happen with Spectrum when a packet ingresses via a locked 
>> port
>> and incurs an FDB miss in hardware. The packet will be trapped and
>> injected to the Rx path where it should invoke the above call chain.
> 
> Ah, so this is the case which in mv88e6xxx would generate an ATU
> violation interrupt; in the Spectrum case it generates a special 
> packet.
> Right now this packet isn't generated, right?
> 
> I think we have the same thing in ocelot, a port can be configured to
> send "learn frames" to the CPU.
> 
> Should these packets be injected into the bridge RX path in the first
> place? They reach the CPU because of an FDB miss, not because the CPU
> was the intended destination.

Just to add to it, now that there is a u16 for flags in the 
bridge->driver
direction, making it easier to add such flags, I expect that for the
mv88e6xxx driver there shall be a 'IS_DYNAMIC' flag also, as authorized
hosts will have their authorized FDB entries added with dynamic 
entries...

Now as the bridge will not be able to refresh such authorized FDB 
entries
based on unicast incoming traffic on the locked port in the offloaded 
case,
besides we don't want the CPU to do such in this case anyway, to keep 
the
authorized line alive without having to reauthorize in like every 5 
minutes,
the driver needs to do the ageing (and refreshing) of the dynamic entry
added from userspace. When the entry "ages" out, there is the HoldAt1
feature and Age Out Violations that should be used to tell userspace
(plus bridge) that this authorization has been removed by the driver as
the host has gone quiet.

So all in all, there is the need of another flag from
userspace->bridge->driver, telling that we want a dynamic ATU entry 
(with
mv88e6xxx it will start at age 7).
