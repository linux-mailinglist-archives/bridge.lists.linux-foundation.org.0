Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 805B04D7F11
	for <lists.bridge@lfdr.de>; Mon, 14 Mar 2022 10:53:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D14AF832D9;
	Mon, 14 Mar 2022 09:53:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 691JBT9Zo2ag; Mon, 14 Mar 2022 09:53:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 26C62837C9;
	Mon, 14 Mar 2022 09:53:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CFBA5C0084;
	Mon, 14 Mar 2022 09:53:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C91C0C0089
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:53:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A1294405F4
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:53:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9BjQPWV0uwOz for <bridge@lists.linux-foundation.org>;
 Mon, 14 Mar 2022 09:53:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com
 [IPv6:2a00:1450:4864:20::233])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4C2594011A
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:53:01 +0000 (UTC)
Received: by mail-lj1-x233.google.com with SMTP id o6so20982192ljp.3
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 02:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=s8tE4K6C86r6zAevurFYv9wJNtJ4sSFnWHyHHEDE/R4=;
 b=Bh4gVTfMc7S09lV2uYPPxLHe7mgzsaJGoJbq60kXuTd/qCDnPlUJAH8hX26nBbUJO8
 TxD4WLuqwMSRq7z5dT5Mem0ng/zqiP4pqPiVUPaPWw4z/Yxdn1FIsr77budKJHAsuluC
 gPa0VXDIV4Ci4b7zIxXD4qntuNG0OjvAFpo69aYXlG/P4HMV6UkBedqiZPvtpg0OvyvO
 8U9nRyUNlCx5utLlFrVXWfqO1bD4LYfoETrHW+v7TJj/Qlo6PxhhpwpxehnXOP+j8q2m
 JXZRoufRI2HAKlZTiwYMlgOf0PXgliI0oCDc6J0TZbskU/Dug+01QdGnRAYrRT/R4jBQ
 JtNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=s8tE4K6C86r6zAevurFYv9wJNtJ4sSFnWHyHHEDE/R4=;
 b=V1TeIYaVC6f2PMu2+sfnCe3B4MgtvZywWT17yFMaGB6mkWQ/buvZLQhvoTLohLn5uF
 20OVbuaGKX9MtkS6ZVMz4mmtH/52ofTz48mb/1Bkvr23EEi/qlfiTfTSR97sHX4jbazb
 ceR9oFNpbySz8YqWAjuFDTbfN8HWqRZbeq2xLsAhylFZvPgsZ7TP7UwydAwiyJ25VIZK
 ffh2KGMyycr7w9Xp61MbkaUEPsOaANvw/Goqw0uTq95rvgJ3BquCUYlABqdUXT0wp384
 VGaptoB8ZgeeZIWseBGlK8EcDtTn7WerBRBaHT9jNTpjMzL7TxoLBwB5Lh4u49ePq0It
 dduA==
X-Gm-Message-State: AOAM530/bJMkNjJtwgUMz3GQLaw4qQLCMjoKh/YqoE61vd1hLqOcuMXz
 K7il5K8A9KoejGKEaaBs7OP5oQ==
X-Google-Smtp-Source: ABdhPJyRX/YvK897Wpk2Sbjn5yAuFabNkpya1Dt4UaghhdP/KwPpj/6gIs1SaX0DgJWaai9+6u6W+w==
X-Received: by 2002:a05:651c:a10:b0:247:eb57:23d0 with SMTP id
 k16-20020a05651c0a1000b00247eb5723d0mr14034365ljq.207.1647251579011; 
 Mon, 14 Mar 2022 02:52:59 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 b3-20020a056512304300b004488e49f2fasm984870lfb.129.2022.03.14.02.52.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 02:52:58 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Mon, 14 Mar 2022 10:52:20 +0100
Message-Id: <20220314095231.3486931-4-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220314095231.3486931-1-tobias@waldekranz.com>
References: <20220314095231.3486931-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, Petr Machata <petrm@nvidia.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, Matt Johnston <matt@codeconstruct.com.au>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH v3 net-next 03/14] net: bridge: mst: Support
	setting and reporting MST port states
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

