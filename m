Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD203EA035
	for <lists.bridge@lfdr.de>; Thu, 12 Aug 2021 10:04:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E82B80AD0;
	Thu, 12 Aug 2021 08:04:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8wQIGxr61Rg7; Thu, 12 Aug 2021 08:04:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 3034380AC6;
	Thu, 12 Aug 2021 08:04:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EE89AC0022;
	Thu, 12 Aug 2021 08:04:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A247BC000E
 for <bridge@lists.linux-foundation.org>; Mon,  9 Aug 2021 02:55:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8BE1D82BF5
 for <bridge@lists.linux-foundation.org>; Mon,  9 Aug 2021 02:55:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zhDsPVUQ32YI for <bridge@lists.linux-foundation.org>;
 Mon,  9 Aug 2021 02:55:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com [45.249.212.255])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 299C282B8C
 for <bridge@lists.linux-foundation.org>; Mon,  9 Aug 2021 02:55:40 +0000 (UTC)
Received: from dggemv703-chm.china.huawei.com (unknown [172.30.72.56])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4GjggJ6G3pz1CTqN;
 Mon,  9 Aug 2021 10:55:24 +0800 (CST)
Received: from dggpeml500017.china.huawei.com (7.185.36.243) by
 dggemv703-chm.china.huawei.com (10.3.19.46) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Mon, 9 Aug 2021 10:55:36 +0800
Received: from huawei.com (10.175.103.91) by dggpeml500017.china.huawei.com
 (7.185.36.243) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Mon, 9 Aug 2021
 10:55:35 +0800
From: Yang Yingliang <yangyingliang@huawei.com>
To: <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Mon, 9 Aug 2021 11:01:35 +0800
Message-ID: <20210809030135.2445844-1-yangyingliang@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.175.103.91]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpeml500017.china.huawei.com (7.185.36.243)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Thu, 12 Aug 2021 08:04:23 +0000
Cc: kuba@kernel.org, davem@davemloft.net, nikolay@nvidia.com, roopa@nvidia.com
Subject: [Bridge] [PATCH net] net: bridge: fix memleak in br_add_if()
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

I got a memleak report:

BUG: memory leak
unreferenced object 0x607ee521a658 (size 240):
comm "syz-executor.0", pid 955, jiffies 4294780569 (age 16.449s)
hex dump (first 32 bytes, cpu 1):
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
backtrace:
[<00000000d830ea5a>] br_multicast_add_port+0x1c2/0x300 net/bridge/br_multicast.c:1693
[<00000000274d9a71>] new_nbp net/bridge/br_if.c:435 [inline]
[<00000000274d9a71>] br_add_if+0x670/0x1740 net/bridge/br_if.c:611
[<0000000012ce888e>] do_set_master net/core/rtnetlink.c:2513 [inline]
[<0000000012ce888e>] do_set_master+0x1aa/0x210 net/core/rtnetlink.c:2487
[<0000000099d1cafc>] __rtnl_newlink+0x1095/0x13e0 net/core/rtnetlink.c:3457
[<00000000a01facc0>] rtnl_newlink+0x64/0xa0 net/core/rtnetlink.c:3488
[<00000000acc9186c>] rtnetlink_rcv_msg+0x369/0xa10 net/core/rtnetlink.c:5550
[<00000000d4aabb9c>] netlink_rcv_skb+0x134/0x3d0 net/netlink/af_netlink.c:2504
[<00000000bc2e12a3>] netlink_unicast_kernel net/netlink/af_netlink.c:1314 [inline]
[<00000000bc2e12a3>] netlink_unicast+0x4a0/0x6a0 net/netlink/af_netlink.c:1340
[<00000000e4dc2d0e>] netlink_sendmsg+0x789/0xc70 net/netlink/af_netlink.c:1929
[<000000000d22c8b3>] sock_sendmsg_nosec net/socket.c:654 [inline]
[<000000000d22c8b3>] sock_sendmsg+0x139/0x170 net/socket.c:674
[<00000000e281417a>] ____sys_sendmsg+0x658/0x7d0 net/socket.c:2350
[<00000000237aa2ab>] ___sys_sendmsg+0xf8/0x170 net/socket.c:2404
[<000000004f2dc381>] __sys_sendmsg+0xd3/0x190 net/socket.c:2433
[<0000000005feca6c>] do_syscall_64+0x37/0x90 arch/x86/entry/common.c:47
[<000000007304477d>] entry_SYSCALL_64_after_hwframe+0x44/0xae

On error path of br_add_if(), p->mcast_stats allocated in
new_nbp() need be freed, or it will be leaked.

Fixes: 1080ab95e3c7 ("net: bridge: add support for IGMP/MLD stats and export them via netlink")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
---
 net/bridge/br_if.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/bridge/br_if.c b/net/bridge/br_if.c
index 6e4a32354a13..e2867547d303 100644
--- a/net/bridge/br_if.c
+++ b/net/bridge/br_if.c
@@ -616,6 +616,7 @@ int br_add_if(struct net_bridge *br, struct net_device *dev,
 
 	err = dev_set_allmulti(dev, 1);
 	if (err) {
+		free_percpu(p->mcast_stats);
 		kfree(p);	/* kobject not yet init'd, manually free */
 		goto err1;
 	}
@@ -729,6 +730,7 @@ int br_add_if(struct net_bridge *br, struct net_device *dev,
 err3:
 	sysfs_remove_link(br->ifobj, p->dev->name);
 err2:
+	free_percpu(p->mcast_stats);
 	kobject_put(&p->kobj);
 	dev_set_allmulti(dev, -1);
 err1:
-- 
2.25.1

