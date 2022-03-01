Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEF94C98B9
	for <lists.bridge@lfdr.de>; Wed,  2 Mar 2022 00:01:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B7B3403F7;
	Tue,  1 Mar 2022 23:01:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vHJ5d8DrV08c; Tue,  1 Mar 2022 23:01:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 157F9400A4;
	Tue,  1 Mar 2022 23:01:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A91C6C0085;
	Tue,  1 Mar 2022 23:01:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7594AC000B
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 23:01:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5995941513
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 23:01:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Runshm7gyeHG for <bridge@lists.linux-foundation.org>;
 Tue,  1 Mar 2022 23:01:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 04B5C41503
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 23:01:36 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id m14so29428570lfu.4
 for <bridge@lists.linux-foundation.org>; Tue, 01 Mar 2022 15:01:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:user-agent:in-reply-to:references
 :message-id:mime-version:content-transfer-encoding;
 bh=cl84KQHG0kLY2Y1AtHoZnag+g1VBQ0lA/b0TTIEWUMA=;
 b=G4WQZPeuJ67KYxH1iyEWWP4afXHP1DbiGn9Z2EQAVY++9Bd2jTNI3gWI23hCxH5iw3
 45Fx7Kx7ly0icPGy2Hjrkg+H8hekUuUVJRbrEqqg3e/27nqiJu29wGP46VuLOi6dYvD+
 zcHmlv+zJhkgtutgJDrU2+3STeJo0LeUG5u/1TWT0b2Rr5v27VW7IZeyJeuIeRtO0Jze
 YH5zEk8x5yjLrefzFqaWwHEw1cZUxDZnwZLfAY6GCvp9kyJ+wYaAm8nKqNpu0Ye2zMHm
 F/RRP4AtnfD7vbeZ2W8HOIvb4MHj4E8FoOr1WHtdolp9yk/6iIz2QqikTnZ8bXu093By
 t8dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:user-agent:in-reply-to
 :references:message-id:mime-version:content-transfer-encoding;
 bh=cl84KQHG0kLY2Y1AtHoZnag+g1VBQ0lA/b0TTIEWUMA=;
 b=bGfXcP9gLnsk+p9SNNjnA2L07v8x51obTxFVZUPdS25yST0X2lzQO6frnbTMICrbSr
 4ykIJCzwELO5FzF81GAn2GAfs+AmtQFxiZ6BugYhLpHhfDX3uVQoiu2cUngER8AZw0nW
 2gaNQEjvx/Bjs0pU7AGPoGuW6PFUivJfkoquoVVh+oTr+gnC9IVkEn/LnVdk7df3gMrE
 yCBTscBE6RnWHudyNEc8YHnez0sTN324dJZVV/TPGwde4nb6WJE0tuT/zkinTVObNl/H
 XUXlys8VzD4eN+Q/MH64bfIt2NHnoO9pDI3gbjj9TYkP6/UceAWW3OvYjkw32gq/nR9A
 GA0g==
X-Gm-Message-State: AOAM530hvg3ipJLMg6dvm722F4lbPLVW01cbK1ZEKCSWi9Or3E469MF0
 BMeSeYa4jnWNN8YhnkrQRRckAQ==
X-Google-Smtp-Source: ABdhPJxQ4JMSCSkSO78IaZpn2Bf+VQiNDpA9o7TInu20Yo5kUTIFzX29rSOt1v2eolCCumvckSygLA==
X-Received: by 2002:a05:6512:2614:b0:445:777d:3530 with SMTP id
 bt20-20020a056512261400b00445777d3530mr14575512lfb.647.1646175694556; 
 Tue, 01 Mar 2022 15:01:34 -0800 (PST)
Received: from [127.0.0.1] ([213.239.67.158]) by smtp.gmail.com with ESMTPSA id
 g7-20020a19e047000000b0044395c894d2sm1718784lfj.163.2022.03.01.15.01.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Mar 2022 15:01:34 -0800 (PST)
Date: Wed, 02 Mar 2022 00:01:31 +0100
From: Nikolay Aleksandrov <razor@blackwall.org>
To: Tobias Waldekranz <tobias@waldekranz.com>, davem@davemloft.net,
 kuba@kernel.org
User-Agent: K-9 Mail for Android
In-Reply-To: <20220301100321.951175-2-tobias@waldekranz.com>
References: <20220301100321.951175-1-tobias@waldekranz.com>
 <20220301100321.951175-2-tobias@waldekranz.com>
