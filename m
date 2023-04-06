Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E37426D9D8B
	for <lists.bridge@lfdr.de>; Thu,  6 Apr 2023 18:29:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB71A41EC3;
	Thu,  6 Apr 2023 16:29:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB71A41EC3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ViO86dQqrwAT; Thu,  6 Apr 2023 16:29:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id E683541D87;
	Thu,  6 Apr 2023 16:29:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E683541D87
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A2BC1C008C;
	Thu,  6 Apr 2023 16:29:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C4D00C002A
 for <bridge@lists.linux-foundation.org>; Thu,  6 Apr 2023 16:29:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 92D74843B3
 for <bridge@lists.linux-foundation.org>; Thu,  6 Apr 2023 16:29:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92D74843B3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s078csQwofll for <bridge@lists.linux-foundation.org>;
 Thu,  6 Apr 2023 16:29:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E0DF0843AB
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E0DF0843AB
 for <bridge@lists.linux-foundation.org>; Thu,  6 Apr 2023 16:29:50 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 2805518835E0;
 Thu,  6 Apr 2023 16:29:44 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 178B125002BB;
 Thu,  6 Apr 2023 16:29:44 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 0DE709B403E2; Thu,  6 Apr 2023 16:29:44 +0000 (UTC)
X-Screener-Id: e32ae469fa6e394734d05373d3a705875723cf1e
Received: from fujitsu (2-104-116-184-cable.dk.customer.tdc.net
 [2.104.116.184])
 by smtp.gigahost.dk (Postfix) with ESMTPSA id 56BB791201E3;
 Thu,  6 Apr 2023 16:29:43 +0000 (UTC)
From: Hans Schultz <netdev@kapio-technology.com>
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20230406152443.b3ps4x7e4kz4aes2@skbuf>
References: <20230318141010.513424-1-netdev@kapio-technology.com>
 <20230318141010.513424-7-netdev@kapio-technology.com>
 <ZBgdAo8mxwnl+pEE@shredder> <87a5zzh65p.fsf@kapio-technology.com>
 <ZCMYbRqd+qZaiHfu@shredder> <874jq22h2u.fsf@kapio-technology.com>
 <20230330192714.oqosvifrftirshej@skbuf>
 <871ql5mjjp.fsf@kapio-technology.com>
 <20230331093732.s6loozkdhehewlm4@skbuf>
 <87tty1nlb4.fsf@kapio-technology.com>
 <20230406152443.b3ps4x7e4kz4aes2@skbuf>
Date: Thu, 06 Apr 2023 18:26:58 +0200
Message-ID: <87wn2pj7sd.fsf@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, open list <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "open
 list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>, "moderated
 list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Ido Schimmel <idosch@nvidia.com>, kuba@kernel.org,
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
 netdev@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET SWITCH DRIVER"
 <UNGLinuxDriver@microchip.com>, "open list:RENESAS RZ/N1
 A5PSW SWITCH DRIVER" <linux-renesas-soc@vger.kernel.org>, davem@davemloft.net
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

On Thu, Apr 06, 2023 at 18:24, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Fri, Mar 31, 2023 at 02:43:11PM +0200, Hans Schultz wrote:
>> I will as long as the system is as it is with these selftests, just run
>> single subtests at a time on target, but if I have new phy problems like
>> the one you have seen I have had before, then testing on target becomes
>> off limits.
>
> Please open a dedicated communication channel (separate email thread on
> netdev@vger.kernel.org) with the appropriate maintainers for the PHY
> code that is failing for you in To:, and you will get the help that you
> need to resolve that and to be able to test on the target board.

The errors from the phy I saw in February. Maybe something was fixed in
the meantime as I did not see the same warning and exception last I
tried to run the newest kernel on target a little over a week ago.
