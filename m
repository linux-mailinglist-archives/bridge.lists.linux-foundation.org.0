Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE751E7C3A
	for <lists.bridge@lfdr.de>; Fri, 29 May 2020 13:47:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5C88B20462;
	Fri, 29 May 2020 11:47:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a1Gf1mG+uwmY; Fri, 29 May 2020 11:47:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 367872043F;
	Fri, 29 May 2020 11:47:38 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2623AC016F;
	Fri, 29 May 2020 11:47:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D3B3AC016F
 for <bridge@lists.linux-foundation.org>; Fri, 29 May 2020 11:47:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C903487407
 for <bridge@lists.linux-foundation.org>; Fri, 29 May 2020 11:47:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nJ6fTbNBx6a9 for <bridge@lists.linux-foundation.org>;
 Fri, 29 May 2020 11:47:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0664987405
 for <bridge@lists.linux-foundation.org>; Fri, 29 May 2020 11:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590752855; x=1622288855;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=r0LsLIe3f2cpj18gV8W+yu6tvgZ5rEPFEFqWzmvLmbw=;
 b=isVx5fauWLltMD2s0ZHhjUIokO/6w2B1qrwGVwWF7zdGXvcVjGrBZMLj
 uTAjsZs6ZIa6BBCyH6mb9jyXOT5hJ3zNrM5YDYddIwzK13v2ezLVBCU2d
 iUH+1xKT7cSYGQUpey+p3iCVEB4uyAMGCJ6/b9I0Bs7ub/uYtbT/rwQ/+
 sWKJg4wyxrQSX48zfdZU18O7FJkqqNahyB2fOVEfTJKJjCySPmjalPrzJ
 o99VmaHddnlc7ethJC+kQxL/c6o3OMcWA+1CitLs3EUpS2Sy4/DYRcEuW
 Zd+wE+NV88EyYCloJ8+49pBCUT4sPW5/R4S7t4deZR5fPITeD8WOhZlOd g==;
IronPort-SDR: nnx5ftn4eJeRPJUpRzrRfyUoXBFl+4hodo2iZqxNdsZdzo9QxsEXKsJ45C81surIZXsv3Wb6nV
 jkebu2++bYfexAKEawErCa6hxk0FMXr3mtDcpWFMkNe71ln2IoUPGPXb4jhBYuYea2yba0eErs
 eyhIhJMWzbM51pG+sEIw0CiaOhuNlOWXIVTZNJtmwJKl98xoI+p+eYQg9048o4qScHC2YSEk2W
 tRx5ADLvuqz76P3tFbOaSCOi7UgwW8qN2eRQ3szKsNv+9DzMgZ1voRf4WzGOby3+zGwZ8igQ9S
 Gpo=
X-IronPort-AV: E=Sophos;i="5.73,448,1583218800"; d="scan'208";a="76749262"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 29 May 2020 04:47:34 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 29 May 2020 04:47:33 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Fri, 29 May 2020 04:47:24 -0700
Date: Fri, 29 May 2020 13:47:12 +0000
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20200529134712.qtua2ys4mxw7h77i@soft-dev3.localdomain>
References: <20200529100514.920537-1-horatiu.vultur@microchip.com>
 <20200529100514.920537-2-horatiu.vultur@microchip.com>
 <fc47aca8-a188-5e57-fe76-8e57c2910920@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <fc47aca8-a188-5e57-fe76-8e57c2910920@cumulusnetworks.com>
Cc: ivecera@redhat.com, jiri@resnulli.us, netdev@vger.kernel.org,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com, kuba@kernel.org,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/2] bridge: mrp: Set the priority of
 MRP instance
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

