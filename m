Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80224149C01
	for <lists.bridge@lfdr.de>; Sun, 26 Jan 2020 18:13:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2F8BB2044E;
	Sun, 26 Jan 2020 17:13:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OqLjrOnl3vkD; Sun, 26 Jan 2020 17:13:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id A92BB2043C;
	Sun, 26 Jan 2020 17:13:01 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 97425C0171;
	Sun, 26 Jan 2020 17:13:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6B2F5C0171
 for <bridge@lists.linux-foundation.org>; Sun, 26 Jan 2020 17:12:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 52CF42043C
 for <bridge@lists.linux-foundation.org>; Sun, 26 Jan 2020 17:12:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N9nAdv7CRtsc for <bridge@lists.linux-foundation.org>;
 Sun, 26 Jan 2020 17:12:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by silver.osuosl.org (Postfix) with ESMTPS id 43379203D4
 for <bridge@lists.linux-foundation.org>; Sun, 26 Jan 2020 17:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=l5amRRhffN7SW+44mi2KiL5Riiwg1WKIl4fQH5PcALQ=; b=gdiTF4HzVAZqXHazDeHDojZQmF
 OoDj01/uxiE5MDEfOJoqDGfqqBk/NKjf7bwsWcexlTw2IBQgFSGKBS4HPQBl+LmH4Bx4zD6IYfkuj
 K3Y3naQ8t4KO3zeswScGgZXhuWMRYYkt7c97i9gObQzDMI78/Mfr8d6Kct4zoameC4ps=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1ivlSt-0002M2-4A; Sun, 26 Jan 2020 18:12:51 +0100
Date: Sun, 26 Jan 2020 18:12:51 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Message-ID: <20200126171251.GK18311@lunn.ch>
References: <20200124161828.12206-1-horatiu.vultur@microchip.com>
 <20200124161828.12206-10-horatiu.vultur@microchip.com>
 <20200125161615.GD18311@lunn.ch>
 <20200126130111.o75gskwe2fmfd4g5@soft-dev3.microsemi.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200126130111.o75gskwe2fmfd4g5@soft-dev3.microsemi.net>
Cc: ivecera@redhat.com, jiri@resnulli.us, nikolay@cumulusnetworks.com,
 netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, anirudh.venkataramanan@intel.com,
 jeffrey.t.kirsher@intel.com, olteanv@gmail.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next v3 09/10] net: bridge: mrp: Integrate
 MRP into the bridge
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

On Sun, Jan 26, 2020 at 02:01:11PM +0100, Horatiu Vultur wrote:
> The 01/25/2020 17:16, Andrew Lunn wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> > 
> > >  br_netif_receive_skb(struct net *net, struct sock *sk, struct sk_buff *skb)
> > > @@ -338,6 +341,17 @@ rx_handler_result_t br_handle_frame(struct sk_buff **pskb)
> > >                       return RX_HANDLER_CONSUMED;
> > >               }
> > >       }
> > > +#ifdef CONFIG_BRIDGE_MRP
> > > +     /* If there is no MRP instance do normal forwarding */
> > > +     if (!p->mrp_aware)
> > > +             goto forward;
> > > +
> > > +     if (skb->protocol == htons(ETH_P_MRP))
> > > +             return RX_HANDLER_PASS;
> > 
> > What MAC address is used for these MRP frames? It would make sense to
> > use a L2 link local destination address, since i assume they are not
> > supposed to be forwarded by the bridge. If so, you could extend the
> > if (unlikely(is_link_local_ether_addr(dest))) condition.
> 
> The MAC addresses used by MRP frames are:
> 0x1, 0x15, 0x4e, 0x0, 0x0, 0x1 - used by MRP_Test frames
> 0x1, 0x15, 0x4e, 0x0, 0x0, 0x2 - used by the rest of MRP frames.
> 
> If we will add support also for MIM/MIC. These requires 2 more MAC
> addresses:
> 0x1, 0x15, 0x4e, 0x0, 0x0, 0x3 - used by MRP_InTest frames.
> 0x1, 0x15, 0x4e, 0x0, 0x0, 0x4 - used by the other MRP interconnect
> frames.

Hi Horatiu

I made the wrong guess about how this protocol worked when i said L2
link local. These MAC addresses are L2 multicast.

And you are using a raw socket to receive them into userspace when
needed.

'Thinking allowed' here.

    +------------------------------------------+
    |                                          |
    +-->|H1|<---------->|H2|<---------->|H3|<--+
    eth0    eth1    eth0    eth1    eth0    eth1
     ^
     |
  Blocked


There are three major classes of user case here:

1) Pure software solution

You need the software bridge in the client to forward these frames
from the left side to the right side. (Does the standard give these
two ports names)? In the master, the left port is blocked, so the
bridge drops them anyway. You have a RAW socket open on both eth0 and
eth1, so you get to see the frames, even if the bridge drops them.

2) Hardware offload to an MRP unaware switch.

I'm thinking about a plain switch supported by DSA, Marvell, Broadcom,
etc. It has no special knowledge of MRP.

Ideally, you want the switch to forward MRP_Test frames left to right
for a client. In a master, i think you have a problem, since the port
is blocked. The hardware is unlikely to recognise these frames as
special, since they are not in the 01-80-C2-XX-XX-XX block, and let
them through. So your raw socket is never going to see them, and you
cannot detect open/closed ring.

I don't know how realistic it is to support MRP in this case, and i
also don't think you can fall back to a pure software solution,
because the software bridge is going to offload the basic bridge
operation to the hardware. It would be nice if you could detect this,
and return -EOPNOTSUPP.

3) Hardware offload to an MRP aware switch.

For a client, you tell it which port is left, which is right, and
assume it forwards the frames. For a master, you again tell it which
is left, which is right, and ask it send MRP_Test frames out right,
and report changes in open/closed on the right port. You don't need
the CPU to see the MRP_Test frames, so the switch has no need to
forward them to the CPU.

We should think about the general case of a bridge with many ports,
and many pairs of ports using MRP. This makes the forwarding of these
frames interesting. Given that they are multicast, the default action
of the software bridge is that it will flood them. Does the protocol
handle seeing MRP_Test from some other loop? Do we need to avoid this?
You could avoid this by adding MDB entries to the bridge. However,
this does not scale to more then one ring. I don't think an MDB is
associated to an ingress port. So you cannot say 

0x1, 0x15, 0x4e, 0x0, 0x0, 0x1 ingress port1 egress port2
0x1, 0x15, 0x4e, 0x0, 0x0, 0x1 ingress port3 egress port4

The best you can say is

0x1, 0x15, 0x4e, 0x0, 0x0, 0x1 egress port2, port4

I'm sure there are other issues i'm missing, but it is interesting to
think about all this.

Andrew
