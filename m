Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FDB41C2D5
	for <lists.bridge@lfdr.de>; Wed, 29 Sep 2021 12:40:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3D25B6061C;
	Wed, 29 Sep 2021 10:40:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hRNOMAsvaYJ8; Wed, 29 Sep 2021 10:40:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id A6B9B6070F;
	Wed, 29 Sep 2021 10:40:11 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4D1F2C0022;
	Wed, 29 Sep 2021 10:40:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0C778C000D
 for <bridge@lists.linux-foundation.org>; Wed, 29 Sep 2021 10:40:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E1F9C40794
 for <bridge@lists.linux-foundation.org>; Wed, 29 Sep 2021 10:40:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4xO8a1Xy_Lov for <bridge@lists.linux-foundation.org>;
 Wed, 29 Sep 2021 10:40:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 42BAE4063C
 for <bridge@lists.linux-foundation.org>; Wed, 29 Sep 2021 10:40:09 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id C62B36140F;
 Wed, 29 Sep 2021 10:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632912008;
 bh=E0TH8z77BBmELqaI2fYubgpmiK2lzgi9yaK0FARYJiM=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=EEc1j2eDdwlSF9KZ8oLELKzNZeIcXQ7eoPtoBIx1SiY3fEg1ZZHGaLicqLMeMoZ9M
 gUZbPgh987XcQRr7HKgfqDobOVmrAkdCsYrAGg8EjoyQq2hDlR0W+nrB4tX9ldeJJo
 tTvzk9wMhBY6miobUgsGJhfZxn04kL7EJw+dcBehb28eWtLbmO8yuFrZW1VDIoNw6a
 AwzUJGEzdwodvTaWubuUACaZkR52mFn6qYc8pSaDCZ0kcp3hTjgrZEwWqhLEXEANCH
 wYvbAxdr7sgCas9YUg5DvMelfR2m8Gfvb6ZmBO0Sl9OVKR7qDBXF+R3o92ywCyETE2
 VFNMv5lDzKyYw==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id BEC8860A59;
 Wed, 29 Sep 2021 10:40:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <163291200877.26498.13462885838977349261.git-patchwork-notify@kernel.org>
Date: Wed, 29 Sep 2021 10:40:08 +0000
References: <20210928201239.GA267176@embeddedor>
In-Reply-To: <20210928201239.GA267176@embeddedor>
To: Gustavo A. R. Silva <gustavoars@kernel.org>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, nikolay@nvidia.com, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net, linux-hardening@vger.kernel.org
Subject: Re: [Bridge] [PATCH][net-next] net: bridge: Use array_size() helper
 in copy_to_user()
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

On Tue, 28 Sep 2021 15:12:39 -0500 you wrote:
> Use array_size() helper instead of the open-coded version in
> copy_to_user(). These sorts of multiplication factors need
> to be wrapped in array_size().
> 
> Link: https://github.com/KSPP/linux/issues/160
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> 
> [...]

Here is the summary with links:
  - [net-next] net: bridge: Use array_size() helper in copy_to_user()
    https://git.kernel.org/netdev/net-next/c/865bfb2affa8

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


