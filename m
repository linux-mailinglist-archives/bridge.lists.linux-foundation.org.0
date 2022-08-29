Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD995A512F
	for <lists.bridge@lfdr.de>; Mon, 29 Aug 2022 18:13:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 93F08607FE;
	Mon, 29 Aug 2022 16:13:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 93F08607FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RJ7KV5GhDOb8; Mon, 29 Aug 2022 16:13:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 9972260AAA;
	Mon, 29 Aug 2022 16:13:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9972260AAA
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4E5E0C0078;
	Mon, 29 Aug 2022 16:13:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8A091C002D
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 16:13:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 57292400E9
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 16:13:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57292400E9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HqwrnC9CxqIU for <bridge@lists.linux-foundation.org>;
 Mon, 29 Aug 2022 16:13:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C31E840053
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C31E840053
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 16:13:17 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 3FDD418848CD;
 Mon, 29 Aug 2022 16:13:15 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 36E6B25032B7;
 Mon, 29 Aug 2022 16:13:15 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 26D919EC0004; Mon, 29 Aug 2022 16:13:15 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Mon, 29 Aug 2022 18:13:14 +0200
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <YwzjPcQjfLPk3q/k@shredder>
References: <20220826114538.705433-1-netdev@kapio-technology.com>
 <20220826114538.705433-7-netdev@kapio-technology.com>
 <YwpgvkojEdytzCAB@shredder>
 <7654860e4d7d43c15d482c6caeb6a773@kapio-technology.com>
 <YwxtVhlPjq+M9QMY@shredder>
 <2967ccc234bb672f5440a4b175b73768@kapio-technology.com>
 <Ywyj1VF1wlYqlHb6@shredder>
 <9e1a9eb218bbaa0d36cb98ff5d4b97d7@kapio-technology.com>
 <YwzPJ2oCYJQHOsXD@shredder>
 <69db7606896c77924c11a6c175c4b1a6@kapio-technology.com>
 <YwzjPcQjfLPk3q/k@shredder>
User-Agent: Gigahost Webmail
Message-ID: <f1a17512266ac8b61444e7f0e568aca7@kapio-technology.com>
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

On 2022-08-29 18:03, Ido Schimmel wrote:
> On Mon, Aug 29, 2022 at 05:08:23PM +0200, netdev@kapio-technology.com 
> wrote:
>> On 2022-08-29 16:37, Ido Schimmel wrote:
>> > On Mon, Aug 29, 2022 at 02:04:42PM +0200, netdev@kapio-technology.com
>> > wrote:
>> > > On 2022-08-29 13:32, Ido Schimmel wrote:
>> > > Port association is needed for MAB to work at all on mv88e6xxx, but
>> > > for
>> > > 802.1X port association is only needed for dynamic ATU entries.
>> >
>> > Ageing of dynamic entries in the bridge requires learning to be on as
>> > well, but in these test cases you are only using static entries and
>> > there is no reason to enable learning in the bridge for that. I prefer
>> > not to leak this mv88e6xxx implementation detail to user space and
>> > instead have the driver enable port association based on whether
>> > "learning" or "mab" is on.
>> >
>> 
>> Then it makes most sense to have the mv88e6xxx driver enable port
>> association when then port is locked, as it does now.
> 
> As you wish, but like you wrote "802.1X port association is only needed
> for dynamic ATU entries" and in this case user space needs to enable
> learning (for refresh only) so you can really key off learning on
> "learning || mab". User space can decide to lock the port and work with
> static entries and then learning is not required.

I will of course remove all "learning on" in the selftests, which is 
what I think you are referring to. In the previous I am referring to the 
code in the driver itself which I understand shall turn on port 
association with locked ports, e.g. no need for "learning on" when using 
the feature in general outside selftests...
