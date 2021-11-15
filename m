Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B08FC450655
	for <lists.bridge@lfdr.de>; Mon, 15 Nov 2021 15:10:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C4042400AF;
	Mon, 15 Nov 2021 14:10:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1j9eguGE4nE4; Mon, 15 Nov 2021 14:10:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 08E6840129;
	Mon, 15 Nov 2021 14:10:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B0D15C0036;
	Mon, 15 Nov 2021 14:10:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 49673C0012
 for <bridge@lists.linux-foundation.org>; Mon, 15 Nov 2021 14:10:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 292064041F
 for <bridge@lists.linux-foundation.org>; Mon, 15 Nov 2021 14:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xjrMbH6mlqly for <bridge@lists.linux-foundation.org>;
 Mon, 15 Nov 2021 14:10:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 820D8402C8
 for <bridge@lists.linux-foundation.org>; Mon, 15 Nov 2021 14:10:09 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 0ADBB6322D;
 Mon, 15 Nov 2021 14:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1636985409;
 bh=SIs+iwklv8KfbyfcsPobIZu2x2aKdT3tn5NnV3mSFn4=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=QSuzW6b5ffmWFK6oCQMl0O0SLjurwpJFG8GxvAO2g9Sk2Rv0TQioBmBD4sRv/AJj5
 b7D/RfbIrxEFoyJ4AzQpizyhRhcqF3pPlu66g4S1WM7CfOk1Rx6G3ID6YcEu6KlDa2
 AKLbAn/ECR677rrfE50nCkryxroRvS3GuSbWGAD7w1Z/frl+CSK/aH3645kkkXfgYn
 4Uk0kNAGciQOT1oT0IEyqXZoSpsnNEHBiV+7ehahmPMgC7AHq4+IlkUU7nH7+n6CwI
 aRotyVbz0jH9xXuebLTnPYcsj5xucJ9QfUe8Ta3LV/wsRwqAd68yr7XkMcyrUjXVBv
 caQBg3M38LjFQ==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 011986095A;
 Mon, 15 Nov 2021 14:10:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <163698540899.13805.10527037556945584609.git-patchwork-notify@kernel.org>
Date: Mon, 15 Nov 2021 14:10:08 +0000
References: <00c39d09c8df7ad0673bf2043f6566d6ef08b789.1636916479.git.christophe.jaillet@wanadoo.fr>
In-Reply-To: <00c39d09c8df7ad0673bf2043f6566d6ef08b789.1636916479.git.christophe.jaillet@wanadoo.fr>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 nikolay@nvidia.com, roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH] net: bridge: Slightly optimize 'find_portno()'
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

On Sun, 14 Nov 2021 20:02:35 +0100 you wrote:
> The 'inuse' bitmap is local to this function. So we can use the
> non-atomic '__set_bit()' to save a few cycles.
> 
> While at it, also remove some useless {}.
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> 
> [...]

Here is the summary with links:
  - net: bridge: Slightly optimize 'find_portno()'
    https://git.kernel.org/netdev/net-next/c/cc0be1ad686f

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


