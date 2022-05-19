Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED4752CD4B
	for <lists.bridge@lfdr.de>; Thu, 19 May 2022 09:40:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66E7E41B77;
	Thu, 19 May 2022 07:40:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2srIIY0N3N_a; Thu, 19 May 2022 07:40:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 8352C418EC;
	Thu, 19 May 2022 07:40:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 41954C007E;
	Thu, 19 May 2022 07:40:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BFA23C002D
 for <bridge@lists.linux-foundation.org>; Thu, 19 May 2022 07:40:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A018A60BD1
 for <bridge@lists.linux-foundation.org>; Thu, 19 May 2022 07:40:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hA-LONzYzbsA for <bridge@lists.linux-foundation.org>;
 Thu, 19 May 2022 07:40:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 867FF60C13
 for <bridge@lists.linux-foundation.org>; Thu, 19 May 2022 07:40:16 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 57A00B8218E;
 Thu, 19 May 2022 07:40:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2A5B5C34113;
 Thu, 19 May 2022 07:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1652946012;
 bh=vcohhxrcH1q4h2W5s5L2qwUQGpsxZdvn23PCPcE3/Ds=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=sS3CHmuZhKDmKTGuE6j8eJrscDRmN0OECSbe+QIdvXDeSyvl5preNm3zQvYVOstNT
 8+idXefdGIriIdtRU0rGFKBsT2M6a2KJcDQJAf+/gy8piAneh6W3Y2y4ueIsJbZ+es
 TN131VCcN5MRbr/ofIz3QlIme+Pek0+22l5p36mNEeE8iroZN/ow5rp3cUO3I3P7+P
 YLl62ob/GKf+UXSw7CU0NpFGiKccgkMkDGhaq4jIPYifpAdN2TAnS2bx4gfMI8TydM
 S+rJGZyPfwFUABTsdaxojuIjxuTVzvnZFuqWUzyoMQaSlKrR5UjumOUD7flyoBaS/D
 zE+JFHX4zF72w==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 10188F0389D; Thu, 19 May 2022 07:40:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <165294601206.2340.13222966776558845980.git-patchwork-notify@kernel.org>
Date: Thu, 19 May 2022 07:40:12 +0000
References: <20220518005840.771575-1-andrew@lunn.ch>
In-Reply-To: <20220518005840.771575-1-andrew@lunn.ch>
To: Andrew Lunn <andrew@lunn.ch>
Cc: idosch@mellanox.com, netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, vladimir.oltean@nxp.com
Subject: Re: [Bridge] [PATCH v2 net] net: bridge: Clear offload_fwd_mark
 when passing frame up bridge interface.
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
by Paolo Abeni <pabeni@redhat.com>:

On Wed, 18 May 2022 02:58:40 +0200 you wrote:
> It is possible to stack bridges on top of each other. Consider the
> following which makes use of an Ethernet switch:
> 
>        br1
>      /    \
>     /      \
>    /        \
>  br0.11    wlan0
>    |
>    br0
>  /  |  \
> p1  p2  p3
> 
> [...]

Here is the summary with links:
  - [v2,net] net: bridge: Clear offload_fwd_mark when passing frame up bridge interface.
    https://git.kernel.org/netdev/net/c/fbb3abdf2223

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


