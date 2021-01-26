Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 004A5304994
	for <lists.bridge@lfdr.de>; Tue, 26 Jan 2021 21:10:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1BE8C86F9C;
	Tue, 26 Jan 2021 20:10:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id umxfQH5czaFd; Tue, 26 Jan 2021 20:10:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3CE8086F90;
	Tue, 26 Jan 2021 20:10:47 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 18321C013A;
	Tue, 26 Jan 2021 20:10:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5E500C013A
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 20:10:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 41970204CB
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 20:10:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L2RdfdOnohhF for <bridge@lists.linux-foundation.org>;
 Tue, 26 Jan 2021 20:10:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by silver.osuosl.org (Postfix) with ESMTPS id 64E91204C4
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 20:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1611691842; x=1643227842;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Iud4u6y9O0BVCeDjBLb2YvF7/PXS8yWU9m/W37EPe78=;
 b=PQmQIaUqlOjGaHNKPUZsAgqJCyCgbgCYsNK2slL1kZ1AYY6ilj5WLKJ/
 qK4HnOT0e0riv9sRlxsnB7sccwIkj5rSKRQXaHS2xMIljwMnfwBhSSqIJ
 zuvdmmxSAQ0GI8ftj4cgs0V2zJTk1lcCdbXj+legzmn5SffPEt++njtIn
 aNfWiSzM4cYk/twROKjcdcyYQdJbQyoHLzWoff9/6z3Mcy6DlsMm/3Zwe
 ROFcKR31oDogI9mP+DlJSMzjgaqZEb/exwJFo1wXIbo/N6PhZg8dZ9dtL
 D+8t/TriTdWYI/6kx2J6GATqJ2+7AalNoqEE7aYA23zDKMTY3ukb9XGgB A==;
IronPort-SDR: 0M4uwziWPEJ2AaoDRexoomEz25B4S+FDGRwi003VDQ/rlUWPQaG5K19rMgnLz9tgWgQwy7TcNC
 Vt+ACcI5C9SE55h16OkYJNZlaaNGyA70y0i6VSHuPbZHncfP1sal6j/aqJU48jAEg+YkXWeQC6
 BQSbC+AN5g/B/Tr4UfHRmbaGOr+ARCegQttUtQREx5SL24NsaSymq71sf5WQ9tRyO+THabsx+i
 OR/Qo7pSgBmOqH4S2H06p0ULzc2bbGTRcMFuxeqr+eOD5dXZVMkUI8M1h5zZVJpX/4SiYJKQdO
 GCU=
X-IronPort-AV: E=Sophos;i="5.79,377,1602572400"; d="scan'208";a="41858671"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Jan 2021 13:10:41 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 26 Jan 2021 13:10:35 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Tue, 26 Jan 2021 13:10:35 -0700
Date: Tue, 26 Jan 2021 21:10:34 +0100
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Message-ID: <20210126201034.ihjwtyfsnkxk2pwo@soft-dev3.localdomain>
References: <20210123161812.1043345-1-horatiu.vultur@microchip.com>
 <20210123161812.1043345-4-horatiu.vultur@microchip.com>
 <CAF=yD-KdqagGYZwzke-tX257JbtbPwi-2p0esOV1EFX3DN_ZUg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <CAF=yD-KdqagGYZwzke-tX257JbtbPwi-2p0esOV1EFX3DN_ZUg@mail.gmail.com>
Cc: ivecera@redhat.com, Andrew Lunn <andrew@lunn.ch>,
 =?utf-8?B?SmnFmcOtIFDDrXJrbw==?= <jiri@resnulli.us>,
 Rasmus Villemoes <rasmus.villemoes@prevas.dk>,
 Network Development <netdev@vger.kernel.org>,
 bridge@lists.linux-foundation.org, LKML <linux-kernel@vger.kernel.org>,
 nikolay@nvidia.com, roopa@nvidia.com, Jakub Kicinski <kuba@kernel.org>,
 David Miller <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 3/4] bridge: mrp: Extend
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

The 01/25/2021 19:06, Willem de Bruijn wrote:
> On Sat, Jan 23, 2021 at 11:23 AM Horatiu Vultur
> <horatiu.vultur@microchip.com> wrote:

Hi Willem,

