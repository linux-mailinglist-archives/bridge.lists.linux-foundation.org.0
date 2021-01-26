Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B8E30329E
	for <lists.bridge@lfdr.de>; Tue, 26 Jan 2021 04:20:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C22008671B;
	Tue, 26 Jan 2021 03:20:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OXO+G7iz+AdS; Tue, 26 Jan 2021 03:20:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id C6A1A86714;
	Tue, 26 Jan 2021 03:20:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B494EC013A;
	Tue, 26 Jan 2021 03:20:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3FCBCC013A
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 03:20:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 845A6203A3
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 03:20:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z+lwzkienLXG for <bridge@lists.linux-foundation.org>;
 Tue, 26 Jan 2021 03:20:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id CE62B20021
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 03:20:11 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id F332F22D04;
 Tue, 26 Jan 2021 03:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611631211;
 bh=Eq7bieJZtKDYCyu5A++q0xsq5LHk5AJNhRbeLAevgdk=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=e4XxxYD40rJleLQi42qn7kvmAkwBxaqGEjWstE4aOwuoWt+ZMhgq/VWipysdKO+YC
 TkVy6Db7ic/Nw4oaxK8mmiJVjQGVfdOqrpnO9u/N893yI20SVXd6nn62S6inwc0TES
 6SlpkoQB0D8J6YED5f1Zs2tcG/Ep5aW7B9BTclcdxD4SdhyR+DeQLKAXsjZCQ8MMcN
 TB9WFp8GbzAKl5G37tc0PpoLOMVb8ExlGMlpqU/bRevTPRt8GXuS8FT5izzyMqkqs+
 Cp4xBCpxP84y/Okvz8lSSx/Gxad9jxLoq95VsX8Jt6zxDwHL5Ukjudsy86ieVeakjd
 P2RE7IsfwFoYw==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id E7DCD61FC3;
 Tue, 26 Jan 2021 03:20:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161163121094.4087.10728008683417299022.git-patchwork-notify@kernel.org>
Date: Tue, 26 Jan 2021 03:20:10 +0000
References: <1611542381-91178-1-git-send-email-abaci-bugfix@linux.alibaba.com>
In-Reply-To: <1611542381-91178-1-git-send-email-abaci-bugfix@linux.alibaba.com>
To: Jiapeng Zhong <abaci-bugfix@linux.alibaba.com>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 ndesaulniers@google.com, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, nikolay@nvidia.com, roopa@nvidia.com,
 kuba@kernel.org, natechancellor@gmail.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH] bridge: Use PTR_ERR_OR_ZERO instead
	if(IS_ERR(...)) + PTR_ERR
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

On Mon, 25 Jan 2021 10:39:41 +0800 you wrote:
> coccicheck suggested using PTR_ERR_OR_ZERO() and looking at the code.
> 
> Fix the following coccicheck warnings:
> 
> ./net/bridge/br_multicast.c:1295:7-13: WARNING: PTR_ERR_OR_ZERO can be
> used.
> 
> [...]

Here is the summary with links:
  - bridge: Use PTR_ERR_OR_ZERO instead if(IS_ERR(...)) + PTR_ERR
    https://git.kernel.org/netdev/net-next/c/8d21c882aba8

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


