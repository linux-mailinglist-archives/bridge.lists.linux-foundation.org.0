Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E5E3161F1
	for <lists.bridge@lfdr.de>; Wed, 10 Feb 2021 10:19:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7AE1887272;
	Wed, 10 Feb 2021 09:19:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k38Jqyo9UX9i; Wed, 10 Feb 2021 09:19:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 96B8B8723B;
	Wed, 10 Feb 2021 09:19:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6B905C1E6F;
	Wed, 10 Feb 2021 09:19:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8472BC013A
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 09:19:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 65E4C6F556
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 09:19:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zXTNoD3sSoaA for <bridge@lists.linux-foundation.org>;
 Wed, 10 Feb 2021 09:19:19 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 7FE076F583; Wed, 10 Feb 2021 09:19:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com
 [209.85.218.52])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A9C6A6F508
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 09:19:17 +0000 (UTC)
Received: by mail-ej1-f52.google.com with SMTP id hs11so2850838ejc.1
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 01:19:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jVYV/IEJLn+oDKZarf8v/4qMiyYU4u6o+oEq57AKcMw=;
 b=ECWIlBXbdq+7trHQRUPJ5xapE6rneaAvB2JbCvV/Mto23qC0it1K3RwOsQCMl6KPqa
 JRfDShJqY8TZxftaa+Quxh8xskyOMaiJtF5KtvuHc86uA/2e3GNJnBnyMqxX3DVIftCZ
 1/U8SUlI3InO5vRMA2LdFtdlCMIYGnladOgTtEIXx/5PXipScyGqPApyZ6KMOMBndfT9
 u8PGVyq3wa1+c7jQ9t3+gyCvYVHzQnzoQx8k/kJp61qYoT6Pp/iuY2txRxY+l11uPbxx
 jMzDVRjiCJistBjXVZZfKuiYr5TgWaww/A9j4F0EF5pYd8MKq8zgXpg0NeS84oJ5Y987
 7gWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jVYV/IEJLn+oDKZarf8v/4qMiyYU4u6o+oEq57AKcMw=;
 b=IzaINhmS+5K1xymR0FjDgg7usvtb+rvhcrdmF1lD4K86wkTPmRsTDODPq/vGSKmU5h
 ajckY7r1x39brPX5vffd6Fs4SxwMA9XAnwgv9hRoJ0FuwUzszAXSRC3F0+Vuq5F8sUMG
 Ekg0naumNL4RZhrbAdaAUgTthqhMVSivVvbuelKFAMdISt/XN8SmV/LnmaqjfVjRM3lm
 +Q2rRorLgXSLTD1J4G8gzby78wVpuiY/Ff7aERnQxSVsP9o+QHsxrA8r0YIK5RIn6wKW
 Z6x7C2As51PgX67YrfFge2aan06bLsGFjlNE5sPHJiwmUnQHekKXlnlF+JXF2n7A80Z1
 wSAw==
X-Gm-Message-State: AOAM531lIaM6jJYUTT4124P2qSGMVAgmEL2iedo43SD9vGY40oLNboIz
 nnId1XM5vTHaIGjXp6NZPs7jrP2ffqE=
X-Google-Smtp-Source: ABdhPJyEMH4qbUTroz7TANMA/YCXOwwr6OqI+5GYVWX3jvhqE3nbs56Lmw7A+K952/WTiRoM4YOaqA==
X-Received: by 2002:a17:906:c10a:: with SMTP id
 do10mr1995422ejc.543.1612948755883; 
 Wed, 10 Feb 2021 01:19:15 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id u2sm701801ejb.65.2021.02.10.01.19.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 01:19:15 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Date: Wed, 10 Feb 2021 11:14:36 +0200
Message-Id: <20210210091445.741269-3-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210210091445.741269-1-olteanv@gmail.com>
References: <20210210091445.741269-1-olteanv@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Taras Chornyi <tchornyi@marvell.com>, Ido Schimmel <idosch@idosch.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 linux-omap@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH v3 net-next 02/11] net: bridge: offload all port
	flags at once in br_setport
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

