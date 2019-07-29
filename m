Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B0C7DCCF
	for <lists.bridge@lfdr.de>; Thu,  1 Aug 2019 15:50:16 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 04AE71563;
	Thu,  1 Aug 2019 13:49:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 561181C28
	for <bridge@lists.linux-foundation.org>;
	Mon, 29 Jul 2019 17:51:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BA9175E4
	for <bridge@lists.linux-foundation.org>;
	Mon, 29 Jul 2019 17:51:40 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 984B721F4C;
	Mon, 29 Jul 2019 13:51:39 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute3.internal (MEProxy); Mon, 29 Jul 2019 13:51:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=Vpmx8x
	fcs9+OL5FkaK+/UEwKsySo7yiF3ecK8DXDOSg=; b=grga5bl+eOQHaywMoChyiC
	ztI4BSrPCjEChRuC/fOz8w9tdiHjIO/2BN8Siw4Wd8Ssgk73YBGdkTFRiOXORHnq
	1ixaCVz80BvG7qmjfcYd+Pq/tFBvK+Ar2rKCU2m5J1niugkNAPcylN3NO9TvaRUr
	gD0I3frsL19ErIscBrj8Ujuj3GO3OLO5rylSDocWrpMtbaRVO31InrLB4mxzUaTE
	RoS8OQ7K0G01inyKaLpNfaYTMEfkDUmyub7gIAL5hryNZPz4P7ItRdLZOojk08m+
	TYDI3QBSPDDIzK0rTeQuL1Ujf50Y55GWsUri7aaCk38fLqEpzB/9kb7DqZDHtWWg
	==
X-ME-Sender: <xms:KzI_XWdCnabs6lZOlxQbAAvuiQbx80MlLGwwM-VXeBoVT7-hlqPyDQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrledugdduudekucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
	cujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomhepkfguohcu
	ufgthhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecukfhppedule
	efrdegjedrudeihedrvdehudenucfrrghrrghmpehmrghilhhfrhhomhepihguohhstghh
	sehiughoshgthhdrohhrghenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:KzI_XdXlBs49ugvzZza8H6XeRA5IEtMCBss9b6945oWVd3T5MVMU0A>
	<xmx:KzI_XX8hOiBa7dseYn0xAEeadx715Tc158nwU3EwZ1kcMWtZ7TBvAg>
	<xmx:KzI_XU_exZEZWnorcwuYN5v4J8EqYZWAaIu7N20pH5QNn1QTOiqidQ>
	<xmx:KzI_Xa8Xn2gLFLpqsNVZMyIVqqUYTFZloJP4mf3O2qNSj8Kt4qy1oA>
Received: from localhost (unknown [193.47.165.251])
	by mail.messagingengine.com (Postfix) with ESMTPA id 8BA5D380074;
	Mon, 29 Jul 2019 13:51:38 -0400 (EDT)
Date: Mon, 29 Jul 2019 20:51:36 +0300
From: Ido Schimmel <idosch@idosch.org>
To: "Allan W. Nielsen" <allan.nielsen@microchip.com>
Message-ID: <20190729175136.GA28572@splinter>
References: <e6ad982f-4706-46f9-b8f0-1337b09de350@cumulusnetworks.com>
	<20190726120214.c26oj5vks7g5ntwu@soft-dev3.microsemi.net>
	<b755f613-e6d8-a2e6-16cd-6f13ec0a6ddc@cumulusnetworks.com>
	<20190729121409.wa47uelw5f6l4vs4@lx-anielsen.microsemi.net>
	<95315f9e-0d31-2d34-ba50-11e1bbc1465c@cumulusnetworks.com>
	<20190729131420.tqukz55tz26jkg73@lx-anielsen.microsemi.net>
	<3cc69103-d194-2eca-e7dd-e2fa6a730223@cumulusnetworks.com>
	<20190729135205.oiuthcyesal4b4ct@lx-anielsen.microsemi.net>
	<e4cd0db9-695a-82a7-7dc0-623ded66a4e5@cumulusnetworks.com>
	<20190729143508.tcyebbvleppa242d@lx-anielsen.microsemi.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190729143508.tcyebbvleppa242d@lx-anielsen.microsemi.net>
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

On Mon, Jul 29, 2019 at 04:35:09PM +0200, Allan W. Nielsen wrote:
> The 07/29/2019 17:21, Nikolay Aleksandrov wrote:
> > On 29/07/2019 16:52, Allan W. Nielsen wrote:
> > > The 07/29/2019 15:50, Nikolay Aleksandrov wrote:
> > >> On 29/07/2019 15:22, Nikolay Aleksandrov wrote:
> > >>> Hi Allan,
> > >>> On 29/07/2019 15:14, Allan W. Nielsen wrote:
> > >>>> First of all, as mentioned further down in this thread, I realized that our
> > >>>> implementation of the multicast floodmasks does not align with the existing SW
> > >>>> implementation. We will change this, such that all multicast packets goes to the
> > >>>> SW bridge.
> > >>>>
> > >>>> This changes things a bit, not that much.
> > >>>>
> > >>>> I actually think you summarized the issue we have (after changing to multicast
> > >>>> flood-masks) right here:
> > >>>>
> > >>>> The 07/26/2019 12:26, Nikolay Aleksandrov wrote:
> > >>>>>>> Actually you mentioned non-IP traffic, so the querier stuff is not a problem. This
> > >>>>>>> traffic will always be flooded by the bridge (and also a copy will be locally sent up).
> > >>>>>>> Thus only the flooding may need to be controlled.
> > >>>>
> > >>>> This seems to be exactly what we need.
> > >>>>
> > >>>> Assuming we have a SW bridge (br0) with 4 slave interfaces (eth0-3). We use this
> > >>>> on a network where we want to limit the flooding of frames with dmac
> > >>>> 01:21:6C:00:00:01 (which is non IP traffic) to eth0 and eth1.
> > >>>>
> > >>>> One way of doing this could potentially be to support the following command:
> > >>>>
> > >>>> bridge fdb add    01:21:6C:00:00:01 port eth0
> > >>>> bridge fdb append 01:21:6C:00:00:01 port eth1
> > >> And the fdbs become linked lists?
> > > Yes, it will most likely become a linked list
> > > 
> > >> So we'll increase the complexity for something that is already supported by
> > >> ACLs (e.g. tc) and also bridge per-port multicast flood flag ?
> > > I do not think it can be supported with the facilities we have today in tc.
> > > 
> > > We can do half of it (copy more fraems to the CPU) with tc, but we can not limit
> > > the floodmask of a frame with tc (say we want it to flood to 2 out of 4 slave
> > > ports).
> > Why not ? You attach an egress filter for the ports and allow that dmac on only
> > 2 of the ports.
> Because we want a solution which we eventually can offload in HW. And the HW
> facilities we have is doing ingress processing (we have no egress ACLs in this
> design), and if we try to offload an egress rule, with an ingress HW facility,
> then we will run into other issues.

Can you please clarify what you're trying to achieve? I just read the
thread again and my impression is that you're trying to locally receive
packets with a certain link layer multicast address. Nik suggested
SIOCADDMULTI and I suggested a tc filter to get the packet to the CPU.

If you now want to limit the ports to which this packet is flooded, then
you can use tc filters in *software*:

# tc qdisc add dev eth2 clsact
# tc filter add dev eth2 egress pref 1 flower skip_hw \
	dst_mac 01:21:6C:00:00:01 action drop

If you want to forward the packet in hardware and locally receive it,
you can chain several mirred action and then a trap action.

Both options avoid HW egress ACLs which your design does not support.
