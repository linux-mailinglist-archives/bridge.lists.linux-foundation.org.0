Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC1047FCB2
	for <lists.bridge@lfdr.de>; Mon, 27 Dec 2021 13:40:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C3CA3409A5;
	Mon, 27 Dec 2021 12:40:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jW6DkRp6a6yY; Mon, 27 Dec 2021 12:40:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 020EA409A3;
	Mon, 27 Dec 2021 12:40:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AA0C1C0070;
	Mon, 27 Dec 2021 12:40:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6EE5DC0012
 for <bridge@lists.linux-foundation.org>; Mon, 27 Dec 2021 12:40:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4E81460E3B
 for <bridge@lists.linux-foundation.org>; Mon, 27 Dec 2021 12:40:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5-wcIC2oOaIT for <bridge@lists.linux-foundation.org>;
 Mon, 27 Dec 2021 12:40:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7C94560C0A
 for <bridge@lists.linux-foundation.org>; Mon, 27 Dec 2021 12:40:11 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2A3FF61001;
 Mon, 27 Dec 2021 12:40:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EC81C36AEB;
 Mon, 27 Dec 2021 12:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640608809;
 bh=/NK8+LkGhicZgiX/HgeQA3rLcix8TFZ17hv+wILvgKY=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=qgKLSjNkeM5+8xOVP2S/ZUzAVttCObwil0/5LZziLctPXqN9PLO0V9AG5Xk1aFK6+
 t/5TqdhGhfUug1/0UG6EopDJzCyx74R53L2+1aInBimtexChVkOogl7IMMWzYY8hCd
 WcY7RohF0HAVLWMcpynBkr1kiVvEuiubQqG/NmewJjeHZwNUC/jtZ2xvTJEgA+YEER
 iXDO7dCjJtE/3CABa0m6Tg7n4MU8Nf3ziDofJSm51pQLlqi/vQ6QuugXe0uTHiT/NH
 CLGWtNF/avPtQT6fs0ns3H7ocy3DwRSnjanXPmLGE4VFFbFi3vNfkrSEl9mPzlLkar
 R1zuBTTYFiLQA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 7B6A6C395E6; Mon, 27 Dec 2021 12:40:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <164060880950.2123.6082560093716021616.git-patchwork-notify@kernel.org>
Date: Mon, 27 Dec 2021 12:40:09 +0000
References: <20211224114640.29679-1-repk@triplefau.lt>
In-Reply-To: <20211224114640.29679-1-repk@triplefau.lt>
To: Remi Pommarel <repk@triplefau.lt>
Cc: arnd@arndb.de, netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, nikolay@nvidia.com, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next] net: bridge: Get SIOCGIFBR/SIOCSIFBR
 ioctl working in compat mode
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

This patch was applied to netdev/net-next.git (master)
by David S. Miller <davem@davemloft.net>:

On Fri, 24 Dec 2021 12:46:40 +0100 you wrote:
> In compat mode SIOC{G,S}IFBR ioctls were only supporting
> BRCTL_GET_VERSION returning an artificially version to spur userland
> tool to use SIOCDEVPRIVATE instead. But some userland tools ignore that
> and use SIOC{G,S}IFBR unconditionally as seen with busybox's brctl.
> 
> Example of non working 32-bit brctl with CONFIG_COMPAT=y:
> $ brctl show
> brctl: SIOCGIFBR: Invalid argument
> 
> [...]

Here is the summary with links:
  - [net-next] net: bridge: Get SIOCGIFBR/SIOCSIFBR ioctl working in compat mode
    https://git.kernel.org/netdev/net-next/c/fd3a45900055

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


