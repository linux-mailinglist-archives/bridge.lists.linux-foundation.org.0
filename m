Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A85101B15B9
	for <lists.bridge@lfdr.de>; Mon, 20 Apr 2020 21:16:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 26E2D22053;
	Mon, 20 Apr 2020 19:16:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jNBPTPBYRoye; Mon, 20 Apr 2020 19:16:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id D91FE22001;
	Mon, 20 Apr 2020 19:16:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BCEC9C0177;
	Mon, 20 Apr 2020 19:16:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3856DC0177
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 19:16:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 25E5584266
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 19:16:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XgCj4HaFqS+j for <bridge@lists.linux-foundation.org>;
 Mon, 20 Apr 2020 19:16:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4EE6384189
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 19:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587410200; x=1618946200;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=y3VTXHw8/f/xzZpAPTTosZewiTx9SOPuKmC7E3cHTv4=;
 b=wdkukZl8ptwAtSu/0fQKaC2l85bMxhPi5J+60m3jbV54SpbHV3vCuv54
 Y6bFGjuasFkhSMw5ikWeHJcNqhVG+Qt+mnLVbeprBYbbpjodWBllOey5y
 Rt94pcHBzdXWWGxFN3VMVqi2Ozw3HsYQPb1iB+3eesRZ4Vz1oTkHsec7m
 IkuwiUfymCFLktK4YtCRtuDA4ZNpUKxlXOGlfm17tnSapOSsyksTLHHOo
 w64VWGwOnCgQSWu7YPS4YLsZD9GsGvR5Dokckij1+fltss1kTOHVcYhj9
 cL7ipPjrBqj/9eV+6VpQqyt65QOq//G7o4+QFRp4HBrJtWYAVZv9Qgd3Q g==;
IronPort-SDR: NyJlXEwE8/F6tkBUNF9bQ4OUeLqf3BkWSbD0EjmwcE3yA1OXfvfHqLCnyOHT3GOB0aQnU7jwZO
 /Qb1smcr7uj+3CrNQK6zenih5jjXOA+nnXc6HQ+2Hle9g/BHj+rdQWI655Pc/AAPN1VGKAP+WL
 lLqOmv8bN+I3cb+DkW8OfUtCOx4+rytacmd7Q4tEHf8XvuWIKf6totsgHWJqdpEUT1D5bseDX0
 rhuiu7epO35UMOJq+ioLl7hD2cNqSmmSR80SuPA2waW7H4bQQf7t5JgkVvj8gwo5w8q/hq4jqd
 k4M=
X-IronPort-AV: E=Sophos;i="5.72,407,1580799600"; d="scan'208";a="72780182"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Apr 2020 12:16:39 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 20 Apr 2020 12:16:45 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Mon, 20 Apr 2020 12:16:38 -0700
Date: Mon, 20 Apr 2020 21:16:37 +0200
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20200420191637.5skfpcayidzkb43w@soft-dev3.microsemi.net>
References: <20200420150947.30974-1-horatiu.vultur@microchip.com>
 <20200420150947.30974-11-horatiu.vultur@microchip.com>
 <066720c4-ddc4-ce71-734f-932b6a342e01@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <066720c4-ddc4-ce71-734f-932b6a342e01@cumulusnetworks.com>
User-Agent: NeoMutt/20180716
Cc: ivecera@redhat.com, andrew@lunn.ch, jiri@resnulli.us,
 netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, kuba@kernel.org, olteanv@gmail.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 10/13] bridge: mrp: Implement netlink
 interface to configure MRP
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

