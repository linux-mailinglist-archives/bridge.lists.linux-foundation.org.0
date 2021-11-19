Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FAE345707C
	for <lists.bridge@lfdr.de>; Fri, 19 Nov 2021 15:20:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0CB0A401E9;
	Fri, 19 Nov 2021 14:20:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 95-iXKw6tnvl; Fri, 19 Nov 2021 14:20:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 3BEFC40480;
	Fri, 19 Nov 2021 14:20:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EB834C0036;
	Fri, 19 Nov 2021 14:20:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 15523C0012
 for <bridge@lists.linux-foundation.org>; Fri, 19 Nov 2021 14:20:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0496A61C03
 for <bridge@lists.linux-foundation.org>; Fri, 19 Nov 2021 14:20:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KFaKNn-nvJPx for <bridge@lists.linux-foundation.org>;
 Fri, 19 Nov 2021 14:20:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DF1DD61C05
 for <bridge@lists.linux-foundation.org>; Fri, 19 Nov 2021 14:20:09 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 737A161AD0;
 Fri, 19 Nov 2021 14:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637331609;
 bh=pjpzP9H3wrBaZrYocYGO8qrHvgn5vKMBZS1Zg+A2dZs=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=lyKSqcQrOB3rmrtZvv132yaGMwMrTX9NC0PSogPTKazSaOmL0+r95F11tcQmRLfRH
 4d/jtdikxoOqGu11XMXjBy59uBpE2xSAfmFddByT17I8EnJHoHS11fB7LtZQl4QSh3
 9Nt6sHpN+v7kna/ak+Qzod2BDDrI7LkazQwp77sWbyp0haZNpoeqtAjhlBO2wDE6YV
 Vy7jdgFTCMHHc6eQeHUs5Fzx8FMEca+D1jqVatqtrbez7+VL+ElSPf3x+N6chpsvge
 eu0WRoO4zHykRQwIx5lK1M3v12wc/zFD/4XZ0T1V+f3+7wRDKUA4qlOsL2alCLUSgy
 pEgffhjkVer/w==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 62C206096E;
 Fri, 19 Nov 2021 14:20:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <163733160939.14640.16666157203692458688.git-patchwork-notify@kernel.org>
Date: Fri, 19 Nov 2021 14:20:09 +0000
References: <20211119020642.108397-1-bernard@vivo.com>
In-Reply-To: <20211119020642.108397-1-bernard@vivo.com>
To: Bernard Zhao <bernard@vivo.com>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, nikolay@nvidia.com, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH] net/bridge: replace simple_strtoul to kstrtol
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

This patch was applied to netdev/net-next.git (master)
by David S. Miller <davem@davemloft.net>:

On Thu, 18 Nov 2021 18:06:42 -0800 you wrote:
> simple_strtoull is obsolete, use kstrtol instead.
> 
> Signed-off-by: Bernard Zhao <bernard@vivo.com>
> ---
>  net/bridge/br_sysfs_br.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)

Here is the summary with links:
  - net/bridge: replace simple_strtoul to kstrtol
    https://git.kernel.org/netdev/net-next/c/520fbdf7fb19

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


