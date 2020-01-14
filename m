Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1313D13AFC7
	for <lists.bridge@lfdr.de>; Tue, 14 Jan 2020 17:46:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9A2AD84CEC;
	Tue, 14 Jan 2020 16:46:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JF6+-hJ9SfEk; Tue, 14 Jan 2020 16:46:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id EFDBD84FB3;
	Tue, 14 Jan 2020 16:46:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D2C30C077D;
	Tue, 14 Jan 2020 16:46:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 408D6C077D
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 16:46:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2A41C2052D
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 16:46:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EeuVglcooHvO for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jan 2020 16:46:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by silver.osuosl.org (Postfix) with ESMTPS id 6B5C920528
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 16:46:18 +0000 (UTC)
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Horatiu.Vultur@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Horatiu.Vultur@microchip.com";
 x-sender="Horatiu.Vultur@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Horatiu.Vultur@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Horatiu.Vultur@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: y+ft/dlKJOCa17GdZ1QBuWly0sE48PA5wRGmIFD6wVJusyZ8AcWlL3fyfIG6YhYN/nJeKrCins
 Ahg78OxmOcrIdFk+0U9KHOIPhaCpJIGTqEJN+6dDV1FI2aZUdDw4I2mawl4zZLfbzMEz7tEu0W
 nI8gib6X0JaYJ9MbdAt+omA11WCk86f2l8mm/I6lm6Re1SvWChmL++MKtecYBOoljRvpyAdyBe
 b+bmzBTVMlh4iYDnZ05itmtjCwKgkPmFmJtg207FN6DkG5ngdmMUAdwRkg8pTjjSoGHxqZt50w
 FkM=
X-IronPort-AV: E=Sophos;i="5.70,433,1574146800"; d="scan'208";a="64704366"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Jan 2020 09:46:16 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 14 Jan 2020 09:46:16 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Tue, 14 Jan 2020 09:46:16 -0700
Date: Tue, 14 Jan 2020 17:46:15 +0100
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20200114164615.yvidcidrj24x4gcy@soft-dev3.microsemi.net>
References: <20200113124620.18657-1-horatiu.vultur@microchip.com>
 <20200113124620.18657-5-horatiu.vultur@microchip.com>
 <20200113140053.GE11788@lunn.ch>
 <20200113225751.jkkio4rztyuff4xj@soft-dev3.microsemi.net>
 <20200113233011.GF11788@lunn.ch>
 <20200114080856.wa7ljxyzaf34u4xj@soft-dev3.microsemi.net>
 <20200114132047.GG11788@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20200114132047.GG11788@lunn.ch>
User-Agent: NeoMutt/20180716
Cc: ivecera@redhat.com, jakub.kicinski@netronome.com,
 nikolay@cumulusnetworks.com, netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 vivien.didelot@gmail.com, UNGLinuxDriver@microchip.com,
 anirudh.venkataramanan@intel.com, dsahern@gmail.com, jiri@resnulli.us,
 olteanv@gmail.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next Patch v2 4/4] net: bridge: mrp:
 switchdev: Add HW offload
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

The 01/14/2020 14:20, Andrew Lunn wrote:
> 
> On Tue, Jan 14, 2020 at 09:08:56AM +0100, Horatiu Vultur wrote:
> > The 01/14/2020 00:30, Andrew Lunn wrote:
> > >
> > > Hi Horatiu
> > >
> > > It has been said a few times what the basic state machine should be in
> > > user space. A pure software solution can use raw sockets to send and
> > > receive MRP_Test test frames. When considering hardware acceleration,
> > > the switchdev API you have proposed here seems quite simple. It should
> > > not be too hard to map it to a set of netlink messages from userspace.
> >
> > Yes and we will try to go with this approach, to have a user space
> > application that contains the state machines and then in the kernel to
> > extend the netlink messages to map to the switchdev API.
> > So we will create a new RFC once we will have the user space and the
> > definition of the netlink messages.
> 
> Cool.
> 
> Before you get too far, we might want to discuss exactly how you pass
> these netlink messages. Do we want to make this part of the new
> ethtool Netlink implementation? Part of devlink? Extend the current
> bridge netlink interface used by userspae RSTP daemons? A new generic
> netlink socket?

We are not yet 100% sure. We were thinking to choose between extending
the bridge netlink interface or adding a new netlink socket.  I was
leaning to create a new netlink socket, because I think that would be
clearer and easier to understand. But I don't have much experience with
this, so in both cases I need to sit down and actually try to implement
it to see exactly.

> 
> Extending the bridge netlink interface might seem the most logical.
> The argument against it, is that the kernel bridge code probably does
> not need to know anything about this offloading. But it does allow you
> to make use of the switchdev API, so we have a uniform API between the
> network stack and drivers implementing offloading.
> 
>       Andrew

-- 
/Horatiu
