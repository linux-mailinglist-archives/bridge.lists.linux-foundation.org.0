Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AEEF226E222
	for <lists.bridge@lfdr.de>; Thu, 17 Sep 2020 19:19:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 462CA879E5;
	Thu, 17 Sep 2020 17:19:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EMRB4T2GOj0y; Thu, 17 Sep 2020 17:19:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1DAB8879B3;
	Thu, 17 Sep 2020 17:19:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EB6C3C0859;
	Thu, 17 Sep 2020 17:19:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A88FEC0051
 for <bridge@lists.linux-foundation.org>; Tue, 15 Sep 2020 10:02:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 64D09204DE
 for <bridge@lists.linux-foundation.org>; Tue, 15 Sep 2020 10:02:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w-KQNYlbnYM3 for <bridge@lists.linux-foundation.org>;
 Tue, 15 Sep 2020 10:02:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by silver.osuosl.org (Postfix) with ESMTPS id DCD3E204C3
 for <bridge@lists.linux-foundation.org>; Tue, 15 Sep 2020 10:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1600164174; x=1631700174;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=VDuFAZKE9N46+36zzKBBpzaXvyDd1MrM8aOiIAUSOH8=;
 b=Yeo6VA7gyozDV65o2tzb49DVEs8imqSx+GqUrMWHGnBfm/gq4sVtmsJO
 YjKjwd8J0l94f/CmxBAyMUPEY5QpMOLUdzwKA7/LT4IHe7CIWEfbCJEfT
 UU6dG0Ih2HJE0yy6f6oJzxGC6WClPtMeHj4B4Zwzrb3Wwy6A3fos73vH6
 qhmxdPsxOI2ejzk4O2HleQpk8gBWIhoiWVu4wsuEO+04j48HhUH7uDZsT
 RYYF1PhVZazHXObPQFuPisrIOwX+ZKckmSC19dEptLXmINQEXFilgU7rX
 iFWx/0Lf0XNjonL6lLkIs3tr2wRinXgfjWdwxJEUhlzkETff+FMeA1Oma g==;
IronPort-SDR: 60d1DH5BYDUTQVvtML3UYotGwxATmlj7AZjfXzE7e5K7TW52BW/opeeRGeurkNBpxQeI/4ZD+g
 Yh+orLXzKlUPHPb2d+sS4+6UBCEPwh8Cj5TovDlgBfVQ0lqfXrnm6u4BFEGpXWkERvuVQIt9/k
 fHeTH6mJ0IF7N1alc8H+aGbXpXNupPsEqZEi1MZIOfnxzwFuIWXVl+9+HaqEX/+LmKT53z0mJ4
 MZ2rZtYU7GTAxLtLp3rWe6oeqGW+wXwDCKxknrpK851s7qWk4aIttXeNiExXzKpc9kUEqw5XFu
 QkM=
X-IronPort-AV: E=Sophos;i="5.76,429,1592895600"; d="scan'208";a="91846117"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Sep 2020 03:02:52 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 15 Sep 2020 03:02:42 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Tue, 15 Sep 2020 03:02:50 -0700
Date: Tue, 15 Sep 2020 10:00:16 +0000
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20200915100016.tqxsgef6dts2rbno@soft-test08>
References: <20200904091527.669109-1-henrik.bjoernlund@microchip.com>
 <20200904091527.669109-8-henrik.bjoernlund@microchip.com>
 <d84df90ff3fd079ba0fec33f865ce4a257ab23d8.camel@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <d84df90ff3fd079ba0fec33f865ce4a257ab23d8.camel@nvidia.com>
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
Subject: Re: [Bridge] [PATCH RFC 7/7] bridge: cfm: Bridge port remove.
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

Thanks for the review. I will update the next version as suggested.

The 09/08/2020 13:58, Nikolay Aleksandrov wrote:
> 
> On Fri, 2020-09-04 at 09:15 +0000, Henrik Bjoernlund wrote:
> > This is addition of CFM functionality to delete MEP instances
> > on a port that is removed from the bridge.
> > A MEP can only exist on a port that is related to a bridge.
> >
> > Signed-off-by: Henrik Bjoernlund  <henrik.bjoernlund@microchip.com>
> > ---
> >  net/bridge/br_cfm.c     | 13 +++++++++++++
> >  net/bridge/br_if.c      |  1 +
> >  net/bridge/br_private.h |  6 ++++++
> >  3 files changed, 20 insertions(+)
> >
> > diff --git a/net/bridge/br_cfm.c b/net/bridge/br_cfm.c
> > index b7fed2c1d8ec..c724ce020ce3 100644
> > --- a/net/bridge/br_cfm.c
> > +++ b/net/bridge/br_cfm.c
> > @@ -921,3 +921,16 @@ bool br_cfm_created(struct net_bridge *br)
> >  {
> >       return !list_empty(&br->mep_list);
> >  }
> > +
> > +/* Deletes the CFM instances on a specific bridge port
> > + * note: called under rtnl_lock
> > + */
> > +void br_cfm_port_del(struct net_bridge *br, struct net_bridge_port *port)
> > +{
> > +     struct br_cfm_mep *mep;
> > +
> > +     list_for_each_entry_rcu(mep, &br->mep_list, head,
> > +                             lockdep_rtnl_is_held())
> 
> Use standard/non-rcu list traversing, rtnl is already held.
> 
> > +             if (mep->create.ifindex == port->dev->ifindex)
> > +                     mep_delete_implementation(br, mep);
> > +}
> > diff --git a/net/bridge/br_if.c b/net/bridge/br_if.c
> > index a0e9a7937412..f7d2f472ae24 100644
> > --- a/net/bridge/br_if.c
> > +++ b/net/bridge/br_if.c
> > @@ -334,6 +334,7 @@ static void del_nbp(struct net_bridge_port *p)
> >       spin_unlock_bh(&br->lock);
> >
> >       br_mrp_port_del(br, p);
> > +     br_cfm_port_del(br, p);
> >
> >       br_ifinfo_notify(RTM_DELLINK, NULL, p);
> >
> > diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> > index 53bcbdd21f34..5617255f0c0c 100644
> > --- a/net/bridge/br_private.h
> > +++ b/net/bridge/br_private.h
> > @@ -1369,6 +1369,7 @@ int br_cfm_parse(struct net_bridge *br, struct net_bridge_port *p,
> >                struct nlattr *attr, int cmd, struct netlink_ext_ack *extack);
> >  int br_cfm_rx_frame_process(struct net_bridge_port *p, struct sk_buff *skb);
> >  bool br_cfm_created(struct net_bridge *br);
> > +void br_cfm_port_del(struct net_bridge *br, struct net_bridge_port *p);
> >  int br_cfm_config_fill_info(struct sk_buff *skb, struct net_bridge *br);
> >  int br_cfm_status_fill_info(struct sk_buff *skb,
> >                           struct net_bridge *br,
> > @@ -1393,6 +1394,11 @@ static inline bool br_cfm_created(struct net_bridge *br)
> >       return false;
> >  }
> >
> > +static inline void br_cfm_port_del(struct net_bridge *br,
> > +                                struct net_bridge_port *p)
> > +{
> > +}
> > +
> >  static inline int br_cfm_config_fill_info(struct sk_buff *skb, struct net_bridge *br)
> >  {
> >       return -EOPNOTSUPP;
> 

-- 
/Henrik
