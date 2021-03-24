Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C07A34820E
	for <lists.bridge@lfdr.de>; Wed, 24 Mar 2021 20:40:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C8AD483FEE;
	Wed, 24 Mar 2021 19:40:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fGZswmux-Qtu; Wed, 24 Mar 2021 19:40:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTP id 495F583FE6;
	Wed, 24 Mar 2021 19:40:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 08F74C0012;
	Wed, 24 Mar 2021 19:40:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 57027C000A
 for <bridge@lists.linux-foundation.org>; Wed, 24 Mar 2021 19:40:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3E39540157
 for <bridge@lists.linux-foundation.org>; Wed, 24 Mar 2021 19:40:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rdabPNe_IIjc for <bridge@lists.linux-foundation.org>;
 Wed, 24 Mar 2021 19:40:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5212D400D3
 for <bridge@lists.linux-foundation.org>; Wed, 24 Mar 2021 19:40:10 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id E43CA61A27;
 Wed, 24 Mar 2021 19:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1616614808;
 bh=KLYENuOcXI14xb4rj4Fs42f+fX8Y8nzzaYL3MtEcvmE=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=H65ORv819BZRboWNPrL9tqsKb7Uip7DzXHRDOPOK+zFOiZWt4GZxJMeiEb10cbiYq
 lTDs9KhUE8w3e9xBy7dlizlmCyJIQptiXRsazQeuaW+Om89Sy388MgJrjTJv7OTieo
 ZPuZBvgT+xvxEPkSlJmAO1vN8XqeYVXDz9/uSz/iz7pyr4QiFIAgebGDP4kL6RS9ia
 n2+WoDzSzOf1mUGS1O5PCce4OzyWLSyBMsozRBCpvkY7zxu7rGRm70kpgbi3pQ0bEp
 wLQCUlBCrkR7kTNXv0fQsrU39V/EE0MPjG1wuo7CRp07D+75i5gOUbQpegepnUdsnw
 U+bmpP9ub07dg==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id DDDC960A3E;
 Wed, 24 Mar 2021 19:40:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161661480890.20893.12247357786552976282.git-patchwork-notify@kernel.org>
Date: Wed, 24 Mar 2021 19:40:08 +0000
References: <20210323083347.1474883-1-horatiu.vultur@microchip.com>
In-Reply-To: <20210323083347.1474883-1-horatiu.vultur@microchip.com>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: alexandre.belloni@bootlin.com, vladimir.oltean@nxp.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, claudiu.manoil@nxp.com, netdev@vger.kernel.org,
 nikolay@nvidia.com, roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 0/2] bridge: mrp: Disable roles before
	deleting
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

On Tue, 23 Mar 2021 09:33:45 +0100 you wrote:
> The first patch in this series make sures that the driver is notified
> that the role is disabled before the MRP instance is deleted. The
> second patch uses this so it can simplify the driver.
> 
> Horatiu Vultur (2):
>   bridge: mrp: Disable roles before deleting the MRP instance
>   net: ocelot: Simplify MRP deletion
> 
> [...]

Here is the summary with links:
  - [net-next,1/2] bridge: mrp: Disable roles before deleting the MRP instance
    https://git.kernel.org/netdev/net-next/c/b3cb91b97c04
  - [net-next,2/2] net: ocelot: Simplify MRP deletion
    https://git.kernel.org/netdev/net-next/c/5b7c0c32c904

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


