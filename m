Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E37400019
	for <lists.bridge@lfdr.de>; Fri,  3 Sep 2021 15:00:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1528460653;
	Fri,  3 Sep 2021 13:00:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D3kIMeUxT9mB; Fri,  3 Sep 2021 13:00:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 83D3461578;
	Fri,  3 Sep 2021 13:00:09 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 37DAFC0022;
	Fri,  3 Sep 2021 13:00:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5DC76C000E
 for <bridge@lists.linux-foundation.org>; Fri,  3 Sep 2021 13:00:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3E93A401EE
 for <bridge@lists.linux-foundation.org>; Fri,  3 Sep 2021 13:00:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nQkqepzKdbcY for <bridge@lists.linux-foundation.org>;
 Fri,  3 Sep 2021 13:00:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6CBBA40123
 for <bridge@lists.linux-foundation.org>; Fri,  3 Sep 2021 13:00:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id C309E610C8;
 Fri,  3 Sep 2021 13:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630674005;
 bh=AGgbOdSzpaAML4LgVInM2rkoEUdrV9Ncc/pxqjPQmE4=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=a0NQcz6dswV9m90yGOVybZcuAwoS9jGhdMzDBENKcxCeMTTBED6B7ifnUgVb1U1G2
 10Th34CfDV47zgkf+cynhVZCKNZVJ0WcxL8uB0aHWe30npA6PadBXX0pAS0ZGYSxCP
 V47xK7uL/63vWOKfh+q1Hm7RIlRekuXyF+/75bn8VdzSkAEsJQe/xgYK83LYg7xVDN
 FP770EI2qxnHes7PD8tBekerM6B0a94Rh9z5QbGuXOlCOxjGhGTO4KFqecm7gMcAuU
 BRJoMMIG7ULXNGsArBvWrha/G4aUplySw68rD8eb2JTPLmcpaGGfOAtjf+l9V5XbV2
 ITB6lFh+3nCJw==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id B7988609D9;
 Fri,  3 Sep 2021 13:00:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <163067400574.8696.628852222789312507.git-patchwork-notify@kernel.org>
Date: Fri, 03 Sep 2021 13:00:05 +0000
References: <20210903093415.1544837-1-razor@blackwall.org>
In-Reply-To: <20210903093415.1544837-1-razor@blackwall.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 nikolay@nvidia.com, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net] net: bridge: mcast: fix vlan port router
	deadlock
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

This patch was applied to netdev/net.git (refs/heads/master):

On Fri,  3 Sep 2021 12:34:15 +0300 you wrote:
> From: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> Before vlan/port mcast router support was added
> br_multicast_set_port_router was used only with bh already disabled due
> to the bridge port lock, but that is no longer the case and when it is
> called to configure a vlan/port mcast router we can deadlock with the
> timer, so always disable bh to make sure it can be called from contexts
> with both enabled and disabled bh.
> 
> [...]

Here is the summary with links:
  - [net] net: bridge: mcast: fix vlan port router deadlock
    https://git.kernel.org/netdev/net/c/ddd0d5293810

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


