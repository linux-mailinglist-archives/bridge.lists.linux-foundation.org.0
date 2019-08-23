Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 778109AFC7
	for <lists.bridge@lfdr.de>; Fri, 23 Aug 2019 14:39:43 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8FC5DE8F;
	Fri, 23 Aug 2019 12:39:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 14776E62
	for <bridge@lists.linux-foundation.org>;
	Fri, 23 Aug 2019 12:39:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
	[68.232.153.233])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F1F987FB
	for <bridge@lists.linux-foundation.org>;
	Fri, 23 Aug 2019 12:39:32 +0000 (UTC)
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
IronPort-SDR: RZNuFDnl1BBXOhwfHF/9hW+Lc4xuyvpZaKis9sXHXxKK7TVC50toYnMKpU9L/2ypdjbLtNZGhA
	gyUZ9oN7oqyib/Zf9AZ7Q+TALCOkqSrfFXiPkVGfIGfU1cQx+S1HxMBRZLk/x1NyWgxRlPr+18
	bAoiz5xf+d7MS0TeuWs3iIMAlh3Xczyq1JMUNbvI0fUTWp0kmD91I+2tQTBtC+3h6doQKWjLSA
	AQ+mWfj3StDmNH2mvy9qwgOrvEIdKn4GG2NKazN7+M9QixbWVZ/6IlWSDL86XRYN6fi2wdapjm
	Lfc=
X-IronPort-AV: E=Sophos;i="5.64,421,1559545200"; d="scan'208";a="46368782"
Received: from smtpout.microchip.com (HELO email.microchip.com)
	([198.175.253.82])
	by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
	23 Aug 2019 05:39:32 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
	chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
	15.1.1713.5; Fri, 23 Aug 2019 05:39:31 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex03.mchp-main.com
	(10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
	Transport; Fri, 23 Aug 2019 05:39:31 -0700
Date: Fri, 23 Aug 2019 14:39:30 +0200
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20190823123929.ta4ikozz7jwkwbo2@soft-dev3.microsemi.net>
References: <1566500850-6247-1-git-send-email-horatiu.vultur@microchip.com>
	<1566500850-6247-2-git-send-email-horatiu.vultur@microchip.com>
	<20190822200817.GD21295@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20190822200817.GD21295@lunn.ch>
User-Agent: NeoMutt/20180716
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: alexandre.belloni@bootlin.com, nikolay@cumulusnetworks.com,
	netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
	UNGLinuxDriver@microchip.com, allan.nielsen@microchip.com,
	davem@davemloft.net
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

The 08/22/2019 22:08, Andrew Lunn wrote:
> External E-Mail
> 
> 
> > +/* Determin if the SW bridge can be offloaded to HW. Return true if all
> > + * the interfaces of the bridge have the feature NETIF_F_HW_SWITCHDEV set
> > + * and have the same netdev_ops.
> > + */
> 
> Hi Horatiu
> 
> Why do you need these restrictions. The HW bridge should be able to
> learn that a destination MAC address can be reached via the SW
> bridge. The software bridge can then forward it out the correct
> interface.
> 
> Or are you saying your hardware cannot learn from frames which come
> from the CPU?
> 
> 	Andrew
> 
Hi Andrew,

I do not believe that our HW can learn from frames which comes from the
CPU, at least not in the way they are injected today. But in case of Ocelot
(and the next chip we are working on), we have other issues in mixing with
foreign interfaces which is why we have the check in
ocelot_netdevice_dev_check.

More important, as we responded to Nikolay, we properly introduced this
restriction for the wrong reasons.

In SW bridge I will remove all these restrictions and only set ports in
promisc mode only if NETIF_F_HW_BRIDGE is not set.
Then in the network driver I can see if a foreign interface is added to
the bridge, and when that happens I can set the port in promisc mode.
Then the frames will be flooded to the SW bridge which eventually will
send to the foreign interface.
-- 
/Horatiu
