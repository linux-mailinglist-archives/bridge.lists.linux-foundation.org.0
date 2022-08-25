Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBCE5A1285
	for <lists.bridge@lfdr.de>; Thu, 25 Aug 2022 15:42:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C616A40C79;
	Thu, 25 Aug 2022 13:42:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C616A40C79
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 39to_Q4cC7Hd; Thu, 25 Aug 2022 13:42:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 59A42400CB;
	Thu, 25 Aug 2022 13:42:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 59A42400CB
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0295DC007B;
	Thu, 25 Aug 2022 13:42:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 164BDC002D
 for <bridge@lists.linux-foundation.org>; Thu, 25 Aug 2022 13:42:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D68CB418A7
 for <bridge@lists.linux-foundation.org>; Thu, 25 Aug 2022 13:42:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D68CB418A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PTBWGq7ZahLJ for <bridge@lists.linux-foundation.org>;
 Thu, 25 Aug 2022 13:41:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 88EBE418C0
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 88EBE418C0
 for <bridge@lists.linux-foundation.org>; Thu, 25 Aug 2022 13:41:55 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 7BDFC1884D63;
 Thu, 25 Aug 2022 13:41:49 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 733B225032B7;
 Thu, 25 Aug 2022 13:41:49 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 571599EC0002; Thu, 25 Aug 2022 13:41:49 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Thu, 25 Aug 2022 15:41:49 +0200
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <Ywdj2+mIQFR6+drZ@shredder>
References: <5a4cfc6246f621d006af69d4d1f61ed1@kapio-technology.com>
 <YvkM7UJ0SX+jkts2@shredder>
 <34dd1318a878494e7ab595f8727c7d7d@kapio-technology.com>
 <YwHZ1J9DZW00aJDU@shredder>
 <7016ed2ce9a30537e4278e37878900d8@kapio-technology.com>
 <Ywc/qTNqVbS4E7zS@shredder>
 <7dfe15571370dfb5348a3d0e5478f62c@kapio-technology.com>
 <Ywdj2+mIQFR6+drZ@shredder>
User-Agent: Gigahost Webmail
Message-ID: <6fa538a1489a73fdf8b1fa92785185aa@kapio-technology.com>
X-Sender: netdev@kapio-technology.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v4 net-next 3/6] drivers: net: dsa: add locked
 fdb entry flag to drivers
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

On 2022-08-25 13:58, Ido Schimmel wrote:
> On Thu, Aug 25, 2022 at 12:27:01PM +0200, netdev@kapio-technology.com 
> wrote:
> 
> Instead of skipping it you can check that roaming fails when "sticky" 
> is
> set.
> 

I think that the sticky flag topic generally is beyond the MAB feature, 
and it doesn't really fit into the bridge_locked_port.sh.
But anyhow I guess I can add it to the bridge_sticky_fdb.sh tests.

>> 
>> The bridge_locked_port.sh test is linked in
>> tools/testing/selftests/drivers/net/dsa/, but if I cannot check if the
>> mv88e6xxx driver or other switchcores are in use, I cannot do more.
> 
> Since the behavior of the HW data path is reflected to the software
> bridge and user space via "sticky" / "blackhole" / "extern_learn", you
> should be able to add test cases to the generic selftest. For example,
> if "blackhole" is set, then simple ping is expected to fail. Otherwise
> it is expected to pass.

The problem here is that the "blackhole" flag can only be set now from 
the mv88e6xxx driver under a locked port, and the locked port itself 
will not allow ping to work anyhow without a FDB entry free of the 
"locked" flag, as the MAB tests verify.
And disabling MAB on the locked port on the mv88e6xxx will clean the 
locked entries.

So I see it as a flag for future use, otherwise I will have to add a 
userspace command to enable the "blackhole" flag.


I have now made station move tests for both the locked port and MAB 
cases.
