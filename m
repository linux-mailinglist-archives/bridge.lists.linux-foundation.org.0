Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E2149E3FA
	for <lists.bridge@lfdr.de>; Thu, 27 Jan 2022 15:00:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8384B84E95;
	Thu, 27 Jan 2022 14:00:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t9lUE-jDZeFa; Thu, 27 Jan 2022 14:00:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id ED29484E82;
	Thu, 27 Jan 2022 14:00:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id ADBE6C0031;
	Thu, 27 Jan 2022 14:00:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0C36CC000B
 for <bridge@lists.linux-foundation.org>; Thu, 27 Jan 2022 14:00:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ECEFB84E82
 for <bridge@lists.linux-foundation.org>; Thu, 27 Jan 2022 14:00:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xNLPRjGsRJtl for <bridge@lists.linux-foundation.org>;
 Thu, 27 Jan 2022 14:00:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 45AF78186E
 for <bridge@lists.linux-foundation.org>; Thu, 27 Jan 2022 14:00:13 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id EA47461CC2;
 Thu, 27 Jan 2022 14:00:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50CCC340EF;
 Thu, 27 Jan 2022 14:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643292010;
 bh=fuxNmULtsgNCuFSvQVh98CjexGQvH+8isVMDzy7ABpI=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=lg4+xwVh1AybDV2H2RmdkJYveSRbIeDPrDrQx+n6bp/OlRW6DDpleM+5aWaNsoqTs
 NtjgOK6KxrFnXff/C8lk6yOQcfUdgSSmo6nClPoJU+r+C1l7SKFNqxYRxsXDfLiqzj
 1DBHY2GfLW3phqwZXVl41sKvnKR6o1VNtDyao8tkaBbyms9Vdmc+VCAbd5pdPE8Mzr
 ekWS8THqhkUeCfko2xD6gf4qjOX9d4ndeBfM46vJ81blxrk5EhRDZedQmuJXbXZrWX
 sZNrP3Pedy+gNz5zVIopo1k7YnDV1DaE+R2j1rzNdPDydoUj5ukUMu+r9HLd37p4a7
 Ir9iPEz4s3WVw==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 BEFC2E6BAC6; Thu, 27 Jan 2022 14:00:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <164329201077.13469.5252832269191984892.git-patchwork-notify@kernel.org>
Date: Thu, 27 Jan 2022 14:00:10 +0000
References: <20220126131025.2500274-1-nikolay@nvidia.com>
In-Reply-To: <20220126131025.2500274-1-nikolay@nvidia.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Cc: bpoirier@nvidia.com, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net] net: bridge: vlan: fix single net device
	option dumping
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

On Wed, 26 Jan 2022 15:10:25 +0200 you wrote:
> When dumping vlan options for a single net device we send the same
> entries infinitely because user-space expects a 0 return at the end but
> we keep returning skb->len and restarting the dump on retry. Fix it by
> returning the value from br_vlan_dump_dev() if it completed or there was
> an error. The only case that must return skb->len is when the dump was
> incomplete and needs to continue (-EMSGSIZE).
> 
> [...]

Here is the summary with links:
  - [net] net: bridge: vlan: fix single net device option dumping
    https://git.kernel.org/netdev/net/c/dcb2c5c6ca9b

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


