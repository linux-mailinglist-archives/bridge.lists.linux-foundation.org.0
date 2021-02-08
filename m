Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBFF314447
	for <lists.bridge@lfdr.de>; Tue,  9 Feb 2021 00:50:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C7F8A871AD;
	Mon,  8 Feb 2021 23:50:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FRswd8ZXSf6y; Mon,  8 Feb 2021 23:50:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8A04E871B3;
	Mon,  8 Feb 2021 23:50:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6409DC013A;
	Mon,  8 Feb 2021 23:50:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AC816C013A
 for <bridge@lists.linux-foundation.org>; Mon,  8 Feb 2021 23:50:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 91CD6871AE
 for <bridge@lists.linux-foundation.org>; Mon,  8 Feb 2021 23:50:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5rqyzy6pWCMX for <bridge@lists.linux-foundation.org>;
 Mon,  8 Feb 2021 23:50:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6049E871AD
 for <bridge@lists.linux-foundation.org>; Mon,  8 Feb 2021 23:50:13 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id E11F564E9A;
 Mon,  8 Feb 2021 23:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612828212;
 bh=NjAn8MpPTmzWARmHQFR2RzaApSx+avbx9XsS1V8KTog=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=iSxfNBrFVPoD2Y6z3cnNaOcfEzEXOnJB7E0bHeTPCQy8fY+LmIIcR1E0AGkBAnJxm
 QW1v9CJuk6m3dttqbqzpQobs7uorl3GjfUctqmcEX/kQ+M5VJoKTpRxutUjbVHg8Vu
 9ziowIRC7VxNNPt5+apKc3o80W7VHV6FIf7kdZqD3S7QdxSrwsDDcp3L2jHVkIeYTD
 hlv66F1n5rRrol1sRIdEDLQZqiJrxkdfcpj6DwtKNZ5TRjLVE87umQTImnWb2ZCuHi
 LJEewoaBhf9Ixb5/x2uzFwfc9N8D1CmmlfuG6DUYP4Bv3JlQ407BuV0mn7MGLeWJAy
 bUF0WREiM365A==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id D8A68609D2;
 Mon,  8 Feb 2021 23:50:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161282821288.13069.16334035236215483610.git-patchwork-notify@kernel.org>
Date: Mon, 08 Feb 2021 23:50:12 +0000
References: <20210207194733.1811529-1-olteanv@gmail.com>
In-Reply-To: <20210207194733.1811529-1-olteanv@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, vivien.didelot@gmail.com, idosch@idosch.org,
 nikolay@nvidia.com, roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net] net: bridge: use switchdev for port flags
 set through sysfs too
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

This patch was applied to netdev/net-next.git (refs/heads/master):

On Sun,  7 Feb 2021 21:47:33 +0200 you wrote:
> From: Vladimir Oltean <vladimir.oltean@nxp.com>
> 
> Looking through patchwork I don't see that there was any consensus to
> use switchdev notifiers only in case of netlink provided port flags but
> not sysfs (as a sort of deprecation, punishment or anything like that),
> so we should probably keep the user interface consistent in terms of
> functionality.
> 
> [...]

Here is the summary with links:
  - [net] net: bridge: use switchdev for port flags set through sysfs too
    https://git.kernel.org/netdev/net-next/c/8043c845b63a

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


