Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB3582011
	for <lists.bridge@lfdr.de>; Mon,  5 Aug 2019 17:27:19 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 25F98D8D;
	Mon,  5 Aug 2019 15:25:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B83101754
	for <bridge@lists.linux-foundation.org>;
	Mon, 29 Jul 2019 12:43:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
	[68.232.149.84])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 31D152C6
	for <bridge@lists.linux-foundation.org>;
	Mon, 29 Jul 2019 12:43:46 +0000 (UTC)
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
	Allan.Nielsen@microchip.com designates 198.175.253.82 as
	permitted sender) identity=mailfrom;
	client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
	envelope-from="Allan.Nielsen@microchip.com";
	x-sender="Allan.Nielsen@microchip.com";
	x-conformance=spf_only; x-record-type="v=spf1";
	x-record-text="v=spf1 mx a:ushub1.microchip.com
	a:smtpout.microchip.com a:mx1.microchip.iphmx.com
	a:mx2.microchip.iphmx.com include:servers.mcsv.net
	include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
	authenticity information available from domain of
	postmaster@email.microchip.com) identity=helo;
	client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
	envelope-from="Allan.Nielsen@microchip.com";
	x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
	dkim=none (message not signed) header.i=none;
	spf=Pass smtp.mailfrom=Allan.Nielsen@microchip.com;
	spf=None smtp.helo=postmaster@email.microchip.com;
	dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: QVP+RtM4+DDzDC8jZq3pxzcUzdvIDDn0XDWUHrYFYj32QyQKjV7MJX9kyefoAYguJlY5yyf3ho
	CJjdi5R5+7CkkBM6lPlG3o8V7SW7WoNSm76rVDt9yYV/Ioy+nIqExCq4a6wW8AIB0dZgYG+2ec
	Dieyw9EFVFyvfIu3yFh6fVH4yqmRRz5KZCxAC+jMI4MvA//CMFjgPCN5Oi/H004uhQjTIGw2VX
	M1LcW3i2BAeOmlype0F/EV/kHR+tuW7aaGeLiUuUcVbaKYZALETD5JaxEYC+g/ce8kaYB7c1gI
	EBY=
X-IronPort-AV: E=Sophos;i="5.64,322,1559545200"; d="scan'208";a="43093694"
Received: from smtpout.microchip.com (HELO email.microchip.com)
	([198.175.253.82])
	by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
	29 Jul 2019 05:43:45 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
	chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
	15.1.1713.5; Mon, 29 Jul 2019 05:43:45 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex01.mchp-main.com
	(10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
	Transport; Mon, 29 Jul 2019 05:43:43 -0700
Date: Mon, 29 Jul 2019 14:43:43 +0200
From: "Allan W. Nielsen" <allan.nielsen@microchip.com>
To: Ido Schimmel <idosch@idosch.org>
Message-ID: <20190729124343.rynm5qjdsueonlno@lx-anielsen.microsemi.net>
References: <eef063fe-fd3a-7e02-89c2-e40728a17578@cumulusnetworks.com>
	<20190725142101.65tusauc6fzxb2yp@soft-dev3.microsemi.net>
	<b9ce433a-3ef7-fe15-642a-659c5715d992@cumulusnetworks.com>
	<e6ad982f-4706-46f9-b8f0-1337b09de350@cumulusnetworks.com>
	<20190726120214.c26oj5vks7g5ntwu@soft-dev3.microsemi.net>
	<20190726134613.GD18223@lunn.ch>
	<20190726195010.7x75rr74v7ph3m6m@lx-anielsen.microsemi.net>
	<20190727030223.GA29731@lunn.ch>
	<20190728191558.zuopgfqza2iz5d5b@lx-anielsen.microsemi.net>
	<20190729060923.GA16938@splinter>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20190729060923.GA16938@splinter>
User-Agent: NeoMutt/20180716
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Mon, 05 Aug 2019 15:25:46 +0000
Cc: Andrew Lunn <andrew@lunn.ch>,
	Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
	netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
	davem@davemloft.net, Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: Re: [Bridge] [PATCH] net: bridge: Allow bridge to joing multicast
	groups
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

Hi Ido,

The 07/29/2019 09:09, Ido Schimmel wrote:
> External E-Mail
> 
> 
> On Sun, Jul 28, 2019 at 09:15:59PM +0200, Allan W. Nielsen wrote:
> > If we assume that the SwitchDev driver implemented such that all multicast
> > traffic goes to the CPU, then we should really have a way to install a HW
> > offload path in the silicon, such that these packets does not go to the CPU (as
> > they are known not to be use full, and a frame every 3 us is a significant load
> > on small DMA connections and CPU resources).
> > 
> > If we assume that the SwitchDev driver implemented such that only "needed"
> > multicast packets goes to the CPU, then we need a way to get these packets in
> > case we want to implement the DLR protocol.
> 
> I'm not familiar with the HW you're working with, so the below might not
> be relevant.
> 
> In case you don't want to send all multicast traffic to the CPU (I'll
> refer to it later), you can install an ingress tc filter that traps to
> the CPU the packets you do want to receive. Something like:
> 
> # tc qdisc add dev swp1 clsact
> # tc filter add dev swp1 pref 1 ingress flower skip_sw dst_mac \
> 	01:21:6C:00:00:01 action trap
I have actually been looking at this, and it may an idea to go down this road.
But so far we have chosen not to for the following reasons:
- It is not only about trapping traffic to the CPU, we also needs to capability
  to limit the flooding on the front ports.
- In our case (the silicon), this feature really belongs to the MAC-table, which
  is why we did prefer to do it via the FDB entries.
  - But the HW does have TCAM resources, and we are planning on exposing these
    resources via the tc-flower interface. It is just that we have more MAC
    table resoruces than TCAM resources, which is another argument for using the
    MAC table.

> If your HW supports sharing the same filter among multiple ports, then
> you can install your filter in a tc shared block and bind multiple ports
> to it.
It does, thanks for making us aware of this optimization option.

> Another option is to always send a *copy* of multicast packets to the
> CPU, but make sure the HW uses a policer that prevents the CPU from
> being overwhelmed. To avoid packets being forwarded twice (by HW and
> SW), you will need to mark such packets in your driver with
> 'skb->offload_fwd_mark = 1'.
Understood

> Now, in case user wants to allow the CPU to receive certain packets at a
> higher rate, a tc filter can be used. It will be identical to the filter
> I mentioned earlier, but with a 'police' action chained before 'trap'.
I see.

> I don't think this is currently supported by any driver, but I believe
> it's the right way to go: By default the CPU receives all the traffic it
> should receive and user can fine-tune it using ACLs.
If all the frames goes to the CPU, then how can I fine-tune frames not to go to
the CPU?? I can do a TRAP (to get it to the CPU) a DROP (to drop it before
forwarding), but how can I forward a multicast packet, but prevent it from going
to the CPU?

I have seen that the mirror command can do re-direction, but not to a list of
ports...

All in all, thanks a lot for the suggestions, but to begin with I think we will
explore the MAC table option a bit more. But we will get back to TC to support
the ACL functions.

/Allan


