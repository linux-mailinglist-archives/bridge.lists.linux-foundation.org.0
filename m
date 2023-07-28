Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9567660B4
	for <lists.bridge@lfdr.de>; Fri, 28 Jul 2023 02:20:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6ABE461139;
	Fri, 28 Jul 2023 00:20:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6ABE461139
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=cjsALfXy
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WZm-6Axzhx0O; Fri, 28 Jul 2023 00:20:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id CCF87613A1;
	Fri, 28 Jul 2023 00:20:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CCF87613A1
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6BD4AC008D;
	Fri, 28 Jul 2023 00:20:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 761E3C0032
 for <bridge@lists.linux-foundation.org>; Fri, 28 Jul 2023 00:20:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 50DF88409D
 for <bridge@lists.linux-foundation.org>; Fri, 28 Jul 2023 00:20:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 50DF88409D
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=cjsALfXy
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3gzJMj17J_nX for <bridge@lists.linux-foundation.org>;
 Fri, 28 Jul 2023 00:20:22 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8989084089
 for <bridge@lists.linux-foundation.org>; Fri, 28 Jul 2023 00:20:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8989084089
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A9C1061F9A;
 Fri, 28 Jul 2023 00:20:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02D7BC433CD;
 Fri, 28 Jul 2023 00:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1690503621;
 bh=JWpibV1AQXBMpPFvCewoBsCPhbnapxlbGt4HsLNitJo=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=cjsALfXyWA/6raCCl2px6oP9dHVI0H2lgfOOk0OgMkuMP5SgQggtxyRMFs+YHPDfp
 eEZR/KZdnLWiGaq56v2krh/Zj42BbLex/0ual0lDgI3DpqUrp8wSTgM5qWVrHT3yOG
 /eCUgIboNAuzcV8lTNA2NHthDvx5w0CaPWwEKI764J69oc7VJdZDSkCtt0h7XyvGZH
 A2Rq5fIuC/cER0EdPG5kV2jg2g8//gBIjNdYHL7hv7CkKbfMeT/diR+6gUwQ6c6qNs
 OddxVh7qRQnAilLi3WA++CpbLsNBOezNc1461qpd3FwrwftjG25y4ulzPBuRGm/Lfm
 yo0cOqsMs/1Fg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 E3C40C41672; Fri, 28 Jul 2023 00:20:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <169050362092.24970.6426041238367256548.git-patchwork-notify@kernel.org>
Date: Fri, 28 Jul 2023 00:20:20 +0000
References: <20230726143141.11704-1-yuehaibing@huawei.com>
In-Reply-To: <20230726143141.11704-1-yuehaibing@huawei.com>
To: Yue Haibing <yuehaibing@huawei.com>
Cc: idosch@nvidia.com, razor@blackwall.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, edumazet@google.com, netdev@vger.kernel.org,
 roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next] bridge: Remove unused declaration
 br_multicast_set_hash_max()
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

This patch was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Wed, 26 Jul 2023 22:31:41 +0800 you wrote:
> Since commit 19e3a9c90c53 ("net: bridge: convert multicast to generic rhashtable")
> this is not used, so can remove it.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  net/bridge/br_private.h | 1 -
>  1 file changed, 1 deletion(-)

Here is the summary with links:
  - [net-next] bridge: Remove unused declaration br_multicast_set_hash_max()
    https://git.kernel.org/netdev/net-next/c/4d66f235c790

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


