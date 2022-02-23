Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4429A4C137D
	for <lists.bridge@lfdr.de>; Wed, 23 Feb 2022 14:00:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9A2481971;
	Wed, 23 Feb 2022 13:00:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2MFPKgCqu5nd; Wed, 23 Feb 2022 13:00:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 2007D818E6;
	Wed, 23 Feb 2022 13:00:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A8955C0073;
	Wed, 23 Feb 2022 13:00:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4DA2CC0011
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 13:00:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3314B40112
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 13:00:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NXuhcuYsuiqV for <bridge@lists.linux-foundation.org>;
 Wed, 23 Feb 2022 13:00:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E78CF400CD
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 13:00:13 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E0246614EC;
 Wed, 23 Feb 2022 13:00:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 46EE3C340F3;
 Wed, 23 Feb 2022 13:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645621212;
 bh=weB59aojM0OQn/Xy7GXVElCcLRWhcGJyd2VR3nEi3pU=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=ct0NHB9Nd5GUht0vGmmowfkBuECMqOdVCTYuW1bjKGm+GaG4mc4bqoiUMBwijiHqe
 w0poqSK8qzwF0TgAboZsjKp8IBWR/1oNCuKkb33r3+B5x3Irzead19u2BqTB/Cp96I
 pYNn49CBc8I/YZxlxEvFEdb9Ne1O55OQYaSbQfQ6aIjAEVTXEWmlECebaF5k9Jwy/Q
 oDvrX5GRyKwYV6x26QfBHh2LoS392fVVUCcwjcJ42NohYoPs2vbVJPkSQPpyWohlAC
 SmrLdQL0oXJ1FhfcIMpgjkWMrwVuESYthoTOJv1v4/Eznaj9569JAbVYo5y/NlOUBh
 xGjR3wU8QmB8Q==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 2B22EE6D528; Wed, 23 Feb 2022 13:00:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <164562121216.5194.10519557733137319145.git-patchwork-notify@kernel.org>
Date: Wed, 23 Feb 2022 13:00:12 +0000
References: <20220223101650.1212814-1-schultz.hans+netdev@gmail.com>
In-Reply-To: <20220223101650.1212814-1-schultz.hans+netdev@gmail.com>
To: Hans Schultz <schultz.hans@gmail.com>
Cc: petrm@nvidia.com, andrew@lunn.ch, baowen.zheng@corigine.com,
 f.fainelli@gmail.com, amcohen@nvidia.com, netdev@vger.kernel.org,
 dsahern@kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, idosch@nvidia.com, vivien.didelot@gmail.com,
 schultz.hans+netdev@gmail.com, ssuryaextr@gmail.com, po-hsu.lin@canonical.com,
 nikolay@nvidia.com, linux-kselftest@vger.kernel.org, roopa@nvidia.com,
 kuba@kernel.org, olteanv@gmail.com, shuah@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v5 0/5] Add support for locked bridge
 ports (for 802.1X)
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

This series was applied to netdev/net-next.git (master)
by David S. Miller <davem@davemloft.net>:

On Wed, 23 Feb 2022 11:16:45 +0100 you wrote:
> This series starts by adding support for SA filtering to the bridge,
> which is then allowed to be offloaded to switchdev devices. Furthermore
> an offloading implementation is supplied for the mv88e6xxx driver.
> 
> Public Local Area Networks are often deployed such that there is a
> risk of unauthorized or unattended clients getting access to the LAN.
> To prevent such access we introduce SA filtering, such that ports
> designated as secure ports are set in locked mode, so that only
> authorized source MAC addresses are given access by adding them to
> the bridges forwarding database. Incoming packets with source MAC
> addresses that are not in the forwarding database of the bridge are
> discarded. It is then the task of user space daemons to populate the
> bridge's forwarding database with static entries of authorized entities.
> 
> [...]

Here is the summary with links:
  - [net-next,v5,1/5] net: bridge: Add support for bridge port in locked mode
    https://git.kernel.org/netdev/net-next/c/a21d9a670d81
  - [net-next,v5,2/5] net: bridge: Add support for offloading of locked port flag
    https://git.kernel.org/netdev/net-next/c/fa1c83342987
  - [net-next,v5,3/5] net: dsa: Include BR_PORT_LOCKED in the list of synced brport flags
    https://git.kernel.org/netdev/net-next/c/b9e8b58fd2cb
  - [net-next,v5,4/5] net: dsa: mv88e6xxx: Add support for bridge port locked mode
    https://git.kernel.org/netdev/net-next/c/34ea415f927e
  - [net-next,v5,5/5] selftests: forwarding: tests of locked port feature
    https://git.kernel.org/netdev/net-next/c/b2b681a41251

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


