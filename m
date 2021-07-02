Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DBB3BA816
	for <lists.bridge@lfdr.de>; Sat,  3 Jul 2021 11:40:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8DA86605E3;
	Sat,  3 Jul 2021 09:40:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fxkgj9JpBkG7; Sat,  3 Jul 2021 09:40:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 1871560636;
	Sat,  3 Jul 2021 09:40:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E7B4BC0033;
	Sat,  3 Jul 2021 09:40:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 87E9FC000E
 for <bridge@lists.linux-foundation.org>; Fri,  2 Jul 2021 11:29:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 68ACF40149
 for <bridge@lists.linux-foundation.org>; Fri,  2 Jul 2021 11:29:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qcEk5N4Z0sh1 for <bridge@lists.linux-foundation.org>;
 Fri,  2 Jul 2021 11:29:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from proxmox-new.maurer-it.com (proxmox-new.maurer-it.com
 [94.136.29.106])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 18DAF4002B
 for <bridge@lists.linux-foundation.org>; Fri,  2 Jul 2021 11:29:25 +0000 (UTC)
Received: from proxmox-new.maurer-it.com (localhost.localdomain [127.0.0.1])
 by proxmox-new.maurer-it.com (Proxmox) with ESMTP id 08C344043D;
 Fri,  2 Jul 2021 13:29:22 +0200 (CEST)
Date: Fri, 2 Jul 2021 13:29:19 +0200
From: Wolfgang Bumiller <w.bumiller@proxmox.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20210702112919.ccxyp4fyvrjrxkrz@wobu-vie.proxmox.com>
References: <20210702082605.6034-1-w.bumiller@proxmox.com>
 <113d8503-8670-c0a3-54a6-0b18af64632e@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <113d8503-8670-c0a3-54a6-0b18af64632e@nvidia.com>
X-Mailman-Approved-At: Sat, 03 Jul 2021 09:40:28 +0000
Cc: Vlad Yasevich <vyasevic@redhat.com>, "Michael S. Tsirkin" <mst@redhat.com>,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Thomas Lamprecht <t.lamprecht@proxmox.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v2] net: bridge: sync fdb to new
	unicast-filtering ports
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

On Fri, Jul 02, 2021 at 02:16:51PM +0300, Nikolay Aleksandrov wrote:
> On 02/07/2021 11:26, Wolfgang Bumiller wrote:
> > Since commit 2796d0c648c9 ("bridge: Automatically manage
> > port promiscuous mode.")
> > bridges with `vlan_filtering 1` and only 1 auto-port don't
> > set IFF_PROMISC for unicast-filtering-capable ports.
> > 
> > Normally on port changes `br_manage_promisc` is called to
> > update the promisc flags and unicast filters if necessary,
> > but it cannot distinguish between *new* ports and ones
> > losing their promisc flag, and new ports end up not
> > receiving the MAC address list.
> > 
> > Fix this by calling `br_fdb_sync_static` in `br_add_if`
> > after the port promisc flags are updated and the unicast
> > filter was supposed to have been filled.
> > 
> > Fixes: 2796d0c648c9 ("bridge: Automatically manage port promiscuous mode.")
> > Signed-off-by: Wolfgang Bumiller <w.bumiller@proxmox.com>
> > ---
> > Changes to v1:
> >   * Added unsync to error case.
> >   * Improved error message
> >   * Added `Fixes` tag to commit message
> > 
> 
> Hi,
> One comment below..
> 
> >  net/bridge/br_if.c | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> > 
> > diff --git a/net/bridge/br_if.c b/net/bridge/br_if.c
> > index f7d2f472ae24..2fd03a9742c8 100644
> > --- a/net/bridge/br_if.c
> > +++ b/net/bridge/br_if.c
> > @@ -652,6 +652,18 @@ int br_add_if(struct net_bridge *br, struct net_device *dev,
> >  	list_add_rcu(&p->list, &br->port_list);
> >  
> >  	nbp_update_port_count(br);
> > +	if (!br_promisc_port(p) && (p->dev->priv_flags & IFF_UNICAST_FLT)) {
> > +		/* When updating the port count we also update all ports'
> > +		 * promiscuous mode.
> > +		 * A port leaving promiscuous mode normally gets the bridge's
> > +		 * fdb synced to the unicast filter (if supported), however,
> > +		 * `br_port_clear_promisc` does not distinguish between
> > +		 * non-promiscuous ports and *new* ports, so we need to
> > +		 * sync explicitly here.
> > +		 */
> > +		if (br_fdb_sync_static(br, p))
> > +			netdev_err(dev, "failed to sync bridge static fdb addresses to this port\n");
> > +	}
> >  
> >  	netdev_update_features(br->dev);
> >  
> > @@ -701,6 +713,7 @@ int br_add_if(struct net_bridge *br, struct net_device *dev,
> >  	return 0;
> >  
> >  err7:
> > +	br_fdb_unsync_static(br, p);
> 
> I don't think you should always unsync, but only if they were synced otherwise you
> might delete an entry that wasn't added by the bridge (e.g. promisc bond dev with mac A ->
> port mac A and if the bridge has that as static fdb it will delete it on error)

Right, sorry, I don't know why I missed that.
Conditional setup => conditional teardown, obviously >.>

> 
> I've been thinking some more about this and obviously you can check if the sync happened,
> but you could avoid the error path if you move that sync after the vlan init (nbp_vlan_init())
> but before the port is STP enabled, that would avoid error handling altogether.

Yeah, that's true. Although it'll be easier for future changes
introducing another error case to forget about taking this into account.
Which way do you prefer?

