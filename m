Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 010693F2DB7
	for <lists.bridge@lfdr.de>; Fri, 20 Aug 2021 16:10:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5985261405;
	Fri, 20 Aug 2021 14:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y1_p1pEML51P; Fri, 20 Aug 2021 14:10:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id C3810613FE;
	Fri, 20 Aug 2021 14:10:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 854A6C0022;
	Fri, 20 Aug 2021 14:10:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E6B57C000E
 for <bridge@lists.linux-foundation.org>; Fri, 20 Aug 2021 14:10:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D255880F30
 for <bridge@lists.linux-foundation.org>; Fri, 20 Aug 2021 14:10:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mabY2GCilBUV for <bridge@lists.linux-foundation.org>;
 Fri, 20 Aug 2021 14:10:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2852280F2D
 for <bridge@lists.linux-foundation.org>; Fri, 20 Aug 2021 14:10:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id BA123610FF;
 Fri, 20 Aug 2021 14:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629468605;
 bh=Q53Il28m8kGMtAWjXNQShZZM0+fN0olsOdvSlZ4MQCM=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=K0amjP+HFCKBwmd1G0haYawvfg3UNDkXXFeDlogHYDqvVTQ7JS+iLDxAnkRu+AG+J
 aZoR5gCkWQ84y2AdiHrLFVUlL0dGhSGJF0SvLcWrwjT7Gmn0/a9BcbUbStO6ZwDLLC
 pjWWuJWacTiphCGpNtabREtBW6dC3zqBXE27LyD5pHSgzQB4JLWl3quLrJoDJK9IWc
 2Hj7eVrS0KfgvUmi55QWWZnDR2FNrBPWCzsSc8xOhY/MhCrijdBUjfajXQeZR+cqBB
 Gq3BFdbT1b/pRyFiTKS9XR31NYy5Mk12C9SACvQjSIvyi0mBW+SSGdFXTG2q8TpIT5
 k1MRjDqq4Elwg==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id AC0BB60A89;
 Fri, 20 Aug 2021 14:10:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162946860569.9666.13581662949976824444.git-patchwork-notify@kernel.org>
Date: Fri, 20 Aug 2021 14:10:05 +0000
References: <20210820124255.1465672-1-razor@blackwall.org>
In-Reply-To: <20210820124255.1465672-1-razor@blackwall.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 nikolay@nvidia.com, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next 0/2] net: bridge: mcast: add support
 for port/vlan router control
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

This series was applied to netdev/net-next.git (refs/heads/master):

On Fri, 20 Aug 2021 15:42:53 +0300 you wrote:
> From: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> Hi,
> This small set adds control over port/vlan mcast router config.
> Initially I had added host vlan entry router control via vlan's global
> options but that is really unnecessary and we can use a single per-vlan
> option to control it both for port/vlan and host/vlan entries. Since
> it's all still in net-next we can convert BRIDGE_VLANDB_GOPTS_MCAST_ROUTER
> to BRIDGE_VLANDB_ENTRY_MCAST_ROUTER and use it for both. That makes much
> more sense and is easier for user-space. Patch 01 prepares the port
> router function to be used with port mcast context instead of port and
> then patch 02 converts the global vlan mcast router option to per-vlan
> mcast router option which directly gives us both host/vlan and port/vlan
> mcast router control without any additional changes.
> 
> [...]

Here is the summary with links:
  - [net-next,1/2] net: bridge: mcast: br_multicast_set_port_router takes multicast context as argument
    https://git.kernel.org/netdev/net-next/c/a53581d5559e
  - [net-next,2/2] net: bridge: vlan: convert mcast router global option to per-vlan entry
    https://git.kernel.org/netdev/net-next/c/2796d846d74a

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


