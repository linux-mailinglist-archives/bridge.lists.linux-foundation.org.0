Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A51823CFB95
	for <lists.bridge@lfdr.de>; Tue, 20 Jul 2021 16:10:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2782403B7;
	Tue, 20 Jul 2021 14:10:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w9IPBRqnhWwv; Tue, 20 Jul 2021 14:10:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id E6DAA403DD;
	Tue, 20 Jul 2021 14:10:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AB2A3C0022;
	Tue, 20 Jul 2021 14:10:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E3587C000E
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jul 2021 14:10:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D1A0583566
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jul 2021 14:10:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 24kb4WsHGn3m for <bridge@lists.linux-foundation.org>;
 Tue, 20 Jul 2021 14:10:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2B0858355C
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jul 2021 14:10:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 9C67B611C1;
 Tue, 20 Jul 2021 14:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626790205;
 bh=QHPi1SgHTJ+jVsXJuZMmsL5Frcd/QclJHG3SP/hUrmI=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=f9Ss/cYPiIqd0kwgavL8JGXr/iJ0Hubg74x08cT2HRgshNIQOUzBzbnlsnYnFM4Eo
 X6W1BEE3paPlTBefsC/hmjSEtbye9LfFhKYfFbiDEuTuVVghG7rP9bD3cuFzctmOBt
 16SWDjarBbhdA/X2dGNICH7ZI3iEpJK4lyqHjWpeczFSCk/ItuhoiCo6Hc+am937jf
 BwkcK0twzsrlwsnyXDseSxnFGpoL96ctOc5Yd3ClizcyMs9EbH+n2QGUWc3xvhUuyA
 RxISjH+NACMO7Q5oVng58dDjyGjHjVHb/5z6WkEln9qsjHilMMXPJRrEtB0hZxiSGA
 FjS9znfn7mcZQ==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 9430D60CCF;
 Tue, 20 Jul 2021 14:10:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162679020560.11280.5860965048088740851.git-patchwork-notify@kernel.org>
Date: Tue, 20 Jul 2021 14:10:05 +0000
References: <20210719135140.278938-1-vladimir.oltean@nxp.com>
In-Reply-To: <20210719135140.278938-1-vladimir.oltean@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us, dqfext@gmail.com,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 vivien.didelot@gmail.com, idosch@idosch.org, nikolay@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net, tobias@waldekranz.com
Subject: Re: [Bridge] [PATCH net-next 0/3] Fan out FDB entries pointing
 towards the bridge to all switchdev member ports
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

This series was applied to netdev/net-next.git (refs/heads/master):

On Mon, 19 Jul 2021 16:51:37 +0300 you wrote:
> The "DSA RX filtering" series has added some important support for
> interpreting addresses towards the bridge device as host addresses and
> installing them as FDB entries towards the CPU port, but it does not
> cover all circumstances and needs further work.
> 
> To be precise, the mechanism introduced in that series only works as
> long as the ports are fairly static and no port joins or leaves the
> bridge once the configuration is done. If any port leaves, host FDB
> entries that were installed during runtime (for example the user changes
> the MAC address of the bridge device) will be prematurely deleted,
> resulting in a broken setup.
> 
> [...]

Here is the summary with links:
  - [net-next,1/3] net: switchdev: introduce helper for checking dynamically learned FDB entries
    https://git.kernel.org/netdev/net-next/c/c6451cda100d
  - [net-next,2/3] net: switchdev: introduce a fanout helper for SWITCHDEV_FDB_{ADD,DEL}_TO_DEVICE
    https://git.kernel.org/netdev/net-next/c/8ca07176ab00
  - [net-next,3/3] net: dsa: use switchdev_handle_fdb_{add,del}_to_device
    https://git.kernel.org/netdev/net-next/c/b94dc99c0ddb

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


