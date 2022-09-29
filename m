Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A738F5EF9F8
	for <lists.bridge@lfdr.de>; Thu, 29 Sep 2022 18:14:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F59041B49;
	Thu, 29 Sep 2022 16:14:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F59041B49
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D7wdEz9kWHli; Thu, 29 Sep 2022 16:14:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 59CCA41B4A;
	Thu, 29 Sep 2022 16:14:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59CCA41B4A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0C370C007C;
	Thu, 29 Sep 2022 16:14:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7BC14C002D
 for <bridge@lists.linux-foundation.org>; Thu, 29 Sep 2022 16:14:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 49E4F60BF6
 for <bridge@lists.linux-foundation.org>; Thu, 29 Sep 2022 16:14:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 49E4F60BF6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u27RHVU0kuXd for <bridge@lists.linux-foundation.org>;
 Thu, 29 Sep 2022 16:14:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95E0460B4C
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 95E0460B4C
 for <bridge@lists.linux-foundation.org>; Thu, 29 Sep 2022 16:14:13 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 462101884BA5;
 Thu, 29 Sep 2022 16:14:11 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 3F4F32500370;
 Thu, 29 Sep 2022 16:14:11 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 34F409EC0002; Thu, 29 Sep 2022 16:14:11 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Thu, 29 Sep 2022 18:14:11 +0200
From: netdev@kapio-technology.com
To: Stephen Hemminger <stephen@networkplumber.org>
In-Reply-To: <20220929084312.2a216698@hermes.local>
References: <20220929152137.167626-1-netdev@kapio-technology.com>
 <20220929152137.167626-2-netdev@kapio-technology.com>
 <20220929084312.2a216698@hermes.local>
User-Agent: Gigahost Webmail
Message-ID: <6de8a39832ebb15fc5e8c2f19e469514@kapio-technology.com>
X-Sender: netdev@kapio-technology.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Joachim Wiberg <troglobit@gmail.com>,
 UNGLinuxDriver@microchip.com, Shuah Khan <shuah@kernel.org>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Florent Fourcot <florent.fourcot@wifirst.fr>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Yuwei Wang <wangyuweihx@gmail.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Amit Cohen <amcohen@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 Hans Schultz <schultz.hans@gmail.com>, Sean Wang <sean.wang@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Petr Machata <petrm@nvidia.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christian Marangi <ansuelsmth@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH iproute2-next 2/2] bridge: fdb: enable FDB
 blackhole feature
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

On 2022-09-29 17:43, Stephen Hemminger wrote:
> On Thu, 29 Sep 2022 17:21:37 +0200
> Hans Schultz <netdev@kapio-technology.com> wrote:
> 
>> 
>> @@ -493,6 +496,8 @@ static int fdb_modify(int cmd, int flags, int 
>> argc, char **argv)
>>  			req.ndm.ndm_flags |= NTF_EXT_LEARNED;
>>  		} else if (matches(*argv, "sticky") == 0) {
>>  			req.ndm.ndm_flags |= NTF_STICKY;
>> +		} else if (matches(*argv, "blackhole") == 0) {
>> +			ext_flags |= NTF_EXT_BLACKHOLE;
>>  		} else {
>>  			if (strcmp(*argv, "to") == 0)
>>  				NEXT_ARG();
> 
> The parsing of flags is weird here, most of the flags are compared with 
> strcmp()
> but some use matches()..  I should have used strcmp() all the time; but 
> at the
> time did not realize what kind of confusion matches() can cause.

Maybe just change all of them then, and then how about using strncmp() 
and maybe also strnlen() instead?
