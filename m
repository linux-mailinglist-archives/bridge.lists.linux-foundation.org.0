Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB275792249
	for <lists.bridge@lfdr.de>; Tue,  5 Sep 2023 13:55:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C2E5E81F2D;
	Tue,  5 Sep 2023 11:55:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2E5E81F2D
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256 header.s=mail header.b=w0g7TxUz
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pQWgTcUygQ8g; Tue,  5 Sep 2023 11:55:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 1654181F01;
	Tue,  5 Sep 2023 11:55:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1654181F01
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0F7B0C0DDB;
	Tue,  5 Sep 2023 11:55:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D211FC0032
 for <bridge@lists.linux-foundation.org>; Tue,  5 Sep 2023 11:55:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9E0DD4085C
 for <bridge@lists.linux-foundation.org>; Tue,  5 Sep 2023 11:55:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E0DD4085C
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256
 header.s=mail header.b=w0g7TxUz
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 44IlEmM-B8mX for <bridge@lists.linux-foundation.org>;
 Tue,  5 Sep 2023 11:55:20 +0000 (UTC)
X-Greylist: delayed 326 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 05 Sep 2023 11:55:19 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C2171404AF
Received: from mail.avm.de (mail.avm.de [212.42.244.119])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C2171404AF
 for <bridge@lists.linux-foundation.org>; Tue,  5 Sep 2023 11:55:19 +0000 (UTC)
Received: from mail-auth.avm.de (unknown [IPv6:2001:bf0:244:244::71])
 by mail.avm.de (Postfix) with ESMTPS;
 Tue,  5 Sep 2023 13:49:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=avm.de; s=mail;
 t=1693914590; bh=9CzF9wwiQ2iiDMYvUIonfLdBdIiRKAnlIBWP9H0gNS0=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=w0g7TxUzuvW16z0e/fQ7D7kb18uJDzxO4+kNBeJBmBvXGsgCsLbnYkzLPCjEM3wUl
 LFnQQq/1LKMI9fy7LaG0EYxVthTtqA73awAqhb3ike696Q7G+7vSsLzHMlGlBFhFQy
 GqAo25J+kI2CLKl2DPMPlk9xii36Z079Oi6br7YA=
Received: from localhost (unknown [172.17.88.63])
 by mail-auth.avm.de (Postfix) with ESMTPSA id 539ED82160;
 Tue,  5 Sep 2023 13:49:50 +0200 (CEST)
Date: Tue, 05 Sep 2023 13:47:20 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230905-fdb_limit-v3-3-7597cd500a82@avm.de>
References: <20230905-fdb_limit-v3-0-7597cd500a82@avm.de>
In-Reply-To: <20230905-fdb_limit-v3-0-7597cd500a82@avm.de>
To: "David S. Miller" <davem@davemloft.net>, Andrew Lunn <andrew@lunn.ch>, 
 David Ahern <dsahern@gmail.com>, Eric Dumazet <edumazet@google.com>, 
 Florian Fainelli <f.fainelli@gmail.com>, Ido Schimmel <idosch@nvidia.com>, 
 Jakub Kicinski <kuba@kernel.org>, Nikolay Aleksandrov <razor@blackwall.org>, 
 Oleksij Rempel <linux@rempel-privat.de>, Paolo Abeni <pabeni@redhat.com>, 
 Roopa Prabhu <roopa@nvidia.com>, Shuah Khan <shuah@kernel.org>, 
 Vladimir Oltean <vladimir.oltean@nxp.com>
X-Mailer: b4 0.12.3
X-purgate-ID: 149429::1693914590-B34BF98B-EB37643D/0/0
X-purgate-type: clean
X-purgate-size: 5689
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for
 further information)
X-purgate: clean
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Johannes Nixdorf <jnixdorf-oss@avm.de>, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org
Subject: [Bridge] [PATCH net-next v3 3/6] net: bridge: Track and limit
 dynamically learned FDB entries
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

Mitigate this by maintaining a per bridge count of those automatically
generated entries in fdb_n_learned_entries, and a limit in
fdb_max_learned_entries. If the limit is hit new entries are not learned
anymore.

For backwards compatibility the default setting of 0 disables the limit.

User-added entries by netlink or from bridge or bridge port addresses
are never blocked and do not count towards that limit.

Introduce a new fdb entry flag BR_FDB_DYNAMIC_LEARNED to keep track of
whether an FDB entry is included in the count. The flag is enabled for
dynamically learned entries, and disabled for all other entries. This
should be equivalent to BR_FDB_ADDED_BY_USER and BR_FDB_LOCAL being unset,
but contrary to the two flags it can be toggled atomically.

