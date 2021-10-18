Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 057AF431882
	for <lists.bridge@lfdr.de>; Mon, 18 Oct 2021 14:10:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A5E186080C;
	Mon, 18 Oct 2021 12:10:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SnBVWv0WT8-Z; Mon, 18 Oct 2021 12:10:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 358D660883;
	Mon, 18 Oct 2021 12:10:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EDF42C001E;
	Mon, 18 Oct 2021 12:10:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CD510C000D
 for <bridge@lists.linux-foundation.org>; Mon, 18 Oct 2021 12:10:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ADBB860818
 for <bridge@lists.linux-foundation.org>; Mon, 18 Oct 2021 12:10:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b-D7AgymGKq8 for <bridge@lists.linux-foundation.org>;
 Mon, 18 Oct 2021 12:10:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A88E16080C
 for <bridge@lists.linux-foundation.org>; Mon, 18 Oct 2021 12:10:11 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 3D2D161351;
 Mon, 18 Oct 2021 12:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634559011;
 bh=HqaSPhUMlFlcfNoprF3LE///eSpUVIhd/IiotTyQ6o4=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=lNk3VSo6ST1EAX8d4naHiv4PcjmuiBL57/1MdRtVgD7TbouYUP39Vpq49Kye9Xy3Z
 MU9nso5x0zCzVmXkWgqgUHwttllaNAfhyTMT2lHxtsdZYdEf+V4hs9BtqCSUKmei8D
 4ItRpDCRo56EtBYbwfG2jjvKakDUCqHWp42FTtBbUgusyvJOv6Ds54oM6yyjzEZKSx
 MtoDJeRoGFa1z8j3rS5q5h/6HMrLOz02OLcXVSFMCt51gnhljdrrZXwMkb/b6pdLeo
 xlvJ4RmqV+F9YipzHKdvRFNmFFNWYMlSvMgWR3XU0CjYAvtCp3w+jrzZS5p2uVd093
 jCsDbtQ0BtXKw==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 35F0860971;
 Mon, 18 Oct 2021 12:10:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <163455901121.7340.10701802688930426386.git-patchwork-notify@kernel.org>
Date: Mon, 18 Oct 2021 12:10:11 +0000
References: <20211016112137.18858-1-acadx0@gmail.com>
In-Reply-To: <20211016112137.18858-1-acadx0@gmail.com>
To: Kyungrok Chung <acadx0@gmail.com>
Cc: bridge@lists.linux-foundation.org, pablo@netfilter.org,
 coreteam@netfilter.org, mareklindner@neomailbox.ch, sw@simonwunderlich.de,
 fw@strlen.de, b.a.t.m.a.n@lists.open-mesh.org, a@unstable.cc,
 linux-kernel@vger.kernel.org, kadlec@netfilter.org, netdev@vger.kernel.org,
 netfilter-devel@vger.kernel.org, nikolay@nvidia.com, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net, sven@narfation.org
Subject: Re: [Bridge] [PATCH v3 net-next] net: make use of helper
	netif_is_bridge_master()
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
by David S. Miller <davem@davemloft.net>:

On Sat, 16 Oct 2021 20:21:36 +0900 you wrote:
> Make use of netdev helper functions to improve code readability.
> Replace 'dev->priv_flags & IFF_EBRIDGE' with netif_is_bridge_master(dev).
> 
> Signed-off-by: Kyungrok Chung <acadx0@gmail.com>
> ---
> 
> v1->v2:
>   - Apply fixes to batman-adv, core too.
> 
> [...]

Here is the summary with links:
  - [v3,net-next] net: make use of helper netif_is_bridge_master()
    https://git.kernel.org/netdev/net-next/c/254ec036db11

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