The 04/20/2020 20:18, Nikolay Aleksandrov wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On 20/04/2020 18:09, Horatiu Vultur wrote:
> > Implement netlink interface to configure MRP. The implementation
> > will do sanity checks over the attributes and then eventually call the MRP
> > interface.
> >
> > Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> > ---
> >  net/bridge/br_mrp_netlink.c | 117 ++++++++++++++++++++++++++++++++++++
> >  1 file changed, 117 insertions(+)
> >  create mode 100644 net/bridge/br_mrp_netlink.c
> >
> > diff --git a/net/bridge/br_mrp_netlink.c b/net/bridge/br_mrp_netlink.c
> > new file mode 100644
> > index 000000000000..0ff42e7c7f57
> > --- /dev/null
> > +++ b/net/bridge/br_mrp_netlink.c
> > @@ -0,0 +1,117 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +
> > +#include <net/genetlink.h>
> > +
> > +#include <uapi/linux/mrp_bridge.h>
> > +#include "br_private.h"
> > +#include "br_private_mrp.h"
> > +
> > +static const struct nla_policy br_mrp_policy[IFLA_BRIDGE_MRP_MAX + 1] = {
> > +     [IFLA_BRIDGE_MRP_UNSPEC]        = { .type = NLA_REJECT },
> > +     [IFLA_BRIDGE_MRP_INSTANCE]      = { .type = NLA_EXACT_LEN,
> > +                                         .len = sizeof(struct br_mrp_instance)},
> > +     [IFLA_BRIDGE_MRP_PORT_STATE]    = { .type = NLA_U32 },
> > +     [IFLA_BRIDGE_MRP_PORT_ROLE]     = { .type = NLA_EXACT_LEN,
> > +                                         .len = sizeof(struct br_mrp_port_role)},
> > +     [IFLA_BRIDGE_MRP_RING_STATE]    = { .type = NLA_EXACT_LEN,
> > +                                         .len = sizeof(struct br_mrp_ring_state)},
> > +     [IFLA_BRIDGE_MRP_RING_ROLE]     = { .type = NLA_EXACT_LEN,
> > +                                         .len = sizeof(struct br_mrp_ring_role)},
> > +     [IFLA_BRIDGE_MRP_START_TEST]    = { .type = NLA_EXACT_LEN,
> > +                                         .len = sizeof(struct br_mrp_start_test)},
> > +};
> > +
> > +int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
> > +              struct nlattr *attr, int cmd, struct netlink_ext_ack *extack)
> > +{
> > +     struct nlattr *tb[IFLA_BRIDGE_MRP_MAX + 1];
> > +     int err;
> > +
> > +     if (br->stp_enabled != BR_NO_STP) {
> > +             NL_SET_ERR_MSG_MOD(extack, "MRP can't be enabled if STP is already enabled\n");
> > +             return -EINVAL;
> > +     }
> > +
> > +     err = nla_parse_nested(tb, IFLA_BRIDGE_MRP_MAX, attr,
> > +                            NULL, extack);
> > +     if (err)
> > +             return err;
> > +
> > +     if (tb[IFLA_BRIDGE_MRP_INSTANCE]) {
> > +             struct br_mrp_instance *instance =
> > +                     nla_data(tb[IFLA_BRIDGE_MRP_INSTANCE]);
> > +
> > +             if (cmd == RTM_SETLINK)
> > +                     err = br_mrp_add(br, instance);
> > +             else
> > +                     err = br_mrp_del(br, instance);
> > +             if (err)
> > +                     return err;
> > +     }
> > +
> > +     if (tb[IFLA_BRIDGE_MRP_PORT_STATE]) {
> > +             enum br_mrp_port_state_type state =
> > +                     nla_get_u32(tb[IFLA_BRIDGE_MRP_PORT_STATE]);
> > +
> > +             err = br_mrp_set_port_state(p, state);
> > +             if (err)
> > +                     return err;
> > +     }
> > +
> > +     if (tb[IFLA_BRIDGE_MRP_PORT_ROLE]) {
> > +             struct br_mrp_port_role *role =
> > +                     nla_data(tb[IFLA_BRIDGE_MRP_PORT_ROLE]);
> > +
> > +             err = br_mrp_set_port_role(p, role);
> > +             if (err)
> > +                     return err;
> > +     }
> > +
> > +     if (tb[IFLA_BRIDGE_MRP_RING_STATE]) {
> > +             struct br_mrp_ring_state *state =
> > +                     nla_data(tb[IFLA_BRIDGE_MRP_RING_STATE]);
> > +
> > +             err = br_mrp_set_ring_state(br, state);
> > +             if (err)
> > +                     return err;
> > +     }
> > +
> > +     if (tb[IFLA_BRIDGE_MRP_RING_ROLE]) {
> > +             struct br_mrp_ring_role *role =
> > +                     nla_data(tb[IFLA_BRIDGE_MRP_RING_ROLE]);
> > +
> > +             err = br_mrp_set_ring_role(br, role);
> > +             if (err)
> > +                     return err;
> > +     }
> > +
> > +     if (tb[IFLA_BRIDGE_MRP_START_TEST]) {
> > +             struct br_mrp_start_test *test =
> > +                     nla_data(tb[IFLA_BRIDGE_MRP_START_TEST]);
> > +
> > +             err = br_mrp_start_test(br, test);
> > +             if (err)
> > +                     return err;
> > +     }
> > +
> > +     return 0;
> > +}
> > +
> > +int br_mrp_port_open(struct net_device *dev, u8 loc)
> > +{
> > +     struct net_bridge_port *p;
> > +     int err = 0;
> > +
> > +     p = br_port_get_rcu(dev);
> > +     if (!p) {
> > +             err = -EINVAL;
> > +             goto out;
> > +     }
> > +
> > +     p->loc = loc;
> > +     br_ifinfo_notify(RTM_NEWLINK, NULL, p);
> > +
> > +out:
> > +     return err;
> > +}
> > +EXPORT_SYMBOL(br_mrp_port_open);
> >
> 
> I just noticed the EXPORT_SYMBOL() here, why do you need it?

Actually is not needed. But I am thinking to drop patch 4. The reason
for patch nr 4, was that the drivers should notify when the ports lost
the continuity. But currently there is no driver using the MRP then
there is no point to have. I will add it back once the drivers start to
use the MRP.

> 

-- 
/Horatiu
