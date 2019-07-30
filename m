Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 419EB7DD07
	for <lists.bridge@lfdr.de>; Thu,  1 Aug 2019 15:58:02 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C0452162F;
	Thu,  1 Aug 2019 13:57:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 37E6A2519
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 10:04:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CE2A7D3
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 10:04:20 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id ED71922008;
	Tue, 30 Jul 2019 06:04:19 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute3.internal (MEProxy); Tue, 30 Jul 2019 06:04:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=4x/UZ/
	xEBDLMoUYduJWBoXB4D8gSXgfle7LDtguVQOU=; b=yl+ByKipshbQWlcGGWaZ7A
	G05dGg7yl/WKB0u+14NYk1HCjPyecJosakRL2pjT3GVEYVXJk4F8HuNpNZ6DbDGY
	9K91qA0mvLCx2Dlvvv9SdQ5FwK00TbLKyruezdCr/YFZEHQYRG/OCgjprFMsIqaS
	GmwkjaKzeG1jgILzFJJbWkaubUbV21+Kj5CXeaeUY4Eq5rZAeVdFbav+n2nPLJxT
	gqdBZzSvZamOxYw/FDtc3a53iZiZYzgOIpwlnxtyuCBJfvMmwKlltmBd43xjz9US
	jJm2UyHN9Xeu5R0o/Hxw81T+idqcHp5K4gFXcAvPdSpAbL0rSy4E3kB9m0MocVYA
	==
X-ME-Sender: <xms:IxZAXbeWMqnU2swpdCtKedZnHJQIK7lPPYKkb17JmSpI9AansB-4WA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrleefgddvvdcutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
	fjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpefkughoucfu
	tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucfkphepudelfe
	drgeejrdduieehrddvhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehiughoshgthhes
	ihguohhstghhrdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:IxZAXaL0ChDvMwGR4S1FpLnYDpVt8BTJRI9h68OW5uSeVQxHYh69Ng>
	<xmx:IxZAXR0jhE9ElSUfUVggxCgnOmTnIoMqPtWRx_ArjfbWyggTk8mm9Q>
	<xmx:IxZAXQq0KAaSWXYsx7HLqhfl6RrCon0-Imem2GaXThjU6Gm4ysdHCw>
	<xmx:IxZAXajkh7oW-fYMdHL1Zn1ievzh8XZS60ESayIVm2eMLdws0k3lzg>
Received: from localhost (unknown [193.47.165.251])
	by mail.messagingengine.com (Postfix) with ESMTPA id B1BB9380086;
	Tue, 30 Jul 2019 06:04:18 -0400 (EDT)
Date: Tue, 30 Jul 2019 13:04:16 +0300
From: Ido Schimmel <idosch@idosch.org>
To: "Allan W. Nielsen" <allan.nielsen@microchip.com>
Message-ID: <20190730100416.GA13250@splinter>
References: <95315f9e-0d31-2d34-ba50-11e1bbc1465c@cumulusnetworks.com>
	<20190729131420.tqukz55tz26jkg73@lx-anielsen.microsemi.net>
	<3cc69103-d194-2eca-e7dd-e2fa6a730223@cumulusnetworks.com>
	<20190729135205.oiuthcyesal4b4ct@lx-anielsen.microsemi.net>
	<e4cd0db9-695a-82a7-7dc0-623ded66a4e5@cumulusnetworks.com>
	<20190729143508.tcyebbvleppa242d@lx-anielsen.microsemi.net>
	<20190729175136.GA28572@splinter>
	<20190730062721.p4vrxo5sxbtulkrx@lx-anielsen.microsemi.net>
	<20190730070626.GA508@splinter>
	<20190730083027.biuzy7h5dbq7pik3@lx-anielsen.microsemi.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190730083027.biuzy7h5dbq7pik3@lx-anielsen.microsemi.net>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
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

On Tue, Jul 30, 2019 at 10:30:28AM +0200, Allan W. Nielsen wrote:
> The 07/30/2019 10:06, Ido Schimmel wrote:
> > As a bonus, existing drivers could benefit from it, as MDB entries are already
> > notified by MAC.
> Not sure I follow. When FDB entries are added, it also generates notification
> events.

I meant the switchdev notification sent to drivers:

/* SWITCHDEV_OBJ_ID_PORT_MDB */
struct switchdev_obj_port_mdb {
	struct switchdev_obj obj;
	unsigned char addr[ETH_ALEN];
	u16 vid;
};

By extending MDB entries to also be keyed by MAC you basically get a lot
of things for free without duplicating the same code for multicast FDBs.

AFAICS, then only change in the fast path is in br_mdb_get() where you
need to use DMAC as key in case Ethertype is not IPv4/IPv6.