Message-ID: <F908AE50-EDF4-4B83-98BD-ECB872CAD776@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Cooper Lees <me@cooperlees.com>, Roopa Prabhu <roopa@nvidia.com>,
 Matt Johnston <matt@codeconstruct.com.au>, Vladimir Oltean <olteanv@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v2 net-next 01/10] net: bridge: mst: Multiple
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

On 1 March 2022 11:03:12 CET, Tobias Waldekranz <tobias@waldekranz=2Ecom> w=
rote:
>Allow the user to switch from the current per-VLAN STP mode to an MST
>mode=2E
>
>Up to this point, per-VLAN STP states where always isolated from each
>other=2E This is in contrast to the MSTP standard (802=2E1Q-2018, Clause
>13=2E5), where VLANs are grouped into MST instances (MSTIs), and the
>state is managed on a per-MSTI level, rather that at the per-VLAN
>level=2E
>
>Perhaps due to the prevalence of the standard, many switching ASICs
>are built after the same model=2E Therefore, add a corresponding MST
>mode to the bridge, which we can later add offloading support for in a
>straight-forward way=2E
>
>For now, all VLANs are fixed to MSTI 0, also called the Common
>Spanning Tree (CST)=2E That is, all VLANs will follow the port-global
>state=2E
>
>Upcoming changes will make this actually useful by allowing VLANs to
>be mapped to arbitrary MSTIs and allow individual MSTI states to be
>changed=2E
>
>Signed-off-by: Tobias Waldekranz <tobias@waldekranz=2Ecom>
>---
> include/uapi/linux/if_link=2Eh |  1 +
> net/bridge/Makefile          |  2 +-
> net/bridge/br_input=2Ec        | 17 +++++++-
> net/bridge/br_mst=2Ec          | 83 ++++++++++++++++++++++++++++++++++++
> net/bridge/br_netlink=2Ec      | 14 +++++-
> net/bridge/br_private=2Eh      | 26 +++++++++++
> net/bridge/br_stp=2Ec          |  3 ++
> net/bridge/br_vlan=2Ec         | 20 ++++++++-
> net/bridge/br_vlan_options=2Ec |  5 +++
> 9 files changed, 166 insertions(+), 5 deletions(-)
> create mode 100644 net/bridge/br_mst=2Ec
>

Hi,
As I mentioned in another review, I'm currently traveling and will have pc=
 access
end of this week (Sun), I'll try to review the set as much as I can throug=
h my phone in the
meantime=2E Thanks for reworking it, generally looks good=2E
A few comments below,


