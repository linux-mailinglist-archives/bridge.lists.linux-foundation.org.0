Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DA814690F
	for <lists.bridge@lfdr.de>; Thu, 23 Jan 2020 14:28:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 01B2686A1D;
	Thu, 23 Jan 2020 13:28:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pxz1xlKIYVkA; Thu, 23 Jan 2020 13:28:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CEFB586A34;
	Thu, 23 Jan 2020 13:28:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B39E8C0174;
	Thu, 23 Jan 2020 13:28:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A0CE6C0174
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jan 2020 13:28:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8E46C220DD
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jan 2020 13:28:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GKiv8IJSG+2z for <bridge@lists.linux-foundation.org>;
 Thu, 23 Jan 2020 13:28:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 306FC2201C
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jan 2020 13:28:22 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id m30so2263569lfp.8
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jan 2020 05:28:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=F4p1Q40pF1PMIq3Vm5aUqV5HWlO5+PL1PHNttTZKGXg=;
 b=bjo183Oj8y1FZLzkuEjQWafQxuH3mZSpZEuEhzBMW/xeFxOce0BqtxyQIc8NxItfKb
 CDx+HFGMKKxXPq1TSuSI4GKhltI5JotRFQl8PXECqVMF5BCkcvVCFsSvG4VyZ37bUwWQ
 fL01yA/+8SIbZC0ZZNJjgfpDIv8MO6eHvaEOo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=F4p1Q40pF1PMIq3Vm5aUqV5HWlO5+PL1PHNttTZKGXg=;
 b=f4IvrIFG8IPpCozQrMMLwIxkUl0I/wA9yNac+rrGhfPcPTjtF0SxU1O4kmS0FwCpe2
 8YfnLbUbvoTbewSpUp5pIZn6BPg7DAwK1XpMFnoOYtdHXyUYoVh/MhJ+N1xJHTeMuVqT
 oDqcrxrYiDCKGvXcJ5boyMqVnUxgx3PB4BwdopiiVdO275ytp4POhQlR/7Q4OnMDnbba
 wbThRvHdE9sDPmPDtn6KrbQZo4gFsfMPa1TE6tMfQgUHQap6KcBn0Fl3pi+j3m27fE64
 xpIBKtGbgQPnzdQwBo5r65GA+A8A4J8AupryAXmoagqHlHK0snsPCENxk45t4jnJksRN
 VzRQ==
X-Gm-Message-State: APjAAAWqrDtf2vtQa/IgRtmPptoTGEdLvAsgYo3Y9E7Tzehi9B7BVCbt
 TolxWraZmxiAI1vjpAx/hd0gRw==
X-Google-Smtp-Source: APXvYqzJICBICMHpuKPVKn+eLco7AHhFtbRqBkM0suV1A57ZliOOIXiNhfJPAVKsFk72QhGbgLvdug==
X-Received: by 2002:a19:3f16:: with SMTP id m22mr4882201lfa.116.1579786100168; 
 Thu, 23 Jan 2020 05:28:20 -0800 (PST)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id b20sm1238571ljp.20.2020.01.23.05.28.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 05:28:19 -0800 (PST)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Thu, 23 Jan 2020 15:28:07 +0200
Message-Id: <20200123132807.613-5-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200123132807.613-1-nikolay@cumulusnetworks.com>
References: <20200123132807.613-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 4/4] net: bridge: vlan: add per-vlan state
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

