Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F6A68853B
	for <lists.bridge@lfdr.de>; Thu,  2 Feb 2023 18:18:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C34B961195;
	Thu,  2 Feb 2023 17:18:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C34B961195
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iD6gmsFozlbC; Thu,  2 Feb 2023 17:18:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 4019561180;
	Thu,  2 Feb 2023 17:18:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4019561180
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BCEEFC0078;
	Thu,  2 Feb 2023 17:18:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ABB22C002B
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 17:18:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8682C8201F
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 17:18:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8682C8201F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VCyn6QGCZL-O for <bridge@lists.linux-foundation.org>;
 Thu,  2 Feb 2023 17:18:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF6DA81FDA
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BF6DA81FDA
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 17:18:12 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 5FBE31883A58;
 Thu,  2 Feb 2023 17:18:10 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 463FE250007B;
 Thu,  2 Feb 2023 17:18:10 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 3ECC991201E4; Thu,  2 Feb 2023 17:18:10 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Thu, 02 Feb 2023 18:18:10 +0100
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@idosch.org>
In-Reply-To: <Y9lrIWMnWLqGreZL@shredder>
References: <20230130173429.3577450-1-netdev@kapio-technology.com>
 <Y9lrIWMnWLqGreZL@shredder>
User-Agent: Gigahost Webmail
Message-ID: <1fe06ed3010fe318728ebd73eee7f092@kapio-technology.com>
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
 =?UTF-8?Q?Cl=C3=A9m?= =?UTF-8?Q?ent_L=C3=A9ger?= <clement.leger@bootlin.com>,
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
 "maintainer:MICROCHIP KSZ SERIES ETHERNET SWITCH DRIVER"
 <UNGLinuxDriver@microchip.com>, "open list:RENESAS RZ/N1
 A5PSW SWITCH DRIVER" <linux-renesas-soc@vger.kernel.org>,
 Vladimir Oltean <olteanv@gmail.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 0/5] ATU and FDB synchronization on
	locked ports
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

On 2023-01-31 20:25, Ido Schimmel wrote:
>> command like:
>> 
>> bridge fdb replace ADDR dev <DEV> master dynamic
>> 
>> We choose only to support this feature on locked ports, as it involves
>> utilizing the CPU to handle ATU related switchcore events (typically
>> interrupts) and thus can result in significant performance loss if
>> exposed to heavy traffic.
> 
> Not sure I understand this reasoning. I was under the impression that
> hostapd is installing dynamic entries instead of static ones since the
> latter are not flushed when carrier is lost. Therefore, with static
> entries it is possible to unplug a host (potentially plugging a
> different one) and not lose authentication.
> 

Both auth schemes 802.1X and MAB install dynamic entries as you point 
out, and both use locked ports.
In the case of non locked ports, they just learn normally and age and 
refresh their entries, so the use case of a userspace added dynamic FDB 
entry is hard for me to see. And having userspace being notified of an 
ordinary event that a FDB entry has been aged out could maybe be used, 
but for the reasons mentioned it is not supported here.

>> 
>> On locked ports it is important for userspace to know when an 
>> authorized
>> station has become silent, hence not breaking the communication of a
>> station that has been authorized based on the MAC-Authentication 
>> Bypass
>> (MAB) scheme. Thus if the station keeps being active after 
>> authorization,
>> it will continue to have an open port as long as it is active. Only 
>> after
>> a silent period will it have to be reauthorized. As the ageing process 
>> in
>> the ATU is dependent on incoming traffic to the switchcore port, it is
>> necessary for the ATU to signal that an entry has aged out, so that 
>> the
>> FDB can be updated at the correct time.
> 
> Why mention MAB at all? Don't you want user space to always use dynamic
> entries to authenticate hosts regardless of 802.1X/MAB?

Yes, you are right about that. I guess it came about as this was 
developed much in the same time and with the code of MAB.
