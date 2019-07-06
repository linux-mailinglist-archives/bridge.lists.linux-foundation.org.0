Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id C893867DB9
	for <lists.bridge@lfdr.de>; Sun, 14 Jul 2019 08:08:31 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A2A92506A;
	Sun, 14 Jul 2019 06:05:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EE0AC1C55
	for <bridge@lists.linux-foundation.org>;
	Sat,  6 Jul 2019 14:15:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from m9784.mail.qiye.163.com (m9784.mail.qiye.163.com
	[220.181.97.84])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 46553882
	for <bridge@lists.linux-foundation.org>;
	Sat,  6 Jul 2019 14:15:58 +0000 (UTC)
Received: from localhost.localdomain (unknown [123.59.132.129])
	by m9784.mail.qiye.163.com (Hmail) with ESMTPA id D5198416F1;
	Sat,  6 Jul 2019 22:15:55 +0800 (CST)
From: wenxu@ucloud.cn
To: pablo@netfilter.org,
	nikolay@cumulusnetworks.com,
	fw@strlen.de
Date: Sat,  6 Jul 2019 22:15:51 +0800
Message-Id: <1562422552-26065-4-git-send-email-wenxu@ucloud.cn>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1562422552-26065-1-git-send-email-wenxu@ucloud.cn>
References: <1562422552-26065-1-git-send-email-wenxu@ucloud.cn>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZVklVSUhJS0tLSkpJTkhITkxZV1koWU
	FJQjdXWS1ZQUlXWQkOFx4IWUFZNTQpNjo3JCkuNz5ZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mxw6Lww*Tjg0EA8CPxAdOhJD
	Dh8aCTFVSlVKTk1JT0lJTk5NS0tPVTMWGhIXVQweFQMOOw4YFxQOH1UYFUVZV1kSC1lBWUpJSFVO
	QlVKSElVSklCWVdZCAFZQUpPSUNLNwY+
X-HM-Tid: 0a6bc7a434f62086kuqyd5198416f1
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org
Subject: [Bridge] [PATCH 4/5 nf-next v4] netfilter:nf_flow_table: Support
	bridge family flow offload
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

From: wenxu <wenxu@ucloud.cn>

With nf_conntrack_bridge function. The bridge family can do
conntrack it self. The flow offload function based on the
conntrack. So the flow in the bridge wih conntrack can be
offloaded.

Signed-off-by: wenxu <wenxu@ucloud.cn>
---
 include/net/netfilter/nf_flow_table.h |  31 +++++++-
 net/netfilter/nf_flow_table_core.c    |  58 +++++++++++---
 net/netfilter/nf_flow_table_ip.c      |  43 ++++++++++-
 net/netfilter/nft_flow_offload.c      | 138 ++++++++++++++++++++++++++++++++--
 4 files changed, 251 insertions(+), 19 deletions(-)

diff --git a/include/net/netfilter/nf_flow_table.h b/include/net/netfilter/nf_flow_table.h
index d40d409..dcf197a 100644
--- a/include/net/netfilter/nf_flow_table.h
+++ b/include/net/netfilter/nf_flow_table.h
@@ -33,8 +33,23 @@ enum flow_offload_tuple_dir {
 	FLOW_OFFLOAD_DIR_MAX = IP_CT_DIR_MAX
 };
 
+enum flow_offload_tuple_type {
+	FLOW_OFFLOAD_TYPE_INET,
+	FLOW_OFFLOAD_TYPE_BRIDGE,
+};
+
+struct dst_br_port {
+	struct net_device *dev;
+	u16	dst_vlan_tag;
+	u16	vlan_proto;
+};
+
 struct flow_offload_dst {
-	struct dst_entry		*dst_cache;
+	enum flow_offload_tuple_type type;
+	union {
+		struct dst_entry		*dst_cache;
+		struct dst_br_port		dst_port;
+	};
 };
 
 struct flow_offload_tuple {
@@ -52,6 +67,7 @@ struct flow_offload_tuple {
 	};
 
 	int				iifidx;
+	u16				vlan_tag;
 
 	u8				l3proto;
 	u8				l4proto;
@@ -89,8 +105,19 @@ struct nf_flow_route {
 	} tuple[FLOW_OFFLOAD_DIR_MAX];
 };
 
