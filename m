Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5A67A6258
	for <lists.bridge@lfdr.de>; Tue, 19 Sep 2023 14:16:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6E5C81C46;
	Tue, 19 Sep 2023 12:16:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6E5C81C46
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256 header.s=mail header.b=oV2dvaYq
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e4SBGuXHk38H; Tue, 19 Sep 2023 12:16:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 1470083459;
	Tue, 19 Sep 2023 12:16:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1470083459
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C1B3BC0DDE;
	Tue, 19 Sep 2023 12:16:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 48790C0032
 for <bridge@lists.linux-foundation.org>; Tue, 19 Sep 2023 12:16:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5782760608
 for <bridge@lists.linux-foundation.org>; Tue, 19 Sep 2023 12:16:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5782760608
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256
 header.s=mail header.b=oV2dvaYq
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jqWuyDpEaqwY for <bridge@lists.linux-foundation.org>;
 Tue, 19 Sep 2023 12:16:37 +0000 (UTC)
Received: from mail.avm.de (mail.avm.de [212.42.244.94])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 47F8660F58
 for <bridge@lists.linux-foundation.org>; Tue, 19 Sep 2023 12:16:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47F8660F58
Received: from mail-auth.avm.de (dovecot-mx-01.avm.de [212.42.244.71])
 by mail.avm.de (Postfix) with ESMTPS;
 Tue, 19 Sep 2023 14:16:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=avm.de; s=mail;
 t=1695125794; bh=k+rrFznUIee0caiDlv/mLorEbq85LaHQjOW6asmxOBU=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=oV2dvaYqpWlPyfvKtqpAfB6XvY/69kLKNmpVQTmRWOMfrwa+lWcFGmfKFaXysyJL3
 8drZwCc2GGoJuLEfv+KZyUfBjt6L4b8h4M/ddlBwRGk9XFDwjy7d26dquAay43Taox
 +QzAoPpPyLziX/gP5CbulKPaHG+1G69RfShM5uEI=
Received: from localhost (unknown [172.17.88.63])
 by mail-auth.avm.de (Postfix) with ESMTPSA id 619ED81FF3;
 Tue, 19 Sep 2023 14:16:34 +0200 (CEST)
Date: Tue, 19 Sep 2023 10:12:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230919-fdb_limit-v4-3-39f0293807b8@avm.de>
References: <20230919-fdb_limit-v4-0-39f0293807b8@avm.de>
In-Reply-To: <20230919-fdb_limit-v4-0-39f0293807b8@avm.de>
To: "David S. Miller" <davem@davemloft.net>, Andrew Lunn <andrew@lunn.ch>, 
 David Ahern <dsahern@gmail.com>, Eric Dumazet <edumazet@google.com>, 
 Florian Fainelli <f.fainelli@gmail.com>, Ido Schimmel <idosch@nvidia.com>, 
 Jakub Kicinski <kuba@kernel.org>, Nikolay Aleksandrov <razor@blackwall.org>, 
 Oleksij Rempel <linux@rempel-privat.de>, Paolo Abeni <pabeni@redhat.com>, 
 Roopa Prabhu <roopa@nvidia.com>, Shuah Khan <shuah@kernel.org>, 
 Vladimir Oltean <vladimir.oltean@nxp.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1695111167; l=5624;
 i=jnixdorf-oss@avm.de; s=20230906; h=from:subject:message-id;
 bh=k+rrFznUIee0caiDlv/mLorEbq85LaHQjOW6asmxOBU=;
 b=o/5oFb1s/rluqufmqcIs+jSpCPZZ1KACH7foPNzymcbgU8DbhKFUdmfnfanhVbZZWDF8bNe79
 PLOvfEdoqSbBSWwjzR03lhTXkwOHK9T2GXgUTrOZgLX+AKo1owATUZp
X-Developer-Key: i=jnixdorf-oss@avm.de; a=ed25519;
 pk=KMraV4q7ANHRrwjf9EVhvU346JsqGGNSbPKeNILOQfo=
