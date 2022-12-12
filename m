Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3BE64ABA1
	for <lists.bridge@lfdr.de>; Tue, 13 Dec 2022 00:40:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 19DB7405FA;
	Mon, 12 Dec 2022 23:40:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 19DB7405FA
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=XkhVWAFC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5bWIWuWhVt_g; Mon, 12 Dec 2022 23:40:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 59D644023B;
	Mon, 12 Dec 2022 23:40:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 59D644023B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EC143C0078;
	Mon, 12 Dec 2022 23:40:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 524C2C002D
 for <bridge@lists.linux-foundation.org>; Mon, 12 Dec 2022 23:40:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1F6B481383
 for <bridge@lists.linux-foundation.org>; Mon, 12 Dec 2022 23:40:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F6B481383
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=XkhVWAFC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EMWn6r8FbhGg for <bridge@lists.linux-foundation.org>;
 Mon, 12 Dec 2022 23:40:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D437E8131D
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D437E8131D
 for <bridge@lists.linux-foundation.org>; Mon, 12 Dec 2022 23:40:20 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id B0DB461298;
 Mon, 12 Dec 2022 23:40:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1A6E7C433F0;
 Mon, 12 Dec 2022 23:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1670888419;
 bh=xsCcvgJQhWDNSljlVfe8OtCKbisyBLH9xrPyC+bNdL0=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=XkhVWAFCNAe/f27EuGFA9HPO7HmDcIryl2jbgVZCL0SA3a8q0TBc9k9DZIbFtOR5k
 /3B+y/WN2ns9LjGgDVmtc92Sk6WCzP4kJvxESj7N5OUgN/GNiZh5mZ0GaKcZjA2DNn
 1pjfu9jW9cUGhx8eh8zye5jP4b/JZqXW3Te/gCQQvgqNvXx6cWmGxVVpO0G3icI4bU
 luUwQyMA9H5/AqfhUmmdcgPQfxdXcszxAjwVLBFxtSEwPqi3WuotCZnB6IN6xkNMUS
 sWiamiscEaHC85cWG3fBXk881bZno8Bbf1LZVfnjK99WuCqgONyM/L9+oP2JPTd0l3
 eoDlUt3Q2cNWQ==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 01C4BC00445; Mon, 12 Dec 2022 23:40:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <167088841900.5876.16567042596931057102.git-patchwork-notify@kernel.org>
Date: Mon, 12 Dec 2022 23:40:19 +0000
References: <20221210145633.1328511-1-idosch@nvidia.com>
In-Reply-To: <20221210145633.1328511-1-idosch@nvidia.com>
To: Ido Schimmel <idosch@nvidia.com>
Cc: netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, edumazet@google.com, mlxsw@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 00/14] bridge: mcast: Extensions
	for EVPN
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

On Sat, 10 Dec 2022 16:56:19 +0200 you wrote:
> tl;dr
> =====
> 
> This patchset creates feature parity between user space and the kernel
> and allows the former to install and replace MDB port group entries with
> a source list and associated filter mode. This is required for EVPN use
> cases where multicast state is not derived from snooped IGMP/MLD
> packets, but instead derived from EVPN routes exchanged by the control
> plane in user space.
> 
> [...]

Here is the summary with links:
  - [net-next,v2,01/14] bridge: mcast: Do not derive entry type from its filter mode
    https://git.kernel.org/netdev/net-next/c/b63e30651c59
  - [net-next,v2,02/14] bridge: mcast: Split (*, G) and (S, G) addition into different functions
    https://git.kernel.org/netdev/net-next/c/6ff1e68eb215
  - [net-next,v2,03/14] bridge: mcast: Place netlink policy before validation functions
    https://git.kernel.org/netdev/net-next/c/1870a2d35abb
  - [net-next,v2,04/14] bridge: mcast: Add a centralized error path
    https://git.kernel.org/netdev/net-next/c/160dd93114dd
  - [net-next,v2,05/14] bridge: mcast: Expose br_multicast_new_group_src()
    https://git.kernel.org/netdev/net-next/c/fd0c696164cf
  - [net-next,v2,06/14] bridge: mcast: Expose __br_multicast_del_group_src()
    https://git.kernel.org/netdev/net-next/c/083e353482b4
  - [net-next,v2,07/14] bridge: mcast: Add a flag for user installed source entries
    https://git.kernel.org/netdev/net-next/c/a01ecb1712dd
  - [net-next,v2,08/14] bridge: mcast: Avoid arming group timer when (S, G) corresponds to a source
    https://git.kernel.org/netdev/net-next/c/079afd66161b
  - [net-next,v2,09/14] bridge: mcast: Add support for (*, G) with a source list and filter mode
    https://git.kernel.org/netdev/net-next/c/b1c8fec8d459
  - [net-next,v2,10/14] bridge: mcast: Allow user space to add (*, G) with a source list and filter mode
    https://git.kernel.org/netdev/net-next/c/6afaae6d12f5
  - [net-next,v2,11/14] bridge: mcast: Allow user space to specify MDB entry routing protocol
    https://git.kernel.org/netdev/net-next/c/1d7b66a7d975
  - [net-next,v2,12/14] bridge: mcast: Support replacement of MDB port group entries
    https://git.kernel.org/netdev/net-next/c/61f2183512a7
  - [net-next,v2,13/14] selftests: forwarding: Rename bridge_mdb test
    https://git.kernel.org/netdev/net-next/c/f9923a67ab62
  - [net-next,v2,14/14] selftests: forwarding: Add bridge MDB test
    https://git.kernel.org/netdev/net-next/c/b6d00da08610

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


