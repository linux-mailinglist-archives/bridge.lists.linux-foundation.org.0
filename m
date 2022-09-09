Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 248FC5B38AC
	for <lists.bridge@lfdr.de>; Fri,  9 Sep 2022 15:12:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98FCF41765;
	Fri,  9 Sep 2022 13:12:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98FCF41765
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9iCOKH7qjhmM; Fri,  9 Sep 2022 13:12:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 04AA8418DC;
	Fri,  9 Sep 2022 13:12:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 04AA8418DC
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 99EB8C007C;
	Fri,  9 Sep 2022 13:12:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B4F72C002D
 for <bridge@lists.linux-foundation.org>; Fri,  9 Sep 2022 13:12:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 67B1141D03
 for <bridge@lists.linux-foundation.org>; Fri,  9 Sep 2022 13:12:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 67B1141D03
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6zwSPDYIW8f1 for <bridge@lists.linux-foundation.org>;
 Fri,  9 Sep 2022 13:12:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 303F141901
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 303F141901
 for <bridge@lists.linux-foundation.org>; Fri,  9 Sep 2022 13:12:05 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id F0F37188528F;
 Fri,  9 Sep 2022 13:11:56 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id E8A0725032B7;
 Fri,  9 Sep 2022 13:11:56 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id DDD2B9EC0002; Fri,  9 Sep 2022 13:11:56 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Fri, 09 Sep 2022 15:11:56 +0200
From: netdev@kapio-technology.com
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20220908112044.czjh3xkzb4r27ohq@skbuf>
References: <Ywyj1VF1wlYqlHb6@shredder>
 <9e1a9eb218bbaa0d36cb98ff5d4b97d7@kapio-technology.com>
 <YwzPJ2oCYJQHOsXD@shredder>
 <69db7606896c77924c11a6c175c4b1a6@kapio-technology.com>
 <YwzjPcQjfLPk3q/k@shredder>
 <f1a17512266ac8b61444e7f0e568aca7@kapio-technology.com>
 <YxNo/0+/Sbg9svid@shredder>
 <5cee059b65f6f7671e099150f9da79c1@kapio-technology.com>
 <Yxmgs7Du62V1zyjK@shredder>
 <8dfc9b525f084fa5ad55019f4418a35e@kapio-technology.com>
 <20220908112044.czjh3xkzb4r27ohq@skbuf>
User-Agent: Gigahost Webmail
Message-ID: <152c0ceadefbd742331c340bec2f50c0@kapio-technology.com>
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
 linux-arm-kernel@lists.infradead.org, Ido Schimmel <idosch@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 Jiri Pirko <jiri@resnulli.us>, Christian Marangi <ansuelsmth@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Roopa Prabhu <roopa@nvidia.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Yuwei Wang <wangyuweihx@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
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

On 2022-09-08 13:20, Vladimir Oltean wrote:
> On Thu, Sep 08, 2022 at 01:14:59PM +0200, netdev@kapio-technology.com 
> wrote:
>> On 2022-09-08 09:59, Ido Schimmel wrote:
>> > On Wed, Sep 07, 2022 at 11:10:07PM +0200, netdev@kapio-technology.com wrote:
>> > > I am at the blackhole driver implementation now, as I suppose that the
>> > > iproute2 command should work with the mv88e6xxx driver when adding blackhole
>> > > entries (with a added selftest)?
>> > > I decided to add the blackhole feature as new ops for drivers with functions
>> > > blackhole_fdb_add() and blackhole_fdb_del(). Do you agree with that approach?
>> >
>> > I assume you are talking about extending 'dsa_switch_ops'?
>> 
>> Yes, that is the idea.
>> 
>> > If so, it's up to the DSA maintainers to decide.
> 
> What will be the usefulness of adding a blackhole FDB entry from user 
> space?

With the software bridge it could be used to signal a untrusted host in 
connection with a locked port entry attempt. I don't see so much use 
other that test purposes with the driver though.
