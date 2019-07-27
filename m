Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id F21E877626
	for <lists.bridge@lfdr.de>; Sat, 27 Jul 2019 05:02:45 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 74BCFBBC;
	Sat, 27 Jul 2019 03:02:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3269AAF0
	for <bridge@lists.linux-foundation.org>;
	Sat, 27 Jul 2019 03:02:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B0BC6709
	for <bridge@lists.linux-foundation.org>;
	Sat, 27 Jul 2019 03:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124;
	h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=tN/4dk4E58XistgDJ6zOTKtSRYqHTx/a1QOwwGKZMmk=;
	b=eUp19m/y/Qg1oORIbOZgd/lgOH
	dU1x4yAORlsvB70utYGcZLTwWnbrpNdkE7MYvHycUmKDhdJNay1C1zWz9TrPxN3INRKVF9XHSSupf
	aBX961lzv4uzmUhvzpmGFQZqpRpzlpaSNm7sKFvaywt+8zVZA/E+URoyEHPR5rlto02w=; 
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
	(envelope-from <andrew@lunn.ch>)
	id 1hrCyV-0007ol-5S; Sat, 27 Jul 2019 05:02:23 +0200
Date: Sat, 27 Jul 2019 05:02:23 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: "Allan W. Nielsen" <allan.nielsen@microchip.com>
Message-ID: <20190727030223.GA29731@lunn.ch>
References: <1564055044-27593-1-git-send-email-horatiu.vultur@microchip.com>
	<7e7a7015-6072-d884-b2ba-0a51177245ab@cumulusnetworks.com>
	<eef063fe-fd3a-7e02-89c2-e40728a17578@cumulusnetworks.com>
	<20190725142101.65tusauc6fzxb2yp@soft-dev3.microsemi.net>
	<b9ce433a-3ef7-fe15-642a-659c5715d992@cumulusnetworks.com>
	<e6ad982f-4706-46f9-b8f0-1337b09de350@cumulusnetworks.com>
	<20190726120214.c26oj5vks7g5ntwu@soft-dev3.microsemi.net>
	<20190726134613.GD18223@lunn.ch>
	<20190726195010.7x75rr74v7ph3m6m@lx-anielsen.microsemi.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190726195010.7x75rr74v7ph3m6m@lx-anielsen.microsemi.net>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
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

> As you properly guessed, this model is quite different from what we are used to.

Yes, it takes a while to get the idea that the hardware is just an
accelerator for what the Linux stack can already do. And if the switch
cannot do some feature, pass the frame to Linux so it can handle it.

You need to keep in mind that there could be other ports in the bridge
than switch ports, and those ports might be interested in the
multicast traffic. Hence the CPU needs to see the traffic. But IGMP
snooping can be used to optimise this. But you still need to be
careful, eg. IPv6 Neighbour discovery has often been broken on
mv88e6xxx because we have been too aggressive with filtering
multicast.

	Andrew
