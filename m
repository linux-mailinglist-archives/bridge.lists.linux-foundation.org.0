Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D8F9C2EE
	for <lists.bridge@lfdr.de>; Sun, 25 Aug 2019 12:44:31 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 31810100B;
	Sun, 25 Aug 2019 10:44:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3235E1007
	for <bridge@lists.linux-foundation.org>;
	Sun, 25 Aug 2019 10:44:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
	[68.232.149.84])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A833242D
	for <bridge@lists.linux-foundation.org>;
	Sun, 25 Aug 2019 10:44:17 +0000 (UTC)
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
	Horatiu.Vultur@microchip.com designates 198.175.253.82 as
	permitted sender) identity=mailfrom;
	client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
	envelope-from="Horatiu.Vultur@microchip.com";
	x-sender="Horatiu.Vultur@microchip.com";
	x-conformance=spf_only; x-record-type="v=spf1";
	x-record-text="v=spf1 mx a:ushub1.microchip.com
	a:smtpout.microchip.com a:mx1.microchip.iphmx.com
	a:mx2.microchip.iphmx.com include:servers.mcsv.net
	include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
	authenticity information available from domain of
	postmaster@email.microchip.com) identity=helo;
	client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
	envelope-from="Horatiu.Vultur@microchip.com";
	x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
	dkim=none (message not signed) header.i=none;
	spf=Pass smtp.mailfrom=Horatiu.Vultur@microchip.com;
	spf=None smtp.helo=postmaster@email.microchip.com;
	dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: KPowbCFFfu7Y3KlmeQGDPM/RyuZmKwIUCA3+Aqoii0ObaQkphb31QOYaiWau7lTfXeXuuBBC/3
	BWCXEUw2oRbY1EXQq4ArsHGYog9IzfPFzgMUMmxuBC1GaCK0E2TYjpw5zihVfG0AY4fCj6BXhs
	9x8QtiAg2EuczCeBrAiFfBlxUlaFwXlZeNAXbSfkACVrpiv6aTD1qcsxJUpUF97oteAAbtq82W
	aBQR1k/lUF1O0YGOwkZRw1Ktq7DIy6Z+NJ7oR3WYn1Msc5bBbz1Xgj+stRKzoDAgv/4sseW+T2
	sRg=
X-IronPort-AV: E=Sophos;i="5.64,429,1559545200"; d="scan'208";a="46440873"
Received: from smtpout.microchip.com (HELO email.microchip.com)
	([198.175.253.82])
	by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
	25 Aug 2019 03:44:16 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
	chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
	15.1.1713.5; Sun, 25 Aug 2019 03:44:16 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex01.mchp-main.com
	(10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
	Transport; Sun, 25 Aug 2019 03:44:15 -0700
Date: Sun, 25 Aug 2019 12:44:15 +0200
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <20190825104413.ftnarx46hhym632w@soft-dev3.microsemi.net>
References: <1566500850-6247-1-git-send-email-horatiu.vultur@microchip.com>
	<1566500850-6247-2-git-send-email-horatiu.vultur@microchip.com>
	<20190822200817.GD21295@lunn.ch>
	<20190823123929.ta4ikozz7jwkwbo2@soft-dev3.microsemi.net>
	<afde1b82-2e4c-5b93-ff31-83cb80a0f7bd@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <afde1b82-2e4c-5b93-ff31-83cb80a0f7bd@gmail.com>
User-Agent: NeoMutt/20180716
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Andrew Lunn <andrew@lunn.ch>, alexandre.belloni@bootlin.com,
	nikolay@cumulusnetworks.com, netdev@vger.kernel.org,
	roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
	allan.nielsen@microchip.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH 1/3] net: Add HW_BRIDGE offload feature
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

The 08/23/2019 16:30, Florian Fainelli wrote:
> External E-Mail
> 
> 
> On 8/23/19 5:39 AM, Horatiu Vultur wrote:
> > The 08/22/2019 22:08, Andrew Lunn wrote:
> >> External E-Mail
> >>
> >>
> >>> +/* Determin if the SW bridge can be offloaded to HW. Return true if all
> >>> + * the interfaces of the bridge have the feature NETIF_F_HW_SWITCHDEV set
> >>> + * and have the same netdev_ops.
> >>> + */
> >>
> >> Hi Horatiu
> >>
> >> Why do you need these restrictions. The HW bridge should be able to
> >> learn that a destination MAC address can be reached via the SW
> >> bridge. The software bridge can then forward it out the correct
> >> interface.
> >>
> >> Or are you saying your hardware cannot learn from frames which come
> >> from the CPU?
> >>
> >> 	Andrew
> >>
> > Hi Andrew,
> > 
> > I do not believe that our HW can learn from frames which comes from the
> > CPU, at least not in the way they are injected today. But in case of Ocelot
> > (and the next chip we are working on), we have other issues in mixing with
> > foreign interfaces which is why we have the check in
> > ocelot_netdevice_dev_check.
> > 
> > More important, as we responded to Nikolay, we properly introduced this
> > restriction for the wrong reasons.
> > 
> > In SW bridge I will remove all these restrictions and only set ports in
> > promisc mode only if NETIF_F_HW_BRIDGE is not set.
> > Then in the network driver I can see if a foreign interface is added to
> > the bridge, and when that happens I can set the port in promisc mode.
> > Then the frames will be flooded to the SW bridge which eventually will
> > send to the foreign interface.
> 
> Is that really necessary?
From what I see, it seems to be necessary.

> Is not the skb->fwd_offload_mark as well as
> the phys_switch_id supposed to tell that information to the bridge already?
Yes, the bridge is using the fwd_offload_mark to know that it should or
should not forward the frame. But in case that the network driver knows
that the SW bridge will not do anything with the frame, then there is no
point to send the frame to SW bridge just to use CPU cycles for dropping
the frame.
> -- 
> Florian

-- 
/Horatiu
