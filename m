Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CEF6390C3B
	for <lists.bridge@lfdr.de>; Wed, 26 May 2021 00:30:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7BD3605FD;
	Tue, 25 May 2021 22:30:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ovh5AeoF4I4M; Tue, 25 May 2021 22:30:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7460B607D1;
	Tue, 25 May 2021 22:30:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 30C7CC001C;
	Tue, 25 May 2021 22:30:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8FA3DC0001
 for <bridge@lists.linux-foundation.org>; Tue, 25 May 2021 22:30:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7D900404D1
 for <bridge@lists.linux-foundation.org>; Tue, 25 May 2021 22:30:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WvkmZhIxKrRA for <bridge@lists.linux-foundation.org>;
 Tue, 25 May 2021 22:30:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B21C340185
 for <bridge@lists.linux-foundation.org>; Tue, 25 May 2021 22:30:11 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 3B1716142B;
 Tue, 25 May 2021 22:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621981811;
 bh=OP+2crvbUdflDGJs+DZrs5Hsm5swebZhY7rgc9PlKBE=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=uM2XgOdHN/pg7sxi8fpJGFYmT7i4nOO8OI0B+IOeEo/J3jta35kTJNQ+aYnQKhP33
 +bXK0zKDrUnUBQOf7ITanU3cLPn1VWEnzHCqeIg+hYjrqNQmTI9gH2bqtcb2GL55Nt
 NAZe58AvHWKBGjxvS6TMpBGAt8IrtZb5TCwCI2gfnQLO+ARQ9HkLTTqI+mBN3XsZ66
 Ls270nYNwvJypzlrjKxy9hzQcDUs+afHRw6X3iSlW6XzmRxv1pqsc5Z6BxjRmDb2zy
 Wb5xUWflAsmVWZQfqNJmJaNUYnBRo/q5+153pwcWghxH85vLxvVmL/CeZu/miDfMWY
 jyqwiJnbL0KzQ==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 305D360BE2;
 Tue, 25 May 2021 22:30:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162198181119.18500.5211226351903654537.git-patchwork-notify@kernel.org>
Date: Tue, 25 May 2021 22:30:11 +0000
References: <YKx3ptXPNbd3Bdiq@fedora>
In-Reply-To: <YKx3ptXPNbd3Bdiq@fedora>
To: Nigel Christian <nigel.l.christian@gmail.com>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 kernel-janitors@vger.kernel.org, nikolay@nvidia.com, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH] net: bridge: remove redundant assignment
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

On Mon, 24 May 2021 23:05:58 -0500 you wrote:
> The variable br is assigned a value that is not being read after
> exiting case IFLA_STATS_LINK_XSTATS_SLAVE. The assignment is
> redundant and can be removed.
> 
> Addresses-Coverity ("Unused value")
> Signed-off-by: Nigel Christian <nigel.l.christian@gmail.com>
> 
> [...]

Here is the summary with links:
  - net: bridge: remove redundant assignment
    https://git.kernel.org/netdev/net-next/c/ccc882f0d838

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


