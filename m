Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 010EB82030
	for <lists.bridge@lfdr.de>; Mon,  5 Aug 2019 17:29:40 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2E4EEEBA;
	Mon,  5 Aug 2019 15:26:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8312E2CA2
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 12:41:48 +0000 (UTC)
X-Greylist: delayed 00:07:04 by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
	[68.232.153.233])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 311AED3
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 12:41:48 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
	Allan.Nielsen@microchip.com designates 198.175.253.82 as
	permitted sender) identity=mailfrom;
	client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
	envelope-from="Allan.Nielsen@microchip.com";
	x-sender="Allan.Nielsen@microchip.com";
	x-conformance=spf_only; x-record-type="v=spf1";
	x-record-text="v=spf1 mx a:ushub1.microchip.com
	a:smtpout.microchip.com a:mx1.microchip.iphmx.com
	a:mx2.microchip.iphmx.com include:servers.mcsv.net
	include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
	authenticity information available from domain of
	postmaster@email.microchip.com) identity=helo;
	client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
	envelope-from="Allan.Nielsen@microchip.com";
	x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
	dkim=none (message not signed) header.i=none;
	spf=Pass smtp.mailfrom=Allan.Nielsen@microchip.com;
	spf=None smtp.helo=postmaster@email.microchip.com;
	dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: TSh6xGslQ9l146S4CGMt2voFWYTBMZFjzfO0F+tyOSvlW8IqkZu39CbH8BeW2uVOwa8FqpNu2U
	GOe+4WH1ohE0A3/Wo0vQNf0ORGdz/va7Ngy2+hN4JR6FKah3xwWFw2sR0Dz4OepiY78jqH0PLX
	csxXCYV3So2uWZWAELCBc0g7zpdKKF/K8VVI7Kb+kTQLvXdBFG0JRVuA2k2HEY9SnV7evaW2B9
	53ygqY+n+2UhcHUL2wc6ItKg2n03Kgy5DSg1ebkjzhfHJ94PoBxXtFbew9FwgIHHNhnijEHLqG
	emA=
X-IronPort-AV: E=Sophos;i="5.64,326,1559545200"; d="scan'208";a="43277834"
Received: from smtpout.microchip.com (HELO email.microchip.com)
	([198.175.253.82])
	by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
	30 Jul 2019 05:34:43 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
	chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
	15.1.1713.5; Tue, 30 Jul 2019 05:19:51 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex02.mchp-main.com
	(10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
	Transport; Tue, 30 Jul 2019 05:19:51 -0700
Date: Tue, 30 Jul 2019 14:19:51 +0200
From: "Allan W. Nielsen" <allan.nielsen@microchip.com>
To: Ido Schimmel <idosch@idosch.org>
Message-ID: <20190730121950.pyxtu5k4qphmshy4@lx-anielsen.microsemi.net>
References: <20190729131420.tqukz55tz26jkg73@lx-anielsen.microsemi.net>
	<3cc69103-d194-2eca-e7dd-e2fa6a730223@cumulusnetworks.com>
	<20190729135205.oiuthcyesal4b4ct@lx-anielsen.microsemi.net>
	<e4cd0db9-695a-82a7-7dc0-623ded66a4e5@cumulusnetworks.com>
	<20190729143508.tcyebbvleppa242d@lx-anielsen.microsemi.net>
	<20190729175136.GA28572@splinter>
	<20190730062721.p4vrxo5sxbtulkrx@lx-anielsen.microsemi.net>
	<20190730070626.GA508@splinter>
	<20190730083027.biuzy7h5dbq7pik3@lx-anielsen.microsemi.net>
	<20190730100416.GA13250@splinter>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20190730100416.GA13250@splinter>
User-Agent: NeoMutt/20180716
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Mon, 05 Aug 2019 15:25:46 +0000
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
	roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	linux-kernel@vger.kernel.org, davem@davemloft.net,
	Horatiu Vultur <horatiu.vultur@microchip.com>
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

The 07/30/2019 13:04, Ido Schimmel wrote:
> On Tue, Jul 30, 2019 at 10:30:28AM +0200, Allan W. Nielsen wrote:
> > The 07/30/2019 10:06, Ido Schimmel wrote:
> > > As a bonus, existing drivers could benefit from it, as MDB entries are already
> > > notified by MAC.
> > Not sure I follow. When FDB entries are added, it also generates notification
> > events.
> 
> I meant the switchdev notification sent to drivers:
> 
> /* SWITCHDEV_OBJ_ID_PORT_MDB */
> struct switchdev_obj_port_mdb {
> 	struct switchdev_obj obj;
> 	unsigned char addr[ETH_ALEN];
> 	u16 vid;
> };
> 
> By extending MDB entries to also be keyed by MAC you basically get a lot
> of things for free without duplicating the same code for multicast FDBs.
Agree, this should be the same.

> AFAICS, then only change in the fast path is in br_mdb_get() where you
> need to use DMAC as key in case Ethertype is not IPv4/IPv6.
That would be nice.

-- 
/Allan
