Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2591DD352
	for <lists.bridge@lfdr.de>; Thu, 21 May 2020 18:49:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9118F875A5;
	Thu, 21 May 2020 16:49:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jAp-JsNUo77x; Thu, 21 May 2020 16:49:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D912F875BC;
	Thu, 21 May 2020 16:49:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id ABA74C0176;
	Thu, 21 May 2020 16:49:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9EB8BC0176
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 16:49:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8683D89338
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 16:49:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NrCEzF-B+49K for <bridge@lists.linux-foundation.org>;
 Thu, 21 May 2020 16:49:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CC2BB89335
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 16:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590079779; x=1621615779;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=T3JHfJfiSK4U+yHgb+bI6WL0oOg800aRny6cXvnK9L4=;
 b=IkzRrxDSeXCXmfOv1Ntz9138MnlYN0HwNJe2xQCcyEOSdjvOwxKPFo/E
 4OZCzqNLPgzWPw6k9teZ0zAcY25nEsCQEtu/uelMgv8q1RWbeVzGD7PoT
 Y8a4VjEektgXcle0eAFtvzdkci8ajhmbSsIH/f8KRX2PyGfjxwZkti7BW
 sxFn5HpYhQ946DNs+zE20VpT43XepzdwYSIRXJE9yBgwXxJAYnn4krCUS
 jsGhO33ydTwLin3i2drdmFOZbfA0fZC5uUVm0YfAK2sSF0bcL9vNk2MyR
 FUbHIJZhSizme4TJuHsCOjnkZavHd7ESOQrNeTHT23ngIsAoCwrRwmgqM Q==;
IronPort-SDR: wfYVcZK29baJHc4xxh36j9iwF5HYWGqq/vCDdBNO7JUvQUdp3MpJUQQwk5XbWLx3+w4XqJz2ZX
 lcyW7CPfrHgbDY8oji1OCCqOYIrROT+CTC5ZWCm2quKD5U0STPj4jBu/GBjwSZ79fuP2cLm5bb
 wjaFd3GCx4wYidQG1HcUUH7lTvvyiV/QydEhU9kktWdfpzL2a/fLL8wPVhDBgoxPL5fDsF/25r
 kAXnk9dA14akgTso9kyFo7uv4d98zA76sLMdFmAUI18BlNQ5SaqWkDkZRSyGcK1luJh19rwU2Q
 ZoU=
X-IronPort-AV: E=Sophos;i="5.73,418,1583218800"; d="scan'208";a="76018801"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 May 2020 09:49:38 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 21 May 2020 09:49:38 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Thu, 21 May 2020 09:49:38 -0700
Date: Thu, 21 May 2020 18:49:18 +0000
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20200521181337.ory6lxyswatqhoej@soft-dev3.localdomain>
References: <20200520130923.3196432-1-horatiu.vultur@microchip.com>
 <20200520130923.3196432-2-horatiu.vultur@microchip.com>
 <cecbdbf0-bb49-1e3c-c163-8e7412c6fcec@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <cecbdbf0-bb49-1e3c-c163-8e7412c6fcec@cumulusnetworks.com>
Cc: ivecera@redhat.com, andrew@lunn.ch, jiri@resnulli.us,
 netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH 1/3] bridge: mrp: Add br_mrp_unique_ifindex
	function
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

The 05/21/2020 11:16, Nikolay Aleksandrov wrote:
> On 20/05/2020 16:09, Horatiu Vultur wrote:
> > It is not allow to have the same net bridge port part of multiple MRP
> > rings. Therefore add a check if the port is used already in a different
> > MRP. In that case return failure.
> >
> > Fixes: 9a9f26e8f7ea ("bridge: mrp: Connect MRP API with the switchdev API")
> > Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> > ---
> >  net/bridge/br_mrp.c | 31 +++++++++++++++++++++++++++++++
> >  1 file changed, 31 insertions(+)
> >
> > diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
> > index d7bc09de4c139..a5a3fa59c078a 100644
> > --- a/net/bridge/br_mrp.c
> > +++ b/net/bridge/br_mrp.c
> > @@ -37,6 +37,32 @@ static struct br_mrp *br_mrp_find_id(struct net_bridge *br, u32 ring_id)
> >       return res;
> >  }
> >
> > +static bool br_mrp_unique_ifindex(struct net_bridge *br, u32 ifindex)
> > +{
> > +     struct br_mrp *mrp;
> > +     bool res = true;
> > +
> > +     rcu_read_lock();
> 
> Why do you need the rcu_read_lock() here when lockdep_rtnl_is_held() is used?
> You should be able to just do rtnl_dereference() below as this is used only
> under rtnl.

Hi Nik,

Also initially I thought that is not needed, but when I enabled all the
RCU debug configs to see if I use correctly the RCU, I got a warning
regarding suspicious RCU usage.
And that is the reason why I have put it.

> 
> > +     list_for_each_entry_rcu(mrp, &br->mrp_list, list,
> > +                             lockdep_rtnl_is_held()) {
> > +             struct net_bridge_port *p;
> > +
> > +             p = rcu_dereference(mrp->p_port);
> > +             if (p && p->dev->ifindex == ifindex) {
> > +                     res = false;
> > +                     break;
> > +             }
> > +
> > +             p = rcu_dereference(mrp->s_port);
> > +             if (p && p->dev->ifindex == ifindex) {
> > +                     res = false;
> > +                     break;
> > +             }
> > +     }
> > +     rcu_read_unlock();
> > +     return res;
> > +}
> > +
> >  static struct br_mrp *br_mrp_find_port(struct net_bridge *br,
> >                                      struct net_bridge_port *p)
> >  {
> > @@ -255,6 +281,11 @@ int br_mrp_add(struct net_bridge *br, struct br_mrp_instance *instance)
> >           !br_mrp_get_port(br, instance->s_ifindex))
> >               return -EINVAL;
> >
> > +     /* It is not possible to have the same port part of multiple rings */
> > +     if (!br_mrp_unique_ifindex(br, instance->p_ifindex) ||
> > +         !br_mrp_unique_ifindex(br, instance->s_ifindex))
> > +             return -EINVAL;
> > +
> >       mrp = kzalloc(sizeof(*mrp), GFP_KERNEL);
> >       if (!mrp)
> >               return -ENOMEM;
> >
> 

-- 
/Horatiu
