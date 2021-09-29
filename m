Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D6941BCE3
	for <lists.bridge@lfdr.de>; Wed, 29 Sep 2021 04:40:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3E66828F2;
	Wed, 29 Sep 2021 02:40:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oa0TKIYEbcKI; Wed, 29 Sep 2021 02:40:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 8AD86827DD;
	Wed, 29 Sep 2021 02:40:09 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4E64BC0022;
	Wed, 29 Sep 2021 02:40:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9B8CEC000D
 for <bridge@lists.linux-foundation.org>; Wed, 29 Sep 2021 02:40:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8350E60067
 for <bridge@lists.linux-foundation.org>; Wed, 29 Sep 2021 02:40:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vy6eR0egylkU for <bridge@lists.linux-foundation.org>;
 Wed, 29 Sep 2021 02:40:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 863A06000A
 for <bridge@lists.linux-foundation.org>; Wed, 29 Sep 2021 02:40:07 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 19F50613DB;
 Wed, 29 Sep 2021 02:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632883207;
 bh=Yt+Qqw2yGqDgP3vvoWuiOsVwZIpl/fcjT2xixYQjSj8=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=jI4X9C46aUTRF2aDz+tdCZwMwNa0IHZEIssMeGG24VgEYEAiyn8/jg+42bjzL66+Z
 /MyPpebKHYDREveM5Q7knkA5vr0dDRVALN6hnld1tWI4wd2hZAR1SniuSPp/pnIH5G
 puKrtHEkbh6joMPwiHKjyCdc9E+/UUscj+ALxJnCqAbpmHf17CXUuIHTjas3grpt7s
 NU89asyS4dCrrQ9fMgL4F8f4+8zJLnzibSbfEpon06+K0u6bRRRPOrlHx0RDlU8btZ
 QWc7dhdowVM+gR0ShCs8kGEAVoZV/NjFFnVBRwroDYCzIAPr3cP7d64XI3+UHcDQo1
 Z+cZ26fW3fbDQ==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 0FB77609D9;
 Wed, 29 Sep 2021 02:40:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <163288320705.8381.15834079982725881362.git-patchwork-notify@kernel.org>
Date: Wed, 29 Sep 2021 02:40:07 +0000
References: <20210928141049.593833-1-bigeasy@linutronix.de>
In-Reply-To: <20210928141049.593833-1-bigeasy@linutronix.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: efault@gmx.de, netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 nikolay@nvidia.com, roopa@nvidia.com, kuba@kernel.org, tglx@linutronix.de,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net] net: bridge: mcast: Associate the seqcount
 with its protecting lock.
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

On Tue, 28 Sep 2021 16:10:49 +0200 you wrote:
> From: Thomas Gleixner <tglx@linutronix.de>
> 
> The sequence count bridge_mcast_querier::seq is protected by
> net_bridge::multicast_lock but seqcount_init() does not associate the
> seqcount with the lock. This leads to a warning on PREEMPT_RT because
> preemption is still enabled.
> 
> [...]

Here is the summary with links:
  - [net] net: bridge: mcast: Associate the seqcount with its protecting lock.
    https://git.kernel.org/netdev/net/c/f936bb42aeb9

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


