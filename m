Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 985BF2FBB9F
	for <lists.bridge@lfdr.de>; Tue, 19 Jan 2021 16:52:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BEC7D2078B;
	Tue, 19 Jan 2021 15:52:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VkcwUdpAl6n7; Tue, 19 Jan 2021 15:52:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id DACC22078D;
	Tue, 19 Jan 2021 15:52:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C3C56C1E6F;
	Tue, 19 Jan 2021 15:52:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 24897C013A
 for <bridge@lists.linux-foundation.org>; Tue, 19 Jan 2021 15:52:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1F2448678A
 for <bridge@lists.linux-foundation.org>; Tue, 19 Jan 2021 15:52:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wWAziVgjXtLa for <bridge@lists.linux-foundation.org>;
 Tue, 19 Jan 2021 15:52:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 12C088666E
 for <bridge@lists.linux-foundation.org>; Tue, 19 Jan 2021 15:52:15 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
 (envelope-from <andrew@lunn.ch>)
 id 1l1tIX-001TEb-B5; Tue, 19 Jan 2021 16:52:01 +0100
Date: Tue, 19 Jan 2021 16:52:01 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Message-ID: <YAcAIcwfp8za9JUo@lunn.ch>
References: <20210118181319.25419-1-rasmus.villemoes@prevas.dk>
 <20210118185618.75h45rjf6qqberic@soft-dev3.localdomain>
 <20210118194632.zn5yucjfibguemjq@skbuf>
 <20210118202036.wk2fuwa3hysg4dmj@soft-dev3.localdomain>
 <20210118212735.okoov5ndybszd6m5@skbuf>
 <20210119083240.37cxv3lxi25hwduj@soft-dev3.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210119083240.37cxv3lxi25hwduj@soft-dev3.localdomain>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Rasmus Villemoes <rasmus.villemoes@prevas.dk>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
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
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Tue, Jan 19, 2021 at 09:32:40AM +0100, Horatiu Vultur wrote:
> The 01/18/2021 21:27, Vladimir Oltean wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> > 
> > On Mon, Jan 18, 2021 at 09:20:36PM +0100, Horatiu Vultur wrote:
> > > The 01/18/2021 19:46, Vladimir Oltean wrote:
> > > >
> > > > On Mon, Jan 18, 2021 at 07:56:18PM +0100, Horatiu Vultur wrote:
> > > > > The reason was to stay away from STP, because you can't run these two
> > > > > protocols at the same time. Even though in SW, we reuse port's state.
> > > > > In our driver(which is not upstreamed), we currently implement
> > > > > SWITCHDEV_ATTR_ID_MRP_PORT_STATE and just call the
> > > > > SWITCHDEV_ATTR_ID_PORT_STP_STATE.
> > > >
> > > > And isn't Rasmus's approach reasonable, in that it allows unmodified
> > > > switchdev drivers to offload MRP port states without creating
> > > > unnecessary code churn?
> > >
> > > I am sorry but I don't see this as the correct solution. In my opinion,
> > > I would prefer to have 3 extra lines in the driver and have a better
> > > view of what is happening. Than having 2 calls in the driver for
> > > different protocols.
> > 
> > I think the question boils down to: is a MRP-unaware driver expected to
> > work with the current bridge MRP code?
> 
> If the driver has switchdev support, then is not expected to work with
> the current bridge MRP code.

> 
> For example, the Ocelot driver, it has switchdev support but no MRP
> support so this is not expected to work.

Then ideally, we need switchdev core to be testing for the needed ops
and returning an error which prevents MRP being configured when it
cannot work.

       Andrew
