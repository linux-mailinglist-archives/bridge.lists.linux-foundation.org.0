Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A9EC34C88CC
	for <lists.bridge@lfdr.de>; Tue,  1 Mar 2022 11:03:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E2C11812A5;
	Tue,  1 Mar 2022 10:03:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I5f5eHKA8z7W; Tue,  1 Mar 2022 10:03:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id DAADF812F9;
	Tue,  1 Mar 2022 10:03:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B6EF0C007C;
	Tue,  1 Mar 2022 10:03:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3F230C007B
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 10:03:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0900660AEE
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 10:03:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JN2CngfDMcXz for <bridge@lists.linux-foundation.org>;
 Tue,  1 Mar 2022 10:03:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AC4F560B54
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 10:03:52 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id b9so25989607lfv.7
 for <bridge@lists.linux-foundation.org>; Tue, 01 Mar 2022 02:03:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=F7C7hTgWjqEspqVB5o/KBKjFtzJiq1s+50mM/TkwxFA=;
 b=V4O/UoO/JgvAZkw0yy7b0zlYGOTooT4tJk2CtxYvgcK9GD0NByvjD9UwaueB/Ad/Gg
 cHUfY8E/iI/EmJfwLMkramHWaW8+3wx6SUO916alOah6LrUFMy/JtXuEePFC9ATm6dPG
 rfNBCr4SMhDX2iL+qEaexR6FrNE43rZrEUg9QcVuVbcHRUBlxM0mu1NPuwyIBsP8t+sW
 fxwHI+sxguycgvKcumtTsJCC+7dfuQjmZJA50FsmFbOe6dNpnS/C5Dls6Bp5chlCCL8M
 9rSaL/CCFhO/uY3q86bMmZuE6AisTUIzhjkNlM3etQFwrivK9UQS2XvZkkMA53lw98gR
 bUPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=F7C7hTgWjqEspqVB5o/KBKjFtzJiq1s+50mM/TkwxFA=;
 b=T5lvoyKa2POhgjXAspsSLwVoK9BfN8SYIfL9J07wK99339JilEGaGsiVEMXHd8iP7/
 axKneRO0Fjt5As79ab7L2NGPYlMYjuQ5zxDRTIlQ3TqhgyvmIgSALNDmOscMPxSs+7jC
 N0ZjLoB2i0erkU1rTr3CWJ+KZbFORrxRb3/uh8v7fCDRDEBORQLe7jTrt/90gGx2v8jY
 FLqHgh3uaHT03SqHXyB+hRDRIS+nySCaQySSA/fr7M3DEtNhr+dfyWGW6bhjY35+VNth
 bmysBF6J1kSfbLC+csgKfANl3DXGFAQTmJUicLaiwCoMaGJDN1pGajgYzaJLvgXM7AaQ
 gecw==
X-Gm-Message-State: AOAM533T/85Zy5cXsO6/W4emAo7wSSwiDk7bdnrtTzwLnK1pNs+V2WrT
 BoGSFPwUUCMEQAglz66gJzMleQ==
X-Google-Smtp-Source: ABdhPJzqxlr+XPuNwWeG42zHKgVNoGPMUzjCoxsSBR1Ubk9lCAsqj7x05ohHlJyjcK8Z6HRiAxCtzg==
X-Received: by 2002:ac2:58cf:0:b0:437:96c2:deed with SMTP id
 u15-20020ac258cf000000b0043796c2deedmr15018061lfo.137.1646129030473; 
 Tue, 01 Mar 2022 02:03:50 -0800 (PST)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 s27-20020a05651c049b00b002460fd4252asm1826822ljc.100.2022.03.01.02.03.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Mar 2022 02:03:50 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue,  1 Mar 2022 11:03:14 +0100
Message-Id: <20220301100321.951175-4-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220301100321.951175-1-tobias@waldekranz.com>
References: <20220301100321.951175-1-tobias@waldekranz.com>
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
Subject: [Bridge] [PATCH v2 net-next 03/10] net: bridge: mst: Support
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

Make it possible to change the port state in a given MSTI. This is
done through a new netlink interface, since the MSTIs are objects in
their own right. The proposed iproute2 interface would be:

    bridge mst set dev <PORT> msti <MSTI> state <STATE>

