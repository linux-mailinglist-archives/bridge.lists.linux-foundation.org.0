Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F5B6C9639
	for <lists.bridge@lfdr.de>; Sun, 26 Mar 2023 17:43:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83E7C41516;
	Sun, 26 Mar 2023 15:43:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83E7C41516
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z0c7u6u7xDd4; Sun, 26 Mar 2023 15:43:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id C0AAA414E5;
	Sun, 26 Mar 2023 15:43:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C0AAA414E5
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5BA08C008A;
	Sun, 26 Mar 2023 15:43:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EA6E8C0032
 for <bridge@lists.linux-foundation.org>; Sun, 26 Mar 2023 15:43:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B155660E82
 for <bridge@lists.linux-foundation.org>; Sun, 26 Mar 2023 15:43:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B155660E82
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tg1oSCedfivV for <bridge@lists.linux-foundation.org>;
 Sun, 26 Mar 2023 15:43:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 911E1600B5
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 911E1600B5
 for <bridge@lists.linux-foundation.org>; Sun, 26 Mar 2023 15:43:48 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id DD21F188397D;
 Sun, 26 Mar 2023 15:43:44 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id C9D3025002FD;
 Sun, 26 Mar 2023 15:43:44 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id BBDAA9B403E2; Sun, 26 Mar 2023 15:43:44 +0000 (UTC)
X-Screener-Id: e32ae469fa6e394734d05373d3a705875723cf1e
Received: from fujitsu (2-104-116-184-cable.dk.customer.tdc.net
 [2.104.116.184])
 by smtp.gigahost.dk (Postfix) with ESMTPSA id C4E5391201E3;
 Sun, 26 Mar 2023 15:43:43 +0000 (UTC)
From: Hans Schultz <netdev@kapio-technology.com>
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <ZBgdAo8mxwnl+pEE@shredder>
References: <20230318141010.513424-1-netdev@kapio-technology.com>
 <20230318141010.513424-7-netdev@kapio-technology.com>
 <ZBgdAo8mxwnl+pEE@shredder>
Date: Sun, 26 Mar 2023 17:41:06 +0200
Message-ID: <87a5zzh65p.fsf@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>, "moderated
 list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>,
 =?utf-8?Q?Cl=C3=A9ment_L=C3=A9ger?= <clement.leger@bootlin.com>,
 Christian Marangi <ansuelsmth@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET SWITCH DRIVER"
 <UNGLinuxDriver@microchip.com>, "open list:RENESAS RZ/N1
 A5PSW SWITCH DRIVER" <linux-renesas-soc@vger.kernel.org>,
 Vladimir Oltean <olteanv@gmail.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 6/6] selftests: forwarding: add
 dynamic FDB test
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

On Mon, Mar 20, 2023 at 10:44, Ido Schimmel <idosch@nvidia.com> wrote:
>> +	$MZ $swp1 -c 1 -p 128 -t udp "sp=54321,dp=12345" \
>> +		-a $mac -b `mac_get $h2` -A 192.0.2.1 -B 192.0.2.2 -q
>> +	tc_check_packets "dev $swp2 egress" 1 1
>> +	check_fail $? "Dynamic FDB entry did not age out"
>
> Shouldn't this be check_err()? After the FDB entry was aged you want to
> make sure that packets received via $swp1 with SMAC being $mac are no
> longer forwarded by the bridge.

I was thinking that check_fail() will pass when tc_check_packets() does
not see any packets, thus the test passing here when no packets are forwarded?

>
> Also, I suggest executing 'bridge fdb get' to make sure the entry is no
> longer present in the bridge FDB.
>
