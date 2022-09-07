Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F24D5B0EEA
	for <lists.bridge@lfdr.de>; Wed,  7 Sep 2022 23:10:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B2D5416F2;
	Wed,  7 Sep 2022 21:10:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B2D5416F2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9QGYbkpDcSVQ; Wed,  7 Sep 2022 21:10:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 92EEC416E3;
	Wed,  7 Sep 2022 21:10:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 92EEC416E3
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 39429C007C;
	Wed,  7 Sep 2022 21:10:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9846EC002D
 for <bridge@lists.linux-foundation.org>; Wed,  7 Sep 2022 21:10:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6BFFA83372
 for <bridge@lists.linux-foundation.org>; Wed,  7 Sep 2022 21:10:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6BFFA83372
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sky-bi8IEaGj for <bridge@lists.linux-foundation.org>;
 Wed,  7 Sep 2022 21:10:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 20BFB81D35
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 20BFB81D35
 for <bridge@lists.linux-foundation.org>; Wed,  7 Sep 2022 21:10:10 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id E956A1884A6C;
 Wed,  7 Sep 2022 21:10:07 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id CD0D525032B7;
 Wed,  7 Sep 2022 21:10:07 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id BF8139EC0006; Wed,  7 Sep 2022 21:10:07 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Wed, 07 Sep 2022 23:10:07 +0200
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <YxNo/0+/Sbg9svid@shredder>
References: <YwpgvkojEdytzCAB@shredder>
 <7654860e4d7d43c15d482c6caeb6a773@kapio-technology.com>
 <YwxtVhlPjq+M9QMY@shredder>
 <2967ccc234bb672f5440a4b175b73768@kapio-technology.com>
 <Ywyj1VF1wlYqlHb6@shredder>
 <9e1a9eb218bbaa0d36cb98ff5d4b97d7@kapio-technology.com>
 <YwzPJ2oCYJQHOsXD@shredder>
 <69db7606896c77924c11a6c175c4b1a6@kapio-technology.com>
 <YwzjPcQjfLPk3q/k@shredder>
 <f1a17512266ac8b61444e7f0e568aca7@kapio-technology.com>
 <YxNo/0+/Sbg9svid@shredder>
User-Agent: Gigahost Webmail
Message-ID: <5cee059b65f6f7671e099150f9da79c1@kapio-technology.com>
X-Sender: netdev@kapio-technology.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, bridge@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Christian Marangi <ansuelsmth@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Vladimir Oltean <olteanv@gmail.com>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v5 net-next 6/6] selftests: forwarding: add
 test of MAC-Auth Bypass to locked port tests
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

On 2022-09-03 16:47, Ido Schimmel wrote:
> On Mon, Aug 29, 2022 at 06:13:14PM +0200, netdev@kapio-technology.com 
> wrote:
>> On 2022-08-29 18:03, Ido Schimmel wrote:
>> > On Mon, Aug 29, 2022 at 05:08:23PM +0200, netdev@kapio-technology.com
>> > wrote:
>> > > On 2022-08-29 16:37, Ido Schimmel wrote:
>> > > > On Mon, Aug 29, 2022 at 02:04:42PM +0200, netdev@kapio-technology.com
>> > > > wrote:
>> > > > > On 2022-08-29 13:32, Ido Schimmel wrote:
>> > > > > Port association is needed for MAB to work at all on mv88e6xxx, but
>> > > > > for
>> > > > > 802.1X port association is only needed for dynamic ATU entries.
>> > > >
>> > > > Ageing of dynamic entries in the bridge requires learning to be on as
>> > > > well, but in these test cases you are only using static entries and
>> > > > there is no reason to enable learning in the bridge for that. I prefer
>> > > > not to leak this mv88e6xxx implementation detail to user space and
>> > > > instead have the driver enable port association based on whether
>> > > > "learning" or "mab" is on.
>> > > >
>> > >
>> > > Then it makes most sense to have the mv88e6xxx driver enable port
>> > > association when then port is locked, as it does now.
>> >
>> > As you wish, but like you wrote "802.1X port association is only needed
>> > for dynamic ATU entries" and in this case user space needs to enable
>> > learning (for refresh only) so you can really key off learning on
>> > "learning || mab". User space can decide to lock the port and work with
>> > static entries and then learning is not required.
>> 
>> I will of course remove all "learning on" in the selftests, which is 
>> what I
>> think you are referring to. In the previous I am referring to the code 
>> in
>> the driver itself which I understand shall turn on port association 
>> with
>> locked ports, e.g. no need for "learning on" when using the feature in
>> general outside selftests...
> 
> "learning on" is needed when dynamic FDB entries are used to authorize
> hosts. Without learning being enabled, the bridge driver (or the
> underlying hardware) will not refresh the entries during forwarding and
> they will age out, resulting in packet loss until the hosts are
> re-authorized.
> 
> Given the current test cases only use static entries, there is no need
> to enable learning on locked ports. This will change when test cases 
> are
> added with dynamic entries.
> 
> Regarding mv88e6xxx, my understanding is that you also need learning
> enabled for MAB (I assume for the violation interrupts). Therefore, for
> mv88e6xxx, learning can be enabled if learning is on or MAB is on.
> Enabling it based on whether the port is locked or not seems 
> inaccurate.

Given that 'learning on' is needed for hardware refreshing of ATU 
entries (mv88e6xxx), and that will in the future be needed in general, I 
think it is best to enable it when a port is locked. Also the matter is 
that the locked feature needs to modify the register that contains the 
PAV. So I see it as natural that it is done there, as it will eventually 
have to be done there.
That the selftests do not need it besides when activating MAB, I think, 
is a special case.

I am at the blackhole driver implementation now, as I suppose that the 
iproute2 command should work with the mv88e6xxx driver when adding 
blackhole entries (with a added selftest)?
I decided to add the blackhole feature as new ops for drivers with 
functions blackhole_fdb_add() and blackhole_fdb_del(). Do you agree with 
that approach?