Atomicity is required here, as there are multiple callers that modify the
flags, but are not under a common lock (br_fdb_update is the exception
for br->hash_lock, br_fdb_external_learn_add for RTNL).

Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
---
 net/bridge/br_fdb.c     | 34 ++++++++++++++++++++++++++++++++--
 net/bridge/br_private.h |  4 ++++
 2 files changed, 36 insertions(+), 2 deletions(-)

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 06e28ef8d9ff..f8a96ed9a338 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -329,11 +329,18 @@ static void fdb_delete(struct net_bridge *br, struct net_bridge_fdb_entry *f,
 	hlist_del_init_rcu(&f->fdb_node);
 	rhashtable_remove_fast(&br->fdb_hash_tbl, &f->rhnode,
 			       br_fdb_rht_params);
+	if (test_bit(BR_FDB_DYNAMIC_LEARNED, &f->flags))
+		atomic_dec(&br->fdb_n_learned_entries);
 	fdb_notify(br, f, RTM_DELNEIGH, swdev_notify);
 	call_rcu(&f->rcu, fdb_rcu_free);
 }
 
-/* Delete a local entry if no other port had the same address. */
+/* Delete a local entry if no other port had the same address.
+ *
+ * This function should only be called on entries with BR_FDB_LOCAL set,
+ * so even with BR_FDB_ADDED_BY_USER cleared we never need to increase
+ * the accounting for dynamically learned entries again.
+ */
 static void fdb_delete_local(struct net_bridge *br,
 			     const struct net_bridge_port *p,
 			     struct net_bridge_fdb_entry *f)
@@ -388,9 +395,20 @@ static struct net_bridge_fdb_entry *fdb_create(struct net_bridge *br,
 					       __u16 vid,
 					       unsigned long flags)
 {
+	bool learned = !test_bit(BR_FDB_ADDED_BY_USER, &flags) &&
+		       !test_bit(BR_FDB_LOCAL, &flags);
+	u32 max_learned = READ_ONCE(br->fdb_max_learned_entries);
 	struct net_bridge_fdb_entry *fdb;
 	int err;
 
+	if (likely(learned)) {
+		int n_learned = atomic_read(&br->fdb_n_learned_entries);
+
+		if (unlikely(max_learned && n_learned >= max_learned))
+			return NULL;
+		__set_bit(BR_FDB_DYNAMIC_LEARNED, &flags);
+	}
+
 	fdb = kmem_cache_alloc(br_fdb_cache, GFP_ATOMIC);
 	if (!fdb)
 		return NULL;
@@ -407,6 +425,9 @@ static struct net_bridge_fdb_entry *fdb_create(struct net_bridge *br,
 		return NULL;
 	}
 
+	if (likely(learned))
+		atomic_inc(&br->fdb_n_learned_entries);
+
 	hlist_add_head_rcu(&fdb->fdb_node, &br->fdb_list);
 
 	return fdb;
@@ -893,8 +914,11 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
 					clear_bit(BR_FDB_LOCKED, &fdb->flags);
 			}
 
-			if (unlikely(test_bit(BR_FDB_ADDED_BY_USER, &flags)))
+			if (unlikely(test_bit(BR_FDB_ADDED_BY_USER, &flags))) {
 				set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
+				if (test_and_clear_bit(BR_FDB_DYNAMIC_LEARNED, &fdb->flags))
+					atomic_dec(&br->fdb_n_learned_entries);
+			}
 			if (unlikely(fdb_modified)) {
 				trace_br_fdb_update(br, source, addr, vid, flags);
 				fdb_notify(br, fdb, RTM_NEWNEIGH, true);
@@ -1071,6 +1095,8 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 		}
 
 		set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
+		if (test_and_clear_bit(BR_FDB_DYNAMIC_LEARNED, &fdb->flags))
+			atomic_dec(&br->fdb_n_learned_entries);
 	}
 
 	if (fdb_to_nud(br, fdb) != state) {
@@ -1445,6 +1471,10 @@ int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
 		if (!p)
 			set_bit(BR_FDB_LOCAL, &fdb->flags);
 
+		if ((swdev_notify || !p) &&
+		    test_and_clear_bit(BR_FDB_DYNAMIC_LEARNED, &fdb->flags))
+			atomic_dec(&br->fdb_n_learned_entries);
+
 		if (modified)
 			fdb_notify(br, fdb, RTM_NEWNEIGH, swdev_notify);
 	}
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index a63b32c1638e..675cc40ae1dc 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -274,6 +274,7 @@ enum {
 	BR_FDB_NOTIFY,
 	BR_FDB_NOTIFY_INACTIVE,
 	BR_FDB_LOCKED,
+	BR_FDB_DYNAMIC_LEARNED,
 };
 
 struct net_bridge_fdb_key {
@@ -554,6 +555,9 @@ struct net_bridge {
 	struct kobject			*ifobj;
 	u32				auto_cnt;
 
+	atomic_t			fdb_n_learned_entries;
+	u32				fdb_max_learned_entries;
+
 #ifdef CONFIG_NET_SWITCHDEV
 	/* Counter used to make sure that hardware domains get unique
 	 * identifiers in case a bridge spans multiple switchdev instances.

-- 
2.42.0

