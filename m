Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A613B4B3AC0
	for <lists.bridge@lfdr.de>; Sun, 13 Feb 2022 11:14:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1FEBB4033A;
	Sun, 13 Feb 2022 10:14:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jxGMC1LadnjR; Sun, 13 Feb 2022 10:14:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 7E70940339;
	Sun, 13 Feb 2022 10:14:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 479D0C0039;
	Sun, 13 Feb 2022 10:14:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7037BC000B
 for <bridge@lists.linux-foundation.org>; Mon,  7 Feb 2022 10:08:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5008960B2C
 for <bridge@lists.linux-foundation.org>; Mon,  7 Feb 2022 10:08:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9EJsEIToUen7 for <bridge@lists.linux-foundation.org>;
 Mon,  7 Feb 2022 10:08:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com
 [IPv6:2a00:1450:4864:20::141])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5F6D5605A7
 for <bridge@lists.linux-foundation.org>; Mon,  7 Feb 2022 10:08:00 +0000 (UTC)
Received: by mail-lf1-x141.google.com with SMTP id o2so337959lfd.1
 for <bridge@lists.linux-foundation.org>; Mon, 07 Feb 2022 02:08:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=s++xxEelxsZ96vWiXAkrcjA/Kre1u9zvFXmIkOf3sGQ=;
 b=bvitSBRqSqrBVCm+TVFEghF7x4ikexf4Ns5xU9Gbh0VQG50YQKQOg48QXV7qkETVkT
 QaHK2foMEINydByK092MWAMBhApnT7CMu0uqqYt+OzS0rIWt4RgQaf1V6oc9M+9QJ2g3
 S7J04milc5GDbjJ6BLvctmUxlZeHYRliTcTw6Iy8gNej9LDf6BFWsf+JfXouW16faWxV
 q8n2ZTqaBJp79Y3U9URNOG/IEMtgQ5B4umxOxph2Q+9y+H5bnhKzI7DOB7RmqbMMVv6e
 wbCZnGvOGFrzRqwqe/x2Xjrpyz3VtW8bPRoL2QVKWqbXOMWz+nczDKAI3VkPNkK/ZLBL
 XT1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=s++xxEelxsZ96vWiXAkrcjA/Kre1u9zvFXmIkOf3sGQ=;
 b=LjrIyRufRcTZkvvjKGgUQm+6EWS/ok9H4yybuL4ek2nn4XxiYqZUQd+aOqA0+Vs6y9
 KF5/Dc9RZdfn/6aFhAHl6E+Ec7kPa7x7EPN6XQIsFzcaOWjOfii77fdYXLSa5WbmZuau
 5zIGMR5oRZ05vPL2PixKOl5dXe5bDOWcpw8skLLetd/WYTrAr+KJCT5QRocfZYzxIB0v
 SlaTh/hRr8kL68xI/JjKLxTl4Ai2geVYk5/Glgngisa7s4shWCFyMKRUxlnMN8CbaelI
 p2K4Y7CQFeeCFCmdGPLbSpJRipwzbIVxarYRJmaatH8DFyIJHF+/adDDNSrqtaLawHMW
 9Cjw==
X-Gm-Message-State: AOAM532Fl3RykuSPvTZjMbdN2iGleYTQm+nEO9qPssLKEvIX0MQi6Nuu
 dA9mO/SnWP909tXIfrvQdlI=
X-Google-Smtp-Source: ABdhPJxmhYxGprg6OKShlXm3OBpPBq+UjCiF0rTveHomETUwxt2lHsg1nCHxThAzJO6YYpyHf0ItLQ==
X-Received: by 2002:a05:6512:10c4:: with SMTP id
 k4mr7936429lfg.63.1644228478238; 
 Mon, 07 Feb 2022 02:07:58 -0800 (PST)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id k12sm1546034ljh.45.2022.02.07.02.07.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Feb 2022 02:07:57 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Mon,  7 Feb 2022 11:07:39 +0100
Message-Id: <20220207100742.15087-2-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220207100742.15087-1-schultz.hans+netdev@gmail.com>
References: <20220207100742.15087-1-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Sun, 13 Feb 2022 10:14:02 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Hans Schultz <schultz.hans+netdev@gmail.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>
Subject: [Bridge] [PATCH net-next 1/4] net: bridge: Add support for bridge
	port in locked mode
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
---
 include/linux/if_bridge.h    |  1 +
 include/uapi/linux/if_link.h |  1 +
 net/bridge/br_input.c        | 10 +++++++++-
 net/bridge/br_netlink.c      |  6 +++++-
 4 files changed, 16 insertions(+), 2 deletions(-)

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
index 6218f93f5c1a..8fa2648fbc83 100644
--- a/include/uapi/linux/if_link.h
+++ b/include/uapi/linux/if_link.h
@@ -532,6 +532,7 @@ enum {
 	IFLA_BRPORT_GROUP_FWD_MASK,
 	IFLA_BRPORT_NEIGH_SUPPRESS,
 	IFLA_BRPORT_ISOLATED,
+	IFLA_BRPORT_LOCKED,
 	IFLA_BRPORT_BACKUP_PORT,
 	IFLA_BRPORT_MRP_RING_OPEN,
 	IFLA_BRPORT_MRP_IN_OPEN,
diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index b50382f957c1..469e3adbce07 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -69,6 +69,7 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 	struct net_bridge_port *p = br_port_get_rcu(skb->dev);
 	enum br_pkt_type pkt_type = BR_PKT_UNICAST;
 	struct net_bridge_fdb_entry *dst = NULL;
+	struct net_bridge_fdb_entry *fdb_entry;
 	struct net_bridge_mcast_port *pmctx;
 	struct net_bridge_mdb_entry *mdst;
 	bool local_rcv, mcast_hit = false;
@@ -81,6 +82,8 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 	if (!p || p->state == BR_STATE_DISABLED)
 		goto drop;
 
+	br = p->br;
+
 	brmctx = &p->br->multicast_ctx;
 	pmctx = &p->multicast_ctx;
 	state = p->state;
@@ -88,10 +91,15 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 				&state, &vlan))
 		goto out;
 
+	if (p->flags & BR_PORT_LOCKED) {
+		fdb_entry = br_fdb_find_rcu(br, eth_hdr(skb)->h_source, vid);
+		if (!(fdb_entry && fdb_entry->dst == p))
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

