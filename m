Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 479CB9E569
	for <lists.bridge@lfdr.de>; Tue, 27 Aug 2019 12:10:47 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 37F0612F9;
	Tue, 27 Aug 2019 10:10:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 85C761279
	for <bridge@lists.linux-foundation.org>;
	Tue, 27 Aug 2019 10:10:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
	[68.232.153.233])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 234551FB
	for <bridge@lists.linux-foundation.org>;
	Tue, 27 Aug 2019 10:10:37 +0000 (UTC)
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
IronPort-SDR: 1yAi4Ua9NRqqYG9pUWXNBJ8g0UQT9uyfb8aoPHVM5JfTpSepP0yUhhi9A04kfVoewLMtPbjlQB
	V2lpUvqk7DsA3Qf3Bnbj8BXtqKI63nijDtD8iDNmxzxTAAzC9macH5h51O1282qjCc26/31tmB
	5nGqJ3HhqX5I7CBFdet9cDi/K7w2ZS33eV6I8DIHrf/hPGvNip7gPja9gdfYEkWOAyvCRQ1BKf
	6VvwQWmdQr2/O+Cea4MlVFVWm7esQlbcGPe8RwBDYKAEqmjjccbgPV0ETWu5Rax3/edS3Oja1I
	h/8=
X-IronPort-AV: E=Sophos;i="5.64,436,1559545200"; d="scan'208";a="46737569"
Received: from smtpout.microchip.com (HELO email.microchip.com)
	([198.175.253.82])
	by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
	27 Aug 2019 03:10:36 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
	chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
	15.1.1713.5; Tue, 27 Aug 2019 03:10:35 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex01.mchp-main.com
	(10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
	Transport; Tue, 27 Aug 2019 03:10:35 -0700
Date: Tue, 27 Aug 2019 12:10:34 +0200
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20190827101033.g2cb6j2j4kuyzh2a@soft-dev3.microsemi.net>
References: <1566807075-775-1-git-send-email-horatiu.vultur@microchip.com>
	<20190826123811.GA13411@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20190826123811.GA13411@lunn.ch>
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

The 08/26/2019 14:38, Andrew Lunn wrote:
> External E-Mail
> 
> 
> On Mon, Aug 26, 2019 at 10:11:12AM +0200, Horatiu Vultur wrote:
> > When a network port is added to a bridge then the port is added in
> > promisc mode. Some HW that has bridge capabilities(can learn, forward,
> > flood etc the frames) they are disabling promisc mode in the network
> > driver when the port is added to the SW bridge.
> > 
> > This patch adds the feature NETIF_F_HW_BR_CAP so that the network ports
> > that have this feature will not be set in promisc mode when they are
> > added to a SW bridge.
> > 
> > In this way the HW that has bridge capabilities don't need to send all the
> > traffic to the CPU and can also implement the promisc mode and toggle it
> > using the command 'ip link set dev swp promisc on'
> 
> Hi Horatiu

Hi Andrew,
> 
> I'm still not convinced this is needed. The model is, the hardware is
> there to accelerate what Linux can do in software. Any peculiarities
> of the accelerator should be hidden in the driver.  If the accelerator
> can do its job without needing promisc mode, do that in the driver.
Thanks for the model description. I will keep in my mind for the next
patches that I will do.
> 
> So you are trying to differentiate between promisc mode because the
> interface is a member of a bridge, and promisc mode because some
> application, like pcap, has asked for promisc mode.
> 
> dev->promiscuity is a counter. So what you can do it look at its
> value, and how the interface is being used. If the interface is not a
> member of a bridge, and the count > 0, enable promisc mode in the
> accelerator. If the interface is a member of a bridge, and the count >
> 1, enable promisc mode in the accelerator.
That sounds like a great idea. I was expecting to add this logic in the
set_rx_mode function of the driver. But unfortunetly, I got the calls to
this function before the dev->promiscuity is updated or not to get the
call at all. For example in case the port is member of a bridge and I try
to enable the promisc mode.

> 
>    Andrew
> 
> 

-- 
/Horatiu
