Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 226CB39C2F2
	for <lists.bridge@lfdr.de>; Fri,  4 Jun 2021 23:50:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58017415D7;
	Fri,  4 Jun 2021 21:50:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v1temUZ9lBj2; Fri,  4 Jun 2021 21:50:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD0504062E;
	Fri,  4 Jun 2021 21:50:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 76256C0024;
	Fri,  4 Jun 2021 21:50:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3BC2EC0001
 for <bridge@lists.linux-foundation.org>; Fri,  4 Jun 2021 21:50:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 22484834F2
 for <bridge@lists.linux-foundation.org>; Fri,  4 Jun 2021 21:50:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mTyPaxPB4AUy for <bridge@lists.linux-foundation.org>;
 Fri,  4 Jun 2021 21:50:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 32CB7834C7
 for <bridge@lists.linux-foundation.org>; Fri,  4 Jun 2021 21:50:05 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id C554161415;
 Fri,  4 Jun 2021 21:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622843404;
 bh=wEGISPwpp3pYI5B6deH40LEMJDeq72dbo/qap1ROPiU=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=idgU3/OsrjNCFhH8yC3wNfS8RrA2ooORTrOWmyGjPpJJLV6jvZXgZIuM4uKIQpcZL
 5YyBhwz9e/AzpqRmTv1kwxIa6MgiNh+n0YG7gmPGIXiGwesUYhCshdZLMnvGRFde7Z
 tLOwUqW0aCAuqMf8+aNW9smHeLoB6BjssZmkePheM6sdMB+IvaoWNpUu7VKOjs7lTB
 H+wGHOYE7dBLehTPFrrxdwLmFsVXq58/wHbSulNz4LmIUwMe4F6VxmCZfnsH1aAsjC
 sQAZfQ/5YVJ6NaN8TYmnC5XnB3yVs6xXXndVI9O8gMh6Iq2Z91bZ5uYB2/D+LSctQ9
 BPWidwJSR/9NQ==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id BB5E160CD2;
 Fri,  4 Jun 2021 21:50:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162284340476.5449.16639869522186820582.git-patchwork-notify@kernel.org>
Date: Fri, 04 Jun 2021 21:50:04 +0000
References: <20210604103747.3824212-1-horatiu.vultur@microchip.com>
In-Reply-To: <20210604103747.3824212-1-horatiu.vultur@microchip.com>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com, nikolay@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next] net: bridge: mrp: Update ring
	transitions.
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

On Fri, 4 Jun 2021 12:37:47 +0200 you wrote:
> According to the standard IEC 62439-2, the number of transitions needs
> to be counted for each transition 'between' ring state open and ring
> state closed and not from open state to closed state.
> 
> Therefore fix this for both ring and interconnect ring.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> 
> [...]

Here is the summary with links:
  - [net-next] net: bridge: mrp: Update ring transitions.
    https://git.kernel.org/netdev/net-next/c/fcb34635854a

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


