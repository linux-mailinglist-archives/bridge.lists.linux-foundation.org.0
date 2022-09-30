Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0214B5F0AC3
	for <lists.bridge@lfdr.de>; Fri, 30 Sep 2022 13:40:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 14B894156D;
	Fri, 30 Sep 2022 11:40:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 14B894156D
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=Q4q2PYnk
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6wP51qdbknBN; Fri, 30 Sep 2022 11:40:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 84107414E8;
	Fri, 30 Sep 2022 11:40:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 84107414E8
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1EE9EC007C;
	Fri, 30 Sep 2022 11:40:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EEE9BC002D
 for <bridge@lists.linux-foundation.org>; Fri, 30 Sep 2022 11:40:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BB80C842B8
 for <bridge@lists.linux-foundation.org>; Fri, 30 Sep 2022 11:40:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB80C842B8
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Q4q2PYnk
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R19ch90m2hUj for <bridge@lists.linux-foundation.org>;
 Fri, 30 Sep 2022 11:40:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B99BF842B1
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B99BF842B1
 for <bridge@lists.linux-foundation.org>; Fri, 30 Sep 2022 11:40:22 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id A8C5AB82842;
 Fri, 30 Sep 2022 11:40:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5E233C43148;
 Fri, 30 Sep 2022 11:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1664538018;
 bh=IKQvAUjVVe1ZMOX9oFnDoAiO//gd9z/bUiOy6VuwVMI=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=Q4q2PYnk3qFvWGMO03ERrMA2N7PbBSOzQWTXSGGfXf0dNcY8321kG7c5Whw+tM5T+
 0glNm18fb0CqmiF+MszPH3lQudGn3ZvDqbt4OQB5FHAsVh42kQrDYS4TdWpj2gcIau
 0ENfhNFUI8pWUQDQJQ5taP0YN7LnWlr7flXZ7FYvyy/zzlopC0z1p0tFzqmn/H7kip
 lc8I2ShMw3TaENFA+MEVjLhW3FbPSYDgiak8Gah1MggHhfyo1LJSz67PKHtFEifUFH
 zI5unapzBJdxgjP3rW3Ie2tWu+XSKtwDOD8yJzNM+VotXUXA7mDagxKUDrUAOmN5mS
 VL8ryoDJptKwg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 4A2D5C04E59; Fri, 30 Sep 2022 11:40:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <166453801829.4225.8647161065788331137.git-patchwork-notify@kernel.org>
Date: Fri, 30 Sep 2022 11:40:18 +0000
References: <20220928175758.2106806-1-steven.hsieh@broadcom.com>
In-Reply-To: <20220928175758.2106806-1-steven.hsieh@broadcom.com>
To: Steven Hsieh <steven.hsieh@broadcom.com>
Cc: netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next] net: bridge: assign path_cost for
 2.5G and 5G link speed
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

On Wed, 28 Sep 2022 10:57:58 -0700 you wrote:
> As 2.5G, 5G ethernet ports are more common and affordable,
> these ports are being used in LAN bridge devices.
> STP port_cost() is missing path_cost assignment for these link speeds,
> causes highest cost 100 being used.
> This result in lower speed port being picked
> when there is loop between 5G and 1G ports.
> 
> [...]

Here is the summary with links:
  - [net-next] net: bridge: assign path_cost for 2.5G and 5G link speed
    https://git.kernel.org/netdev/net-next/c/bd1393815319

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


