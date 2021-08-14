Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE0C3EC2C9
	for <lists.bridge@lfdr.de>; Sat, 14 Aug 2021 15:10:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C314F80D9E;
	Sat, 14 Aug 2021 13:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rUazvGCNVpyD; Sat, 14 Aug 2021 13:10:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 3B71580D0E;
	Sat, 14 Aug 2021 13:10:09 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DFEBDC001D;
	Sat, 14 Aug 2021 13:10:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7A48AC000E
 for <bridge@lists.linux-foundation.org>; Sat, 14 Aug 2021 13:10:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5CA6840320
 for <bridge@lists.linux-foundation.org>; Sat, 14 Aug 2021 13:10:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xv_yU91nZwPz for <bridge@lists.linux-foundation.org>;
 Sat, 14 Aug 2021 13:10:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 460B2402E9
 for <bridge@lists.linux-foundation.org>; Sat, 14 Aug 2021 13:10:07 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id C134C60F51;
 Sat, 14 Aug 2021 13:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628946606;
 bh=RYtYlKZDLFp/vsyM5Zof7b3UUT0n1xGo7+T9ctoG6gE=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=KPzlRtYLpvoV1Rrb7iAV566H9VBLlsAwapVq4Hf/ArSD35+QWvB2fdwNYKvexz2J3
 4PZVz7WuvyPBubblGnI88M322cHiLI2mqSPHP/5wOvYDa6rUT8LHXCZwHEFb6CXMxu
 JBavG65KcsQ8y2kmu3RRY+AX3fVijziCWWMCKizcHTujLvk1YYErhBbfVUVnX8UBMw
 GqZ3+iOwH9NpAz+dou09KQeAYyszwH+3nLrymSvAAp0e6+1Cpl4ckZmooCbSPMmjq7
 fWj1ey6X4OnUGm/gOhhfxSHpw7WjuU25CnnAsv+E2omku4U1Qs4uegygijLdnTQHsm
 Gj0n+oqRXs9MA==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id B6DAB60A9F;
 Sat, 14 Aug 2021 13:10:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162894660674.3097.4333044818411572799.git-patchwork-notify@kernel.org>
Date: Sat, 14 Aug 2021 13:10:06 +0000
References: <20210813150002.673579-1-razor@blackwall.org>
In-Reply-To: <20210813150002.673579-1-razor@blackwall.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 nikolay@nvidia.com, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next 0/6] net: bridge: mcast: dump querier
	state
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

On Fri, 13 Aug 2021 17:59:56 +0300 you wrote:
> From: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> Hi,
> This set adds the ability to dump the current multicast querier state.
> This is extremely useful when debugging multicast issues, we've had
> many cases of unexpected queriers causing strange behaviour and mcast
> test failures. The first patch changes the querier struct to record
> a port device's ifindex instead of a pointer to the port itself so we
> can later retrieve it, I chose this way because it's much simpler
> and doesn't require us to do querier port ref counting, it is best
> effort anyway. Then patch 02 makes the querier address/port updates
> consistent via a combination of multicast_lock and seqcount, so readers
> can only use seqcount to get a consistent snapshot of address and port.
> Patch 03 is a minor cleanup in preparation for the dump support, it
> consolidates IPv4 and IPv6 querier selection paths as they share most of
> the logic (except address comparisons of course). Finally the last three
> patches add the new querier state dumping support, for the bridge's
> global multicast context we embed the BRIDGE_QUERIER_xxx attributes
> into IFLA_BR_MCAST_QUERIER_STATE and for the per-vlan global mcast
> contexts we embed them into BRIDGE_VLANDB_GOPTS_MCAST_QUERIER_STATE.
> 
> [...]

Here is the summary with links:
  - [net-next,1/6] net: bridge: mcast: record querier port device ifindex instead of pointer
    https://git.kernel.org/netdev/net-next/c/bb18ef8e7e18
  - [net-next,2/6] net: bridge: mcast: make sure querier port/address updates are consistent
    https://git.kernel.org/netdev/net-next/c/67b746f94ff3
  - [net-next,3/6] net: bridge: mcast: consolidate querier selection for ipv4 and ipv6
    https://git.kernel.org/netdev/net-next/c/c3fb3698f935
  - [net-next,4/6] net: bridge: mcast: dump ipv4 querier state
    https://git.kernel.org/netdev/net-next/c/c7fa1d9b1fb1
  - [net-next,5/6] net: bridge: mcast: dump ipv6 querier state
    https://git.kernel.org/netdev/net-next/c/85b410821174
  - [net-next,6/6] net: bridge: vlan: dump mcast ctx querier state
    https://git.kernel.org/netdev/net-next/c/ddc649d158c5

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


