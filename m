Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FEB88203C
	for <lists.bridge@lfdr.de>; Mon,  5 Aug 2019 17:31:03 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 34DC0EF0;
	Mon,  5 Aug 2019 15:26:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 20FBC145F
	for <bridge@lists.linux-foundation.org>;
	Thu,  1 Aug 2019 14:23:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
	[68.232.149.84])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A605DE7
	for <bridge@lists.linux-foundation.org>;
	Thu,  1 Aug 2019 14:23:06 +0000 (UTC)
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
IronPort-SDR: qCQXWl0rF2TIuwU6rbtaA9K+cKeas9+r9q3FdUTb3SSRIKiCemqChIfNR/7wklaOPSvlQlZikL
	tuqP1+P29ChGmjdJHZVfaILoOLr1wb/ZlvpdErjbvq95T4F9+UJ3v8yCIxf8PyRr9xHXvohQah
	Z9hOyZp7KK7uTGxvbT4WZWMJKanykIAJsja4SSTGN6ChizfULt3LUP3pP64Ogi0OfHaPxnv0vr
	uBH/7KoEsXMPvZq8/eT04XEiOREQovMb27iNBKupNRc8xSZpCnzPBiurT7370iBenbXc+pWVgO
	f0w=
X-IronPort-AV: E=Sophos;i="5.64,334,1559545200"; d="scan'208";a="43579779"
Received: from smtpout.microchip.com (HELO email.microchip.com)
	([198.175.253.82])
	by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
	01 Aug 2019 07:23:05 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
	chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
	15.1.1713.5; Thu, 1 Aug 2019 07:22:54 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex02.mchp-main.com
	(10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
	Transport; Thu, 1 Aug 2019 07:22:54 -0700
Date: Thu, 1 Aug 2019 16:22:53 +0200
From: "Allan W. Nielsen" <allan.nielsen@microchip.com>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20190801142252.pdzd6knl2ytuty7h@lx-anielsen.microsemi.net>
References: <1564055044-27593-1-git-send-email-horatiu.vultur@microchip.com>
	<7e7a7015-6072-d884-b2ba-0a51177245ab@cumulusnetworks.com>
	<eef063fe-fd3a-7e02-89c2-e40728a17578@cumulusnetworks.com>
	<20190725142101.65tusauc6fzxb2yp@soft-dev3.microsemi.net>
	<b9ce433a-3ef7-fe15-642a-659c5715d992@cumulusnetworks.com>
	<e6ad982f-4706-46f9-b8f0-1337b09de350@cumulusnetworks.com>
	<20190726120214.c26oj5vks7g5ntwu@soft-dev3.microsemi.net>
	<b755f613-e6d8-a2e6-16cd-6f13ec0a6ddc@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <b755f613-e6d8-a2e6-16cd-6f13ec0a6ddc@cumulusnetworks.com>
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

The 07/26/2019 15:31, Nikolay Aleksandrov wrote:
...

> You know that in order to not run in promisc mode you'll have to disable
> port flooding and port learning, right ? Otherwise they're always put in promisc.
Yes, we have spend some time looking at nbp_update_port_count and trying to
understand the reasoning behind it.

Our understanding is that this is to make it work with a pure SW bridge
implementation, and this is actually an optimization to allow disable promisc
mode if all forwarding is static (no flooding and no learning).

We also noticed that the Ocelot and the Rocker drivers avoids this "issue" by
not implementing promisc mode.

But promisc mode is a really nice feature for debugging, and we would actually
like to have it, and when HW that can do learning/flooding it does not seem to
be necessary.

I tried to understand how this is handled in the Mellanox drivers, but gave up.
Too big, and we lack the insight in their design.

Do you know if there are better ways to prevent switchdev-offloaded-slave
interfaces to go to promisc mode?

/Allan

