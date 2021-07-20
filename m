Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2E93CF8B7
	for <lists.bridge@lfdr.de>; Tue, 20 Jul 2021 13:20:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 51007607FE;
	Tue, 20 Jul 2021 11:20:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WXOQM9-yJQjK; Tue, 20 Jul 2021 11:20:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id B920A60A95;
	Tue, 20 Jul 2021 11:20:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6B57EC0022;
	Tue, 20 Jul 2021 11:20:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C43DBC000E
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jul 2021 11:20:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A55CE83A5A
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jul 2021 11:20:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YjNk8OYd4zjY for <bridge@lists.linux-foundation.org>;
 Tue, 20 Jul 2021 11:20:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0F0F183A54
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jul 2021 11:20:05 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 9B86F61165;
 Tue, 20 Jul 2021 11:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626780005;
 bh=bjCSTDsNnZcM6Rf4+njSyX2tnJwMT/TUdE6nL7Hn3mM=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=LURPow1Brmq+EUDGnp0EepLdaA+525NP7HRJgQWy0TzfzbiWkOKdBK9vMnQdigL/c
 KOyB2Tn8qM1MMZW+Ivy7ZeUgLcHyj4kbEM8wlOjghQAMY4lpWWo14hj/xW9Lrd5VJP
 3mUhcwslbN/Tdb+5VuvkVTZXoCl1CwUNHUMrN+zp3iQSalpz/arLX5rLg5HTu70Rex
 ROmk07Yxx534punF6Nk38RiYfgBSTDqORPA9RFAco1XM4SYrOWRwaTL9W2dMEoqiUz
 F36K8MOXjXeQUb5PdU78siOa9xTFb1sbbx4+qa0I9mRl/mXIDsv5up4vwEllxlOCFc
 UAh+nsutWgOaA==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 8F74560CCF;
 Tue, 20 Jul 2021 11:20:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162678000558.21231.2477207642313158352.git-patchwork-notify@kernel.org>
Date: Tue, 20 Jul 2021 11:20:05 +0000
References: <20210719093916.4099032-1-vladimir.oltean@nxp.com>
In-Reply-To: <20210719093916.4099032-1-vladimir.oltean@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 vivien.didelot@gmail.com, idosch@idosch.org, nikolay@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net, tobias@waldekranz.com
Subject: Re: [Bridge] [PATCH net] net: bridge: do not replay fdb entries
 pointing towards the bridge twice
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

This patch was applied to netdev/net.git (refs/heads/master):

On Mon, 19 Jul 2021 12:39:16 +0300 you wrote:
> This simple script:
> 
> ip link add br0 type bridge
> ip link set swp2 master br0
> ip link set br0 address 00:01:02:03:04:05
> ip link del br0
> 
> [...]

Here is the summary with links:
  - [net] net: bridge: do not replay fdb entries pointing towards the bridge twice
    https://git.kernel.org/netdev/net/c/cbb56b03ec3f

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


