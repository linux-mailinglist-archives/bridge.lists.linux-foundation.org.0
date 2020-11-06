Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4102A9F8B
	for <lists.bridge@lfdr.de>; Fri,  6 Nov 2020 22:51:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D506387480;
	Fri,  6 Nov 2020 21:51:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LVWBcBZ0zFLn; Fri,  6 Nov 2020 21:51:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1B05487514;
	Fri,  6 Nov 2020 21:51:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 09588C0889;
	Fri,  6 Nov 2020 21:51:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7DDF8C0889
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 21:51:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 645EE86A9E
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 21:51:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CXKvewiJIbHG for <bridge@lists.linux-foundation.org>;
 Fri,  6 Nov 2020 21:51:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5A08F86A90
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 21:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1604699512; x=1636235512;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xkhjEoFt7D0XHNP88IHAY8GNrfxJnjx5x7frAaszT3g=;
 b=I6OfaBAscR4QI1aeKCWyO4P2FCLgU4gXKA6bHIOcJ4BwPKmzRqQpPmRk
 HeA+QlJKLgu0Zbpu9Mw6rbSXwiwOdfCWmva0NpF2gnN8znIa4W/hgoRqB
 cVCnZV3fg22XsfXHjsLFNEG1eiLzXIEfBKjnOmR6zSM1YkCWm7FpPoR7z
 ZGGvdvoO8GMSp6eZSfwNEOCJfhYECmpeROM/ur1UmsEFNBVkJmsjxDwtV
 +Enz++NxBCkrXqqQ5W4sz5svaAVtzURe2dgLoBhCM8Upkt2mGCTQOjtRW
 F7Q4v7ghlboOyj9Yc/WCV+MIREt7Rbtia6ZXTyqbZ+GdWqnIIe3yP7dqw w==;
IronPort-SDR: AVeJGsRYNaXy2kpVdP16DyuxsvyE5txSXMgXaVOriD9xgsy7RAu4f4cVIVrNa7VK6mBuxpI15E
 kNHYamvl0kDAVryiHi9hfjMxFXHvHrIeQc4wzLYvDnk3hq2fpMFCu3mGp1Ar4LPnhupNSdIrip
 1sqldbBlB8fOiGfVkOKEXbJdTk58+WLWj0X2rct49bsdLBz/9VJkx7riP8ESF03OWv1ybcyiAf
 6lFT+LjaOcWTZEkuZGWLJyaRr7K/m5EsdQanGi9n/uTrft8ZxjJaP8jMv8BvokNoFF5GL5+I7T
 wB8=
X-IronPort-AV: E=Sophos;i="5.77,457,1596524400"; d="scan'208";a="102535887"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Nov 2020 14:51:51 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Fri, 6 Nov 2020 14:51:50 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Fri, 6 Nov 2020 14:51:48 -0700
To: <nikolay@nvidia.com>, <roopa@nvidia.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <bridge@lists.linux-foundation.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Date: Fri, 6 Nov 2020 22:50:49 +0100
Message-ID: <20201106215049.1448185-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next] bridge: mrp: Use hlist_head instead of
	list_head for mrp
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
From: Horatiu Vultur via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Horatiu Vultur <horatiu.vultur@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Replace list_head with hlist_head for MRP list under the bridge.
There is no need for a circular list when a linear list will work.
This will also decrease the size of 'struct net_bridge'.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_device.c      |  2 +-
 net/bridge/br_mrp.c         | 26 +++++++++++++-------------
 net/bridge/br_mrp_netlink.c |  2 +-
 net/bridge/br_private.h     |  2 +-
 net/bridge/br_private_mrp.h |  2 +-
 5 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
index 2400a66fe76e8..387403931a63f 100644
--- a/net/bridge/br_device.c
+++ b/net/bridge/br_device.c
@@ -456,7 +456,7 @@ void br_dev_setup(struct net_device *dev)
 	INIT_HLIST_HEAD(&br->fdb_list);
 	INIT_HLIST_HEAD(&br->frame_type_list);
 #if IS_ENABLED(CONFIG_BRIDGE_MRP)
-	INIT_LIST_HEAD(&br->mrp_list);
+	INIT_HLIST_HEAD(&br->mrp_list);
 #endif
 #if IS_ENABLED(CONFIG_BRIDGE_CFM)
 	INIT_HLIST_HEAD(&br->mep_list);
diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
index f94d72bb7c32a..bb12fbf9aaf2b 100644
--- a/net/bridge/br_mrp.c
+++ b/net/bridge/br_mrp.c
@@ -54,8 +54,8 @@ static struct br_mrp *br_mrp_find_id(struct net_bridge *br, u32 ring_id)
 	struct br_mrp *res = NULL;
 	struct br_mrp *mrp;
 
