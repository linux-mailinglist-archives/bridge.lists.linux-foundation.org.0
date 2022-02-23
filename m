Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE434C100A
	for <lists.bridge@lfdr.de>; Wed, 23 Feb 2022 11:17:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65C8E813FF;
	Wed, 23 Feb 2022 10:17:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9HNaO67ywyH0; Wed, 23 Feb 2022 10:17:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id D469A823CB;
	Wed, 23 Feb 2022 10:17:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 96EADC0073;
	Wed, 23 Feb 2022 10:17:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 37BC8C0011
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 10:17:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 187294154F
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 10:17:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R-xtIkkEyQ5i for <bridge@lists.linux-foundation.org>;
 Wed, 23 Feb 2022 10:17:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com
 [IPv6:2a00:1450:4864:20::235])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2F5BC410E1
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 10:17:23 +0000 (UTC)
Received: by mail-lj1-x235.google.com with SMTP id e2so20437453ljq.12
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 02:17:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=3BXfPtwYes87TF7Ndtlw8cxUkNRZ8ysar0tPJqhRxXE=;
 b=Et9LITAxtAcu76rdqVaiOxpLSAGZMSvOMVA0TNCJjHvADSp14bVxd/2emk0At4gQcN
 ODO4Ic15I0/BUNvL+WFL9ADBYWlFQSJs6YRJNVM8JIdepE8fsPAkJiiT+R4C2OrND3gv
 FZZeI9JqHrGPg/bKY+HcEYw82ggfoFk1JKgb9MiursS6A2fSbCDxQ7fxG6z58jDaD3pD
 6mvHlekzQ7DMapUr6j0k4c07To/1BcZstIDdxSB2zQeCczSaFEDeARDh2Z8f80LTx0dV
 A1++rDMlhvRiEBLzliULNevqCnHCZO6+ZsscPY4QO2tSlUSd1ESfD37J+EyeiG7rC62Z
 kXng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=3BXfPtwYes87TF7Ndtlw8cxUkNRZ8ysar0tPJqhRxXE=;
 b=U6MzOsjo+hceuPEI2tJ9C96AMHQaI/tSYjKzvVk7ZNDzaSMSc+8P9VXgS6Vj1XIzju
 WYiPIJhJfakpWUDRbUUahRRjjXdcqApNRkg1ICxGp7JdOTmBxKXsnORR+m924TliRlEW
 DP1Ky/rOpUe6Nbut/fEZ5/WK5FJ2kdMZ/BcM2+jLVut7aXg3TDJFmB8B/sGqNbRvNnxV
 Rw90ZwHpg3HTKhMV6l5R4HnGB8HSNB616nL8TtLMUXBde2UaQU3DOGJMG0R2dTtQ5MtS
 pnOVBi4OLBlSw3MKgXvSQPUNNaNawuctRgXxWTKpdW/NWGgVMtOgtUjrfQp5/NmnSzo3
 Vz5g==
X-Gm-Message-State: AOAM532P7Y1FrNBuVmAKkiYFkyv8sY9xdtgW6VHOEWOYT6Wvhm+4QR3L
 rgj8SER+HU6i50Ucl9vHEGk=
X-Google-Smtp-Source: ABdhPJx19j/kIbtFUpu5ussFxc8tAWH9iAAtHJ/tgiYpkCWf+/+84Qm/0Xkk6whywMf4XUH8TE5ihw==
X-Received: by 2002:a2e:b0c9:0:b0:246:3636:86a0 with SMTP id
 g9-20020a2eb0c9000000b00246363686a0mr12908083ljl.129.1645611441086; 
 Wed, 23 Feb 2022 02:17:21 -0800 (PST)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id d5sm1613102lfs.307.2022.02.23.02.17.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Feb 2022 02:17:20 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Wed, 23 Feb 2022 11:16:46 +0100
Message-Id: <20220223101650.1212814-2-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220223101650.1212814-1-schultz.hans+netdev@gmail.com>
References: <20220223101650.1212814-1-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Petr Machata <petrm@nvidia.com>, Andrew Lunn <andrew@lunn.ch>,
 Baowen Zheng <baowen.zheng@corigine.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Amit Cohen <amcohen@nvidia.com>,
 bridge@lists.linux-foundation.org, netdev@vger.kernel.org,
 David Ahern <dsahern@kernel.org>, Roopa Prabhu <roopa@nvidia.com>,
 linux-kernel@vger.kernel.org, Stephen Suryaputra <ssuryaextr@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>,
 Po-Hsu Lin <po-hsu.lin@canonical.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, linux-kselftest@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH net-next v5 1/5] net: bridge: Add support for
	bridge port in locked mode
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

In a 802.1X scenario, clients connected to a bridge port shall not
be allowed to have traffic forwarded until fully authenticated.
A static fdb entry of the clients MAC address for the bridge port
unlocks the client and allows bidirectional communication.

This scenario is facilitated with setting the bridge port in locked
mode, which is also supported by various switchcore chipsets.

Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
Reviewed-by: Ido Schimmel <idosch@nvidia.com>
---
 include/linux/if_bridge.h    |  1 +
 include/uapi/linux/if_link.h |  1 +
 net/bridge/br_input.c        | 11 ++++++++++-
 net/bridge/br_netlink.c      |  6 +++++-
 4 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
