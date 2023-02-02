Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 332D46875C6
	for <lists.bridge@lfdr.de>; Thu,  2 Feb 2023 07:20:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A3C1941A2F;
	Thu,  2 Feb 2023 06:20:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A3C1941A2F
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=D1kzs7jQ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qMM-rL6CQhCL; Thu,  2 Feb 2023 06:20:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id D6ED341974;
	Thu,  2 Feb 2023 06:20:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6ED341974
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 689A7C007C;
	Thu,  2 Feb 2023 06:20:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4BB23C002B
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 06:20:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1805381379
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 06:20:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1805381379
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=D1kzs7jQ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6R1t8udkwWgi for <bridge@lists.linux-foundation.org>;
 Thu,  2 Feb 2023 06:20:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23F2581353
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 23F2581353
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 06:20:22 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 15C08B824E4;
 Thu,  2 Feb 2023 06:20:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2E582C4339C;
 Thu,  2 Feb 2023 06:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1675318817;
 bh=oD8RzGC4gPQxGDauN4OgiOSf0XpYZ4jYQdyep7tZPDE=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=D1kzs7jQ1OT76pRhhKHus5BknR72WHh0aRyWAOnJl/BA7sSzYU/3fKYBpf/hiWlNF
 ds9eBSHhxRiRxF8ZtYjtGhlY0F/v8QbKhJ5ehImA3/1SPqF1fHlDt1UriLZRS4dqbi
 xs/wgo0OTJFAQysPvQBzLLD4O3JWvf0rNi1e3Y4Wc0tjDdrPIOIMdtDhz7fQ/K1CoL
 Ay1804i8+TCuCcaMpooqbKTLlctE1bZhoZzSJujQu2GLiXF1RccvPwbglV9lOXOT2r
 Eipf25c+nYgV8PRoIbn0kovOOs+Y5VAPLfygSknlyu6qddaJM4wiEvX4dgn7XJYc3Y
 KUZrW1oXa3svw==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 0DC43E4D037; Thu,  2 Feb 2023 06:20:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <167531881705.1809.1109150044869661715.git-patchwork-notify@kernel.org>
Date: Thu, 02 Feb 2023 06:20:17 +0000
References: <6993fac557a40a1973dfa0095107c3d03d40bec1.1675171790.git.leon@kernel.org>
In-Reply-To: <6993fac557a40a1973dfa0095107c3d03d40bec1.1675171790.git.leon@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
Cc: steffen.klassert@secunet.com, andrew@lunn.ch, f.fainelli@gmail.com,
 herbert@gondor.apana.org.au, netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, edumazet@google.com, olteanv@gmail.com,
 roopa@nvidia.com, simon.horman@corigine.com, kuba@kernel.org,
 pabeni@redhat.com, leonro@nvidia.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v3] netlink: provide an ability to set
 default extack message
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

On Tue, 31 Jan 2023 15:31:57 +0200 you wrote:
> From: Leon Romanovsky <leonro@nvidia.com>
> 
> In netdev common pattern, extack pointer is forwarded to the drivers
> to be filled with error message. However, the caller can easily
> overwrite the filled message.
> 
> Instead of adding multiple "if (!extack->_msg)" checks before any
> NL_SET_ERR_MSG() call, which appears after call to the driver, let's
> add new macro to common code.
> 
> [...]

Here is the summary with links:
  - [net-next,v3] netlink: provide an ability to set default extack message
    https://git.kernel.org/netdev/net-next/c/028fb19c6ba7

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


