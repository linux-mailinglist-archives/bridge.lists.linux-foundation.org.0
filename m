Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B48A26E227
	for <lists.bridge@lfdr.de>; Thu, 17 Sep 2020 19:20:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ADCE02E1CD;
	Thu, 17 Sep 2020 17:20:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oGOBKJu7ymBD; Thu, 17 Sep 2020 17:19:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 8FD362E1A9;
	Thu, 17 Sep 2020 17:19:33 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 82733C0888;
	Thu, 17 Sep 2020 17:19:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8DD9BC0051
 for <bridge@lists.linux-foundation.org>; Tue, 15 Sep 2020 08:26:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 632AA20477
 for <bridge@lists.linux-foundation.org>; Tue, 15 Sep 2020 08:26:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xChXLAKUecua for <bridge@lists.linux-foundation.org>;
 Tue, 15 Sep 2020 08:26:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by silver.osuosl.org (Postfix) with ESMTPS id BA3FE203F7
 for <bridge@lists.linux-foundation.org>; Tue, 15 Sep 2020 08:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1600158371; x=1631694371;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=aQTSl4A///ZE1wGSlUUw/tX8YAaZYp1WUvSQr1uwZN0=;
 b=UHuvu5P5BagffhDLk3pVoJOFJVVgQbg7XfDK/FnHBue8BZ+yGAo736uC
 uHfdPTeWS8ZjcUeejzvUO/KftGw2osQskMft49cDPtsvNMbmdMUI85rb3
 bEPgKwFvjZp64P3/XEr2BNyVENaK6SFTV1YzYV6AgQ/4GXr3zf+dLuzHL
 oinOHOu5rvxBOAJB9Cb/OWkY29jG9jnze9dSBQE1XHnHX6plJkVAgwvHq
 2T6y4VDHfj5/Gkls+E0GgWjSrvFNZrcNZrz8XClOXoxQMJg9L3MzLoEjq
 W5KRqdApdgTHPUzagFcs2F15tumhWxS19uKe2b/DogcpmfR7wrbppu5pp Q==;
IronPort-SDR: cr/X9skK1adfXZHgaIfDgGXAkhY+WecYaVm+QsFAKlYQXOM/1pa6mgn6H1FISjnpVPXX3qboIa
 7Ds6+MMftalx7lcwhTkiepnizUc91lJPg1IQHDAYhIaU9UA89O6KjGIFTu/LRo/ZhtmqL31hHw
 4q2AFcRaYm+AcabVxjy6/QqNTzGtONHEj/wY772HNKdTIpTLmGLAiwlS9UKDgZ9p2Vb2L0+w4w
 zQwjQBEzKI3JcfXmNUVxykaDKiTmoDeFG3SmcWwV4HmB5HldTpGB2PEBjeyTPJocEWw0cr9vZ1
 ZHQ=
X-IronPort-AV: E=Sophos;i="5.76,429,1592895600"; d="scan'208";a="26444438"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Sep 2020 01:26:10 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 15 Sep 2020 01:26:09 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Tue, 15 Sep 2020 01:26:08 -0700
Date: Tue, 15 Sep 2020 08:23:33 +0000
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20200915082333.4afoehj26daih2x7@soft-test08>
References: <20200904091527.669109-1-henrik.bjoernlund@microchip.com>
 <20200904091527.669109-2-henrik.bjoernlund@microchip.com>
 <8bb3694a731ae574911c0f3ce2d71fadeb8c90cf.camel@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <8bb3694a731ae574911c0f3ce2d71fadeb8c90cf.camel@nvidia.com>
X-Mailman-Approved-At: Thu, 17 Sep 2020 17:19:30 +0000
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 "idosch@mellanox.com" <idosch@mellanox.com>,
 "jiri@mellanox.com" <jiri@mellanox.com>, Roopa Prabhu <roopa@nvidia.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "horatiu.vultur@microchip.com" <horatiu.vultur@microchip.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH RFC 1/7] net: bridge: extend the process of
	special frames
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
From: "henrik.bjoernlund--- via Bridge" <bridge@lists.linux-foundation.org>
Reply-To: "henrik.bjoernlund@microchip.com" <henrik.bjoernlund@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Thanks for your review. I will update in the next version as suggested.

Regards
Henrik


