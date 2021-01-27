Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FE9304D78
	for <lists.bridge@lfdr.de>; Wed, 27 Jan 2021 01:40:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4140286F7A;
	Wed, 27 Jan 2021 00:40:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kAkEC7YqRTsD; Wed, 27 Jan 2021 00:40:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id B424886F89;
	Wed, 27 Jan 2021 00:40:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 999F3C013A;
	Wed, 27 Jan 2021 00:40:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 81F42C013A
 for <bridge@lists.linux-foundation.org>; Wed, 27 Jan 2021 00:40:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D606B20506
 for <bridge@lists.linux-foundation.org>; Wed, 27 Jan 2021 00:40:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vISTmVCnFctN for <bridge@lists.linux-foundation.org>;
 Wed, 27 Jan 2021 00:40:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id BAA05204A9
 for <bridge@lists.linux-foundation.org>; Wed, 27 Jan 2021 00:40:10 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 5688C64D88;
 Wed, 27 Jan 2021 00:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611708010;
 bh=jjFGgTzCmRCv7pShpF5J8MlAqaYhEy4lCIb8vLuNKa4=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=Kd8UQW5dM5G4XMT2ytIXC2jySY8GIlogq57BAp7B8dxXI9q+WGYE4NOIzDc3Mxwlw
 AsJAIjVri6sYK+4lXqy5SSDlGbE2XyW+lHuF9/2Epm5gXHOiP2BnswBEzEXy/H5XrP
 M8o7TzB7smhB79ImmGwmwO6jURI6dlmS/qP9Fd8yCYGGhBDoPBUSzmZVfBTH3VAjLc
 g8xRl/cGd0hapBmYKkYvrBcM+RpPWq29ZA3p1O/c1U4LNGUKHMt+u9N9xY3v/UmVwt
 2qEK80iBZNixBfhpogkkUg85H8KlpNia6WQdorbNLiE9CrAI8kxlOLIoyt0QakDWu3
 9sfsKeT/Vm9bQ==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 44453652E0;
 Wed, 27 Jan 2021 00:40:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161170801027.21618.16390055451192059692.git-patchwork-notify@kernel.org>
Date: Wed, 27 Jan 2021 00:40:10 +0000
References: <20210125082040.13022-1-razor@blackwall.org>
In-Reply-To: <20210125082040.13022-1-razor@blackwall.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Cc: lkp@intel.com, netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 nikolay@nvidia.com, roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next] net: bridge: multicast: fix
 br_multicast_eht_set_entry_lookup indentation
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

This patch was applied to netdev/net-next.git (refs/heads/master):

On Mon, 25 Jan 2021 10:20:40 +0200 you wrote:
> From: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> Fix the messed up indentation in br_multicast_eht_set_entry_lookup().
> 
> Fixes: baa74d39ca39 ("net: bridge: multicast: add EHT source set handling functions")
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> [...]

Here is the summary with links:
  - [net-next] net: bridge: multicast: fix br_multicast_eht_set_entry_lookup indentation
    https://git.kernel.org/netdev/net-next/c/3e841bacf72f

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


