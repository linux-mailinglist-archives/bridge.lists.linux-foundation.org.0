Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id CA76D82012
	for <lists.bridge@lfdr.de>; Mon,  5 Aug 2019 17:27:36 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CDF31CDD;
	Mon,  5 Aug 2019 15:25:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DAF52185E
	for <bridge@lists.linux-foundation.org>;
	Mon, 29 Jul 2019 13:14:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
	[216.71.154.253])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 717142C6
	for <bridge@lists.linux-foundation.org>;
	Mon, 29 Jul 2019 13:14:23 +0000 (UTC)
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
	Allan.Nielsen@microchip.com designates 198.175.253.82 as
	permitted sender) identity=mailfrom;
	client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
	envelope-from="Allan.Nielsen@microchip.com";
	x-sender="Allan.Nielsen@microchip.com";
	x-conformance=spf_only; x-record-type="v=spf1";
	x-record-text="v=spf1 mx a:ushub1.microchip.com
	a:smtpout.microchip.com a:mx1.microchip.iphmx.com
	a:mx2.microchip.iphmx.com include:servers.mcsv.net
	include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
	authenticity information available from domain of
	postmaster@email.microchip.com) identity=helo;
	client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
	envelope-from="Allan.Nielsen@microchip.com";
	x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
	dkim=none (message not signed) header.i=none;
	spf=Pass smtp.mailfrom=Allan.Nielsen@microchip.com;
	spf=None smtp.helo=postmaster@email.microchip.com;
	dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: G261h5Die/W2fcW8zeh0Zu7Ii9AVIm1kAQOMRhWOK5J3lDD/pJ6IxazQ8p8uxsvDqrXXP8WprS
	XCyjsCUJWdTWsszgJnXB7DeC3SOdnkT5qjyHpdlfi5YsYzL6JQT3Obfho/CYio1gZ8xwl5Bq8W
	R5df9VOn4exDmTzj6Zky7GBqN+GJ+EpIiRG4NtyWyHS3wETZRQ6pXr9IH2DOg+mdMtehSPo2vP
	dielJvi78eXAjoMupqSCHYNIJToGxlwdnoCFbyMpIRVVwIv3JmCHzUSt2J8QXbyT65gChwsA3r
	Ioo=
X-IronPort-AV: E=Sophos;i="5.64,322,1559545200"; d="scan'208";a="40086148"
Received: from smtpout.microchip.com (HELO email.microchip.com)
	([198.175.253.82])
	by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
	29 Jul 2019 06:14:22 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
	chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
	15.1.1713.5; Mon, 29 Jul 2019 06:14:21 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex03.mchp-main.com
	(10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
	Transport; Mon, 29 Jul 2019 06:14:22 -0700
Date: Mon, 29 Jul 2019 15:14:21 +0200
From: "Allan W. Nielsen" <allan.nielsen@microchip.com>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20190729131420.tqukz55tz26jkg73@lx-anielsen.microsemi.net>
References: <1564055044-27593-1-git-send-email-horatiu.vultur@microchip.com>
	<7e7a7015-6072-d884-b2ba-0a51177245ab@cumulusnetworks.com>
	<eef063fe-fd3a-7e02-89c2-e40728a17578@cumulusnetworks.com>
	<20190725142101.65tusauc6fzxb2yp@soft-dev3.microsemi.net>
	<b9ce433a-3ef7-fe15-642a-659c5715d992@cumulusnetworks.com>
	<e6ad982f-4706-46f9-b8f0-1337b09de350@cumulusnetworks.com>
	<20190726120214.c26oj5vks7g5ntwu@soft-dev3.microsemi.net>
	<b755f613-e6d8-a2e6-16cd-6f13ec0a6ddc@cumulusnetworks.com>
	<20190729121409.wa47uelw5f6l4vs4@lx-anielsen.microsemi.net>
	<95315f9e-0d31-2d34-ba50-11e1bbc1465c@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <95315f9e-0d31-2d34-ba50-11e1bbc1465c@cumulusnetworks.com>
User-Agent: NeoMutt/20180716
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Mon, 05 Aug 2019 15:25:46 +0000
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
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

The 07/29/2019 15:22, Nikolay Aleksandrov wrote:
> Yes, all of the multicast code is handled differently, it doesn't go through the fdb
> lookup or code at all. I don't see how you'll do a lookup in the fdb table with a
> multicast mac address, take a look at br_handle_frame_finish() and you'll notice
> that when a multicast dmac is detected then we use the bridge mcast code for lookups
> and forwarding.

Here is my thinking (needs much more elaboration, which will come if we do a
patch to test it out):


In br_pkt_type

Rename BR_PKT_MULTICAST to BR_PKT_MULTICAST_IP
Add a new type called BR_PKT_MULTICAST_L2

In br_handle_frame_finish

	if (is_multicast_ether_addr(dest)) {
		/* by definition the broadcast is also a multicast address */
		if (is_broadcast_ether_addr(dest)) {
			pkt_type = BR_PKT_BROADCAST;
			local_rcv = true;
		} else {
			pkt_type = BR_PKT_MULTICAST;
			if (br_multicast_rcv(br, p, skb, vid))
				goto drop;
		}
	}

Change the code above to detect if it is a BR_PKT_MULTICAST_IP or a
BR_PKT_MULTICAST_L2


In this section:

switch (pkt_type) {
....
}

if (dst) {
} else {
}

Add awareness to the BR_PKT_MULTICAST_L2 type, and allow it do forwarding
according to the static entry if it is there.

> If you're trying to achieve Rx only on the bridge of these then
> why not just use Ido's tc suggestion or even the ip maddr add offload for each port ?
> 
> If you add a multicast mac in the fdb (currently allowed, but has no effect) and you
> use dev_mc_add() as suggested that'd just be a hack to pass it down and it is already
> possible to achieve via other methods, no need to go through the bridge.

Well, I wanted the SW bridge implementation to behave the same with an without
HW offload.

And also, I believe that is conceptually belongs to the MAC tables.

/Allan