+struct nf_flow_forward {
+	struct {
+		struct dst_br_port	dst_port;
+		u16 vlan_tag;
+	} tuple[FLOW_OFFLOAD_DIR_MAX];
+};
+
 struct nf_flow_dst {
-	struct nf_flow_route route;
+	enum flow_offload_tuple_type type;
+	union {
+		struct nf_flow_route route;
+		struct nf_flow_forward forward;
+	};
 };
 
 struct flow_offload *flow_offload_alloc(struct nf_conn *ct,
diff --git a/net/netfilter/nf_flow_table_core.c b/net/netfilter/nf_flow_table_core.c
index 2bec409..08c1ca4 100644
--- a/net/netfilter/nf_flow_table_core.c
+++ b/net/netfilter/nf_flow_table_core.c
@@ -36,6 +36,21 @@ struct flow_offload_entry {
 	return dst;
 }
 
+static struct dst_br_port *
+flow_offload_fill_bridge_dst(struct flow_offload_tuple *ft,
+			     struct nf_flow_forward *forward,
+			     enum flow_offload_tuple_dir dir)
+{
+	struct dst_br_port other_dst_port = forward->tuple[!dir].dst_port;
+	struct dst_br_port dst_port = forward->tuple[dir].dst_port;
+
+	ft->iifidx = other_dst_port.dev->ifindex;
+	ft->dst.dst_port = dst_port;
+	ft->vlan_tag = forward->tuple[dir].vlan_tag;
+
+	return &ft->dst.dst_port;
+}
+
 static void
 flow_offload_fill_dir(struct flow_offload *flow, struct nf_conn *ct,
 		      struct nf_flow_dst *flow_dst,
@@ -43,16 +58,29 @@ struct flow_offload_entry {
 {
 	struct flow_offload_tuple *ft = &flow->tuplehash[dir].tuple;
 	struct nf_conntrack_tuple *ctt = &ct->tuplehash[dir].tuple;
+	struct dst_br_port *dst_port;
 	struct dst_entry *dst;
 
-	dst = flow_offload_fill_inet_dst(ft, &flow_dst->route, dir);
+	switch (flow_dst->type) {
+	case FLOW_OFFLOAD_TYPE_INET:
+		dst = flow_offload_fill_inet_dst(ft, &flow_dst->route, dir);
+		break;
+	case FLOW_OFFLOAD_TYPE_BRIDGE:
+		dst_port = flow_offload_fill_bridge_dst(ft, &flow_dst->forward, dir);
+		break;
+	}
+
+	ft->dst.type = flow_dst->type;
 	ft->dir = dir;
 
 	switch (ctt->src.l3num) {
 	case NFPROTO_IPV4:
 		ft->src_v4 = ctt->src.u3.in;
 		ft->dst_v4 = ctt->dst.u3.in;
-		ft->mtu = ip_dst_mtu_maybe_forward(dst, true);
+		if (flow_dst->type == FLOW_OFFLOAD_TYPE_INET)
+			ft->mtu = ip_dst_mtu_maybe_forward(dst, true);
+		else
+			ft->mtu = dst_port->dev->mtu;
 		break;
 	case NFPROTO_IPV6:
 		ft->src_v6 = ctt->src.u3.in6;
@@ -67,13 +95,13 @@ struct flow_offload_entry {
 	ft->dst_port = ctt->dst.u.tcp.port;
 }
 
-static int flow_offload_dst_hold(struct nf_flow_dst *flow_dst)
+static int flow_offload_dst_hold(struct nf_flow_route *route)
 {
-	if (!dst_hold_safe(flow_dst->route.tuple[FLOW_OFFLOAD_DIR_ORIGINAL].dst))
+	if (!dst_hold_safe(route->tuple[FLOW_OFFLOAD_DIR_ORIGINAL].dst))
 		return -1;
 
-	if (!dst_hold_safe(flow_dst->route.tuple[FLOW_OFFLOAD_DIR_REPLY].dst)) {
-		dst_release(flow_dst->route.tuple[FLOW_OFFLOAD_DIR_ORIGINAL].dst);
+	if (!dst_hold_safe(route->tuple[FLOW_OFFLOAD_DIR_REPLY].dst)) {
+		dst_release(route->tuple[FLOW_OFFLOAD_DIR_ORIGINAL].dst);
 		return -1;
 	}
 
@@ -96,7 +124,8 @@ struct flow_offload *
 
 	flow = &entry->flow;
 
-	if (flow_offload_dst_hold(flow_dst))
+	if (flow_dst->type == FLOW_OFFLOAD_TYPE_INET &&
+	    flow_offload_dst_hold(&flow_dst->route))
 		goto err_dst_cache;
 
 	entry->ct = ct;
@@ -156,8 +185,19 @@ static void flow_offload_fixup_ct_state(struct nf_conn *ct)
 
 static void flow_offload_dst_release(struct flow_offload *flow)
 {
-	dst_release(flow->tuplehash[FLOW_OFFLOAD_DIR_ORIGINAL].tuple.dst.dst_cache);
-	dst_release(flow->tuplehash[FLOW_OFFLOAD_DIR_REPLY].tuple.dst.dst_cache);
+	enum flow_offload_tuple_type type = flow->tuplehash[FLOW_OFFLOAD_DIR_ORIGINAL].tuple.dst.type;
+
+	switch (type) {
+	case FLOW_OFFLOAD_TYPE_INET:
+		dst_release(flow->tuplehash[FLOW_OFFLOAD_DIR_ORIGINAL].tuple.dst.dst_cache);
+		dst_release(flow->tuplehash[FLOW_OFFLOAD_DIR_REPLY].tuple.dst.dst_cache);
+		break;
+
+	case FLOW_OFFLOAD_TYPE_BRIDGE:
+		dev_put(flow->tuplehash[FLOW_OFFLOAD_DIR_ORIGINAL].tuple.dst.dst_port.dev);
+		dev_put(flow->tuplehash[FLOW_OFFLOAD_DIR_REPLY].tuple.dst.dst_port.dev);
+		break;
+	}
 }
 
 void flow_offload_free(struct flow_offload *flow)
diff --git a/net/netfilter/nf_flow_table_ip.c b/net/netfilter/nf_flow_table_ip.c
index 24263e2..225433f 100644
--- a/net/netfilter/nf_flow_table_ip.c
+++ b/net/netfilter/nf_flow_table_ip.c
@@ -233,12 +233,40 @@ static void nf_flow_inet_xmit(struct flow_offload *flow, struct sk_buff *skb,
 	neigh_xmit(NEIGH_ARP_TABLE, outdev, &nexthop, skb);
 }
 
+static void nf_flow_bridge_xmit(struct flow_offload *flow, struct sk_buff *skb,
+				enum flow_offload_tuple_dir dir)
+{
+	struct net_device *outdev;
+	u16 vlan_tag, vlan_proto;
+
+	vlan_tag = flow->tuplehash[dir].tuple.dst.dst_port.dst_vlan_tag;
+	vlan_proto = flow->tuplehash[dir].tuple.dst.dst_port.vlan_proto;
+	outdev = flow->tuplehash[dir].tuple.dst.dst_port.dev;
+	skb->dev = outdev;
+
+	if (vlan_tag)
+		__vlan_hwaccel_put_tag(skb, htons(vlan_proto), vlan_tag);
+	else
+		__vlan_hwaccel_clear_tag(skb);
+
+	skb_push(skb, ETH_HLEN);
+	if (!is_skb_forwardable(skb->dev, skb))
+		goto drop;
+
+	dev_queue_xmit(skb);
+	return;
+
+drop:
+	kfree_skb(skb);
+}
+
 unsigned int
 nf_flow_offload_ip_hook(void *priv, struct sk_buff *skb,
 			const struct nf_hook_state *state)
 {
 	struct flow_offload_tuple_rhash *tuplehash;
 	struct nf_flowtable *flow_table = priv;
+	int family = flow_table->type->family;
 	struct flow_offload_tuple tuple = {};
 	enum flow_offload_tuple_dir dir;
 	struct flow_offload *flow;
@@ -247,9 +275,15 @@ static void nf_flow_inet_xmit(struct flow_offload *flow, struct sk_buff *skb,
 	if (skb->protocol != htons(ETH_P_IP))
 		return NF_ACCEPT;
 
+	if (family != NFPROTO_BRIDGE && family != NFPROTO_IPV4)
+		return NF_ACCEPT;
+
 	if (nf_flow_tuple_ip(skb, state->in, &tuple) < 0)
 		return NF_ACCEPT;
 
+	if (family == NFPROTO_BRIDGE && skb_vlan_tag_present(skb))
+		tuple.vlan_tag = skb_vlan_tag_get_id(skb);
+
 	tuplehash = flow_offload_lookup(flow_table, &tuple);
 	if (tuplehash == NULL)
 		return NF_ACCEPT;
@@ -272,7 +306,14 @@ static void nf_flow_inet_xmit(struct flow_offload *flow, struct sk_buff *skb,
 
 	flow->timeout = (u32)jiffies + NF_FLOW_TIMEOUT;
 
-	nf_flow_inet_xmit(flow, skb, dir);
+	switch (family) {
+	case NFPROTO_IPV4:
+		nf_flow_inet_xmit(flow, skb, dir);
+		break;
+	case NFPROTO_BRIDGE:
+		nf_flow_bridge_xmit(flow, skb, dir);
+		break;
+	}
 
 	return NF_STOLEN;
 }
diff --git a/net/netfilter/nft_flow_offload.c b/net/netfilter/nft_flow_offload.c
index 4af94ce..170f2bd 100644
--- a/net/netfilter/nft_flow_offload.c
+++ b/net/netfilter/nft_flow_offload.c
@@ -14,6 +14,10 @@
 #include <linux/netfilter/nf_conntrack_common.h>
 #include <net/netfilter/nf_flow_table.h>
 
+#ifdef CONFIG_NF_TABLES_BRIDGE
+#include "../bridge/br_private.h"
+#endif
+
 struct nft_flow_offload {
 	struct nft_flowtable	*flowtable;
 };
@@ -49,23 +53,139 @@ static int nft_flow_route(const struct nft_pktinfo *pkt,
 	return 0;
 }
 
+static const struct net_device *
+nft_get_bridge(const struct net_device *dev)
+{
+	if (dev && netif_is_bridge_port(dev))
+		return netdev_master_upper_dev_get_rcu((struct net_device *)dev);
+
+	return NULL;
+}
+
+static int nft_flow_forward(const struct nft_pktinfo *pkt,
+			    const struct nf_conn *ct,
+			    struct nf_flow_forward *forward,
+			    enum ip_conntrack_dir dir)
+{
+#ifdef CONFIG_NF_TABLES_BRIDGE
+	const struct net_device *br_dev;
+	u16 vlan_proto = 0;
+	u16 vid = 0;
+
+	if (skb_vlan_tag_present(pkt->skb)) {
+		vid = skb_vlan_tag_get_id(pkt->skb);
+		vlan_proto = ntohs(pkt->skb->vlan_proto);
+	}
+
+	forward->tuple[dir].dst_port.dst_vlan_tag = vid;
+	forward->tuple[dir].dst_port.vlan_proto = vlan_proto;
+	forward->tuple[!dir].vlan_tag = vid;
+	forward->tuple[dir].dst_port.dev = dev_get_by_index(dev_net(nft_out(pkt)),
+							    nft_out(pkt)->ifindex);
+	forward->tuple[!dir].dst_port.dev = dev_get_by_index(dev_net(nft_in(pkt)),
+							     nft_in(pkt)->ifindex);
+
+	br_dev = nft_get_bridge(nft_out(pkt));
+	if (!br_dev)
+		goto err;
+
+	if (!br_vlan_enabled(br_dev))
+		goto out;
+
+	if (!vid)
+		br_vlan_get_pvid_rcu(nft_out(pkt), &vid);
+
+	if (vid) {
+		struct bridge_vlan_info vinfo;
+		int ret;
+
+		ret = br_vlan_get_proto(br_dev, &vlan_proto);
+		if (ret < 0)
+			goto err;
+
+		ret = br_vlan_get_info_rcu(nft_in(pkt), vid, &vinfo);
+		if (ret < 0)
+			goto err;
+
+		if (vinfo.flags & BRIDGE_VLAN_INFO_UNTAGGED) {
+			vid = 0;
+			vlan_proto = 0;
+		}
+	}
+
+out:
+	forward->tuple[!dir].dst_port.vlan_proto = vlan_proto;
+	forward->tuple[!dir].dst_port.dst_vlan_tag = vid;
+	forward->tuple[dir].vlan_tag = vid;
+
+	return 0;
+
+err:
+	dev_put(forward->tuple[dir].dst_port.dev);
+	dev_put(forward->tuple[!dir].dst_port.dev);
+#endif
+	return -ENOENT;
+}
+
 static bool nft_flow_offload_skip(struct sk_buff *skb, int family)
 {
 	if (skb_sec_path(skb))
 		return true;
 
-	if (family == NFPROTO_IPV4) {
+	switch (family) {
+	case NFPROTO_IPV4: {
 		const struct ip_options *opt;
 
 		opt = &(IPCB(skb)->opt);
 
 		if (unlikely(opt->optlen))
 			return true;
+		break;
+	}
+	case NFPROTO_BRIDGE: {
+		const struct iphdr *iph;
+
+		if (skb->protocol != htons(ETH_P_IP))
+			return true;
+
+		iph = ip_hdr(skb);
+		if (iph->ihl > 5)
+			return true;
+		break;
+	}
 	}
 
 	return false;
 }
 
+static void flow_offload_release_dst(struct nf_flow_dst *flow_dst,
+				     enum ip_conntrack_dir dir)
+{
+	if (flow_dst->type == FLOW_OFFLOAD_TYPE_BRIDGE) {
+		dev_put(flow_dst->forward.tuple[dir].dst_port.dev);
+		dev_put(flow_dst->forward.tuple[!dir].dst_port.dev);
+	} else {
+		dst_release(flow_dst->route.tuple[!dir].dst);
+	}
+}
+
+static int flow_offload_get_dst(const struct nft_pktinfo *pkt, struct nf_conn *ct,
+				enum ip_conntrack_dir dir, int family,
+				struct nf_flow_dst *flow_dst)
+{
+	if (family == NFPROTO_BRIDGE) {
+		flow_dst->type = FLOW_OFFLOAD_TYPE_BRIDGE;
+		if (nft_flow_forward(pkt, ct, &flow_dst->forward, dir) < 0)
+			return -1;
+	} else {
+		flow_dst->type = FLOW_OFFLOAD_TYPE_INET;
+		if (nft_flow_route(pkt, ct, &flow_dst->route, dir) < 0)
+			return -1;
+	}
+
+	return 0;
+}
+
 static void nft_flow_offload_eval(const struct nft_expr *expr,
 				  struct nft_regs *regs,
 				  const struct nft_pktinfo *pkt)
@@ -76,11 +196,12 @@ static void nft_flow_offload_eval(const struct nft_expr *expr,
 	struct nf_flow_dst flow_dst;
 	struct flow_offload *flow;
 	enum ip_conntrack_dir dir;
+	int family = nft_pf(pkt);
 	bool is_tcp = false;
 	struct nf_conn *ct;
 	int ret;
 
-	if (nft_flow_offload_skip(pkt->skb, nft_pf(pkt)))
+	if (nft_flow_offload_skip(pkt->skb, family))
 		goto out;
 
 	ct = nf_ct_get(pkt->skb, &ctinfo);
@@ -108,8 +229,9 @@ static void nft_flow_offload_eval(const struct nft_expr *expr,
 		goto out;
 
 	dir = CTINFO2DIR(ctinfo);
-	if (nft_flow_route(pkt, ct, &flow_dst.route, dir) < 0)
-		goto err_flow_route;
+
+	if (flow_offload_get_dst(pkt, ct, dir, family, &flow_dst) < 0)
+		goto err_flow_dst;
 
 	flow = flow_offload_alloc(ct, &flow_dst);
 	if (!flow)
@@ -124,14 +246,16 @@ static void nft_flow_offload_eval(const struct nft_expr *expr,
 	if (ret < 0)
 		goto err_flow_add;
 
-	dst_release(flow_dst.route.tuple[!dir].dst);
+	if (family != NFPROTO_BRIDGE)
+		dst_release(flow_dst.route.tuple[!dir].dst);
+
 	return;
 
 err_flow_add:
 	flow_offload_free(flow);
 err_flow_alloc:
-	dst_release(flow_dst.route.tuple[!dir].dst);
-err_flow_route:
+	flow_offload_release_dst(&flow_dst, dir);
+err_flow_dst:
 	clear_bit(IPS_OFFLOAD_BIT, &ct->status);
 out:
 	regs->verdict.code = NFT_BREAK;
-- 
1.8.3.1

