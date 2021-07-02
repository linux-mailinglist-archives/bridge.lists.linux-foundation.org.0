Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6C73BA4BB
	for <lists.bridge@lfdr.de>; Fri,  2 Jul 2021 22:40:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 324B3406AA;
	Fri,  2 Jul 2021 20:40:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t31oj_tobcRp; Fri,  2 Jul 2021 20:40:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id A4A5D40675;
	Fri,  2 Jul 2021 20:40:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5DBADC001F;
	Fri,  2 Jul 2021 20:40:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 78B11C000E
 for <bridge@lists.linux-foundation.org>; Fri,  2 Jul 2021 20:40:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5B0CF84306
 for <bridge@lists.linux-foundation.org>; Fri,  2 Jul 2021 20:40:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bmtmy6-bT2GV for <bridge@lists.linux-foundation.org>;
 Fri,  2 Jul 2021 20:40:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 38F8783DFA
 for <bridge@lists.linux-foundation.org>; Fri,  2 Jul 2021 20:40:05 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id B9D8461411;
 Fri,  2 Jul 2021 20:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625258404;
 bh=OyQZy/I8dxoOQfJEI6phs2UUBiK8Qq73CK6aBW7MdtU=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=NnEDHsRQKVQkfreAcKtvD94Vj18WnvdUliS/0J73Iq5xK9DVo7T7BwcY8R4X2KWd5
 KrA24F4DZyjPDNMXAAsY+TNXr0DhJWeLRPLNTL6FykksDnTd70QR45iQdx4WQQ1w7y
 uj0yWT2bFd5WruIc3Ye+UkJ+MAD3peuNVntZU2aX2+w0JaULAi5G0IA59R0dVbkZ9W
 wov/ZEfwhG0xKRjFTQ2H33N7WvdkPHwrWOv4I0v5HndZN8Pl3TVWoS2o5400wMkfYI
 7bIBsN5hnc5HzJF9WJsY4zfOJ8jM72k1bxv4LbUWsMkCxVwv33+86UApYFxwIVu/nT
 dmyU+xAXMb6Zg==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id AD3B260A56;
 Fri,  2 Jul 2021 20:40:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162525840470.26489.12119463597617944366.git-patchwork-notify@kernel.org>
Date: Fri, 02 Jul 2021 20:40:04 +0000
References: <20210702120736.3746-1-w.bumiller@proxmox.com>
In-Reply-To: <20210702120736.3746-1-w.bumiller@proxmox.com>
To: Wolfgang Bumiller <w.bumiller@proxmox.com>
Cc: vyasevic@redhat.com, mst@redhat.com, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, t.lamprecht@proxmox.com, nikolay@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v3] net: bridge: sync fdb to new
	unicast-filtering ports
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

On Fri,  2 Jul 2021 14:07:36 +0200 you wrote:
> Since commit 2796d0c648c9 ("bridge: Automatically manage
> port promiscuous mode.")
> bridges with `vlan_filtering 1` and only 1 auto-port don't
> set IFF_PROMISC for unicast-filtering-capable ports.
> 
> Normally on port changes `br_manage_promisc` is called to
> update the promisc flags and unicast filters if necessary,
> but it cannot distinguish between *new* ports and ones
> losing their promisc flag, and new ports end up not
> receiving the MAC address list.
> 
> [...]

Here is the summary with links:
  - [v3] net: bridge: sync fdb to new unicast-filtering ports
    https://git.kernel.org/netdev/net/c/a019abd80220

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


