Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 446432D757C
	for <lists.bridge@lfdr.de>; Fri, 11 Dec 2020 13:24:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D765286857;
	Fri, 11 Dec 2020 12:24:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i2pLo1nwPTHb; Fri, 11 Dec 2020 12:24:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 98C5D86733;
	Fri, 11 Dec 2020 12:24:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 821FAC013B;
	Fri, 11 Dec 2020 12:24:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C17CEC013B
 for <bridge@lists.linux-foundation.org>; Fri, 11 Dec 2020 12:24:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AF2A486733
 for <bridge@lists.linux-foundation.org>; Fri, 11 Dec 2020 12:24:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HRy5ebdo3Lqg for <bridge@lists.linux-foundation.org>;
 Fri, 11 Dec 2020 12:24:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 09222866D7
 for <bridge@lists.linux-foundation.org>; Fri, 11 Dec 2020 12:24:00 +0000 (UTC)
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4Csqgv0w1fz15ZR7;
 Fri, 11 Dec 2020 20:23:23 +0800 (CST)
Received: from huawei.com (10.175.113.133) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.487.0; Fri, 11 Dec 2020
 20:23:52 +0800
From: Wang Hai <wanghai38@huawei.com>
To: <kuba@kernel.org>, <nikolay@nvidia.com>, <davem@davemloft.net>,
 <roopa@nvidia.com>
Date: Fri, 11 Dec 2020 20:29:21 +0800
Message-ID: <20201211122921.40386-1-wanghai38@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.175.113.133]
X-CFilter-Loop: Reflected
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org
Subject: [Bridge] [PATCH v2] net: bridge: Fix a warning when del bridge sysfs
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

I got a warining report:

br_sysfs_addbr: can't create group bridge4/bridge
------------[ cut here ]------------
sysfs group 'bridge' not found for kobject 'bridge4'
WARNING: CPU: 2 PID: 9004 at fs/sysfs/group.c:279 sysfs_remove_group fs/sysfs/group.c:279 [inline]
WARNING: CPU: 2 PID: 9004 at fs/sysfs/group.c:279 sysfs_remove_group+0x153/0x1b0 fs/sysfs/group.c:270
Modules linked in: iptable_nat
...
Call Trace:
  br_dev_delete+0x112/0x190 net/bridge/br_if.c:384
  br_dev_newlink net/bridge/br_netlink.c:1381 [inline]
  br_dev_newlink+0xdb/0x100 net/bridge/br_netlink.c:1362
  __rtnl_newlink+0xe11/0x13f0 net/core/rtnetlink.c:3441
  rtnl_newlink+0x64/0xa0 net/core/rtnetlink.c:3500
  rtnetlink_rcv_msg+0x385/0x980 net/core/rtnetlink.c:5562
  netlink_rcv_skb+0x134/0x3d0 net/netlink/af_netlink.c:2494
  netlink_unicast_kernel net/netlink/af_netlink.c:1304 [inline]
  netlink_unicast+0x4a0/0x6a0 net/netlink/af_netlink.c:1330
  netlink_sendmsg+0x793/0xc80 net/netlink/af_netlink.c:1919
  sock_sendmsg_nosec net/socket.c:651 [inline]
  sock_sendmsg+0x139/0x170 net/socket.c:671
  ____sys_sendmsg+0x658/0x7d0 net/socket.c:2353
  ___sys_sendmsg+0xf8/0x170 net/socket.c:2407
  __sys_sendmsg+0xd3/0x190 net/socket.c:2440
  do_syscall_64+0x33/0x40 arch/x86/entry/common.c:46
  entry_SYSCALL_64_after_hwframe+0x44/0xa9

In br_device_event(), if the bridge sysfs fails to be added,
br_device_event() should return error. This can prevent warining
when removing bridge sysfs that do not exist.

Fixes: bb900b27a2f4 ("bridge: allow creating bridge devices with netlink")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wang Hai <wanghai38@huawei.com>
---
v1->v2: Fix this by check br_sysfs_addbr() return value as Nik's suggestion
 net/bridge/br.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br.c b/net/bridge/br.c
index 401eeb9142eb..1b169f8e7491 100644
--- a/net/bridge/br.c
+++ b/net/bridge/br.c
@@ -43,7 +43,10 @@ static int br_device_event(struct notifier_block *unused, unsigned long event, v
 
 		if (event == NETDEV_REGISTER) {
 			/* register of bridge completed, add sysfs entries */
-			br_sysfs_addbr(dev);
+			err = br_sysfs_addbr(dev);
+			if (err)
+				return notifier_from_errno(err);
+
 			return NOTIFY_DONE;
 		}
 	}
-- 
2.17.1