Make it possible to change the port state in a given MSTI by extending
the bridge port netlink interface (RTM_SETLINK on PF_BRIDGE).The
proposed iproute2 interface would be:

    bridge mst set dev <PORT> msti <MSTI> state <STATE>

Current states in all applicable MSTIs can also be dumped via a
corresponding RTM_GETLINK. The proposed iproute interface looks like
this:

$ bridge mst
port              msti
vb1               0
		    state forwarding
		  100
		    state disabled
vb2               0
		    state forwarding
		  100
		    state forwarding

The preexisting per-VLAN states are still valid in the MST
mode (although they are read-only), and can be queried as usual if one
is interested in knowing a particular VLAN's state without having to
care about the VID to MSTI mapping (in this example VLAN 20 and 30 are
bound to MSTI 100):

$ bridge -d vlan
port              vlan-id
vb1               10
		    state forwarding mcast_router 1
		  20
		    state disabled mcast_router 1
		  30
		    state disabled mcast_router 1
		  40
		    state forwarding mcast_router 1
vb2               10
		    state forwarding mcast_router 1
		  20
		    state forwarding mcast_router 1
		  30
		    state forwarding mcast_router 1
		  40
		    state forwarding mcast_router 1

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 include/uapi/linux/if_bridge.h |  17 ++++++
 include/uapi/linux/rtnetlink.h |   1 +
 net/bridge/br_mst.c            | 105 +++++++++++++++++++++++++++++++++
 net/bridge/br_netlink.c        |  32 +++++++++-
 net/bridge/br_private.h        |  15 +++++
 5 files changed, 169 insertions(+), 1 deletion(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index f60244b747ae..879dfaef8da0 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -122,6 +122,7 @@ enum {
 	IFLA_BRIDGE_VLAN_TUNNEL_INFO,
 	IFLA_BRIDGE_MRP,
 	IFLA_BRIDGE_CFM,
+	IFLA_BRIDGE_MST,
 	__IFLA_BRIDGE_MAX,
 };
 #define IFLA_BRIDGE_MAX (__IFLA_BRIDGE_MAX - 1)
@@ -453,6 +454,21 @@ enum {
 
 #define IFLA_BRIDGE_CFM_CC_PEER_STATUS_MAX (__IFLA_BRIDGE_CFM_CC_PEER_STATUS_MAX - 1)
 
+enum {
+	IFLA_BRIDGE_MST_UNSPEC,
+	IFLA_BRIDGE_MST_ENTRY,
+	__IFLA_BRIDGE_MST_MAX,
+};
+#define IFLA_BRIDGE_MST_MAX (__IFLA_BRIDGE_MST_MAX - 1)
+
+enum {
+	IFLA_BRIDGE_MST_ENTRY_UNSPEC,
+	IFLA_BRIDGE_MST_ENTRY_MSTI,
+	IFLA_BRIDGE_MST_ENTRY_STATE,
+	__IFLA_BRIDGE_MST_ENTRY_MAX,
+};
+#define IFLA_BRIDGE_MST_ENTRY_MAX (__IFLA_BRIDGE_MST_ENTRY_MAX - 1)
+
 struct bridge_stp_xstats {
 	__u64 transition_blk;
 	__u64 transition_fwd;
@@ -786,4 +802,5 @@ enum {
 	__BRIDGE_QUERIER_MAX
 };
 #define BRIDGE_QUERIER_MAX (__BRIDGE_QUERIER_MAX - 1)
+
 #endif /* _UAPI_LINUX_IF_BRIDGE_H */
diff --git a/include/uapi/linux/rtnetlink.h b/include/uapi/linux/rtnetlink.h
index 51530aade46e..83849a37db5b 100644
--- a/include/uapi/linux/rtnetlink.h
+++ b/include/uapi/linux/rtnetlink.h
@@ -817,6 +817,7 @@ enum {
 #define RTEXT_FILTER_MRP	(1 << 4)
 #define RTEXT_FILTER_CFM_CONFIG	(1 << 5)
 #define RTEXT_FILTER_CFM_STATUS	(1 << 6)
+#define RTEXT_FILTER_MST	(1 << 7)
 
 /* End of information exported to user level */
 
diff --git a/net/bridge/br_mst.c b/net/bridge/br_mst.c
index 78ef5fea4d2b..df65aa7701c1 100644
--- a/net/bridge/br_mst.c
+++ b/net/bridge/br_mst.c
@@ -124,3 +124,108 @@ int br_mst_set_enabled(struct net_bridge *br, bool on,
 	br_opt_toggle(br, BROPT_MST_ENABLED, on);
 	return 0;
 }
+
+int br_mst_fill_info(struct sk_buff *skb, struct net_bridge_vlan_group *vg)
+{
+	struct net_bridge_vlan *v;
+	struct nlattr *nest;
+	unsigned long *seen;
+	int err = 0;
+
+	seen = bitmap_zalloc(VLAN_N_VID, 0);
+	if (!seen)
+		return -ENOMEM;
+
+	list_for_each_entry(v, &vg->vlan_list, vlist) {
+		if (test_bit(v->brvlan->msti, seen))
+			continue;
+
+		nest = nla_nest_start_noflag(skb, IFLA_BRIDGE_MST_ENTRY);
+		if (!nest ||
+		    nla_put_u16(skb, IFLA_BRIDGE_MST_ENTRY_MSTI, v->brvlan->msti) ||
+		    nla_put_u8(skb, IFLA_BRIDGE_MST_ENTRY_STATE, v->state)) {
+			err = -EMSGSIZE;
+			break;
+		}
+		nla_nest_end(skb, nest);
+
+		set_bit(v->brvlan->msti, seen);
+	}
+
+	kfree(seen);
+	return err;
+}
+
+static const struct nla_policy br_mst_nl_policy[IFLA_BRIDGE_MST_ENTRY_MAX + 1] = {
+	[IFLA_BRIDGE_MST_ENTRY_MSTI] = NLA_POLICY_RANGE(NLA_U16,
+						   1, /* 0 reserved for CST */
+						   VLAN_N_VID - 1),
+	[IFLA_BRIDGE_MST_ENTRY_STATE] = NLA_POLICY_RANGE(NLA_U8,
+						    BR_STATE_DISABLED,
+						    BR_STATE_BLOCKING),
+};
+
+static int br_mst_parse_one(struct net_bridge_port *p,
+			    const struct nlattr *attr,
+			    struct netlink_ext_ack *extack)
+{
+	struct nlattr *tb[IFLA_BRIDGE_MST_ENTRY_MAX + 1];
+	u16 msti;
+	u8 state;
+	int err;
+
+	err = nla_parse_nested(tb, IFLA_BRIDGE_MST_ENTRY_MAX, attr,
+			       br_mst_nl_policy, extack);
+	if (err)
+		return err;
+
+	if (!tb[IFLA_BRIDGE_MST_ENTRY_MSTI]) {
+		NL_SET_ERR_MSG_MOD(extack, "MSTI not specified");
+		return -EINVAL;
+	}
+
+	if (!tb[IFLA_BRIDGE_MST_ENTRY_STATE]) {
+		NL_SET_ERR_MSG_MOD(extack, "State not specified");
+		return -EINVAL;
+	}
+
+	msti = nla_get_u16(tb[IFLA_BRIDGE_MST_ENTRY_MSTI]);
+	state = nla_get_u8(tb[IFLA_BRIDGE_MST_ENTRY_STATE]);
+
+	br_mst_set_state(p, msti, state);
+	return 0;
+}
+
+int br_mst_parse(struct net_bridge_port *p, struct nlattr *mst_attr,
+		 struct netlink_ext_ack *extack)
+{
+	struct nlattr *attr;
+	int err, msts = 0;
+	int rem;
+
+	if (!br_opt_get(p->br, BROPT_MST_ENABLED)) {
+		NL_SET_ERR_MSG_MOD(extack, "Can't modify MST state when MST is disabled");
+		return -EBUSY;
+	}
+
+	nla_for_each_nested(attr, mst_attr, rem) {
+		switch (nla_type(attr)) {
+		case IFLA_BRIDGE_MST_ENTRY:
+			err = br_mst_parse_one(p, attr, extack);
+			break;
+		default:
+			continue;
+		}
+
+		msts++;
+		if (err)
+			break;
+	}
+
+	if (!msts) {
+		NL_SET_ERR_MSG_MOD(extack, "Found no MST entries to process");
+		err = -EINVAL;
+	}
+
+	return err;
+}
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 7d4432ca9a20..d2b4550f30d6 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -485,7 +485,8 @@ static int br_fill_ifinfo(struct sk_buff *skb,
 			   RTEXT_FILTER_BRVLAN_COMPRESSED |
 			   RTEXT_FILTER_MRP |
 			   RTEXT_FILTER_CFM_CONFIG |
-			   RTEXT_FILTER_CFM_STATUS)) {
+			   RTEXT_FILTER_CFM_STATUS |
+			   RTEXT_FILTER_MST)) {
 		af = nla_nest_start_noflag(skb, IFLA_AF_SPEC);
 		if (!af)
 			goto nla_put_failure;
@@ -564,7 +565,28 @@ static int br_fill_ifinfo(struct sk_buff *skb,
 		nla_nest_end(skb, cfm_nest);
 	}
 
+	if ((filter_mask & RTEXT_FILTER_MST) &&
+	    br_opt_get(br, BROPT_MST_ENABLED) && port) {
+		struct net_bridge_vlan_group *vg = nbp_vlan_group(port);
+		struct nlattr *mst_nest;
+		int err;
+
+		if (!vg || !vg->num_vlans)
+			goto done;
+
+		mst_nest = nla_nest_start(skb, IFLA_BRIDGE_MST);
+		if (!mst_nest)
+			goto nla_put_failure;
+
+		err = br_mst_fill_info(skb, vg);
+		if (err)
+			goto nla_put_failure;
+
+		nla_nest_end(skb, mst_nest);
+	}
+
 done:
+
 	if (af)
 		nla_nest_end(skb, af);
 	nlmsg_end(skb, nlh);
@@ -803,6 +825,14 @@ static int br_afspec(struct net_bridge *br,
 			if (err)
 				return err;
 			break;
+		case IFLA_BRIDGE_MST:
+			if (cmd != RTM_SETLINK || !p)
+				return -EINVAL;
+
+			err = br_mst_parse(p, attr, extack);
+			if (err)
+				return err;
+			break;
 		}
 	}
 
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index b907d389b63a..08d82578bd97 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1783,6 +1783,9 @@ int br_mst_vlan_set_msti(struct net_bridge_vlan *v, u16 msti);
 void br_mst_vlan_init_state(struct net_bridge_vlan *v);
 int br_mst_set_enabled(struct net_bridge *br, bool on,
 		       struct netlink_ext_ack *extack);
+int br_mst_fill_info(struct sk_buff *skb, struct net_bridge_vlan_group *vg);
+int br_mst_parse(struct net_bridge_port *p, struct nlattr *mst_attr,
+		 struct netlink_ext_ack *extack);
 #else
 static inline bool br_mst_is_enabled(struct net_bridge *br)
 {
@@ -1791,6 +1794,18 @@ static inline bool br_mst_is_enabled(struct net_bridge *br)
 
 static inline void br_mst_set_state(struct net_bridge_port *p,
 				    u16 msti, u8 state) {}
+static inline int br_mst_fill_info(struct sk_buff *skb,
+				   struct net_bridge_vlan_group *vg)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline int br_mst_parse(struct net_bridge_port *p,
+			       struct nlattr *mst_attr,
+			       struct netlink_ext_ack *extack)
+{
+	return -EOPNOTSUPP;
+}
 #endif
 
 struct nf_br_ops {
-- 
2.25.1

