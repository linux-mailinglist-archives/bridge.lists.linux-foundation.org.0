Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5404B50DB93
	for <lists.bridge@lfdr.de>; Mon, 25 Apr 2022 10:47:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 999EE60B8B;
	Mon, 25 Apr 2022 08:47:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QuiHOQKG4_jt; Mon, 25 Apr 2022 08:47:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 1D7A660B43;
	Mon, 25 Apr 2022 08:47:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 656EBC002D;
	Mon, 25 Apr 2022 08:47:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DB727C002D
 for <bridge@lists.linux-foundation.org>; Mon, 25 Apr 2022 06:12:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B9FD8401B7
 for <bridge@lists.linux-foundation.org>; Mon, 25 Apr 2022 06:12:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=inria.fr
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 17wVjG959tnp for <bridge@lists.linux-foundation.org>;
 Mon, 25 Apr 2022 06:12:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6358040022
 for <bridge@lists.linux-foundation.org>; Mon, 25 Apr 2022 06:12:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inria.fr; s=dc;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=/BxesiWLX23HptYaPhomru56PL86zJU1uAC0FyjsfIw=;
 b=IAa7FT3P+9wE6dfRzZtDu0dhzOQW3OOcLz/o9DF4CNetwZTYgMz5dzLH
 yUr7DOd8nVDHeUPFKUUq5vhpiqnzHwILpYrW3xzX10/brVpo6wQwoyoSx
 p1oTCN8ySrmt3CdX/ppZcUjGmRSKs1Gq1KhBd6nS0NyAlhRvhDqV4o0La Y=;
Authentication-Results: mail2-relais-roc.national.inria.fr;
 dkim=none (message not signed) header.i=none;
 spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr;
 dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.90,287,1643670000"; d="scan'208";a="33083267"
Received: from ip-214.net-89-2-7.rev.numericable.fr (HELO hadrien)
 ([89.2.7.214]) by mail2-relais-roc.national.inria.fr with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Apr 2022 08:12:28 +0200
Date: Mon, 25 Apr 2022 08:12:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <d89eefc2-664f-8537-d10e-6fdfbb6823ed@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2204250811480.2759@hadrien>
References: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <c3a882e4fb6f9228f704ebe3c1fcace14ee6cdf2.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <7c8367b6-95c7-ea39-fafe-72495f343625@blackwall.org>
 <d89eefc2-664f-8537-d10e-6fdfbb6823ed@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-513187066-1650867148=:2759"
X-Mailman-Approved-At: Mon, 25 Apr 2022 08:47:17 +0000
Cc: shshaikh@marvell.com, jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, vladimir.oltean@nxp.com, sbrivio@redhat.com,
 claudiu.manoil@nxp.com, anthony.l.nguyen@intel.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net,
 UNGLinuxDriver@microchip.com, intel-wired-lan@lists.osuosl.org
Subject: Re: [Bridge] [PATCH net-next v3 1/2] rtnetlink: add extack support
 in fdb del handlers
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-513187066-1650867148=:2759
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 24 Apr 2022, Alaa Mohamed wrote:

