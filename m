Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 70EC882042
	for <lists.bridge@lfdr.de>; Mon,  5 Aug 2019 17:31:19 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 00C30EF7;
	Mon,  5 Aug 2019 15:26:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A3142139E
	for <bridge@lists.linux-foundation.org>;
	Fri,  2 Aug 2019 14:14:53 +0000 (UTC)
X-Greylist: delayed 00:07:06 by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
	[68.232.147.91])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 33603821
	for <bridge@lists.linux-foundation.org>;
	Fri,  2 Aug 2019 14:14:53 +0000 (UTC)
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
	Allan.Nielsen@microchip.com designates 198.175.253.82 as
	permitted sender) identity=mailfrom;
	client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
	envelope-from="Allan.Nielsen@microchip.com";
	x-sender="Allan.Nielsen@microchip.com";
	x-conformance=spf_only; x-record-type="v=spf1";
	x-record-text="v=spf1 mx a:ushub1.microchip.com
	a:smtpout.microchip.com a:mx1.microchip.iphmx.com
	a:mx2.microchip.iphmx.com include:servers.mcsv.net
	include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
	authenticity information available from domain of
	postmaster@email.microchip.com) identity=helo;
	client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
	envelope-from="Allan.Nielsen@microchip.com";
	x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
	dkim=none (message not signed) header.i=none;
	spf=Pass smtp.mailfrom=Allan.Nielsen@microchip.com;
	spf=None smtp.helo=postmaster@email.microchip.com;
	dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: x1LHmedL7ls3R/h6Jw6tQnIb/1X0uBsvLs/st1loJMk/Q/zF0/kX1BBaMGC+RZd1k9di5v+WA9
	hvHVHZRw/NH1Q2fdbbgmwJ0DmMT/hJn4YCekO78br0LPZ1lni1nRA3QxwN9cIvRdVgOmIBD5FI
	x5nQIJLRF3oapC76Br8bUFqI3CJWz78cqrG9+GWC0hmYBauxvKjnGto2sFngGPvQP99CONxHzm
	68H/lr7+vB5mzBkoOd15On5ZiMI/05eGdOoxHIBv2uOjrHZ7ZnWNqc26Hos9rjGltd87bBBeMt
	nLM=
