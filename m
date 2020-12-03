Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CC52CCB5F
	for <lists.bridge@lfdr.de>; Thu,  3 Dec 2020 02:04:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3ACEC87864;
	Thu,  3 Dec 2020 01:04:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1lnTQlwjOHxj; Thu,  3 Dec 2020 01:04:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id EA70187865;
	Thu,  3 Dec 2020 01:04:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C9E69C0FA7;
	Thu,  3 Dec 2020 01:04:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C1021C0FA7
 for <bridge@lists.linux-foundation.org>; Thu,  3 Dec 2020 01:04:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A08658786C
 for <bridge@lists.linux-foundation.org>; Thu,  3 Dec 2020 01:04:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zmCy8xJ22m-W for <bridge@lists.linux-foundation.org>;
 Thu,  3 Dec 2020 01:04:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 82E6187865
 for <bridge@lists.linux-foundation.org>; Thu,  3 Dec 2020 01:04:01 +0000 (UTC)
Date: Wed, 2 Dec 2020 17:03:59 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1606957440;
 bh=e27nxQB6v2bR4jfkrSYiga7jg2DKJygkFb9Kd8AZ4A8=;
 h=From:To:Cc:Subject:In-Reply-To:References:From;
 b=ZBnOAi9moSb5Q48aM5+oabBxGmMJk1G6PX/ufjfMOskIVpIF7i7XT6c6ZVFfc9IM+
 /DhBdmUOnwVWskBIbnP+UMgOimZ7VchF6mgvTlZ8W0l8CfvdiBkpB/m/3dQhLv82KJ
 w2GNUw0On5aoTaoP+0KrnwLE0+cyrBmejs6jbnt5QVLqMNGevgfoujRuv7H+O7euBz
 MTyFGy8PL1RIc5FQMaf3ghHmHDvFT+7BUSEKbvKi6vsY+NA4f7mB2aEdZlArGZfTsl
 uw4c8mVvmT05e0CYutlnGtZIwsfEsJ+q7RfYrEWrgTKBPlKmdcUnNqa0jBuSCE4Ae2
 Q5z+lF3Ph5RSg==
From: Jakub Kicinski <kuba@kernel.org>
To: Wang Hai <wanghai38@huawei.com>
Message-ID: <20201202170359.19330bda@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <20201201140114.67455-1-wanghai38@huawei.com>
References: <20201201140114.67455-1-wanghai38@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, nikolay@nvidia.com, roopa@nvidia.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net] net: bridge: Fix a warning when del bridge
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

On Tue, 1 Dec 2020 22:01:14 +0800 Wang Hai wrote:
> If adding bridge sysfs fails, br->ifobj will be NULL, there is no
> need to delete its non-existent sysfs when deleting the bridge device,
> otherwise, it will cause a warning. So, when br->ifobj == NULL,
> directly return can fix this bug.
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
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Wang Hai <wanghai38@huawei.com>

Nik, is this the way you want to handle this?

Should the notifier not fail if sysfs files cannot be created?
Currently br_sysfs_addbr() returns an int but the only caller 
ignores it.

> diff --git a/net/bridge/br_sysfs_br.c b/net/bridge/br_sysfs_br.c
> index 7db06e3f642a..1e9cbf31d904 100644
> --- a/net/bridge/br_sysfs_br.c
> +++ b/net/bridge/br_sysfs_br.c
> @@ -991,6 +991,9 @@ void br_sysfs_delbr(struct net_device *dev)
>  	struct kobject *kobj = &dev->dev.kobj;
>  	struct net_bridge *br = netdev_priv(dev);
>  
> +	if (!br->ifobj)
> +		return;
> +
>  	kobject_put(br->ifobj);
>  	sysfs_remove_bin_file(kobj, &bridge_forward);
>  	sysfs_remove_group(kobj, &bridge_group);

