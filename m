Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 132F147E777
	for <lists.bridge@lfdr.de>; Thu, 23 Dec 2021 19:10:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F17D4165F;
	Thu, 23 Dec 2021 18:10:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gaWDNjuS5x68; Thu, 23 Dec 2021 18:10:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id CAFFF4166C;
	Thu, 23 Dec 2021 18:10:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 82A5DC006E;
	Thu, 23 Dec 2021 18:10:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 75056C0012
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 18:10:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5D3184166A
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 18:10:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h7PVWWwckJCs for <bridge@lists.linux-foundation.org>;
 Thu, 23 Dec 2021 18:10:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 881234165F
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 18:10:12 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C855661F44;
 Thu, 23 Dec 2021 18:10:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83803C36AE9;
 Thu, 23 Dec 2021 18:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640283010;
 bh=oyh+QBfNI/GMX9Lq6AawFnQWCAFkjjqO6uAUCAtczVA=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=vL58s+QGCC49AR9aFgbj996Q8JloiwBecYYNRV+G3ws3FU7kOjPe4SVrVLAGLv0PW
 n2YjXmNCpdXwaEyWFzTcMhhpc/r4FWNAczmmkyLj1x1qOg5VEuHgoHFmP6ztXDn7aK
 nQuhCDfIFD8hgXQ8i9s25METHzsd8nEbwX2Mgh3dim9sMM+UU3ZqKATBnM2kxNYn+G
 cq0Gmh0JnqemQwP4q03xdaxXc1WYnDrXjszIKFbHmnorSzNpUywM/YCEHaGfpl3J9M
 RgkPSNpu820hUQXpHutCPw2Tf9BFfPnpOPzBRqd6SCcCQIgx9QGUA9XiV10mZdNAx1
 IB8GsmybKTqHQ==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 6CF4CEAC06B; Thu, 23 Dec 2021 18:10:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <164028301044.27483.17708005720486132473.git-patchwork-notify@kernel.org>
Date: Thu, 23 Dec 2021 18:10:10 +0000
References: <20211222191320.17662-1-repk@triplefau.lt>
In-Reply-To: <20211222191320.17662-1-repk@triplefau.lt>
To: Remi Pommarel <repk@triplefau.lt>
Cc: arnd@arndb.de, netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, nikolay@nvidia.com, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net] net: bridge: fix ioctl old_deviceless
	bridge argument
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

This patch was applied to netdev/net.git (master)
by Jakub Kicinski <kuba@kernel.org>:

On Wed, 22 Dec 2021 20:13:20 +0100 you wrote:
> Commit 561d8352818f ("bridge: use ndo_siocdevprivate") changed the
> source and destination arguments of copy_{to,from}_user in bridge's
> old_deviceless() from args[1] to uarg breaking SIOC{G,S}IFBR ioctls.
> 
> Commit cbd7ad29a507 ("net: bridge: fix ioctl old_deviceless bridge
> argument") fixed only BRCTL_{ADD,DEL}_BRIDGES commands leaving
> BRCTL_GET_BRIDGES one untouched.
> 
> [...]

Here is the summary with links:
  - [net] net: bridge: fix ioctl old_deviceless bridge argument
    https://git.kernel.org/netdev/net/c/d95a56207c07

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


