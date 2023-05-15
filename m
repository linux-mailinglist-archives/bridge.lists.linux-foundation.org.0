Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F24707B8D
	for <lists.bridge@lfdr.de>; Thu, 18 May 2023 10:02:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E31BE42A64;
	Thu, 18 May 2023 08:02:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E31BE42A64
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256 header.s=mail header.b=lED0RoTh
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SlMNwLqaosvS; Thu, 18 May 2023 08:02:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 24B5F40BE3;
	Thu, 18 May 2023 08:02:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24B5F40BE3
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A22DEC0089;
	Thu, 18 May 2023 08:02:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3B227C002A
 for <bridge@lists.linux-foundation.org>; Mon, 15 May 2023 09:00:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 096E281FCE
 for <bridge@lists.linux-foundation.org>; Mon, 15 May 2023 09:00:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 096E281FCE
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256
 header.s=mail header.b=lED0RoTh
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mGYeAgj86Y8u for <bridge@lists.linux-foundation.org>;
 Mon, 15 May 2023 09:00:20 +0000 (UTC)
X-Greylist: delayed 00:08:17 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B7DB81F60
Received: from mail.avm.de (mail.avm.de [212.42.244.94])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8B7DB81F60
 for <bridge@lists.linux-foundation.org>; Mon, 15 May 2023 09:00:20 +0000 (UTC)
Received: from mail-auth.avm.de (dovecot-mx-01.avm.de [212.42.244.71])
 by mail.avm.de (Postfix) with ESMTPS;
 Mon, 15 May 2023 10:51:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=avm.de; s=mail;
 t=1684140718; bh=oAbR8xTYfBfy04OtSai2/0WE9QqwsIz0uB1ebPHP5xY=;
 h=From:To:Cc:Subject:Date:From;
 b=lED0RoThbpJrphMiB5aki2Oovtv4whzKZobXtxi426eNMH9Omch8FXAku1Iapzf90
 J+sauqU6otzmnoa44O/a2L7W69qaywZqMNzIXmlJUpXoqF3VxIZrRO+Nv0il3SOc6K
 2pQ+md8c8lE1FeJ5NED1J4mqXpkE8k0TNGRwwkJg=
Received: from u-jnixdorf.avm.de (unknown [172.17.88.63])
 by mail-auth.avm.de (Postfix) with ESMTPA id 740F880463;
 Mon, 15 May 2023 10:51:58 +0200 (CEST)
To: netdev@vger.kernel.org
Date: Mon, 15 May 2023 10:50:45 +0200
Message-Id: <20230515085046.4457-1-jnixdorf-oss@avm.de>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-purgate-ID: 149429::1684140718-E2C3684B-424E7B8E/0/0
X-purgate-type: clean
X-purgate-size: 5625
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for
 further information)
X-purgate: clean
X-Mailman-Approved-At: Thu, 18 May 2023 08:02:25 +0000
Cc: Johannes Nixdorf <jnixdorf-oss@avm.de>,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH net-next 1/2] bridge: Add a limit on FDB entries
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
From: Johannes Nixdorf via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Johannes Nixdorf <jnixdorf-oss@avm.de>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

A malicious actor behind one bridge port may spam the kernel with packets
with a random source MAC address, each of which will create an FDB entry,
each of which is a dynamic allocation in the kernel.

There are roughly 2^48 different MAC addresses, further limited by the
rhashtable they are stored in to 2^31. Each entry is of the type struct
net_bridge_fdb_entry, which is currently 128 bytes big. This means the
maximum amount of memory allocated for FDB entries is 2^31 * 128B =
256GiB, which is too much for most computers.

Mitigate this by adding a bridge netlink setting IFLA_BR_FDB_MAX_ENTRIES,
which, if nonzero, limits the amount of entries to a user specified
maximum.

For backwards compatibility the default setting of 0 disables the limit.

All changes to fdb_n_entries are under br->hash_lock, which means we do
not need additional locking. The call paths are (✓ denotes that
br->hash_lock is taken around the next call):

 - fdb_delete <-+- fdb_delete_local <-+- br_fdb_changeaddr ✓
                |                     +- br_fdb_change_mac_address ✓
                |                     +- br_fdb_delete_by_port ✓
                +- br_fdb_find_delete_local ✓
                +- fdb_add_local <-+- br_fdb_changeaddr ✓
                |                  +- br_fdb_change_mac_address ✓
                |                  +- br_fdb_add_local ✓
                +- br_fdb_cleanup ✓
                +- br_fdb_flush ✓
                +- br_fdb_delete_by_port ✓
                +- fdb_delete_by_addr_and_port <--- __br_fdb_delete ✓
                +- br_fdb_external_learn_del ✓
 - fdb_create <-+- fdb_add_local <-+- br_fdb_changeaddr ✓
                |                  +- br_fdb_change_mac_address ✓
                |                  +- br_fdb_add_local ✓
                +- br_fdb_update ✓
                +- fdb_add_entry <--- __br_fdb_add ✓
                +- br_fdb_external_learn_add ✓

Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
---
 include/uapi/linux/if_link.h | 1 +
 net/bridge/br_device.c       | 2 ++
 net/bridge/br_fdb.c          | 6 ++++++
 net/bridge/br_netlink.c      | 9 ++++++++-
 net/bridge/br_private.h      | 2 ++
 5 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
