Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C479A3AD2AC
	for <lists.bridge@lfdr.de>; Fri, 18 Jun 2021 21:20:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 641FE404CD;
	Fri, 18 Jun 2021 19:20:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hC9_NwW5IOjV; Fri, 18 Jun 2021 19:20:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 8D0C1404A8;
	Fri, 18 Jun 2021 19:20:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 35B31C0022;
	Fri, 18 Jun 2021 19:20:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 12423C000B
 for <bridge@lists.linux-foundation.org>; Fri, 18 Jun 2021 19:20:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0DE1C40283
 for <bridge@lists.linux-foundation.org>; Fri, 18 Jun 2021 19:20:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r6d29tRAp7YZ for <bridge@lists.linux-foundation.org>;
 Fri, 18 Jun 2021 19:20:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2C1DF40114
 for <bridge@lists.linux-foundation.org>; Fri, 18 Jun 2021 19:20:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 87A30613F2;
 Fri, 18 Jun 2021 19:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624044006;
 bh=mYgWKU/yFlFwqULnKKlEddjTohRi2vp79RE6lcadDus=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=Ya1dUiVpey5BGTaPAgG72l5NSbk68K6gUlnuPIXj4nIU8PKKmPHpMDXzOINxdXnfx
 A/bDEC+eXvijvwpWL1eMpChIlzrHUN1fvQz8oq49AFc2yokrMSATP6siskPrQNL++K
 oZRw9cYtNFFj3zSsv2wo/qlZ+CIQKwDBUgnaVsz7h50bLds0uI25eidLsBo1V3rF0u
 6DU/Vm6HlW6IfxIgpA/XR+/OtWfGHHtziyON1A+CxhX05y1UG41Pzodoa+5IMTbUcE
 NJMsfnOTnk2sN70bXfiH/CfB7DejDeN+votONz8/cQtg0QkobwID/HAuKWC7vrN3Vd
 B03WSkZX8V5KQ==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 7D71B60CDF;
 Fri, 18 Jun 2021 19:20:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162404400650.12339.9396305686886729563.git-patchwork-notify@kernel.org>
Date: Fri, 18 Jun 2021 19:20:06 +0000
References: <20210618100155.101386-1-colin.king@canonical.com>
In-Reply-To: <20210618100155.101386-1-colin.king@canonical.com>
To: Colin King <colin.king@canonical.com>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH] net: bridge: remove redundant continue
	statement
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

On Fri, 18 Jun 2021 11:01:55 +0100 you wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> The continue statement at the end of a for-loop has no effect,
> invert the if expression and remove the continue.
> 
> Addresses-Coverity: ("Continue has no effect")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> 
> [...]

Here is the summary with links:
  - net: bridge: remove redundant continue statement
    https://git.kernel.org/netdev/net-next/c/040c12570e68

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


