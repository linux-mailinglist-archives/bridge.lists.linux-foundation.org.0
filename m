Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 827234D914D
	for <lists.bridge@lfdr.de>; Tue, 15 Mar 2022 01:26:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1E1C60E62;
	Tue, 15 Mar 2022 00:26:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GCjbOLvJO-QA; Tue, 15 Mar 2022 00:26:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id BEBA760F40;
	Tue, 15 Mar 2022 00:26:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B5EA4C000B;
	Tue, 15 Mar 2022 00:26:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 71964C000B
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 942D881775
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nKtMrABi1JZl for <bridge@lists.linux-foundation.org>;
 Tue, 15 Mar 2022 00:26:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5F8FC82F9B
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:23 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id bt26so30179704lfb.3
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 17:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=0XpYHD+jbjrSRJcekFFId9fKTAMidXFubBZNTJ/btBw=;
 b=x83TqEjIaAao3rnO1gP9CUrS9pBfLnmYa92gw2NerRO22QFdTe4LWqv9qIn76uWtTe
 rr64YlpH2Cs4hT7fm1feq3VS/K5TpJ61VQTFQOxosgUY3+ByCTfwMKl/CLZZkRSkrIJO
 a6aGkmujYGBYmcBqHjGNQQaI626G6V5L5ye9mfTPg2yYabuqdjJt23lEXwrooAGJk6Fn
 OZUxez69rOnvcMH2gtheogtTkAB5fFqj6SOgzzhdkC9wNWgx+9E5DPRmaNKdU6i5G12I
 pEuUj8BxqGK1mRxIW2orckQsD5vvjRAUcDMc7LD6RVMY5S5ZQMuaZYoOow8dGxj77xVs
 wh1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=0XpYHD+jbjrSRJcekFFId9fKTAMidXFubBZNTJ/btBw=;
 b=uJi+jHnXfD/x6EGYJEjUMxZEdvD4oGlDIhUbmC3gKYdFucFhGH2eHb7S6lHaJmvez9
 2+lI3n0lCLzP5ohSzo814QJ+QrheztENlOz5klP4qcXuzxXEbHRBBgOsbDnN3qMBdNUz
 zVzXFIQC0jyJtNCttu4Hl9ZH4ckSyb8+px4a7OyDUdsJRlyTcZnM3/8yb5RiXDw1v+NM
 LT7c4DBMCS2NJd54eC3ag3HdAa/YZhbueMDvLMdj7Ue9b0Qw1VT0E+Tj5eUYlbNIJk2h
 uHj1t3aaxbwXlwnyU7/fA4IosxHBQvVQoCVm5ztz9jORqfHDFnKvBKeaABfKfK7tz3el
 AG2w==
X-Gm-Message-State: AOAM533O/l/hWUgB5e7/aHpYZ7qSSVpuWj8SUe9ZhuwRDOQM8GNTkHaY
 hHKiiRpATPPQirQcPMzkbTY/wQ==
X-Google-Smtp-Source: ABdhPJye1h/fSQw5RmHrt9F8JBrRnWXg3ZKvVkkb0gAkUqZzK/eJoc8/ynPmOD653ymfZfm03gYjoA==
X-Received: by 2002:a05:6512:3048:b0:448:6480:4a92 with SMTP id
 b8-20020a056512304800b0044864804a92mr13928194lfb.538.1647303981279; 
 Mon, 14 Mar 2022 17:26:21 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 y14-20020a2e544e000000b0024800f8286bsm4219923ljd.78.2022.03.14.17.26.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 17:26:20 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue, 15 Mar 2022 01:25:29 +0100
Message-Id: <20220315002543.190587-2-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220315002543.190587-1-tobias@waldekranz.com>
References: <20220315002543.190587-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, Matt Johnston <matt@codeconstruct.com.au>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH v4 net-next 01/15] net: bridge: mst: Multiple
	Spanning Tree (MST) mode
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

Allow the user to switch from the current per-VLAN STP mode to an MST
mode.

Up to this point, per-VLAN STP states where always isolated from each
other. This is in contrast to the MSTP standard (802.1Q-2018, Clause
13.5), where VLANs are grouped into MST instances (MSTIs), and the
state is managed on a per-MSTI level, rather that at the per-VLAN
level.

