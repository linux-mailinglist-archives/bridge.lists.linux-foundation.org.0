Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1922731DCD8
	for <lists.bridge@lfdr.de>; Wed, 17 Feb 2021 17:03:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 81F076F610
	for <lists.bridge@lfdr.de>; Wed, 17 Feb 2021 16:03:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RbGpfFD686r5 for <lists.bridge@lfdr.de>;
	Wed, 17 Feb 2021 16:03:10 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id E074D6F60B; Wed, 17 Feb 2021 16:03:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC9966F51D;
	Wed, 17 Feb 2021 16:03:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B7163C0893;
	Wed, 17 Feb 2021 16:03:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1A2E4C0893
 for <bridge@lists.linux-foundation.org>; Wed, 17 Feb 2021 16:03:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 061996F4BA
 for <bridge@lists.linux-foundation.org>; Wed, 17 Feb 2021 16:03:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1rCbMrkL6o-i for <bridge@lists.linux-foundation.org>;
 Wed, 17 Feb 2021 16:03:00 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 248F86F52B; Wed, 17 Feb 2021 16:03:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.153.233])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AF7BF6F4BA
 for <bridge@lists.linux-foundation.org>; Wed, 17 Feb 2021 16:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1613577779; x=1645113779;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qJK73leWzrkDzeBC+OYmyCx8uVJIE42XDAZUX9Da8BA=;
 b=Igs6n7OMyhkhusjzABztY8T7XHS6MCO76jJ3YQyGDlB2V4tedoSjW/cw
 fBnsMdfmwKNRiMn6jsPl3f2Cm8DIqAgcSGgTPRJeensIqizpK8OwNvQjC
 TED6PViPMJ5DPofCGsgoVsfh0XqRKKhC128rwHY2MJ9moGPTi82UaB9tq
 Lp2zdWjWCi1jZ0/GnOpQHX1JxmcpgJj34NuEzcjUBU1V1nr4bCDslNCye
 6FRFcm9vgfAHKPWMNgleZ/wSlAmSqbLuZxuxHomf+KhTJJmaz+St3AyOB
 hRyGCFBxcN379ye3F5Eici3WMzdXUb67AKzsy3RUPErKx3aRpc8a94sPk Q==;
IronPort-SDR: Hu/+IvePcSQwKNP0tOMJPBiW+a6Afmyi2efURNVPMT6eb2YmarbDFgiJBk1VrLvjKJaBwoHdkB
 VWX8n9+f9rsnLBsoJlEvKqhGTJxupkxc0TodaUX/FLEUqZACLaAmdQuqDYmmVVaILnH5sC+IcK
 5mQaxt8Xu1Ah1OqKCdSSnD2BVKaaryELGVG8kDxe1cl9N2sCua/2u//P1YH1Z/0x4Yy17pkPUO
 EOYFQ01j5ntyVupMJ/wRV5e5hRF9oP50oAdS3Gpd7tj6iN4BRJZknMMsCQ9tp7eBRh1aBlsQEc
 w3Q=
X-IronPort-AV: E=Sophos;i="5.81,184,1610434800"; d="scan'208";a="109576978"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Feb 2021 09:02:58 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 17 Feb 2021 09:02:57 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Wed, 17 Feb 2021 09:02:57 -0700
Date: Wed, 17 Feb 2021 17:02:56 +0100
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <20210217160256.jr33sgi73s7wsaaa@soft-dev3.localdomain>
References: <20210216214205.32385-1-horatiu.vultur@microchip.com>
 <20210216214205.32385-5-horatiu.vultur@microchip.com>
 <20210217105624.aehyxw3tfs5uycdl@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20210217105624.aehyxw3tfs5uycdl@skbuf>
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
Subject: Re: [Bridge] [PATCH net-next v4 4/8] bridge: mrp: Extend
 br_mrp_switchdev to detect better the errors
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

The 02/17/2021 10:56, Vladimir Oltean wrote:
> 
> On Tue, Feb 16, 2021 at 10:42:01PM +0100, Horatiu Vultur wrote:
> > This patch extends the br_mrp_switchdev functions to be able to have a
> > better understanding what cause the issue and if the SW needs to be used
> > as a backup.
> >
> > There are the following cases:
> > - when the code is compiled without CONFIG_NET_SWITCHDEV. In this case
> >   return success so the SW can continue with the protocol. Depending
> >   on the function, it returns 0 or BR_MRP_SW.
> > - when code is compiled with CONFIG_NET_SWITCHDEV and the driver doesn't
> >   implement any MRP callbacks. In this case the HW can't run MRP so it
> >   just returns -EOPNOTSUPP. So the SW will stop further to configure the
> >   node.
> > - when code is compiled with CONFIG_NET_SWITCHDEV and the driver fully
> >   supports any MRP functionality. In this case the SW doesn't need to do
> >   anything. The functions will return 0 or BR_MRP_HW.
> > - when code is compiled with CONFIG_NET_SWITCHDEV and the HW can't run
> >   completely the protocol but it can help the SW to run it. For
> >   example, the HW can't support completely MRM role(can't detect when it
> >   stops receiving MRP Test frames) but it can redirect these frames to
> >   CPU. In this case it is possible to have a SW fallback. The SW will
> >   try initially to call the driver with sw_backup set to false, meaning
> >   that the HW should implement completely the role. If the driver returns
> >   -EOPNOTSUPP, the SW will try again with sw_backup set to false,
> >   meaning that the SW will detect when it stops receiving the frames but
> >   it needs HW support to redirect the frames to CPU. In case the driver
> >   returns 0 then the SW will continue to configure the node accordingly.
> >
> > Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> > ---
> >  net/bridge/br_mrp_switchdev.c | 171 +++++++++++++++++++++-------------
> >  net/bridge/br_private_mrp.h   |  24 +++--
> >  2 files changed, 118 insertions(+), 77 deletions(-)
> >
> > diff --git a/net/bridge/br_mrp_switchdev.c b/net/bridge/br_mrp_switchdev.c
> > index 3c9a4abcf4ee..cb54b324fa8c 100644
> > --- a/net/bridge/br_mrp_switchdev.c
> > +++ b/net/bridge/br_mrp_switchdev.c
> > @@ -4,6 +4,30 @@
> >
> >  #include "br_private_mrp.h"
> >
> > +static enum br_mrp_hw_support
> > +br_mrp_switchdev_port_obj(struct net_bridge *br,
> > +                       const struct switchdev_obj *obj, bool add)
> > +{
> > +     int err;
> > +
> 
> Looks like you could have added this check here and simplified all the
> callers:
> 
>         if (!IS_ENABLED(CONFIG_NET_SWITCHDEV))
>                 return BR_MRP_SW;

Yes, good catch!

> 
> > +     if (add)
> > +             err = switchdev_port_obj_add(br->dev, obj, NULL);
> > +     else
> > +             err = switchdev_port_obj_del(br->dev, obj);
> > +
> > +     /* In case of success just return and notify the SW that doesn't need
> > +      * to do anything
> > +      */
> > +     if (!err)
> > +             return BR_MRP_HW;
> > +
> > +     if (err != -EOPNOTSUPP)
> > +             return BR_MRP_NONE;
> > +
> > +     /* Continue with SW backup */
> > +     return BR_MRP_SW;
> > +}
> > +

-- 
/Horatiu
