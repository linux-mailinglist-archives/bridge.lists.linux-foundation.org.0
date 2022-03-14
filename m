Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7222E4D7F10
	for <lists.bridge@lfdr.de>; Mon, 14 Mar 2022 10:53:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 579FC405F4;
	Mon, 14 Mar 2022 09:53:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7KtE9xYLSd0I; Mon, 14 Mar 2022 09:53:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 76187405FB;
	Mon, 14 Mar 2022 09:53:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 93B66C0087;
	Mon, 14 Mar 2022 09:53:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ADDA9C000B
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:53:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9DDE440270
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:53:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u3oGQRVxYUUd for <bridge@lists.linux-foundation.org>;
 Mon, 14 Mar 2022 09:52:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com
 [IPv6:2a00:1450:4864:20::232])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A1E1E4016E
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:52:59 +0000 (UTC)
Received: by mail-lj1-x232.google.com with SMTP id c15so4377052ljr.9
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 02:52:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=zPCjEPNM43E5A1SgRuIq+fVuzqtfX/i63TI5Eoft5zg=;
 b=pi7XAVi79YQyr13XzIYhZXv7ZQnly88qlB/aWbiR6oJ1zJxQ2NdpSWErK2/x1VsqEa
 /hlxkP3+l/uYVR1y6GqncA3WEF8ltIV8V1z8w6qDCfaBCapxT/JKYxKlr1FGlQ/uqPvU
 exi+zG/A2GlCDB6Ozkk3pAJWYMigYHGfjWGVdcb7aaRlFhGXSzRhUdUjaGHqGQqR1oXq
 ET2L0opBU1cOwvA5xPHCfqi8JcKdDs3vBB3DiopXJVLwAVW7ooMJrmSLV5NTS9O0CYpY
 JwBEzpRPsNaFnOhIzOzzmVndVXJsSsqdY5OWpx2ws9p/mFmmTPW7FvdFRI09YzUoAtYY
 wbyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=zPCjEPNM43E5A1SgRuIq+fVuzqtfX/i63TI5Eoft5zg=;
 b=CQ0RwIXX3SLa84UXiJqk1WD6gwKooFV44iNYzo5U7X7NbHAAlxBHqz5TXmiYBRB8w0
 jHeiCN7mhSDxjjWc+lRC3FAqNFPqKpWjUpPSUfk8/5v14GEmGQUzhaLAS9wU7L3YRSzo
 9FtI5MJv2xuzLWiOVN10R7KM1MAidwDZiMYv8dSuFI1iI3oED9RXRud+g3Fn/Sp0+LKK
 OGkUQv0tGj9cHjehgSgsgbPa85F58Yvr4NdWn4TWy3LYtm9d9USuOLBE98oe82i1uQhZ
 3VLlxs4erdKBu1iIKX4Jc3Xl3L7cdxIP+S8+N2mwS0QVzgDNPk+4kMh/qT8/UiHLNlrt
 pCYw==
X-Gm-Message-State: AOAM533xN+DL8tJxGdWtGzbJRWvToz8K7OxXcE7Sb1bNhoGQXcgtcRc7
 O4UOgqvGGsyn95FXLUszDHcpQA==
X-Google-Smtp-Source: ABdhPJySKNNu6SKq084+j8M7RrpraCM087KYEOhFWhILNO7B0kSpSGZR+BXcrKvt7bqKGCRZdfbybQ==
X-Received: by 2002:a2e:6804:0:b0:244:b354:1c99 with SMTP id
 c4-20020a2e6804000000b00244b3541c99mr13681974lja.79.1647251577343; 
 Mon, 14 Mar 2022 02:52:57 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 b3-20020a056512304300b004488e49f2fasm984870lfb.129.2022.03.14.02.52.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 02:52:56 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Mon, 14 Mar 2022 10:52:19 +0100
Message-Id: <20220314095231.3486931-3-tobias@waldekranz.com>
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
Subject: [Bridge] [PATCH v3 net-next 02/14] net: bridge: mst: Allow changing
	a VLAN's MSTI
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

Allow a VLAN to move out of the CST (MSTI 0), to an independent tree.

The user manages the VID to MSTI mappings via a global VLAN
setting. The proposed iproute2 interface would be:

    bridge vlan global set dev br0 vid <VID> msti <MSTI>

Changing the state in non-zero MSTIs is still not supported, but will
be addressed in upcoming changes.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 include/uapi/linux/if_bridge.h |  1 +
 net/bridge/br_mst.c            | 42 ++++++++++++++++++++++++++++++++++
 net/bridge/br_private.h        |  1 +
 net/bridge/br_vlan_options.c   | 15 ++++++++++++
 4 files changed, 59 insertions(+)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 30a242195ced..f60244b747ae 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -564,6 +564,7 @@ enum {
 	BRIDGE_VLANDB_GOPTS_MCAST_QUERIER,
 	BRIDGE_VLANDB_GOPTS_MCAST_ROUTER_PORTS,
 	BRIDGE_VLANDB_GOPTS_MCAST_QUERIER_STATE,
+	BRIDGE_VLANDB_GOPTS_MSTI,
 	__BRIDGE_VLANDB_GOPTS_MAX
 };
 #define BRIDGE_VLANDB_GOPTS_MAX (__BRIDGE_VLANDB_GOPTS_MAX - 1)
