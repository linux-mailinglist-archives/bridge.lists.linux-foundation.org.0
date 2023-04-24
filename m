Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC0D6ED185
	for <lists.bridge@lfdr.de>; Mon, 24 Apr 2023 17:37:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2A9B9404B1;
	Mon, 24 Apr 2023 15:37:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A9B9404B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x_Ve9VrBTwe5; Mon, 24 Apr 2023 15:37:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 806EF40439;
	Mon, 24 Apr 2023 15:37:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 806EF40439
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 23A04C008A;
	Mon, 24 Apr 2023 15:37:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 89453C002A
 for <bridge@lists.linux-foundation.org>; Mon, 24 Apr 2023 15:36:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 64C8881F85
 for <bridge@lists.linux-foundation.org>; Mon, 24 Apr 2023 15:36:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 64C8881F85
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g5bI6KXGg5vs for <bridge@lists.linux-foundation.org>;
 Mon, 24 Apr 2023 15:36:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2841E81F7C
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2841E81F7C
 for <bridge@lists.linux-foundation.org>; Mon, 24 Apr 2023 15:36:54 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id D1858188374C;
 Mon, 24 Apr 2023 15:36:50 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id C669825004C3;
 Mon, 24 Apr 2023 15:36:45 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id BD4F79B403F7; Mon, 24 Apr 2023 15:36:45 +0000 (UTC)
X-Screener-Id: e32ae469fa6e394734d05373d3a705875723cf1e
Received: from fujitsu (2-104-116-184-cable.dk.customer.tdc.net
 [2.104.116.184])
 by smtp.gigahost.dk (Postfix) with ESMTPSA id 6373D9B403F4;
 Mon, 24 Apr 2023 15:36:45 +0000 (UTC)
From: Hans Schultz <netdev@kapio-technology.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20230424122631.d7kwfwmlwvqjo3pz@skbuf>
References: <20230418155902.898627-1-vladimir.oltean@nxp.com>
 <875y9nt27g.fsf@kapio-technology.com>
 <20230424122631.d7kwfwmlwvqjo3pz@skbuf>
Date: Mon, 24 Apr 2023 17:33:44 +0200
Message-ID: <87jzy11ehz.fsf@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, bridge@lists.linux-foundation.org,
 Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, Roopa Prabhu <roopa@nvidia.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S.
 Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v2 net] net: bridge: switchdev: don't notify
 FDB entries with "master dynamic"
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

On Mon, Apr 24, 2023 at 15:26, Vladimir Oltean <vladimir.oltean@nxp.com> wrote:
> On Sun, Apr 23, 2023 at 10:47:15AM +0200, Hans Schultz wrote:
>> I do not understand this patch. It seems to me that it basically blocks
>> any future use of dynamic fdb entries from userspace towards drivers.
>> 
>> I would have expected that something would be done in the DSA layer,
>> where (switchcore) drivers would be able to set some flags to indicate
>> which features are supported by the driver, including non-static
>> fdb entries. But as the placement here is earlier in the datapath from
>> userspace towards drivers it's not possible to do any such thing in the
>> DSA layer wrt non-static fdb entries.
>
> As explained too many times already in the thread here:
> https://patchwork.kernel.org/project/netdevbpf/patch/20230318141010.513424-3-netdev@kapio-technology.com/
> the plan is:

Ahh yes thanks, I see the comment you wrote on march the 27th.
