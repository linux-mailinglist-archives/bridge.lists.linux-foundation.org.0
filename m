Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA879D7F6
	for <lists.bridge@lfdr.de>; Mon, 26 Aug 2019 23:13:50 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1D8C6177B;
	Mon, 26 Aug 2019 21:13:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 01B55FEC
	for <bridge@lists.linux-foundation.org>;
	Mon, 26 Aug 2019 21:13:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9376488E
	for <bridge@lists.linux-foundation.org>;
	Mon, 26 Aug 2019 21:13:39 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 9EB4515008345;
	Mon, 26 Aug 2019 14:13:38 -0700 (PDT)
Date: Mon, 26 Aug 2019 14:13:38 -0700 (PDT)
Message-Id: <20190826.141338.1571164902049647689.davem@davemloft.net>
To: andrew@lunn.ch
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190826123811.GA13411@lunn.ch>
References: <1566807075-775-1-git-send-email-horatiu.vultur@microchip.com>
	<20190826123811.GA13411@lunn.ch>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
	(shards.monkeyblade.net [149.20.54.216]);
	Mon, 26 Aug 2019 14:13:39 -0700 (PDT)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: alexandre.belloni@bootlin.com, f.fainelli@gmail.com,
	nikolay@cumulusnetworks.com, netdev@vger.kernel.org,
	roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
	allan.nielsen@microchip.com, horatiu.vultur@microchip.com
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

From: Andrew Lunn <andrew@lunn.ch>
Date: Mon, 26 Aug 2019 14:38:11 +0200

> I'm still not convinced this is needed. The model is, the hardware is
> there to accelerate what Linux can do in software. Any peculiarities
> of the accelerator should be hidden in the driver.  If the accelerator
> can do its job without needing promisc mode, do that in the driver.

I completely agree.
