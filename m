Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDE864681F
	for <lists.bridge@lfdr.de>; Thu,  8 Dec 2022 05:10:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F029A4034B;
	Thu,  8 Dec 2022 04:10:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F029A4034B
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=PiRCdQ8S
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5Mb1Se6SdlGC; Thu,  8 Dec 2022 04:10:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 57F0D40187;
	Thu,  8 Dec 2022 04:10:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 57F0D40187
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D259BC0078;
	Thu,  8 Dec 2022 04:10:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 677C6C002D
 for <bridge@lists.linux-foundation.org>; Thu,  8 Dec 2022 04:10:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3AC0081F5A
 for <bridge@lists.linux-foundation.org>; Thu,  8 Dec 2022 04:10:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3AC0081F5A
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=PiRCdQ8S
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id doC4m1qAJHEW for <bridge@lists.linux-foundation.org>;
 Thu,  8 Dec 2022 04:10:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5808181F59
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5808181F59
 for <bridge@lists.linux-foundation.org>; Thu,  8 Dec 2022 04:10:24 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D35DCB8227C;
 Thu,  8 Dec 2022 04:10:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F54BC433D7;
 Thu,  8 Dec 2022 04:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1670472619;
 bh=s4bA1inXYla9p7PtsuzzOXy6cf0Zl73yymnPyZJZj60=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=PiRCdQ8SYQ84tPVZCJxMAhcQNpFaVhZfeei7F6b75jF2L1c2doShvPSEKs1md0s8R
 N1QQIf6O9/d5N5l/cex+RY8ZQXHA4zgS/K3dg2PeVuie+mUH7rLGshO4mM8sDf2jQq
 CTLU/TKBVCSR5M9C620P978x4b7xsu7O4p0/4eNPN5gclLjitC8OjNfUtcvmEC/sOh
 d0p9GHI3d7JIQ7Ehm85JwlJ2wLl7TsHYEnWV+bQkVmIAaP8Sm8aAEV3HEHvUYzJ5L8
 fJLnXIfOZ43nRdBym2Mnp9zcxePMCC/kELi6CpHDbRAJ1T3FvHrRGL7IMt2Vjv+qMV
 mCpRqAISPHRFA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 88C3BC395EA; Thu,  8 Dec 2022 04:10:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <167047261955.18861.1757446402375104183.git-patchwork-notify@kernel.org>
Date: Thu, 08 Dec 2022 04:10:19 +0000
References: <20221206105809.363767-1-idosch@nvidia.com>
In-Reply-To: <20221206105809.363767-1-idosch@nvidia.com>
To: Ido Schimmel <idosch@nvidia.com>
Cc: netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, edumazet@google.com, mlxsw@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 0/9] bridge: mcast: Preparations
 for EVPN extensions
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

On Tue,  6 Dec 2022 12:58:00 +0200 you wrote:
> This patchset was split from [1] and includes non-functional changes
> aimed at making it easier to add additional netlink attributes later on.
> Future extensions are available here [2].
> 
> The idea behind these patches is to create an MDB configuration
> structure into which netlink messages are parsed into. The structure is
> then passed in the entry creation / deletion call chain instead of
> passing the netlink attributes themselves. The same pattern is used by
> other rtnetlink objects such as routes and nexthops.
> 
> [...]

Here is the summary with links:
  - [net-next,v2,1/9] bridge: mcast: Centralize netlink attribute parsing
    https://git.kernel.org/netdev/net-next/c/cb453926865e
  - [net-next,v2,2/9] bridge: mcast: Remove redundant checks
    https://git.kernel.org/netdev/net-next/c/386611681524
  - [net-next,v2,3/9] bridge: mcast: Use MDB configuration structure where possible
    https://git.kernel.org/netdev/net-next/c/f2b5aac68117
  - [net-next,v2,4/9] bridge: mcast: Propagate MDB configuration structure further
    https://git.kernel.org/netdev/net-next/c/8bd9c08e3241
  - [net-next,v2,5/9] bridge: mcast: Use MDB group key from configuration structure
    https://git.kernel.org/netdev/net-next/c/9f52a5142979
  - [net-next,v2,6/9] bridge: mcast: Remove br_mdb_parse()
    https://git.kernel.org/netdev/net-next/c/3ee5662345f2
  - [net-next,v2,7/9] bridge: mcast: Move checks out of critical section
    https://git.kernel.org/netdev/net-next/c/4c1ebc6c1f21
  - [net-next,v2,8/9] bridge: mcast: Remove redundant function arguments
    https://git.kernel.org/netdev/net-next/c/090149eaf391
  - [net-next,v2,9/9] bridge: mcast: Constify 'group' argument in br_multicast_new_port_group()
    https://git.kernel.org/netdev/net-next/c/f86c3e2c1b5e

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