From: Vladimir Oltean <vladimir.oltean@nxp.com>

If for example this command:

ip link set swp0 type bridge_slave flood off mcast_flood off learning off

succeeded at configuring BR_FLOOD and BR_MCAST_FLOOD but not at
BR_LEARNING, there would be no attempt to revert the partial state in
any way. Arguably, if the user changes more than one flag through the
same netlink command, this one _should_ be all or nothing, which means
it should be passed through switchdev as all or nothing.

We also move the br->lock handling inside br_setport in anticipation of
a future patch which will temporarily drop the lock around
br_switchdev_set_port_flag, since we would like that switchdev
notification to be emitted in blocking context.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
Changes in v3:
Don't attempt to drop br->lock around br_switchdev_set_port_flag now,
move that part to a later patch.

Changes in v2:
Patch is new.

Changes in v2:
Patch is new.

 net/bridge/br_netlink.c   | 145 ++++++++++++++------------------------
 net/bridge/br_switchdev.c |   7 +-
 2 files changed, 58 insertions(+), 94 deletions(-)

diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index bd3962da345a..4e64775bd8fb 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -853,103 +853,76 @@ static int br_set_port_state(struct net_bridge_port *p, u8 state)
 }
 
 /* Set/clear or port flags based on attribute */
-static int br_set_port_flag(struct net_bridge_port *p, struct nlattr *tb[],
-			    int attrtype, unsigned long mask)
+static void br_set_port_flag(struct net_bridge_port *p, struct nlattr *tb[],
+			     int attrtype, unsigned long mask)
 {
-	unsigned long flags;
-	int err;
-
 	if (!tb[attrtype])
-		return 0;
+		return;
 
 	if (nla_get_u8(tb[attrtype]))
-		flags = p->flags | mask;
+		p->flags |= mask;
 	else
-		flags = p->flags & ~mask;
-
-	err = br_switchdev_set_port_flag(p, flags, mask);
-	if (err)
-		return err;
-
-	p->flags = flags;
-	return 0;
+		p->flags &= ~mask;
 }
 
 /* Process bridge protocol info on port */
 static int br_setport(struct net_bridge_port *p, struct nlattr *tb[])
 {
-	unsigned long old_flags = p->flags;
-	bool br_vlan_tunnel_old = false;
+	unsigned long old_flags, changed_mask;
+	bool br_vlan_tunnel_old;
 	int err;
 
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_MODE, BR_HAIRPIN_MODE);
-	if (err)
-		return err;
+	spin_lock_bh(&p->br->lock);
 
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_GUARD, BR_BPDU_GUARD);
-	if (err)
-		return err;
+	old_flags = p->flags;
+	br_vlan_tunnel_old = (old_flags & BR_VLAN_TUNNEL) ? true : false;
 
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_FAST_LEAVE, BR_MULTICAST_FAST_LEAVE);
-	if (err)
-		return err;
+	br_set_port_flag(p, tb, IFLA_BRPORT_MODE, BR_HAIRPIN_MODE);
+	br_set_port_flag(p, tb, IFLA_BRPORT_GUARD, BR_BPDU_GUARD);
+	br_set_port_flag(p, tb, IFLA_BRPORT_FAST_LEAVE,
+			 BR_MULTICAST_FAST_LEAVE);
+	br_set_port_flag(p, tb, IFLA_BRPORT_PROTECT, BR_ROOT_BLOCK);
+	br_set_port_flag(p, tb, IFLA_BRPORT_LEARNING, BR_LEARNING);
+	br_set_port_flag(p, tb, IFLA_BRPORT_UNICAST_FLOOD, BR_FLOOD);
+	br_set_port_flag(p, tb, IFLA_BRPORT_MCAST_FLOOD, BR_MCAST_FLOOD);
+	br_set_port_flag(p, tb, IFLA_BRPORT_MCAST_TO_UCAST,
+			 BR_MULTICAST_TO_UNICAST);
+	br_set_port_flag(p, tb, IFLA_BRPORT_BCAST_FLOOD, BR_BCAST_FLOOD);
+	br_set_port_flag(p, tb, IFLA_BRPORT_PROXYARP, BR_PROXYARP);
+	br_set_port_flag(p, tb, IFLA_BRPORT_PROXYARP_WIFI, BR_PROXYARP_WIFI);
+	br_set_port_flag(p, tb, IFLA_BRPORT_VLAN_TUNNEL, BR_VLAN_TUNNEL);
+	br_set_port_flag(p, tb, IFLA_BRPORT_NEIGH_SUPPRESS, BR_NEIGH_SUPPRESS);
+	br_set_port_flag(p, tb, IFLA_BRPORT_ISOLATED, BR_ISOLATED);
 
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_PROTECT, BR_ROOT_BLOCK);
-	if (err)
-		return err;
+	changed_mask = old_flags ^ p->flags;
 
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_LEARNING, BR_LEARNING);
-	if (err)
-		return err;
-
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_UNICAST_FLOOD, BR_FLOOD);
-	if (err)
-		return err;
-
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_MCAST_FLOOD, BR_MCAST_FLOOD);
-	if (err)
-		return err;
-
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_MCAST_TO_UCAST, BR_MULTICAST_TO_UNICAST);
-	if (err)
-		return err;
-
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_BCAST_FLOOD, BR_BCAST_FLOOD);
-	if (err)
-		return err;
-
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_PROXYARP, BR_PROXYARP);
-	if (err)
-		return err;
-
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_PROXYARP_WIFI, BR_PROXYARP_WIFI);
-	if (err)
-		return err;
-
-	br_vlan_tunnel_old = (p->flags & BR_VLAN_TUNNEL) ? true : false;
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_VLAN_TUNNEL, BR_VLAN_TUNNEL);
-	if (err)
-		return err;
+	err = br_switchdev_set_port_flag(p, p->flags, changed_mask);
+	if (err) {
+		p->flags = old_flags;
+		goto out;
+	}
 
 	if (br_vlan_tunnel_old && !(p->flags & BR_VLAN_TUNNEL))
 		nbp_vlan_tunnel_info_flush(p);
 
