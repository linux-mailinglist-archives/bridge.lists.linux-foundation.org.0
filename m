Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A10401B6630
	for <lists.bridge@lfdr.de>; Thu, 23 Apr 2020 23:36:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D4AE0868B6;
	Thu, 23 Apr 2020 21:36:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PsOXYhFoTY9G; Thu, 23 Apr 2020 21:36:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C03F886D19;
	Thu, 23 Apr 2020 21:36:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A25C6C0175;
	Thu, 23 Apr 2020 21:36:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5107FC0175
 for <bridge@lists.linux-foundation.org>; Thu, 23 Apr 2020 21:36:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3A92787799
 for <bridge@lists.linux-foundation.org>; Thu, 23 Apr 2020 21:36:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n-XyXBQcrrwg for <bridge@lists.linux-foundation.org>;
 Thu, 23 Apr 2020 21:36:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2E1EC877A8
 for <bridge@lists.linux-foundation.org>; Thu, 23 Apr 2020 21:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=72UdNNtLattjMgSevGnzfPSXBZkjf27I30kkugB1DmQ=; b=RmofJN+fTjCmM2rwrw/KEjNZLZ
 CcbKjOFmi+/gf/a1raNbrZKZy2OaX1ivorkrY3i3KW7dizDQARSR/wODe68yEKLIZM7znPxYL1MbI
 28kc8FSDgS84dPAIbNBopHgrQBwxbWrqNgcz/3GyfRwKA4RY6lZhPtWSsPRBVKNGAgA4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jRjWV-004RzL-QO; Thu, 23 Apr 2020 23:36:43 +0200
Date: Thu, 23 Apr 2020 23:36:43 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Chuanhong Guo <gch981213@gmail.com>
Message-ID: <20200423213643.GC1054188@lunn.ch>
References: <20200419161946.19984-1-dqfext@gmail.com>
 <20200419164251.GM836632@lunn.ch>
 <CALW65jYmcZJoP_i5=bgeWpcibzOmEPne3mHyBngE5bTiOZreDw@mail.gmail.com>
 <20200420133111.GL785713@lunn.ch>
 <CAJsYDVLZQ=ci1wp1_P0RcwsV8z27zMn4CPHHpueDF7OZ-X9aEg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJsYDVLZQ=ci1wp1_P0RcwsV8z27zMn4CPHHpueDF7OZ-X9aEg@mail.gmail.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 netdev <netdev@vger.kernel.org>, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, "David S . Miller" <davem@davemloft.net>,
 DENG Qingfang <dqfext@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [RFC PATCH net-next] net: bridge: fix client roaming
 from DSA user port
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

On Wed, Apr 22, 2020 at 02:01:28PM +0800, Chuanhong Guo wrote:
> Hi!
> 
> On Tue, Apr 21, 2020 at 12:36 AM Andrew Lunn <andrew@lunn.ch> wrote:
> >
> > The MAC address needs to move, no argument there. But what are the
> > mechanisms which cause this. Is learning sufficient, or does DSA need
> > to take an active role?
> 
> cpu port learning will break switch operation if for whatever reason
> we want to disable bridge offloading (e.g. ebtables?). In this case
> a packet received from cpu port need to be sent back through
> cpu port to another switch port, and the switch will learn from this
> packet incorrectly.
> 
> If we want cpu port learning to kick in, we need to make sure that:
> 1. When bridge offload is enabled, the switch takes care of packet
>     flooding on switch ports itself, instead of flooding with software
>     bridge.

Hi Chuanhong

This is what the skb->offload_fwd_mark is all about. If this is set to
1, it means the switch has done all the forwarding needed for ports in
that switch. Most of the tag drivers set this unconditionally true.

> 2. Software bridge shouldn't forward any packet between ports
>     on the same switch.

If skb->offload_fwd_mark is true, it won't.

> 3. cpu port learning should only be enabled when bridge
>     offloading is used.

So it should be safe for most switch drivers. And the ones which don't
set offload_fwd_mark are probably relying of software bridging, or are
broken and replicating frames.

> It doesn't have to be a broadcast packet but it needs a packet to go
> through both bridges.
> 
> Say we have bridge A and bridge B, port A1 and B1 are connected
> together and a device is on port A2 first:
> Bridge A knows that this device is on port A2 and will forward traffic
> through A1 to B1 if needed. Bridge B sees these packets and knows
> device is on port B1.
> When the device move from A2 to B2, B updates its fdb and if a
> packet reaches A, A will update its fdb too.

The issue here is 'if a packet reaches A'. B might have no reason to
send a unicast packet to A, if none of the destinations the device is
talking to is reached via A. Which is why i think a
broadcast/multicast packet is more likely to be involved.

		    Andrew
