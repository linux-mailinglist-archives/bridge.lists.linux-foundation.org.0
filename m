Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 104117C8190
	for <lists.bridge@lfdr.de>; Fri, 13 Oct 2023 11:10:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E77D41B5B;
	Fri, 13 Oct 2023 09:10:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E77D41B5B
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=AGSsAv07
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gYS_hHHIzT4c; Fri, 13 Oct 2023 09:10:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id AE76641BB3;
	Fri, 13 Oct 2023 09:10:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE76641BB3
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4537CC0DD5;
	Fri, 13 Oct 2023 09:10:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0919BC0032
 for <bridge@lists.linux-foundation.org>; Fri, 13 Oct 2023 09:10:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D909E81329
 for <bridge@lists.linux-foundation.org>; Fri, 13 Oct 2023 09:10:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D909E81329
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=AGSsAv07
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RUkhetewcTOf for <bridge@lists.linux-foundation.org>;
 Fri, 13 Oct 2023 09:10:36 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B8589813C6
 for <bridge@lists.linux-foundation.org>; Fri, 13 Oct 2023 09:10:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8589813C6
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id B046ACE2FEA;
 Fri, 13 Oct 2023 09:10:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE53C433C9;
 Fri, 13 Oct 2023 09:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1697188230;
 bh=2NHXUmHMA0x62KWzVmj7kY/JH5/7szO6PdBuXZNYv9w=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=AGSsAv07SjmBKbXWRZv8jwZ9gUciGtaHAnyHzD1bshJwDJEwlBgkWTi3ruGVvaWzp
 gFeFgR9C5+IZ9b6A7qpQCo9klwVBCm2wBssIcCvFkGnibKn47QiIfZ+Z04Di2whMfd
 7t966Z+Xx+SP+gMe+rl+i3wxoJzMHiXS1joLttues5F67DA4ojOqeF9kJZbsUrH3ic
 iJviiaQXAo5lmJAXXFB1Ii9/2gkOiJ6uILqNejK3rfSsj8fuARbDUpAvV7smRHBc/9
 gUB0YbEhareEzHV02HvWtxJWBbTSBtHkHHRPL2XFkIrOcQ5ub/8AP0Ou9F0OcPUaTu
 zuvuctSsp+wjg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 B84FDC691EF; Fri, 13 Oct 2023 09:10:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <169718823071.32613.13896691864191241955.git-patchwork-notify@kernel.org>
Date: Fri, 13 Oct 2023 09:10:30 +0000
References: <20231009100618.2911374-1-amcohen@nvidia.com>
In-Reply-To: <20231009100618.2911374-1-amcohen@nvidia.com>
To: Amit Cohen <amcohen@nvidia.com>
Cc: bridge@lists.linux-foundation.org, razor@blackwall.org,
 netdev@vger.kernel.org, dsahern@kernel.org, roopa@nvidia.com, mlxsw@nvidia.com,
 linux-kselftest@vger.kernel.org, idosch@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, shuah@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 00/11] Extend VXLAN driver to support
	FDB flushing
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

On Mon, 9 Oct 2023 13:06:07 +0300 you wrote:
> The merge commit 92716869375b ("Merge branch 'br-flush-filtering'") added
> support for FDB flushing in bridge driver. Extend VXLAN driver to support
> FDB flushing also. Add support for filtering by fields which are relevant
> for VXLAN FDBs:
> * Source VNI
> * Nexthop ID
> * 'router' flag
> * Destination VNI
> * Destination Port
> * Destination IP
> 
> [...]

Here is the summary with links:
  - [net-next,01/11] net: Handle bulk delete policy in bridge driver
    https://git.kernel.org/netdev/net-next/c/38985e8c278b
  - [net-next,02/11] vxlan: vxlan_core: Make vxlan_flush() more generic for future use
    https://git.kernel.org/netdev/net-next/c/bfe36bf7811c
  - [net-next,03/11] vxlan: vxlan_core: Do not skip default entry in vxlan_flush() by default
    https://git.kernel.org/netdev/net-next/c/77b613efcc81
  - [net-next,04/11] vxlan: vxlan_core: Add support for FDB flush
    https://git.kernel.org/netdev/net-next/c/d324eb9cec84
  - [net-next,05/11] vxlan: vxlan_core: Support FDB flushing by source VNI
    https://git.kernel.org/netdev/net-next/c/a0f89d5e68b6
  - [net-next,06/11] vxlan: vxlan_core: Support FDB flushing by nexthop ID
    https://git.kernel.org/netdev/net-next/c/36c111233b56
  - [net-next,07/11] vxlan: vxlan_core: Support FDB flushing by destination VNI
    https://git.kernel.org/netdev/net-next/c/c499fccb71cb
  - [net-next,08/11] vxlan: vxlan_core: Support FDB flushing by destination port
    https://git.kernel.org/netdev/net-next/c/ac0db4ddd0cb
  - [net-next,09/11] vxlan: vxlan_core: Support FDB flushing by destination IP
    https://git.kernel.org/netdev/net-next/c/2dcd22023cab
  - [net-next,10/11] selftests: Add test cases for FDB flush with VXLAN device
    https://git.kernel.org/netdev/net-next/c/96eece693330
  - [net-next,11/11] selftests: fdb_flush: Add test cases for FDB flush with bridge device
    https://git.kernel.org/netdev/net-next/c/f826f2a2ee1e

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