Current states in all applicable MSTIs can also be dumped. The
proposed iproute interface looks like this:

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
 include/uapi/linux/if_bridge.h |  16 +++
 include/uapi/linux/rtnetlink.h |   5 +
 net/bridge/br_mst.c            | 244 +++++++++++++++++++++++++++++++++
 net/bridge/br_netlink.c        |   3 +
 net/bridge/br_private.h        |   4 +
 5 files changed, 272 insertions(+)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index b68016f625b7..784482527861 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -785,4 +785,20 @@ enum {
 	__BRIDGE_QUERIER_MAX
 };
 #define BRIDGE_QUERIER_MAX (__BRIDGE_QUERIER_MAX - 1)
+
+enum {
+	BRIDGE_MST_UNSPEC,
+	BRIDGE_MST_ENTRY,
+	__BRIDGE_MST_MAX,
+};
+#define BRIDGE_MST_MAX (__BRIDGE_MST_MAX - 1)
+
+enum {
+	BRIDGE_MST_ENTRY_UNSPEC,
+	BRIDGE_MST_ENTRY_MSTI,
+	BRIDGE_MST_ENTRY_STATE,
+	__BRIDGE_MST_ENTRY_MAX,
+};
+#define BRIDGE_MST_ENTRY_MAX (__BRIDGE_MST_ENTRY_MAX - 1)
+
 #endif /* _UAPI_LINUX_IF_BRIDGE_H */
diff --git a/include/uapi/linux/rtnetlink.h b/include/uapi/linux/rtnetlink.h
index 0970cb4b1b88..4a48f3ce862c 100644
--- a/include/uapi/linux/rtnetlink.h
+++ b/include/uapi/linux/rtnetlink.h
@@ -192,6 +192,11 @@ enum {
 	RTM_GETTUNNEL,
 #define RTM_GETTUNNEL	RTM_GETTUNNEL
 
+	RTM_GETMST = 124 + 2,
+#define RTM_GETMST	RTM_GETMST
+	RTM_SETMST,
+#define RTM_SETMST	RTM_SETMST
+
 	__RTM_MAX,
 #define RTM_MAX		(((__RTM_MAX + 3) & ~3) - 1)
 };
diff --git a/net/bridge/br_mst.c b/net/bridge/br_mst.c
index f3b8e279b85c..8dea8e7257fd 100644
--- a/net/bridge/br_mst.c
+++ b/net/bridge/br_mst.c
@@ -120,3 +120,247 @@ int br_mst_set_enabled(struct net_bridge *br, unsigned long val)
 	br_opt_toggle(br, BROPT_MST_ENABLED, !!val);
 	return 0;
 }
