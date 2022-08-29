Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2047F5A51AE
	for <lists.bridge@lfdr.de>; Mon, 29 Aug 2022 18:26:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0DD3B4049F;
	Mon, 29 Aug 2022 16:26:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0DD3B4049F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nB0Nlf5FugJD; Mon, 29 Aug 2022 16:26:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 291E7404EB;
	Mon, 29 Aug 2022 16:26:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 291E7404EB
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C3A09C0078;
	Mon, 29 Aug 2022 16:26:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 01B42C002D
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 16:26:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CA5D5813E3
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 16:26:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA5D5813E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w3cFJC2BD9qy for <bridge@lists.linux-foundation.org>;
 Mon, 29 Aug 2022 16:26:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E330080D69
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E330080D69
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 16:26:43 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id C6634188488E;
 Mon, 29 Aug 2022 16:26:41 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id BD87425032B7;
 Mon, 29 Aug 2022 16:26:41 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id B1D6C9EC0002; Mon, 29 Aug 2022 16:26:41 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Mon, 29 Aug 2022 18:26:41 +0200
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <Ywzlfzns/vDDiKB1@shredder>
References: <20220826114538.705433-1-netdev@kapio-technology.com>
 <20220826114538.705433-2-netdev@kapio-technology.com>
 <e9eb5b72-073a-f182-13b7-37fc53611d5f@blackwall.org>
 <972663825881d135d19f9e391b2b7587@kapio-technology.com>
 <Ywzlfzns/vDDiKB1@shredder>
User-Agent: Gigahost Webmail
Message-ID: <1bfb557cbae4a640b7e042d202c677cb@kapio-technology.com>
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
Subject: Re: [Bridge] [PATCH v5 net-next 1/6] net: bridge: add locked entry
 fdb flag to extend locked port feature
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

On 2022-08-29 18:12, Ido Schimmel wrote:
> On Mon, Aug 29, 2022 at 04:02:46PM +0200, netdev@kapio-technology.com 
> wrote:
>> On 2022-08-27 13:30, Nikolay Aleksandrov wrote:
>> > On 26/08/2022 14:45, Hans Schultz wrote:
>> >
>> > Hi,
>> > Please add the blackhole flag in a separate patch.
>> > A few more comments and questions below..
>> >
>> 
>> Hi,
>> if userspace is to set this flag I think I need to change stuff in
>> rtnetlink.c, as I will need to extent struct ndmsg with a new u32 
>> entry as
>> the old u8 flags is full.
> 
> You cannot extend 'struct ndmsg'. That's why 'NDA_FLAGS_EXT' was
> introduced. See:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=2c611ad97a82b51221bb0920cc6cac0b1d4c0e52
> 
> 'NTF_EXT_BLACKHOLE' belongs in 'NDA_FLAGS_EXT' like you have it now, 
> but
> the kernel should not reject it in br_fdb_add().
> 
>> Maybe this is straight forward, but I am not so sure as I don't know 
>> that
>> code too well. Maybe someone can give me a hint...?

Thanks! I see that I was in trouble there... :D