diff --git a/net/bridge/br_mst.c b/net/bridge/br_mst.c
index e1ec9d39c660..78ef5fea4d2b 100644
--- a/net/bridge/br_mst.c
+++ b/net/bridge/br_mst.c
@@ -43,6 +43,48 @@ void br_mst_set_state(struct net_bridge_port *p, u16 msti, u8 state)
 	}
 }
 
+static void br_mst_vlan_sync_state(struct net_bridge_vlan *pv, u16 msti)
+{
+	struct net_bridge_vlan_group *vg = nbp_vlan_group(pv->port);
+	struct net_bridge_vlan *v;
+
+	list_for_each_entry(v, &vg->vlan_list, vlist) {
+		/* If this port already has a defined state in this
+		 * MSTI (through some other VLAN membership), inherit
+		 * it.
+		 */
+		if (v != pv && v->brvlan->msti == msti) {
+			br_mst_vlan_set_state(pv->port, pv, v->state);
+			return;
+		}
+	}
+
+	/* Otherwise, start out in a new MSTI with all ports disabled. */
+	return br_mst_vlan_set_state(pv->port, pv, BR_STATE_DISABLED);
+}
+
+int br_mst_vlan_set_msti(struct net_bridge_vlan *mv, u16 msti)
+{
+	struct net_bridge_vlan_group *vg;
+	struct net_bridge_vlan *pv;
+	struct net_bridge_port *p;
+
+	if (mv->msti == msti)
+		return 0;
+
+	mv->msti = msti;
+
+	list_for_each_entry(p, &mv->br->port_list, list) {
+		vg = nbp_vlan_group(p);
+
+		pv = br_vlan_find(vg, mv->vid);
+		if (pv)
+			br_mst_vlan_sync_state(pv, msti);
+	}
+
+	return 0;
+}
+
 void br_mst_vlan_init_state(struct net_bridge_vlan *v)
 {
 	/* VLANs always start out in MSTI 0 (CST) */
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 35b47f6b449a..b907d389b63a 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1779,6 +1779,7 @@ static inline bool br_mst_is_enabled(struct net_bridge *br)
 }
 
 void br_mst_set_state(struct net_bridge_port *p, u16 msti, u8 state);
+int br_mst_vlan_set_msti(struct net_bridge_vlan *v, u16 msti);
 void br_mst_vlan_init_state(struct net_bridge_vlan *v);
 int br_mst_set_enabled(struct net_bridge *br, bool on,
 		       struct netlink_ext_ack *extack);
diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
index 09112b56e79c..a2724d03278c 100644
--- a/net/bridge/br_vlan_options.c
+++ b/net/bridge/br_vlan_options.c
@@ -296,6 +296,7 @@ bool br_vlan_global_opts_can_enter_range(const struct net_bridge_vlan *v_curr,
 					 const struct net_bridge_vlan *r_end)
 {
 	return v_curr->vid - r_end->vid == 1 &&
+		v_curr->msti == r_end->msti &&
 	       ((v_curr->priv_flags ^ r_end->priv_flags) &
 		BR_VLFLAG_GLOBAL_MCAST_ENABLED) == 0 &&
 		br_multicast_ctx_options_equal(&v_curr->br_mcast_ctx,
@@ -384,6 +385,9 @@ bool br_vlan_global_opts_fill(struct sk_buff *skb, u16 vid, u16 vid_range,
 #endif
 #endif
 
+	if (nla_put_u16(skb, BRIDGE_VLANDB_GOPTS_MSTI, v_opts->msti))
+		goto out_err;
+
 	nla_nest_end(skb, nest);
 
 	return true;
@@ -415,6 +419,7 @@ static size_t rtnl_vlan_global_opts_nlmsg_size(const struct net_bridge_vlan *v)
 		+ nla_total_size(0) /* BRIDGE_VLANDB_GOPTS_MCAST_ROUTER_PORTS */
 		+ br_rports_size(&v->br_mcast_ctx) /* BRIDGE_VLANDB_GOPTS_MCAST_ROUTER_PORTS */
 #endif
+		+ nla_total_size(sizeof(u16)) /* BRIDGE_VLANDB_GOPTS_MSTI */
 		+ nla_total_size(sizeof(u16)); /* BRIDGE_VLANDB_GOPTS_RANGE */
 }
 
@@ -564,6 +569,15 @@ static int br_vlan_process_global_one_opts(const struct net_bridge *br,
 	}
 #endif
 #endif
+	if (tb[BRIDGE_VLANDB_GOPTS_MSTI]) {
+		u16 msti;
+
+		msti = nla_get_u16(tb[BRIDGE_VLANDB_GOPTS_MSTI]);
+		err = br_mst_vlan_set_msti(v, msti);
+		if (err)
+			return err;
+		*changed = true;
+	}
 
 	return 0;
 }
@@ -583,6 +597,7 @@ static const struct nla_policy br_vlan_db_gpol[BRIDGE_VLANDB_GOPTS_MAX + 1] = {
 	[BRIDGE_VLANDB_GOPTS_MCAST_QUERIER_INTVL]	= { .type = NLA_U64 },
 	[BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_INTVL]	= { .type = NLA_U64 },
 	[BRIDGE_VLANDB_GOPTS_MCAST_QUERY_RESPONSE_INTVL] = { .type = NLA_U64 },
+	[BRIDGE_VLANDB_GOPTS_MSTI] = NLA_POLICY_MAX(NLA_U16, VLAN_N_VID - 1),
 };
 
 int br_vlan_rtm_process_global_options(struct net_device *dev,
-- 
2.25.1