+
+static int br_mst_nl_get_one(struct net_bridge_port *p, struct sk_buff *skb,
+			     struct netlink_callback *cb)
+{
+	struct net_bridge_vlan_group *vg = nbp_vlan_group(p);
+	int err = 0, idx = 0, s_idx = cb->args[1];
+	struct net_bridge_vlan *v;
+	struct br_port_msg *bpm;
+	struct nlmsghdr *nlh;
+	struct nlattr *nest;
+	unsigned long *seen;
+
+	nlh = nlmsg_put(skb, NETLINK_CB(cb->skb).portid, cb->nlh->nlmsg_seq,
+			RTM_GETMST, sizeof(*bpm), NLM_F_MULTI);
+	if (!nlh)
+		return -EMSGSIZE;
+
+	bpm = nlmsg_data(nlh);
+	memset(bpm, 0, sizeof(*bpm));
+	bpm->ifindex = p->dev->ifindex;
+
+	seen = bitmap_zalloc(VLAN_N_VID, 0);
+	if (!seen)
+		return -ENOMEM;
+
+	list_for_each_entry(v, &vg->vlan_list, vlist) {
+		if (test_bit(v->brvlan->msti, seen))
+			continue;
+
+		if (idx < s_idx)
+			goto skip;
+
+		nest = nla_nest_start_noflag(skb, BRIDGE_MST_ENTRY);
+		if (!nest ||
+		    nla_put_u16(skb, BRIDGE_MST_ENTRY_MSTI, v->brvlan->msti) ||
+		    nla_put_u8(skb, BRIDGE_MST_ENTRY_STATE, v->state)) {
+			err = -EMSGSIZE;
+			break;
+		}
+		nla_nest_end(skb, nest);
+
+		set_bit(v->brvlan->msti, seen);
+skip:
+		idx++;
+	}
+
+	kfree(seen);
+	nlmsg_end(skb, nlh);
+	return err;
+}
+
+static struct net_bridge_port *br_mst_nl_get_parse(struct net *net,
+						   struct netlink_callback *cb)
+{
+	struct netlink_ext_ack *extack = cb->extack;
+	const struct nlmsghdr *nlh = cb->nlh;
+	struct net_bridge_port *p;
+	struct br_port_msg *bpm;
+	struct net_device *dev;
+
+	if (nlh->nlmsg_len < nlmsg_msg_size(sizeof(*bpm))) {
+		NL_SET_ERR_MSG_MOD(extack, "Invalid header for mst get request");
+		return ERR_PTR(-EINVAL);
+	}
+
+	if (nlmsg_attrlen(nlh, sizeof(*bpm))) {
+		NL_SET_ERR_MSG(extack, "Invalid data after header in mst get request");
+		return ERR_PTR(-EINVAL);
+	}
+
+	bpm = nlmsg_data(nlh);
+	if (!bpm->ifindex)
+		return NULL;
+
+	dev = __dev_get_by_index(net, bpm->ifindex);
+	if (!dev)
+		return ERR_PTR(-ENODEV);
+
+	if (!netif_is_bridge_port(dev)) {
+		NL_SET_ERR_MSG_MOD(extack, "The device is not a valid bridge port");
+		return ERR_PTR(-EINVAL);
+	}
+
+	p = br_port_get_rtnl(dev);
+	if (WARN_ON(!p))
+		return ERR_PTR(-ENODEV);
+
+	if (!br_opt_get(p->br, BROPT_MST_ENABLED)) {
+		NL_SET_ERR_MSG_MOD(extack, "Can't query MST state when MST is disabled");
+		return ERR_PTR(-EINVAL);
+	}
+
+	return p;
+}
+
+static int br_mst_nl_get(struct sk_buff *skb, struct netlink_callback *cb)
+{
+	int err = 0, idx = 0, s_idx = cb->args[0];
+	struct net *net = sock_net(skb->sk);
+	struct net_bridge_port *p;
+	struct net_device *dev;
+
+	p = br_mst_nl_get_parse(net, cb);
+	if (IS_ERR(p))
+		return PTR_ERR(p);
+
+	if (p) {
+		err = br_mst_nl_get_one(p, skb, cb);
+		if (err != -EMSGSIZE)
+			return err;
+	} else {
+		for_each_netdev(net, dev) {
+			if (!netif_is_bridge_port(dev))
+				continue;
+
+			if (idx < s_idx)
+				goto skip;
+
+			p = br_port_get_rtnl(dev);
+			if (WARN_ON(!p))
+				return -ENODEV;
+
+			err = br_mst_nl_get_one(p, skb, cb);
+			if (err == -EMSGSIZE)
+				break;
+skip:
+			idx++;
+		}
+	}
+
+	cb->args[0] = idx;
+	return skb->len;
+}
+
+static const struct nla_policy br_mst_nl_policy[BRIDGE_MST_ENTRY_MAX + 1] = {
+	[BRIDGE_MST_ENTRY_MSTI] = NLA_POLICY_RANGE(NLA_U16,
+						   1, /* 0 reserved for CST */
+						   VLAN_N_VID - 1),
+	[BRIDGE_MST_ENTRY_STATE] = NLA_POLICY_RANGE(NLA_U8,
+						    BR_STATE_DISABLED,
+						    BR_STATE_BLOCKING),
+};
+
+static int br_mst_nl_set_one(struct net_bridge_port *p,
+			     const struct nlattr *attr,
+			     struct netlink_ext_ack *extack)
+{
+	struct nlattr *tb[BRIDGE_MST_ENTRY_MAX + 1];
+	u16 msti;
+	u8 state;
+	int err;
+
+	err = nla_parse_nested(tb, BRIDGE_MST_ENTRY_MAX, attr,
+			       br_mst_nl_policy, extack);
+	if (err)
+		return err;
+
+	if (!tb[BRIDGE_MST_ENTRY_MSTI]) {
+		NL_SET_ERR_MSG_MOD(extack, "MSTI not specified");
+		return -EINVAL;
+	}
+
+	if (!tb[BRIDGE_MST_ENTRY_STATE]) {
+		NL_SET_ERR_MSG_MOD(extack, "State not specified");
+		return -EINVAL;
+	}
+
+	msti = nla_get_u16(tb[BRIDGE_MST_ENTRY_MSTI]);
+	state = nla_get_u8(tb[BRIDGE_MST_ENTRY_STATE]);
+
+	br_mst_set_state(p, msti, state);
+	return 0;
+}
+
+static int br_mst_nl_set(struct sk_buff *skb, struct nlmsghdr *nlh,
+			 struct netlink_ext_ack *extack)
+{
+	struct net *net = sock_net(skb->sk);
+	struct net_bridge_port *p;
+	struct br_port_msg *bpm;
+	struct net_device *dev;
+	struct nlattr *attr;
+	int err, msts = 0;
+	int rem;
+
+	err = nlmsg_parse(nlh, sizeof(*bpm), NULL, BRIDGE_MST_MAX, NULL,
+			  extack);
+	if (err < 0)
+		return err;
+
+	bpm = nlmsg_data(nlh);
+	dev = __dev_get_by_index(net, bpm->ifindex);
+	if (!dev)
+		return -ENODEV;
+
+	if (!netif_is_bridge_port(dev)) {
+		NL_SET_ERR_MSG_MOD(extack, "The device is not a valid bridge port");
+		return -EINVAL;
+	}
+
+	p = br_port_get_rtnl(dev);
+	if (WARN_ON(!p))
+		return -ENODEV;
+
+	if (!br_opt_get(p->br, BROPT_MST_ENABLED)) {
+		NL_SET_ERR_MSG_MOD(extack, "Can't modify MST state when MST is disabled");
+		return -EBUSY;
+	}
+
+	nlmsg_for_each_attr(attr, nlh, sizeof(*bpm), rem) {
+		switch (nla_type(attr)) {
+		case BRIDGE_MST_ENTRY:
+			err = br_mst_nl_set_one(p, attr, extack);
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
+
+void br_mst_rtnl_init(void)
+{
+	rtnl_register_module(THIS_MODULE, PF_BRIDGE, RTM_GETMST, NULL,
+			     br_mst_nl_get, 0);
+	rtnl_register_module(THIS_MODULE, PF_BRIDGE, RTM_SETMST,
+			     br_mst_nl_set, NULL, 0);
+}
+
+void br_mst_rtnl_uninit(void)
+{
+	rtnl_unregister(PF_BRIDGE, RTM_SETMST);
+	rtnl_unregister(PF_BRIDGE, RTM_GETMST);
+}
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index a17a0fe25a58..6d70d6f9cf17 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -1813,6 +1813,7 @@ int __init br_netlink_init(void)
 
 	br_mdb_init();
 	br_vlan_rtnl_init();
+	br_mst_rtnl_init();
 	rtnl_af_register(&br_af_ops);
 
 	err = rtnl_link_register(&br_link_ops);
@@ -1824,6 +1825,7 @@ int __init br_netlink_init(void)
 out_af:
 	rtnl_af_unregister(&br_af_ops);
 	br_mdb_uninit();
+	br_mst_rtnl_uninit();
 	return err;
 }
 
@@ -1831,6 +1833,7 @@ void br_netlink_fini(void)
 {
 	br_mdb_uninit();
 	br_vlan_rtnl_uninit();
+	br_mst_rtnl_uninit();
 	rtnl_af_unregister(&br_af_ops);
 	rtnl_link_unregister(&br_link_ops);
 }
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 63601043abca..7882a65ffb43 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1782,6 +1782,8 @@ void br_mst_set_state(struct net_bridge_port *p, u16 msti, u8 state);
 int br_mst_vlan_set_msti(struct net_bridge_vlan *v, u16 msti);
 void br_mst_vlan_init_state(struct net_bridge_vlan *v);
 int br_mst_set_enabled(struct net_bridge *br, unsigned long val);
+void br_mst_rtnl_init(void);
+void br_mst_rtnl_uninit(void);
 #else
 static inline bool br_mst_is_enabled(struct net_bridge *br)
 {
@@ -1790,6 +1792,8 @@ static inline bool br_mst_is_enabled(struct net_bridge *br)
 
 static inline void br_mst_set_state(struct net_bridge_port *p,
 				    u16 msti, u8 state) {}
+static inline void br_mst_rtnl_init(void) {}
+static inline void br_mst_rtnl_uninit(void) {}
 #endif
 
 struct nf_br_ops {
-- 
2.25.1

