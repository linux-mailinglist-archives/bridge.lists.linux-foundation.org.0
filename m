Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C98495EDFA6
	for <lists.bridge@lfdr.de>; Wed, 28 Sep 2022 17:06:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B3958319F;
	Wed, 28 Sep 2022 15:06:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B3958319F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YwwpYbWy7UMa; Wed, 28 Sep 2022 15:06:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id CD9AF831AC;
	Wed, 28 Sep 2022 15:06:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD9AF831AC
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8EC74C0078;
	Wed, 28 Sep 2022 15:06:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CFA85C002D
 for <bridge@lists.linux-foundation.org>; Wed, 28 Sep 2022 15:06:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B7A3583168
 for <bridge@lists.linux-foundation.org>; Wed, 28 Sep 2022 15:06:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B7A3583168
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tw6m3l4meHC8 for <bridge@lists.linux-foundation.org>;
 Wed, 28 Sep 2022 15:06:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A485983118
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A485983118
 for <bridge@lists.linux-foundation.org>; Wed, 28 Sep 2022 15:06:23 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 88A821884BDC;
 Wed, 28 Sep 2022 15:06:21 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 810092500370;
 Wed, 28 Sep 2022 15:06:21 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 72FA99EC000A; Wed, 28 Sep 2022 15:06:21 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
Received: from fujitsu.vestervang (2-104-116-184-cable.dk.customer.tdc.net
 [2.104.116.184])
 by smtp.gigahost.dk (Postfix) with ESMTPSA id A17809120FED;
 Wed, 28 Sep 2022 15:06:20 +0000 (UTC)
From: Hans Schultz <netdev@kapio-technology.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Wed, 28 Sep 2022 17:02:49 +0200
Message-Id: <20220928150256.115248-3-netdev@kapio-technology.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220928150256.115248-1-netdev@kapio-technology.com>
References: <20220928150256.115248-1-netdev@kapio-technology.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org,
 "Hans J. Schultz" <netdev@kapio-technology.com>,
 Joachim Wiberg <troglobit@gmail.com>, Shuah Khan <shuah@kernel.org>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Roopa Prabhu <roopa@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Amit Cohen <amcohen@nvidia.com>, Christian Marangi <ansuelsmth@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Schultz <schultz.hans@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 Petr Machata <petrm@nvidia.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Vladimir Oltean <olteanv@gmail.com>,
 Florent Fourcot <florent.fourcot@wifirst.fr>
Subject: [Bridge] [PATCH v6 net-next 2/9] net: bridge: add blackhole fdb
	entry flag
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

From: "Hans J. Schultz" <netdev@kapio-technology.com>

Add a 'blackhole' fdb flag, ensuring that no forwarding from any port
to a destination MAC that has a FDB entry with this flag on will occur.
The packets will thus be dropped.

When the blackhole fdb flag is set, the 'local' flag will also be enabled
as blackhole entries are not associated with any port.

Thus the command will be alike to:
bridge fdb add MAC dev br0 self local blackhole

Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
---
 include/uapi/linux/neighbour.h |  4 ++++
 net/bridge/br_fdb.c            | 26 ++++++++++++++++++++------
 net/bridge/br_input.c          |  5 ++++-
 net/bridge/br_private.h        |  1 +
 net/core/rtnetlink.c           |  2 +-
 5 files changed, 30 insertions(+), 8 deletions(-)