Perhaps due to the prevalence of the standard, many switching ASICs
are built after the same model. Therefore, add a corresponding MST
mode to the bridge, which we can later add offloading support for in a
straight-forward way.

For now, all VLANs are fixed to MSTI 0, also called the Common
Spanning Tree (CST). That is, all VLANs will follow the port-global
state.

Upcoming changes will make this actually useful by allowing VLANs to
be mapped to arbitrary MSTIs and allow individual MSTI states to be
changed.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 include/uapi/linux/if_bridge.h |  1 +
 net/bridge/Makefile            |  2 +-
 net/bridge/br.c                |  5 ++
 net/bridge/br_input.c          | 17 ++++++-
 net/bridge/br_mst.c            | 84 ++++++++++++++++++++++++++++++++++
 net/bridge/br_private.h        | 32 +++++++++++++
 net/bridge/br_stp.c            |  3 ++
 net/bridge/br_vlan.c           | 20 +++++++-
 net/bridge/br_vlan_options.c   |  5 ++
 9 files changed, 165 insertions(+), 4 deletions(-)
 create mode 100644 net/bridge/br_mst.c

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 2711c3522010..30a242195ced 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -759,6 +759,7 @@ struct br_mcast_stats {
 enum br_boolopt_id {
 	BR_BOOLOPT_NO_LL_LEARN,
 	BR_BOOLOPT_MCAST_VLAN_SNOOPING,
+	BR_BOOLOPT_MST_ENABLE,
 	BR_BOOLOPT_MAX
 };
 
diff --git a/net/bridge/Makefile b/net/bridge/Makefile
index 7fb9a021873b..24bd1c0a9a5a 100644
--- a/net/bridge/Makefile
+++ b/net/bridge/Makefile
@@ -20,7 +20,7 @@ obj-$(CONFIG_BRIDGE_NETFILTER) += br_netfilter.o
 
 bridge-$(CONFIG_BRIDGE_IGMP_SNOOPING) += br_multicast.o br_mdb.o br_multicast_eht.o
 
-bridge-$(CONFIG_BRIDGE_VLAN_FILTERING) += br_vlan.o br_vlan_tunnel.o br_vlan_options.o
+bridge-$(CONFIG_BRIDGE_VLAN_FILTERING) += br_vlan.o br_vlan_tunnel.o br_vlan_options.o br_mst.o
 
 bridge-$(CONFIG_NET_SWITCHDEV) += br_switchdev.o
 
diff --git a/net/bridge/br.c b/net/bridge/br.c
index b1dea3febeea..96e91d69a9a8 100644
--- a/net/bridge/br.c
+++ b/net/bridge/br.c
@@ -265,6 +265,9 @@ int br_boolopt_toggle(struct net_bridge *br, enum br_boolopt_id opt, bool on,
 	case BR_BOOLOPT_MCAST_VLAN_SNOOPING:
 		err = br_multicast_toggle_vlan_snooping(br, on, extack);
 		break;
+	case BR_BOOLOPT_MST_ENABLE:
+		err = br_mst_set_enabled(br, on, extack);
+		break;
 	default:
 		/* shouldn't be called with unsupported options */
 		WARN_ON(1);
@@ -281,6 +284,8 @@ int br_boolopt_get(const struct net_bridge *br, enum br_boolopt_id opt)
 		return br_opt_get(br, BROPT_NO_LL_LEARN);
 	case BR_BOOLOPT_MCAST_VLAN_SNOOPING:
 		return br_opt_get(br, BROPT_MCAST_VLAN_SNOOPING_ENABLED);
+	case BR_BOOLOPT_MST_ENABLE:
+		return br_opt_get(br, BROPT_MST_ENABLED);
 	default:
 		/* shouldn't be called with unsupported options */
 		WARN_ON(1);
diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index e0c13fcc50ed..196417859c4a 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -78,13 +78,22 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 	u16 vid = 0;
 	u8 state;
 
-	if (!p || p->state == BR_STATE_DISABLED)
+	if (!p)
 		goto drop;
 
 	br = p->br;
+
+	if (br_mst_is_enabled(br)) {
+		state = BR_STATE_FORWARDING;
+	} else {
+		if (p->state == BR_STATE_DISABLED)
+			goto drop;
+
+		state = p->state;
+	}
+
 	brmctx = &p->br->multicast_ctx;
 	pmctx = &p->multicast_ctx;
-	state = p->state;
 	if (!br_allowed_ingress(p->br, nbp_vlan_group_rcu(p), skb, &vid,
 				&state, &vlan))
 		goto out;
@@ -370,9 +379,13 @@ static rx_handler_result_t br_handle_frame(struct sk_buff **pskb)
 		return RX_HANDLER_PASS;
 
 forward:
+	if (br_mst_is_enabled(p->br))
+		goto defer_stp_filtering;
+
 	switch (p->state) {
 	case BR_STATE_FORWARDING:
 	case BR_STATE_LEARNING:
+defer_stp_filtering:
 		if (ether_addr_equal(p->br->dev->dev_addr, dest))
 			skb->pkt_type = PACKET_HOST;
 
diff --git a/net/bridge/br_mst.c b/net/bridge/br_mst.c
new file mode 100644
index 000000000000..e1ec9d39c660
--- /dev/null
+++ b/net/bridge/br_mst.c
@@ -0,0 +1,84 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ *	Bridge Multiple Spanning Tree Support
+ *
+ *	Authors:
+ *	Tobias Waldekranz		<tobias@waldekranz.com>
+ */
+
+#include <linux/kernel.h>
+
+#include "br_private.h"
+
+DEFINE_STATIC_KEY_FALSE(br_mst_used);
+
+static void br_mst_vlan_set_state(struct net_bridge_port *p, struct net_bridge_vlan *v,
+				  u8 state)
+{
+	struct net_bridge_vlan_group *vg = nbp_vlan_group(p);
+
+	if (v->state == state)
+		return;
+
+	br_vlan_set_state(v, state);
+
+	if (v->vid == vg->pvid)
+		br_vlan_set_pvid_state(vg, state);
+}
+
+void br_mst_set_state(struct net_bridge_port *p, u16 msti, u8 state)
+{
+	struct net_bridge_vlan_group *vg;
+	struct net_bridge_vlan *v;
+
+	vg = nbp_vlan_group(p);
+	if (!vg)
+		return;
+
+	list_for_each_entry(v, &vg->vlan_list, vlist) {
+		if (v->brvlan->msti != msti)
+			continue;
+
+		br_mst_vlan_set_state(p, v, state);
+	}
+}
+
+void br_mst_vlan_init_state(struct net_bridge_vlan *v)
+{
+	/* VLANs always start out in MSTI 0 (CST) */
+	v->msti = 0;
+
+	if (br_vlan_is_master(v))
+		v->state = BR_STATE_FORWARDING;
+	else
+		v->state = v->port->state;
+}
+
+int br_mst_set_enabled(struct net_bridge *br, bool on,
+		       struct netlink_ext_ack *extack)
+{
+	struct net_bridge_vlan_group *vg;
+	struct net_bridge_port *p;
+
+	list_for_each_entry(p, &br->port_list, list) {
+		vg = nbp_vlan_group(p);
+
+		if (!vg->num_vlans)
+			continue;
+
+		NL_SET_ERR_MSG(extack,
+			       "MST mode can't be changed while VLANs exist");
+		return -EBUSY;
+	}
+
+	if (br_opt_get(br, BROPT_MST_ENABLED) == on)
+		return 0;
+
+	if (on)
+		static_branch_enable(&br_mst_used);
+	else
+		static_branch_disable(&br_mst_used);
+
+	br_opt_toggle(br, BROPT_MST_ENABLED, on);
+	return 0;
+}
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 48bc61ebc211..934c3dc4a927 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -178,6 +178,7 @@ enum {
  * @br_mcast_ctx: if MASTER flag set, this is the global vlan multicast context
  * @port_mcast_ctx: if MASTER flag unset, this is the per-port/vlan multicast
  *                  context
+ * @msti: if MASTER flag set, this holds the VLANs MST instance
  * @vlist: sorted list of VLAN entries
  * @rcu: used for entry destruction
  *
@@ -210,6 +211,8 @@ struct net_bridge_vlan {
 		struct net_bridge_mcast_port	port_mcast_ctx;
 	};
 
+	u16				msti;
+
 	struct list_head		vlist;
 
 	struct rcu_head			rcu;
@@ -445,6 +448,7 @@ enum net_bridge_opts {
 	BROPT_NO_LL_LEARN,
 	BROPT_VLAN_BRIDGE_BINDING,
 	BROPT_MCAST_VLAN_SNOOPING_ENABLED,
+	BROPT_MST_ENABLED,
 };
 
 struct net_bridge {
@@ -1765,6 +1769,34 @@ static inline bool br_vlan_state_allowed(u8 state, bool learn_allow)
 }
 #endif
 
+/* br_mst.c */
+#ifdef CONFIG_BRIDGE_VLAN_FILTERING
+DECLARE_STATIC_KEY_FALSE(br_mst_used);
+static inline bool br_mst_is_enabled(struct net_bridge *br)
+{
+	return static_branch_unlikely(&br_mst_used) &&
+		br_opt_get(br, BROPT_MST_ENABLED);
+}
+
+void br_mst_set_state(struct net_bridge_port *p, u16 msti, u8 state);
+void br_mst_vlan_init_state(struct net_bridge_vlan *v);
+int br_mst_set_enabled(struct net_bridge *br, bool on,
+		       struct netlink_ext_ack *extack);
+#else
+static inline bool br_mst_is_enabled(struct net_bridge *br)
+{
+	return false;
+}
+
+static inline void br_mst_set_state(struct net_bridge_port *p,
+				    u16 msti, u8 state) {}
+static inline int br_mst_set_enabled(struct net_bridge *br, bool on,
+				     struct netlink_ext_ack *extack)
+{
+	return -EOPNOTSUPP;
+}
+#endif
+
 struct nf_br_ops {
 	int (*br_dev_xmit_hook)(struct sk_buff *skb);
 };
diff --git a/net/bridge/br_stp.c b/net/bridge/br_stp.c
index 1d80f34a139c..82a97a021a57 100644
--- a/net/bridge/br_stp.c
+++ b/net/bridge/br_stp.c
@@ -43,6 +43,9 @@ void br_set_state(struct net_bridge_port *p, unsigned int state)
 		return;
 
 	p->state = state;
+	if (br_opt_get(p->br, BROPT_MST_ENABLED))
+		br_mst_set_state(p, 0, state);
+
 	err = switchdev_port_attr_set(p->dev, &attr, NULL);
 	if (err && err != -EOPNOTSUPP)
 		br_warn(p->br, "error setting offload STP state on port %u(%s)\n",
diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index 7557e90b60e1..0f5e75ccac79 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -226,6 +226,24 @@ static void nbp_vlan_rcu_free(struct rcu_head *rcu)
 	kfree(v);
 }
 
+static void br_vlan_init_state(struct net_bridge_vlan *v)
+{
+	struct net_bridge *br;
+
+	if (br_vlan_is_master(v))
+		br = v->br;
+	else
+		br = v->port->br;
+
+	if (br_opt_get(br, BROPT_MST_ENABLED)) {
+		br_mst_vlan_init_state(v);
+		return;
+	}
+
+	v->state = BR_STATE_FORWARDING;
+	v->msti = 0;
+}
+
 /* This is the shared VLAN add function which works for both ports and bridge
  * devices. There are four possible calls to this function in terms of the
  * vlan entry type:
@@ -322,7 +340,7 @@ static int __vlan_add(struct net_bridge_vlan *v, u16 flags,
 	}
 
 	/* set the state before publishing */
-	v->state = BR_STATE_FORWARDING;
+	br_vlan_init_state(v);
 
 	err = rhashtable_lookup_insert_fast(&vg->vlan_hash, &v->vnode,
 					    br_vlan_rht_params);
diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
index a6382973b3e7..09112b56e79c 100644
--- a/net/bridge/br_vlan_options.c
+++ b/net/bridge/br_vlan_options.c
@@ -99,6 +99,11 @@ static int br_vlan_modify_state(struct net_bridge_vlan_group *vg,
 		return -EBUSY;
 	}
 
+	if (br_opt_get(br, BROPT_MST_ENABLED)) {
+		NL_SET_ERR_MSG_MOD(extack, "Can't modify vlan state directly when MST is enabled");
+		return -EBUSY;
+	}
+
 	if (v->state == state)
 		return 0;
 
-- 
2.25.1

