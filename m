Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0860E607815
	for <lists.bridge@lfdr.de>; Fri, 21 Oct 2022 15:16:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6FBF58439A;
	Fri, 21 Oct 2022 13:16:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6FBF58439A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LleO6luTKKXc; Fri, 21 Oct 2022 13:16:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 01D638438C;
	Fri, 21 Oct 2022 13:16:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 01D638438C
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7F116C0077;
	Fri, 21 Oct 2022 13:16:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 907FBC002D
 for <bridge@lists.linux-foundation.org>; Fri, 21 Oct 2022 13:16:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5D6D460E67
 for <bridge@lists.linux-foundation.org>; Fri, 21 Oct 2022 13:16:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D6D460E67
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o1k1ilUv9llB for <bridge@lists.linux-foundation.org>;
 Fri, 21 Oct 2022 13:16:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4471360E43
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4471360E43
 for <bridge@lists.linux-foundation.org>; Fri, 21 Oct 2022 13:16:25 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 03CB41884D82;
 Fri, 21 Oct 2022 13:16:22 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id EDB80250007B;
 Fri, 21 Oct 2022 13:16:21 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id E48979EC0009; Fri, 21 Oct 2022 13:16:21 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Fri, 21 Oct 2022 15:16:21 +0200
From: netdev@kapio-technology.com
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20221021112216.6bw6sjrieh2znlti@skbuf>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-11-netdev@kapio-technology.com>
 <20221018165619.134535-11-netdev@kapio-technology.com>
 <20221020132538.reirrskemcjwih2m@skbuf>
 <2565c09bb95d69142522c3c3bcaa599e@kapio-technology.com>
 <20221020225719.l5iw6vndmm7gvjo3@skbuf>
 <82d23b100b8d2c9e4647b8a134d5cbbf@kapio-technology.com>
 <20221021112216.6bw6sjrieh2znlti@skbuf>
User-Agent: Gigahost Webmail
Message-ID: <7bfaae46b1913fe81654a4cd257d98b1@kapio-technology.com>
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

On 2022-10-21 13:22, Vladimir Oltean wrote:
> On Fri, Oct 21, 2022 at 08:47:42AM +0200, netdev@kapio-technology.com 
> wrote:
>> On 2022-10-21 00:57, Vladimir Oltean wrote:
>> > On Thu, Oct 20, 2022 at 10:20:50PM +0200, netdev@kapio-technology.com
>> > wrote:
>> > > In general locked ports block traffic from a host based on if there
>> > > is a
>> > > FDB entry or not. In the non-offloaded case, there is only CPU
>> > > assisted
>> > > learning, so the normal learning mechanism has to be disabled as any
>> > > learned entry will open the port for the learned MAC,vlan.
>> >
>> > Does it have to be that way? Why can't BR_LEARNING on a BR_PORT_LOCKED
>> > cause the learned FDB entries to have BR_FDB_LOCKED, and everything
>> > would be ok in that case (the port will not be opened for the learned
>> > MAC/VLAN)?
>> 
>> I suppose you are right that basing it solely on BR_FDB_LOCKED is 
>> possible.
>> 
>> The question is then maybe if the common case where you don't need 
>> learned
>> entries for the scheme to work, e.g. with EAPOL link local packets, 
>> requires
>> less CPU load to work and is cleaner than if using BR_FDB_LOCKED 
>> entries?
> 
> I suppose the real question is what does the bridge currently do with
> BR_LEARNING + BR_PORT_LOCKED, and if that is sane and useful in any 
> case?
> It isn't a configuration that's rejected, for sure. The configuration
> could be rejected via a bug fix patch, then in net-next it could be 
> made
> to learn these addresses with the BR_FDB_LOCKED flag.
> 
> To your question regarding the common case (no MAB): that can be 
> supported
> just fine when BR_LEARNING is off and BR_PORT_LOCKED is on, no?
> No BR_FDB_LOCKED entries will be learned.

As it is now in the bridge, the locked port part is handled before 
learning
in the ingress data path, so with BR_LEARNING and BR_PORT_LOCKED, I 
think it
will work as it does now except link local packages.

If your suggestion of BR_LEARNING causing BR_FDB_LOCKED on a locked 
port, I
guess it would be implemented under br_fdb_update() and BR_LEARNING +
BR_PORT_LOCKED would go together, forcing BR_LEARNING in this case, thus 
also
for all drivers?
