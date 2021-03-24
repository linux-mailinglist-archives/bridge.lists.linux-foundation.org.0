Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D5434822A
	for <lists.bridge@lfdr.de>; Wed, 24 Mar 2021 20:50:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1176C4015D;
	Wed, 24 Mar 2021 19:50:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k7sBOyE4Fjuc; Wed, 24 Mar 2021 19:50:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8FD71400D3;
	Wed, 24 Mar 2021 19:50:11 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4E486C0012;
	Wed, 24 Mar 2021 19:50:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1EEAEC000A
 for <bridge@lists.linux-foundation.org>; Wed, 24 Mar 2021 19:50:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DFBA9606EE
 for <bridge@lists.linux-foundation.org>; Wed, 24 Mar 2021 19:50:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0y0G2o2s8eaW for <bridge@lists.linux-foundation.org>;
 Wed, 24 Mar 2021 19:50:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D09BA6069D
 for <bridge@lists.linux-foundation.org>; Wed, 24 Mar 2021 19:50:08 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 3CD2261A21;
 Wed, 24 Mar 2021 19:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1616615408;
 bh=jWlbCW3ZvY9ep7+jRAH9k7cY3rs1dnmpwgoeOz00z3w=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=XvWZJy4NHh8YmWYB8PAjHxyx49VVepw96KB0QiUqOhGfsgQCMCMHass0aSITxUnDL
 zqONfHDu2Rh9xt9iydwQhFVQFV2qFsC/RsE5JCuhuJud+kSv43icaaSJ8WV36rNDBB
 u6w5SeXpFQp4y6w/sWCgjN4Amn6DM0dkE9NRG25pygwhWBIbKJ+rQZYP0KjhAUPYlp
 /tcnv+aGplz62JyEtRGuJDU53WmGky+Z5BbgHOcExhGOSdU4BzICJbSEzoAPfTf/zz
 l5OkSCqmE5EvKhJHjeDDzITvjfUFKYqW1jOkeGZ1mFnhR3yb6GfRtc3PWxATBmMJpt
 2iaqc+kkiH6Bw==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 2AC6260A6A;
 Wed, 24 Mar 2021 19:50:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161661540817.24400.14095983696664158789.git-patchwork-notify@kernel.org>
Date: Wed, 24 Mar 2021 19:50:08 +0000
References: <20210324150950.253698-1-colin.king@canonical.com>
In-Reply-To: <20210324150950.253698-1-colin.king@canonical.com>
To: Colin King <colin.king@canonical.com>
Cc: vladimir.oltean@nxp.com, bridge@lists.linux-foundation.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, nikolay@nvidia.com, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH][next] net: bridge: Fix missing return
 assignment from br_vlan_replay_one call
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

On Wed, 24 Mar 2021 15:09:50 +0000 you wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> The call to br_vlan_replay_one is returning an error return value but
> this is not being assigned to err and the following check on err is
> currently always false because err was initialized to zero. Fix this
> by assigning err.
> 
> [...]

Here is the summary with links:
  - [next] net: bridge: Fix missing return assignment from br_vlan_replay_one call
    https://git.kernel.org/netdev/net-next/c/ad248f7761eb

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


