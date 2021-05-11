Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E53BF37A5C1
	for <lists.bridge@lfdr.de>; Tue, 11 May 2021 13:29:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0205F83EAE;
	Tue, 11 May 2021 11:29:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V6lgRBjz3gUo; Tue, 11 May 2021 11:29:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC12E83E9A;
	Tue, 11 May 2021 11:29:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7A920C0024;
	Tue, 11 May 2021 11:29:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7728DC0001
 for <bridge@lists.linux-foundation.org>; Tue, 11 May 2021 11:29:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5BB0F83EAE
 for <bridge@lists.linux-foundation.org>; Tue, 11 May 2021 11:29:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eR9-JFaqdWD0 for <bridge@lists.linux-foundation.org>;
 Tue, 11 May 2021 11:29:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 87AC883E9A
 for <bridge@lists.linux-foundation.org>; Tue, 11 May 2021 11:29:00 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 711293E8F5; Tue, 11 May 2021 13:28:56 +0200 (CEST)
Date: Tue, 11 May 2021 13:28:54 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Message-ID: <20210511112854.GA2222@otheros>
References: <20210509194509.10849-1-linus.luessing@c0d3.blue>
 <20210509194509.10849-10-linus.luessing@c0d3.blue>
 <f2f1c811-0502-bde4-8ece-e47b3e30dc66@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <f2f1c811-0502-bde4-8ece-e47b3e30dc66@nvidia.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Last-TLS-Session-Version: TLSv1.2
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [net-next v2 09/11] net: bridge: mcast: split
 multicast router state for IPv4 and IPv6
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

On Tue, May 11, 2021 at 12:29:41PM +0300, Nikolay Aleksandrov wrote:
> [...]
> > -static void br_multicast_mark_router(struct net_bridge *br,
> > -				     struct net_bridge_port *port)
> > +#if IS_ENABLED(CONFIG_IPV6)
> > +struct hlist_node *
> > +br_ip6_multicast_get_rport_slot(struct net_bridge *br, struct net_bridge_port *port)
> > +{
> > +	struct hlist_node *slot = NULL;
> > +	struct net_bridge_port *p;
> > +
> > +	hlist_for_each_entry(p, &br->ip6_mc_router_list, ip6_rlist) {
> > +		if ((unsigned long)port >= (unsigned long)p)
> > +			break;
> > +		slot = &p->ip6_rlist;
> > +	}
> > +
> > +	return slot;
> > +}
> 
> The ip4/ip6 get_rport_slot functions are identical, why not add a list pointer
> and use one function ?

Hi Nikolay,

Thanks for all the feedback and reviewing again! I'll
remove (most of) the inlines as the router list modifications are
not in the fast path.

For the get_rport_slot functions, maybe I'm missing a simple
solution. Note that "ip6_rlist" in hlist_for_each_entry() is not a
pointer but will be expanded by the macro. I currently don't see
how I could solve this with just one hlist_for_each_entry().

Regards, Linus
