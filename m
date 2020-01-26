Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 06256149AA6
	for <lists.bridge@lfdr.de>; Sun, 26 Jan 2020 14:01:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BF8D185CD0;
	Sun, 26 Jan 2020 13:01:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SdRJXKl3OJRE; Sun, 26 Jan 2020 13:01:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id BD7E985F6D;
	Sun, 26 Jan 2020 13:01:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A07FBC0171;
	Sun, 26 Jan 2020 13:01:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6CBC5C0171
 for <bridge@lists.linux-foundation.org>; Sun, 26 Jan 2020 13:01:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 59E222044B
 for <bridge@lists.linux-foundation.org>; Sun, 26 Jan 2020 13:01:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pXYRbaBkMMVn for <bridge@lists.linux-foundation.org>;
 Sun, 26 Jan 2020 13:01:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by silver.osuosl.org (Postfix) with ESMTPS id 670902043C
 for <bridge@lists.linux-foundation.org>; Sun, 26 Jan 2020 13:01:16 +0000 (UTC)
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Horatiu.Vultur@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Horatiu.Vultur@microchip.com";
 x-sender="Horatiu.Vultur@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Horatiu.Vultur@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Horatiu.Vultur@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: yNCRfbb5cMs/w6zEcQdPDA6GeBmY+GKZJ5wCk1a4e0ElcxTwrjvSCEh4aY7OO3/Yf+PCymD+9y
 7iNAZVqxGAcwkU8B5v+UU8UyHxCoV0whApn/ab1bYQ9kUPqwI1OApR15ekPOFbm9UunnKlXbPF
 DbMIJst1Vazz82Q8noRpkiLpQV1Zivy+jOSLnsAqJWAtMm08duUVXycpszJrC6Va/Wbse4+q0s
 7gnkZBAYgNCrtwYDKlqJjhAhEKtdzSt0AIYcNJ7ZyES4AdQDepmDnTfNeT6C6uC4PLNZ7VLYjd
 2fA=
X-IronPort-AV: E=Sophos;i="5.70,365,1574146800"; d="scan'208";a="63134271"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Jan 2020 06:01:13 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 26 Jan 2020 06:01:12 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Sun, 26 Jan 2020 06:01:12 -0700
Date: Sun, 26 Jan 2020 14:01:11 +0100
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20200126130111.o75gskwe2fmfd4g5@soft-dev3.microsemi.net>
References: <20200124161828.12206-1-horatiu.vultur@microchip.com>
 <20200124161828.12206-10-horatiu.vultur@microchip.com>
 <20200125161615.GD18311@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20200125161615.GD18311@lunn.ch>
User-Agent: NeoMutt/20180716
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

The 01/25/2020 17:16, Andrew Lunn wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> >  br_netif_receive_skb(struct net *net, struct sock *sk, struct sk_buff *skb)
> > @@ -338,6 +341,17 @@ rx_handler_result_t br_handle_frame(struct sk_buff **pskb)
> >                       return RX_HANDLER_CONSUMED;
> >               }
> >       }
> > +#ifdef CONFIG_BRIDGE_MRP
> > +     /* If there is no MRP instance do normal forwarding */
> > +     if (!p->mrp_aware)
> > +             goto forward;
> > +
> > +     if (skb->protocol == htons(ETH_P_MRP))
> > +             return RX_HANDLER_PASS;
> 
> What MAC address is used for these MRP frames? It would make sense to
> use a L2 link local destination address, since i assume they are not
> supposed to be forwarded by the bridge. If so, you could extend the
> if (unlikely(is_link_local_ether_addr(dest))) condition.

The MAC addresses used by MRP frames are:
0x1, 0x15, 0x4e, 0x0, 0x0, 0x1 - used by MRP_Test frames
0x1, 0x15, 0x4e, 0x0, 0x0, 0x2 - used by the rest of MRP frames.

If we will add support also for MIM/MIC. These requires 2 more MAC
addresses:
0x1, 0x15, 0x4e, 0x0, 0x0, 0x3 - used by MRP_InTest frames.
0x1, 0x15, 0x4e, 0x0, 0x0, 0x4 - used by the other MRP interconnect
frames.

Then maybe I shoukd change the check to be something like:
if (unlikely(skb->protocol == htons(ETH_P_MRP)))

> 
> > +
> > +     if (p->state == BR_STATE_BLOCKING)
> > +             goto drop;
> > +#endif
> 
> Is this needed? The next block of code is a switch statement on
> p->state. The default case, which BR_STATE_BLOCKING should hit, is
> drop.

Yes you are rigth, it is not needed anymore.

> 
> This function is on the hot path. So we should try to optimize it as
> much as possible.
> 
>      Andrew

-- 
/Horatiu