+	br_port_flags_change(p, changed_mask);
+
 	if (tb[IFLA_BRPORT_COST]) {
 		err = br_stp_set_path_cost(p, nla_get_u32(tb[IFLA_BRPORT_COST]));
 		if (err)
-			return err;
+			goto out;
 	}
 
 	if (tb[IFLA_BRPORT_PRIORITY]) {
 		err = br_stp_set_port_priority(p, nla_get_u16(tb[IFLA_BRPORT_PRIORITY]));
 		if (err)
-			return err;
+			goto out;
 	}
 
 	if (tb[IFLA_BRPORT_STATE]) {
 		err = br_set_port_state(p, nla_get_u8(tb[IFLA_BRPORT_STATE]));
 		if (err)
-			return err;
+			goto out;
 	}
 
 	if (tb[IFLA_BRPORT_FLUSH])
@@ -961,7 +934,7 @@ static int br_setport(struct net_bridge_port *p, struct nlattr *tb[])
 
 		err = br_multicast_set_port_router(p, mcast_router);
 		if (err)
-			return err;
+			goto out;
 	}
 
 	if (tb[IFLA_BRPORT_MCAST_EHT_HOSTS_LIMIT]) {
@@ -970,27 +943,20 @@ static int br_setport(struct net_bridge_port *p, struct nlattr *tb[])
 		hlimit = nla_get_u32(tb[IFLA_BRPORT_MCAST_EHT_HOSTS_LIMIT]);
 		err = br_multicast_eht_set_hosts_limit(p, hlimit);
 		if (err)
-			return err;
+			goto out;
 	}
 #endif
 
 	if (tb[IFLA_BRPORT_GROUP_FWD_MASK]) {
 		u16 fwd_mask = nla_get_u16(tb[IFLA_BRPORT_GROUP_FWD_MASK]);
 
-		if (fwd_mask & BR_GROUPFWD_MACPAUSE)
-			return -EINVAL;
+		if (fwd_mask & BR_GROUPFWD_MACPAUSE) {
+			err = -EINVAL;
+			goto out;
+		}
 		p->group_fwd_mask = fwd_mask;
 	}
 
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_NEIGH_SUPPRESS,
-			       BR_NEIGH_SUPPRESS);
-	if (err)
-		return err;
-
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_ISOLATED, BR_ISOLATED);
-	if (err)
-		return err;
-
 	if (tb[IFLA_BRPORT_BACKUP_PORT]) {
 		struct net_device *backup_dev = NULL;
 		u32 backup_ifindex;
@@ -999,17 +965,21 @@ static int br_setport(struct net_bridge_port *p, struct nlattr *tb[])
 		if (backup_ifindex) {
 			backup_dev = __dev_get_by_index(dev_net(p->dev),
 							backup_ifindex);
-			if (!backup_dev)
-				return -ENOENT;
+			if (!backup_dev) {
+				err = -ENOENT;
+				goto out;
+			}
 		}
 
 		err = nbp_backup_change(p, backup_dev);
 		if (err)
-			return err;
+			goto out;
 	}
 
