Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 90ACD608D5B
	for <lists.bridge@lfdr.de>; Sat, 22 Oct 2022 15:15:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E461829DC;
	Sat, 22 Oct 2022 13:15:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E461829DC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zAKf8uLSoJM6; Sat, 22 Oct 2022 13:15:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id EC6CF82883;
	Sat, 22 Oct 2022 13:15:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC6CF82883
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A0EEEC007C;
	Sat, 22 Oct 2022 13:15:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AEC44C002D
 for <bridge@lists.linux-foundation.org>; Sat, 22 Oct 2022 13:15:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 77F074168D
 for <bridge@lists.linux-foundation.org>; Sat, 22 Oct 2022 13:15:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77F074168D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id waw4bTL6skmd for <bridge@lists.linux-foundation.org>;
 Sat, 22 Oct 2022 13:15:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F3554168C
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4F3554168C
 for <bridge@lists.linux-foundation.org>; Sat, 22 Oct 2022 13:15:07 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 71136188440A;
 Sat, 22 Oct 2022 13:15:03 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 51EDC250007B;
 Sat, 22 Oct 2022 13:15:03 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 2D6B09EC0013; Sat, 22 Oct 2022 13:15:03 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Sat, 22 Oct 2022 15:15:03 +0200
From: netdev@kapio-technology.com
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20221022120200.no5pl54bcfa3wcnd@skbuf>
References: <20221020225719.l5iw6vndmm7gvjo3@skbuf>
 <82d23b100b8d2c9e4647b8a134d5cbbf@kapio-technology.com>
 <20221021112216.6bw6sjrieh2znlti@skbuf>
 <7bfaae46b1913fe81654a4cd257d98b1@kapio-technology.com>
 <20221021163005.xljk2j3fkikr6uge@skbuf>
 <d1fb07de4b55d64f98425fe66156c4e4@kapio-technology.com>
 <20221021173014.oit3qmpkrsjwzbgu@skbuf>
 <b88e331e016ad3801f1bf1a0dec507f3@kapio-technology.com>
 <20221021181411.sv52q4yxr5r7urab@skbuf>
 <37dc7673fde2b8e166a5ed78431a2078@kapio-technology.com>
 <20221022120200.no5pl54bcfa3wcnd@skbuf>
User-Agent: Gigahost Webmail
Message-ID: <871cd2930adbed99d351da0864aee340@kapio-technology.com>
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
 Sean Wang <sean.wang@mediatek.com>,
 Oleksandr Mazur <oleksandr.mazur@plvision.eu>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Yuwei Wang <wangyuweihx@gmail.com>, Petr Machata <petrm@nvidia.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Florent Fourcot <florent.fourcot@wifirst.fr>, UNGLinuxDriver@microchip.com,
 davem@davemloft.net
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

On 2022-10-22 14:02, Vladimir Oltean wrote:
> On Sat, Oct 22, 2022 at 09:24:56AM +0200, netdev@kapio-technology.com 
> wrote:
>> I will not say that you are not making sense as for the mv88e6xxx, as 
>> it
>> needs port association in all cases with BR_PORT_LOCKED, MAB or not, 
>> and
>> port association is turned on in the driver with learning turned on.
>> 
>> That said, there must be some resolution and agreement overall with 
>> this
>> issue to move on. Right now port association is turned on in the 
>> mv88e6xxx
>> driver when locking the port, thus setting learning off after locking 
>> will
>> break things.
> 
> This already needs to be treated as a bug and fixed on its own. Forget
> about MAB.
> 
> You're saying that when BR_LEARNING=on and BR_PORT_LOCKED=on, the
> mv88e6xxx driver works properly, but the software bridge is broken
> (learns from link-local multicast).
> 
> When BR_LEARNING=off and BR_PORT_LOCKED=on, the software bridge is not
> broken, but the mv88e6xxx driver is, because it requires the PAV
> configured properly.
> 
> And you're saying that I'm the one who suggests things should work
> differently in software mode vs offloaded mode?!

Well :-) To be specific, I am talking about how things work from a user
perspective, where I have kept to BR_LEARNING off before turning
BR_PORT_LOCKED on.

I admit to a weakness in that BR_LEARNING off after BR_PORT_LOCKED on is
a problem that from my perspective at this point would be a user error.

> 
> Why don't you
> (a) deny BR_LEARNING + BR_PORT_LOCKED in the bridge layer
> (b) fix the mv88e6xxx driver to always keep the assoc_vector set
>     properly for the port, if BR_LEARNING *or* BR_PORT_LOCKED is set?

(a) yes, I have thought that documentation could handle this, but maybe
     you are right, maybe it should be enforced...
(b) BR_PORT_LOCKED ensures now that the PAV is correctly set, so I have
     basically distinguished between learning and port association (which
     I know mechanically is the same in mv88e6xxx), but still I have
     adhered to learning off while port association is on for the port.
