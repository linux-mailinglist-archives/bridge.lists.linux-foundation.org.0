Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4EE3D1964
	for <lists.bridge@lfdr.de>; Wed, 21 Jul 2021 23:50:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5BF9C82C2E;
	Wed, 21 Jul 2021 21:50:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 41B5jwPR_cex; Wed, 21 Jul 2021 21:50:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id A0B8282C98;
	Wed, 21 Jul 2021 21:50:09 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 573EFC0022;
	Wed, 21 Jul 2021 21:50:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A7F8EC000E
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jul 2021 21:50:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8F515607AC
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jul 2021 21:50:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U56bG9UPtK_p for <bridge@lists.linux-foundation.org>;
 Wed, 21 Jul 2021 21:50:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E4A5B60633
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jul 2021 21:50:04 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 67D5E61208;
 Wed, 21 Jul 2021 21:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626904204;
 bh=8tkeDtxOoppgqWkTF5198Sw+Ha/XDXYFXWHjo7kC51c=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=EosbHorcyJdiBrK0nvFn+OI1sSzhF1iVW7RPE7hAMejgdzjOoqj90ZRCQfbGGF9wS
 YQAVy5VtSPhXap6TvkZTuW9dFVUke8aDaZnhJeiUsEotaJ+u6KNHLJbiTZ2Y9A04hc
 5lPBPiAH/Q4yFZ5vO6mrBE4eYVof4Q5Nx+O9VamWC3mOg1Y+KG0TfwcyJoJ1g3Lzl1
 Yipf/NZO0vDWVys3FU/IBMvviH98f+Th/ZH4mSmqsCkDeqZ6/UcciKZ6ywdR9vlIRR
 ep5GJIFC1B9ObHjdPbKa649T3ycX1DJc+bWHw9ikRXc2wepRa87egeQBErjuHDiKo+
 DUzKMRYqdIkBg==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 5B40760CD3;
 Wed, 21 Jul 2021 21:50:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162690420436.1414.1687254067791597948.git-patchwork-notify@kernel.org>
Date: Wed, 21 Jul 2021 21:50:04 +0000
References: <20210721140127.773194-1-razor@blackwall.org>
In-Reply-To: <20210721140127.773194-1-razor@blackwall.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 nikolay@nvidia.com, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next 0/2] net: bridge: multicast: add mdb
 and host context support
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

On Wed, 21 Jul 2021 17:01:25 +0300 you wrote:
> From: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> Hi,
> This is a minor context improvement which chooses the proper multicast
> context when adding user mdb entries or host-joined entries (pointing to
> the bridge device). Patch 01 adds a helper which chooses the proper
> context when user-space is adding an mdb entry, note that it requires
> the vlan to be configured on at least 1 device (port or bridge) so it
> would have a multicast context. Patch 02 changes br_multicast_host_join
> to take a bridge multicast context parameter which is passed down from
> the respective functions, currently it is used for the timer config
> value only. This set is in preparation for adding all multicast options
> for vlans.
> 
> [...]

Here is the summary with links:
  - [net-next,1/2] net: bridge: multicast: add mdb context support
    https://git.kernel.org/netdev/net-next/c/6567cb438a51
  - [net-next,2/2] net: bridge: multicast: add context support for host-joined groups
    https://git.kernel.org/netdev/net-next/c/58d913a32664

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