-	br_port_flags_change(p, old_flags ^ p->flags);
-	return 0;
+out:
+	spin_unlock_bh(&p->br->lock);
+
+	return err;
 }
 
 /* Change state and parameters on port. */
@@ -1045,9 +1015,7 @@ int br_setlink(struct net_device *dev, struct nlmsghdr *nlh, u16 flags,
 			if (err)
 				return err;
 
-			spin_lock_bh(&p->br->lock);
 			err = br_setport(p, tb);
-			spin_unlock_bh(&p->br->lock);
 		} else {
 			/* Binary compatibility with old RSTP */
 			if (nla_len(protinfo) < sizeof(u8))
@@ -1134,17 +1102,10 @@ static int br_port_slave_changelink(struct net_device *brdev,
 				    struct nlattr *data[],
 				    struct netlink_ext_ack *extack)
 {
-	struct net_bridge *br = netdev_priv(brdev);
-	int ret;
-
 	if (!data)
 		return 0;
 
-	spin_lock_bh(&br->lock);
-	ret = br_setport(br_port_get_rtnl(dev), data);
-	spin_unlock_bh(&br->lock);
-
-	return ret;
+	return br_setport(br_port_get_rtnl(dev), data);
 }
 
 static int br_port_fill_slave_info(struct sk_buff *skb,
diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
index a9c23ef83443..c004ade25ac0 100644
--- a/net/bridge/br_switchdev.c
+++ b/net/bridge/br_switchdev.c
@@ -65,16 +65,19 @@ int br_switchdev_set_port_flag(struct net_bridge_port *p,
 	struct switchdev_attr attr = {
 		.orig_dev = p->dev,
 		.id = SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS,
-		.u.brport_flags = mask,
 	};
 	struct switchdev_notifier_port_attr_info info = {
 		.attr = &attr,
 	};
 	int err;
 
-	if (mask & ~BR_PORT_FLAGS_HW_OFFLOAD)
+	flags &= BR_PORT_FLAGS_HW_OFFLOAD;
+	mask &= BR_PORT_FLAGS_HW_OFFLOAD;
+	if (!mask)
 		return 0;
 
+	attr.u.brport_flags = mask;
+
 	/* We run from atomic context here */
 	err = call_switchdev_notifiers(SWITCHDEV_PORT_ATTR_SET, p->dev,
 				       &info.info, NULL);
-- 
2.25.1

