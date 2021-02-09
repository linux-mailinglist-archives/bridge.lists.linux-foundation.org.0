Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB4D315287
	for <lists.bridge@lfdr.de>; Tue,  9 Feb 2021 16:19:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 58E3B85F5E;
	Tue,  9 Feb 2021 15:19:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r9hgTnZ0Z-Rf; Tue,  9 Feb 2021 15:19:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 76C6685F46;
	Tue,  9 Feb 2021 15:19:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5172AC013A;
	Tue,  9 Feb 2021 15:19:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D19AAC013A
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 15:19:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C343786B90
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 15:19:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2zm0H91qss2h for <bridge@lists.linux-foundation.org>;
 Tue,  9 Feb 2021 15:19:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com
 [209.85.218.45])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6A26D86B80
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 15:19:52 +0000 (UTC)
Received: by mail-ej1-f45.google.com with SMTP id w2so32156775ejk.13
 for <bridge@lists.linux-foundation.org>; Tue, 09 Feb 2021 07:19:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JZuvpaxw4BnzPyO0xlmmBjHMG6Y20oqe4rr17OH0RoI=;
 b=IQC4M9bKuAjm0sORNwVj/LgFkP/rOwA11Hkk6OLlVQkoui3IvWcs8ydgoQgfAbzIj7
 sSpOwVGJ+2tSnYGf/9vjrDhSJekf+l5DAz1eNOQoEOoCfigLOhVLrnmDkIV+A38PaCrQ
 rTPlyAdxFT3iQmA95aDQxihBfj9YUaBuIdUv0OlgCPWGSMu4nNpu6DclaNMxgZzzw4at
 8TpVuB90BCsPfVbwBwH7TRIJc88F4TuJs3/IQoTolRPsi5Z6YuOFEsnR6THxVPKwb4Ba
 nFbekA79mL3wUWFeQtmOK+hmkk5u5/0Q42Y1t6QQqGw/T4BUONvK2lUsXisanTwaxUo3
 31Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JZuvpaxw4BnzPyO0xlmmBjHMG6Y20oqe4rr17OH0RoI=;
 b=M1O1jRUhy7DIRSk1R8WjqhSsGx1aus1O4iEvzCifsEX+wPgca/hb9Egq7r9QvjJOwd
 AEcjCmQiJOzfnl/Cz/ohgcCjhyba2skIZad6gVFez77CkmU7DHsrNNZ20N7uPJnw2cB9
 0kK8fQytmul9tNHpMfT14oN8Z+B+JLlX4gHXbO0nq40Gly7jlU5uanUiGdnUVU0FJDg+
 xS8aVGGH5hoo8ljGINc5Amw4IFaSB6kIu4GZp8aplvC3H0zxATYymnTKvbLiuAE3GyPC
 l1VoojwiDJtlAw64engJAzpM23eLnhn67kG+dWX3YmPE3GPE1bgOsf4lhBK+I+FgNYzE
 5Fng==
X-Gm-Message-State: AOAM533Cp+g754ev5etVHoBFAPCTNPLJ4ct/isHfq//2AqzkviL3pPs9
 iDLIpvJ+9qnInwtfLQmm6XU=
X-Google-Smtp-Source: ABdhPJwPbD++/+I1yN8fN6BxS/Lj47ibw7R7dNwQZXmfM9cimWhibyoMUJ/pb3LPd6JMXd9dNpa7qw==
X-Received: by 2002:a17:906:7d4d:: with SMTP id
 l13mr22404984ejp.107.1612883990797; 
 Tue, 09 Feb 2021 07:19:50 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id q2sm11686108edv.93.2021.02.09.07.19.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 07:19:49 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Date: Tue,  9 Feb 2021 17:19:27 +0200
Message-Id: <20210209151936.97382-3-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210209151936.97382-1-olteanv@gmail.com>
References: <20210209151936.97382-1-olteanv@gmail.com>
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
Subject: [Bridge] [PATCH v2 net-next 02/11] net: bridge: offload all port
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

The br_switchdev_set_port_flag function uses the atomic notifier call
chain because br_setport runs in an atomic section (under br->lock).
This is because port flag changes need to be synchronized with the data
path. But actually the switchdev notifier doesn't need that, only
br_set_port_flag does. So we can collect all the port flag changes and
only emit the notification at the end, then revert the changes if the
switchdev notification failed.

There's also the other aspect: if for example this command:

ip link set swp0 type bridge_slave flood off mcast_flood off learning off

succeeded at configuring BR_FLOOD and BR_MCAST_FLOOD but not at
BR_LEARNING, there would be no attempt to revert the partial state in
any way. Arguably, if the user changes more than one flag through the
same netlink command, this one _should_ be all or nothing, which means
it should be passed through switchdev as all or nothing.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
Changes in v2:
Patch is new.

 net/bridge/br_netlink.c   | 155 +++++++++++++++-----------------------
 net/bridge/br_switchdev.c |   7 +-
 2 files changed, 66 insertions(+), 96 deletions(-)

diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index bd3962da345a..2c110bcbc6d0 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -853,103 +853,82 @@ static int br_set_port_state(struct net_bridge_port *p, u8 state)
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
-
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_GUARD, BR_BPDU_GUARD);
-	if (err)
-		return err;
-
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_FAST_LEAVE, BR_MULTICAST_FAST_LEAVE);
-	if (err)
-		return err;
-
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_PROTECT, BR_ROOT_BLOCK);
-	if (err)
-		return err;
-
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
+	spin_lock_bh(&p->br->lock);
+
+	old_flags = p->flags;
+	br_vlan_tunnel_old = (old_flags & BR_VLAN_TUNNEL) ? true : false;
+
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
+
+	changed_mask = old_flags ^ p->flags;
+
+	spin_unlock_bh(&p->br->lock);
+
+	err = br_switchdev_set_port_flag(p, p->flags, changed_mask);
+	if (err) {
+		spin_lock_bh(&p->br->lock);
+		p->flags = old_flags;
+		spin_unlock_bh(&p->br->lock);
 		return err;
+	}
 
-	br_vlan_tunnel_old = (p->flags & BR_VLAN_TUNNEL) ? true : false;
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_VLAN_TUNNEL, BR_VLAN_TUNNEL);
-	if (err)
-		return err;
+	spin_lock_bh(&p->br->lock);
 
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
@@ -961,7 +940,7 @@ static int br_setport(struct net_bridge_port *p, struct nlattr *tb[])
 
 		err = br_multicast_set_port_router(p, mcast_router);
 		if (err)
-			return err;
+			goto out;
 	}
 
 	if (tb[IFLA_BRPORT_MCAST_EHT_HOSTS_LIMIT]) {
@@ -970,27 +949,20 @@ static int br_setport(struct net_bridge_port *p, struct nlattr *tb[])
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
@@ -999,17 +971,21 @@ static int br_setport(struct net_bridge_port *p, struct nlattr *tb[])
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
@@ -1045,9 +1021,7 @@ int br_setlink(struct net_device *dev, struct nlmsghdr *nlh, u16 flags,
 			if (err)
 				return err;
 
-			spin_lock_bh(&p->br->lock);
 			err = br_setport(p, tb);
-			spin_unlock_bh(&p->br->lock);
 		} else {
 			/* Binary compatibility with old RSTP */
 			if (nla_len(protinfo) < sizeof(u8))
@@ -1134,17 +1108,10 @@ static int br_port_slave_changelink(struct net_device *brdev,
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

