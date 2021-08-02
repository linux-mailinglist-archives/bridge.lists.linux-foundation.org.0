Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 30CC33DE220
	for <lists.bridge@lfdr.de>; Tue,  3 Aug 2021 00:10:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 89BCC82AA9;
	Mon,  2 Aug 2021 22:10:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qtyWTHcn-4jO; Mon,  2 Aug 2021 22:10:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 06DDE82A5D;
	Mon,  2 Aug 2021 22:10:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B89AFC001F;
	Mon,  2 Aug 2021 22:10:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9B7B9C000E
 for <bridge@lists.linux-foundation.org>; Mon,  2 Aug 2021 22:10:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 887D54015C
 for <bridge@lists.linux-foundation.org>; Mon,  2 Aug 2021 22:10:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CuKWL7MxCmUn for <bridge@lists.linux-foundation.org>;
 Mon,  2 Aug 2021 22:10:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CFBB8400A9
 for <bridge@lists.linux-foundation.org>; Mon,  2 Aug 2021 22:10:05 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 6AAE260F41;
 Mon,  2 Aug 2021 22:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1627942205;
 bh=e5HDMNUVxVAnWFs/XGtwxzLKoFESQ+SzcrhLxmZo8zg=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=InovInF8f2mareLTbC6Wt0YD97o8jR6KgUl6sKw2lvgXEdSQfKeJow7A7OV3yeeXD
 b7gvxSZtE3F2Tqnp9x71oVjtzswPEHg1YNnOYwaW+7RiKIBv+UfTVMX7gsLsZGOyNe
 VjDn7FK4FdFP//qRsXue8VJFX7EeX6WaHknB6xOyGBCxOiD5Ai0Dfyee3oLvR2CzPx
 14B8yrHBNcSjp21XzoD8HO4LI6T9d3D79hYt/B0NHa7kpfCtBZ3s3FWKMHTyPqmLIX
 bp9UKpdH6/4VayzCe5hU/cLWxBTpdpgkTbkEeaonMmrU6DjPaYAYz1wu5AzMsgTO7b
 v5mnSL8q2FASQ==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 5A44C60A44;
 Mon,  2 Aug 2021 22:10:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162794220536.7989.3987115619010185604.git-patchwork-notify@kernel.org>
Date: Mon, 02 Aug 2021 22:10:05 +0000
References: <20210801231730.7493-1-vladimir.oltean@nxp.com>
In-Reply-To: <20210801231730.7493-1-vladimir.oltean@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: syzbot+9ba1174359adba5a5b7c@syzkaller.appspotmail.com, jiri@resnulli.us,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 syzkaller-bugs@googlegroups.com, idosch@idosch.org, nikolay@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net] net: bridge: validate the NUD_PERMANENT
 bit when adding an extern_learn FDB entry
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

On Mon,  2 Aug 2021 02:17:30 +0300 you wrote:
> Currently it is possible to add broken extern_learn FDB entries to the
> bridge in two ways:
> 
> 1. Entries pointing towards the bridge device that are not local/permanent:
> 
> ip link add br0 type bridge
> bridge fdb add 00:01:02:03:04:05 dev br0 self extern_learn static
> 
> [...]

Here is the summary with links:
  - [net] net: bridge: validate the NUD_PERMANENT bit when adding an extern_learn FDB entry
    https://git.kernel.org/netdev/net/c/0541a6293298

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


