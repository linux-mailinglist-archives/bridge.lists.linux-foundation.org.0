Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 46DB52C49FA
	for <lists.bridge@lfdr.de>; Wed, 25 Nov 2020 22:34:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F186786F6A;
	Wed, 25 Nov 2020 21:34:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LrHNGI9V_atY; Wed, 25 Nov 2020 21:34:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 757E086982;
	Wed, 25 Nov 2020 21:34:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 62CE8C1D9F;
	Wed, 25 Nov 2020 21:34:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9FC9FC0052
 for <bridge@lists.linux-foundation.org>; Wed, 25 Nov 2020 21:34:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9A6C6876F7
 for <bridge@lists.linux-foundation.org>; Wed, 25 Nov 2020 21:34:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GYWz08ibuFW8 for <bridge@lists.linux-foundation.org>;
 Wed, 25 Nov 2020 21:34:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 656B4876E5
 for <bridge@lists.linux-foundation.org>; Wed, 25 Nov 2020 21:34:46 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8FA06206E0;
 Wed, 25 Nov 2020 21:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606340086;
 bh=3lVrLTTsCdkal7E8HZY0NZKVZlVawWDZoX8smDNr+OU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=itRkywL78OBNGH52rhDRkPoFkhM3SRjKqcUj37jk1l+Ecdj83u88Pt4/wAxr0+wq6
 hu4Ps/mY1fYVxNvdzw8GiZgYjq4BngFEhtGk9scnsLM7qmAfjQ6Je3pNpYd8RrAaVz
 es3lIG3e/2qvKxpWP7vEm848nIIQvEGFFMCZM5LM=
Date: Wed, 25 Nov 2020 13:34:44 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Message-ID: <20201125133444.22f09660@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20201124082525.273820-1-horatiu.vultur@microchip.com>
References: <20201124082525.273820-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, nikolay@nvidia.com, roopa@nvidia.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2] bridge: mrp: Implement LC mode for
	MRP
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Tue, 24 Nov 2020 09:25:25 +0100 Horatiu Vultur wrote:
> Extend MRP to support LC mode(link check) for the interconnect port.
> This applies only to the interconnect ring.
> 
> Opposite to RC mode(ring check) the LC mode is using CFM frames to
> detect when the link goes up or down and based on that the userspace
> will need to react.
> One advantage of the LC mode over RC mode is that there will be fewer
> frames in the normal rings. Because RC mode generates InTest on all
> ports while LC mode sends CFM frame only on the interconnect port.
> 
> All 4 nodes part of the interconnect ring needs to have the same mode.
> And it is not possible to have running LC and RC mode at the same time
> on a node.
> 
> Whenever the MIM starts it needs to detect the status of the other 3
> nodes in the interconnect ring so it would send a frame called
> InLinkStatus, on which the clients needs to reply with their link
> status.
> 
> This patch adds InLinkStatus frame type and extends existing rules on
> how to forward this frame.
> 
> Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>

Applied, thanks!
