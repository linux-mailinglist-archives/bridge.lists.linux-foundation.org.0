Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C06136C099
	for <lists.bridge@lfdr.de>; Tue, 27 Apr 2021 10:08:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7DE6C60B1A;
	Tue, 27 Apr 2021 08:08:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oznpdz-eGRX9; Tue, 27 Apr 2021 08:08:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0AAE460AFA;
	Tue, 27 Apr 2021 08:08:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 042B8C0019;
	Tue, 27 Apr 2021 08:08:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 28BEEC000B
 for <bridge@lists.linux-foundation.org>; Sun, 25 Apr 2021 15:58:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 17C426063F
 for <bridge@lists.linux-foundation.org>; Sun, 25 Apr 2021 15:58:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dtoIQFZRSrEt for <bridge@lists.linux-foundation.org>;
 Sun, 25 Apr 2021 15:58:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8A6C66063A
 for <bridge@lists.linux-foundation.org>; Sun, 25 Apr 2021 15:58:06 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id lr7so9450182pjb.2
 for <bridge@lists.linux-foundation.org>; Sun, 25 Apr 2021 08:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NPZx422Dg087aKwZo/aZdWTOYPQXtqZU+b04wuOAFL8=;
 b=b9/W6S20DF01WQc4rXnfH+EOuF6CgdLBh8GsGHEGjljOSAnTM8RVj+3bI3JebtCakD
 TFkjtCCUoF6n/GeSXbWu0lgCJGwSoAWENik86tqZhzDsZeZUQRPWWnfipCSAD4t+knI0
 6h/IzM79oLUYVRaOMyXrxtSwUSo3DYMqaQ7e61LeNAVlU2hy8/gAVhT119zuXVilzNOQ
 hWtFfiXDQy74Wflcv7QHc6d2tf8iq/f3iAvyQA+Ker406RD43+uppx6KBaP5B/mzDdl0
 7GaxBXblNxSk3TsrAOcPI0NMYR1aBnuBeK6Hefjbu/BuY8gp162fhfZsY6PTmCDSBxFI
 4D8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NPZx422Dg087aKwZo/aZdWTOYPQXtqZU+b04wuOAFL8=;
 b=WR5mnWvXzFXed96TDM4iHd8u1v1nmJzF7DvpffBd0CTXTOsbIYNhp+IlT+RwqyQTjL
 GXbT37aGfJDGFsDSj32DYXZR1flzO7CXOrXGWEOAlR/BjwP82Q61ouSSZDCyWvTmYDdV
 WQYW+cTe4ZJmGcyEIw5E/8ZEe3AMope2OjPhRJ15yl5JF2YWBdGKF4Y/RshzVNA5+fUG
 o5RSopYTvd7c7y6SY9XXDzZWWt5eKYRxjFs0DrHX2ETtqapiYi7ruiNS4lmxVCRPKo3O
 GtAqbIhXlhXdkQnyoxpJtBqIkBr4Q98HEKa81vgjj79P9R6hRnuMtoZhKhgGfM8PBz+7
 rj7Q==
X-Gm-Message-State: AOAM532MOXMc69nuTZMNpHy/bLe9GWrYcSnHQHCDkNmouIV3CZstz3iA
 oCHsdzs16Cpwpexs4shY6H4=
X-Google-Smtp-Source: ABdhPJytk0+7IwON6WDEpGiTEQBr+t5g80Wk5qy1f8nFggiyGTSDu6Y9gkB9kKNU50dVePzcP4XPJw==
X-Received: by 2002:a17:90b:33c6:: with SMTP id
 lk6mr16251993pjb.37.1619366285859; 
 Sun, 25 Apr 2021 08:58:05 -0700 (PDT)
Received: from localhost.localdomain ([49.173.165.50])
 by smtp.gmail.com with ESMTPSA id j26sm8983010pfn.47.2021.04.25.08.58.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 25 Apr 2021 08:58:05 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: davem@davemloft.net, kuba@kernel.org, dsahern@kernel.org,
 yoshfuji@linux-ipv6.org, netdev@vger.kernel.org, j.vosburgh@gmail.com,
 vfalico@gmail.com, andy@greyhouse.net, roopa@nvidia.com,
 nikolay@nvidia.com, ast@kernel.org, andriin@fb.com, daniel@iogearbox.net,
 weiwan@google.com, cong.wang@bytedance.com, bjorn@kernel.org,
 herbert@gondor.apana.org.au, bridge@lists.linux-foundation.org
Date: Sun, 25 Apr 2021 15:57:42 +0000
Message-Id: <20210425155742.30057-3-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210425155742.30057-1-ap420073@gmail.com>
References: <20210425155742.30057-1-ap420073@gmail.com>
X-Mailman-Approved-At: Tue, 27 Apr 2021 08:08:26 +0000
Cc: ap420073@gmail.com
Subject: [Bridge] [PATCH net 2/2] net: bridge: fix lockdep multicast_lock
	false positive splat
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

