Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D3C82013
	for <lists.bridge@lfdr.de>; Mon,  5 Aug 2019 17:27:54 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6A544DB5;
	Mon,  5 Aug 2019 15:26:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A20041934
	for <bridge@lists.linux-foundation.org>;
	Mon, 29 Jul 2019 13:52:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
	[216.71.150.166])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 33D2D2C6
	for <bridge@lists.linux-foundation.org>;
	Mon, 29 Jul 2019 13:52:08 +0000 (UTC)
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
	Allan.Nielsen@microchip.com designates 198.175.253.82 as
	permitted sender) identity=mailfrom;
	client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
	envelope-from="Allan.Nielsen@microchip.com";
	x-sender="Allan.Nielsen@microchip.com";
	x-conformance=spf_only; x-record-type="v=spf1";
	x-record-text="v=spf1 mx a:ushub1.microchip.com
	a:smtpout.microchip.com a:mx1.microchip.iphmx.com
	a:mx2.microchip.iphmx.com include:servers.mcsv.net
	include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
	authenticity information available from domain of
	postmaster@email.microchip.com) identity=helo;
	client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
	envelope-from="Allan.Nielsen@microchip.com";
	x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
	dkim=none (message not signed) header.i=none;
	spf=Pass smtp.mailfrom=Allan.Nielsen@microchip.com;
	spf=None smtp.helo=postmaster@email.microchip.com;
	dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Q2m3xpDPgjjxj23DYoeUpZ4quvmA8ESbiWJQs2VDQYn1U0RGudOEp+0oFH/bzu2W5UhZHlx9kQ
	TEQ3kq1AxAa9ASwgJ8ql9rrzk3HEyao1aGhqxDYdjEQ3JYUXXroE3JPSOG73aVW31JCixXnAWK
	U7M2NC2dDw3crndKHrSNMc6Vc74OMiWUeml1NVJNEIf606zx/CbEyGOdcKaLeiRAGZBKTRP0N7
	aGOTojYeGg47Pum0d+gSyWHCBPjbX79Nh2sk6idKAiwfxNKSAibeHrF2E/ANrmbcX/LdcgyAOr
	+iE=
X-IronPort-AV: E=Sophos;i="5.64,322,1559545200"; d="scan'208";a="41516577"
Received: from smtpout.microchip.com (HELO email.microchip.com)
	([198.175.253.82])
	by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
	29 Jul 2019 06:52:07 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
	chn-vm-ex04.mchp-main.com (10.10.87.151) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
	15.1.1713.5; Mon, 29 Jul 2019 06:52:07 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex03.mchp-main.com
	(10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
	Transport; Mon, 29 Jul 2019 06:52:07 -0700
Date: Mon, 29 Jul 2019 15:52:06 +0200
From: "Allan W. Nielsen" <allan.nielsen@microchip.com>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20190729135205.oiuthcyesal4b4ct@lx-anielsen.microsemi.net>
References: <eef063fe-fd3a-7e02-89c2-e40728a17578@cumulusnetworks.com>
	<20190725142101.65tusauc6fzxb2yp@soft-dev3.microsemi.net>
	<b9ce433a-3ef7-fe15-642a-659c5715d992@cumulusnetworks.com>
	<e6ad982f-4706-46f9-b8f0-1337b09de350@cumulusnetworks.com>
	<20190726120214.c26oj5vks7g5ntwu@soft-dev3.microsemi.net>
	<b755f613-e6d8-a2e6-16cd-6f13ec0a6ddc@cumulusnetworks.com>
	<20190729121409.wa47uelw5f6l4vs4@lx-anielsen.microsemi.net>
	<95315f9e-0d31-2d34-ba50-11e1bbc1465c@cumulusnetworks.com>
	<20190729131420.tqukz55tz26jkg73@lx-anielsen.microsemi.net>
	<3cc69103-d194-2eca-e7dd-e2fa6a730223@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <3cc69103-d194-2eca-e7dd-e2fa6a730223@cumulusnetworks.com>
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

The 07/29/2019 15:50, Nikolay Aleksandrov wrote:
> On 29/07/2019 15:22, Nikolay Aleksandrov wrote:
> > Hi Allan,
> > On 29/07/2019 15:14, Allan W. Nielsen wrote:
> >> First of all, as mentioned further down in this thread, I realized that our
> >> implementation of the multicast floodmasks does not align with the existing SW
> >> implementation. We will change this, such that all multicast packets goes to the
> >> SW bridge.
> >>
> >> This changes things a bit, not that much.
> >>
> >> I actually think you summarized the issue we have (after changing to multicast
> >> flood-masks) right here:
> >>
> >> The 07/26/2019 12:26, Nikolay Aleksandrov wrote:
> >>>>> Actually you mentioned non-IP traffic, so the querier stuff is not a problem. This
> >>>>> traffic will always be flooded by the bridge (and also a copy will be locally sent up).
> >>>>> Thus only the flooding may need to be controlled.
> >>
> >> This seems to be exactly what we need.
> >>
> >> Assuming we have a SW bridge (br0) with 4 slave interfaces (eth0-3). We use this
> >> on a network where we want to limit the flooding of frames with dmac
> >> 01:21:6C:00:00:01 (which is non IP traffic) to eth0 and eth1.
> >>
> >> One way of doing this could potentially be to support the following command:
> >>
> >> bridge fdb add    01:21:6C:00:00:01 port eth0
> >> bridge fdb append 01:21:6C:00:00:01 port eth1
> >>
> 
> And the fdbs become linked lists?
Yes, it will most likely become a linked list

> So we'll increase the complexity for something that is already supported by
> ACLs (e.g. tc) and also bridge per-port multicast flood flag ?
I do not think it can be supported with the facilities we have today in tc.

We can do half of it (copy more fraems to the CPU) with tc, but we can not limit
the floodmask of a frame with tc (say we want it to flood to 2 out of 4 slave
ports).

> I'm sorry but that doesn't sound good to me for a case which is very rare and
> there are existing ways to solve without incurring performance hits or increasing
> code complexity.
I do not consider it rarely, controling the forwarding of L2 multicast frames is
quite common in the applications we are doing.

> If you find a way to achieve this without incurring a performance hit or significant
> code complexity increase, and without breaking current use-cases (e.g. unexpected default
> forwarding behaviour changes) then please send a patch and we can discuss it further with
> all details present. People have provided enough alternatives which avoid all of the
> problems.
Will do, thanks for the guidance.

/Allan

