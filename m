Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id C99469C4E7
	for <lists.bridge@lfdr.de>; Sun, 25 Aug 2019 18:37:52 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id DB63110F9;
	Sun, 25 Aug 2019 16:37:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D9C3A10EC
	for <bridge@lists.linux-foundation.org>;
	Sun, 25 Aug 2019 16:37:40 +0000 (UTC)
X-Greylist: delayed 00:07:06 by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
	[68.232.147.91])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6E98688E
	for <bridge@lists.linux-foundation.org>;
	Sun, 25 Aug 2019 16:37:40 +0000 (UTC)
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
	Horatiu.Vultur@microchip.com designates 198.175.253.82 as
	permitted sender) identity=mailfrom;
	client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
	envelope-from="Horatiu.Vultur@microchip.com";
	x-sender="Horatiu.Vultur@microchip.com";
	x-conformance=spf_only; x-record-type="v=spf1";
	x-record-text="v=spf1 mx a:ushub1.microchip.com
	a:smtpout.microchip.com a:mx1.microchip.iphmx.com
	a:mx2.microchip.iphmx.com include:servers.mcsv.net
	include:mktomail.com include:spf.protection.outlook.com ~all"
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
IronPort-SDR: 3X9lT3fgRWqEy3ymSwR6mZoLl1PqtNc7RMtkjEPM6qHhPwoSFMxwHQyCe4o1YO8WbbAbjSs+nx
	YJFoO5TEaHl6E46Fs46i0TiHmLvnUpLOZovdNYjwUOH1V7l1vJLWi+1Ummg0apzITBESTrkA7R
	MDOb/OqPwMOOHf4yrdRrdS8bbSYMVZKd0L79NRW7lQ9O+dLsKRk9b3bX8Czfdf+rgHPSlhNCZd
	fBvvUXPfwT5r/ff0zsMZq1vl5rvChSIbeYGNXG9Ao+9FrB+Gj2Q/BxXTJIyDCmxoNia2uZtsAf
	dvI=
X-IronPort-AV: E=Sophos;i="5.64,429,1559545200"; d="scan'208";a="47898997"
Received: from smtpout.microchip.com (HELO email.microchip.com)
	([198.175.253.82])
	by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
	25 Aug 2019 09:30:26 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
	chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
	15.1.1713.5; Sun, 25 Aug 2019 09:30:25 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex02.mchp-main.com
	(10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
	Transport; Sun, 25 Aug 2019 09:30:25 -0700
Date: Sun, 25 Aug 2019 18:30:25 +0200
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <20190825163023.hkc23lv7b5vvphdb@soft-dev3.microsemi.net>
References: <1566500850-6247-1-git-send-email-horatiu.vultur@microchip.com>
	<e47a318c-6446-71cd-660c-8592037d8166@gmail.com>
	<20190824074204.GA15041@nanopsycho.orion>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20190824074204.GA15041@nanopsycho.orion>
User-Agent: NeoMutt/20180716
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: alexandre.belloni@bootlin.com, Florian Fainelli <f.fainelli@gmail.com>,
	nikolay@cumulusnetworks.com, netdev@vger.kernel.org,
	roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
	allan.nielsen@microchip.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH 0/3] Add NETIF_F_HW_BRIDGE feature
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

The 08/24/2019 09:42, Jiri Pirko wrote:
> External E-Mail
> 
> 
> Sat, Aug 24, 2019 at 01:25:02AM CEST, f.fainelli@gmail.com wrote:
> >On 8/22/19 12:07 PM, Horatiu Vultur wrote:
> >> Current implementation of the SW bridge is setting the interfaces in
> >> promisc mode when they are added to bridge if learning of the frames is
> >> enabled.
> >> In case of Ocelot which has HW capabilities to switch frames, it is not
> >> needed to set the ports in promisc mode because the HW already capable of
> >> doing that. Therefore add NETIF_F_HW_BRIDGE feature to indicate that the
> >> HW has bridge capabilities. Therefore the SW bridge doesn't need to set
> >> the ports in promisc mode to do the switching.
> >
> >Then do not do anything when the ndo_set_rx_mode() for the ocelot
> >network device is called and indicates that IFF_PROMISC is set and that
> >your network port is a bridge port member. That is what mlxsw does AFAICT.

Yes, but then if you want to monitor all the traffic on a bridge port
you will not be able to do that. And this seems to be a limitation.
This is the case for mlxsw and ocelot(it doesn't implement at all
promisc mode) and might be others.

> 
> Correct.
> 
> >
> >As other pointed out, the Linux bridge implements a software bridge by
> >default, and because it needs to operate on a wide variety of network
> >devices, all with different capabilities, the easiest way to make sure
> >that all management (IGMP, BPDU, etc. ) as well as non-management
> >traffic can make it to the bridge ports, is to put the network devices
> >in promiscuous mode.

What if the HW can copy all the management traffic to the SW bridge and
HW knows to learn and flood frames. Then there is no point to set a
network port in promisc mode just because it is a bridge port member.
> >If this is suboptimal for you, you can take
> >shortcuts in your driver that do not hinder the overall functionality.

If I add this check, I don't see how any other network drivers will be
affected by this. If a network driver will start to use this then it
needs to know that the HW should be configure to include CPU in the
flood mask and to know which addresses can be reached through SW bridge.

> >
> >> This optimization takes places only if all the interfaces that are part
> >> of the bridge have this flag and have the same network driver.
> >> 
> >> If the bridge interfaces is added in promisc mode then also the ports part
> >> of the bridge are set in promisc mode.
> >> 
> >> Horatiu Vultur (3):
> >>   net: Add HW_BRIDGE offload feature
> >>   net: mscc: Use NETIF_F_HW_BRIDGE
> >>   net: mscc: Implement promisc mode.
> >> 
> >>  drivers/net/ethernet/mscc/ocelot.c | 26 ++++++++++++++++++++++++--
> >>  include/linux/netdev_features.h    |  3 +++
> >>  net/bridge/br_if.c                 | 29 ++++++++++++++++++++++++++++-
> >>  net/core/ethtool.c                 |  1 +
> >>  4 files changed, 56 insertions(+), 3 deletions(-)
> >> 
> >
> >
> >-- 
> >Florian
> 

-- 
/Horatiu
