Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B395618FBC
	for <lists.bridge@lfdr.de>; Fri,  4 Nov 2022 06:00:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9243A81E60;
	Fri,  4 Nov 2022 05:00:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9243A81E60
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=i/5JdLsN
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J6XgGh5XkaRY; Fri,  4 Nov 2022 05:00:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id EE0A481E63;
	Fri,  4 Nov 2022 05:00:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE0A481E63
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 77BA9C007B;
	Fri,  4 Nov 2022 05:00:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 38F0EC002D
 for <bridge@lists.linux-foundation.org>; Fri,  4 Nov 2022 05:00:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 19C3040332
 for <bridge@lists.linux-foundation.org>; Fri,  4 Nov 2022 05:00:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19C3040332
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=i/5JdLsN
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eX5hyherHOL5 for <bridge@lists.linux-foundation.org>;
 Fri,  4 Nov 2022 05:00:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E57EA4030C
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E57EA4030C
 for <bridge@lists.linux-foundation.org>; Fri,  4 Nov 2022 05:00:30 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 2AB38B82BF7;
 Fri,  4 Nov 2022 05:00:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 612F3C4315F;
 Fri,  4 Nov 2022 05:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1667538027;
 bh=L6pGhT4K1VahEFtueGJCgnf8u+IzStsSlBQ3uVCR6sI=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=i/5JdLsNvTCTx7CfN0Cnna3/b7aupU1z11GKQKJBxEXYOYJZt4SUdQX3W6Iu90xBF
 IbEVdMe3/VpRoFQ5f+ibuUHEpGYAcNWrsJ8jmMVUge66R/oojU5V7jav/LgWLtRQYW
 4O5qX3fKtVgD2tbghBsovQ84BkqBZHA3pveRrxBBMiTY75tL+cey8oufrxI2ef1VIO
 24ZJ/Hy8FKa6Yh7U7jytoYsLkb214akrwrbXfkPTElX8j/MDQ+Y97DwIqXcCeMvlrZ
 z+UeaBE88Zd/zuz0VyUhUe6gDnBeAmhsuuS1X0nvvCfyMWnCLD7xMqzvjkZ1NDD4XH
 XZw7ROk46i74g==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 27EF1E5256D; Fri,  4 Nov 2022 05:00:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <166753802715.27738.6160625606606714662.git-patchwork-notify@kernel.org>
Date: Fri, 04 Nov 2022 05:00:27 +0000
References: <20221101193922.2125323-1-idosch@nvidia.com>
In-Reply-To: <20221101193922.2125323-1-idosch@nvidia.com>
To: Ido Schimmel <idosch@nvidia.com>
Cc: netdev@kapio-technology.com, netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, vladimir.oltean@nxp.com,
 edumazet@google.com, mlxsw@nvidia.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 0/2] bridge: Add MAC Authentication
 Bypass (MAB) support
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
by Jakub Kicinski <kuba@kernel.org>:

On Tue,  1 Nov 2022 21:39:20 +0200 you wrote:
> Patch #1 adds MAB support in the bridge driver. See the commit message
> for motivation, design choices and implementation details.
> 
> Patch #2 adds corresponding test cases.
> 
> Follow-up patchsets will add offload support in mlxsw and mv88e6xxx.
> 
> [...]

Here is the summary with links:
  - [net-next,1/2] bridge: Add MAC Authentication Bypass (MAB) support
    https://git.kernel.org/netdev/net-next/c/a35ec8e38cdd
  - [net-next,2/2] selftests: forwarding: Add MAC Authentication Bypass (MAB) test cases
    https://git.kernel.org/netdev/net-next/c/4a331d346996

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


