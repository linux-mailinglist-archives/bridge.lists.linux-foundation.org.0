Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D70693D1F4E
	for <lists.bridge@lfdr.de>; Thu, 22 Jul 2021 09:50:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F19F6606E5;
	Thu, 22 Jul 2021 07:50:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ay4By81fG51p; Thu, 22 Jul 2021 07:50:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 5FBAE606E7;
	Thu, 22 Jul 2021 07:50:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1595FC0022;
	Thu, 22 Jul 2021 07:50:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4A0C3C000E
 for <bridge@lists.linux-foundation.org>; Thu, 22 Jul 2021 07:50:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2E9B44027C
 for <bridge@lists.linux-foundation.org>; Thu, 22 Jul 2021 07:50:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Xbr-IzDmNaR for <bridge@lists.linux-foundation.org>;
 Thu, 22 Jul 2021 07:50:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4F11840273
 for <bridge@lists.linux-foundation.org>; Thu, 22 Jul 2021 07:50:05 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id B47FA6128C;
 Thu, 22 Jul 2021 07:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626940204;
 bh=0Pch2NHes7PJ3oRYQUDkZn5NQLnIjBv9eKYjA+g7WnA=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=B/d5HmGWitg1uYfaNvwPWOq7xu4bSEHQsUxE4F6ECLcNrqF+GHBTwdF8xQAWul0K8
 P8etUTfMqMPP3JtTiVAhwq/b4QSmtKmiIRDNWyGtyYJcowsboloE4lHzcpKL+mV0El
 H9P1XqgYdf+jpJ+rWW3XMj98nofjbdy2jywbkgg8cghAWxLmbEvYWWSQksAJa59UC+
 wYuH3hOYIDxy9BV6IvS6FkZR489NrnjeJgWgb+P9L+kpq/nEuQanSfBRkojBMZ9gQu
 TVS0mcAjZkC4KkhCSy15mNikOgwedGz4+gMR0Aeeu8Eiw+3+dTEKhoQNACQwN6u2Rt
 YJtBO9DEop+jg==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id ADE7860ACA;
 Thu, 22 Jul 2021 07:50:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162694020470.16794.15498523906664334643.git-patchwork-notify@kernel.org>
Date: Thu, 22 Jul 2021 07:50:04 +0000
References: <20210721230555.2207542-1-vladimir.oltean@nxp.com>
In-Reply-To: <20210721230555.2207542-1-vladimir.oltean@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us, ericwouds@gmail.com,
 dqfext@gmail.com, netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 vivien.didelot@gmail.com, idosch@idosch.org, nikolay@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net, tobias@waldekranz.com
Subject: Re: [Bridge] [PATCH net-next] net: switchdev: fix FDB entries
 towards foreign ports not getting propagated to us
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

On Thu, 22 Jul 2021 02:05:55 +0300 you wrote:
> The newly introduced switchdev_handle_fdb_{add,del}_to_device helpers
> solved a problem but introduced another one. They have a severe design
> bug: they do not propagate FDB events on foreign interfaces to us, i.e.
> this use case:
> 
>          br0
>         /   \
>        /     \
>       /       \
>      /         \
>    swp0       eno0
> (switchdev)  (foreign)
> 
> [...]

Here is the summary with links:
  - [net-next] net: switchdev: fix FDB entries towards foreign ports not getting propagated to us
    https://git.kernel.org/netdev/net-next/c/2b0a5688493a

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


