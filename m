Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 91BEE3A36A8
	for <lists.bridge@lfdr.de>; Thu, 10 Jun 2021 23:50:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E88BC4064D;
	Thu, 10 Jun 2021 21:50:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tOlivcDjmcyI; Thu, 10 Jun 2021 21:50:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 1CC9D4065F;
	Thu, 10 Jun 2021 21:50:09 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D7E1AC0022;
	Thu, 10 Jun 2021 21:50:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 86140C000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Jun 2021 21:50:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7495B83D32
 for <bridge@lists.linux-foundation.org>; Thu, 10 Jun 2021 21:50:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EHxi9IKGYMje for <bridge@lists.linux-foundation.org>;
 Thu, 10 Jun 2021 21:50:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7197A83B2E
 for <bridge@lists.linux-foundation.org>; Thu, 10 Jun 2021 21:50:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id DD414611CD;
 Thu, 10 Jun 2021 21:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1623361805;
 bh=kCzItAmTLsiHdFwEFKm5Ppo3StfgizN4eZjE3m2lYGw=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=NIjniqn/uPeNV2AcWuLpn1J3CpyfquEgz4SwL+pH0IKErFS9iFjtbYZndi9Vr+iD9
 w/PdVkFVqLU0pMUd3wAMro1wo9M2rsh7d7ySf7sIxB8zLo3aZ8uhGseBGdoSQbi7ZW
 tPziyVbcATeZw9J3IbWjLZ4vtMbdj79zL3ZNlvWhDPpbG8haKNE4wdumypDowNuRZS
 Fp+cv/QdZJtflfVbk7XH6L/D7ffhl8A0CFxHDQ9DBVp1OJV+ZlPZbukx9POMjc5PNn
 sSf1Pm1zfXxbkChHXgtcv9gpG7qu4e7JQ1S9xFuGDCMUfbVKpHmbqk2N3ZbRuSnS5e
 zvljplWCsacFA==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id CA0B560CE4;
 Thu, 10 Jun 2021 21:50:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162336180582.29138.17882840843997204380.git-patchwork-notify@kernel.org>
Date: Thu, 10 Jun 2021 21:50:05 +0000
References: <20210610120411.128339-1-razor@blackwall.org>
In-Reply-To: <20210610120411.128339-1-razor@blackwall.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Cc: nikolay@nvidia.com, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net 0/2 v2] net: bridge: vlan tunnel egress
	path fixes
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

This series was applied to netdev/net.git (refs/heads/master):

On Thu, 10 Jun 2021 15:04:09 +0300 you wrote:
> From: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> Hi,
> These two fixes take care of tunnel_dst problems in the vlan tunnel egress
> path. Patch 01 fixes a null ptr deref due to the lockless use of tunnel_dst
> pointer without checking it first, and patch 02 fixes a use-after-free
> issue due to wrong dst refcounting (dst_clone() -> dst_hold_safe()).
> 
> [...]

Here is the summary with links:
  - [net,1/2,v2] net: bridge: fix vlan tunnel dst null pointer dereference
    https://git.kernel.org/netdev/net/c/58e2071742e3
  - [net,2/2,v2] net: bridge: fix vlan tunnel dst refcnt when egressing
    https://git.kernel.org/netdev/net/c/cfc579f9d89a

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


