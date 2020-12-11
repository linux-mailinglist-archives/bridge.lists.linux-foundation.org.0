Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C71D92D7382
	for <lists.bridge@lfdr.de>; Fri, 11 Dec 2020 11:10:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0DCDE87212;
	Fri, 11 Dec 2020 10:10:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vFow-qAof-F5; Fri, 11 Dec 2020 10:10:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 611328726D;
	Fri, 11 Dec 2020 10:10:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3AD6AC1D9F;
	Fri, 11 Dec 2020 10:10:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 71AE3C013B
 for <bridge@lists.linux-foundation.org>; Fri, 11 Dec 2020 10:10:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5318187060
 for <bridge@lists.linux-foundation.org>; Fri, 11 Dec 2020 10:10:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oKDYEk2oxqXh for <bridge@lists.linux-foundation.org>;
 Fri, 11 Dec 2020 10:10:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7034087048
 for <bridge@lists.linux-foundation.org>; Fri, 11 Dec 2020 10:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1607681431; x=1639217431;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=DtP8ElIx+KP6/zzxe2zl/O+NBed8LROKaZLUZR3CceM=;
 b=daSwEG1S+Xxp6lqzDkGulCSwROuhRml4WAAqH6+l2Yw7Q8ffkvHvUn9m
 FZG3hWwTXP2Dhz3jT+eFdo9Ns20HYtmfeafa/J+RIhj+dOvlSfzm7snhM
 HSJM7zReDx1MOlyg9GeOJWZVtKdv+qlvmpQzwwzI5pkErvqiW+fgqJHvC
 pw2oGhTNqZkBIM8GOwUkGjwRn7c5/FeUIoyQc3g4XXHd2uyX/KYRiZK1K
 Xk6CD2Th74WUb/1/scZR6K3z0Ze59RR0z1ftrtZdP0fBZcIvQ/xYwfvT0
 z0zTNrXLarcQl+XzGmprMgUfbTCEPy28dk6Fj9vowGDfMdjl4ALKalhkr w==;
IronPort-SDR: sklJyd1o6dTtRkWU4TMinODiEI/7i1kscTOrO8VW/dzN4ge5dxEOG12Qhw64hZ+pU72jarVWp8
 VBpL5HhnwEjFifvEm8Dh0u+J11T0bk5LqPqA8LP4qbN9f+gV3LI38DY/Y8csAHUoHS/iTaIowQ
 SjfVONx6eVK4Yf564FAJqB3LzudBswiPMn/QuEwd6nJJYQEYVMXSCItQepYm/TIq5uTRvVumz5
 OlCchEU7wL+GPTiapIZNcs8M7WwwVAtLIzv7vW8hrrSW5zDL713schhiuWbScSYlKAaAe8o7aj
 xnM=
X-IronPort-AV: E=Sophos;i="5.78,411,1599548400"; d="scan'208";a="102404931"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Dec 2020 03:10:30 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Fri, 11 Dec 2020 03:10:30 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Fri, 11 Dec 2020 03:10:29 -0700
Date: Fri, 11 Dec 2020 11:10:29 +0100
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20201211101029.ymk4eepicoxqzahm@soft-dev3.localdomain>
References: <20201211092626.809206-1-horatiu.vultur@microchip.com>
 <4fe477ff-c58f-5100-d7c8-8dd87b0be302@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <4fe477ff-c58f-5100-d7c8-8dd87b0be302@nvidia.com>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, allan.nielsen@microchip.com, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next] net: bridge: igmp: Extend IGMP query
 with vlan support
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

The 12/11/2020 11:46, Nikolay Aleksandrov wrote:
> 
> On 11/12/2020 11:26, Horatiu Vultur wrote:
> > This patch tries to add vlan support to IGMP queries.
> > It extends the function 'br_ip4_multicast_alloc_query' to add
> > also a vlan tag if vlan is enabled. Therefore the bridge will send
> > queries for each vlan the ports are in.
> >
> > There are few other places that needs to be updated to be fully
> > functional. But I am curious if this is the way to go forward or is
> > there a different way of implementing this?
> >
> > Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> > ---
> >  net/bridge/br_multicast.c | 31 ++++++++++++++++++++++++++-----
> >  1 file changed, 26 insertions(+), 5 deletions(-)
> >

Hi Nik,

> 
> Hi Horatiu,
> We've discussed this with other people on netdev before, the way forward is to
> implement it as a per-vlan option and then have a per-vlan querier. Which would also
> make the change much bigger and more complex. In general some of the multicast options
> need to be replicated for vlans to get proper per-vlan multicast control and operation, but
> that would require to change a lot of logic around the whole bridge (fast-path included,
> where it'd be most sensitive).

Thanks for the suggestion and for the heads up. I will have a look and
see how to do it like you mention.


> The good news is that these days we have per-vlan options
> support and so only the actual per-vlan multicast implementation is left to be done.
> I have this on my TODO list, unfortunately that list gets longer and longer,
> so I'd be happy to review patches if someone decides to do it sooner. :)

That would be much appreciated :).

