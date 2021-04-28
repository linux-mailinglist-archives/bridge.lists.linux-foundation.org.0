Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD6E36D39A
	for <lists.bridge@lfdr.de>; Wed, 28 Apr 2021 10:02:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4FA8D4054C;
	Wed, 28 Apr 2021 08:02:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6UwgBLEOHt_d; Wed, 28 Apr 2021 08:02:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTP id D039040545;
	Wed, 28 Apr 2021 08:02:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8A28DC0025;
	Wed, 28 Apr 2021 08:02:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0C275C0001
 for <bridge@lists.linux-foundation.org>; Wed, 28 Apr 2021 07:19:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E6B9440291
 for <bridge@lists.linux-foundation.org>; Wed, 28 Apr 2021 07:19:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nypKdyJVfMsA for <bridge@lists.linux-foundation.org>;
 Wed, 28 Apr 2021 07:19:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 17D1740263
 for <bridge@lists.linux-foundation.org>; Wed, 28 Apr 2021 07:19:32 +0000 (UTC)
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4FVVKx42xRzpbsT;
 Wed, 28 Apr 2021 15:16:21 +0800 (CST)
Received: from huawei.com (10.175.101.6) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.498.0; Wed, 28 Apr 2021
 15:19:22 +0800
From: zhangzhengming <zhangzhengming@huawei.com>
To: <roopa@nvidia.com>, <nikolay@nvidia.com>, <davem@davemloft.net>,
 <kuba@kernel.org>
Date: Wed, 28 Apr 2021 15:29:09 +0800
Message-ID: <1619594949-20428-1-git-send-email-zhangzhengming@huawei.com>
X-Mailer: git-send-email 2.7.4.huawei.3
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.175.101.6]
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Wed, 28 Apr 2021 08:02:39 +0000
Cc: netdev@vger.kernel.org, zhangzhengming@huawei.com,
 bridge@lists.linux-foundation.org, wangxiaogang3@huawei.com,
 xuhanbing@huawei.com
Subject: [Bridge] [PATCH] bridge: Fix possible races between assigning
	rx_handler_data and setting IFF_BRIDGE_PORT bit
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

From: Zhang Zhengming <zhangzhengming@huawei.com>

There is a crash in the function br_get_link_af_size_filtered,
as the port_exists(dev) is true and the rx_handler_data of dev is NULL.
But the rx_handler_data of dev is correct saved in vmcore.

The oops looks something like:
 ...
 pc : br_get_link_af_size_filtered+0x28/0x1c8 [bridge]
 ...
 Call trace:
  br_get_link_af_size_filtered+0x28/0x1c8 [bridge]
  if_nlmsg_size+0x180/0x1b0
  rtnl_calcit.isra.12+0xf8/0x148
  rtnetlink_rcv_msg+0x334/0x370
  netlink_rcv_skb+0x64/0x130
  rtnetlink_rcv+0x28/0x38
  netlink_unicast+0x1f0/0x250
  netlink_sendmsg+0x310/0x378
  sock_sendmsg+0x4c/0x70
  __sys_sendto+0x120/0x150
  __arm64_sys_sendto+0x30/0x40
  el0_svc_common+0x78/0x130
  el0_svc_handler+0x38/0x78
  el0_svc+0x8/0xc

In br_add_if(), we found there is no guarantee that
assigning rx_handler_data to dev->rx_handler_data
will before setting the IFF_BRIDGE_PORT bit of priv_flags.
So there is a possible data competition:

CPU 0:                                                        CPU 1:
(RCU read lock)                                               (RTNL lock)
rtnl_calcit()                                                 br_add_slave()
  if_nlmsg_size()                                               br_add_if()
    br_get_link_af_size_filtered()                              -> netdev_rx_handler_register
                                                                    ...
                                                                    // The order is not guaranteed
      ...                                                           -> dev->priv_flags |= IFF_BRIDGE_PORT;
      // The IFF_BRIDGE_PORT bit of priv_flags has been set
      -> if (br_port_exists(dev)) {
        // The dev->rx_handler_data has NOT been assigned
        -> p = br_port_get_rcu(dev);
        ....
                                                                    -> rcu_assign_pointer(dev->rx_handler_data, rx_handler_data);
                                                                     ...

Fix this by adding memory barrier instruction to ensure the order.

Signed-off-by: Zhang Zhengming <zhangzhengming@huawei.com>
Reviewed-by: Zhao Lei <zhaolei69@huawei.com>
Reviewed-by: Wang Xiaogang <wangxiaogang3@huawei.com>
---
 net/bridge/br_if.c      | 6 ++++++
 net/bridge/br_netlink.c | 1 +
 2 files changed, 7 insertions(+)

diff --git a/net/bridge/br_if.c b/net/bridge/br_if.c
index f7d2f47..42895be 100644
--- a/net/bridge/br_if.c
+++ b/net/bridge/br_if.c
@@ -636,6 +636,12 @@ int br_add_if(struct net_bridge *br, struct net_device *dev,
 	err = netdev_rx_handler_register(dev, br_get_rx_handler(dev), p);
 	if (err)
 		goto err4;
+
+	/* Make sure dev->rx_handler_data is written in netdev_rx_handler_register
+	 * before the bit IFF_BRIDGE_PORT of dev->priv_flags is set.
+	 * coupled with smp_rmb() in br_get_link_af_size_filtered.
+	 */
+	smp_wmb();
 
 	dev->priv_flags |= IFF_BRIDGE_PORT;
 
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index f2b1343..ccc1fd7 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -103,6 +103,7 @@ static size_t br_get_link_af_size_filtered(const struct net_device *dev,
 
 	rcu_read_lock();
 	if (netif_is_bridge_port(dev)) {
+		smp_rmb(); /* coupled with smp_wmb() in br_add_if() */
 		p = br_port_get_rcu(dev);
 		vg = nbp_vlan_group_rcu(p);
 	} else if (dev->priv_flags & IFF_EBRIDGE) {
-- 
2.7.4

