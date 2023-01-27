Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0C367DD19
	for <lists.bridge@lfdr.de>; Fri, 27 Jan 2023 06:26:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F5CA41C3C;
	Fri, 27 Jan 2023 05:26:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F5CA41C3C
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=bSt9/0Wo
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8oWUGwy1buEv; Fri, 27 Jan 2023 05:26:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 3750141BFF;
	Fri, 27 Jan 2023 05:26:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3750141BFF
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D6CEFC007C;
	Fri, 27 Jan 2023 05:26:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 29288C002D
 for <bridge@lists.linux-foundation.org>; Fri, 27 Jan 2023 05:26:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F07A68264A
 for <bridge@lists.linux-foundation.org>; Fri, 27 Jan 2023 05:26:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F07A68264A
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=bSt9/0Wo
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0PQ6KnAqp04T for <bridge@lists.linux-foundation.org>;
 Fri, 27 Jan 2023 05:26:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 213CA8261C
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 213CA8261C
 for <bridge@lists.linux-foundation.org>; Fri, 27 Jan 2023 05:26:19 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0C3F76192E;
 Fri, 27 Jan 2023 05:26:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF563C433EF;
 Fri, 27 Jan 2023 05:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1674797177;
 bh=7cCRW7ZE/dmS2yOLiVK26bi2n3cjM6ODKzo2Y3b/bSA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bSt9/0WoMT+bwdv0Z3z0dHWpEGJV2zcDmAVH2hUHsHcAnrFkLb1dfmXQtmCVU6K/b
 9SDa24o05vD4LofEN4xFK/lv7nQ8e5ld126hWJTajsqO/spGjZ4FDZZFn5XS7ThHtr
 mVh1Jeb9pJrOjDPw2rAKH2p1m5cEqI2hnKSdDFnq3zhhKwBHKhEgvEGAAQ3lAAUQLH
 7V5b4QGHkHOiDYx0zNnay+skEfdarYyA7uxvbGIl4VaubixRBTXjAowQFXdIMF0+2m
 sP8fn4t76BAvlDvh42LpURmfj0UginFuzKNUrvkezreHb1AWWnwOWoS0NsYjSPIHtB
 Dg7VrY0WvquwA==
Date: Fri, 27 Jan 2023 07:26:13 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <Y9NgdXk3NLtjG3Mj@unreal>
References: <2919eb55e2e9b92265a3ba600afc8137a901ae5f.1674760340.git.leon@kernel.org>
 <20230126223213.riq6i2gdztwuinwi@skbuf>
 <20230126143723.7593ce0b@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230126143723.7593ce0b@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Eric Dumazet <edumazet@google.com>,
 Roopa Prabhu <roopa@nvidia.com>, Paolo Abeni <pabeni@redhat.com>,
 Vladimir Oltean <olteanv@gmail.com>, "David S . Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next] netlink: provide an ability to set
 default extack message
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

On Thu, Jan 26, 2023 at 02:37:23PM -0800, Jakub Kicinski wrote:
> On Fri, 27 Jan 2023 00:32:13 +0200 Vladimir Oltean wrote:
> > On Thu, Jan 26, 2023 at 09:15:03PM +0200, Leon Romanovsky wrote:
> > > From: Leon Romanovsky <leonro@nvidia.com>
> > > 
> > > In netdev common pattern, xxtack pointer is forwarded to the drivers  
> >                             ~~~~~~
> >                             extack
> > 
> > > to be filled with error message. However, the caller can easily
> > > overwrite the filled message.
> > > 
> > > Instead of adding multiple "if (!extack->_msg)" checks before any
> > > NL_SET_ERR_MSG() call, which appears after call to the driver, let's
> > > add this check to common code.
> > > 
> > > [1] https://lore.kernel.org/all/Y9Irgrgf3uxOjwUm@unreal
> > > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > > ---  
> > 
> > I would somewhat prefer not doing this, and instead introducing a new
> > NL_SET_ERR_MSG_WEAK() of sorts.
> 
> That'd be my preference too, FWIW. It's only the offload cases which
> need this sort of fallback.

Of course not, almost any error unwind path which sets extack will need it.
See devlink as an example, but I'm confident that same issue exists in other
places too.

You are suggesting API which is very easy to do wrong.

So I prefer to stay with my proposal if it is possible.

Thanks
