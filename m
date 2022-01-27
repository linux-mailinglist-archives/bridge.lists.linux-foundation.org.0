Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BAAF49E875
	for <lists.bridge@lfdr.de>; Thu, 27 Jan 2022 18:10:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9EC5E400CC;
	Thu, 27 Jan 2022 17:10:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SVXZ8MfPUuAX; Thu, 27 Jan 2022 17:10:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id CF363401D6;
	Thu, 27 Jan 2022 17:10:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7D665C0031;
	Thu, 27 Jan 2022 17:10:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7E68EC000B
 for <bridge@lists.linux-foundation.org>; Thu, 27 Jan 2022 17:10:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F68683ED5
 for <bridge@lists.linux-foundation.org>; Thu, 27 Jan 2022 17:10:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SGOyZk5ccNc1 for <bridge@lists.linux-foundation.org>;
 Thu, 27 Jan 2022 17:10:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 13ACC83EB4
 for <bridge@lists.linux-foundation.org>; Thu, 27 Jan 2022 17:10:15 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 32A64CE22EE;
 Thu, 27 Jan 2022 17:10:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0983C340EC;
 Thu, 27 Jan 2022 17:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643303409;
 bh=pQ9TQhH/zfvT4t/ngXp1Qvqr0CwHUKwkOyGw+KL0Poc=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=AeICuIR1X4/4Yb/dvF4124tcCZYPjJ5Gfnbwedn/qxktOGf3pN19E55pKKykUwXl6
 FbB0aVKp7Bt0LUuMMx8CheBnvd7pXHKjcX/SW5e4SCsgaZFayjNKWvq8AeWnIgWyL8
 Kp4yENYSkM3tLgEhZihA/OS61Zhc0RRbXeh4/2cTju83Qb4tZi6j3XLgh9znj0ww1D
 HHSspTTNt/0n3WDlV/nGtSBVi6/EmA1FtTXYIexW9uStXW8AmaCWa3Cp/+yRJxPbiR
 H7D6L2/QOPax/pjby1Oni3K1mNpRdI1BJOcfVz5y+eLk7AmOstxE2rMKMPSxqyhnhL
 ILzEt0OG1rFEg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 C9D31E5D084; Thu, 27 Jan 2022 17:10:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <164330340982.19448.11235674242390336417.git-patchwork-notify@kernel.org>
Date: Thu, 27 Jan 2022 17:10:09 +0000
References: <20220127074953.12632-1-tim.yi@pica8.com>
In-Reply-To: <20220127074953.12632-1-tim.yi@pica8.com>
To: Tim Yi <tim.yi@pica8.com>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 nikolay@nvidia.com, roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH] net: bridge: vlan: fix memory leak in
	__allowed_ingress
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
by Jakub Kicinski <kuba@kernel.org>:

On Thu, 27 Jan 2022 15:49:53 +0800 you wrote:
> When using per-vlan state, if vlan snooping and stats are disabled,
> untagged or priority-tagged ingress frame will go to check pvid state.
> If the port state is forwarding and the pvid state is not
> learning/forwarding, untagged or priority-tagged frame will be dropped
> but skb memory is not freed.
> Should free skb when __allowed_ingress returns false.
> 
> [...]

Here is the summary with links:
  - net: bridge: vlan: fix memory leak in __allowed_ingress
    https://git.kernel.org/netdev/net/c/fd20d9738395

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


