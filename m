Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C8EB95A3D6F
	for <lists.bridge@lfdr.de>; Sun, 28 Aug 2022 14:00:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7160C81B0A;
	Sun, 28 Aug 2022 12:00:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7160C81B0A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P7AHK1lxPhvE; Sun, 28 Aug 2022 12:00:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 0007781A3B;
	Sun, 28 Aug 2022 12:00:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0007781A3B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 97759C007B;
	Sun, 28 Aug 2022 12:00:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2536EC002D
 for <bridge@lists.linux-foundation.org>; Sun, 28 Aug 2022 12:00:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E78BD40543
 for <bridge@lists.linux-foundation.org>; Sun, 28 Aug 2022 12:00:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E78BD40543
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ru5RiExRw2sQ for <bridge@lists.linux-foundation.org>;
 Sun, 28 Aug 2022 12:00:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F91B40534
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2F91B40534
 for <bridge@lists.linux-foundation.org>; Sun, 28 Aug 2022 12:00:31 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 829B718845C3;
 Sun, 28 Aug 2022 12:00:29 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 797F325032B7;
 Sun, 28 Aug 2022 12:00:29 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 6C87D9EC0008; Sun, 28 Aug 2022 12:00:29 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Sun, 28 Aug 2022 14:00:29 +0200
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <YwpgvkojEdytzCAB@shredder>
References: <20220826114538.705433-1-netdev@kapio-technology.com>
 <20220826114538.705433-7-netdev@kapio-technology.com>
 <YwpgvkojEdytzCAB@shredder>
User-Agent: Gigahost Webmail
Message-ID: <7654860e4d7d43c15d482c6caeb6a773@kapio-technology.com>
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

On 2022-08-27 20:21, Ido Schimmel wrote:
> On Fri, Aug 26, 2022 at 01:45:38PM +0200, Hans Schultz wrote:
>> +locked_port_mab()
>> +{
>> +	RET=0
>> +	check_locked_port_support || return 0
>> +
>> +	ping_do $h1 192.0.2.2
>> +	check_err $? "MAB: Ping did not work before locking port"
>> +
>> +	bridge link set dev $swp1 locked on
>> +	bridge link set dev $swp1 learning on
> 
> "locked on learning on" is counter intuitive and IMO very much a
> misconfiguration that we should have disallowed when the "locked" 
> option
> was introduced. It is my understanding that the only reason we are even
> talking about it is because mv88e6xxx needs it for MAB for some reason.

As the way mv88e6xxx implements "learning off" is to remove port 
association for ingress packets on a port, but that breaks many other 
things such as refreshing ATU entries and violation interrupts, so it is 
needed and the question is then what is the worst to have 'learning on' 
on a locked port or to have the locked port enabling learning in the 
driver silently?

Opinions seem to differ. Note that even on locked ports without MAB, 
port association on ingress is still needed in future as I have a 
dynamic ATU patch set coming, that uses age out violation and hardware 
refreshing to let the hardware keep the dynamic entries as long as the 
authorized station is sending, but will age the entry out if the station 
keeps silent for the ageing time. But that patch set is dependent on 
this patch set, and I don't think I can send it before this is 
accepted...

> Please avoid leaking this implementation detail to user space and
> instead use the "MAB" flag to enable learning if you need it in
> mv88e6xxx.
> 