multicast_lock is a per-interface(bridge) lock.
This lock can be used recursively because interfaces can be used
recursively. So, it should use spin_lock_nested() but it doesn't.
So lockdep false positive splat occurred.

Some inline helper functions are added.
These functions internally get 'subclass' variable, which is used as
parameter of spin_lock_nested() and use spin_lock_nested() with a
subclass parameter.

Test commands:
    ip link add br0 type bridge
    ip link add bond0 type bond
    ip link add br1 type bridge
    ip link set br0 master bond0
    ip link set bond0 up
    ip link set bond0 master br1
    ip link set br0 up
    ip link set br1 up
    ip link set br0 type bridge mcast_router 1 mcast_querier 1
    ip link set br1 type bridge mcast_querier 1 mcast_router 1

Splat looks like:
============================================
WARNING: possible recursive locking detected
5.12.0-rc7+ #855 Not tainted
--------------------------------------------
kworker/5:1/56 is trying to acquire lock:
ffff88810f833000 (&br->multicast_lock){+.-.}-{2:2}, at:
br_multicast_rcv+0x1484/0x5280 [bridge]

but task is already holding lock:
ffff888116e63000 (&br->multicast_lock){+.-.}-{2:2}, at:
br_multicast_port_query_expired+0x40/0x140 [bridge]

other info that might help us debug this:
 Possible unsafe locking scenario:

       CPU0
       ----
  lock(&br->multicast_lock);
  lock(&br->multicast_lock);

 *** DEADLOCK ***

 May be due to missing lock nesting notation

9 locks held by kworker/5:1/56:
 #0: ffff888100079b48 ((wq_completion)events){+.+.}-{0:0}, at:
process_one_work+0x761/0x1440
 #1: ffff888100c6fe00 ((linkwatch_work).work){+.+.}-{0:0}, at:
process_one_work+0x795/0x1440
 #2: ffffffffa1278f30 (rtnl_mutex){+.+.}-{3:3}, at:
linkwatch_event+0xa/0x50
 #3: ffff88811a009dc8 ((&port->ip4_own_query.timer)){+.-.}-{0:0}, at:
call_timer_fn+0xc8/0x460
 #4: ffff888116e63000 (&br->multicast_lock){+.-.}-{2:2}, at:
br_multicast_port_query_expired+0x40/0x140 [bridge]
 #5: ffffffffa0e308a0 (rcu_read_lock_bh){....}-{1:2}, at:
__dev_queue_xmit+0x1fd/0x2990
 #6: ffffffffa0e30900 (rcu_read_lock){....}-{1:2}, at:
bond_start_xmit+0x7b/0x1160 [bonding]
 #7: ffffffffa0e308a0 (rcu_read_lock_bh){....}-{1:2}, at:
__dev_queue_xmit+0x1fd/0x2990
 #8: ffffffffa0e30900 (rcu_read_lock){....}-{1:2}, at:
br_dev_xmit+0x5/0x1350 [bridge]

