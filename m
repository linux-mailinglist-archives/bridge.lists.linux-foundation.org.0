Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACD55D7ED
	for <lists.bridge@lfdr.de>; Tue,  2 Jul 2019 23:53:05 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 631731874;
	Tue,  2 Jul 2019 21:49:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D25AE1BB3
	for <bridge@lists.linux-foundation.org>;
	Tue,  2 Jul 2019 21:35:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 625AC70D
	for <bridge@lists.linux-foundation.org>;
	Tue,  2 Jul 2019 21:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124;
	h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=ZknEdyZ1T4tCO8tHmRX93ivSc3EBe24oWP4BwRhJ2Q0=;
	b=TYEN0hMZKShpozJvjr/W9Y1Srn
	iaaqJaCW3jncpzHmm3Y+Dogy7v6DYmTCxq2ob5wMgxdl8KTfwzyiDXnN/xjBCAMvqUVit5pkeskg4
	6vRmtmlc5vthbW7UyxuzRgsUekvcAeeRi2JwIK9aUBoeijunwkNHXb+mHSewJgugPPaA=; 
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
	(envelope-from <andrew@lunn.ch>)
	id 1hiQRA-0000XZ-Q8; Tue, 02 Jul 2019 23:35:40 +0200
Date: Tue, 2 Jul 2019 23:35:40 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20190702213540.GD28471@lunn.ch>
References: <20190702204705.GC28471@lunn.ch>
	<55f24bfb-4239-dda8-24f8-26b6b2fa9f9e@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55f24bfb-4239-dda8-24f8-26b6b2fa9f9e@cumulusnetworks.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: netdev <netdev@vger.kernel.org>, Roopa Prabhu <roopa@cumulusnetworks.com>,
	bridge@lists.linux-foundation.org
Subject: Re: [Bridge] Validation of forward_delay seems wrong...
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

> Hi Andrew,
> The man page is wrong, these have been in USER_HZ scaled clock_t format from the beginning.
> TBH a lot of the time/delay bridge config options are messed up like that.

Hi Nikola

Yes, that is a mess.

arch/alpha/include/asm/param.h:# define USER_HZ						1024
arch/ia64/include/asm/param.h:# define USER_HZ						HZ
include/asm-generic/param.h:# define USER_HZ						100

And ia64 does
# define HZ             CONFIG_HZ

So it seems pretty hard for user space to get this right in a generic
fashion.

	Andrew
