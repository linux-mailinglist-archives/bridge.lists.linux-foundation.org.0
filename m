Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D6F3D135C
	for <lists.bridge@lfdr.de>; Wed, 21 Jul 2021 18:10:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F3F976074A;
	Wed, 21 Jul 2021 16:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QJrSQwz0BUQp; Wed, 21 Jul 2021 16:10:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 6BF9060591;
	Wed, 21 Jul 2021 16:10:09 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1F117C0022;
	Wed, 21 Jul 2021 16:10:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A321FC000E
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jul 2021 16:10:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 837A94024E
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jul 2021 16:10:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Z1hQY2Foexe for <bridge@lists.linux-foundation.org>;
 Wed, 21 Jul 2021 16:10:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A6CD940249
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jul 2021 16:10:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 0CB0E61263;
 Wed, 21 Jul 2021 16:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626883806;
 bh=nme7k6Y/lI/ioM7Dba28xhZiwt+JQ/xW9HSTqvAhPQ8=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=FFo0YnXreNwi36yY05r3bXFaDD7p9IPFuEfFrE99GeNolLFawwDj/VjIb7EnqTAzU
 IJucKEhLWtUHUmRD2lEPPDa9mc+g4QLyaEJAq3IHjEmhRf9fctV86kpUaAkbfuZNDo
 KX7wOtoPtZJ6TLtdI+fx9FjaSRdePpR6n6sRUl+ZVlf8O2uY5oyrQfK4g3vJsfea2y
 AzswQfYNyn5sXz5IuqKI3iEbtkV27pbVQXRsSF+ZN0QXJLnztNubUYQLWA4I6LPUS5
 A62CAkCoKsGY74oSzJDmjaycuutyYTeT+6Yn4a8zNqfGfivJjC6cJMiUApEbbzfyHN
 6uJojrCmu2zBg==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 0287960CE0;
 Wed, 21 Jul 2021 16:10:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162688380600.30339.881378325987098397.git-patchwork-notify@kernel.org>
Date: Wed, 21 Jul 2021 16:10:06 +0000
References: <20210721100624.704110-1-razor@blackwall.org>
In-Reply-To: <20210721100624.704110-1-razor@blackwall.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 nikolay@nvidia.com, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next] net: bridge: multicast: fix igmp/mld
 port context null pointer dereferences
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

On Wed, 21 Jul 2021 13:06:24 +0300 you wrote:
> From: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> With the recent change to use bridge/port multicast context pointers
> instead of bridge/port I missed to convert two locations which pass the
> port pointer as-is, but with the new model we need to verify the port
> context is non-NULL first and retrieve the port from it. The first
> location is when doing querier selection when a query is received, the
> second location is when leaving a group. The port context will be null
> if the packets originated from the bridge device (i.e. from the host).
> The fix is simple just check if the port context exists and retrieve
> the port pointer from it.
> 
> [...]

Here is the summary with links:
  - [net-next] net: bridge: multicast: fix igmp/mld port context null pointer dereferences
    https://git.kernel.org/netdev/net-next/c/54cb43199e14

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


