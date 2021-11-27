Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5C645F7C9
	for <lists.bridge@lfdr.de>; Sat, 27 Nov 2021 02:06:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB46640424;
	Sat, 27 Nov 2021 01:06:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XYu6L96TmZxi; Sat, 27 Nov 2021 01:06:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 5E3EC40423;
	Sat, 27 Nov 2021 01:06:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 09B5FC003C;
	Sat, 27 Nov 2021 01:06:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 182FDC000A
 for <bridge@lists.linux-foundation.org>; Sat, 27 Nov 2021 01:06:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EC1DB40287
 for <bridge@lists.linux-foundation.org>; Sat, 27 Nov 2021 01:06:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v6ktdoqtTDdT for <bridge@lists.linux-foundation.org>;
 Sat, 27 Nov 2021 01:06:37 +0000 (UTC)
X-Greylist: delayed 00:16:22 by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BD9644011A
 for <bridge@lists.linux-foundation.org>; Sat, 27 Nov 2021 01:06:37 +0000 (UTC)
Received: from mail.kernel.org (unknown [198.145.29.99])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id B1158B8299B;
 Sat, 27 Nov 2021 00:50:12 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id F26B560184;
 Sat, 27 Nov 2021 00:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637974211;
 bh=EarPkweg4UnWm9uw10OFHIej96e5uO9r33AWb4rEu0E=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=IO5Z9Dz4bwfCImj2V4USiaLrcXQxUzRvOyMrKCoD9jMw5y9j/X4i2kmeNKoFzi7GW
 K6YoTU2lPH10qWPc9x14dByXOF6AyqOHpvOzGbEmeI/CMRgidt+LKsNMCmeJVFYlVP
 YyHHjIIiqWWQ/A/AZ2f5TongtbK7CHDZmNMjNAgfCRnElCSFw7gXFAClXPKFqx4Q0F
 hU4p2rEkNh+ZIkiynis76nSJiBUtmkn2RmsUUUT0/0JTZp1mKg32xTPABQZakzUgIH
 v3dyMFnvNYeqjPg1vaQ+588NvvspR33sJIYjk+EDrqUBjVPmMqHJVsSARkNMN47SBY
 1ZPEr/6uV85AA==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id E3853609D2;
 Sat, 27 Nov 2021 00:50:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <163797421092.20298.18145877427977239715.git-patchwork-notify@kernel.org>
Date: Sat, 27 Nov 2021 00:50:10 +0000
References: <20211125140858.3639139-1-razor@blackwall.org>
In-Reply-To: <20211125140858.3639139-1-razor@blackwall.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Cc: ivecera@redhat.com, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, nikolay@nvidia.com, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 00/10] selftests: net: bridge: vlan
	multicast tests
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

On Thu, 25 Nov 2021 16:08:48 +0200 you wrote:
> From: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> Hi,
> This patch-set adds selftests for the new vlan multicast options that
> were recently added. Most of the tests check for default values,
> changing options and try to verify that the changes actually take
> effect. The last test checks if the dependency between vlan_filtering
> and mcast_vlan_snooping holds. The rest are pretty self-explanatory.
> 
> [...]

Here is the summary with links:
  - [net-next,01/10] selftests: net: bridge: add vlan mcast snooping control test
    https://git.kernel.org/netdev/net-next/c/71ae450f97ad
  - [net-next,02/10] selftests: net: bridge: add vlan mcast querier test
    https://git.kernel.org/netdev/net-next/c/dee2cdc0e3bb
  - [net-next,03/10] selftests: net: bridge: add vlan mcast igmp/mld version tests
    https://git.kernel.org/netdev/net-next/c/2b75e9dd580c
  - [net-next,04/10] selftests: net: bridge: add vlan mcast_last_member_count/interval tests
    https://git.kernel.org/netdev/net-next/c/3825f1fb675b
  - [net-next,05/10] selftests: net: bridge: add vlan mcast_startup_query_count/interval tests
    https://git.kernel.org/netdev/net-next/c/bdf1b2c05e09
  - [net-next,06/10] selftests: net: bridge: add vlan mcast_membership_interval test
    https://git.kernel.org/netdev/net-next/c/a45fe9741736
  - [net-next,07/10] selftests: net: bridge: add vlan mcast_querier_interval tests
    https://git.kernel.org/netdev/net-next/c/4d8610ee8bd7
  - [net-next,08/10] selftests: net: bridge: add vlan mcast query and query response interval tests
    https://git.kernel.org/netdev/net-next/c/b4ce7b9523c4
  - [net-next,09/10] selftests: net: bridge: add vlan mcast_router tests
    https://git.kernel.org/netdev/net-next/c/2cd67a4e278e
  - [net-next,10/10] selftests: net: bridge: add test for vlan_filtering dependency
    https://git.kernel.org/netdev/net-next/c/f5a9dd58f48b

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


