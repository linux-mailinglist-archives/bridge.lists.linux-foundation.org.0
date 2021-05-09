Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCA6377825
	for <lists.bridge@lfdr.de>; Sun,  9 May 2021 21:45:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47F1440448;
	Sun,  9 May 2021 19:45:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZXzzTH8fBEYV; Sun,  9 May 2021 19:45:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B96940456;
	Sun,  9 May 2021 19:45:30 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AD831C0027;
	Sun,  9 May 2021 19:45:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E3D9FC0024
 for <bridge@lists.linux-foundation.org>; Sun,  9 May 2021 19:45:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C92B540446
 for <bridge@lists.linux-foundation.org>; Sun,  9 May 2021 19:45:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2mFXTnurNMpO for <bridge@lists.linux-foundation.org>;
 Sun,  9 May 2021 19:45:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F3FAD402E0
 for <bridge@lists.linux-foundation.org>; Sun,  9 May 2021 19:45:26 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 5117E3EDDE; Sun,  9 May 2021 21:45:24 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Date: Sun,  9 May 2021 21:45:01 +0200
Message-Id: <20210509194509.10849-4-linus.luessing@c0d3.blue>
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
Subject: [Bridge] [net-next v2 03/11] net: bridge: mcast: prepare mdb
	netlink for mcast router split
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
some inline functions for the protocol specific parts in the mdb router
netlink code. Also the we need iterate over the port instead of router
list to be able put one router port entry with both the IPv4 and IPv6
multicast router info later.

Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
---
 net/bridge/br_mdb.c | 39 ++++++++++++++++++++++++++++++++++-----
 1 file changed, 34 insertions(+), 5 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index d61def8..6937d3b 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -16,29 +16,58 @@
 
 #include "br_private.h"
 
+static inline bool br_rports_have_mc_router(struct net_bridge *br)
+{
+	return !hlist_empty(&br->ip4_mc_router_list);
+}
+
+static inline bool
+br_ip4_rports_get_timer(struct net_bridge_port *port, unsigned long *timer)
+{
+	*timer = br_timer_value(&port->ip4_mc_router_timer);
+	return !hlist_unhashed(&port->ip4_rlist);
+}
+
+static inline bool
+br_ip6_rports_get_timer(struct net_bridge_port *port, unsigned long *timer)
+{
+	*timer = 0;
+	return false;
+}
+
 static int br_rports_fill_info(struct sk_buff *skb, struct netlink_callback *cb,
 			       struct net_device *dev)
 {
 	struct net_bridge *br = netdev_priv(dev);
-	struct net_bridge_port *p;
+	bool have_ip4_mc_rtr, have_ip6_mc_rtr;
+	unsigned long ip4_timer, ip6_timer;
 	struct nlattr *nest, *port_nest;
+	struct net_bridge_port *p;
 
-	if (!br->multicast_router || hlist_empty(&br->ip4_mc_router_list))
+	if (!br->multicast_router)
+		return 0;
+
+	if (!br_rports_have_mc_router(br))
 		return 0;
 
 	nest = nla_nest_start_noflag(skb, MDBA_ROUTER);
 	if (nest == NULL)
 		return -EMSGSIZE;
 
-	hlist_for_each_entry_rcu(p, &br->ip4_mc_router_list, ip4_rlist) {
-		if (!p)
+	list_for_each_entry_rcu(p, &br->port_list, list) {
+		have_ip4_mc_rtr = br_ip4_rports_get_timer(p, &ip4_timer);
+		have_ip6_mc_rtr = br_ip6_rports_get_timer(p, &ip6_timer);
+
+		if (!have_ip4_mc_rtr && !have_ip6_mc_rtr)
 			continue;
+
 		port_nest = nla_nest_start_noflag(skb, MDBA_ROUTER_PORT);
 		if (!port_nest)
 			goto fail;
+
 		if (nla_put_nohdr(skb, sizeof(u32), &p->dev->ifindex) ||
 		    nla_put_u32(skb, MDBA_ROUTER_PATTR_TIMER,
-				br_timer_value(&p->ip4_mc_router_timer)) ||
+				max(ip4_timer, ip6_timer)) ||
 		    nla_put_u8(skb, MDBA_ROUTER_PATTR_TYPE,
 			       p->multicast_router)) {
 			nla_nest_cancel(skb, port_nest);
-- 
2.31.0