>
> On ٢٤/٤/٢٠٢٢ ٢١:٠٢, Nikolay Aleksandrov wrote:
> > On 24/04/2022 15:09, Alaa Mohamed wrote:
> > > Add extack support to .ndo_fdb_del in netdevice.h and
> > > all related methods.
> > >
> > > Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
> > > ---
> > > changes in V3:
> > >          fix errors reported by checkpatch.pl
> > > ---
> > >   drivers/net/ethernet/intel/ice/ice_main.c        | 4 ++--
> > >   drivers/net/ethernet/mscc/ocelot_net.c           | 4 ++--
> > >   drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c | 2 +-
> > >   drivers/net/macvlan.c                            | 2 +-
> > >   drivers/net/vxlan/vxlan_core.c                   | 2 +-
> > >   include/linux/netdevice.h                        | 2 +-
> > >   net/bridge/br_fdb.c                              | 2 +-
> > >   net/bridge/br_private.h                          | 2 +-
> > >   net/core/rtnetlink.c                             | 4 ++--
> > >   9 files changed, 12 insertions(+), 12 deletions(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> > > b/drivers/net/ethernet/intel/ice/ice_main.c
> > > index d768925785ca..7b55d8d94803 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > > @@ -5678,10 +5678,10 @@ ice_fdb_add(struct ndmsg *ndm, struct nlattr
> > > __always_unused *tb[],
> > >   static int
> > >   ice_fdb_del(struct ndmsg *ndm, __always_unused struct nlattr *tb[],
> > >   	    struct net_device *dev, const unsigned char *addr,
> > > -	    __always_unused u16 vid)
> > > +	    __always_unused u16 vid, struct netlink_ext_ack *extack)
> > >   {
> > >   	int err;
> > > -
> > > +
> > What's changed here?
>
> In the previous version, I removed the blank line after "int err;" and you
> said I shouldn't so I added blank line.

This answer doesn't make sense.  You should make a patch against the code
as it is in the kernel, not against your previous proposal.

julia

>
> >
> > >   	if (ndm->ndm_state & NUD_PERMANENT) {
> > >   		netdev_err(dev, "FDB only supports static addresses\n");
> > >   		return -EINVAL;
> > > diff --git a/drivers/net/ethernet/mscc/ocelot_net.c
> > > b/drivers/net/ethernet/mscc/ocelot_net.c
> > > index 247bc105bdd2..e07c64e3159c 100644
> > > --- a/drivers/net/ethernet/mscc/ocelot_net.c
> > > +++ b/drivers/net/ethernet/mscc/ocelot_net.c
> > > @@ -774,14 +774,14 @@ static int ocelot_port_fdb_add(struct ndmsg *ndm,
> > > struct nlattr *tb[],
> > >
> > >   static int ocelot_port_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
> > >   			       struct net_device *dev,
> > > -			       const unsigned char *addr, u16 vid)
> > > +			       const unsigned char *addr, u16 vid, struct
> > > netlink_ext_ack *extack)
> > >   {
> > >   	struct ocelot_port_private *priv = netdev_priv(dev);
> > >   	struct ocelot_port *ocelot_port = &priv->port;
> > >   	struct ocelot *ocelot = ocelot_port->ocelot;
> > >   	int port = priv->chip_port;
> > >
> > > -	return ocelot_fdb_del(ocelot, port, addr, vid, ocelot_port->bridge);
> > > +	return ocelot_fdb_del(ocelot, port, addr, vid, ocelot_port->bridge,
> > > extack);
> > >   }
> > >
> > >   static int ocelot_port_fdb_dump(struct sk_buff *skb,
> > > diff --git a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
> > > b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
> > > index d320567b2cca..51fa23418f6a 100644
> > > --- a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
> > > +++ b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
> > > @@ -368,7 +368,7 @@ static int qlcnic_set_mac(struct net_device *netdev,
> > > void *p)
> > >
> > >   static int qlcnic_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
> > >   			struct net_device *netdev,
> > > -			const unsigned char *addr, u16 vid)
> > > +			const unsigned char *addr, u16 vid, struct
> > > netlink_ext_ack *extack)
> > >   {
> > >   	struct qlcnic_adapter *adapter = netdev_priv(netdev);
> > >   	int err = -EOPNOTSUPP;
> > > diff --git a/drivers/net/macvlan.c b/drivers/net/macvlan.c
> > > index 069e8824c264..ffd34d9f7049 100644
> > > --- a/drivers/net/macvlan.c
> > > +++ b/drivers/net/macvlan.c
> > > @@ -1017,7 +1017,7 @@ static int macvlan_fdb_add(struct ndmsg *ndm, struct
> > > nlattr *tb[],
> > >
> > >   static int macvlan_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
> > >   			   struct net_device *dev,
> > > -			   const unsigned char *addr, u16 vid)
> > > +			   const unsigned char *addr, u16 vid, struct
> > > netlink_ext_ack *extack)
> > >   {
> > >   	struct macvlan_dev *vlan = netdev_priv(dev);
> > >   	int err = -EINVAL;
> > > diff --git a/drivers/net/vxlan/vxlan_core.c
> > > b/drivers/net/vxlan/vxlan_core.c
> > > index de97ff98d36e..cf2f60037340 100644
> > > --- a/drivers/net/vxlan/vxlan_core.c
> > > +++ b/drivers/net/vxlan/vxlan_core.c
> > > @@ -1280,7 +1280,7 @@ int __vxlan_fdb_delete(struct vxlan_dev *vxlan,
> > >   /* Delete entry (via netlink) */
> > >   static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
> > >   			    struct net_device *dev,
> > > -			    const unsigned char *addr, u16 vid)
> > > +			    const unsigned char *addr, u16 vid, struct
> > > netlink_ext_ack *extack)
> > >   {
> > >   	struct vxlan_dev *vxlan = netdev_priv(dev);
> > >   	union vxlan_addr ip;
> > > diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
> > > index 28ea4f8269d4..d0d2a8f33c73 100644
> > > --- a/include/linux/netdevice.h
> > > +++ b/include/linux/netdevice.h
> > > @@ -1509,7 +1509,7 @@ struct net_device_ops {
> > >   					       struct nlattr *tb[],
> > >   					       struct net_device *dev,
> > >   					       const unsigned char *addr,
> > > -					       u16 vid);
> > > +					       u16 vid, struct netlink_ext_ack
> > > *extack);
> > >   	int			(*ndo_fdb_dump)(struct sk_buff *skb,
> > >   						struct netlink_callback *cb,
> > >   						struct net_device *dev,
> > > diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
> > > index 6ccda68bd473..5bfce2e9a553 100644
> > > --- a/net/bridge/br_fdb.c
> > > +++ b/net/bridge/br_fdb.c
> > > @@ -1110,7 +1110,7 @@ static int __br_fdb_delete(struct net_bridge *br,
> > >   /* Remove neighbor entry with RTM_DELNEIGH */
> > >   int br_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
> > >   		  struct net_device *dev,
> > > -		  const unsigned char *addr, u16 vid)
> > > +		  const unsigned char *addr, u16 vid, struct netlink_ext_ack
> > > *extack)
> > >   {
> > >   	struct net_bridge_vlan_group *vg;
> > >   	struct net_bridge_port *p = NULL;
> > > diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> > > index 18ccc3d5d296..95348c1c9ce5 100644
> > > --- a/net/bridge/br_private.h
> > > +++ b/net/bridge/br_private.h
> > > @@ -780,7 +780,7 @@ void br_fdb_update(struct net_bridge *br, struct
> > > net_bridge_port *source,
> > >   		   const unsigned char *addr, u16 vid, unsigned long flags);
> > >
> > >   int br_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
> > > -		  struct net_device *dev, const unsigned char *addr, u16 vid);
> > > +		  struct net_device *dev, const unsigned char *addr, u16 vid,
> > > struct netlink_ext_ack *extack);
> > This is way too long (111 chars) and checkpatch should've complained about
> > it.
> > WARNING: line length of 111 exceeds 100 columns
> > #234: FILE: net/bridge/br_private.h:782:
> > +		  struct net_device *dev, const unsigned char *addr, u16 vid,
> > struct netlink_ext_ack *extack);
>
> I will fix it.
>
> >
> > >   int br_fdb_add(struct ndmsg *nlh, struct nlattr *tb[], struct net_device
> > > *dev,
> > >   	       const unsigned char *addr, u16 vid, u16 nlh_flags,
> > >   	       struct netlink_ext_ack *extack);
> > > diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
> > > index 4041b3e2e8ec..99b30ae58a47 100644
> > > --- a/net/core/rtnetlink.c
> > > +++ b/net/core/rtnetlink.c
> > > @@ -4223,7 +4223,7 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct
> > > nlmsghdr *nlh,
> > >   		const struct net_device_ops *ops = br_dev->netdev_ops;
> > >
> > >   		if (ops->ndo_fdb_del)
> > > -			err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid);
> > > +			err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid,
> > > extack);
> > >
> > >   		if (err)
> > >   			goto out;
> > > @@ -4235,7 +4235,7 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct
> > > nlmsghdr *nlh,
> > >   	if (ndm->ndm_flags & NTF_SELF) {
> > >   		if (dev->netdev_ops->ndo_fdb_del)
> > >   			err = dev->netdev_ops->ndo_fdb_del(ndm, tb, dev, addr,
> > > -							   vid);
> > > +							   vid, extack);
> > >   		else
> > >   			err = ndo_dflt_fdb_del(ndm, tb, dev, addr, vid);
> > >
> > > --
> > > 2.36.0
> > >
>
>
--8323329-513187066-1650867148=:2759--
