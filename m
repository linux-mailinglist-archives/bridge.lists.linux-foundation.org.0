Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15EC5603128
	for <lists.bridge@lfdr.de>; Tue, 18 Oct 2022 18:57:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E6CEC40BE6;
	Tue, 18 Oct 2022 16:57:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E6CEC40BE6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6cz3XK9aXvOD; Tue, 18 Oct 2022 16:57:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id BCEFB40BC6;
	Tue, 18 Oct 2022 16:57:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BCEFB40BC6
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A0BF7C0081;
	Tue, 18 Oct 2022 16:57:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6FA80C0032
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 16:57:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2004941A3E
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 16:57:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2004941A3E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cMVKXPC1ItaP for <bridge@lists.linux-foundation.org>;
 Tue, 18 Oct 2022 16:57:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4E2B41A3D
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D4E2B41A3D
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 16:56:59 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id AFC371884960;
 Tue, 18 Oct 2022 16:56:55 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 956DA25001FA;
 Tue, 18 Oct 2022 16:56:55 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 8C0CA9EC000A; Tue, 18 Oct 2022 16:56:55 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
Received: from fujitsu.vestervang (2-104-116-184-cable.dk.customer.tdc.net
 [2.104.116.184])
 by smtp.gigahost.dk (Postfix) with ESMTPSA id BC6719EC0001;
 Tue, 18 Oct 2022 16:56:54 +0000 (UTC)
From: "Hans J. Schultz" <netdev@kapio-technology.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue, 18 Oct 2022 18:56:09 +0200
Message-Id: <20221018165619.134535-3-netdev@kapio-technology.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221018165619.134535-1-netdev@kapio-technology.com>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
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
Subject: [Bridge] [PATCH v8 net-next 02/12] net: bridge: add blackhole fdb
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

Add a 'blackhole' fdb flag, ensuring that no forwarding from any port
to a destination MAC that has a FDB entry with this flag on will occur.
The packets will thus be dropped.

When the blackhole fdb flag is set, the 'local' flag will also be enabled
as blackhole entries are not associated with any port.

Thus the command will be alike to:
bridge fdb add MAC dev br0 local blackhole

Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
---
 include/uapi/linux/neighbour.h |  4 ++++
 net/bridge/br_fdb.c            | 37 ++++++++++++++++++++++++++++------
 net/bridge/br_input.c          |  5 ++++-
 net/bridge/br_private.h        |  1 +
 4 files changed, 40 insertions(+), 7 deletions(-)

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
index 2cf695ee61c5..15ead4dc6190 100644
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
@@ -1092,6 +1095,11 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 		modified = true;
 	}
 
+	if (blackhole != test_bit(BR_FDB_BLACKHOLE, &fdb->flags)) {
+		change_bit(BR_FDB_BLACKHOLE, &fdb->flags);
+		modified = true;
+	}
+
 	if (test_and_clear_bit(BR_FDB_LOCKED, &fdb->flags))
 		modified = true;
 
@@ -1113,7 +1121,7 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
 			struct net_bridge_port *p, const unsigned char *addr,
 			u16 nlh_flags, u16 vid, struct nlattr *nfea_tb[],
-			struct netlink_ext_ack *extack)
+			u32 ext_flags, struct netlink_ext_ack *extack)
 {
 	int err = 0;
 
@@ -1140,7 +1148,7 @@ static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
 		err = br_fdb_external_learn_add(br, p, addr, vid, true);
 	} else {
 		spin_lock_bh(&br->hash_lock);
-		err = fdb_add_entry(br, p, addr, ndm, nlh_flags, vid, nfea_tb);
+		err = fdb_add_entry(br, p, addr, ndm, nlh_flags, vid, ext_flags, nfea_tb);
 		spin_unlock_bh(&br->hash_lock);
 	}
 
@@ -1200,6 +1208,23 @@ int br_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 		return -EINVAL;
 	}
 
+	if (ext_flags & NTF_EXT_BLACKHOLE) {
+		if (!(ndm->ndm_state & NUD_PERMANENT)) {
+			NL_SET_ERR_MSG_MOD(extack, "Blackhole FDB entry must be permanent");
+			return -EINVAL;
+		}
+		if (p) {
+			NL_SET_ERR_MSG_MOD(extack,
+					   "Blackhole FDB entry cannot be applied on a port");
+			return -EINVAL;
+		}
+		if (ndm->ndm_flags & NTF_EXT_LEARNED) {
+			NL_SET_ERR_MSG_MOD(extack,
+					   "Blackhole FDB entry cannot be added as ext. learned");
+			return -EINVAL;
+		}
+	}
+
 	if (tb[NDA_FDB_EXT_ATTRS]) {
 		attr = tb[NDA_FDB_EXT_ATTRS];
 		err = nla_parse_nested(nfea_tb, NFEA_MAX, attr,
@@ -1219,10 +1244,10 @@ int br_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 
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
 
@@ -1234,7 +1259,7 @@ int br_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
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
-- 
2.34.1

