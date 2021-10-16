Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC694302E2
	for <lists.bridge@lfdr.de>; Sat, 16 Oct 2021 16:10:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0A0260717;
	Sat, 16 Oct 2021 14:10:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qrfqQM_6Ebe2; Sat, 16 Oct 2021 14:10:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 5C34160731;
	Sat, 16 Oct 2021 14:10:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 15D02C001E;
	Sat, 16 Oct 2021 14:10:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C1788C000D
 for <bridge@lists.linux-foundation.org>; Sat, 16 Oct 2021 14:10:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A93FE60726
 for <bridge@lists.linux-foundation.org>; Sat, 16 Oct 2021 14:10:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cG5YcaczlCIG for <bridge@lists.linux-foundation.org>;
 Sat, 16 Oct 2021 14:10:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A2DCD60717
 for <bridge@lists.linux-foundation.org>; Sat, 16 Oct 2021 14:10:07 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 06902611C1;
 Sat, 16 Oct 2021 14:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634393407;
 bh=erH01x84fzWNhqUeM717403Vw8lEpcsZcHJsVpbR1p4=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=TBmBG7/9a71DWVSFrGlXp1g2B/gniJ5OJrlABBGHJV+5VKcgUKHkpp7Tt1UkB+tlw
 C/6f5Lq2u1PtxLY3mw/iw7RnsUB7tliqxUU7WcFDmQ4m5sxQf1ptBPj1gM9ZX3WAcs
 8OSeu6IJhfaxITpCGzYJxCEWiT9gkEU7kfooH1YGabb7jwCEkL2zAmxLkPN+uM+yVZ
 8jL/pmiuHTpEVTMz6jUNgbIc4vF1LwRKWq/4AmPeWqi9j6sfD6eQCw1nkVbtUx1Xcl
 2ziu/kawllRHzViMVM4tqMix0MTLLTaGZ8VMRchKNVJYy+eA1B4deAdvHIUcouGozD
 Kv+u+kxrCXI6g==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id EB47260A44;
 Sat, 16 Oct 2021 14:10:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <163439340695.2147.18399180717988406191.git-patchwork-notify@kernel.org>
Date: Sat, 16 Oct 2021 14:10:06 +0000
References: <20211015090546.19967-1-razor@blackwall.org>
In-Reply-To: <20211015090546.19967-1-razor@blackwall.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 nikolay@nvidia.com, liuhangbin@gmail.com, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net] net: bridge: mcast: use
 multicast_membership_interval for IGMPv3
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

This patch was applied to netdev/net.git (master)
by David S. Miller <davem@davemloft.net>:

On Fri, 15 Oct 2021 12:05:46 +0300 you wrote:
> From: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> When I added IGMPv3 support I decided to follow the RFC for computing
> the GMI dynamically:
> " 8.4. Group Membership Interval
> 
>    The Group Membership Interval is the amount of time that must pass
>    before a multicast router decides there are no more members of a
>    group or a particular source on a network.
> 
> [...]

Here is the summary with links:
  - [net] net: bridge: mcast: use multicast_membership_interval for IGMPv3
    https://git.kernel.org/netdev/net/c/fac3cb82a54a

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


