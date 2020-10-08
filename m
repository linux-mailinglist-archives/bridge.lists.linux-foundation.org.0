Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B3AFE2884D9
	for <lists.bridge@lfdr.de>; Fri,  9 Oct 2020 10:05:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A49598769A;
	Fri,  9 Oct 2020 08:05:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ui8Nx4iaXU6m; Fri,  9 Oct 2020 08:05:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id AE80387699;
	Fri,  9 Oct 2020 08:05:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8D601C07FF;
	Fri,  9 Oct 2020 08:05:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EB9FEC0051
 for <bridge@lists.linux-foundation.org>; Thu,  8 Oct 2020 20:00:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D8A6E2E1B8
 for <bridge@lists.linux-foundation.org>; Thu,  8 Oct 2020 20:00:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U6LFSTF1mwmS for <bridge@lists.linux-foundation.org>;
 Thu,  8 Oct 2020 20:00:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id AD15B2E1B3
 for <bridge@lists.linux-foundation.org>; Thu,  8 Oct 2020 20:00:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602187205;
 bh=1WhE5EzPegLl39at06cilTCOFsyWTja12hZlDpWb/d4=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=Ev69BPsUnGFThD4QuhjsMdaITkLXmaCxF1IF1nEtbtZ5WyP0MB4/DF23UujrfOZEb
 k2v9b6PnFSqsV+R6ZwBZswxvbCsO+YnCkhirg4GIo93a9y3C6Z7/rovZElPtaLdXEh
 fNDquAxg25EMer+Ql6/V8t3O+arZ7XN/drZBZbEE=
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <160218720516.8125.842220080436586129.git-patchwork-notify@kernel.org>
Date: Thu, 08 Oct 2020 20:00:05 +0000
References: <20201007120700.2152699-1-henrik.bjoernlund@microchip.com>
In-Reply-To: <20201007120700.2152699-1-henrik.bjoernlund@microchip.com>
To: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
X-Mailman-Approved-At: Fri, 09 Oct 2020 08:05:40 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com, nikolay@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, horatiu.vultur@microchip.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net] bridge: Netlink interface fix.
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

On Wed, 7 Oct 2020 12:07:00 +0000 you wrote:
> This commit is correcting NETLINK br_fill_ifinfo() to be able to
> handle 'filter_mask' with multiple flags asserted.
> 
> Fixes: 36a8e8e265420 ("bridge: Extend br_fill_ifinfo to return MPR status")
> 
> Signed-off-by: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
> Reviewed-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> Suggested-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> Tested-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> 
> [...]

Here is the summary with links:
  - [net] bridge: Netlink interface fix.
    https://git.kernel.org/netdev/net/c/b6c02ef54913

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


