Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B596243FCD4
	for <lists.bridge@lfdr.de>; Fri, 29 Oct 2021 15:00:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9D75605F2;
	Fri, 29 Oct 2021 13:00:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zjt--v1RHbAP; Fri, 29 Oct 2021 13:00:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 8653A60607;
	Fri, 29 Oct 2021 13:00:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 48DBBC0021;
	Fri, 29 Oct 2021 13:00:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2EF7CC000E
 for <bridge@lists.linux-foundation.org>; Fri, 29 Oct 2021 13:00:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1E8B480FFE
 for <bridge@lists.linux-foundation.org>; Fri, 29 Oct 2021 13:00:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l2958CFa7Kk5 for <bridge@lists.linux-foundation.org>;
 Fri, 29 Oct 2021 13:00:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7023E80F61
 for <bridge@lists.linux-foundation.org>; Fri, 29 Oct 2021 13:00:07 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id F0B8660F23;
 Fri, 29 Oct 2021 13:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635512407;
 bh=EjgqJvYcxzTW4ZFSj8a1Nqzq1SYLWuXllXv8KvZGmr8=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=hRWdlxWFL/R3pDTGk9bPc7Q4DdE6CXpvwNgH6qe6iGgDHhvZ/NRzbtbwG151cPySS
 aTypMFFIRdw52+uPB2Er7BI4Ab/zOhFfTlsb9eyMjs27nYyiHHdDO5nXfbeO6eHCwx
 cZBX/CPgedYQqzTInZNhUdrR9o7F538PROmfvOIrKavCUghBKjAcmC/xKn9FQa8p76
 KH7taMk3aD5bE/XXlJ+khY7HyXRlFZM6cNy84lJH2qktVlcS+EOs26FabH9pjspdre
 ffZ9L3ILnuI/5AYn7TydPkEPqLJ3BZL16emUmaMqV+eCDnHVGXP0IPuCRC9otkNSYb
 iMfQfwlEuNIww==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id E2E9E60A1B;
 Fri, 29 Oct 2021 13:00:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <163551240692.5054.16014732669098206950.git-patchwork-notify@kernel.org>
Date: Fri, 29 Oct 2021 13:00:06 +0000
References: <20211029120527.2716884-1-razor@blackwall.org>
In-Reply-To: <20211029120527.2716884-1-razor@blackwall.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 nikolay@nvidia.com, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net v2] selftests: net: bridge: update IGMP/MLD
 membership interval value
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

This patch was applied to netdev/net.git (master)
by David S. Miller <davem@davemloft.net>:

On Fri, 29 Oct 2021 15:05:27 +0300 you wrote:
> From: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> When I fixed IGMPv3/MLDv2 to use the bridge's multicast_membership_interval
> value which is chosen by user-space instead of calculating it based on
> multicast_query_interval and multicast_query_response_interval I forgot
> to update the selftests relying on that behaviour. Now we have to
> manually set the expected GMI value to perform the tests correctly and get
> proper results (similar to IGMPv2 behaviour).
> 
> [...]

Here is the summary with links:
  - [net,v2] selftests: net: bridge: update IGMP/MLD membership interval value
    https://git.kernel.org/netdev/net/c/34d7ecb3d4f7

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


