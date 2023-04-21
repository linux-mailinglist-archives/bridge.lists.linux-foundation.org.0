Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D5C6EA53C
	for <lists.bridge@lfdr.de>; Fri, 21 Apr 2023 09:50:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8103F42812;
	Fri, 21 Apr 2023 07:50:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8103F42812
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=UOgmSicv
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QwNIlaHn9yGg; Fri, 21 Apr 2023 07:50:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 619A0415F5;
	Fri, 21 Apr 2023 07:50:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 619A0415F5
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F370EC008A;
	Fri, 21 Apr 2023 07:50:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7B495C002A
 for <bridge@lists.linux-foundation.org>; Fri, 21 Apr 2023 07:50:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 494E8841F0
 for <bridge@lists.linux-foundation.org>; Fri, 21 Apr 2023 07:50:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 494E8841F0
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=UOgmSicv
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z_wM_yLhoLiK for <bridge@lists.linux-foundation.org>;
 Fri, 21 Apr 2023 07:50:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51244841F3
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 51244841F3
 for <bridge@lists.linux-foundation.org>; Fri, 21 Apr 2023 07:50:32 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 142B761386;
 Fri, 21 Apr 2023 07:50:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B8BFC4339B;
 Fri, 21 Apr 2023 07:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1682063430;
 bh=6/y8G0ZiqPAifVh+i5PDY7VpETrfy1glOu1IyKXJtnA=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=UOgmSicvboaxb7lj0j+c2vpcta80Fwxh3175QxIhJq1cMJj4taQBfY5hcLH50oR4v
 4bQ9MPXU63G9zLBtVFT1sN0MDJLiw+FAh6QOb3EnVGLA41N10es7RPuAHpWSBDxYsG
 ygXnTDlKwrWoC09NCADZAJihpsmkgmVkiRlvPIOgl6dx65v8xo+65eYVTa7n3sUxmh
 1zAXIc6dGzoCMxT2WDeughA+zEg/X4Hor3pUv5RoasA5zp8CFX6BAmcj9NYaDYI8pk
 /csAwyLvML6J9cmhaZmQ+T/NaBj3FcuYq9DlgDwNkbSmMBpeNeMSSDeCnOzNq5JoqU
 Eo8sSYW8ZOITg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 4D543E501E2; Fri, 21 Apr 2023 07:50:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <168206343031.30967.17590346122475626236.git-patchwork-notify@kernel.org>
Date: Fri, 21 Apr 2023 07:50:30 +0000
References: <20230419153500.2655036-1-idosch@nvidia.com>
In-Reply-To: <20230419153500.2655036-1-idosch@nvidia.com>
To: Ido Schimmel <idosch@nvidia.com>
Cc: netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, edumazet@google.com, mlxsw@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 0/9] bridge: Add per-{Port,
 VLAN} neighbor suppression
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
by David S. Miller <davem@davemloft.net>:

On Wed, 19 Apr 2023 18:34:51 +0300 you wrote:
> Background
> ==========
> 
> In order to minimize the flooding of ARP and ND messages in the VXLAN
> network, EVPN includes provisions [1] that allow participating VTEPs to
> suppress such messages in case they know the MAC-IP binding and can
> reply on behalf of the remote host. In Linux, the above is implemented
> in the bridge driver using a per-port option called "neigh_suppress"
> that was added in kernel version 4.15 [2].
> 
> [...]

Here is the summary with links:
  - [net-next,v2,1/9] bridge: Reorder neighbor suppression check when flooding
    https://git.kernel.org/netdev/net-next/c/013a7ce81dd8
  - [net-next,v2,2/9] bridge: Pass VLAN ID to br_flood()
    https://git.kernel.org/netdev/net-next/c/e408336a693e
  - [net-next,v2,3/9] bridge: Add internal flags for per-{Port, VLAN} neighbor suppression
    https://git.kernel.org/netdev/net-next/c/a714e3ec2308
  - [net-next,v2,4/9] bridge: Take per-{Port, VLAN} neighbor suppression into account
    https://git.kernel.org/netdev/net-next/c/6be42ed0a5f4
  - [net-next,v2,5/9] bridge: Encapsulate data path neighbor suppression logic
    https://git.kernel.org/netdev/net-next/c/3aca683e0654
  - [net-next,v2,6/9] bridge: Add per-{Port, VLAN} neighbor suppression data path support
    https://git.kernel.org/netdev/net-next/c/412614b1457a
  - [net-next,v2,7/9] bridge: vlan: Allow setting VLAN neighbor suppression state
    https://git.kernel.org/netdev/net-next/c/83f6d600796c
  - [net-next,v2,8/9] bridge: Allow setting per-{Port, VLAN} neighbor suppression state
    https://git.kernel.org/netdev/net-next/c/160656d7201d
  - [net-next,v2,9/9] selftests: net: Add bridge neighbor suppression test
    https://git.kernel.org/netdev/net-next/c/7648ac72dcd7

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


