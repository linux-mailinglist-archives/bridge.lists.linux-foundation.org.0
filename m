Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCFC377822
	for <lists.bridge@lfdr.de>; Sun,  9 May 2021 21:45:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0AF5040453;
	Sun,  9 May 2021 19:45:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uk6aqqvH7Rlj; Sun,  9 May 2021 19:45:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5309D40446;
	Sun,  9 May 2021 19:45:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1F08AC0025;
	Sun,  9 May 2021 19:45:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 33F47C0001
 for <bridge@lists.linux-foundation.org>; Sun,  9 May 2021 19:45:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0DB5B4048A
 for <bridge@lists.linux-foundation.org>; Sun,  9 May 2021 19:45:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 78uvCciCa-6p for <bridge@lists.linux-foundation.org>;
 Sun,  9 May 2021 19:45:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:c2c:665b::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6DB7F402C5
 for <bridge@lists.linux-foundation.org>; Sun,  9 May 2021 19:45:25 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 39DBC3EDDD; Sun,  9 May 2021 21:45:23 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Date: Sun,  9 May 2021 21:45:00 +0200
Message-Id: <20210509194509.10849-3-linus.luessing@c0d3.blue>
In-Reply-To: <20210509194509.10849-1-linus.luessing@c0d3.blue>
References: <20210509194509.10849-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.2
Cc: b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Subject: [Bridge] [net-next v2 02/11] net: bridge: mcast: add wrappers for
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
 net/bridge/br_forward.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
index 3b67184..b5ec4f9 100644
--- a/net/bridge/br_forward.c
+++ b/net/bridge/br_forward.c
@@ -264,6 +264,16 @@ static void maybe_deliver_addr(struct net_bridge_port *p, struct sk_buff *skb,
 	__br_forward(p, skb, local_orig);
 }
 
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
 /* called with rcu_read_lock */
 void br_multicast_flood(struct net_bridge_mdb_entry *mdst,
 			struct sk_buff *skb,
@@ -276,7 +286,8 @@ void br_multicast_flood(struct net_bridge_mdb_entry *mdst,
 	bool allow_mode_include = true;
 	struct hlist_node *rp;
 
-	rp = rcu_dereference(hlist_first_rcu(&br->router_list));
+	rp = br_multicast_get_first_rport_node(br, skb);
+
 	if (mdst) {
 		p = rcu_dereference(mdst->ports);
 		if (br_multicast_should_handle_mode(br, mdst->addr.proto) &&
@@ -290,7 +301,7 @@ void br_multicast_flood(struct net_bridge_mdb_entry *mdst,
 		struct net_bridge_port *port, *lport, *rport;
 
 		lport = p ? p->key.port : NULL;
-		rport = hlist_entry_safe(rp, struct net_bridge_port, ip4_rlist);
+		rport = br_multicast_rport_from_node(rp, skb);
 
 		if ((unsigned long)lport > (unsigned long)rport) {
 			port = lport;
-- 
2.31.0

