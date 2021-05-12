Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A014737EF78
	for <lists.bridge@lfdr.de>; Thu, 13 May 2021 01:20:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5ACA340415;
	Wed, 12 May 2021 23:19:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AQEZAYiqcqX2; Wed, 12 May 2021 23:19:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43A6E4054F;
	Wed, 12 May 2021 23:19:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 59F40C002D;
	Wed, 12 May 2021 23:19:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AA5D1C0001
 for <bridge@lists.linux-foundation.org>; Wed, 12 May 2021 23:19:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 991AD403C4
 for <bridge@lists.linux-foundation.org>; Wed, 12 May 2021 23:19:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BhR_Nr2GzOdS for <bridge@lists.linux-foundation.org>;
 Wed, 12 May 2021 23:19:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BA1804039F
 for <bridge@lists.linux-foundation.org>; Wed, 12 May 2021 23:19:53 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id BB3EF4100A; Thu, 13 May 2021 01:19:51 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Date: Thu, 13 May 2021 01:19:35 +0200
Message-Id: <20210512231941.19211-6-linus.luessing@c0d3.blue>
In-Reply-To: <20210512231941.19211-1-linus.luessing@c0d3.blue>
References: <20210512231941.19211-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.2
Cc: bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>
Subject: [Bridge] [net-next v3 05/11] net: bridge: mcast: prepare is-router
	function for mcast router split
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
their IPv4 and IPv6 variants make br_multicast_is_router() protocol
family aware.

Note that for now br_ip6_multicast_is_router() uses the currently still
common ip4_mc_router_timer for now. It will be renamed to
ip6_mc_router_timer later when the split is performed.

While at it also renames the "1" and "2" constants in
br_multicast_is_router() to the MDB_RTR_TYPE_TEMP_QUERY and
MDB_RTR_TYPE_PERM enums.

Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
---
 net/bridge/br_input.c     |  2 +-
 net/bridge/br_multicast.c |  5 +++--
 net/bridge/br_private.h   | 37 +++++++++++++++++++++++++++++++++----
 3 files changed, 37 insertions(+), 7 deletions(-)

diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index 8875e95..1f50630 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -132,7 +132,7 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 		if ((mdst || BR_INPUT_SKB_CB_MROUTERS_ONLY(skb)) &&
 		    br_multicast_querier_exists(br, eth_hdr(skb), mdst)) {
 			if ((mdst && mdst->host_joined) ||
-			    br_multicast_is_router(br)) {
+			    br_multicast_is_router(br, skb)) {
 				local_rcv = true;
 				br->dev->stats.multicast++;
 			}
diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 7edbbc9..048b5b9 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1391,7 +1391,8 @@ static void br_multicast_local_router_expired(struct timer_list *t)
 	spin_lock(&br->multicast_lock);
 	if (br->multicast_router == MDB_RTR_TYPE_DISABLED ||
 	    br->multicast_router == MDB_RTR_TYPE_PERM ||
-	    timer_pending(&br->ip4_mc_router_timer))
+	    br_ip4_multicast_is_router(br) ||
+	    br_ip6_multicast_is_router(br))
 		goto out;
 
 	br_mc_router_state_change(br, false);
@@ -3622,7 +3623,7 @@ bool br_multicast_router(const struct net_device *dev)
 	bool is_router;
 
 	spin_lock_bh(&br->multicast_lock);
-	is_router = br_multicast_is_router(br);
+	is_router = br_multicast_is_router(br, NULL);
 	spin_unlock_bh(&br->multicast_lock);
 	return is_router;
 }
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 5b9a6b2..41ed3fe 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -874,11 +874,40 @@ br_multicast_rport_from_node(struct hlist_node *rp, struct sk_buff *skb) {
 	return hlist_entry_safe(rp, struct net_bridge_port, ip4_rlist);
 }
 
-static inline bool br_multicast_is_router(struct net_bridge *br)
+static inline bool br_ip4_multicast_is_router(struct net_bridge *br)
 {
-	return br->multicast_router == 2 ||
-	       (br->multicast_router == 1 &&
-		timer_pending(&br->ip4_mc_router_timer));
+	return timer_pending(&br->ip4_mc_router_timer);
+}
+
+static inline bool br_ip6_multicast_is_router(struct net_bridge *br)
+{
+#if IS_ENABLED(CONFIG_IPV6)
+	return timer_pending(&br->ip4_mc_router_timer);
+#else
+	return false;
+#endif
+}
+
+static inline bool
+br_multicast_is_router(struct net_bridge *br, struct sk_buff *skb)
+{
+	switch (br->multicast_router) {
+	case MDB_RTR_TYPE_PERM:
+		return true;
+	case MDB_RTR_TYPE_TEMP_QUERY:
+		if (skb) {
+			if (skb->protocol == htons(ETH_P_IP))
+				return br_ip4_multicast_is_router(br);
+			else if (skb->protocol == htons(ETH_P_IPV6))
+				return br_ip6_multicast_is_router(br);
+		} else {
+			return br_ip4_multicast_is_router(br) ||
+			       br_ip6_multicast_is_router(br);
+		}
+		fallthrough;
+	default:
+		return false;
+	}
 }
 
 static inline bool
-- 
2.31.0

