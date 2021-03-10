Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 40894334948
	for <lists.bridge@lfdr.de>; Wed, 10 Mar 2021 22:00:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6EFD060620;
	Wed, 10 Mar 2021 21:00:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xdqXT3Na1mQU; Wed, 10 Mar 2021 21:00:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id E69BB606B8;
	Wed, 10 Mar 2021 21:00:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8ADD9C0010;
	Wed, 10 Mar 2021 21:00:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4EC5AC0001
 for <bridge@lists.linux-foundation.org>; Wed, 10 Mar 2021 21:00:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2274B4EBDF
 for <bridge@lists.linux-foundation.org>; Wed, 10 Mar 2021 21:00:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HttORrMsoPaN for <bridge@lists.linux-foundation.org>;
 Wed, 10 Mar 2021 21:00:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EDAF04BA7C
 for <bridge@lists.linux-foundation.org>; Wed, 10 Mar 2021 21:00:13 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 0D4A764FF7;
 Wed, 10 Mar 2021 21:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615410013;
 bh=6cChmF4xo+CrWaB4TpPNDEZ+Y6NLPBdULri5dNShqtw=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=BBjdrMJ9kFsZQPX97oHs+6xhfuCKuOJQIUczXvUdywmCYJ0HDlibYp7MUI2ZZJAY5
 n4atZbHKbFHcWrsQrjnO9VYd5I1gcg0sQRt3D8RDLtRM8DCp5aaHOSH20zOsDON8mV
 cuQPOx/ngmA1saULqykE+fu3by9NEB8aEFV6yd3uKDMBRRFNi9Lz9bjJVuVcaGIBBr
 rVMRGdsVXaYnbOCaRuHK1qj29ZS3efKyj+5Co7gMXPsrelldmhCwIoyEf97WDXMkbA
 1h+XlQDorf89wZdUp8os6oOkWyLFjscKFvhNv5Z9AETJY57CJuY9otblJJf+LyrzSd
 wo/eosjpipqxA==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id EE5BD609D2;
 Wed, 10 Mar 2021 21:00:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161541001297.4631.3343209004781162292.git-patchwork-notify@kernel.org>
Date: Wed, 10 Mar 2021 21:00:12 +0000
References: <20210310054115.GA285785@embeddedor>
In-Reply-To: <20210310054115.GA285785@embeddedor>
To: Gustavo A. R. Silva <gustavoars@kernel.org>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, nikolay@nvidia.com, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net, linux-hardening@vger.kernel.org
Subject: Re: [Bridge] [PATCH RESEND][next] net: bridge: Fix fall-through
	warnings for Clang
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

On Tue, 9 Mar 2021 23:41:15 -0600 you wrote:
> In preparation to enable -Wimplicit-fallthrough for Clang, fix a warning
> by explicitly adding a break statement instead of letting the code fall
> through to the next case.
> 
> Link: https://github.com/KSPP/linux/issues/115
> Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> 
> [...]

Here is the summary with links:
  - [RESEND,next] net: bridge: Fix fall-through warnings for Clang
    https://git.kernel.org/netdev/net-next/c/ecd1c6a51fcc

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