> 
> Sorry, I couldn't find the previous discussion, it was a few years back.
> 
> Cheers,
>  Nik
> 
> > diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
> > index 484820c223a3..4c2db8a9efe0 100644
> > --- a/net/bridge/br_multicast.c
> > +++ b/net/bridge/br_multicast.c
> > @@ -688,7 +688,8 @@ static struct sk_buff *br_ip4_multicast_alloc_query(struct net_bridge *br,
> >                                                   __be32 ip_dst, __be32 group,
> >                                                   bool with_srcs, bool over_lmqt,
> >                                                   u8 sflag, u8 *igmp_type,
> > -                                                 bool *need_rexmit)
> > +                                                 bool *need_rexmit,
> > +                                                 __u16 vid)
> >  {
> >       struct net_bridge_port *p = pg ? pg->key.port : NULL;
> >       struct net_bridge_group_src *ent;
> > @@ -724,6 +725,9 @@ static struct sk_buff *br_ip4_multicast_alloc_query(struct net_bridge *br,
> >       }
> >
> >       pkt_size = sizeof(*eth) + sizeof(*iph) + 4 + igmp_hdr_size;
> > +     if (br_vlan_enabled(br->dev) && vid != 0)
> > +             pkt_size += 4;
> > +
> >       if ((p && pkt_size > p->dev->mtu) ||
> >           pkt_size > br->dev->mtu)
> >               return NULL;
> > @@ -732,6 +736,9 @@ static struct sk_buff *br_ip4_multicast_alloc_query(struct net_bridge *br,
> >       if (!skb)
> >               goto out;
> >
> > +     if (br_vlan_enabled(br->dev) && vid != 0)
> > +             __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vid);
> > +
> >       skb->protocol = htons(ETH_P_IP);
> >
> >       skb_reset_mac_header(skb);
> > @@ -1008,7 +1015,8 @@ static struct sk_buff *br_multicast_alloc_query(struct net_bridge *br,
> >                                                   ip4_dst, group->dst.ip4,
> >                                                   with_srcs, over_lmqt,
> >                                                   sflag, igmp_type,
> > -                                                 need_rexmit);
> > +                                                 need_rexmit,
> > +                                                 group->vid);
> >  #if IS_ENABLED(CONFIG_IPV6)
> >       case htons(ETH_P_IPV6): {
> >               struct in6_addr ip6_dst;
> > @@ -1477,6 +1485,8 @@ static void br_multicast_send_query(struct net_bridge *br,
> >                                   struct bridge_mcast_own_query *own_query)
> >  {
> >       struct bridge_mcast_other_query *other_query = NULL;
> > +     struct net_bridge_vlan_group *vg;
> > +     struct net_bridge_vlan *v;
> >       struct br_ip br_group;
> >       unsigned long time;
> >
> > @@ -1485,7 +1495,7 @@ static void br_multicast_send_query(struct net_bridge *br,
> >           !br_opt_get(br, BROPT_MULTICAST_QUERIER))
> >               return;
> >
> > -     memset(&br_group.dst, 0, sizeof(br_group.dst));
> > +     memset(&br_group, 0, sizeof(br_group));
> >
> >       if (port ? (own_query == &port->ip4_own_query) :
> >                  (own_query == &br->ip4_own_query)) {
> > @@ -1501,8 +1511,19 @@ static void br_multicast_send_query(struct net_bridge *br,
> >       if (!other_query || timer_pending(&other_query->timer))
> >               return;
> >
> > -     __br_multicast_send_query(br, port, NULL, NULL, &br_group, false, 0,
> > -                               NULL);
> > +     if (br_vlan_enabled(br->dev) && port) {
> > +             vg = nbp_vlan_group(port);
> > +
> > +             list_for_each_entry(v, &vg->vlan_list, vlist) {
> > +                     br_group.vid = v->vid == vg->pvid ? 0 : v->vid;
> > +
> > +                     __br_multicast_send_query(br, port, NULL, NULL,
> > +                                               &br_group, false, 0, NULL);
> > +             }
> > +     } else {
> > +             __br_multicast_send_query(br, port, NULL, NULL, &br_group,
> > +                                       false, 0, NULL);
> > +     }
> >
> >       time = jiffies;
> >       time += own_query->startup_sent < br->multicast_startup_query_count ?
> >
> 

-- 
/Horatiu