X-IronPort-AV: E=Sophos;i="5.64,338,1559545200"; d="scan'208";a="45136519"
Received: from smtpout.microchip.com (HELO email.microchip.com)
	([198.175.253.82])
	by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
	02 Aug 2019 07:07:46 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
	chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
	15.1.1713.5; Fri, 2 Aug 2019 07:07:46 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex02.mchp-main.com
	(10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
	Transport; Fri, 2 Aug 2019 07:07:44 -0700
Date: Fri, 2 Aug 2019 16:07:45 +0200
From: "Allan W. Nielsen" <allan.nielsen@microchip.com>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20190802140655.ngbok2ubprhivlhy@lx-anielsen.microsemi.net>
References: <1564663840-27721-1-git-send-email-horatiu.vultur@microchip.com>
	<f758fdbf-4e0a-57b3-f13d-23e893ba7458@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <f758fdbf-4e0a-57b3-f13d-23e893ba7458@cumulusnetworks.com>
User-Agent: NeoMutt/20180716
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=unavailable version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Mon, 05 Aug 2019 15:25:46 +0000
Cc: andrew@lunn.ch, netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, fw@strlen.de,
	linux-kernel@vger.kernel.org, davem@davemloft.net,
	idosch@mellanox.com, tglx@linutronix.de,
	Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: Re: [Bridge] [net-next,
	rfc] net: bridge: mdb: Extend with multicast LLADDR
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

The 08/01/2019 17:07, Nikolay Aleksandrov wrote:
> > To create a group for two of the front ports the following entries can
> > be added:
> > bridge mdb add dev br0 port eth0 grp 01:00:00:00:00:04 permanent vid 1
> > bridge mdb add dev br0 port eth1 grp 01:00:00:00:00:04 permanent vid 1
> > 
> > Now the entries will be display as following:
> > dev br0 port eth0 grp 01:00:00:00:00:04 permanent offload vid 1
> > dev br0 port eth1 grp 01:00:00:00:00:04 permanent offload vid 1
> > 
> > This requires changes to iproute2 as well, see the follogin patch for that.
> > 
> > Now if frame with dmac '01:00:00:00:00:04' will arrive at one of the front
> > ports. If we have HW offload support, then the frame will be forwarded by
> > the switch, and need not to go to the CPU. In a pure SW world, the frame is
> > forwarded by the SW bridge, which will flooded it only the ports which are
> > part of the group.
> > 
> > So far so good. This is an important part of the problem we wanted to solve.
> > 
> > But, there is one drawback of this approach. If you want to add two of the
> > front ports and br0 to receive the frame then I can't see a way of doing it
> > with the bridge mdb command. To do that it requireds many more changes to
> > the existing code.
> > 
> > Example:
> > bridge mdb add dev br0 port eth0 grp 01:00:00:00:00:04 permanent vid 1
> > bridge mdb add dev br0 port eth1 grp 01:00:00:00:00:04 permanent vid 1
> > bridge mdb add dev br0 port br0 grp 01:00:00:00:00:04 permanent vid 1 // This looks wrong.
> > 
> > We believe we come a long way by re-using the facilities in MDB (thanks for
> > convincing us in doing this), but we are still not completely happy with
> > the result.
> Just add self argument for the bridge mdb command, no need to specify it twice.
Like this:
bridge mdb add dev br0 port eth1 grp 01:00:00:00:00:04 permanent vid self

Then if I want to remove br0 rom the group, should I then have a no-self, and
then it becomes even more strange what to write in the port.

bridge mdb add dev br0 port ?? grp 01:00:00:00:00:04 permanent vid no-self
                            ^^
And, what if it is a group with only br0 (the traffic should go to br0 and
not any of the slave interfaces)?

Also, the 'self' keyword has different meanings in the 'bridge vlan' and the
'bridge fdb' commands where it refres to if the offload rule should be install
in HW - or only in the SW bridge.

The proposed does not look pretty bad, but at least it will be possible to
configured the different scenarios:

bridge mdb add dev br0 port br0 grp 01:00:00:00:00:04 permanent vid 1
bridge mdb del dev br0 port br0 grp 01:00:00:00:00:04 permanent vid 1

The more I look at the "bridge mdb { add | del } dev DEV port PORT" command, the
less I understand why do we have both 'dev' and 'port'? The implementation will
only allow this if 'port' has become enslaved to the switch represented by
'dev'. Anyway, what is done is done, and we need to stay backwards compatible,
but we could make it optional, and then it looks a bit less strange to allow the
port to specify a br0.

Like this:

bridge mdb { add | del } [dev DEV] port PORT grp GROUP [ permanent | temp ] [ vid VID ]

bridge mdb add port eth0 grp 01:00:00:00:00:04 permanent vid 1
bridge mdb add port eth1 grp 01:00:00:00:00:04 permanent vid 1
bridge mdb add port br0  grp 01:00:00:00:00:04 permanent vid 1 // Add br0 to the gruop
bridge mdb del port br0  grp 01:00:00:00:00:04 permanent vid 1 // Delete it again

Alternative we could also make the port optional:

bridge mdb { add | del } dev DEV [port PORT] grp GROUP [ permanent | temp ] [ vid VID ]

bridge mdb add dev br0 port eth0 grp 01:00:00:00:00:04 permanent vid 1
bridge mdb add dev br0 port eth1 grp 01:00:00:00:00:04 permanent vid 1
bridge mdb add dev br0           grp 01:00:00:00:00:04 permanent vid 1 // Add br0 to the gruop
bridge mdb del dev br0           grp 01:00:00:00:00:04 permanent vid 1 // Delete it again

Any preferences?

/Allan


