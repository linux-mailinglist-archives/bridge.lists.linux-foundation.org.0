Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C485B149A94
	for <lists.bridge@lfdr.de>; Sun, 26 Jan 2020 13:49:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D28C8844A5;
	Sun, 26 Jan 2020 12:49:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 94N-GjoJ3OaN; Sun, 26 Jan 2020 12:49:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2AF0A80AE0;
	Sun, 26 Jan 2020 12:49:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0C425C0171;
	Sun, 26 Jan 2020 12:49:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2A66EC0171
 for <bridge@lists.linux-foundation.org>; Sun, 26 Jan 2020 12:49:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 141E185DF8
 for <bridge@lists.linux-foundation.org>; Sun, 26 Jan 2020 12:49:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F_VyLt6nhfbY for <bridge@lists.linux-foundation.org>;
 Sun, 26 Jan 2020 12:49:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C319785D52
 for <bridge@lists.linux-foundation.org>; Sun, 26 Jan 2020 12:49:18 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Horatiu.Vultur@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Horatiu.Vultur@microchip.com";
 x-sender="Horatiu.Vultur@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Horatiu.Vultur@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Horatiu.Vultur@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: pSDVn3chmLQfhl0uygt7Pv6ND1lo09LprktTom4Xw4jam8/UUciMtrMe5cMlLKvmmhaiasrWiU
 vUrtVuZrMnEJpmTBDPduve/PAZC7fzA9Meubjb/kWekJyP29CR8DvlYPHhmMcYglC7pk6bEwK5
 hYCDnbFL/I+dk7AjfRGm5Y2tr9m+ZfsjtOLuDuHnFCiRQdxrrNLfdDaMDhazIUmTRWtTMXA9Iw
 RErzsVpVFgzc1VEkJSoqur6Xib6LTge35ek9kCslUbS4rSI4H98jshEau6FVeR0nR/ImKNcUcz
 D94=
X-IronPort-AV: E=Sophos;i="5.70,365,1574146800"; d="scan'208";a="64538482"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Jan 2020 05:49:16 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 26 Jan 2020 05:49:14 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Sun, 26 Jan 2020 05:49:13 -0700
Date: Sun, 26 Jan 2020 13:49:11 +0100
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20200126124911.z5zh44agxbe6lwhh@soft-dev3.microsemi.net>
References: <20200124161828.12206-1-horatiu.vultur@microchip.com>
 <20200124161828.12206-10-horatiu.vultur@microchip.com>
 <20200125154248.GC18311@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20200125154248.GC18311@lunn.ch>
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

The 01/25/2020 16:42, Andrew Lunn wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Fri, Jan 24, 2020 at 05:18:27PM +0100, Horatiu Vultur wrote:
> > To integrate MRP into the bridge, the bridge needs to do the following:
> > - initialized and destroy the generic netlink used by MRP
> > - detect if the MRP frame was received on a port that is part of a MRP ring. In
> >   case it was not, then forward the frame as usual, otherwise redirect the frame
> >   to the upper layer.
> >
> > Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> > ---
> >  net/bridge/br.c         | 11 +++++++++++
> >  net/bridge/br_device.c  |  3 +++
> >  net/bridge/br_if.c      |  6 ++++++
> >  net/bridge/br_input.c   | 14 ++++++++++++++
> >  net/bridge/br_private.h | 14 ++++++++++++++
> >  5 files changed, 48 insertions(+)
> >
> > diff --git a/net/bridge/br.c b/net/bridge/br.c
> > index b6fe30e3768f..d5e556eed4ba 100644
> > --- a/net/bridge/br.c
> > +++ b/net/bridge/br.c
> > @@ -344,6 +344,12 @@ static int __init br_init(void)
> >       if (err)
> >               goto err_out5;
> >
> > +#ifdef CONFIG_BRIDGE_MRP
> > +     err = br_mrp_netlink_init();
> > +     if (err)
> > +             goto err_out6;
> > +#endif
> 
> Please try to avoid #ifdef's like this in C code. Add a stub function
> to br_private_mrp.h.
> 
> If you really cannot avoid #ifdef, please use #if IS_ENABLED(CONFIG_BRIDGE_MRP).
> That expands to
> 
>         if (0) {
> 
>         }
> 
> So the compiler will compile it and then optimize it out. That gives
> us added benefit of build testing, we don't suddenly find the code no
> longer compiles when we enable the option.
> 
> > --- a/net/bridge/br_input.c
> > +++ b/net/bridge/br_input.c
> > @@ -21,6 +21,9 @@
> >  #include <linux/rculist.h>
> >  #include "br_private.h"
> >  #include "br_private_tunnel.h"
> > +#ifdef CONFIG_BRIDGE_MRP
> > +#include "br_private_mrp.h"
> > +#endif
> 
> It should always be safe to include a header file.
> 
>    Andrew

Thanks for pointing out these mistakes. I will try to avoid all these
#ifdef's in the next patch series.

-- 
/Horatiu