stack backtrace:
CPU: 5 PID: 56 Comm: kworker/5:1 Not tainted 5.12.0-rc7+ #855
Workqueue: events linkwatch_event
Call Trace:
 <IRQ>
 dump_stack+0xa4/0xe5
 __lock_acquire.cold.76+0x1f2/0x3d7
 ? register_lock_class+0x1750/0x1750
 ? module_assert_mutex_or_preempt+0x41/0x70
 ? rcu_read_lock_sched_held+0x91/0xc0
 ? rcu_read_lock_bh_held+0xa0/0xa0
 lock_acquire+0x191/0x720
 ? br_multicast_rcv+0x1484/0x5280 [bridge]
 ? lockdep_hardirqs_on_prepare+0x3e0/0x3e0
 ? skb_checksum_trimmed+0x247/0x360
 ? ip_mc_check_igmp+0x423/0xf70
 _raw_spin_lock+0x30/0x70
 ? br_multicast_rcv+0x1484/0x5280 [bridge]
 br_multicast_rcv+0x1484/0x5280 [bridge]
 ? print_usage_bug+0x80/0x80
 ? register_lock_class+0x1750/0x1750
 ? br_ip6_multicast_leave_group.part.62+0x1b0/0x1b0 [bridge]
 ? br_handle_vlan+0xa50/0xa50 [bridge]
 ? lockdep_hardirqs_on_prepare+0x3e0/0x3e0
 ? rcu_read_lock_held+0x91/0xa0
 ? rcu_read_lock_sched_held+0xc0/0xc0
 br_dev_xmit+0x5fe/0x1350 [bridge]
 ? br_dev_open+0xd0/0xd0 [bridge]
 ? rcu_read_lock_sched_held+0x91/0xc0
 ? skb_csum_hwoffload_help+0x100/0x100
 ? rcu_read_lock_sched_held+0x91/0xc0
 ? rcu_read_lock_bh_held+0xa0/0xa0
 dev_hard_start_xmit+0x1ae/0x6e0
 __dev_queue_xmit+0x1ef8/0x2990
 ? netdev_core_pick_tx+0x290/0x290
 ? check_chain_key+0x244/0x5f0
 ? rcu_read_lock_sched_held+0x91/0xc0
 ? rcu_read_lock_bh_held+0xa0/0xa0
 ? rcu_read_lock_held+0x91/0xa0
 ? rcu_read_lock_sched_held+0xc0/0xc0
 ? register_lock_class+0x1750/0x1750
 ? bond_start_xmit+0x274/0x1160 [bonding]
 bond_start_xmit+0x274/0x1160 [bonding]
 ? skb_csum_hwoffload_help+0x100/0x100
 ? bond_xmit_get_slave+0x2c0/0x2c0 [bonding]
 ? rcu_read_lock_sched_held+0x91/0xc0
 ? rcu_read_lock_bh_held+0xa0/0xa0
 ? netif_skb_features+0x296/0x9c0
 dev_hard_start_xmit+0x1ae/0x6e0
 __dev_queue_xmit+0x1ef8/0x2990
 ? check_object+0xb3/0x290
 ? init_object+0x4e/0x80
 ? netdev_core_pick_tx+0x290/0x290
 ? mark_held_locks+0xb7/0x120
 ? rcu_read_lock_sched_held+0x91/0xc0
 ? rcu_read_lock_bh_held+0xa0/0xa0
 ? slab_post_alloc_hook+0x43/0x430
 ? trace_kmalloc_node+0xb0/0xe0
 ? __kmalloc_node_track_caller+0x11c/0x2b0
 ? __alloc_skb+0xc5/0x290
 ? memset+0x1f/0x40
 ? br_dev_queue_push_xmit+0x1ad/0x610 [bridge]
 br_dev_queue_push_xmit+0x1ad/0x610 [bridge]
 [...]

Fixes: eb1d16414339 ("bridge: Add core IGMP snooping support")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---

v2:
 - No change

 net/bridge/br_mdb.c           |  12 +--
 net/bridge/br_multicast.c     | 146 +++++++++++++++++++++-------------
 net/bridge/br_multicast_eht.c |  18 +++--
 net/bridge/br_private.h       |  48 +++++++++++
 4 files changed, 158 insertions(+), 66 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 8846c5bcd075..0a905f397ba9 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -490,7 +490,7 @@ static void br_mdb_complete(struct net_device *dev, int err, void *priv)
 	if (err)
 		goto err;
 
-	spin_lock_bh(&br->multicast_lock);
+	br_multicast_lock_rtnl_bh(br);
 	mp = br_mdb_ip_get(br, &data->ip);
 	if (!mp)
 		goto out;
@@ -501,7 +501,7 @@ static void br_mdb_complete(struct net_device *dev, int err, void *priv)
 		p->flags |= MDB_PG_FLAGS_OFFLOAD;
 	}
 out:
-	spin_unlock_bh(&br->multicast_lock);
+	br_multicast_unlock_bh(br);
 err:
 	kfree(priv);
 }
@@ -949,9 +949,9 @@ static int __br_mdb_add(struct net *net, struct net_bridge *br,
 {
 	int ret;
 
-	spin_lock_bh(&br->multicast_lock);
+	br_multicast_lock_rtnl_bh(br);
 	ret = br_mdb_add_group(br, p, entry, mdb_attrs, extack);
-	spin_unlock_bh(&br->multicast_lock);
+	br_multicast_unlock_bh(br);
 
 	return ret;
 }
@@ -1042,7 +1042,7 @@ static int __br_mdb_del(struct net_bridge *br, struct br_mdb_entry *entry,
 
 	__mdb_entry_to_br_ip(entry, &ip, mdb_attrs);
 
-	spin_lock_bh(&br->multicast_lock);
+	br_multicast_lock_rtnl_bh(br);
 	mp = br_mdb_ip_get(br, &ip);
 	if (!mp)
 		goto unlock;
@@ -1072,7 +1072,7 @@ static int __br_mdb_del(struct net_bridge *br, struct br_mdb_entry *entry,
 	}
 
 unlock:
-	spin_unlock_bh(&br->multicast_lock);
+	br_multicast_unlock_bh(br);
 	return err;
 }
 
diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 9d265447d654..f25ac316242b 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -538,7 +538,8 @@ static void br_multicast_group_expired(struct timer_list *t)
 	struct net_bridge_mdb_entry *mp = from_timer(mp, t, timer);
 	struct net_bridge *br = mp->br;
 
-	spin_lock(&br->multicast_lock);
+	rcu_read_lock();
+	br_multicast_lock_rcu(br);
 	if (hlist_unhashed(&mp->mdb_node) || !netif_running(br->dev) ||
 	    timer_pending(&mp->timer))
 		goto out;
@@ -549,7 +550,8 @@ static void br_multicast_group_expired(struct timer_list *t)
 		goto out;
 	br_multicast_del_mdb_entry(mp);
 out:
-	spin_unlock(&br->multicast_lock);
+	br_multicast_unlock(br);
+	rcu_read_unlock();
 }
 
 static void br_multicast_destroy_group_src(struct net_bridge_mcast_gc *gc)