The 05/29/2020 11:12, Nikolay Aleksandrov wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On 29/05/2020 13:05, Horatiu Vultur wrote:
> > Each MRP instance has a priority, a lower value means a higher priority.
> > The priority of MRP instance is stored in MRP_Test frame in this way
> > all the MRP nodes in the ring can see other nodes priority.
> >
> > Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> > ---
> >  include/net/switchdev.h        | 1 +
> >  include/uapi/linux/if_bridge.h | 2 ++
> >  net/bridge/br_mrp.c            | 3 ++-
> >  net/bridge/br_mrp_netlink.c    | 5 +++++
> >  net/bridge/br_mrp_switchdev.c  | 1 +
> >  net/bridge/br_private_mrp.h    | 1 +
> >  6 files changed, 12 insertions(+), 1 deletion(-)
> >
> > diff --git a/include/net/switchdev.h b/include/net/switchdev.h
> > index db519957e134b..f82ef4c45f5ed 100644
> > --- a/include/net/switchdev.h
> > +++ b/include/net/switchdev.h
> > @@ -116,6 +116,7 @@ struct switchdev_obj_mrp {
> >       struct net_device *p_port;
> >       struct net_device *s_port;
> >       u32 ring_id;
> > +     u16 prio;
> >  };
> >
> >  #define SWITCHDEV_OBJ_MRP(OBJ) \
> > diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
> > index 5a43eb86c93bf..0162c1370ecb6 100644
> > --- a/include/uapi/linux/if_bridge.h
> > +++ b/include/uapi/linux/if_bridge.h
> > @@ -176,6 +176,7 @@ enum {
> >       IFLA_BRIDGE_MRP_INSTANCE_RING_ID,
> >       IFLA_BRIDGE_MRP_INSTANCE_P_IFINDEX,
> >       IFLA_BRIDGE_MRP_INSTANCE_S_IFINDEX,
> > +     IFLA_BRIDGE_MRP_INSTANCE_PRIO,
> >       __IFLA_BRIDGE_MRP_INSTANCE_MAX,
> >  };
> >
> > @@ -230,6 +231,7 @@ struct br_mrp_instance {
> >       __u32 ring_id;
> >       __u32 p_ifindex;
> >       __u32 s_ifindex;
> > +     __u16 prio;
> >  };
> >
> >  struct br_mrp_ring_state {
> > diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
> > index 8ea59504ef47a..f8fd037219fe9 100644
> > --- a/net/bridge/br_mrp.c
> > +++ b/net/bridge/br_mrp.c
> > @@ -147,7 +147,7 @@ static struct sk_buff *br_mrp_alloc_test_skb(struct br_mrp *mrp,
> >       br_mrp_skb_tlv(skb, BR_MRP_TLV_HEADER_RING_TEST, sizeof(*hdr));
> >       hdr = skb_put(skb, sizeof(*hdr));
> >
> > -     hdr->prio = cpu_to_be16(MRP_DEFAULT_PRIO);
> > +     hdr->prio = cpu_to_be16(mrp->prio);
> >       ether_addr_copy(hdr->sa, p->br->dev->dev_addr);
> >       hdr->port_role = cpu_to_be16(port_role);
> >       hdr->state = cpu_to_be16(mrp->ring_state);
> > @@ -290,6 +290,7 @@ int br_mrp_add(struct net_bridge *br, struct br_mrp_instance *instance)
> >               return -ENOMEM;
> >
> >       mrp->ring_id = instance->ring_id;
> > +     mrp->prio = instance->prio;
> >
> >       p = br_mrp_get_port(br, instance->p_ifindex);
> >       spin_lock_bh(&br->lock);
> > diff --git a/net/bridge/br_mrp_netlink.c b/net/bridge/br_mrp_netlink.c
> > index d9de780d2ce06..332d9894a9485 100644
> > --- a/net/bridge/br_mrp_netlink.c
> > +++ b/net/bridge/br_mrp_netlink.c
> > @@ -22,6 +22,7 @@ br_mrp_instance_policy[IFLA_BRIDGE_MRP_INSTANCE_MAX + 1] = {
> >       [IFLA_BRIDGE_MRP_INSTANCE_RING_ID]      = { .type = NLA_U32 },
> >       [IFLA_BRIDGE_MRP_INSTANCE_P_IFINDEX]    = { .type = NLA_U32 },
> >       [IFLA_BRIDGE_MRP_INSTANCE_S_IFINDEX]    = { .type = NLA_U32 },
> > +     [IFLA_BRIDGE_MRP_INSTANCE_PRIO]         = { .type = NLA_U16 },
> >  };
> >
> >  static int br_mrp_instance_parse(struct net_bridge *br, struct nlattr *attr,
> > @@ -49,6 +50,10 @@ static int br_mrp_instance_parse(struct net_bridge *br, struct nlattr *attr,
> >       inst.ring_id = nla_get_u32(tb[IFLA_BRIDGE_MRP_INSTANCE_RING_ID]);
> >       inst.p_ifindex = nla_get_u32(tb[IFLA_BRIDGE_MRP_INSTANCE_P_IFINDEX]);
> >       inst.s_ifindex = nla_get_u32(tb[IFLA_BRIDGE_MRP_INSTANCE_S_IFINDEX]);
> > +     inst.prio = MRP_DEFAULT_PRIO;
> > +
> > +     if (tb[IFLA_BRIDGE_MRP_INSTANCE_PRIO])
> > +             inst.prio = nla_get_u32(tb[IFLA_BRIDGE_MRP_INSTANCE_PRIO]);
> 
>         [IFLA_BRIDGE_MRP_INSTANCE_PRIO]         = { .type = NLA_U16 },
> 
> it seems you should be using nla_get_u16 above

Good catch, I will update this in the next version.

> 
> >
> >       if (cmd == RTM_SETLINK)
> >               return br_mrp_add(br, &inst);
> > diff --git a/net/bridge/br_mrp_switchdev.c b/net/bridge/br_mrp_switchdev.c
> > index 51cb1d5a24b4f..3a776043bf80d 100644
> > --- a/net/bridge/br_mrp_switchdev.c
> > +++ b/net/bridge/br_mrp_switchdev.c
> > @@ -12,6 +12,7 @@ int br_mrp_switchdev_add(struct net_bridge *br, struct br_mrp *mrp)
> >               .p_port = rtnl_dereference(mrp->p_port)->dev,
> >               .s_port = rtnl_dereference(mrp->s_port)->dev,
> >               .ring_id = mrp->ring_id,
> > +             .prio = mrp->prio,
> >       };
> >       int err;
> >
> > diff --git a/net/bridge/br_private_mrp.h b/net/bridge/br_private_mrp.h
> > index a0f53cc3ab85c..558941ce23669 100644
> > --- a/net/bridge/br_private_mrp.h
> > +++ b/net/bridge/br_private_mrp.h
> > @@ -14,6 +14,7 @@ struct br_mrp {
> >       struct net_bridge_port __rcu    *s_port;
> >
> >       u32                             ring_id;
> > +     u16                             prio;
> >
> >       enum br_mrp_ring_role_type      ring_role;
> >       u8                              ring_role_offloaded;
> >
> 

-- 
/Horatiu
