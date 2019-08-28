Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id D44A8A0CCE
	for <lists.bridge@lfdr.de>; Wed, 28 Aug 2019 23:53:33 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 931D83A25;
	Wed, 28 Aug 2019 21:53:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E44273A18
	for <bridge@lists.linux-foundation.org>;
	Wed, 28 Aug 2019 21:53:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
	[68.232.153.233])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7B27D13A
	for <bridge@lists.linux-foundation.org>;
	Wed, 28 Aug 2019 21:53:06 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
	Horatiu.Vultur@microchip.com designates 198.175.253.82 as
	permitted sender) identity=mailfrom;
	client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
	envelope-from="Horatiu.Vultur@microchip.com";
	x-sender="Horatiu.Vultur@microchip.com";
	x-conformance=spf_only; x-record-type="v=spf1";
	x-record-text="v=spf1 mx a:ushub1.microchip.com
	a:smtpout.microchip.com a:mx1.microchip.iphmx.com
	a:mx2.microchip.iphmx.com include:servers.mcsv.net
	include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
	authenticity information available from domain of
	postmaster@email.microchip.com) identity=helo;
	client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
	envelope-from="Horatiu.Vultur@microchip.com";
	x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
	dkim=none (message not signed) header.i=none;
	spf=Pass smtp.mailfrom=Horatiu.Vultur@microchip.com;
	spf=None smtp.helo=postmaster@email.microchip.com;
	dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: qKqDy8sBZKKky9iJB9tj4JuejXoe5saV6+cgKhfkLV6KwcDd76vEyMmJiL7BZZj8FRhOuYkLFq
	40RAeInUlk4ndTlkj0ip4kah7DQr6a34uxKSuEbGDj+m3LWqZJJ2MAzF5pEi/zW90ONAXG0taV
	0VWgPSrrVCy19bLQ2mADvGl3d+M04uoVsaXwnULkrQYIohM3hd3Udmphck+yPFNhcqu+gIT2GF
	pf1WmT5dsQfgN4U4GztvNGLFlOvzAx5IeZ/Kg2VV7Naun18N1g5RFot9Xm+6aqgRKKQb+ez9o5
	MoA=
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; d="scan'208";a="47013039"
Received: from smtpout.microchip.com (HELO email.microchip.com)
	([198.175.253.82])
	by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
	28 Aug 2019 14:53:05 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
	chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
	15.1.1713.5; Wed, 28 Aug 2019 14:53:03 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex03.mchp-main.com
	(10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
	Transport; Wed, 28 Aug 2019 14:53:04 -0700
Date: Wed, 28 Aug 2019 23:53:04 +0200
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20190828215302.6i5mezmtnv57m2vy@soft-dev3.microsemi.net>
References: <1566807075-775-1-git-send-email-horatiu.vultur@microchip.com>
	<20190826123811.GA13411@lunn.ch>
	<20190827101033.g2cb6j2j4kuyzh2a@soft-dev3.microsemi.net>
	<20190827131824.GC11471@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20190827131824.GC11471@lunn.ch>
User-Agent: NeoMutt/20180716
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: alexandre.belloni@bootlin.com, f.fainelli@gmail.com,
	nikolay@cumulusnetworks.com, netdev@vger.kernel.org,
	roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
	allan.nielsen@microchip.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 0/3] Add NETIF_F_HW_BR_CAP feature
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

The 08/27/2019 15:18, Andrew Lunn wrote:
> External E-Mail
> 
> 
> > That sounds like a great idea. I was expecting to add this logic in the
> > set_rx_mode function of the driver. But unfortunetly, I got the calls to
> > this function before the dev->promiscuity is updated or not to get the
> > call at all. For example in case the port is member of a bridge and I try
> > to enable the promisc mode.
> 
> Hi Horatiu

Hi Andrew,
> 
> What about the notifier? Is it called in all the conditions you need
> to know about?

I had a look also over this but without any luck. I can get good
information from this, like knowing when a port is added or removed from
the bridge(NETDEV_CHANGEUPPER). But not in case the promisc is change by
an application(eg. tcpdump). In this case if port is part of the bridge
and then promisc is enable, then there is no callback to the driver or
any notifications.
> 
> Or, you could consider adding a new switchdev call to pass this
> information to any switchdev driver which is interested in the
> information.

Having this new switchdev call and listening for NETDEV_CHANGEUPPER
seems to be enough to know when a port needs to go in promisc mode.
> 
> At the moment, the DSA driver core does not pass onto the driver it
> should put a port into promisc mode. So pcap etc, will only see
> traffic directed to the CPU, not all the traffic ingressing the
> interface. If you put the needed core infrastructure into place, we
> could plumb it down from the DSA core to DSA drivers.
> 
> Having said that, i don't actually know if the Marvell switches
> support this. Forward using the ATU and send a copy to the CPU?  What
> switches tend to support is port mirroring, sending all the traffic
> out another port. A couple of DSA drivers support that, via TC.
> 
> 	Andrew
> 

-- 
/Horatiu
