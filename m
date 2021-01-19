Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 618AB2FC1B9
	for <lists.bridge@lfdr.de>; Tue, 19 Jan 2021 21:59:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 13B0D86D88;
	Tue, 19 Jan 2021 20:59:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Hs8on8loI99; Tue, 19 Jan 2021 20:59:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id F0A2886D7A;
	Tue, 19 Jan 2021 20:59:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D4870C013A;
	Tue, 19 Jan 2021 20:59:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D6662C013A
 for <bridge@lists.linux-foundation.org>; Tue, 19 Jan 2021 20:59:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C52F18632F
 for <bridge@lists.linux-foundation.org>; Tue, 19 Jan 2021 20:59:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2-MaXFLIxGT0 for <bridge@lists.linux-foundation.org>;
 Tue, 19 Jan 2021 20:59:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F3BF0862F4
 for <bridge@lists.linux-foundation.org>; Tue, 19 Jan 2021 20:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1611089983; x=1642625983;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=mwYgYrzxMbxsnnfaYbK7dQXBmCyRJjxIkznIATJAT00=;
 b=KqANe/qtnWogc9QIIuiVXKbt1wQUqOxgY0ZiEUarzOW6PuFfLlLsN6Ih
 3Qy+NTvtzxDDKc6Qr7l6HkTx8tFEHHVc95OdJGX1z+aEH76iGUDsEA9gU
 Nsik6/lBdKo8SgqhdRWkKUr0kT2xeP/jS2uxSF5xMdViXB6KQZ6se+Isq
 dc7BWIIcjNS95yWwM8oXMZ/Jyf24B4O3vZW0Dx4bqqBKC67mnNN2Ntf7Y
 KJrFEFDcVs3ZAqSpfzGsp9UOo5i3zH9+kPat0JbT95ZBBCpxCGZsFQmLn
 eHfJwaNcMSpT0TUcX4AW5hH2nVCrDqqmQDoeNpx7l1C361CNhsxU17EG2 g==;
IronPort-SDR: IPQs4+9uoVaysBHS2pyMPeetTZmdcdMgptCbbWBOGHs2tU2bVXqs6Y9rz+bdUkZIsV5x/OFgVv
 9QvZ06ry35boY5iq7DrvHgJayOLZKNhwZoLnnXD5sd21ry/npnOINiGJLkbF+efm0ccShs9ICl
 5UX86tGYnd5tYTYMXsO9ZKZT+oRNIyjcGuNjMZTcOGb7flIT1CE0xaYrbOGhv1BWDqMb7SVrc9
 qM9dZFaP1vuZNOi2SMdehYGpgQ56HaZc0eV1ApoPrYBY5p4+qT2RDhb8exod1ZwWC+pPjax41z
 zNo=
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="100678276"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Jan 2021 13:59:42 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 19 Jan 2021 13:59:42 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Tue, 19 Jan 2021 13:59:41 -0700
Date: Tue, 19 Jan 2021 21:59:39 +0100
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20210119205939.x3dxkbgjyuzzcxnk@soft-dev3.localdomain>
References: <20210118181319.25419-1-rasmus.villemoes@prevas.dk>
 <20210118185618.75h45rjf6qqberic@soft-dev3.localdomain>
 <20210118194632.zn5yucjfibguemjq@skbuf>
 <20210118202036.wk2fuwa3hysg4dmj@soft-dev3.localdomain>
 <20210118212735.okoov5ndybszd6m5@skbuf>
 <20210119083240.37cxv3lxi25hwduj@soft-dev3.localdomain>
 <YAcAIcwfp8za9JUo@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <YAcAIcwfp8za9JUo@lunn.ch>
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
From: Horatiu Vultur via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Horatiu Vultur <horatiu.vultur@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

The 01/19/2021 16:52, Andrew Lunn wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Tue, Jan 19, 2021 at 09:32:40AM +0100, Horatiu Vultur wrote:
> > The 01/18/2021 21:27, Vladimir Oltean wrote:
> > > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> > >
> > > On Mon, Jan 18, 2021 at 09:20:36PM +0100, Horatiu Vultur wrote:
> > > > The 01/18/2021 19:46, Vladimir Oltean wrote:
> > > > >
> > > > > On Mon, Jan 18, 2021 at 07:56:18PM +0100, Horatiu Vultur wrote:
> > > > > > The reason was to stay away from STP, because you can't run these two
> > > > > > protocols at the same time. Even though in SW, we reuse port's state.
> > > > > > In our driver(which is not upstreamed), we currently implement
> > > > > > SWITCHDEV_ATTR_ID_MRP_PORT_STATE and just call the
> > > > > > SWITCHDEV_ATTR_ID_PORT_STP_STATE.
> > > > >
> > > > > And isn't Rasmus's approach reasonable, in that it allows unmodified
> > > > > switchdev drivers to offload MRP port states without creating
> > > > > unnecessary code churn?
> > > >
> > > > I am sorry but I don't see this as the correct solution. In my opinion,
> > > > I would prefer to have 3 extra lines in the driver and have a better
> > > > view of what is happening. Than having 2 calls in the driver for
> > > > different protocols.
> > >
> > > I think the question boils down to: is a MRP-unaware driver expected to
> > > work with the current bridge MRP code?
> >
> > If the driver has switchdev support, then is not expected to work with
> > the current bridge MRP code.
> 
> >
> > For example, the Ocelot driver, it has switchdev support but no MRP
> > support so this is not expected to work.
> 
> Then ideally, we need switchdev core to be testing for the needed ops
> and returning an error which prevents MRP being configured when it
> cannot work.

Yes, that would be great, I had a look at the handled attribute of the
switchdev_notifier_port_attr_info but I am not sure.

But what about adding some 'if (IS_ENBABLED(NET_SWITCHDEV))' in br_mrp.c
and then calling the functions br_mrp_switchdev_ only if this is
enabled.  Then whenever the switchdev call returns an error then is
cleared that MRP can't be configured.

> 
>        Andrew

-- 
/Horatiu
