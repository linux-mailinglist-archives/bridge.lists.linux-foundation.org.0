Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D968C51CDE8
	for <lists.bridge@lfdr.de>; Fri,  6 May 2022 03:18:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1D3B0840A7;
	Fri,  6 May 2022 01:18:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e8gl-bCwdLAc; Fri,  6 May 2022 01:18:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id A5703840A8;
	Fri,  6 May 2022 01:18:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5A3ADC0081;
	Fri,  6 May 2022 01:18:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 60A24C002D
 for <bridge@lists.linux-foundation.org>; Fri,  6 May 2022 01:18:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3B6D2419EB
 for <bridge@lists.linux-foundation.org>; Fri,  6 May 2022 01:18:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=lunn.ch
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TH-4IKpcJP5t for <bridge@lists.linux-foundation.org>;
 Fri,  6 May 2022 01:18:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 607EB419E5
 for <bridge@lists.linux-foundation.org>; Fri,  6 May 2022 01:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=89A3BqXn4ZfRMO7Ga9StvWtqN0uFnQeeWAfsGXHRlfI=; b=TSN5kgFyrD/tYwoRaqBN6EsGDD
 0WxhwTFKFyUZJV5sF/y6WmIcP5idQgqlPwU5RvmR5uV38BuYqXo2QofLaN3C1Fa1NNUJKbb15dj65
 KiVfy66yoRToq9J/GR9lOuLniVogpD8CE/oDh0ZVvUSKpEhdkqRoO06aJZimBLYm5EYE=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1nmmbu-001RvF-Kv; Fri, 06 May 2022 03:18:22 +0200
Date: Fri, 6 May 2022 03:18:22 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Stephen Hemminger <stephen@networkplumber.org>
Message-ID: <YnR3XikvI4tQy5IL@lunn.ch>
References: <20220505225904.342388-1-andrew@lunn.ch>
 <20220505160720.27358a55@hermes.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220505160720.27358a55@hermes.local>
Cc: Ido Schimmel <idosch@mellanox.com>, netdev <netdev@vger.kernel.org>,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Vladimir Oltean <vladimir.oltean@nxp.com>
Subject: Re: [Bridge] [PATCH RFC] net: bridge: Clear offload_fwd_mark when
 passing frame up bridge interface.
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

On Thu, May 05, 2022 at 04:07:20PM -0700, Stephen Hemminger wrote:
> On Fri,  6 May 2022 00:59:04 +0200
> Andrew Lunn <andrew@lunn.ch> wrote:
> 
> > It is possible to stack bridges on top of each other. Consider the
> > following which makes use of an Ethernet switch:
> > 
> >        br1
> >      /    \
> >     /      \
> >    /        \
> >  br0.11    wlan0
> >    |
> >    br0
> >  /  |  \
> > p1  p2  p3
> > 
> > br0 is offloaded to the switch. Above br0 is a vlan interface, for
> > vlan 11. This vlan interface is then a slave of br1. br1 also has
> > wireless interface as a slave. This setup trunks wireless lan traffic
> > over the copper network inside a VLAN.
> > 
> > A frame received on p1 which is passed up to the bridge has the
> > skb->offload_fwd_mark flag set to true, indicating it that the switch
> > has dealt with forwarding the frame out ports p2 and p3 as
> > needed. This flag instructs the software bridge it does not need to
> > pass the frame back down again. However, the flag is not getting reset
> > when the frame is passed upwards. As a result br1 sees the flag,
> > wrongly interprets it, and fails to forward the frame to wlan0.
> > 
> > When passing a frame upwards, clear the flag.
> > 
> > RFC because i don't know the bridge code well enough if this is the
> > correct place to do this, and if there are any side effects, could the
> > skb be a clone, etc.
> > 
> > Fixes: f1c2eddf4cb6 ("bridge: switchdev: Use an helper to clear forward mark")
> > Signed-off-by: Andrew Lunn <andrew@lunn.ch>
> 
> Bridging of bridges is not supposed to be allowed.
> See:
> 
> bridge:br_if.c
> 
> 	/* No bridging of bridges */
> 	if (dev->netdev_ops->ndo_start_xmit == br_dev_xmit) {
> 		NL_SET_ERR_MSG(extack,
> 			       "Can not enslave a bridge to a bridge");
> 		return -ELOOP;
> 	}

This is not direct bridging of bridges. There is a vlan interface in
the middle. And even if it is not supposed to work, it does work, it
is being used, and it regressed. This fixes the regression.

   Andrew
