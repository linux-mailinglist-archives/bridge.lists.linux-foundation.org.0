Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEFB21F682
	for <lists.bridge@lfdr.de>; Tue, 14 Jul 2020 17:53:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0D885263F5;
	Tue, 14 Jul 2020 15:53:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 11GjfK5oDxTE; Tue, 14 Jul 2020 15:53:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id BA70F24804;
	Tue, 14 Jul 2020 15:53:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9984AC0733;
	Tue, 14 Jul 2020 15:53:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 252DCC0733
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 15:53:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 664ED24804
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 15:53:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q8gqcNBdCmol for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jul 2020 15:53:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by silver.osuosl.org (Postfix) with ESMTPS id D33FA2474E
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 15:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1594741986; x=1626277986;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=aNKu4TlMhXFpa9EB4TrkuELaJm2syKB07ToTzzg1FLQ=;
 b=qDRTTSHK5dnjj5lo6fsnNiiXeVTeNUyjQpJbRd4I7K2c0SKupCnMO5Gg
 WAKZF1q8QLT/iHJtFCSnJlW0rSL3RpxHVOT+kN+gi1GAMPYyyiAB7ofCR
 Xhk6JYXY5HsRdXnXJRXzfReyCVzyZCiO/6bbX/gSmDMMfe2wqBmBgCbpG
 oCgPb4nA7iFRssvYUhyOyRuAwDHWpTpAKZvE2fHWRl6HBRt3AFjdzteIw
 kPo1+KRfXLBScFqkwF4DsywCzVheV0ov4xsEabEzsxCpY9meMnf1gRa0a
 8TyqIzcTXrkcM3+zNsE0ZeMpaI/v1eguaggY38ZuDomZPpWVVZjGsjI7X Q==;
IronPort-SDR: /kjKp62nmlg710TdH9zsvAp1ZfOmuARb+O9f72ul8ZZ56KtgXVpsTUJ63PtEhpJ2VaCXF5o0OU
 xBgKuZRepTov7Jgkj9HsulI7F8gCyM7DpKKvk4o9PNjzkx+DQEfrgXEDnhe4W0OtjsM1p5TBEO
 nCXLgRzvpwp1U7fBUJ/yu+UJGbvIH51NqsDbVDOiRP10KANtIVD7O7BYGn0ueS4N2NCiChqqo4
 6QobtjkVJE5sMcFUUagWYgTX+dHeL0qv5k+gafS/zHHgUTAvSUmNJDP+fjAn45U52itSAkoYqm
 3Kc=
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="83827043"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Jul 2020 08:53:06 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 14 Jul 2020 08:53:05 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Tue, 14 Jul 2020 08:52:32 -0700
Date: Tue, 14 Jul 2020 17:53:04 +0200
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20200714155304.6isfmpwhbqnh57kr@soft-dev3.localdomain>
References: <20200714073458.1939574-1-horatiu.vultur@microchip.com>
 <20200714073458.1939574-13-horatiu.vultur@microchip.com>
 <9eeb89c5-865f-2b21-c7c6-7f4479bf4175@cumulusnetworks.com>
 <20200714150740.3ji3qhtvikhrizfn@soft-dev3.localdomain>
 <a22642aa-63a2-e492-5f64-b344c62d0142@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <a22642aa-63a2-e492-5f64-b344c62d0142@cumulusnetworks.com>
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

