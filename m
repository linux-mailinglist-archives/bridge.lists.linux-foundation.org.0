Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD734CD40E
	for <lists.bridge@lfdr.de>; Fri,  4 Mar 2022 13:10:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 135C660B5B;
	Fri,  4 Mar 2022 12:10:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ujRUVLmVIc8Q; Fri,  4 Mar 2022 12:10:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 633F960F7D;
	Fri,  4 Mar 2022 12:10:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0EB6BC0070;
	Fri,  4 Mar 2022 12:10:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 028ACC000B
 for <bridge@lists.linux-foundation.org>; Fri,  4 Mar 2022 12:10:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CF4324019C
 for <bridge@lists.linux-foundation.org>; Fri,  4 Mar 2022 12:10:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8PwsCIYNe5aM for <bridge@lists.linux-foundation.org>;
 Fri,  4 Mar 2022 12:10:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B97434019A
 for <bridge@lists.linux-foundation.org>; Fri,  4 Mar 2022 12:10:14 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7CAC561DD2;
 Fri,  4 Mar 2022 12:10:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B265C340F0;
 Fri,  4 Mar 2022 12:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646395812;
 bh=Xieg0ITcJqTt/jIZLiexhbijH6baoMOJ0W7XtQGkkzM=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=qs7Adw1hN+QtMwm6shLuEst5UfUV5331LQwMSDpww+D4iEiW0ZHDRBG4khl5mwlDa
 0Tn4o1Zf6YT3OF5RQBoYo2qdYJbH744V2oAei+fgZbbNyE+bMUEfcsPMyXq2UT5+uq
 o2F+YzWtER3Dz/zkw1pqP/FJlW8pXWH0732imUCqFkoCLdIVZs/Z5MVJD2wnCCg8yx
 V9QLXQmgp3dxlc43g3J/KtcNg4xHW6441wjpR7hDrPmm8t/CNuOBI15FnLHvsU2hHW
 aEnjr3s0akp5MLgFg3DmG/ybA4itaYzoswOzjoaywsyareJs9+44/pYetEYuVYbyC7
 nW7v75Ht5o9SA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 84066EAC099; Fri,  4 Mar 2022 12:10:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <164639581253.6905.17402968335901101140.git-patchwork-notify@kernel.org>
Date: Fri, 04 Mar 2022 12:10:12 +0000
References: <20220303171505.1604775-1-bigeasy@linutronix.de>
In-Reply-To: <20220303171505.1604775-1-bigeasy@linutronix.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: andrew@lunn.ch, linux-doc@vger.kernel.org, razor@blackwall.org,
 kurt@linutronix.de, jcmvbkbc@gmail.com, steve.wahl@hpe.com,
 horatiu.vultur@microchip.com, f.fainelli@gmail.com, corbet@lwn.net,
 bridge@lists.linux-foundation.org, roopa@nvidia.com, kuba@kernel.org,
 vivien.didelot@gmail.com, linux-xtensa@linux-xtensa.org, mike.travis@hpe.com,
 l.stelmach@samsung.com, tglx@linutronix.de, chris@zankel.net,
 netdev@vger.kernel.org, robinmholt@gmail.com, UNGLinuxDriver@microchip.com,
 olteanv@gmail.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 0/9] net: Convert user to netif_rx().
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

Hello:

This series was applied to netdev/net-next.git (master)
by David S. Miller <davem@davemloft.net>:

On Thu,  3 Mar 2022 18:14:56 +0100 you wrote:
> This is the first batch of converting netif_rx_ni() caller to
> netif_rx(). The change making this possible is net-next and
> netif_rx_ni() is a wrapper around netif_rx(). This is a clean up in
> order to remove netif_rx_ni().
> 
> Cc: Andrew Lunn <andrew@lunn.ch>
> Cc: bridge@lists.linux-foundation.org
> Cc: Chris Zankel <chris@zankel.net>
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
> Cc: Jonathan Corbet <corbet@lwn.net>
> Cc: Kurt Kanzenbach <kurt@linutronix.de>
> Cc: linux-doc@vger.kernel.org
> Cc: linux-xtensa@linux-xtensa.org
> Cc: Łukasz Stelmach <l.stelmach@samsung.com>
> Cc: Max Filippov <jcmvbkbc@gmail.com>
> Cc: Mike Travis <mike.travis@hpe.com>
> Cc: Nikolay Aleksandrov <razor@blackwall.org>
> Cc: Robin Holt <robinmholt@gmail.com>
> Cc: Roopa Prabhu <roopa@nvidia.com>
> Cc: Steve Wahl <steve.wahl@hpe.com>
> Cc: UNGLinuxDriver@microchip.com
> Cc: Vivien Didelot <vivien.didelot@gmail.com>
> Cc: Vladimir Oltean <olteanv@gmail.com>
> Sebastian

Here is the summary with links:
  - [net-next,1/9] docs: networking: Use netif_rx().
    https://git.kernel.org/netdev/net-next/c/21f95a88eab4
  - [net-next,2/9] net: xtensa: Use netif_rx().
    https://git.kernel.org/netdev/net-next/c/aa4e5761bff5
  - [net-next,3/9] net: sgi-xp: Use netif_rx().
    https://git.kernel.org/netdev/net-next/c/4343b866aa94
  - [net-next,4/9] net: caif: Use netif_rx().
    https://git.kernel.org/netdev/net-next/c/3fb4430e73bf
  - [net-next,5/9] net: dsa: Use netif_rx().
    https://git.kernel.org/netdev/net-next/c/db00cc9da079
  - [net-next,6/9] net: ethernet: Use netif_rx().
    https://git.kernel.org/netdev/net-next/c/90f77c1c512f
  - [net-next,7/9] net: macvlan: Use netif_rx().
    https://git.kernel.org/netdev/net-next/c/566214f44697
  - [net-next,8/9] net: bridge: Use netif_rx().
    https://git.kernel.org/netdev/net-next/c/2e83bdd5d6cf
  - [net-next,9/9] net: dev: Use netif_rx().
    https://git.kernel.org/netdev/net-next/c/ad0a043fc26c

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