@@ -648,7 +650,8 @@ static void br_multicast_port_group_expired(struct timer_list *t)
 	struct hlist_node *tmp;
 	bool changed;
 
-	spin_lock(&br->multicast_lock);
+	rcu_read_lock();
+	br_multicast_lock_rcu(br);
 	if (!netif_running(br->dev) || timer_pending(&pg->timer) ||
 	    hlist_unhashed(&pg->mglist) || pg->flags & MDB_PG_FLAGS_PERMANENT)
 		goto out;
@@ -675,7 +678,8 @@ static void br_multicast_port_group_expired(struct timer_list *t)
 		br_mdb_notify(br->dev, mp, pg, RTM_NEWMDB);
 	}
 out:
-	spin_unlock(&br->multicast_lock);
+	br_multicast_unlock(br);
+	rcu_read_unlock();
 }
 
 static void br_multicast_gc(struct hlist_head *head)
@@ -1077,7 +1081,8 @@ static void br_multicast_group_src_expired(struct timer_list *t)
 	struct net_bridge_port_group *pg;
 	struct net_bridge *br = src->br;
 
-	spin_lock(&br->multicast_lock);
+	rcu_read_lock();
+	br_multicast_lock_rcu(br);
 	if (hlist_unhashed(&src->node) || !netif_running(br->dev) ||
 	    timer_pending(&src->timer))
 		goto out;
@@ -1093,7 +1098,8 @@ static void br_multicast_group_src_expired(struct timer_list *t)
 	}
 
 out:
-	spin_unlock(&br->multicast_lock);
+	br_multicast_unlock(br);
+	rcu_read_unlock();
 }
 
 struct net_bridge_group_src *
@@ -1296,12 +1302,12 @@ static int br_multicast_add_group(struct net_bridge *br,
 	struct net_bridge_port_group *pg;
 	int err;
 
-	spin_lock(&br->multicast_lock);
+	br_multicast_lock_rcu(br);
 	pg = __br_multicast_add_group(br, port, group, src, filter_mode,
 				      igmpv2_mldv1, false);
 	/* NULL is considered valid for host joined groups */
 	err = PTR_ERR_OR_ZERO(pg);
-	spin_unlock(&br->multicast_lock);
+	br_multicast_unlock(br);
 
 	return err;
 }
@@ -1360,7 +1366,8 @@ static void br_multicast_router_expired(struct timer_list *t)
 			from_timer(port, t, multicast_router_timer);
 	struct net_bridge *br = port->br;
 
-	spin_lock(&br->multicast_lock);
+	rcu_read_lock();
+	br_multicast_lock_rcu(br);
 	if (port->multicast_router == MDB_RTR_TYPE_DISABLED ||
 	    port->multicast_router == MDB_RTR_TYPE_PERM ||
 	    timer_pending(&port->multicast_router_timer))
@@ -1368,7 +1375,8 @@ static void br_multicast_router_expired(struct timer_list *t)
 
 	__del_port_router(port);
 out:
-	spin_unlock(&br->multicast_lock);
+	br_multicast_unlock(br);
+	rcu_read_unlock();
 }
 
 static void br_mc_router_state_change(struct net_bridge *p,
@@ -1388,7 +1396,8 @@ static void br_multicast_local_router_expired(struct timer_list *t)
 {
 	struct net_bridge *br = from_timer(br, t, multicast_router_timer);
 
-	spin_lock(&br->multicast_lock);
+	rcu_read_lock();
+	br_multicast_lock_rcu(br);
 	if (br->multicast_router == MDB_RTR_TYPE_DISABLED ||
 	    br->multicast_router == MDB_RTR_TYPE_PERM ||
 	    timer_pending(&br->multicast_router_timer))
@@ -1396,20 +1405,23 @@ static void br_multicast_local_router_expired(struct timer_list *t)
 
 	br_mc_router_state_change(br, false);
 out:
-	spin_unlock(&br->multicast_lock);
+	br_multicast_unlock(br);
+	rcu_read_unlock();
 }
 
 static void br_multicast_querier_expired(struct net_bridge *br,
 					 struct bridge_mcast_own_query *query)
 {
-	spin_lock(&br->multicast_lock);
+	rcu_read_lock();
+	br_multicast_lock_rcu(br);
 	if (!netif_running(br->dev) || !br_opt_get(br, BROPT_MULTICAST_ENABLED))
 		goto out;
 
 	br_multicast_start_querier(br, query);
 
 out:
-	spin_unlock(&br->multicast_lock);
+	br_multicast_unlock(br);
+	rcu_read_unlock();
 }
 
 static void br_ip4_multicast_querier_expired(struct timer_list *t)
@@ -1525,7 +1537,8 @@ br_multicast_port_query_expired(struct net_bridge_port *port,
 {
 	struct net_bridge *br = port->br;
 
-	spin_lock(&br->multicast_lock);
+	rcu_read_lock();
+	br_multicast_lock_rcu(br);
 	if (port->state == BR_STATE_DISABLED ||
 	    port->state == BR_STATE_BLOCKING)
 		goto out;
@@ -1536,7 +1549,8 @@ br_multicast_port_query_expired(struct net_bridge_port *port,
 	br_multicast_send_query(port->br, port, query);
 
 out:
-	spin_unlock(&br->multicast_lock);
+	br_multicast_unlock(br);
+	rcu_read_unlock();
 }
 
 static void br_ip4_multicast_port_query_expired(struct timer_list *t)
@@ -1562,7 +1576,8 @@ static void br_multicast_port_group_rexmit(struct timer_list *t)
 	struct net_bridge *br = pg->key.port->br;
 	bool need_rexmit = false;
 
-	spin_lock(&br->multicast_lock);
+	rcu_read_lock();
+	br_multicast_lock_rcu(br);
 	if (!netif_running(br->dev) || hlist_unhashed(&pg->mglist) ||
 	    !br_opt_get(br, BROPT_MULTICAST_ENABLED) ||
 	    !br_opt_get(br, BROPT_MULTICAST_QUERIER))
@@ -1590,7 +1605,8 @@ static void br_multicast_port_group_rexmit(struct timer_list *t)
 		mod_timer(&pg->rexmit_timer, jiffies +
 					     br->multicast_last_member_interval);
 out:
-	spin_unlock(&br->multicast_lock);
+	br_multicast_unlock(br);
+	rcu_read_unlock();
 }
 
 static void br_mc_disabled_update(struct net_device *dev, bool value)
@@ -1636,11 +1652,11 @@ void br_multicast_del_port(struct net_bridge_port *port)
 	struct hlist_node *n;
 
 	/* Take care of the remaining groups, only perm ones should be left */
-	spin_lock_bh(&br->multicast_lock);
+	br_multicast_lock_rtnl_bh(br);
 	hlist_for_each_entry_safe(pg, n, &port->mglist, mglist)
 		br_multicast_find_del_pg(br, pg);
 	hlist_move_list(&br->mcast_gc_list, &deleted_head);
-	spin_unlock_bh(&br->multicast_lock);
+	br_multicast_unlock_bh(br);
 	br_multicast_gc(&deleted_head);
 	del_timer_sync(&port->multicast_router_timer);
 	free_percpu(port->mcast_stats);
@@ -1675,9 +1691,11 @@ void br_multicast_enable_port(struct net_bridge_port *port)
 {
 	struct net_bridge *br = port->br;
 
-	spin_lock(&br->multicast_lock);
+	rcu_read_lock();
+	br_multicast_lock_rcu(br);
 	__br_multicast_enable_port(port);
-	spin_unlock(&br->multicast_lock);
+	br_multicast_unlock(br);
+	rcu_read_unlock();
 }
 
 void br_multicast_disable_port(struct net_bridge_port *port)
@@ -1686,7 +1704,8 @@ void br_multicast_disable_port(struct net_bridge_port *port)
 	struct net_bridge_port_group *pg;
 	struct hlist_node *n;
 
-	spin_lock(&br->multicast_lock);
+	rcu_read_lock();
+	br_multicast_lock_rcu(br);
 	hlist_for_each_entry_safe(pg, n, &port->mglist, mglist)
 		if (!(pg->flags & MDB_PG_FLAGS_PERMANENT))
 			br_multicast_find_del_pg(br, pg);
@@ -1698,7 +1717,8 @@ void br_multicast_disable_port(struct net_bridge_port *port)
 #if IS_ENABLED(CONFIG_IPV6)
 	del_timer(&port->ip6_own_query.timer);
 #endif
-	spin_unlock(&br->multicast_lock);
+	br_multicast_unlock(br);
+	rcu_read_unlock();
 }
 
 static int __grp_src_delete_marked(struct net_bridge_port_group *pg)
@@ -2374,7 +2394,7 @@ static int br_ip4_multicast_igmp3_report(struct net_bridge *br,
 		if (!port || igmpv2)
 			continue;
 
-		spin_lock_bh(&br->multicast_lock);
+		br_multicast_lock_rcu_bh(br);
 		mdst = br_mdb_ip4_get(br, group, vid);
 		if (!mdst)
 			goto unlock_continue;
@@ -2413,7 +2433,7 @@ static int br_ip4_multicast_igmp3_report(struct net_bridge *br,
 		if (changed)
 			br_mdb_notify(br->dev, mdst, pg, RTM_NEWMDB);
 unlock_continue:
-		spin_unlock_bh(&br->multicast_lock);
+		br_multicast_unlock_bh(br);
 	}
 
 	return err;
@@ -2503,7 +2523,7 @@ static int br_ip6_multicast_mld2_report(struct net_bridge *br,
 		if (!port || mldv1)
 			continue;
 
-		spin_lock_bh(&br->multicast_lock);
+		br_multicast_lock_rcu_bh(br);
 		mdst = br_mdb_ip6_get(br, &grec->grec_mca, vid);
 		if (!mdst)
 			goto unlock_continue;
@@ -2552,7 +2572,7 @@ static int br_ip6_multicast_mld2_report(struct net_bridge *br,
 		if (changed)
 			br_mdb_notify(br->dev, mdst, pg, RTM_NEWMDB);
 unlock_continue:
-		spin_unlock_bh(&br->multicast_lock);
+		br_multicast_unlock_bh(br);
 	}
 
 	return err;
@@ -2731,7 +2751,7 @@ static void br_ip4_multicast_query(struct net_bridge *br,
 	unsigned long now = jiffies;
 	__be32 group;
 
-	spin_lock(&br->multicast_lock);
+	br_multicast_lock_rcu(br);
 	if (!netif_running(br->dev) ||
 	    (port && port->state == BR_STATE_DISABLED))
 		goto out;
@@ -2790,7 +2810,7 @@ static void br_ip4_multicast_query(struct net_bridge *br,
 	}
 
 out:
-	spin_unlock(&br->multicast_lock);
+	br_multicast_unlock(br);
 }
 
 #if IS_ENABLED(CONFIG_IPV6)
@@ -2813,7 +2833,7 @@ static int br_ip6_multicast_query(struct net_bridge *br,
 	bool is_general_query;
 	int err = 0;
 
-	spin_lock(&br->multicast_lock);
+	br_multicast_lock_rcu(br);
 	if (!netif_running(br->dev) ||
 	    (port && port->state == BR_STATE_DISABLED))
 		goto out;
@@ -2879,7 +2899,7 @@ static int br_ip6_multicast_query(struct net_bridge *br,
 	}
 
 out:
-	spin_unlock(&br->multicast_lock);
+	br_multicast_unlock(br);
 	return err;
 }
 #endif
@@ -2897,7 +2917,7 @@ br_multicast_leave_group(struct net_bridge *br,
 	unsigned long now;
 	unsigned long time;
 
-	spin_lock(&br->multicast_lock);
+	br_multicast_lock_rcu(br);
 	if (!netif_running(br->dev) ||
 	    (port && port->state == BR_STATE_DISABLED))
 		goto out;
@@ -2984,7 +3004,7 @@ br_multicast_leave_group(struct net_bridge *br,
 		break;
 	}
 out:
-	spin_unlock(&br->multicast_lock);
+	br_multicast_unlock(br);
 }
 
 static void br_ip4_multicast_leave_group(struct net_bridge *br,
@@ -3261,13 +3281,15 @@ static void br_multicast_query_expired(struct net_bridge *br,
 				       struct bridge_mcast_own_query *query,
 				       struct bridge_mcast_querier *querier)
 {
-	spin_lock(&br->multicast_lock);
+	rcu_read_lock();
+	br_multicast_lock_rcu(br);
 	if (query->startup_sent < br->multicast_startup_query_count)
 		query->startup_sent++;
 
 	RCU_INIT_POINTER(querier->port, NULL);
 	br_multicast_send_query(br, NULL, query);
-	spin_unlock(&br->multicast_lock);
+	br_multicast_unlock(br);
+	rcu_read_unlock();
 }
 
 static void br_ip4_multicast_query_expired(struct timer_list *t)
@@ -3292,9 +3314,11 @@ static void br_multicast_gc_work(struct work_struct *work)
 					     mcast_gc_work);
 	HLIST_HEAD(deleted_head);
 
-	spin_lock_bh(&br->multicast_lock);
+	rcu_read_lock();
+	br_multicast_lock_rcu_bh(br);
 	hlist_move_list(&br->mcast_gc_list, &deleted_head);
-	spin_unlock_bh(&br->multicast_lock);
+	br_multicast_unlock_bh(br);
+	rcu_read_unlock();
 
 	br_multicast_gc(&deleted_head);
 }
@@ -3441,11 +3465,11 @@ void br_multicast_dev_del(struct net_bridge *br)
 	HLIST_HEAD(deleted_head);
 	struct hlist_node *tmp;
 
-	spin_lock_bh(&br->multicast_lock);
+	br_multicast_lock_rtnl_bh(br);
 	hlist_for_each_entry_safe(mp, tmp, &br->mdb_list, mdb_node)
 		br_multicast_del_mdb_entry(mp);
 	hlist_move_list(&br->mcast_gc_list, &deleted_head);
-	spin_unlock_bh(&br->multicast_lock);
+	br_multicast_unlock_bh(br);
 
 	br_multicast_gc(&deleted_head);
 	cancel_work_sync(&br->mcast_gc_work);
@@ -3457,7 +3481,8 @@ int br_multicast_set_router(struct net_bridge *br, unsigned long val)
 {
 	int err = -EINVAL;
 
-	spin_lock_bh(&br->multicast_lock);
+	rcu_read_lock();
+	br_multicast_lock_rcu_bh(br);
 
 	switch (val) {
 	case MDB_RTR_TYPE_DISABLED:
@@ -3475,7 +3500,8 @@ int br_multicast_set_router(struct net_bridge *br, unsigned long val)
 		break;
 	}
 
-	spin_unlock_bh(&br->multicast_lock);
+	br_multicast_unlock_bh(br);
+	rcu_read_unlock();
 
 	return err;
 }
@@ -3499,7 +3525,8 @@ int br_multicast_set_port_router(struct net_bridge_port *p, unsigned long val)
 	unsigned long now = jiffies;
 	int err = -EINVAL;
 
-	spin_lock(&br->multicast_lock);
+	rcu_read_lock();
+	br_multicast_lock_rcu(br);
 	if (p->multicast_router == val) {
 		/* Refresh the temp router port timer */
 		if (p->multicast_router == MDB_RTR_TYPE_TEMP)
@@ -3532,7 +3559,8 @@ int br_multicast_set_port_router(struct net_bridge_port *p, unsigned long val)
 	}
 	err = 0;
 unlock:
-	spin_unlock(&br->multicast_lock);
+	br_multicast_unlock(br);
+	rcu_read_unlock();
 
 	return err;
 }
@@ -3565,7 +3593,8 @@ int br_multicast_toggle(struct net_bridge *br, unsigned long val)
 	struct net_bridge_port *port;
 	bool change_snoopers = false;
 
-	spin_lock_bh(&br->multicast_lock);
+	rcu_read_lock();
+	br_multicast_lock_rcu_bh(br);
 	if (!!br_opt_get(br, BROPT_MULTICAST_ENABLED) == !!val)
 		goto unlock;
 
@@ -3586,7 +3615,8 @@ int br_multicast_toggle(struct net_bridge *br, unsigned long val)
 	change_snoopers = true;
 
 unlock:
-	spin_unlock_bh(&br->multicast_lock);
+	br_multicast_unlock_bh(br);
+	rcu_read_unlock();
 
 	/* br_multicast_join_snoopers has the potential to cause
 	 * an MLD Report/Leave to be delivered to br_multicast_rcv,
@@ -3623,9 +3653,11 @@ bool br_multicast_router(const struct net_device *dev)
 	struct net_bridge *br = netdev_priv(dev);
 	bool is_router;
 
-	spin_lock_bh(&br->multicast_lock);
+	rcu_read_lock();
+	br_multicast_lock_rcu_bh(br);
 	is_router = br_multicast_is_router(br);
-	spin_unlock_bh(&br->multicast_lock);
+	br_multicast_unlock_bh(br);
+	rcu_read_unlock();
 	return is_router;
 }
 EXPORT_SYMBOL_GPL(br_multicast_router);
@@ -3636,7 +3668,8 @@ int br_multicast_set_querier(struct net_bridge *br, unsigned long val)
 
 	val = !!val;
 
-	spin_lock_bh(&br->multicast_lock);
+	rcu_read_lock();
+	br_multicast_lock_rcu_bh(br);
 	if (br_opt_get(br, BROPT_MULTICAST_QUERIER) == val)
 		goto unlock;
 
@@ -3659,7 +3692,8 @@ int br_multicast_set_querier(struct net_bridge *br, unsigned long val)
 #endif
 
 unlock:
-	spin_unlock_bh(&br->multicast_lock);
+	br_multicast_unlock_bh(br);
+	rcu_read_unlock();
 
 	return 0;
 }
@@ -3675,9 +3709,11 @@ int br_multicast_set_igmp_version(struct net_bridge *br, unsigned long val)
 		return -EINVAL;
 	}
 
-	spin_lock_bh(&br->multicast_lock);
+	rcu_read_lock();
+	br_multicast_lock_rcu_bh(br);
 	br->multicast_igmp_version = val;
-	spin_unlock_bh(&br->multicast_lock);
+	br_multicast_unlock_bh(br);
+	rcu_read_unlock();
 
 	return 0;
 }
@@ -3694,9 +3730,11 @@ int br_multicast_set_mld_version(struct net_bridge *br, unsigned long val)
 		return -EINVAL;
 	}
 
-	spin_lock_bh(&br->multicast_lock);
+	rcu_read_lock();
+	br_multicast_lock_rcu_bh(br);
 	br->multicast_mld_version = val;
-	spin_unlock_bh(&br->multicast_lock);
+	br_multicast_unlock_bh(br);
+	rcu_read_unlock();
 
 	return 0;
 }
diff --git a/net/bridge/br_multicast_eht.c b/net/bridge/br_multicast_eht.c
index fea38b9a7268..24732578115c 100644
--- a/net/bridge/br_multicast_eht.c
+++ b/net/bridge/br_multicast_eht.c
@@ -209,7 +209,8 @@ static void br_multicast_eht_set_entry_expired(struct timer_list *t)
 	struct net_bridge_group_eht_set_entry *set_h = from_timer(set_h, t, timer);
 	struct net_bridge *br = set_h->br;
 
-	spin_lock(&br->multicast_lock);
+	rcu_read_lock();
+	br_multicast_lock_rcu(br);
 	if (RB_EMPTY_NODE(&set_h->rb_node) || timer_pending(&set_h->timer))
 		goto out;
 
@@ -217,7 +218,8 @@ static void br_multicast_eht_set_entry_expired(struct timer_list *t)
 				       &set_h->eht_set->src_addr,
 				       &set_h->h_addr);
 out:
-	spin_unlock(&br->multicast_lock);
+	br_multicast_unlock(br);
+	rcu_read_unlock();
 }
 
 static void br_multicast_eht_set_expired(struct timer_list *t)
@@ -226,13 +228,15 @@ static void br_multicast_eht_set_expired(struct timer_list *t)
 							      timer);
 	struct net_bridge *br = eht_set->br;
 
-	spin_lock(&br->multicast_lock);
+	rcu_read_lock();
+	br_multicast_lock_rcu(br);
 	if (RB_EMPTY_NODE(&eht_set->rb_node) || timer_pending(&eht_set->timer))
 		goto out;
 
 	br_multicast_del_eht_set(eht_set);
 out:
-	spin_unlock(&br->multicast_lock);
+	br_multicast_unlock(br);
+	rcu_read_unlock();
 }
 
 static struct net_bridge_group_eht_host *
@@ -870,9 +874,11 @@ int br_multicast_eht_set_hosts_limit(struct net_bridge_port *p,
 	if (!eht_hosts_limit)
 		return -EINVAL;
 
-	spin_lock_bh(&br->multicast_lock);
+	rcu_read_lock();
+	br_multicast_lock_rcu_bh(br);
 	p->multicast_eht_hosts_limit = eht_hosts_limit;
-	spin_unlock_bh(&br->multicast_lock);
+	br_multicast_unlock_bh(br);
+	rcu_read_unlock();
 
 	return 0;
 }
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index d7d167e10b70..a4e35a9fbc45 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -863,6 +863,54 @@ static inline bool br_group_is_l2(const struct br_ip *group)
 #define mlock_dereference(X, br) \
 	rcu_dereference_protected(X, lockdep_is_held(&br->multicast_lock))
 
+static inline void br_multicast_lock_rcu(struct net_bridge *br)
+{
+	unsigned char nest_level = netdev_get_nest_level_rcu(br->dev);
+
+	spin_lock_nested(&br->multicast_lock, nest_level);
+}
+
+static inline void br_multicast_lock_rcu_bh(struct net_bridge *br)
+{
+	unsigned char nest_level = netdev_get_nest_level_rcu(br->dev);
+
+	local_bh_disable();
+	spin_lock_nested(&br->multicast_lock, nest_level);
+}
+
+static inline void br_multicast_lock_rtnl(struct net_bridge *br)
+{
+	unsigned char nest_level = 0;
+
+#ifdef CONFIG_LOCKDEP
+	ASSERT_RTNL();
+	nest_level = br->dev->nested_level;
+#endif
+	spin_lock_nested(&br->multicast_lock, nest_level);
+}
+
+static inline void br_multicast_lock_rtnl_bh(struct net_bridge *br)
+{
+	unsigned char nest_level = 0;
+
+#ifdef CONFIG_LOCKDEP
+	ASSERT_RTNL();
+	nest_level = br->dev->nested_level;
+#endif
+	local_bh_disable();
+	spin_lock_nested(&br->multicast_lock, nest_level);
+}
+
+static inline void br_multicast_unlock(struct net_bridge *br)
+{
+	spin_unlock(&br->multicast_lock);
+}
+
+static inline void br_multicast_unlock_bh(struct net_bridge *br)
+{
+	spin_unlock_bh(&br->multicast_lock);
+}
+
 static inline bool br_multicast_is_router(struct net_bridge *br)
 {
 	return br->multicast_router == 2 ||
-- 
2.17.1

