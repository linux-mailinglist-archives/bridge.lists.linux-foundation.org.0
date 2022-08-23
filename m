Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C6C59CD72
	for <lists.bridge@lfdr.de>; Tue, 23 Aug 2022 03:00:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 09B90408BC;
	Tue, 23 Aug 2022 01:00:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09B90408BC
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=Q0zWCK5C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pSHc4ZwZXCN6; Tue, 23 Aug 2022 01:00:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 1A3A040879;
	Tue, 23 Aug 2022 01:00:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A3A040879
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8832DC007B;
	Tue, 23 Aug 2022 01:00:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B67E2C002D
 for <bridge@lists.linux-foundation.org>; Tue, 23 Aug 2022 01:00:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7CE514087C
 for <bridge@lists.linux-foundation.org>; Tue, 23 Aug 2022 01:00:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7CE514087C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JD4U_3iu7Kt4 for <bridge@lists.linux-foundation.org>;
 Tue, 23 Aug 2022 01:00:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D75140879
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4D75140879
 for <bridge@lists.linux-foundation.org>; Tue, 23 Aug 2022 01:00:23 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2E64060C40;
 Tue, 23 Aug 2022 01:00:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A147DC43141;
 Tue, 23 Aug 2022 01:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1661216420;
 bh=lKDJuVhzGDqTMjPWGGLuYOoTBkB7xFfy3n78RsLua8c=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=Q0zWCK5C4Lz4ZOyt5DZZ2KcOpYFdD/p8IIuLTdmKwaxN/6cU3WZtnVlZk3JaQ6FLn
 WXY+t6N4Om7vQroBNvmu14ycvCWdWTmyvfz50EIxQs2rAN1fikdL3a1uJdrKbF4peS
 qNUllcgIn+cRKxQmRoeEeY3PWNX8QzkYrosyrI8K8F52pWlvIH2FSwXx+AozM/Vlh6
 b/vfgB2D04nC4bYL0x6Xb9CZyuKn7Gcr6/b25p2oA/7Q+DDBOOZa7+9TMRfRooGIu3
 w3AKu5ZU9k+8mX4b16WumnkjKrIsfS60CN4m/jJ9Pl9cF4zsNgNWNVnSDPwGzt4Zgv
 pMEDKuZcxWh7g==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 874FDE2A041; Tue, 23 Aug 2022 01:00:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <166121642054.14563.8040741105246539928.git-patchwork-notify@kernel.org>
Date: Tue, 23 Aug 2022 01:00:20 +0000
References: <20220818210212.8347-1-wsa+renesas@sang-engineering.com>
In-Reply-To: <20220818210212.8347-1-wsa+renesas@sang-engineering.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, fw@strlen.de, linux-kernel@vger.kernel.org,
 kadlec@netfilter.org, edumazet@google.com, coreteam@netfilter.org,
 netfilter-devel@vger.kernel.org, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, pablo@netfilter.org
Subject: Re: [Bridge] [PATCH] bridge: move from strlcpy with unused retval
	to strscpy
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
by Jakub Kicinski <kuba@kernel.org>:

On Thu, 18 Aug 2022 23:02:12 +0200 you wrote:
> Follow the advice of the below link and prefer 'strscpy' in this
> subsystem. Conversion is 1:1 because the return value is not used.
> Generated by a coccinelle script.
> 
> Link: https://lore.kernel.org/r/CAHk-=wgfRnXz0W3D37d01q3JFkr_i_uTL=V6A6G1oUZcprmknw@mail.gmail.com/
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> 
> [...]

Here is the summary with links:
  - bridge: move from strlcpy with unused retval to strscpy
    https://git.kernel.org/netdev/net-next/c/993e1634ab44

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


