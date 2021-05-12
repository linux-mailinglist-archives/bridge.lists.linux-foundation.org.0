Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A2737EF74
	for <lists.bridge@lfdr.de>; Thu, 13 May 2021 01:20:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 351FE83B3C;
	Wed, 12 May 2021 23:19:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WEkwZDAi4oxF; Wed, 12 May 2021 23:19:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTP id C62DE83A66;
	Wed, 12 May 2021 23:19:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A172EC000E;
	Wed, 12 May 2021 23:19:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 183B9C0028
 for <bridge@lists.linux-foundation.org>; Wed, 12 May 2021 23:19:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F0351400CB
 for <bridge@lists.linux-foundation.org>; Wed, 12 May 2021 23:19:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o-eA--CirYrY for <bridge@lists.linux-foundation.org>;
 Wed, 12 May 2021 23:19:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 34F43400AF
 for <bridge@lists.linux-foundation.org>; Wed, 12 May 2021 23:19:51 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id EB30D41007; Thu, 13 May 2021 01:19:48 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Date: Thu, 13 May 2021 01:19:32 +0200
Message-Id: <20210512231941.19211-3-linus.luessing@c0d3.blue>
In-Reply-To: <20210512231941.19211-1-linus.luessing@c0d3.blue>
References: <20210512231941.19211-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.2
Cc: bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>
Subject: [Bridge] [net-next v3 02/11] net: bridge: mcast: add wrappers for
	router node retrieval
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

In preparation for the upcoming split of multicast router state into
their IPv4 and IPv6 variants and to avoid IPv6 #ifdef clutter later add
two wrapper functions for router node retrieval in the payload
forwarding code.

Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
---
 net/bridge/br_forward.c |  5 +++--
 net/bridge/br_private.h | 10 ++++++++++
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
index eb9847a..4e591b1 100644
--- a/net/bridge/br_forward.c
+++ b/net/bridge/br_forward.c
@@ -276,7 +276,8 @@ void br_multicast_flood(struct net_bridge_mdb_entry *mdst,
 	bool allow_mode_include = true;
 	struct hlist_node *rp;
 
-	rp = rcu_dereference(hlist_first_rcu(&br->ip4_mc_router_list));
+	rp = br_multicast_get_first_rport_node(br, skb);
+
 	if (mdst) {
 		p = rcu_dereference(mdst->ports);
 		if (br_multicast_should_handle_mode(br, mdst->addr.proto) &&
@@ -290,7 +291,7 @@ void br_multicast_flood(struct net_bridge_mdb_entry *mdst,
 		struct net_bridge_port *port, *lport, *rport;
 
 		lport = p ? p->key.port : NULL;
-		rport = hlist_entry_safe(rp, struct net_bridge_port, ip4_rlist);
+		rport = br_multicast_rport_from_node(rp, skb);
 
 		if ((unsigned long)lport > (unsigned long)rport) {
 			port = lport;
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 26e91d2..5b9a6b2 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -864,6 +864,16 @@ static inline bool br_group_is_l2(const struct br_ip *group)
 #define mlock_dereference(X, br) \
 	rcu_dereference_protected(X, lockdep_is_held(&br->multicast_lock))
 
+static inline struct hlist_node *
+br_multicast_get_first_rport_node(struct net_bridge *b, struct sk_buff *skb) {
+	return rcu_dereference(hlist_first_rcu(&b->ip4_mc_router_list));
+}
+
+static inline struct net_bridge_port *
+br_multicast_rport_from_node(struct hlist_node *rp, struct sk_buff *skb) {
+	return hlist_entry_safe(rp, struct net_bridge_port, ip4_rlist);
+}
+
 static inline bool br_multicast_is_router(struct net_bridge *br)
 {
 	return br->multicast_router == 2 ||
-- 
2.31.0

