Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B172FB414
	for <lists.bridge@lfdr.de>; Tue, 19 Jan 2021 09:32:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9EBA786B50;
	Tue, 19 Jan 2021 08:32:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GDT0z-uK-2wa; Tue, 19 Jan 2021 08:32:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6561486B78;
	Tue, 19 Jan 2021 08:32:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 573C0C013A;
	Tue, 19 Jan 2021 08:32:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 62680C013A
 for <bridge@lists.linux-foundation.org>; Tue, 19 Jan 2021 08:32:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 43AAE86B78
 for <bridge@lists.linux-foundation.org>; Tue, 19 Jan 2021 08:32:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uKxNhhWyyB93 for <bridge@lists.linux-foundation.org>;
 Tue, 19 Jan 2021 08:32:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5766486B50
 for <bridge@lists.linux-foundation.org>; Tue, 19 Jan 2021 08:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1611045163; x=1642581163;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=G/hEWC13mj/YXusXRb4k4j+VoxZpRlinQbs39jyecbo=;
 b=O6zwi4+8w6IztY5AbtOjQO/X5e/c3qXgcL5qKQ94JfwXiYCDm63Vr04N
 /Vu7N+8PGgszl5+y3MjocGiDXTYzHBRu5LW5UZURoJQy6cOWFUdeyys9e
 FG55TCrpNO8cI4JpnEqCr7i4kcZ3KPLkE73XtiHbSRz3jeuHln5ayl8Wa
 Gppmm+r1rDKlB/2s5aQLfYYIfMoU0IoU7elSCBsr0G2rOaUkYGWp96PMx
 Aq3cb8/v8GAEdxTJrKPPDaPnGoBWSCF6PVsBhljDSoC968GE7ZVQak9rG
 rNNZlavtT5vb7T+bSzlzzosfshqMNaCBp6H94thchiiFow6RkMb3IMGnb g==;
IronPort-SDR: p7oGKG8TfOdMTUpWfkOx0LsUBlfGU5DXvGbIi2EwXfKHgXesHa3s7j6AwGfHGfvDYiwzyatgsL
 Sg3E5yTMzf3y2NVmTtL1WWLXE77iwPqfEFinrC4uYGaNQGDwFw1DqDcp7YWSj2u0oR2kuNbub4
 T1mIdHDD5Z+Uh7TC0HjgEDNtnIpuNTdmdkOKjbzRFBM9kZkihU62+IKuLaLO2EBNnchLXP41o9
 QHLLT/HrP6nG81e/XMi+B7sDMR9TQ1T5oy14i9wC00RjKrP2xD3SJ5DOe1wLs1E16ui3QogvWF
 8rw=
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="106452824"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Jan 2021 01:32:42 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 19 Jan 2021 01:32:41 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Tue, 19 Jan 2021 01:32:41 -0700
Date: Tue, 19 Jan 2021 09:32:40 +0100
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <20210119083240.37cxv3lxi25hwduj@soft-dev3.localdomain>
References: <20210118181319.25419-1-rasmus.villemoes@prevas.dk>
 <20210118185618.75h45rjf6qqberic@soft-dev3.localdomain>
 <20210118194632.zn5yucjfibguemjq@skbuf>
 <20210118202036.wk2fuwa3hysg4dmj@soft-dev3.localdomain>
 <20210118212735.okoov5ndybszd6m5@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20210118212735.okoov5ndybszd6m5@skbuf>
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Rasmus Villemoes <rasmus.villemoes@prevas.dk>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
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

The 01/18/2021 21:27, Vladimir Oltean wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Mon, Jan 18, 2021 at 09:20:36PM +0100, Horatiu Vultur wrote:
> > The 01/18/2021 19:46, Vladimir Oltean wrote:
> > >
> > > On Mon, Jan 18, 2021 at 07:56:18PM +0100, Horatiu Vultur wrote:
> > > > The reason was to stay away from STP, because you can't run these two
> > > > protocols at the same time. Even though in SW, we reuse port's state.
> > > > In our driver(which is not upstreamed), we currently implement
> > > > SWITCHDEV_ATTR_ID_MRP_PORT_STATE and just call the
> > > > SWITCHDEV_ATTR_ID_PORT_STP_STATE.
> > >
> > > And isn't Rasmus's approach reasonable, in that it allows unmodified
> > > switchdev drivers to offload MRP port states without creating
> > > unnecessary code churn?
> >
> > I am sorry but I don't see this as the correct solution. In my opinion,
> > I would prefer to have 3 extra lines in the driver and have a better
> > view of what is happening. Than having 2 calls in the driver for
> > different protocols.
> 
> I think the question boils down to: is a MRP-unaware driver expected to
> work with the current bridge MRP code?

If the driver has switchdev support, then is not expected to work with
the current bridge MRP code.

For example, the Ocelot driver, it has switchdev support but no MRP
support so this is not expected to work.  The main reason is that MRP is
using as DMAC 01:15:4E:00:00:0x(where x is between 1-4) so then when
these frames will arrive to HW then they will just be flooded which is
the wrong behavior.

But, the Ocelot which is not MRP aware, it can behave as MRP node if the
callbacks are implemented. For example, in MRP you have a notion of MRC
(Client) which needs to forward MRP Test frames between 2 ports and copy
to CPU MRP TopologyChange frames and forward these frames between 2
ports. Then using some TCAM rules(match on DMAC and source port) you can
implement this because you can differentiate between Test and Topology
frames by using the last byte of the DMAC.

> 
> > If it is not a problem to have STP calls when you configure the MRP,
> > then why not just remove SWITCHDEV_ATTR_ID_MRP_PORT_STATE?
> 
> Good question, why not?

-- 
/Horatiu