>diff --git a/include/uapi/linux/if_link=2Eh b/include/uapi/linux/if_link=
=2Eh
>index e315e53125f4=2E=2E7e0a653aafa3 100644
>--- a/include/uapi/linux/if_link=2Eh
>+++ b/include/uapi/linux/if_link=2Eh
>@@ -482,6 +482,7 @@ enum {
> 	IFLA_BR_VLAN_STATS_PER_PORT,
> 	IFLA_BR_MULTI_BOOLOPT,
> 	IFLA_BR_MCAST_QUERIER_STATE,
>+	IFLA_BR_MST_ENABLED,

Please use the boolopt api for new bridge boolean options like this one=2E

> 	__IFLA_BR_MAX,
> };
>=20
>diff --git a/net/bridge/Makefile b/net/bridge/Makefile
>index 7fb9a021873b=2E=2E24bd1c0a9a5a 100644
>--- a/net/bridge/Makefile
>+++ b/net/bridge/Makefile
>@@ -20,7 +20,7 @@ obj-$(CONFIG_BRIDGE_NETFILTER) +=3D br_netfilter=2Eo
>=20
> bridge-$(CONFIG_BRIDGE_IGMP_SNOOPING) +=3D br_multicast=2Eo br_mdb=2Eo b=
r_multicast_eht=2Eo
>=20
>-bridge-$(CONFIG_BRIDGE_VLAN_FILTERING) +=3D br_vlan=2Eo br_vlan_tunnel=
=2Eo br_vlan_options=2Eo
>+bridge-$(CONFIG_BRIDGE_VLAN_FILTERING) +=3D br_vlan=2Eo br_vlan_tunnel=
=2Eo br_vlan_options=2Eo br_mst=2Eo
>=20
> bridge-$(CONFIG_NET_SWITCHDEV) +=3D br_switchdev=2Eo
>=20
>diff --git a/net/bridge/br_input=2Ec b/net/bridge/br_input=2Ec
>index e0c13fcc50ed=2E=2E196417859c4a 100644
>--- a/net/bridge/br_input=2Ec
>+++ b/net/bridge/br_input=2Ec
>@@ -78,13 +78,22 @@ int br_handle_frame_finish(struct net *net, struct so=
ck *sk, struct sk_buff *skb
> 	u16 vid =3D 0;
> 	u8 state;
>=20
>-	if (!p || p->state =3D=3D BR_STATE_DISABLED)
>+	if (!p)
> 		goto drop;
>=20
> 	br =3D p->br;
>+
>+	if (br_mst_is_enabled(br)) {
>+		state =3D BR_STATE_FORWARDING;
>+	} else {
>+		if (p->state =3D=3D BR_STATE_DISABLED)
>+			goto drop;
>+
>+		state =3D p->state;
>+	}
>+
> 	brmctx =3D &p->br->multicast_ctx;
> 	pmctx =3D &p->multicast_ctx;
>-	state =3D p->state;
> 	if (!br_allowed_ingress(p->br, nbp_vlan_group_rcu(p), skb, &vid,
> 				&state, &vlan))
> 		goto out;
>@@ -370,9 +379,13 @@ static rx_handler_result_t br_handle_frame(struct sk=
_buff **pskb)
> 		return RX_HANDLER_PASS;
>=20
> forward:
>+	if (br_mst_is_enabled(p->br))
>+		goto defer_stp_filtering;
>+
> 	switch (p->state) {
> 	case BR_STATE_FORWARDING:
> 	case BR_STATE_LEARNING:
>+defer_stp_filtering:
> 		if (ether_addr_equal(p->br->dev->dev_addr, dest))
> 			skb->pkt_type =3D PACKET_HOST;
>=20
>diff --git a/net/bridge/br_mst=2Ec b/net/bridge/br_mst=2Ec
>new file mode 100644
>index 000000000000=2E=2Ead6e91670fa8
>--- /dev/null
>+++ b/net/bridge/br_mst=2Ec
>@@ -0,0 +1,83 @@
>+// SPDX-License-Identifier: GPL-2=2E0-or-later
>+/*
>+ *	Bridge Multiple Spanning Tree Support
>+ *
>+ *	Authors:
>+ *	Tobias Waldekranz		<tobias@waldekranz=2Ecom>
>+ */
>+
>+#include <linux/kernel=2Eh>
>+
>+#include "br_private=2Eh"
>+
>+DEFINE_STATIC_KEY_FALSE(br_mst_used);
>+
>+void br_mst_vlan_set_state(struct net_bridge_port *p, struct net_bridge_=
vlan *v,
>+			   u8 state)
>+{
>+	struct net_bridge_vlan_group *vg =3D nbp_vlan_group(p);
>+
>+	if (v->state =3D=3D state)
>+		return;
>+
>+	br_vlan_set_state(v, state);
>+
>+	if (v->vid =3D=3D vg->pvid)
>+		br_vlan_set_pvid_state(vg, state);
>+}
>+
>+void br_mst_set_state(struct net_bridge_port *p, u16 msti, u8 state)
>+{
>+	struct net_bridge_vlan_group *vg;
>+	struct net_bridge_vlan *v;
>+
>+	vg =3D nbp_vlan_group(p);
>+	if (!vg)
>+		return;
>+
>+	list_for_each_entry(v, &vg->vlan_list, vlist) {
>+		if (v->brvlan->msti !=3D msti)
>+			continue;
>+
>+		br_mst_vlan_set_state(p, v, state);
>+	}
>+}
>+
>+void br_mst_vlan_init_state(struct net_bridge_vlan *v)
>+{
>+	/* VLANs always start out in MSTI 0 (CST) */
>+	v->msti =3D 0;
>+
>+	if (br_vlan_is_master(v))
>+		v->state =3D BR_STATE_FORWARDING;
>+	else
>+		v->state =3D v->port->state;
>+}
>+
>+int br_mst_set_enabled(struct net_bridge *br, unsigned long val)
>+{
>+	struct net_bridge_vlan_group *vg;
>+	struct net_bridge_port *p;
>+
>+	/* Mode may only be changed when there are no port VLANs=2E */
>+	list_for_each_entry(p, &br->port_list, list) {
>+		vg =3D nbp_vlan_group(p);
>+
>+		if (vg->num_vlans)
>+			return -EBUSY;
>+	}
>+
>+	if (val > 1)
>+		return -EINVAL;
>+
>+	if (!!val =3D=3D br_opt_get(br, BROPT_MST_ENABLED))
>+		return 0;
>+
>+	if (val)
>+		static_branch_enable(&br_mst_used);
>+	else
>+		static_branch_disable(&br_mst_used);
>+
>+	br_opt_toggle(br, BROPT_MST_ENABLED, !!val);
>+	return 0;
>+}
>diff --git a/net/bridge/br_netlink=2Ec b/net/bridge/br_netlink=2Ec
>index 7d4432ca9a20=2E=2Ea17a0fe25a58 100644
>--- a/net/bridge/br_netlink=2Ec
>+++ b/net/bridge/br_netlink=2Ec
>@@ -1163,6 +1163,7 @@ static const struct nla_policy br_policy[IFLA_BR_MA=
X + 1] =3D {
> 	[IFLA_BR_MCAST_IGMP_VERSION] =3D { =2Etype =3D NLA_U8 },
> 	[IFLA_BR_MCAST_MLD_VERSION] =3D { =2Etype =3D NLA_U8 },
> 	[IFLA_BR_VLAN_STATS_PER_PORT] =3D { =2Etype =3D NLA_U8 },
>+	[IFLA_BR_MST_ENABLED] =3D { =2Etype =3D NLA_U8 },
> 	[IFLA_BR_MULTI_BOOLOPT] =3D
> 		NLA_POLICY_EXACT_LEN(sizeof(struct br_boolopt_multi)),
> };
>@@ -1255,6 +1256,14 @@ static int br_changelink(struct net_device *brdev,=
 struct nlattr *tb[],
> 		if (err)
> 			return err;
> 	}
>+
>+	if (data[IFLA_BR_MST_ENABLED]) {
>+		__u8 mst =3D nla_get_u8(data[IFLA_BR_MST_ENABLED]);
>+
>+		err =3D br_mst_set_enabled(br, mst);
>+		if (err)
>+			return err;
>+	}
> #endif
>=20
> 	if (data[IFLA_BR_GROUP_FWD_MASK]) {
>@@ -1475,6 +1484,7 @@ static size_t br_get_size(const struct net_device *=
brdev)
> 	       nla_total_size(sizeof(u16)) +    /* IFLA_BR_VLAN_DEFAULT_PVID */
> 	       nla_total_size(sizeof(u8)) +     /* IFLA_BR_VLAN_STATS_ENABLED *=
/
> 	       nla_total_size(sizeof(u8)) +	/* IFLA_BR_VLAN_STATS_PER_PORT */
>+	       nla_total_size(sizeof(u8)) +	/* IFLA_BR_MST_ENABLED */
> #endif
> 	       nla_total_size(sizeof(u16)) +    /* IFLA_BR_GROUP_FWD_MASK */
> 	       nla_total_size(sizeof(struct ifla_bridge_id)) +   /* IFLA_BR_ROO=
T_ID */
>@@ -1572,7 +1582,9 @@ static int br_fill_info(struct sk_buff *skb, const =
struct net_device *brdev)
> 	    nla_put_u8(skb, IFLA_BR_VLAN_STATS_ENABLED,
> 		       br_opt_get(br, BROPT_VLAN_STATS_ENABLED)) ||
> 	    nla_put_u8(skb, IFLA_BR_VLAN_STATS_PER_PORT,
>-		       br_opt_get(br, BROPT_VLAN_STATS_PER_PORT)))
>+		       br_opt_get(br, BROPT_VLAN_STATS_PER_PORT)) ||
>+	    nla_put_u8(skb, IFLA_BR_MST_ENABLED,
>+		       br_opt_get(br, BROPT_MST_ENABLED)))
> 		return -EMSGSIZE;
> #endif
> #ifdef CONFIG_BRIDGE_IGMP_SNOOPING
>diff --git a/net/bridge/br_private=2Eh b/net/bridge/br_private=2Eh
>index 48bc61ebc211=2E=2Eaf50ad036b06 100644
>--- a/net/bridge/br_private=2Eh
>+++ b/net/bridge/br_private=2Eh
>@@ -178,6 +178,7 @@ enum {
>  * @br_mcast_ctx: if MASTER flag set, this is the global vlan multicast =
context
>  * @port_mcast_ctx: if MASTER flag unset, this is the per-port/vlan mult=
icast
>  *                  context
>+ * @msti: if MASTER flag set, this holds the VLANs MST instance
>  * @vlist: sorted list of VLAN entries
>  * @rcu: used for entry destruction
>  *
>@@ -210,6 +211,8 @@ struct net_bridge_vlan {
> 		struct net_bridge_mcast_port	port_mcast_ctx;
> 	};
>=20
>+	u16				msti;
>+
> 	struct list_head		vlist;
>=20
> 	struct rcu_head			rcu;
>@@ -445,6 +448,7 @@ enum net_bridge_opts {
> 	BROPT_NO_LL_LEARN,
> 	BROPT_VLAN_BRIDGE_BINDING,
> 	BROPT_MCAST_VLAN_SNOOPING_ENABLED,
>+	BROPT_MST_ENABLED,
> };
>=20
> struct net_bridge {
>@@ -1765,6 +1769,28 @@ static inline bool br_vlan_state_allowed(u8 state,=
 bool learn_allow)
> }
> #endif
>=20
>+/* br_mst=2Ec */
>+#ifdef CONFIG_BRIDGE_VLAN_FILTERING
>+DECLARE_STATIC_KEY_FALSE(br_mst_used);
>+static inline bool br_mst_is_enabled(struct net_bridge *br)
>+{
>+	return static_branch_unlikely(&br_mst_used) &&
>+		br_opt_get(br, BROPT_MST_ENABLED);
>+}
>+
>+void br_mst_set_state(struct net_bridge_port *p, u16 msti, u8 state);
>+void br_mst_vlan_init_state(struct net_bridge_vlan *v);
>+int br_mst_set_enabled(struct net_bridge *br, unsigned long val);
>+#else
>+static inline bool br_mst_is_enabled(struct net_bridge *br)
>+{
>+	return false;
>+}
>+
>+static inline void br_mst_set_state(struct net_bridge_port *p,
>+				    u16 msti, u8 state) {}
>+#endif
>+
> struct nf_br_ops {
> 	int (*br_dev_xmit_hook)(struct sk_buff *skb);
> };
>diff --git a/net/bridge/br_stp=2Ec b/net/bridge/br_stp=2Ec
>index 1d80f34a139c=2E=2E82a97a021a57 100644
>--- a/net/bridge/br_stp=2Ec
>+++ b/net/bridge/br_stp=2Ec
>@@ -43,6 +43,9 @@ void br_set_state(struct net_bridge_port *p, unsigned i=
nt state)
> 		return;
>=20
> 	p->state =3D state;
>+	if (br_opt_get(p->br, BROPT_MST_ENABLED))
>+		br_mst_set_state(p, 0, state);
>+
> 	err =3D switchdev_port_attr_set(p->dev, &attr, NULL);
> 	if (err && err !=3D -EOPNOTSUPP)
> 		br_warn(p->br, "error setting offload STP state on port %u(%s)\n",
>diff --git a/net/bridge/br_vlan=2Ec b/net/bridge/br_vlan=2Ec
>index 7557e90b60e1=2E=2E0f5e75ccac79 100644
>--- a/net/bridge/br_vlan=2Ec
>+++ b/net/bridge/br_vlan=2Ec
>@@ -226,6 +226,24 @@ static void nbp_vlan_rcu_free(struct rcu_head *rcu)
> 	kfree(v);
> }
>=20
>+static void br_vlan_init_state(struct net_bridge_vlan *v)
>+{
>+	struct net_bridge *br;
>+
>+	if (br_vlan_is_master(v))
>+		br =3D v->br;
>+	else
>+		br =3D v->port->br;
>+
>+	if (br_opt_get(br, BROPT_MST_ENABLED)) {
>+		br_mst_vlan_init_state(v);
>+		return;
>+	}
>+
>+	v->state =3D BR_STATE_FORWARDING;
>+	v->msti =3D 0;
>+}
>+
> /* This is the shared VLAN add function which works for both ports and b=
ridge
>  * devices=2E There are four possible calls to this function in terms of=
 the
>  * vlan entry type:
>@@ -322,7 +340,7 @@ static int __vlan_add(struct net_bridge_vlan *v, u16 =
flags,
> 	}
>=20
> 	/* set the state before publishing */
>-	v->state =3D BR_STATE_FORWARDING;
>+	br_vlan_init_state(v);
>=20
> 	err =3D rhashtable_lookup_insert_fast(&vg->vlan_hash, &v->vnode,
> 					    br_vlan_rht_params);
>diff --git a/net/bridge/br_vlan_options=2Ec b/net/bridge/br_vlan_options=
=2Ec
>index a6382973b3e7=2E=2E09112b56e79c 100644
>--- a/net/bridge/br_vlan_options=2Ec
>+++ b/net/bridge/br_vlan_options=2Ec
>@@ -99,6 +99,11 @@ static int br_vlan_modify_state(struct net_bridge_vlan=
_group *vg,
> 		return -EBUSY;
> 	}
>=20
>+	if (br_opt_get(br, BROPT_MST_ENABLED)) {
>+		NL_SET_ERR_MSG_MOD(extack, "Can't modify vlan state directly when MST =
is enabled");
>+		return -EBUSY;
>+	}
>+
> 	if (v->state =3D=3D state)
> 		return 0;
>=20

