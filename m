Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 109EB37D1C5
	for <lists.bridge@lfdr.de>; Wed, 12 May 2021 20:04:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9110C60AE8;
	Wed, 12 May 2021 18:04:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iT_8utSma4M5; Wed, 12 May 2021 18:04:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3560360AB7;
	Wed, 12 May 2021 18:04:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0FD13C0024;
	Wed, 12 May 2021 18:04:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 12FE3C0001
 for <bridge@lists.linux-foundation.org>; Wed, 12 May 2021 18:04:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0382283546
 for <bridge@lists.linux-foundation.org>; Wed, 12 May 2021 18:04:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id riyz6TZVQDBV for <bridge@lists.linux-foundation.org>;
 Wed, 12 May 2021 18:04:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 68B0583542
 for <bridge@lists.linux-foundation.org>; Wed, 12 May 2021 18:04:38 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9107161441;
 Wed, 12 May 2021 18:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620842677;
 bh=9IxrApo8rYDwKarf69LkThytLQ4vYKr81K0TEJpWtSM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RbTlSPaonKtX/eNl1NqKytmnnmxfNoDAiW3NjCxMw53rcnJDDllsSOEHBsE9U3G1F
 xGpetIKzxczcamyAudnsLe8nL5Zh/crDGPs90oU5iOd1jZxO5J7BnGxjVwfqAfT8Eg
 ePfjoHHFuiMpmwJVHB3oPZ2Eaw0gm5rQuwTEoAcdTLe/tdxoFu5koLdPwlYLEZMzEo
 i3sWqR4M3tg+AWR4WCHr0C5O2bFjMArpf7C6HVtUs6gLFXytlMSKiaQz/ooQDiVLxv
 G/uA9PpaGqI99TCEBquFS0sRreJpxOHaMXngj/xVpnupwwYYDfcQ98uXgIhawUfG3W
 3WLMCGf4qRILw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Wed, 12 May 2021 14:04:01 -0400
Message-Id: <20210512180408.665338-17-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210512180408.665338-1-sashal@kernel.org>
References: <20210512180408.665338-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: 8bit
Cc: Sasha Levin <sashal@kernel.org>, Zhao Lei <zhaolei69@huawei.com>,
 netdev@vger.kernel.org, Wang Xiaogang <wangxiaogang3@huawei.com>,
 bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Zhang Zhengming <zhangzhengming@huawei.com>,
 "David S . Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH AUTOSEL 5.4 17/23] bridge: Fix possible races
	between assigning rx_handler_data and setting IFF_BRIDGE_PORT bit
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

[ Upstream commit 59259ff7a81b9eb6213891c6451221e567f8f22f ]

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

Fix it in br_get_link_af_size_filtered, using br_port_get_check_rcu() and checking the return value.

Signed-off-by: Zhang Zhengming <zhangzhengming@huawei.com>
Reviewed-by: Zhao Lei <zhaolei69@huawei.com>
Reviewed-by: Wang Xiaogang <wangxiaogang3@huawei.com>
Suggested-by: Nikolay Aleksandrov <nikolay@nvidia.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/bridge/br_netlink.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index a0a54482aabc..8a664148f57a 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -99,8 +99,9 @@ static size_t br_get_link_af_size_filtered(const struct net_device *dev,
 
 	rcu_read_lock();
 	if (netif_is_bridge_port(dev)) {
-		p = br_port_get_rcu(dev);
-		vg = nbp_vlan_group_rcu(p);
+		p = br_port_get_check_rcu(dev);
+		if (p)
+			vg = nbp_vlan_group_rcu(p);
 	} else if (dev->priv_flags & IFF_EBRIDGE) {
 		br = netdev_priv(dev);
 		vg = br_vlan_group_rcu(br);
-- 
2.30.2