diff --git a/include/uapi/linux/neighbour.h b/include/uapi/linux/neighbour.h
index 4dda051b0ba8..cc7d540eb734 100644
--- a/include/uapi/linux/neighbour.h
+++ b/include/uapi/linux/neighbour.h
@@ -54,6 +54,7 @@ enum {
 /* Extended flags under NDA_FLAGS_EXT: */
 #define NTF_EXT_MANAGED		(1 << 0)
 #define NTF_EXT_LOCKED		(1 << 1)
+#define NTF_EXT_BLACKHOLE	(1 << 2)
 
 /*
  *	Neighbor Cache Entry States.
@@ -91,6 +92,9 @@ enum {
  * NTF_EXT_LOCKED flagged FDB entries are placeholder entries used with the
  * locked port feature, that ensures that an entry exists while at the same
  * time dropping packets on ingress with src MAC and VID matching the entry.
+ *
+ * NTF_EXT_BLACKHOLE flagged FDB entries ensure that no forwarding is allowed
+ * from any port to the destination MAC, VID pair associated with it.
  */
 
 struct nda_cacheinfo {
diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 2cf695ee61c5..02243640fda3 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -128,6 +128,8 @@ static int fdb_fill_info(struct sk_buff *skb, const struct net_bridge *br,
 		ndm->ndm_flags |= NTF_STICKY;
 	if (test_bit(BR_FDB_LOCKED, &fdb->flags))
 		ext_flags |= NTF_EXT_LOCKED;
+	if (test_bit(BR_FDB_BLACKHOLE, &fdb->flags))
+		ext_flags |= NTF_EXT_BLACKHOLE;
 
 	if (nla_put(skb, NDA_LLADDR, ETH_ALEN, &fdb->key.addr))
 		goto nla_put_failure;
@@ -1018,8 +1020,9 @@ static bool fdb_handle_notify(struct net_bridge_fdb_entry *fdb, u8 notify)
 /* Update (create or replace) forwarding database entry */
 static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 			 const u8 *addr, struct ndmsg *ndm, u16 flags, u16 vid,
-			 struct nlattr *nfea_tb[])
+			 u32 ext_flags, struct nlattr *nfea_tb[])
 {
+	bool blackhole = !!(ext_flags & NTF_EXT_BLACKHOLE);
 	bool is_sticky = !!(ndm->ndm_flags & NTF_STICKY);
 	bool refresh = !nfea_tb[NFEA_DONT_REFRESH];
 	struct net_bridge_fdb_entry *fdb;
@@ -1092,6 +1095,14 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 		modified = true;
 	}
 
+	if (blackhole != test_bit(BR_FDB_BLACKHOLE, &fdb->flags)) {
+		change_bit(BR_FDB_BLACKHOLE, &fdb->flags);
+		modified = true;
+	}
+
+	if (blackhole)
+		set_bit(BR_FDB_LOCAL, &fdb->flags);
+
 	if (test_and_clear_bit(BR_FDB_LOCKED, &fdb->flags))
 		modified = true;
 
@@ -1113,7 +1124,7 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
 			struct net_bridge_port *p, const unsigned char *addr,
 			u16 nlh_flags, u16 vid, struct nlattr *nfea_tb[],
-			struct netlink_ext_ack *extack)
+			u32 ext_flags, struct netlink_ext_ack *extack)
 {
 	int err = 0;
 
@@ -1138,9 +1149,12 @@ static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
 			return -EINVAL;
 		}
 		err = br_fdb_external_learn_add(br, p, addr, vid, true);
+	} else if ((ext_flags & NTF_EXT_BLACKHOLE) && p) {
+		NL_SET_ERR_MSG_MOD(extack, "Blackhole FDB entry cannot be applied on a port");
+		return -EINVAL;
 	} else {
 		spin_lock_bh(&br->hash_lock);
-		err = fdb_add_entry(br, p, addr, ndm, nlh_flags, vid, nfea_tb);
+		err = fdb_add_entry(br, p, addr, ndm, nlh_flags, vid, ext_flags, nfea_tb);
 		spin_unlock_bh(&br->hash_lock);
 	}
 
@@ -1219,10 +1233,10 @@ int br_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 
 		/* VID was specified, so use it. */
 		err = __br_fdb_add(ndm, br, p, addr, nlh_flags, vid, nfea_tb,
-				   extack);
+				   ext_flags, extack);
 	} else {
 		err = __br_fdb_add(ndm, br, p, addr, nlh_flags, 0, nfea_tb,
-				   extack);
+				   ext_flags, extack);
 		if (err || !vg || !vg->num_vlans)
 			goto out;
 
@@ -1234,7 +1248,7 @@ int br_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 			if (!br_vlan_should_use(v))
 				continue;
 			err = __br_fdb_add(ndm, br, p, addr, nlh_flags, v->vid,
-					   nfea_tb, extack);
+					   nfea_tb, ext_flags, extack);
 			if (err)
 				goto out;
 		}
diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index 068fced7693c..665d1d6bdc75 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -193,8 +193,11 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 	if (dst) {
 		unsigned long now = jiffies;
 
-		if (test_bit(BR_FDB_LOCAL, &dst->flags))
+		if (test_bit(BR_FDB_LOCAL, &dst->flags)) {
+			if (unlikely(test_bit(BR_FDB_BLACKHOLE, &dst->flags)))
+				goto drop;
 			return br_pass_frame_up(skb);
+		}
 
 		if (now != dst->used)
 			dst->used = now;
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 4ce8b8e5ae0b..e7a08657c7ed 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -253,6 +253,7 @@ enum {
 	BR_FDB_NOTIFY,
 	BR_FDB_NOTIFY_INACTIVE,
 	BR_FDB_LOCKED,
+	BR_FDB_BLACKHOLE,
 };
 
 struct net_bridge_fdb_key {
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 8008ceb45605..ae641dfea5f2 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -4054,7 +4054,7 @@ int ndo_dflt_fdb_add(struct ndmsg *ndm,
 	if (tb[NDA_FLAGS_EXT])
 		ext_flags = nla_get_u32(tb[NDA_FLAGS_EXT]);
 
-	if (ext_flags & NTF_EXT_LOCKED) {
+	if (ext_flags & (NTF_EXT_LOCKED | NTF_EXT_BLACKHOLE)) {
 		netdev_info(dev, "invalid flags given to default FDB implementation\n");
 		return err;
 	}
-- 
2.34.1

