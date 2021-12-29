Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E97E348173C
	for <lists.bridge@lfdr.de>; Wed, 29 Dec 2021 23:20:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2302760B51;
	Wed, 29 Dec 2021 22:20:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CGfxT7ah9csY; Wed, 29 Dec 2021 22:20:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 84C7260B54;
	Wed, 29 Dec 2021 22:20:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 53123C0070;
	Wed, 29 Dec 2021 22:20:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C6615C0012
 for <bridge@lists.linux-foundation.org>; Wed, 29 Dec 2021 22:20:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AB7E5403FD
 for <bridge@lists.linux-foundation.org>; Wed, 29 Dec 2021 22:20:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iB7QK-PKBnjW for <bridge@lists.linux-foundation.org>;
 Wed, 29 Dec 2021 22:20:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7E5E1403F9
 for <bridge@lists.linux-foundation.org>; Wed, 29 Dec 2021 22:20:14 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id F1C22B81A42;
 Wed, 29 Dec 2021 22:20:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 249C9C36AE9;
 Wed, 29 Dec 2021 22:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640816410;
 bh=hjQAZLb14OJobDPleSQaofwFXchb/C4eBEa+U9p+ttc=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=Oik0sPGUriGqzI8p2ImomrRWct0hF9V/m4lZO7KxzZ8xNX2kRj59hoPVoOhQE+lZH
 O6EEJwO2vCBOtk4wd4gVN7XgrHx3vevoIhV9jVkWMsnPLUSl2wTDFi/z+CKV1X+qbY
 H27Gv8nY2kHXvzqK1ikzUSGeRtIxLg152g1Bbwvt0LU3242MLOherO96NefOwzBCDO
 miuUQz3ODjkAT2wTX86GGL/d6Uz+D6IyZj0psqcwlw/2rI5M7LES4Pi9IUN90nKqZc
 ZJ5IKxBvta9Gg+JwVD/dfllsT6eR9xdCd8IWDvA/d8L6vHrLMCBx1dLkkjC0Dft1kN
 +axquupsYItnQ==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 08B7AC395E5; Wed, 29 Dec 2021 22:20:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <164081641003.5072.12853974016606114194.git-patchwork-notify@kernel.org>
Date: Wed, 29 Dec 2021 22:20:10 +0000
References: <20211227172116.320768-1-nikolay@nvidia.com>
In-Reply-To: <20211227172116.320768-1-nikolay@nvidia.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Cc: herbert@gondor.apana.org.au, eric.dumazet@gmail.com, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, stable@vger.kernel.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net 0/2] net: bridge: mcast: add and enforce
 query interval minimum
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

This series was applied to netdev/net.git (master)
by Jakub Kicinski <kuba@kernel.org>:

On Mon, 27 Dec 2021 19:21:14 +0200 you wrote:
> Hi,
> This set adds and enforces 1 second minimum value for bridge multicast
> query and startup query intervals in order to avoid rearming the timers
> too often which could lock and crash the host. I doubt anyone is using
> such low values or anything lower than 1 second, so it seems like a good
> minimum. In order to be compatible if the value is lower then it is
> overwritten and a log message is emitted, since we can't return an error
> at this point.
> 
> [...]

Here is the summary with links:
  - [net,1/2] net: bridge: mcast: add and enforce query interval minimum
    https://git.kernel.org/netdev/net/c/99b40610956a
  - [net,2/2] net: bridge: mcast: add and enforce startup query interval minimum
    https://git.kernel.org/netdev/net/c/f83a112bd91a

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