X-purgate-ID: 149429::1695125794-C6627D5A-0D4B6668/0/0
X-purgate-type: clean
X-purgate-size: 5626
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for
 further information)
X-purgate: clean
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Johannes Nixdorf <jnixdorf-oss@avm.de>, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org
Subject: [Bridge] [PATCH net-next v4 3/6] net: bridge: Track and limit
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
generated entries in fdb_n_learned, and a limit in fdb_max_learned. If
the limit is hit new entries are not learned anymore.

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
 net/bridge/br_fdb.c     | 35 +++++++++++++++++++++++++++++++++--
 net/bridge/br_private.h |  4 ++++
 2 files changed, 37 insertions(+), 2 deletions(-)

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index f517ea92132c..cf77e71e026f 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -329,11 +329,18 @@ static void fdb_delete(struct net_bridge *br, struct net_bridge_fdb_entry *f,
 	hlist_del_init_rcu(&f->fdb_node);
 	rhashtable_remove_fast(&br->fdb_hash_tbl, &f->rhnode,
 			       br_fdb_rht_params);
+	if (test_and_clear_bit(BR_FDB_DYNAMIC_LEARNED, &f->flags))
+		atomic_dec(&br->fdb_n_learned);
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
+	u32 max_learned = READ_ONCE(br->fdb_max_learned);
 	struct net_bridge_fdb_entry *fdb;
 	int err;
 
+	if (likely(learned)) {
+		int n_learned = atomic_read(&br->fdb_n_learned);
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
+		atomic_inc(&br->fdb_n_learned);
+
 	hlist_add_head_rcu(&fdb->fdb_node, &br->fdb_list);
 
 	return fdb;
@@ -893,8 +914,12 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
 					clear_bit(BR_FDB_LOCKED, &fdb->flags);
 			}
 
-			if (unlikely(test_bit(BR_FDB_ADDED_BY_USER, &flags)))
+			if (unlikely(test_bit(BR_FDB_ADDED_BY_USER, &flags))) {
 				set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
+				if (test_and_clear_bit(BR_FDB_DYNAMIC_LEARNED,
+						       &fdb->flags))
+					atomic_dec(&br->fdb_n_learned);
+			}
 			if (unlikely(fdb_modified)) {
 				trace_br_fdb_update(br, source, addr, vid, flags);
 				fdb_notify(br, fdb, RTM_NEWNEIGH, true);
@@ -1072,6 +1097,8 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 		}
 
 		set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
+		if (test_and_clear_bit(BR_FDB_DYNAMIC_LEARNED, &fdb->flags))
+			atomic_dec(&br->fdb_n_learned);
 	}
 
 	if (fdb_to_nud(br, fdb) != state) {
@@ -1446,6 +1473,10 @@ int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
 		if (!p)
 			set_bit(BR_FDB_LOCAL, &fdb->flags);
 
+		if ((swdev_notify || !p) &&
+		    test_and_clear_bit(BR_FDB_DYNAMIC_LEARNED, &fdb->flags))
+			atomic_dec(&br->fdb_n_learned);
+
 		if (modified)
 			fdb_notify(br, fdb, RTM_NEWNEIGH, swdev_notify);
 	}
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index a1f4acfa6994..8d2f9a3a3ecd 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -274,6 +274,7 @@ enum {
 	BR_FDB_NOTIFY,
 	BR_FDB_NOTIFY_INACTIVE,
 	BR_FDB_LOCKED,
+	BR_FDB_DYNAMIC_LEARNED,
 };
 
 struct net_bridge_fdb_key {
@@ -555,6 +556,9 @@ struct net_bridge {
 	struct kobject			*ifobj;
 	u32				auto_cnt;
 
+	atomic_t			fdb_n_learned;
+	u32				fdb_max_learned;
+
 #ifdef CONFIG_NET_SWITCHDEV
 	/* Counter used to make sure that hardware domains get unique
 	 * identifiers in case a bridge spans multiple switchdev instances.

-- 
2.42.0