-	list_for_each_entry_rcu(mrp, &br->mrp_list, list,
-				lockdep_rtnl_is_held()) {
+	hlist_for_each_entry_rcu(mrp, &br->mrp_list, list,
+				 lockdep_rtnl_is_held()) {
 		if (mrp->ring_id == ring_id) {
 			res = mrp;
 			break;
@@ -70,8 +70,8 @@ static struct br_mrp *br_mrp_find_in_id(struct net_bridge *br, u32 in_id)
 	struct br_mrp *res = NULL;
 	struct br_mrp *mrp;
 
-	list_for_each_entry_rcu(mrp, &br->mrp_list, list,
-				lockdep_rtnl_is_held()) {
+	hlist_for_each_entry_rcu(mrp, &br->mrp_list, list,
+				 lockdep_rtnl_is_held()) {
 		if (mrp->in_id == in_id) {
 			res = mrp;
 			break;
@@ -85,8 +85,8 @@ static bool br_mrp_unique_ifindex(struct net_bridge *br, u32 ifindex)
 {
 	struct br_mrp *mrp;
 
-	list_for_each_entry_rcu(mrp, &br->mrp_list, list,
-				lockdep_rtnl_is_held()) {
+	hlist_for_each_entry_rcu(mrp, &br->mrp_list, list,
+				 lockdep_rtnl_is_held()) {
 		struct net_bridge_port *p;
 
 		p = rtnl_dereference(mrp->p_port);
@@ -111,8 +111,8 @@ static struct br_mrp *br_mrp_find_port(struct net_bridge *br,
 	struct br_mrp *res = NULL;
 	struct br_mrp *mrp;
 
-	list_for_each_entry_rcu(mrp, &br->mrp_list, list,
-				lockdep_rtnl_is_held()) {
+	hlist_for_each_entry_rcu(mrp, &br->mrp_list, list,
+				 lockdep_rtnl_is_held()) {
 		if (rcu_access_pointer(mrp->p_port) == p ||
 		    rcu_access_pointer(mrp->s_port) == p ||
 		    rcu_access_pointer(mrp->i_port) == p) {
@@ -450,10 +450,10 @@ static void br_mrp_del_impl(struct net_bridge *br, struct br_mrp *mrp)
 		rcu_assign_pointer(mrp->i_port, NULL);
 	}
 
-	list_del_rcu(&mrp->list);
+	hlist_del_rcu(&mrp->list);
 	kfree_rcu(mrp, rcu);
 
-	if (list_empty(&br->mrp_list))
+	if (hlist_empty(&br->mrp_list))
 		br_del_frame(br, &mrp_frame_type);
 }
 
@@ -503,12 +503,12 @@ int br_mrp_add(struct net_bridge *br, struct br_mrp_instance *instance)
 	spin_unlock_bh(&br->lock);
 	rcu_assign_pointer(mrp->s_port, p);
 
-	if (list_empty(&br->mrp_list))
+	if (hlist_empty(&br->mrp_list))
 		br_add_frame(br, &mrp_frame_type);
 
 	INIT_DELAYED_WORK(&mrp->test_work, br_mrp_test_work_expired);
 	INIT_DELAYED_WORK(&mrp->in_test_work, br_mrp_in_test_work_expired);
-	list_add_tail_rcu(&mrp->list, &br->mrp_list);
+	hlist_add_tail_rcu(&mrp->list, &br->mrp_list);
 
 	err = br_mrp_switchdev_add(br, mrp);
 	if (err)
@@ -1198,5 +1198,5 @@ static int br_mrp_process(struct net_bridge_port *p, struct sk_buff *skb)
 
 bool br_mrp_enabled(struct net_bridge *br)
 {
-	return !list_empty(&br->mrp_list);
+	return !hlist_empty(&br->mrp_list);
 }
diff --git a/net/bridge/br_mrp_netlink.c b/net/bridge/br_mrp_netlink.c
index 2a2fdf3500c5b..ce6f63c77cc0a 100644
--- a/net/bridge/br_mrp_netlink.c
+++ b/net/bridge/br_mrp_netlink.c
@@ -453,7 +453,7 @@ int br_mrp_fill_info(struct sk_buff *skb, struct net_bridge *br)
 	if (!mrp_tb)
 		return -EMSGSIZE;
 
-	list_for_each_entry_rcu(mrp, &br->mrp_list, list) {
+	hlist_for_each_entry_rcu(mrp, &br->mrp_list, list) {
 		struct net_bridge_port *p;
 
 		tb = nla_nest_start_noflag(skb, IFLA_BRIDGE_MRP_INFO);
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 891f3b05ffa41..6f2818cb2ac02 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -482,7 +482,7 @@ struct net_bridge {
 	struct hlist_head		fdb_list;
 
 #if IS_ENABLED(CONFIG_BRIDGE_MRP)
-	struct list_head		mrp_list;
+	struct hlist_head		mrp_list;
 #endif
 #if IS_ENABLED(CONFIG_BRIDGE_CFM)
 	struct hlist_head		mep_list;
diff --git a/net/bridge/br_private_mrp.h b/net/bridge/br_private_mrp.h
index af0e9eff65493..1883118aae55b 100644
--- a/net/bridge/br_private_mrp.h
+++ b/net/bridge/br_private_mrp.h
@@ -8,7 +8,7 @@
 
 struct br_mrp {
 	/* list of mrp instances */
-	struct list_head		list;
+	struct hlist_node		list;
 
 	struct net_bridge_port __rcu	*p_port;
 	struct net_bridge_port __rcu	*s_port;
-- 
2.27.0

