Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D04521F5CB
	for <lists.bridge@lfdr.de>; Tue, 14 Jul 2020 17:08:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4781A88CD5;
	Tue, 14 Jul 2020 15:07:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wJn4OEDfw8u6; Tue, 14 Jul 2020 15:07:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B7D5588BEA;
	Tue, 14 Jul 2020 15:07:50 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 994A1C08A9;
	Tue, 14 Jul 2020 15:07:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A9EFEC0733
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 15:07:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9554120368
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 15:07:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rb-2IBTz7gyD for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jul 2020 15:07:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by silver.osuosl.org (Postfix) with ESMTPS id B50D620107
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 15:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1594739268; x=1626275268;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=r4E3DoO/243oOPim9W7seyYjqcxT6G/IVb7gOQ45Lro=;
 b=AGWRpHeszTOBX4YzrSB4SM1AejH2NxEwLxxFi7NhpcNmAdcKB1SlMVam
 L8b4rZ8uFi+/3Wu2hhKGMRINQ/dsAZiyBB2A3xwFX8AfRq1KMmjeYpi55
 ighoe5xHq4r+gVbP/vjjeVTjzKxUT+qDLxVVMQBTSweWjqGZeJfvrQFBW
 Z13HdKvJqwdlKXh1Z64wyALR1qKFNqBJEO4hbJ2GpQPSMvT/sofgl5rsv
 D1CV6kDY/MvF3fbGoVTL1RnN3kqqr1ZJ4CEGuYEExm1eSTGjoLRn9s1x2
 PTWNB2uQ4nmR3yCvO9VUX39aQO9lYqdsxpnCdXazE2vKUyOFb5lZfE9SF g==;
IronPort-SDR: xDQSwPuhqU7Ybp5HXbBfTw7cq+gRPc6CJJmlk9FcqnzuBAMlCMPHO4oL+j9RO1j+qZonhl9nQj
 ipIqKBX5v7ZnmdwN6YOdaytNUgEhfZPVoyNncEWAd5S+XdxGVDHzN1sIqxuIYYfCyC1/4JX3SC
 6BudxW5pHXORtW29hNKBlT+DLq5GE0J9+bluOqhVuNzsxceWDnKlkYoyNclz1AaNMasSh5gqla
 h2o7ousKExjo3i97YlWwdwkyVbrI+N681OYJSq4zLih25GXhxc/UiT9lhTOTUMINVP4BQNDaM8
 ws4=
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="81800580"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Jul 2020 08:07:47 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 14 Jul 2020 08:07:46 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Tue, 14 Jul 2020 08:07:14 -0700
Date: Tue, 14 Jul 2020 17:07:40 +0200
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20200714150740.3ji3qhtvikhrizfn@soft-dev3.localdomain>
References: <20200714073458.1939574-1-horatiu.vultur@microchip.com>
 <20200714073458.1939574-13-horatiu.vultur@microchip.com>
 <9eeb89c5-865f-2b21-c7c6-7f4479bf4175@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <9eeb89c5-865f-2b21-c7c6-7f4479bf4175@cumulusnetworks.com>
Cc: ivecera@redhat.com, andrew@lunn.ch, jiri@resnulli.us,
 netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v4 12/12] net: bridge: Add port
 attribute IFLA_BRPORT_MRP_IN_OPEN
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

The 07/14/2020 16:29, Nikolay Aleksandrov wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On 14/07/2020 10:34, Horatiu Vultur wrote:
> > This patch adds a new port attribute, IFLA_BRPORT_MRP_IN_OPEN, which
> > allows to notify the userspace when the node lost the contiuity of
> > MRP_InTest frames.
> >
> > Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> > ---
> >  include/uapi/linux/if_link.h       | 1 +
> >  net/bridge/br_netlink.c            | 3 +++
> >  tools/include/uapi/linux/if_link.h | 1 +
> >  3 files changed, 5 insertions(+)
> >

Hi Nik,

> 
> It's kind of late by now, but I'd wish these were contained in a nested MRP attribute. :)
> Horatiu, do you expect to have many more MRP attributes outside of MRP netlink code?

I don't expect to add any other MRP attributes outside of MRP netlink
code.

> 
> Perhaps we should at least dump them only for MRP-aware ports, that should be easy.
> They make no sense outside of MRP anyway, but increase the size of the dump for all
> right now.

You are right. Then should I first send a fix on the net for this and
after that I will fix these patches or just fix this in the next patch
series?

> 
> Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
> 
> > diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
> > index cc185a007ade8..26842ffd0501d 100644
> > --- a/include/uapi/linux/if_link.h
> > +++ b/include/uapi/linux/if_link.h
> > @@ -344,6 +344,7 @@ enum {
> >       IFLA_BRPORT_ISOLATED,
> >       IFLA_BRPORT_BACKUP_PORT,
> >       IFLA_BRPORT_MRP_RING_OPEN,
> > +     IFLA_BRPORT_MRP_IN_OPEN,
> >       __IFLA_BRPORT_MAX
> >  };
> >  #define IFLA_BRPORT_MAX (__IFLA_BRPORT_MAX - 1)
> > diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> > index c532fa65c9834..147d52596e174 100644
> > --- a/net/bridge/br_netlink.c
> > +++ b/net/bridge/br_netlink.c
> > @@ -152,6 +152,7 @@ static inline size_t br_port_info_size(void)
> >  #endif
> >               + nla_total_size(sizeof(u16))   /* IFLA_BRPORT_GROUP_FWD_MASK */
> >               + nla_total_size(sizeof(u8))    /* IFLA_BRPORT_MRP_RING_OPEN */
> > +             + nla_total_size(sizeof(u8))    /* IFLA_BRPORT_MRP_IN_OPEN */
> >               + 0;
> >  }
> >
> > @@ -216,6 +217,8 @@ static int br_port_fill_attrs(struct sk_buff *skb,
> >                      !!(p->flags & BR_NEIGH_SUPPRESS)) ||
> >           nla_put_u8(skb, IFLA_BRPORT_MRP_RING_OPEN, !!(p->flags &
> >                                                         BR_MRP_LOST_CONT)) ||
> > +         nla_put_u8(skb, IFLA_BRPORT_MRP_IN_OPEN,
> > +                    !!(p->flags & BR_MRP_LOST_IN_CONT)) ||
> >           nla_put_u8(skb, IFLA_BRPORT_ISOLATED, !!(p->flags & BR_ISOLATED)))
> >               return -EMSGSIZE;
> >
> > diff --git a/tools/include/uapi/linux/if_link.h b/tools/include/uapi/linux/if_link.h
> > index cafedbbfefbe9..781e482dc499f 100644
> > --- a/tools/include/uapi/linux/if_link.h
> > +++ b/tools/include/uapi/linux/if_link.h
> > @@ -344,6 +344,7 @@ enum {
> >       IFLA_BRPORT_ISOLATED,
> >       IFLA_BRPORT_BACKUP_PORT,
> >       IFLA_BRPORT_MRP_RING_OPEN,
> > +     IFLA_BRPORT_MRP_IN_OPEN,
> >       __IFLA_BRPORT_MAX
> >  };
> >  #define IFLA_BRPORT_MAX (__IFLA_BRPORT_MAX - 1)
> >
> 

-- 
/Horatiu