The 09/08/2020 12:12, Nikolay Aleksandrov wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Fri, 2020-09-04 at 09:15 +0000, Henrik Bjoernlund wrote:
> > This patch extends the processing of frames in the bridge. Currently MRP
> > frames needs special processing and the current implementation doesn't
> > allow a nice way to process different frame types. Therefore try to
> > improve this by adding a list that contains frame types that need
> > special processing. This list is iterated for each input frame and if
> > there is a match based on frame type then these functions will be called
> > and decide what to do with the frame. It can process the frame then the
> > bridge doesn't need to do anything or don't process so then the bridge
> > will do normal forwarding.
> >
> > Signed-off-by: Henrik Bjoernlund  <henrik.bjoernlund@microchip.com>
> > ---
> >  net/bridge/br_device.c  |  1 +
> >  net/bridge/br_input.c   | 31 ++++++++++++++++++++++++++++++-
> >  net/bridge/br_mrp.c     | 19 +++++++++++++++----
> >  net/bridge/br_private.h | 18 ++++++++++++------
> >  4 files changed, 58 insertions(+), 11 deletions(-)
> >
> 
> Hi,
> First I must say I do like this approach, thanks for generalizing it.
> You can switch to a hlist so that there's just 1 pointer in the head.
> I don't think you need list when you're walking only in one direction.
> A few more minor comments below.
> 
> > diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
> > index 9a2fb4aa1a10..a9232db03108 100644
> > --- a/net/bridge/br_device.c
> > +++ b/net/bridge/br_device.c
> > @@ -473,6 +473,7 @@ void br_dev_setup(struct net_device *dev)
> >       spin_lock_init(&br->lock);
> >       INIT_LIST_HEAD(&br->port_list);
> >       INIT_HLIST_HEAD(&br->fdb_list);
> > +     INIT_LIST_HEAD(&br->ftype_list);
> >  #if IS_ENABLED(CONFIG_BRIDGE_MRP)
> >       INIT_LIST_HEAD(&br->mrp_list);
> >  #endif
> > diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
> > index 59a318b9f646..0f475b21094c 100644
> > --- a/net/bridge/br_input.c
> > +++ b/net/bridge/br_input.c
> > @@ -254,6 +254,21 @@ static int nf_hook_bridge_pre(struct sk_buff *skb, struct sk_buff **pskb)
> >       return RX_HANDLER_CONSUMED;
> >  }
> >
> > +/* Return 0 if the frame was not processed otherwise 1
> > + * note: already called with rcu_read_lock
> > + */
> > +static int br_process_frame_type(struct net_bridge_port *p,
> > +                              struct sk_buff *skb)
> > +{
> > +     struct br_frame_type *tmp;
> > +
> > +     list_for_each_entry_rcu(tmp, &p->br->ftype_list, list) {
> > +             if (unlikely(tmp->type == skb->protocol))
> > +                     return tmp->func(p, skb);
> > +     }
> 
> Nit: you can drop the {}.
> 
> > +     return 0;
> > +}
> > +
> >  /*
> >   * Return NULL if skb is handled
> >   * note: already called with rcu_read_lock
> > @@ -343,7 +358,7 @@ static rx_handler_result_t br_handle_frame(struct sk_buff **pskb)
> >               }
> >       }
> >
> > -     if (unlikely(br_mrp_process(p, skb)))
> > +     if (unlikely(br_process_frame_type(p, skb)))
> >               return RX_HANDLER_PASS;
> >
> >  forward:
> > @@ -380,3 +395,17 @@ rx_handler_func_t *br_get_rx_handler(const struct net_device *dev)
> >
> >       return br_handle_frame;
> >  }
> > +
> > +void br_add_frame(struct net_bridge *br, struct br_frame_type *ft)
> > +{
> > +     list_add_rcu(&ft->list, &br->ftype_list);
> > +}
> > +
> > +void br_del_frame(struct net_bridge *br, struct br_frame_type *ft)
> > +{
> > +     struct br_frame_type *tmp;
> > +
> > +     list_for_each_entry(tmp, &br->ftype_list, list)
> > +             if (ft == tmp)
> > +                     list_del_rcu(&ft->list);
> > +}
> > diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
> > index b36689e6e7cb..0428e1785041 100644
> > --- a/net/bridge/br_mrp.c
> > +++ b/net/bridge/br_mrp.c
> > @@ -6,6 +6,13 @@
> >  static const u8 mrp_test_dmac[ETH_ALEN] = { 0x1, 0x15, 0x4e, 0x0, 0x0, 0x1 };
> >  static const u8 mrp_in_test_dmac[ETH_ALEN] = { 0x1, 0x15, 0x4e, 0x0, 0x0, 0x3 };
> >
> > +static int br_mrp_process(struct net_bridge_port *p, struct sk_buff *skb);
> > +
> > +static struct br_frame_type mrp_frame_type __read_mostly = {
> > +     .type = cpu_to_be16(ETH_P_MRP),
> > +     .func = br_mrp_process,
> > +};
> > +
> >  static bool br_mrp_is_ring_port(struct net_bridge_port *p_port,
> >                               struct net_bridge_port *s_port,
> >                               struct net_bridge_port *port)
> > @@ -445,6 +452,9 @@ static void br_mrp_del_impl(struct net_bridge *br, struct br_mrp *mrp)
> >
> >       list_del_rcu(&mrp->list);
> >       kfree_rcu(mrp, rcu);
> > +
> > +     if (list_empty(&br->mrp_list))
> > +             br_del_frame(br, &mrp_frame_type);
> >  }
> >
> >  /* Adds a new MRP instance.
> > @@ -493,6 +503,9 @@ int br_mrp_add(struct net_bridge *br, struct br_mrp_instance *instance)
> >       spin_unlock_bh(&br->lock);
> >       rcu_assign_pointer(mrp->s_port, p);
> >
> > +     if (list_empty(&br->mrp_list))
> > +             br_add_frame(br, &mrp_frame_type);
> > +
> >       INIT_DELAYED_WORK(&mrp->test_work, br_mrp_test_work_expired);
> >       INIT_DELAYED_WORK(&mrp->in_test_work, br_mrp_in_test_work_expired);
> >       list_add_tail_rcu(&mrp->list, &br->mrp_list);
> > @@ -1172,15 +1185,13 @@ static int br_mrp_rcv(struct net_bridge_port *p,
> >   * normal forwarding.
> >   * note: already called with rcu_read_lock
> >   */
> > -int br_mrp_process(struct net_bridge_port *p, struct sk_buff *skb)
> > +static int br_mrp_process(struct net_bridge_port *p, struct sk_buff *skb)
> >  {
> >       /* If there is no MRP instance do normal forwarding */
> >       if (likely(!(p->flags & BR_MRP_AWARE)))
> >               goto out;
> >
> > -     if (unlikely(skb->protocol == htons(ETH_P_MRP)))
> > -             return br_mrp_rcv(p, skb, p->dev);
> > -
> > +     return br_mrp_rcv(p, skb, p->dev);
> >  out:
> >       return 0;
> >  }
> > diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> > index baa1500f384f..e67c6d9e8bea 100644
> > --- a/net/bridge/br_private.h
> > +++ b/net/bridge/br_private.h
> > @@ -89,6 +89,13 @@ struct bridge_mcast_stats {
> >  };
> >  #endif
> >
> > +struct br_frame_type {
> > +     __be16                  type;
> > +     int                     (*func)(struct net_bridge_port *port,
> > +                                     struct sk_buff *skb);
> 
> Perhaps frame_handler or something similar would be a better name for the
> callback ?
> 
> > +     struct list_head        list;
> > +};
> > +
> >  struct br_vlan_stats {
> >       u64 rx_bytes;
> >       u64 rx_packets;
> > @@ -433,6 +440,8 @@ struct net_bridge {
> >  #endif
> >       struct hlist_head               fdb_list;
> >
> > +     struct list_head                ftype_list;
> 
> Could you please expand this to frame_type_list ?
> 
> > +
> >  #if IS_ENABLED(CONFIG_BRIDGE_MRP)
> >       struct list_head                mrp_list;
> >  #endif
> > @@ -708,6 +717,9 @@ int nbp_backup_change(struct net_bridge_port *p, struct net_device *backup_dev);
> >  int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb);
> >  rx_handler_func_t *br_get_rx_handler(const struct net_device *dev);
> >
> > +void br_add_frame(struct net_bridge *br, struct br_frame_type *ft);
> > +void br_del_frame(struct net_bridge *br, struct br_frame_type *ft);
> > +
> >  static inline bool br_rx_handler_check_rcu(const struct net_device *dev)
> >  {
> >       return rcu_dereference(dev->rx_handler) == br_get_rx_handler(dev);
> > @@ -1320,7 +1332,6 @@ extern int (*br_fdb_test_addr_hook)(struct net_device *dev, unsigned char *addr)
> >  #if IS_ENABLED(CONFIG_BRIDGE_MRP)
> >  int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
> >                struct nlattr *attr, int cmd, struct netlink_ext_ack *extack);
> > -int br_mrp_process(struct net_bridge_port *p, struct sk_buff *skb);
> >  bool br_mrp_enabled(struct net_bridge *br);
> >  void br_mrp_port_del(struct net_bridge *br, struct net_bridge_port *p);
> >  int br_mrp_fill_info(struct sk_buff *skb, struct net_bridge *br);
> > @@ -1332,11 +1343,6 @@ static inline int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
> >       return -EOPNOTSUPP;
> >  }
> >
> > -static inline int br_mrp_process(struct net_bridge_port *p, struct sk_buff *skb)
> > -{
> > -     return 0;
> > -}
> > -
> >  static inline bool br_mrp_enabled(struct net_bridge *br)
> >  {
> >       return false;
> 

-- 
/Henrik
