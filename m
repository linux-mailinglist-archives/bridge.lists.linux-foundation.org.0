Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C21550C236
	for <lists.bridge@lfdr.de>; Sat, 23 Apr 2022 00:20:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8073040195;
	Fri, 22 Apr 2022 22:20:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vqW1QzxWDxha; Fri, 22 Apr 2022 22:20:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id DE48240AFC;
	Fri, 22 Apr 2022 22:20:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9A008C007C;
	Fri, 22 Apr 2022 22:20:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6130CC002D
 for <bridge@lists.linux-foundation.org>; Fri, 22 Apr 2022 22:20:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5703A409F7
 for <bridge@lists.linux-foundation.org>; Fri, 22 Apr 2022 22:20:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dRpQzJEggTSA for <bridge@lists.linux-foundation.org>;
 Fri, 22 Apr 2022 22:20:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6703140948
 for <bridge@lists.linux-foundation.org>; Fri, 22 Apr 2022 22:20:14 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3CD4B6211F;
 Fri, 22 Apr 2022 22:20:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98723C385A0;
 Fri, 22 Apr 2022 22:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650666012;
 bh=zGGEdPIjAESTGghxl2+i/vefsBQOdeJfq4cy+l6eReo=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=u15rco15cZ+7+uEEjvLIzCA6R9ZD0Gy4abMM61dxnT6p5dKGjrsLwOzGP4t1jwiM8
 k6tvIJGuyxGRI+hik7bHBzOvqzjRaMK7as9KDsuEbjcvFJvwOieZpFn+KrhAbURU/P
 yit2vdFCE/TqQOmPQ1RtxkdmFHbGFcLlIEZI0sU57xkTbTuxXkTlFGLEcbTQY4yjoE
 UltUKGG7ZQbOdtf2cfBb0VDg8aIzbZi5RRc3npZGoYtOG+nO9EmEDVVBxuquMOfekf
 hmB0lZ3eRLlEe2F5tZ7vmTvEK/JFJ3AIbVgDCrfOUuetJSlp0BU8BfqH4XIfeOBXhd
 B7P3d3g1lmTzQ==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 78A36E8DD61; Fri, 22 Apr 2022 22:20:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <165066601248.17746.1567097686981466441.git-patchwork-notify@kernel.org>
Date: Fri, 22 Apr 2022 22:20:12 +0000
References: <20220421101247.121896-1-clement.leger@bootlin.com>
In-Reply-To: <20220421101247.121896-1-clement.leger@bootlin.com>
To: =?utf-8?b?Q2zDqW1lbnQgTMOpZ2VyIDxjbGVtZW50LmxlZ2VyQGJvb3RsaW4uY29tPg==?=@ci.codeaurora.org
Cc: netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net,
 tobias@waldekranz.com
Subject: Re: [Bridge] [PATCH net-next] net: bridge: switchdev: check
 br_vlan_group() return value
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

On Thu, 21 Apr 2022 12:12:47 +0200 you wrote:
> br_vlan_group() can return NULL and thus return value must be checked
> to avoid dereferencing a NULL pointer.
> 
> Fixes: 6284c723d9b9 ("net: bridge: mst: Notify switchdev drivers of VLAN MSTI migrations")
> Signed-off-by: Clément Léger <clement.leger@bootlin.com>
> ---
>  net/bridge/br_switchdev.c | 2 ++
>  1 file changed, 2 insertions(+)

Here is the summary with links:
  - [net-next] net: bridge: switchdev: check br_vlan_group() return value
    https://git.kernel.org/netdev/net/c/7f40ea2145d9

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


