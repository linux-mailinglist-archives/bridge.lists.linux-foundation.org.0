Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E83D02FA965
	for <lists.bridge@lfdr.de>; Mon, 18 Jan 2021 19:56:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8078F20424;
	Mon, 18 Jan 2021 18:56:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VHFcJOCctldo; Mon, 18 Jan 2021 18:56:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 4E1382037B;
	Mon, 18 Jan 2021 18:56:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2A02BC013A;
	Mon, 18 Jan 2021 18:56:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 577EBC013A
 for <bridge@lists.linux-foundation.org>; Mon, 18 Jan 2021 18:56:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4F915863CC
 for <bridge@lists.linux-foundation.org>; Mon, 18 Jan 2021 18:56:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RCjMGbIUfhUI for <bridge@lists.linux-foundation.org>;
 Mon, 18 Jan 2021 18:56:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3A714863BE
 for <bridge@lists.linux-foundation.org>; Mon, 18 Jan 2021 18:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1610996181; x=1642532181;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=8xW+Ib1Q2UKnK0aGyXk2bqJxeinADOf0EJFfNV6Zz5k=;
 b=oIBun8mzbJNgcejTsG+VJY8WnDkmApMmJZbq+8iuZihzKnaed0dTXqG2
 Hr/Kk4F7p2AZb6IJYG1g4un7xIwzUaLaDlpEqOM6vEVfoUcnDMMoVzJ3p
 4o1H6JFTpk3fOCrda1PvJWNu2gCWdQBDkXhRFHR6NfdQZrYFATvZY1czg
 laW7Tr3TIuWUQGlYvzbGav6Yz6oHUtmNcQciE1b1i9278JjEDONoWDnmw
 6DhG2zAqsQkkGs8ECRIUji9nTWMTOPtfOPcpX7Rk1AH8tjpFFwhPGnb1E
 VFZLaTiccUw2fhHAO/IbX4Ep/tW2d+xWxpOF5utZEWuOaab9c+FMoZjJ7 g==;
IronPort-SDR: zkf4OhDYE5w4kAjlcSrjPOGaOeF3hskz86dXFAwfhAZReZa2lk5TRBnT7px5h33ot4wlz2bZxR
 d07l6EZYUMrhRNlu04pf9s99OzRPpGWwvV0ClKIIPu9DLPGRl6j6MjBNh3no1/lj2/L+x+DOVd
 GFuml9uCHTZW0NUHsg8hB99Mcyc97EDlFGI5E6w55eN+8meQccpPsrMMgbkEfkjPuaIhB4w0QF
 kNNTStimmQAIMQZgEdkbSV56zOIP1kCqoo6Pl63aa2KKP02DfraobMB//llKw2UZlwPLlVkNmB
 9Dw=
X-IronPort-AV: E=Sophos;i="5.79,357,1602572400"; d="scan'208";a="40840029"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Jan 2021 11:56:20 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 18 Jan 2021 11:56:19 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Mon, 18 Jan 2021 11:56:19 -0700
Date: Mon, 18 Jan 2021 19:56:18 +0100
To: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
Message-ID: <20210118185618.75h45rjf6qqberic@soft-dev3.localdomain>
References: <20210118181319.25419-1-rasmus.villemoes@prevas.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20210118181319.25419-1-rasmus.villemoes@prevas.dk>
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net] net: mrp: use stp state as substitute for
 unimplemented mrp state
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

The 01/18/2021 19:13, Rasmus Villemoes wrote:
> 

Hi Rasmus,

> When using MRP with hardware that does understand the concept of
> blocked or forwarding ports, but not the full MRP offload, we
> currently fail to tell the hardware what state it should put the port
> in when the ring is closed - resulting in a ring of forwarding ports
> and all the trouble that comes with that.

But why don't you implement the SWITCHDEV_ATTR_ID_MRP_PORT_STATE in your
driver? if already the HW understands the concept of block or forwarding?

> 
> Signed-off-by: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
> ---
> 
> I don't really understand why SWITCHDEV_ATTR_ID_MRP_PORT_STATE even
> has to exist seperately from SWITCHDEV_ATTR_ID_PORT_STP_STATE, and
> it's hard to tell what the difference might be since no kernel code
> implements the former.

The reason was to stay away from STP, because you can't run these two
protocols at the same time. Even though in SW, we reuse port's state.
In our driver(which is not upstreamed), we currently implement
SWITCHDEV_ATTR_ID_MRP_PORT_STATE and just call the
SWITCHDEV_ATTR_ID_PORT_STP_STATE.

> 
>  net/bridge/br_mrp_switchdev.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/net/bridge/br_mrp_switchdev.c b/net/bridge/br_mrp_switchdev.c
> index ed547e03ace1..8a1c7953e57a 100644
> --- a/net/bridge/br_mrp_switchdev.c
> +++ b/net/bridge/br_mrp_switchdev.c
> @@ -180,6 +180,24 @@ int br_mrp_port_switchdev_set_state(struct net_bridge_port *p,
>         int err;
> 
>         err = switchdev_port_attr_set(p->dev, &attr);
> +       if (err == -EOPNOTSUPP) {
> +               attr.id = SWITCHDEV_ATTR_ID_PORT_STP_STATE;
> +               switch (state) {
> +               case BR_MRP_PORT_STATE_DISABLED:
> +               case BR_MRP_PORT_STATE_NOT_CONNECTED:
> +                       attr.u.stp_state = BR_STATE_DISABLED;
> +                       break;
> +               case BR_MRP_PORT_STATE_BLOCKED:
> +                       attr.u.stp_state = BR_STATE_BLOCKING;
> +                       break;
> +               case BR_MRP_PORT_STATE_FORWARDING:
> +                       attr.u.stp_state = BR_STATE_FORWARDING;
> +                       break;
> +               default:
> +                       return err;
> +               };
> +               err = switchdev_port_attr_set(p->dev, &attr);
> +       }
>         if (err && err != -EOPNOTSUPP)
>                 br_warn(p->br, "error setting offload MRP state on port %u(%s)\n",
>                         (unsigned int)p->port_no, p->dev->name);
> --
> 2.23.0
> 

-- 
/Horatiu
