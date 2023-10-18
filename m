Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF707CD190
	for <lists.bridge@lfdr.de>; Wed, 18 Oct 2023 03:00:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 00A4260A92;
	Wed, 18 Oct 2023 01:00:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 00A4260A92
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=ieSaQVIw
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CXHUpZMjp-ym; Wed, 18 Oct 2023 01:00:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 5FD5760C22;
	Wed, 18 Oct 2023 01:00:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FD5760C22
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B2E14C0DD3;
	Wed, 18 Oct 2023 01:00:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E5476C0032
 for <bridge@lists.linux-foundation.org>; Wed, 18 Oct 2023 01:00:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AC3C040278
 for <bridge@lists.linux-foundation.org>; Wed, 18 Oct 2023 01:00:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC3C040278
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ieSaQVIw
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QpktdhlxgLNh for <bridge@lists.linux-foundation.org>;
 Wed, 18 Oct 2023 01:00:31 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B22C7400CE
 for <bridge@lists.linux-foundation.org>; Wed, 18 Oct 2023 01:00:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B22C7400CE
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id D93F161582;
 Wed, 18 Oct 2023 01:00:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82988C433C8;
 Wed, 18 Oct 2023 01:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1697590830;
 bh=K2deq/2Shw6UljQTvW98Mv2vAHt3FhdhO48jhYtDOe0=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=ieSaQVIw+2LuuWrOLgLuT6P47pVmVQWtB8kbHsCga2zN1FQ/8Rl3JpJilDrPGIPqA
 5NUO9MQ4dFBc5vNL2F6LMf75HlvClX9LqGCDaxVWOXtZKHZqonemfs7CKX3s55QLVw
 J6DOPhXgp83P39Jkzj3QQRt6ny65alLAjPSP7MdCBRXoYkhSGp1YzGfXLDi7AXkJTT
 /DVnVUXuAwJVL9gOwGF0wYqwUcwv3akELOxAum53WRBmSOA0Ndjc7mpSCCXAwbaXou
 du4HVJ+vF++TDFWu6730dICpFCQ2ja/IUnyl2baBWDn7DMbWXLdL8+yH0WC7/R+Rs7
 8iCA+NUI/quxw==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 6ACB9E4E9DD; Wed, 18 Oct 2023 01:00:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <169759083043.18882.3734658950123094755.git-patchwork-notify@kernel.org>
Date: Wed, 18 Oct 2023 01:00:30 +0000
References: <20231016-fdb_limit-v5-0-32cddff87758@avm.de>
In-Reply-To: <20231016-fdb_limit-v5-0-32cddff87758@avm.de>
To: Johannes Nixdorf <jnixdorf-oss@avm.de>
Cc: andrew@lunn.ch, f.fainelli@gmail.com, bridge@lists.linux-foundation.org,
 idosch@nvidia.com, razor@blackwall.org, roopa@nvidia.com,
 linux-kernel@vger.kernel.org, linux@rempel-privat.de, vladimir.oltean@nxp.com,
 edumazet@google.com, netdev@vger.kernel.org, linux-kselftest@vger.kernel.org,
 dsahern@gmail.com, kuba@kernel.org, pabeni@redhat.com, shuah@kernel.org,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v5 0/5] bridge: Add a limit on learned
	FDB entries
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

This series was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Mon, 16 Oct 2023 15:27:19 +0200 you wrote:
> Introduce a limit on the amount of learned FDB entries on a bridge,
> configured by netlink with a build time default on bridge creation in
> the kernel config.
> 
> For backwards compatibility the kernel config default is disabling the
> limit (0).
> 
> [...]

Here is the summary with links:
  - [net-next,v5,1/5] net: bridge: Set BR_FDB_ADDED_BY_USER early in fdb_add_entry
    https://git.kernel.org/netdev/net-next/c/cbf51acbc5d5
  - [net-next,v5,2/5] net: bridge: Track and limit dynamically learned FDB entries
    https://git.kernel.org/netdev/net-next/c/bdb4dfda3b41
  - [net-next,v5,3/5] net: bridge: Add netlink knobs for number / max learned FDB entries
    https://git.kernel.org/netdev/net-next/c/ddd1ad68826d
  - [net-next,v5,4/5] net: bridge: Set strict_start_type for br_policy
    https://git.kernel.org/netdev/net-next/c/19297c3ab23c
  - [net-next,v5,5/5] selftests: forwarding: bridge_fdb_learning_limit: Add a new selftest
    https://git.kernel.org/netdev/net-next/c/6f84090333bb

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