The first per-vlan option added is state, it is needed for EVPN and for
per-vlan STP. The state allows to control the forwarding on per-vlan
basis. The vlan state is considered only if the port state is forwarding
in order to avoid conflicts and be consistent. br_allowed_egress is
called only when the state is forwarding, but the ingress case is a bit
more complicated due to the fact that we may have the transition between
port:BR_STATE_FORWARDING -> vlan:BR_STATE_LEARNING which should still
allow the bridge to learn from the packet after vlan filtering and it will
be dropped after that. Also to optimize the pvid state check we keep a
copy in the vlan group to avoid one lookup. The state members are
modified with *_ONCE() to annotate the lockless access.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 include/uapi/linux/if_bridge.h |  1 +
 net/bridge/br_device.c         |  3 +-
 net/bridge/br_input.c          |  7 +++--
 net/bridge/br_private.h        | 43 ++++++++++++++++++++++++--
 net/bridge/br_vlan.c           | 47 +++++++++++++++++++++--------
 net/bridge/br_vlan_options.c   | 55 ++++++++++++++++++++++++++++++++--
 6 files changed, 136 insertions(+), 20 deletions(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 06bbfefa2141..e07d082d8a79 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -191,6 +191,7 @@ enum {
 	BRIDGE_VLANDB_ENTRY_UNSPEC,
 	BRIDGE_VLANDB_ENTRY_INFO,
 	BRIDGE_VLANDB_ENTRY_RANGE,
+	BRIDGE_VLANDB_ENTRY_STATE,
 	__BRIDGE_VLANDB_ENTRY_MAX,
 };
 #define BRIDGE_VLANDB_ENTRY_MAX (__BRIDGE_VLANDB_ENTRY_MAX - 1)
diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
index fb38add21b37..dc3d2c1dd9d5 100644
--- a/net/bridge/br_device.c
+++ b/net/bridge/br_device.c
@@ -32,6 +32,7 @@ netdev_tx_t br_dev_xmit(struct sk_buff *skb, struct net_device *dev)
 	struct net_bridge_mdb_entry *mdst;
 	struct pcpu_sw_netstats *brstats = this_cpu_ptr(br->stats);
 	const struct nf_br_ops *nf_ops;
+	u8 state = BR_STATE_FORWARDING;
 	const unsigned char *dest;
 	struct ethhdr *eth;
 	u16 vid = 0;
@@ -56,7 +57,7 @@ netdev_tx_t br_dev_xmit(struct sk_buff *skb, struct net_device *dev)
 	eth = eth_hdr(skb);
 	skb_pull(skb, ETH_HLEN);
 
-	if (!br_allowed_ingress(br, br_vlan_group_rcu(br), skb, &vid))
+	if (!br_allowed_ingress(br, br_vlan_group_rcu(br), skb, &vid, &state))
 		goto out;
 
 	if (IS_ENABLED(CONFIG_INET) &&
diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index 8944ceb47fe9..fcc260840028 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -76,11 +76,14 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 	bool local_rcv, mcast_hit = false;
 	struct net_bridge *br;
 	u16 vid = 0;
+	u8 state;
 
 	if (!p || p->state == BR_STATE_DISABLED)
 		goto drop;
 
-	if (!br_allowed_ingress(p->br, nbp_vlan_group_rcu(p), skb, &vid))
+	state = p->state;
+	if (!br_allowed_ingress(p->br, nbp_vlan_group_rcu(p), skb, &vid,
+				&state))
 		goto out;
 
 	nbp_switchdev_frame_mark(p, skb);
@@ -103,7 +106,7 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 		}
 	}
 
