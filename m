Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F37A21B2281
	for <lists.bridge@lfdr.de>; Tue, 21 Apr 2020 11:17:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9D3BF88350;
	Tue, 21 Apr 2020 09:17:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Je4r5zyiQ7DB; Tue, 21 Apr 2020 09:17:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 665D48830D;
	Tue, 21 Apr 2020 09:17:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 50877C0175;
	Tue, 21 Apr 2020 09:17:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 27B33C0175
 for <bridge@lists.linux-foundation.org>; Tue, 21 Apr 2020 09:17:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 181A08833D
 for <bridge@lists.linux-foundation.org>; Tue, 21 Apr 2020 09:17:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A5rWrZg9l-lw for <bridge@lists.linux-foundation.org>;
 Tue, 21 Apr 2020 09:17:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B876E8830D
 for <bridge@lists.linux-foundation.org>; Tue, 21 Apr 2020 09:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587460667; x=1618996667;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=nouBLuztXCGeDYI2HpY1d0LPOxZ/NdHL8g3FwAok4pY=;
 b=ux3H8+zKp1MLHgREfUZyoMoGVvFpYT0g2xdu0OW5KU+2/lM6F6ooOEiv
 UH+9HM1n6W7GrtujRT4wEDqvAq9UmJ+MjpX4fTeOq+nmuzoilTVhBpUMr
 mLQ2bAwQqlm3GGH+DRpMZm2BI7c2xdYUXjrbBmhuxFM40hpXZWC8vrVhx
 J9R1qBVb0XHJVwqKMDS6GlhvAhaRElotsJ1KzxyZavvpBG7dlR9WQSp0/
 W5ZTg3Sw0+b0aOTdHe0k41TTrtFfReybxfLCniDNdgYlSaS/KuXuosRHy
 LTGQmJ9DYloZFOvVCL7Pwiev2lOGG9vo7yf2TPiNSSyzeNAtalNIzshPq g==;
IronPort-SDR: /oZQIkMl+iziD/yBL8h9zoj3woUD0FqDzWewTflYEKU5kShLfqHkMlnXw6Y5n/iP6NB3jrw0O3
 HKx+zDB3L4eR5w3oYKMRUrdw9ExC4tPhBsy5BzWbQCkyWA5BG8y7AAB93gC5lpUWiYfw6EFtHJ
 ylQorsE4sekbadjm8wIwfS57xJCfLl73tpMueUUJbf0XTzwRXE45B6eYMC2mxZjSlRiiw5FIB5
 scmTmT+EkET3MHcuHgmgyZT+wTY0DMtUAkKttlX/p+x15i89ySx1FE5fzvumUNCowU50GxK7VG
 s18=
X-IronPort-AV: E=Sophos;i="5.72,409,1580799600"; d="scan'208";a="71006850"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Apr 2020 02:17:46 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Apr 2020 02:17:46 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Tue, 21 Apr 2020 02:17:46 -0700
Date: Tue, 21 Apr 2020 11:17:45 +0200
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20200421091745.qei76hnb7gipfkb4@soft-dev3.microsemi.net>
References: <20200420150947.30974-1-horatiu.vultur@microchip.com>
 <20200420150947.30974-11-horatiu.vultur@microchip.com>
 <4d989958-0c2b-69de-2015-1808e2ce94db@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <4d989958-0c2b-69de-2015-1808e2ce94db@cumulusnetworks.com>
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

The 04/21/2020 11:47, Nikolay Aleksandrov wrote:
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
> 
> Note that "p" can be NULL here if br_afspec() was called for the bridge device.
> Some of the functions below dereference it without any checks and will deref a
> null ptr.

Good check, I will update the functions br_mrp_set_port_role and
br_mrp_set_port_state to check for the null ptr.

> 
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

-- 
/Horatiu
