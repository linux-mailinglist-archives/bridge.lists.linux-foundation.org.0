Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DDC2DA642
	for <lists.bridge@lfdr.de>; Tue, 15 Dec 2020 03:32:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 57A7F86142;
	Tue, 15 Dec 2020 02:32:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eAV-aHR-DpAs; Tue, 15 Dec 2020 02:32:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3B4B8869EA;
	Tue, 15 Dec 2020 02:32:48 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 11C4CC1D9F;
	Tue, 15 Dec 2020 02:32:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 39EF3C013B
 for <bridge@lists.linux-foundation.org>; Tue, 15 Dec 2020 02:32:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1F3DC874D4
 for <bridge@lists.linux-foundation.org>; Tue, 15 Dec 2020 02:32:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DmBuGHkz3h6H for <bridge@lists.linux-foundation.org>;
 Tue, 15 Dec 2020 02:32:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 81D228725E
 for <bridge@lists.linux-foundation.org>; Tue, 15 Dec 2020 02:32:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607999565;
 bh=WYSwvgrlDpQVIIDoaLii3hzyMGUXaw29yrS/HV62spw=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=UZnv4UZ2yINMawrYcI650sixxc7fh+r4xlhZ7p5Xuuz7u8ZXTlKowaes8XCCHAeSp
 0wdof3vABQeaoW42Cb3oaWAUUpmERYYcXzChOfHymbYDL/ho4IdX1wCdgR/SUFP2+5
 YXMfDl+O4q6dhzGzJ0JmHBgAIJG5o1zY41ASWvG2CGolJ65ikDWMf5sIK2bvh6hG97
 I6GTV1ECISIKctHWpnRBtEtCQZjcQJSkUi+zpOqfKa0rF0B4n7ygGSqzFMFY0tLMyh
 xV/J5i5T+X5YVMPIc9rUCCqPSrBdvfLvjON7rjtnlc9dkUIVMQohdHs96BgisGhiGD
 RUpbrSCBtceXQ==
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <160799956512.31445.17200550488514446402.git-patchwork-notify@kernel.org>
Date: Tue, 15 Dec 2020 02:32:45 +0000
References: <20201211122921.40386-1-wanghai38@huawei.com>
In-Reply-To: <20201211122921.40386-1-wanghai38@huawei.com>
To: Wang Hai <wanghai38@huawei.com>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, nikolay@nvidia.com, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2] net: bridge: Fix a warning when del bridge
	sysfs
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

On Fri, 11 Dec 2020 20:29:21 +0800 you wrote:
> I got a warining report:
> 
> br_sysfs_addbr: can't create group bridge4/bridge
> ------------[ cut here ]------------
> sysfs group 'bridge' not found for kobject 'bridge4'
> WARNING: CPU: 2 PID: 9004 at fs/sysfs/group.c:279 sysfs_remove_group fs/sysfs/group.c:279 [inline]
> WARNING: CPU: 2 PID: 9004 at fs/sysfs/group.c:279 sysfs_remove_group+0x153/0x1b0 fs/sysfs/group.c:270
> Modules linked in: iptable_nat
> ...
> Call Trace:
>   br_dev_delete+0x112/0x190 net/bridge/br_if.c:384
>   br_dev_newlink net/bridge/br_netlink.c:1381 [inline]
>   br_dev_newlink+0xdb/0x100 net/bridge/br_netlink.c:1362
>   __rtnl_newlink+0xe11/0x13f0 net/core/rtnetlink.c:3441
>   rtnl_newlink+0x64/0xa0 net/core/rtnetlink.c:3500
>   rtnetlink_rcv_msg+0x385/0x980 net/core/rtnetlink.c:5562
>   netlink_rcv_skb+0x134/0x3d0 net/netlink/af_netlink.c:2494
>   netlink_unicast_kernel net/netlink/af_netlink.c:1304 [inline]
>   netlink_unicast+0x4a0/0x6a0 net/netlink/af_netlink.c:1330
>   netlink_sendmsg+0x793/0xc80 net/netlink/af_netlink.c:1919
>   sock_sendmsg_nosec net/socket.c:651 [inline]
>   sock_sendmsg+0x139/0x170 net/socket.c:671
>   ____sys_sendmsg+0x658/0x7d0 net/socket.c:2353
>   ___sys_sendmsg+0xf8/0x170 net/socket.c:2407
>   __sys_sendmsg+0xd3/0x190 net/socket.c:2440
>   do_syscall_64+0x33/0x40 arch/x86/entry/common.c:46
>   entry_SYSCALL_64_after_hwframe+0x44/0xa9
> 
> [...]

Here is the summary with links:
  - [v2] net: bridge: Fix a warning when del bridge sysfs
    https://git.kernel.org/netdev/net-next/c/989a1db06eb1

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


