Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB2A31DD21
	for <lists.bridge@lfdr.de>; Wed, 17 Feb 2021 17:18:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CC30D85585;
	Wed, 17 Feb 2021 16:18:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B9kPOe0V--Wd; Wed, 17 Feb 2021 16:18:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2798B85643;
	Wed, 17 Feb 2021 16:18:53 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F3E31C1DA9;
	Wed, 17 Feb 2021 16:18:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4AA5FC013A
 for <bridge@lists.linux-foundation.org>; Wed, 17 Feb 2021 16:18:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3942585585
 for <bridge@lists.linux-foundation.org>; Wed, 17 Feb 2021 16:18:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id acS_aKCrdIDu for <bridge@lists.linux-foundation.org>;
 Wed, 17 Feb 2021 16:18:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7181D854DB
 for <bridge@lists.linux-foundation.org>; Wed, 17 Feb 2021 16:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1613578730; x=1645114730;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Cs4BA7FTmjYzHJsFq1qDXA+grIoaOTs9jb/eR7cncrc=;
 b=EZ14kR3rjvYRt1242CdfpIjaakRelewHHAfJPsUSXAQkybJoQYxmb5pF
 Nt3nj1rKZhZo2re86ysA9nbw6QMjkXYbB1FUo8ZEOyrCwL9pWK+7EHeh0
 ezwRN5zRwlcJBo9OLLXzDyaiTJ0ZXSilFzDcjLgdx3956XLOqI4hSF/f8
 CRl45vcqCmKUAu295ljC7lRJQGlT6n+nCJGQXwJSJj/3QfY6/dBl7Vwas
 pN/54CaRGp0biX8UwlFAyjIfS7J5DUCq3bld6qVmTjnG6IPEmK7+IBk5s
 Ikw3pJyLAK0NyBwsQf/Xxem42lf6TfHu+zsVk3IuH0vkc466jsodP4DVi g==;
IronPort-SDR: KIECLvx6Y04Xxp7Nx/aNJRKTcHeDcZNBNyXo5IgQYH4Hn4tWRG4cbKD37H0G+Yp8jLBJSZaqhR
 2Q6KC24saFrgKMR029tvuX+MX3AGPUg0d30jI5sZywy71oHRdtljd6qBeHB4qOJbHPXMa99JGX
 VqjrorV51nLn5t8Tw8fU3DT/cmCx24i2IXHuGZz5bVgEs9qOVaViqeOjisWffPcr/ekeLmofFN
 MUN8iGwJPTpzWbSpz/JnujVrw/guujmRrg11TZZSE70YtWUmontJMRs0ALp/MXvV14X83+Ohug
 WEo=
X-IronPort-AV: E=Sophos;i="5.81,184,1610434800"; d="scan'208";a="106969729"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Feb 2021 09:18:48 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 17 Feb 2021 09:18:48 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Wed, 17 Feb 2021 09:18:48 -0700
Date: Wed, 17 Feb 2021 17:18:47 +0100
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <20210217161847.6ntm52kqk7ygata7@soft-dev3.localdomain>
References: <20210216214205.32385-1-horatiu.vultur@microchip.com>
 <20210216214205.32385-6-horatiu.vultur@microchip.com>
 <20210217105951.5nyfclvf6e2p2nkf@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20210217105951.5nyfclvf6e2p2nkf@skbuf>
Cc: "ivecera@redhat.com" <ivecera@redhat.com>,
 "andrew@lunn.ch" <andrew@lunn.ch>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "rasmus.villemoes@prevas.dk" <rasmus.villemoes@prevas.dk>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "vivien.didelot@gmail.com" <vivien.didelot@gmail.com>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 "nikolay@nvidia.com" <nikolay@nvidia.com>,
 "roopa@nvidia.com" <roopa@nvidia.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next v4 5/8] bridge: mrp: Update br_mrp to
 use new return values of br_mrp_switchdev
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
From: Horatiu Vultur via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Horatiu Vultur <horatiu.vultur@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

The 02/17/2021 10:59, Vladimir Oltean wrote:
> 
> On Tue, Feb 16, 2021 at 10:42:02PM +0100, Horatiu Vultur wrote:
> > diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
> > index 01c67ed727a9..12487f6fe9b4 100644
> > --- a/net/bridge/br_mrp.c
> > +++ b/net/bridge/br_mrp.c
> > @@ -639,7 +639,7 @@ int br_mrp_set_ring_role(struct net_bridge *br,
> >                        struct br_mrp_ring_role *role)
> >  {
> >       struct br_mrp *mrp = br_mrp_find_id(br, role->ring_id);
> > -     int err;
> > +     enum br_mrp_hw_support support;
> >
> >       if (!mrp)
> >               return -EINVAL;
> > @@ -647,9 +647,9 @@ int br_mrp_set_ring_role(struct net_bridge *br,
> >       mrp->ring_role = role->ring_role;
> >
> >       /* If there is an error just bailed out */
> > -     err = br_mrp_switchdev_set_ring_role(br, mrp, role->ring_role);
> > -     if (err && err != -EOPNOTSUPP)
> > -             return err;
> > +     support = br_mrp_switchdev_set_ring_role(br, mrp, role->ring_role);
> > +     if (support == BR_MRP_NONE)
> > +             return -EOPNOTSUPP;
> 
> It is broken to update the return type and value of a function in one
> patch, and check for the updated return value in another patch.
> 

Yes, I will be more careful next time. I have tried to compile between
the patches and I have not see any issues here so I though that
everything is good.

> >
> >       /* Now detect if the HW actually applied the role or not. If the HW
> >        * applied the role it means that the SW will not to do those operations
> > @@ -657,7 +657,7 @@ int br_mrp_set_ring_role(struct net_bridge *br,
> >        * SW when ring is open, but if the is not pushed to the HW the SW will
> >        * need to detect when the ring is open
> >        */
> > -     mrp->ring_role_offloaded = err == -EOPNOTSUPP ? 0 : 1;
> > +     mrp->ring_role_offloaded = support == BR_MRP_SW ? 0 : 1;
> >
> >       return 0;
> >  }

-- 
/Horatiu
