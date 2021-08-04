Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 651533E0058
	for <lists.bridge@lfdr.de>; Wed,  4 Aug 2021 13:40:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F028660758;
	Wed,  4 Aug 2021 11:40:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2F6Tti3sI5yp; Wed,  4 Aug 2021 11:40:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 8B52D60732;
	Wed,  4 Aug 2021 11:40:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 358BAC001F;
	Wed,  4 Aug 2021 11:40:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0F82FC001C
 for <bridge@lists.linux-foundation.org>; Wed,  4 Aug 2021 11:40:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E0869405E7
 for <bridge@lists.linux-foundation.org>; Wed,  4 Aug 2021 11:40:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BIGK7QKKSaTD for <bridge@lists.linux-foundation.org>;
 Wed,  4 Aug 2021 11:40:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B61D3405D9
 for <bridge@lists.linux-foundation.org>; Wed,  4 Aug 2021 11:40:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 038F560F6F;
 Wed,  4 Aug 2021 11:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628077206;
 bh=XJaPec5/QHyjwGWIlKEDZ0VG4U3aPIU3P+nAsdhBwPk=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=HP/JX1SCq3YkDqETXyF7AZCtdvPukk6NVtfUIYjW6isxzvFKIl+uAQKxJ03v1OAt/
 yb8oamdizt0Sq2R8NVK2GBxwstPxAqdwlQYPa03TfWszzU226F+UIiEy7v7syI7k3v
 SAomqwWNeS2hJ+xE2N4LVyEppwa/n8pwPnOR6lP8dUTJy6RW0ZDl+2eiEPO2VriKgj
 ALJlqAhAwoEyN0bXynBlPbxM/zZsvwJ8jFY0+JlWTv59HEoiv8tUccYcAqlgLqxCFY
 DdKOIEiic1CXEHUb8Gw0+kVXhYr/ag0+X2Ryhgo2alghiRynbUtqBJ3LcKHqQVUmUg
 oDkGUKzUaanEQ==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id E805760A6A;
 Wed,  4 Aug 2021 11:40:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162807720594.23179.2687228457044533864.git-patchwork-notify@kernel.org>
Date: Wed, 04 Aug 2021 11:40:05 +0000
References: <20210803203409.1274807-1-vladimir.oltean@nxp.com>
In-Reply-To: <20210803203409.1274807-1-vladimir.oltean@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us, arnd@kernel.org,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 vivien.didelot@gmail.com, idosch@idosch.org, grygorii.strashko@ti.com,
 nikolay@nvidia.com, roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 0/2] Convert
 switchdev_bridge_port_{, un}offload to notifiers
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

This series was applied to netdev/net-next.git (refs/heads/master):

On Tue,  3 Aug 2021 23:34:07 +0300 you wrote:
> The introduction of the explicit switchdev bridge port offloading API
> has introduced dependency regressions between switchdev drivers and the
> bridge, with some drivers where switchdev support was optional before
> being now compiled as a module when the bridge is a module, or worse.
> 
> This patch makes the switchdev bridge port offload/unoffload events
> visible on the blocking notifier call chain, so that the bridge can
> indirectly do something when those events happen, without the driver
> explicitly calling a symbol exported by the bridge driver.
> 
> [...]

Here is the summary with links:
  - [v2,net-next,1/2] net: make switchdev_bridge_port_{,unoffload} loosely coupled with the bridge
    https://git.kernel.org/netdev/net-next/c/957e2235e526
  - [v2,net-next,2/2] Revert "net: build all switchdev drivers as modules when the bridge is a module"
    https://git.kernel.org/netdev/net-next/c/a54182b2a518

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