index 509e18c7e740..3aae023a9353 100644
--- a/include/linux/if_bridge.h
+++ b/include/linux/if_bridge.h
@@ -58,6 +58,7 @@ struct br_ip_list {
 #define BR_MRP_LOST_CONT	BIT(18)
 #define BR_MRP_LOST_IN_CONT	BIT(19)
 #define BR_TX_FWD_OFFLOAD	BIT(20)
+#define BR_PORT_LOCKED		BIT(21)
 
 #define BR_DEFAULT_AGEING_TIME	(300 * HZ)
 
diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
index 6218f93f5c1a..a45cc0a1f415 100644
--- a/include/uapi/linux/if_link.h
+++ b/include/uapi/linux/if_link.h
@@ -537,6 +537,7 @@ enum {
 	IFLA_BRPORT_MRP_IN_OPEN,
 	IFLA_BRPORT_MCAST_EHT_HOSTS_LIMIT,
 	IFLA_BRPORT_MCAST_EHT_HOSTS_CNT,
+	IFLA_BRPORT_LOCKED,
 	__IFLA_BRPORT_MAX
 };
 #define IFLA_BRPORT_MAX (__IFLA_BRPORT_MAX - 1)
diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index b50382f957c1..e0c13fcc50ed 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -81,6 +81,7 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 	if (!p || p->state == BR_STATE_DISABLED)
 		goto drop;
 
+	br = p->br;
 	brmctx = &p->br->multicast_ctx;
 	pmctx = &p->multicast_ctx;
 	state = p->state;
@@ -88,10 +89,18 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 				&state, &vlan))
 		goto out;
 
+	if (p->flags & BR_PORT_LOCKED) {
+		struct net_bridge_fdb_entry *fdb_src =
+			br_fdb_find_rcu(br, eth_hdr(skb)->h_source, vid);
+
+		if (!fdb_src || READ_ONCE(fdb_src->dst) != p ||
+		    test_bit(BR_FDB_LOCAL, &fdb_src->flags))
+			goto drop;
+	}
+
 	nbp_switchdev_frame_mark(p, skb);
 
 	/* insert into forwarding database after filtering to avoid spoofing */
-	br = p->br;
 	if (p->flags & BR_LEARNING)
 		br_fdb_update(br, p, eth_hdr(skb)->h_source, vid, 0);
 
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 2ff83d84230d..7d4432ca9a20 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -184,6 +184,7 @@ static inline size_t br_port_info_size(void)
 		+ nla_total_size(1)	/* IFLA_BRPORT_VLAN_TUNNEL */
 		+ nla_total_size(1)	/* IFLA_BRPORT_NEIGH_SUPPRESS */
 		+ nla_total_size(1)	/* IFLA_BRPORT_ISOLATED */
+		+ nla_total_size(1)	/* IFLA_BRPORT_LOCKED */
 		+ nla_total_size(sizeof(struct ifla_bridge_id))	/* IFLA_BRPORT_ROOT_ID */
 		+ nla_total_size(sizeof(struct ifla_bridge_id))	/* IFLA_BRPORT_BRIDGE_ID */
 		+ nla_total_size(sizeof(u16))	/* IFLA_BRPORT_DESIGNATED_PORT */
@@ -269,7 +270,8 @@ static int br_port_fill_attrs(struct sk_buff *skb,
 							  BR_MRP_LOST_CONT)) ||
 	    nla_put_u8(skb, IFLA_BRPORT_MRP_IN_OPEN,
 		       !!(p->flags & BR_MRP_LOST_IN_CONT)) ||
-	    nla_put_u8(skb, IFLA_BRPORT_ISOLATED, !!(p->flags & BR_ISOLATED)))
+	    nla_put_u8(skb, IFLA_BRPORT_ISOLATED, !!(p->flags & BR_ISOLATED)) ||
+	    nla_put_u8(skb, IFLA_BRPORT_LOCKED, !!(p->flags & BR_PORT_LOCKED)))
 		return -EMSGSIZE;
 
 	timerval = br_timer_value(&p->message_age_timer);
@@ -827,6 +829,7 @@ static const struct nla_policy br_port_policy[IFLA_BRPORT_MAX + 1] = {
 	[IFLA_BRPORT_GROUP_FWD_MASK] = { .type = NLA_U16 },
 	[IFLA_BRPORT_NEIGH_SUPPRESS] = { .type = NLA_U8 },
 	[IFLA_BRPORT_ISOLATED]	= { .type = NLA_U8 },
+	[IFLA_BRPORT_LOCKED] = { .type = NLA_U8 },
 	[IFLA_BRPORT_BACKUP_PORT] = { .type = NLA_U32 },
 	[IFLA_BRPORT_MCAST_EHT_HOSTS_LIMIT] = { .type = NLA_U32 },
 };
@@ -893,6 +896,7 @@ static int br_setport(struct net_bridge_port *p, struct nlattr *tb[],
 	br_set_port_flag(p, tb, IFLA_BRPORT_VLAN_TUNNEL, BR_VLAN_TUNNEL);
 	br_set_port_flag(p, tb, IFLA_BRPORT_NEIGH_SUPPRESS, BR_NEIGH_SUPPRESS);
 	br_set_port_flag(p, tb, IFLA_BRPORT_ISOLATED, BR_ISOLATED);
+	br_set_port_flag(p, tb, IFLA_BRPORT_LOCKED, BR_PORT_LOCKED);
 
 	changed_mask = old_flags ^ p->flags;
 
-- 
2.30.2

