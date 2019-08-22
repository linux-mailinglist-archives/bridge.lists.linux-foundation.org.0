Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA419A0D1
	for <lists.bridge@lfdr.de>; Thu, 22 Aug 2019 22:08:40 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7A7FEE17;
	Thu, 22 Aug 2019 20:08:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BFA52DD6
	for <bridge@lists.linux-foundation.org>;
	Thu, 22 Aug 2019 20:08:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C725D8A2
	for <bridge@lists.linux-foundation.org>;
	Thu, 22 Aug 2019 20:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124;
	h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=Ouh1hyA4cnUUtU66BbaszA14lgEbgI+hW7TPxZskfjA=;
	b=2YBLfaiSJjF9YvxwEJ63tFNfLf
	NgaAM1cajy0G+MKXV0ek0VyWAA2A2jdYFKagzeAznZj+f1uhGOamR9xPHUmjNRKRI4NEn774Y6oog
	pQlCVkQA/uY9HkHC7rtBXUbBi13ZDESxVdM4S/9OOKhAMjzpFLWZeDaaKqoJ3UxH5oH4=; 
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
	(envelope-from <andrew@lunn.ch>)
	id 1i0tNZ-0007Bu-Ol; Thu, 22 Aug 2019 22:08:17 +0200
Date: Thu, 22 Aug 2019 22:08:17 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Message-ID: <20190822200817.GD21295@lunn.ch>
References: <1566500850-6247-1-git-send-email-horatiu.vultur@microchip.com>
	<1566500850-6247-2-git-send-email-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1566500850-6247-2-git-send-email-horatiu.vultur@microchip.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: alexandre.belloni@bootlin.com, nikolay@cumulusnetworks.com,
	netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
	UNGLinuxDriver@microchip.com, allan.nielsen@microchip.com,
	davem@davemloft.net
Subject: Re: [Bridge] [PATCH 1/3] net: Add HW_BRIDGE offload feature
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

> +/* Determin if the SW bridge can be offloaded to HW. Return true if all
> + * the interfaces of the bridge have the feature NETIF_F_HW_SWITCHDEV set
> + * and have the same netdev_ops.
> + */

Hi Horatiu

Why do you need these restrictions. The HW bridge should be able to
learn that a destination MAC address can be reached via the SW
bridge. The software bridge can then forward it out the correct
interface.

Or are you saying your hardware cannot learn from frames which come
from the CPU?

	Andrew