index 4ac1000b0ef2..27cf5f2d8790 100644
--- a/include/uapi/linux/if_link.h
+++ b/include/uapi/linux/if_link.h
@@ -510,6 +510,7 @@ enum {
 	IFLA_BR_VLAN_STATS_PER_PORT,
 	IFLA_BR_MULTI_BOOLOPT,
 	IFLA_BR_MCAST_QUERIER_STATE,
+	IFLA_BR_FDB_MAX_ENTRIES,
 	__IFLA_BR_MAX,
 };
 
diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
index 8eca8a5c80c6..d455a28df7c9 100644
--- a/net/bridge/br_device.c
+++ b/net/bridge/br_device.c
@@ -528,6 +528,8 @@ void br_dev_setup(struct net_device *dev)
 	br->bridge_hello_time = br->hello_time = 2 * HZ;
 	br->bridge_forward_delay = br->forward_delay = 15 * HZ;
 	br->bridge_ageing_time = br->ageing_time = BR_DEFAULT_AGEING_TIME;
+	br->fdb_n_entries = 0;
+	br->fdb_max_entries = 0;
 	dev->max_mtu = ETH_MAX_MTU;
 
 	br_netfilter_rtable_init(br);
diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index e69a872bfc1d..8a833e6dee92 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -329,6 +329,8 @@ static void fdb_delete(struct net_bridge *br, struct net_bridge_fdb_entry *f,
 	hlist_del_init_rcu(&f->fdb_node);
 	rhashtable_remove_fast(&br->fdb_hash_tbl, &f->rhnode,
 			       br_fdb_rht_params);
+	if (!WARN_ON(!br->fdb_n_entries))
+		br->fdb_n_entries--;
 	fdb_notify(br, f, RTM_DELNEIGH, swdev_notify);
 	call_rcu(&f->rcu, fdb_rcu_free);
 }
@@ -391,6 +393,9 @@ static struct net_bridge_fdb_entry *fdb_create(struct net_bridge *br,
 	struct net_bridge_fdb_entry *fdb;
 	int err;
 
+	if (unlikely(br->fdb_max_entries && br->fdb_n_entries >= br->fdb_max_entries))
+		return NULL;
+
 	fdb = kmem_cache_alloc(br_fdb_cache, GFP_ATOMIC);
 	if (!fdb)
 		return NULL;
@@ -408,6 +413,7 @@ static struct net_bridge_fdb_entry *fdb_create(struct net_bridge *br,
 	}
 
 	hlist_add_head_rcu(&fdb->fdb_node, &br->fdb_list);
+	br->fdb_n_entries++;
 
 	return fdb;
 }
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 05c5863d2e20..e5b8d36a3291 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -1527,6 +1527,12 @@ static int br_changelink(struct net_device *brdev, struct nlattr *tb[],
 			return err;
 	}
 
+	if (data[IFLA_BR_FDB_MAX_ENTRIES]) {
+		u32 val = nla_get_u32(data[IFLA_BR_FDB_MAX_ENTRIES]);
+
+		br->fdb_max_entries = val;
+	}
+
 	return 0;
 }
 
@@ -1656,7 +1662,8 @@ static int br_fill_info(struct sk_buff *skb, const struct net_device *brdev)
 	    nla_put_u8(skb, IFLA_BR_TOPOLOGY_CHANGE_DETECTED,
 		       br->topology_change_detected) ||
 	    nla_put(skb, IFLA_BR_GROUP_ADDR, ETH_ALEN, br->group_addr) ||
-	    nla_put(skb, IFLA_BR_MULTI_BOOLOPT, sizeof(bm), &bm))
+	    nla_put(skb, IFLA_BR_MULTI_BOOLOPT, sizeof(bm), &bm) ||
+	    nla_put_u32(skb, IFLA_BR_FDB_MAX_ENTRIES, br->fdb_max_entries))
 		return -EMSGSIZE;
 
 #ifdef CONFIG_BRIDGE_VLAN_FILTERING
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 2119729ded2b..64fb359c6e3e 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -494,6 +494,8 @@ struct net_bridge {
 #endif
 
 	struct rhashtable		fdb_hash_tbl;
+	u32				fdb_n_entries;
+	u32				fdb_max_entries;
 	struct list_head		port_list;
 #if IS_ENABLED(CONFIG_BRIDGE_NETFILTER)
 	union {
-- 
2.40.1