-	if (p->state == BR_STATE_LEARNING)
+	if (state == BR_STATE_LEARNING)
 		goto drop;
 
 	BR_INPUT_SKB_CB(skb)->brdev = br->dev;
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 8ca8a9258510..c1d6fe3a381f 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -113,6 +113,7 @@ enum {
  * @vid: VLAN id
  * @flags: bridge vlan flags
  * @priv_flags: private (in-kernel) bridge vlan flags
+ * @state: STP state (e.g. blocking, learning, forwarding)
  * @stats: per-cpu VLAN statistics
  * @br: if MASTER flag set, this points to a bridge struct
  * @port: if MASTER flag unset, this points to a port struct
@@ -133,6 +134,7 @@ struct net_bridge_vlan {
 	u16				vid;
 	u16				flags;
 	u16				priv_flags;
+	u8				state;
 	struct br_vlan_stats __percpu	*stats;
 	union {
 		struct net_bridge	*br;
@@ -157,6 +159,7 @@ struct net_bridge_vlan {
  * @vlan_list: sorted VLAN entry list
  * @num_vlans: number of total VLAN entries
  * @pvid: PVID VLAN id
+ * @pvid_state: PVID's STP state (e.g. forwarding, learning, blocking)
  *
  * IMPORTANT: Be careful when checking if there're VLAN entries using list
  *            primitives because the bridge can have entries in its list which
@@ -170,6 +173,7 @@ struct net_bridge_vlan_group {
 	struct list_head		vlan_list;
 	u16				num_vlans;
 	u16				pvid;
+	u8				pvid_state;
 };
 
 /* bridge fdb flags */
@@ -935,7 +939,7 @@ static inline int br_multicast_igmp_type(const struct sk_buff *skb)
 #ifdef CONFIG_BRIDGE_VLAN_FILTERING
 bool br_allowed_ingress(const struct net_bridge *br,
 			struct net_bridge_vlan_group *vg, struct sk_buff *skb,
-			u16 *vid);
+			u16 *vid, u8 *state);
 bool br_allowed_egress(struct net_bridge_vlan_group *vg,
 		       const struct sk_buff *skb);
 bool br_should_learn(struct net_bridge_port *p, struct sk_buff *skb, u16 *vid);
@@ -1035,7 +1039,7 @@ static inline u16 br_vlan_flags(const struct net_bridge_vlan *v, u16 pvid)
 static inline bool br_allowed_ingress(const struct net_bridge *br,
 				      struct net_bridge_vlan_group *vg,
 				      struct sk_buff *skb,
-				      u16 *vid)
+				      u16 *vid, u8 *state)
 {
 	return true;
 }
@@ -1204,6 +1208,41 @@ int br_vlan_process_options(const struct net_bridge *br,
 			    struct nlattr **tb,
 			    bool *changed,
 			    struct netlink_ext_ack *extack);
+
+/* vlan state manipulation helpers using *_ONCE to annotate lockless access */
+static inline u8 br_vlan_get_state(const struct net_bridge_vlan *v)
+{
+	return READ_ONCE(v->state);
+}
+
+static inline void br_vlan_set_state(struct net_bridge_vlan *v, u8 state)
+{
+	WRITE_ONCE(v->state, state);
+}
+
+static inline u8 br_vlan_get_pvid_state(const struct net_bridge_vlan_group *vg)
+{
+	return READ_ONCE(vg->pvid_state);
+}
+
+static inline void br_vlan_set_pvid_state(struct net_bridge_vlan_group *vg,
+					  u8 state)
+{
+	WRITE_ONCE(vg->pvid_state, state);
+}
+
+/* learn_allow is true at ingress and false at egress */
+static inline bool br_vlan_state_allowed(u8 state, bool learn_allow)
+{
+	switch (state) {
+	case BR_STATE_LEARNING:
+		return learn_allow;
+	case BR_STATE_FORWARDING:
+		return true;
+	default:
+		return false;
+	}
+}
 #endif
 
 struct nf_br_ops {
diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index 468d1a861c66..3d97efcb4fd8 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -34,13 +34,15 @@ static struct net_bridge_vlan *br_vlan_lookup(struct rhashtable *tbl, u16 vid)
 	return rhashtable_lookup_fast(tbl, &vid, br_vlan_rht_params);
 }
 
-static bool __vlan_add_pvid(struct net_bridge_vlan_group *vg, u16 vid)
+static bool __vlan_add_pvid(struct net_bridge_vlan_group *vg,
+			    const struct net_bridge_vlan *v)
 {
-	if (vg->pvid == vid)
+	if (vg->pvid == v->vid)
 		return false;
 
 	smp_wmb();
-	vg->pvid = vid;
+	br_vlan_set_pvid_state(vg, v->state);
+	vg->pvid = v->vid;
 
 	return true;
 }
@@ -69,7 +71,7 @@ static bool __vlan_add_flags(struct net_bridge_vlan *v, u16 flags)
 		vg = nbp_vlan_group(v->port);
 
 	if (flags & BRIDGE_VLAN_INFO_PVID)
-		ret = __vlan_add_pvid(vg, v->vid);
+		ret = __vlan_add_pvid(vg, v);
 	else
 		ret = __vlan_delete_pvid(vg, v->vid);
 
@@ -293,6 +295,9 @@ static int __vlan_add(struct net_bridge_vlan *v, u16 flags,
 		vg->num_vlans++;
 	}
 
+	/* set the state before publishing */
+	v->state = BR_STATE_FORWARDING;
+
 	err = rhashtable_lookup_insert_fast(&vg->vlan_hash, &v->vnode,
 					    br_vlan_rht_params);
 	if (err)
@@ -466,7 +471,8 @@ struct sk_buff *br_handle_vlan(struct net_bridge *br,
 /* Called under RCU */
 static bool __allowed_ingress(const struct net_bridge *br,
 			      struct net_bridge_vlan_group *vg,
-			      struct sk_buff *skb, u16 *vid)
+			      struct sk_buff *skb, u16 *vid,
+			      u8 *state)
 {
 	struct br_vlan_stats *stats;
 	struct net_bridge_vlan *v;
@@ -532,13 +538,25 @@ static bool __allowed_ingress(const struct net_bridge *br,
 			skb->vlan_tci |= pvid;
 
 		/* if stats are disabled we can avoid the lookup */
-		if (!br_opt_get(br, BROPT_VLAN_STATS_ENABLED))
-			return true;
+		if (!br_opt_get(br, BROPT_VLAN_STATS_ENABLED)) {
+			if (*state == BR_STATE_FORWARDING) {
+				*state = br_vlan_get_pvid_state(vg);
+				return br_vlan_state_allowed(*state, true);
+			} else {
+				return true;
+			}
+		}
 	}
 	v = br_vlan_find(vg, *vid);
 	if (!v || !br_vlan_should_use(v))
 		goto drop;
 
+	if (*state == BR_STATE_FORWARDING) {
+		*state = br_vlan_get_state(v);
+		if (!br_vlan_state_allowed(*state, true))
+			goto drop;
+	}
+
 	if (br_opt_get(br, BROPT_VLAN_STATS_ENABLED)) {
 		stats = this_cpu_ptr(v->stats);
 		u64_stats_update_begin(&stats->syncp);
@@ -556,7 +574,7 @@ static bool __allowed_ingress(const struct net_bridge *br,
 
 bool br_allowed_ingress(const struct net_bridge *br,
 			struct net_bridge_vlan_group *vg, struct sk_buff *skb,
-			u16 *vid)
+			u16 *vid, u8 *state)
 {
 	/* If VLAN filtering is disabled on the bridge, all packets are
 	 * permitted.
@@ -566,7 +584,7 @@ bool br_allowed_ingress(const struct net_bridge *br,
 		return true;
 	}
 
-	return __allowed_ingress(br, vg, skb, vid);
+	return __allowed_ingress(br, vg, skb, vid, state);
 }
 
 /* Called under RCU. */
@@ -582,7 +600,8 @@ bool br_allowed_egress(struct net_bridge_vlan_group *vg,
 
 	br_vlan_get_tag(skb, &vid);
 	v = br_vlan_find(vg, vid);
-	if (v && br_vlan_should_use(v))
+	if (v && br_vlan_should_use(v) &&
+	    br_vlan_state_allowed(br_vlan_get_state(v), false))
 		return true;
 
 	return false;
@@ -593,6 +612,7 @@ bool br_should_learn(struct net_bridge_port *p, struct sk_buff *skb, u16 *vid)
 {
 	struct net_bridge_vlan_group *vg;
 	struct net_bridge *br = p->br;
+	struct net_bridge_vlan *v;
 
 	/* If filtering was disabled at input, let it pass. */
 	if (!br_opt_get(br, BROPT_VLAN_ENABLED))
@@ -607,13 +627,15 @@ bool br_should_learn(struct net_bridge_port *p, struct sk_buff *skb, u16 *vid)
 
 	if (!*vid) {
 		*vid = br_get_pvid(vg);
-		if (!*vid)
+		if (!*vid ||
+		    !br_vlan_state_allowed(br_vlan_get_pvid_state(vg), true))
 			return false;
 
 		return true;
 	}
 
-	if (br_vlan_find(vg, *vid))
+	v = br_vlan_find(vg, *vid);
+	if (v && br_vlan_state_allowed(br_vlan_get_state(v), true))
 		return true;
 
 	return false;
@@ -1816,6 +1838,7 @@ static const struct nla_policy br_vlan_db_policy[BRIDGE_VLANDB_ENTRY_MAX + 1] =
 	[BRIDGE_VLANDB_ENTRY_INFO]	= { .type = NLA_EXACT_LEN,
 					    .len = sizeof(struct bridge_vlan_info) },
 	[BRIDGE_VLANDB_ENTRY_RANGE]	= { .type = NLA_U16 },
+	[BRIDGE_VLANDB_ENTRY_STATE]	= { .type = NLA_U8 },
 };
 
 static int br_vlan_rtm_process_one(struct net_device *dev,
diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
index 1c76a1ba9a8c..699dad08e44a 100644
--- a/net/bridge/br_vlan_options.c
+++ b/net/bridge/br_vlan_options.c
@@ -11,26 +11,75 @@
 bool br_vlan_opts_eq(const struct net_bridge_vlan *v1,
 		     const struct net_bridge_vlan *v2)
 {
-	return true;
+	return v1->state == v2->state;
 }
 
 bool br_vlan_opts_fill(struct sk_buff *skb, const struct net_bridge_vlan *v)
 {
-	return true;
+	return !nla_put_u8(skb, BRIDGE_VLANDB_ENTRY_STATE,
+			   br_vlan_get_state(v));
 }
 
 size_t br_vlan_opts_nl_size(void)
 {
+	return nla_total_size(sizeof(u8)); /* BRIDGE_VLANDB_ENTRY_STATE */
+}
+
+static int br_vlan_modify_state(struct net_bridge_vlan_group *vg,
+				struct net_bridge_vlan *v,
+				u8 state,
+				bool *changed,
+				struct netlink_ext_ack *extack)
+{
+	struct net_bridge *br;
+
+	ASSERT_RTNL();
+
+	if (state > BR_STATE_BLOCKING) {
+		NL_SET_ERR_MSG_MOD(extack, "Invalid vlan state");
+		return -EINVAL;
+	}
+
+	if (br_vlan_is_brentry(v))
+		br = v->br;
+	else
+		br = v->port->br;
+
+	if (br->stp_enabled == BR_KERNEL_STP) {
+		NL_SET_ERR_MSG_MOD(extack, "Can't modify vlan state when using kernel STP");
+		return -EBUSY;
+	}
+
+	if (v->state == state)
+		return 0;
+
+	if (v->vid == br_get_pvid(vg))
+		br_vlan_set_pvid_state(vg, state);
+
+	br_vlan_set_state(v, state);
+	*changed = true;
+
 	return 0;
 }
 
 static int br_vlan_process_one_opts(const struct net_bridge *br,
 				    const struct net_bridge_port *p,
+				    struct net_bridge_vlan_group *vg,
 				    struct net_bridge_vlan *v,
 				    struct nlattr **tb,
 				    bool *changed,
 				    struct netlink_ext_ack *extack)
 {
+	int err;
+
+	if (tb[BRIDGE_VLANDB_ENTRY_STATE]) {
+		u8 state = nla_get_u8(tb[BRIDGE_VLANDB_ENTRY_STATE]);
+
+		err = br_vlan_modify_state(vg, v, state, changed, extack);
+		if (err)
+			return err;
+	}
+
 	return 0;
 }
 
@@ -67,7 +116,7 @@ int br_vlan_process_options(const struct net_bridge *br,
 			break;
 		}
 
-		err = br_vlan_process_one_opts(br, p, v, tb, &curr_change,
+		err = br_vlan_process_one_opts(br, p, vg, v, tb, &curr_change,
 					       extack);
 		if (err)
 			break;
-- 
2.21.0