> >
> > This patch extends the br_mrp_switchdev functions to be able to have a
> > better understanding what cause the issue and if the SW needs to be used
> > as a backup.
> >
> > There are the following cases:
> > - when the code is compiled without CONFIG_NET_SWITCHDEV. In this case
> >   return success so the SW can continue with the protocol. Depending on
> >   the function it returns 0 or BR_MRP_SW.
> > - when code is compiled with CONFIG_NET_SWITCHDEV and the driver doesn't
> >   implement any MRP callbacks, then the HW can't run MRP so it just
> >   returns -EOPNOTSUPP. So the SW will stop further to configure the
> >   node.
> > - when code is compiled with CONFIG_NET_SWITCHDEV and the driver fully
> >   supports any MRP functionality then the SW doesn't need to do
> >   anything.  The functions will return 0 or BR_MRP_HW.
> > - when code is compiled with CONFIG_NET_SWITCHDEV and the HW can't run
> >   completely the protocol but it can help the SW to run it.  For
> >   example, the HW can't support completely MRM role(can't detect when it
> >   stops receiving MRP Test frames) but it can redirect these frames to
> >   CPU. In this case it is possible to have a SW fallback. The SW will
> >   try initially to call the driver with sw_backup set to false, meaning
> >   that the HW can implement completely the role. If the driver returns
> >   -EOPNOTSUPP, the SW will try again with sw_backup set to false,
> >   meaning that the SW will detect when it stops receiving the frames. In
> >   case the driver returns 0 then the SW will continue to configure the
> >   node accordingly.
> >
> > In this way is more clear when the SW needs to stop configuring the
> > node, or when the SW is used as a backup or the HW can implement the
> > functionality.
> >
> > Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> 
> 
> > -int br_mrp_switchdev_set_ring_role(struct net_bridge *br,
> > -                                  struct br_mrp *mrp,
> > -                                  enum br_mrp_ring_role_type role)
> > +enum br_mrp_hw_support
> > +br_mrp_switchdev_set_ring_role(struct net_bridge *br, struct br_mrp *mrp,
> > +                              enum br_mrp_ring_role_type role)
> >  {
> >         struct switchdev_obj_ring_role_mrp mrp_role = {
> >                 .obj.orig_dev = br->dev,
> >                 .obj.id = SWITCHDEV_OBJ_ID_RING_ROLE_MRP,
> >                 .ring_role = role,
> >                 .ring_id = mrp->ring_id,
> > +               .sw_backup = false,
> >         };
> >         int err;
> >
> > +       /* If switchdev is not enabled then just run in SW */
> > +       if (!IS_ENABLED(CONFIG_NET_SWITCHDEV))
> > +               return BR_MRP_SW;
> > +
> > +       /* First try to see if HW can implement comptletly the role in HW */
> 
> typo: completely
> 
> >         if (role == BR_MRP_RING_ROLE_DISABLED)
> >                 err = switchdev_port_obj_del(br->dev, &mrp_role.obj);
> >         else
> >                 err = switchdev_port_obj_add(br->dev, &mrp_role.obj, NULL);
> >
> > -       return err;
> > +       /* In case of success then just return and notify the SW that doesn't
> > +        * need to do anything
> > +        */
> > +       if (!err)
> > +               return BR_MRP_HW;
> > +
> > +       /* There was some issue then is not possible at all to have this role so
> > +        * just return failire
> 
> typo: failure
> 
> > +        */
> > +       if (err != -EOPNOTSUPP)
> > +               return BR_MRP_NONE;
> > +
> > +       /* In case the HW can't run complety in HW the protocol, we try again
> 
> typo: completely. Please proofread your comments closely. I saw at
> least one typo in the commit messages too.

Sorry for that. I will fix those in the next version.
> 
> More in general comments that say what the code does can generally be eschewed.
> 
> > +        * and this time to allow the SW to help, but the HW needs to redirect
> > +        * the frames to CPU.
> > +        */
> > +       mrp_role.sw_backup = true;
> > +       err = switchdev_port_obj_add(br->dev, &mrp_role.obj, NULL);
> 
> This calls the same function. I did not see code that changes behavior
> based on sw_backup. Will this not give the same result?

No, because is the driver responsibility to check that flag and
implement what it can support. If the sw_backup is false, then it is
expected the driver to implement completely the functionality in HW. If
sw_backup is true it just needs to help the SW to run. So the driver can
check this flag and decide what to do.

> 
> Also, this lacks the role test (add or del). Is that because if
> falling back onto SW mode during add, this code does not get called at
> all on delete?

Good catch!. It should have the check.

> 
> > +
> > +       /* In case of success then notify the SW that it needs to help with the
> > +        * protocol
> > +        */
> > +       if (!err)
> > +               return BR_MRP_SW;
> > +
> > +       return BR_MRP_NONE;
> >  }
> >
> > -int br_mrp_switchdev_send_ring_test(struct net_bridge *br,
> > -                                   struct br_mrp *mrp, u32 interval,
> > -                                   u8 max_miss, u32 period,
> > -                                   bool monitor)
> > +enum br_mrp_hw_support
> > +br_mrp_switchdev_send_ring_test(struct net_bridge *br, struct br_mrp *mrp,
> > +                               u32 interval, u8 max_miss, u32 period,
> > +                               bool monitor)
> >  {
> >         struct switchdev_obj_ring_test_mrp test = {
> >                 .obj.orig_dev = br->dev,
> > @@ -79,12 +106,29 @@ int br_mrp_switchdev_send_ring_test(struct net_bridge *br,
> >         };
> >         int err;
> >
> > +       /* If switchdev is not enabled then just run in SW */
> > +       if (!IS_ENABLED(CONFIG_NET_SWITCHDEV))
> > +               return BR_MRP_SW;
> > +
> >         if (interval == 0)
> >                 err = switchdev_port_obj_del(br->dev, &test.obj);
> >         else
> >                 err = switchdev_port_obj_add(br->dev, &test.obj, NULL);
> >
> > -       return err;
> > +       /* If everything succeed then the HW can send this frames, so the SW
> > +        * doesn't need to generate them
> > +        */
> > +       if (!err)
> > +               return BR_MRP_HW;
> > +
> > +       /* There was an error when the HW was configured so the SW return
> > +        * failure
> > +        */
> > +       if (err != -EOPNOTSUPP)
> > +               return BR_MRP_NONE;
> > +
> > +       /* So the HW can't generate these frames so allow the SW to do that */
> > +       return BR_MRP_SW;
> 
> This is the same ternary test as above. It recurs a few times. Perhaps
> it can use a helper.

Yes, I will try to have a look.

-- 
/Horatiu
