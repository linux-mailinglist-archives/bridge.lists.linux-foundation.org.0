Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 002F31E0F48
	for <lists.bridge@lfdr.de>; Mon, 25 May 2020 15:19:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6D69685F97;
	Mon, 25 May 2020 13:19:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m_bPfIJRZV1M; Mon, 25 May 2020 13:19:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8AAB08671C;
	Mon, 25 May 2020 13:19:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 69614C016F;
	Mon, 25 May 2020 13:19:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D32E6C016F
 for <bridge@lists.linux-foundation.org>; Mon, 25 May 2020 13:19:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C274A204B2
 for <bridge@lists.linux-foundation.org>; Mon, 25 May 2020 13:19:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X2TK4lUm1tdp for <bridge@lists.linux-foundation.org>;
 Mon, 25 May 2020 13:19:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id CAA96221F8
 for <bridge@lists.linux-foundation.org>; Mon, 25 May 2020 13:18:13 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 48817B027;
 Mon, 25 May 2020 13:18:14 +0000 (UTC)
Received: by lion.mk-sys.cz (Postfix, from userid 1000)
 id B8F7B6032A; Mon, 25 May 2020 15:18:10 +0200 (CEST)
Date: Mon, 25 May 2020 15:18:10 +0200
From: Michal Kubecek <mkubecek@suse.cz>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Message-ID: <20200525131810.tls4p6qfftprzpxg@lion.mk-sys.cz>
References: <20200525112827.t4nf4lamz6g4g2c5@soft-dev3.localdomain>
 <20200525100322.sjlfxhz2ztrfjia7@lion.mk-sys.cz>
 <88bc4a98-c0c8-32df-142e-d4738fe0065a@cumulusnetworks.com>
 <20200525131435.eqfgqh7gu5hmyc3g@soft-dev3.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200525131435.eqfgqh7gu5hmyc3g@soft-dev3.localdomain>
User-Agent: NeoMutt/20180716
Cc: andrew@lunn.ch, Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] MRP netlink interface
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

On Mon, May 25, 2020 at 01:14:35PM +0000, Horatiu Vultur wrote:
> The 05/25/2020 13:26, Nikolay Aleksandrov wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> > 
> > On 25/05/2020 13:03, Michal Kubecek wrote:
> > > On Mon, May 25, 2020 at 11:28:27AM +0000, Horatiu Vultur wrote:
> > > [...]
> > >> My first approach was to extend the 'struct br_mrp_instance' with a field that
> > >> contains the priority of the node. But this breaks the backwards compatibility,
> > >> and then every time when I need to change something, I will break the backwards
> > >> compatibility. Is this a way to go forward?
> > >
> > > No, I would rather say it's an example showing why passing data
> > > structures as binary data via netlink is a bad idea. I definitely
> > > wouldn't advice this approach for any new interface. One of the
> > > strengths of netlink is the ability to use structured and extensible
> > > messages.
> > >
> > >> Another approach is to restructure MRP netlink interface. What I was thinking to
> > >> keep the current attributes (IFLA_BRIDGE_MRP_INSTANCE,
> > >> IFLA_BRIDGE_MRP_PORT_STATE,...) but they will be nested attributes and each of
> > >> this attribute to contain the fields of the structures they represents.
> > >> For example:
> > >> [IFLA_AF_SPEC] = {
> > >>     [IFLA_BRIDGE_FLAGS]
> > >>     [IFLA_BRIDGE_MRP]
> > >>         [IFLA_BRIDGE_MRP_INSTANCE]
> > >>             [IFLA_BRIDGE_MRP_INSTANCE_RING_ID]
> > >>             [IFLA_BRIDGE_MRP_INSTANCE_P_IFINDEX]
> > >>             [IFLA_BRIDGE_MRP_INSTANCE_S_IFINDEX]
> > >>         [IFLA_BRIDGE_MRP_RING_ROLE]
> > >>             [IFLA_BRIDGE_MRP_RING_ROLE_RING_ID]
> > >>             [IFLA_BRIDGE_MRP_RING_ROLE_ROLE]
> > >>         ...
> > >> }
> > >> And then I can parse each field separately and then fill up the structure
> > >> (br_mrp_instance, br_mrp_port_role, ...) which will be used forward.
> > >> Then when this needs to be extended with the priority it would have the
> > >> following format:
> > >> [IFLA_AF_SPEC] = {
> > >>     [IFLA_BRIDGE_FLAGS]
> > >>     [IFLA_BRIDGE_MRP]
> > >>         [IFLA_BRIDGE_MRP_INSTANCE]
> > >>             [IFLA_BRIDGE_MRP_INSTANCE_RING_ID]
> > >>             [IFLA_BRIDGE_MRP_INSTANCE_P_IFINDEX]
> > >>             [IFLA_BRIDGE_MRP_INSTANCE_S_IFINDEX]
> > >>             [IFLA_BRIDGE_MRP_INSTANCE_PRIO]
> > >>         [IFLA_BRIDGE_MRP_RING_ROLE]
> > >>             [IFLA_BRIDGE_MRP_RING_ROLE_RING_ID]
> > >>             [IFLA_BRIDGE_MRP_RING_ROLE_ROLE]
> > >>         ...
> > >> }
> > >> And also the br_mrp_instance will have a field called prio.
> > >> So now, if the userspace is not updated to have support for setting the prio
> > >> then the kernel will use a default value. Then if the userspace contains a field
> > >> that the kernel doesn't know about, then it would just ignore it.
> > >> So in this way every time when the netlink interface will be extended it would
> > >> be backwards compatible.
> > >
> > > Silently ignoring unrecognized attributes in userspace requests is what
> > > most kernel netlink based interfaces have been doing traditionally but
> > > it's not really a good idea. Essentially it ties your hands so that you
> > > can only add new attributes which can be silently ignored without doing
> > > any harm, otherwise you risk that kernel will do something different
> > > than userspace asked and userspace does not even have a way to find out
> > > if the feature is supported or not. (IIRC there are even some places
> > > where ignoring an attribute changes the nature of the request but it is
> > > still ignored by older kernels.)
> > >
> > > That's why there have been an effort, mostly by Johannes Berg, to
> > > introduce and promote strict checking for new netlink interfaces and new
> > > attributes in existing netlink attributes. If you don't have strict
> > > checking for unknown attributes enabled yet, there isn't much that can
> > > be done for already released kernels but I would suggest to enable it as
> > > soon as possible.
> > >
> > > Michal
> 
> Thanks for the detail explanation. Currently this is in net-next so I
> would try to change it.
> Can you point me to some code that is using this strict checking for
> netlink attributes? Just to have a better understanding of it.

AFAICS you are using nla_parse_nested() in br_mrp_parse() so that the
validation should be strict, including rejection of unknown attributes.
See the comments at nla_parse() and nla_parse_deprecated() and
enum netlink_validation in include/net/netlink.h for details.

Michal

> > +1, we don't have strict checking for the bridge main af spec attributes, but
> > you could add that for new nested interfaces that need to be parsed like the
> > above