The 07/14/2020 18:33, Nikolay Aleksandrov wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On 14/07/2020 18:07, Horatiu Vultur wrote:
> > The 07/14/2020 16:29, Nikolay Aleksandrov wrote:
> >> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> >>
> >> On 14/07/2020 10:34, Horatiu Vultur wrote:
> >>> This patch adds a new port attribute, IFLA_BRPORT_MRP_IN_OPEN, which
> >>> allows to notify the userspace when the node lost the contiuity of
> >>> MRP_InTest frames.
> >>>
> >>> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> >>> ---
> >>>  include/uapi/linux/if_link.h       | 1 +
> >>>  net/bridge/br_netlink.c            | 3 +++
> >>>  tools/include/uapi/linux/if_link.h | 1 +
> >>>  3 files changed, 5 insertions(+)
> >>>
> >
> > Hi Nik,
> >
> >>
> >> It's kind of late by now, but I'd wish these were contained in a nested MRP attribute. :)
> >> Horatiu, do you expect to have many more MRP attributes outside of MRP netlink code?
> >
> > I don't expect to add any other MRP attributes outside of MRP netlink
> > code.
> >
> >>
> >> Perhaps we should at least dump them only for MRP-aware ports, that should be easy.
> >> They make no sense outside of MRP anyway, but increase the size of the dump for all
> >> right now.
> >
> > You are right. Then should I first send a fix on the net for this and
> > after that I will fix these patches or just fix this in the next patch
> > series?
> >
> 
> IMO it's more of an improvement rather than a bug, but since you don't expect to have more
> attributes outside of MRP's netlink I guess we can drop it for now. Up to you.

OK, lets just drop it for now.

> 
> It definitely shouldn't block this patch-set.
> 
> >>
> >> Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
> >>
> >>> diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
> >>> index cc185a007ade8..26842ffd0501d 100644
> >>> --- a/include/uapi/linux/if_link.h
> >>> +++ b/include/uapi/linux/if_link.h
> >>> @@ -344,6 +344,7 @@ enum {
> >>>       IFLA_BRPORT_ISOLATED,
> >>>       IFLA_BRPORT_BACKUP_PORT,
> >>>       IFLA_BRPORT_MRP_RING_OPEN,
> >>> +     IFLA_BRPORT_MRP_IN_OPEN,
> >>>       __IFLA_BRPORT_MAX
> >>>  };
> >>>  #define IFLA_BRPORT_MAX (__IFLA_BRPORT_MAX - 1)
> >>> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> >>> index c532fa65c9834..147d52596e174 100644
> >>> --- a/net/bridge/br_netlink.c
> >>> +++ b/net/bridge/br_netlink.c
> >>> @@ -152,6 +152,7 @@ static inline size_t br_port_info_size(void)
> >>>  #endif
> >>>               + nla_total_size(sizeof(u16))   /* IFLA_BRPORT_GROUP_FWD_MASK */
> >>>               + nla_total_size(sizeof(u8))    /* IFLA_BRPORT_MRP_RING_OPEN */
> >>> +             + nla_total_size(sizeof(u8))    /* IFLA_BRPORT_MRP_IN_OPEN */
> >>>               + 0;
> >>>  }
> >>>
> >>> @@ -216,6 +217,8 @@ static int br_port_fill_attrs(struct sk_buff *skb,
> >>>                      !!(p->flags & BR_NEIGH_SUPPRESS)) ||
> >>>           nla_put_u8(skb, IFLA_BRPORT_MRP_RING_OPEN, !!(p->flags &
> >>>                                                         BR_MRP_LOST_CONT)) ||
> >>> +         nla_put_u8(skb, IFLA_BRPORT_MRP_IN_OPEN,
> >>> +                    !!(p->flags & BR_MRP_LOST_IN_CONT)) ||
> >>>           nla_put_u8(skb, IFLA_BRPORT_ISOLATED, !!(p->flags & BR_ISOLATED)))
> >>>               return -EMSGSIZE;
> >>>
> >>> diff --git a/tools/include/uapi/linux/if_link.h b/tools/include/uapi/linux/if_link.h
> >>> index cafedbbfefbe9..781e482dc499f 100644
> >>> --- a/tools/include/uapi/linux/if_link.h
> >>> +++ b/tools/include/uapi/linux/if_link.h
> >>> @@ -344,6 +344,7 @@ enum {
> >>>       IFLA_BRPORT_ISOLATED,
> >>>       IFLA_BRPORT_BACKUP_PORT,
> >>>       IFLA_BRPORT_MRP_RING_OPEN,
> >>> +     IFLA_BRPORT_MRP_IN_OPEN,
> >>>       __IFLA_BRPORT_MAX
> >>>  };
> >>>  #define IFLA_BRPORT_MAX (__IFLA_BRPORT_MAX - 1)
> >>>
> >>
> >
> 

-- 
/Horatiu
