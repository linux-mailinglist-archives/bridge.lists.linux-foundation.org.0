Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9053E8458
	for <lists.bridge@lfdr.de>; Tue, 10 Aug 2021 22:30:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 16489401A3;
	Tue, 10 Aug 2021 20:30:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8U74RI0v0p9Q; Tue, 10 Aug 2021 20:30:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 921724020D;
	Tue, 10 Aug 2021 20:30:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 63C10C0022;
	Tue, 10 Aug 2021 20:30:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5175CC000E
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 20:30:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2D793819F3
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 20:30:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CzjFO1aTtYK2 for <bridge@lists.linux-foundation.org>;
 Tue, 10 Aug 2021 20:30:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7592882A8F
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 20:30:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id E2E0C61052;
 Tue, 10 Aug 2021 20:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628627405;
 bh=NfvKcTCoRw6qOrd/NoyNgr/n2gMi1V/sk94m5s9Pk8I=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=M09AcgiwlUPRRk+FCI0xNoAlfci1NpU7tpJikKy9VttiJhiulhQIX7rT/C+Snghqs
 d1/KZiFjW1XbASAtAg4BU1H+YzZmL/zSJdR1vTMjs0iEca4w5YjlroHZiOumcHIhyH
 90Kk1uu0hRSXNCd3RDDzgKYvkEJNU72ABQoYQV42o2GRfIt/E3YOcM/an6eCXeDGEl
 yPbGwHnjLPUP968mtdnjU/xahb2yrbtnh3M+7OyR6v1wyPkNKQc1uOKztewdOuU44+
 UcY0qfKmzX8xzCxMiDn8rz0DW6a6sbK6gdMjt4RZHfGbpUUDx9jRovHxVwD/dhc+/V
 lQXhl3VHGRXIg==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id D7C1C60986;
 Tue, 10 Aug 2021 20:30:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162862740587.16281.11828580548669210727.git-patchwork-notify@kernel.org>
Date: Tue, 10 Aug 2021 20:30:05 +0000
References: <20210809132023.978546-1-yangyingliang@huawei.com>
In-Reply-To: <20210809132023.978546-1-yangyingliang@huawei.com>
To: Yang Yingliang <yangyingliang@huawei.com>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, nikolay@nvidia.com, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net v3] net: bridge: fix memleak in br_add_if()
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

On Mon, 9 Aug 2021 21:20:23 +0800 you wrote:
> I got a memleak report:
> 
> BUG: memory leak
> unreferenced object 0x607ee521a658 (size 240):
> comm "syz-executor.0", pid 955, jiffies 4294780569 (age 16.449s)
> hex dump (first 32 bytes, cpu 1):
> 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
> 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
> backtrace:
> [<00000000d830ea5a>] br_multicast_add_port+0x1c2/0x300 net/bridge/br_multicast.c:1693
> [<00000000274d9a71>] new_nbp net/bridge/br_if.c:435 [inline]
> [<00000000274d9a71>] br_add_if+0x670/0x1740 net/bridge/br_if.c:611
> [<0000000012ce888e>] do_set_master net/core/rtnetlink.c:2513 [inline]
> [<0000000012ce888e>] do_set_master+0x1aa/0x210 net/core/rtnetlink.c:2487
> [<0000000099d1cafc>] __rtnl_newlink+0x1095/0x13e0 net/core/rtnetlink.c:3457
> [<00000000a01facc0>] rtnl_newlink+0x64/0xa0 net/core/rtnetlink.c:3488
> [<00000000acc9186c>] rtnetlink_rcv_msg+0x369/0xa10 net/core/rtnetlink.c:5550
> [<00000000d4aabb9c>] netlink_rcv_skb+0x134/0x3d0 net/netlink/af_netlink.c:2504
> [<00000000bc2e12a3>] netlink_unicast_kernel net/netlink/af_netlink.c:1314 [inline]
> [<00000000bc2e12a3>] netlink_unicast+0x4a0/0x6a0 net/netlink/af_netlink.c:1340
> [<00000000e4dc2d0e>] netlink_sendmsg+0x789/0xc70 net/netlink/af_netlink.c:1929
> [<000000000d22c8b3>] sock_sendmsg_nosec net/socket.c:654 [inline]
> [<000000000d22c8b3>] sock_sendmsg+0x139/0x170 net/socket.c:674
> [<00000000e281417a>] ____sys_sendmsg+0x658/0x7d0 net/socket.c:2350
> [<00000000237aa2ab>] ___sys_sendmsg+0xf8/0x170 net/socket.c:2404
> [<000000004f2dc381>] __sys_sendmsg+0xd3/0x190 net/socket.c:2433
> [<0000000005feca6c>] do_syscall_64+0x37/0x90 arch/x86/entry/common.c:47
> [<000000007304477d>] entry_SYSCALL_64_after_hwframe+0x44/0xae
> 
> [...]

Here is the summary with links:
  - [net,v3] net: bridge: fix memleak in br_add_if()
    https://git.kernel.org/netdev/net/c/519133debcc1

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


