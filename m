Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BB96E68B7E3
	for <lists.bridge@lfdr.de>; Mon,  6 Feb 2023 10:00:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F3AE74155E;
	Mon,  6 Feb 2023 09:00:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F3AE74155E
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=Uo3qk4jF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5nXIGBiL1WcW; Mon,  6 Feb 2023 09:00:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 0CD3D41608;
	Mon,  6 Feb 2023 09:00:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0CD3D41608
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 95D17C007C;
	Mon,  6 Feb 2023 09:00:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C97B0C002B
 for <bridge@lists.linux-foundation.org>; Mon,  6 Feb 2023 09:00:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9683F4163E
 for <bridge@lists.linux-foundation.org>; Mon,  6 Feb 2023 09:00:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9683F4163E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oR0jdLf4Amdz for <bridge@lists.linux-foundation.org>;
 Mon,  6 Feb 2023 09:00:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5647141608
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5647141608
 for <bridge@lists.linux-foundation.org>; Mon,  6 Feb 2023 09:00:21 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1560660DB6;
 Mon,  6 Feb 2023 09:00:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B67DC4339B;
 Mon,  6 Feb 2023 09:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1675674019;
 bh=LbjlkWb8XyBiD1qMkYuIHIYS60S6zUEjrPIyWyRLYV4=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=Uo3qk4jFvFweCncj+XaVraSfXNduQQ2tBq/8Jcq++ag07szLlDtzW1T4RDHG/e6Mx
 z2xx7RAwH8LaS1Aer1HzqyFhcRqWejS57nDeLxGjuWvBF1d+JsVbLBD+MWu5+vCvDX
 wALNIEqilBJqgKRh3sUmiYwRpOi/ewoLd7PGHzcfqp7we3mJIe7ilYdLGUHHVa0ZdY
 elhrZvRtEv0zWS9y7hLpqbrK/BCOmPLz95tRQfVPBqUPY2EtrYlgZrcQvddcVgFwul
 PP1YQxddNze0IlrFwb5/7m6ZwuglXmz98HtOB+yv+wd0Q9sTKgD6Gn0xf9F2/CZtb3
 uhNfzNqw3eg4w==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 50BB1E55EFC; Mon,  6 Feb 2023 09:00:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <167567401932.11144.3817510754379693271.git-patchwork-notify@kernel.org>
Date: Mon, 06 Feb 2023 09:00:19 +0000
References: <cover.1675359453.git.petrm@nvidia.com>
In-Reply-To: <cover.1675359453.git.petrm@nvidia.com>
To: Petr Machata <petrm@nvidia.com>
Cc: netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, idosch@nvidia.com, edumazet@google.com,
 roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v3 00/16] bridge: Limit number of MDB
 entries per port, port-vlan
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
by David S. Miller <davem@davemloft.net>:

On Thu, 2 Feb 2023 18:59:18 +0100 you wrote:
> The MDB maintained by the bridge is limited. When the bridge is configured
> for IGMP / MLD snooping, a buggy or malicious client can easily exhaust its
> capacity. In SW datapath, the capacity is configurable through the
> IFLA_BR_MCAST_HASH_MAX parameter, but ultimately is finite. Obviously a
> similar limit exists in the HW datapath for purposes of offloading.
> 
> In order to prevent the issue of unilateral exhaustion of MDB resources,
> introduce two parameters in each of two contexts:
> 
> [...]

Here is the summary with links:
  - [net-next,v3,01/16] net: bridge: Set strict_start_type at two policies
    https://git.kernel.org/netdev/net-next/c/c00041cf1cb8
  - [net-next,v3,02/16] net: bridge: Add extack to br_multicast_new_port_group()
    https://git.kernel.org/netdev/net-next/c/60977a0c6337
  - [net-next,v3,03/16] net: bridge: Move extack-setting to br_multicast_new_port_group()
    https://git.kernel.org/netdev/net-next/c/1c85b80b20a1
  - [net-next,v3,04/16] net: bridge: Add br_multicast_del_port_group()
    https://git.kernel.org/netdev/net-next/c/976b3858dd14
  - [net-next,v3,05/16] net: bridge: Change a cleanup in br_multicast_new_port_group() to goto
    https://git.kernel.org/netdev/net-next/c/eceb30854f6b
  - [net-next,v3,06/16] net: bridge: Add a tracepoint for MDB overflows
    https://git.kernel.org/netdev/net-next/c/d47230a3480a
  - [net-next,v3,07/16] net: bridge: Maintain number of MDB entries in net_bridge_mcast_port
    https://git.kernel.org/netdev/net-next/c/b57e8d870d52
  - [net-next,v3,08/16] net: bridge: Add netlink knobs for number / maximum MDB entries
    https://git.kernel.org/netdev/net-next/c/a1aee20d5db2
  - [net-next,v3,09/16] selftests: forwarding: Move IGMP- and MLD-related functions to lib
    https://git.kernel.org/netdev/net-next/c/344dd2c9e743
  - [net-next,v3,10/16] selftests: forwarding: bridge_mdb: Fix a typo
    https://git.kernel.org/netdev/net-next/c/f7ccf60c4ada
  - [net-next,v3,11/16] selftests: forwarding: lib: Add helpers for IP address handling
    https://git.kernel.org/netdev/net-next/c/fcf4927632ee
  - [net-next,v3,12/16] selftests: forwarding: lib: Add helpers for checksum handling
    https://git.kernel.org/netdev/net-next/c/952e0ee38c72
  - [net-next,v3,13/16] selftests: forwarding: lib: Parameterize IGMPv3/MLDv2 generation
    https://git.kernel.org/netdev/net-next/c/506a1ac9d32b
  - [net-next,v3,14/16] selftests: forwarding: lib: Allow list of IPs for IGMPv3/MLDv2
    https://git.kernel.org/netdev/net-next/c/705d4bc7b6b6
  - [net-next,v3,15/16] selftests: forwarding: lib: Add helpers to build IGMP/MLD leave packets
    https://git.kernel.org/netdev/net-next/c/9ae854697317
  - [net-next,v3,16/16] selftests: forwarding: bridge_mdb_max: Add a new selftest
    https://git.kernel.org/netdev/net-next/c/3446dcd7df05

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


