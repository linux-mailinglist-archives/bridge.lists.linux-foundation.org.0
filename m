Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7655F312828
	for <lists.bridge@lfdr.de>; Mon,  8 Feb 2021 00:23:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E3190854E0;
	Sun,  7 Feb 2021 23:23:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9l6ehaR04VEx; Sun,  7 Feb 2021 23:23:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 25BF684C13;
	Sun,  7 Feb 2021 23:23:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0B8A9C013A;
	Sun,  7 Feb 2021 23:23:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D8637C0891
 for <bridge@lists.linux-foundation.org>; Sun,  7 Feb 2021 23:23:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C08B0854E0
 for <bridge@lists.linux-foundation.org>; Sun,  7 Feb 2021 23:23:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jE1n1Uohmfn8 for <bridge@lists.linux-foundation.org>;
 Sun,  7 Feb 2021 23:23:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
 [209.85.208.52])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6605884C13
 for <bridge@lists.linux-foundation.org>; Sun,  7 Feb 2021 23:23:05 +0000 (UTC)
Received: by mail-ed1-f52.google.com with SMTP id q2so16115869edi.4
 for <bridge@lists.linux-foundation.org>; Sun, 07 Feb 2021 15:23:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=m/M4BuWposQchCicdEReyb7C0vsmEwgOGgW3VC+NZ6g=;
 b=JQSNwUzn0XRH4kCIjTYgB9hynQ9YZhunXZZbzjvMHjndkOq/oXEUHV5vepZJO17jT6
 qTawomR7TcUgpb2mM3xGIY6MYvIiu+wWdXL7YBk+zns0HAKh5VU1wSEGnOtD/yRJaUiX
 AkYQ4bzoL4JY6q94LlvDG27eB4HaHi17mPCWGuOW1Vc/VauW6PWyWtHwPF+iJl7g5kus
 zlfcMyvYvkKH2/1FLSmwif8moVa0sdRyV0E3vHfTnVPXm4RxYsUa2CZIRbqkSyzT/Ero
 IOgAimIKosnCYeLhG/dtCumaPP+iH3oaZct72mL4m9lDh9J2fFo+39FBfeC1Goqqip1d
 NTEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=m/M4BuWposQchCicdEReyb7C0vsmEwgOGgW3VC+NZ6g=;
 b=uKVFqC/+MDcs3oXy1fEqm8emckoZfw2xFkManEVoJbom4vH2vkOB5UdekDZRS1f9u8
 kHm+yOWa+3ZJ/0fjZT11sVzrRFzZtAE7It9R0dbUIPWWSpmZuWFgzfEbHunR/YXny5F1
 JrwgeTVpj9p2aqFXrWQlErtjwYqQZ3eO/d/LJG0/1wvs3OLbru3mWzra+/kfbWNfq1lP
 5+bD1+91bDBo8CSFA28Af2Kbf9TIIpbZIZV9xmSJ8417nHW4Gr4j27ZJrAoexFFNME0E
 ADZlQMRFBh/Qy2sb4NW0eeOle/0rej6yXXXgnYxZvz1l9v+aepMf1lbSyk5ggIPLPSr4
 MV2Q==
X-Gm-Message-State: AOAM5312ck3o+fG/B6uIXlCL2NuX7JElUDM/ynyei/xznWKrAeZi0ud4
 2b1xnZkZg+MvrdAgylPAYGg=
X-Google-Smtp-Source: ABdhPJx0/11F6eJfTkWElJL6eTZpS/Il0fsX33bYY1gkCv1NYC7GL05D5o1qGH5jjeYD4p9DYpsM1w==
X-Received: by 2002:a05:6402:202a:: with SMTP id
 ay10mr14602428edb.93.1612740183924; 
 Sun, 07 Feb 2021 15:23:03 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id u21sm7540016ejj.120.2021.02.07.15.23.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Feb 2021 15:23:03 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Date: Mon,  8 Feb 2021 01:21:33 +0200
Message-Id: <20210207232141.2142678-2-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210207232141.2142678-1-olteanv@gmail.com>
References: <20210207232141.2142678-1-olteanv@gmail.com>
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
Subject: [Bridge] [PATCH net-next 1/9] net: bridge: don't print in
	br_switchdev_set_port_flag
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

Currently br_switchdev_set_port_flag has two options for error handling
and neither is good:
- The driver returns -EOPNOTSUPP in PRE_BRIDGE_FLAGS if it doesn't
  support offloading that flag, and this gets silently ignored and
  converted to an errno of 0. Nobody does this.
- The driver returns some other error code, like -EINVAL, in
  PRE_BRIDGE_FLAGS, and br_switchdev_set_port_flag shouts loudly.

The problem is that we'd like to offload some port flags during bridge
join and leave, but also not have the bridge shout at us if those fail.
But on the other hand we'd like the user to know that we can't offload
something when they set that through netlink. And since we can't have
the driver return -EOPNOTSUPP or -EINVAL depending on whether it's
called by the user or internally by the bridge, let's just add an extack
argument to br_switchdev_set_port_flag and propagate it to its callers.
Then, when we need offloading to really fail silently, this can simply
be passed a NULL argument.

This is just a temporary patch because it's rather noisy. We'll
propagate the extack through the switchdev notifier next.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 net/bridge/br_netlink.c   | 53 +++++++++++++++++++++++++--------------
 net/bridge/br_private.h   |  6 +++--
 net/bridge/br_switchdev.c |  9 +++----
 3 files changed, 42 insertions(+), 26 deletions(-)

diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index bd3962da345a..02aa95c08b77 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -854,7 +854,8 @@ static int br_set_port_state(struct net_bridge_port *p, u8 state)
 
 /* Set/clear or port flags based on attribute */
 static int br_set_port_flag(struct net_bridge_port *p, struct nlattr *tb[],
-			    int attrtype, unsigned long mask)
+			    int attrtype, unsigned long mask,
+			    struct netlink_ext_ack *extack)
 {
 	unsigned long flags;
 	int err;
@@ -867,7 +868,7 @@ static int br_set_port_flag(struct net_bridge_port *p, struct nlattr *tb[],
 	else
 		flags = p->flags & ~mask;
 
-	err = br_switchdev_set_port_flag(p, flags, mask);
+	err = br_switchdev_set_port_flag(p, flags, mask, extack);
 	if (err)
 		return err;
 
@@ -876,58 +877,71 @@ static int br_set_port_flag(struct net_bridge_port *p, struct nlattr *tb[],
 }
 
 /* Process bridge protocol info on port */
-static int br_setport(struct net_bridge_port *p, struct nlattr *tb[])
+static int br_setport(struct net_bridge_port *p, struct nlattr *tb[],
+		      struct netlink_ext_ack *extack)
 {
 	unsigned long old_flags = p->flags;
 	bool br_vlan_tunnel_old = false;
 	int err;
 
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_MODE, BR_HAIRPIN_MODE);
+	err = br_set_port_flag(p, tb, IFLA_BRPORT_MODE, BR_HAIRPIN_MODE,
+			       extack);
 	if (err)
 		return err;
 
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_GUARD, BR_BPDU_GUARD);
+	err = br_set_port_flag(p, tb, IFLA_BRPORT_GUARD, BR_BPDU_GUARD,
+			       extack);
 	if (err)
 		return err;
 
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_FAST_LEAVE, BR_MULTICAST_FAST_LEAVE);
+	err = br_set_port_flag(p, tb, IFLA_BRPORT_FAST_LEAVE,
+			       BR_MULTICAST_FAST_LEAVE, extack);
 	if (err)
 		return err;
 
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_PROTECT, BR_ROOT_BLOCK);
+	err = br_set_port_flag(p, tb, IFLA_BRPORT_PROTECT, BR_ROOT_BLOCK,
+			       extack);
 	if (err)
 		return err;
 
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_LEARNING, BR_LEARNING);
+	err = br_set_port_flag(p, tb, IFLA_BRPORT_LEARNING, BR_LEARNING,
+			       extack);
 	if (err)
 		return err;
 
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_UNICAST_FLOOD, BR_FLOOD);
+	err = br_set_port_flag(p, tb, IFLA_BRPORT_UNICAST_FLOOD, BR_FLOOD,
+			       extack);
 	if (err)
 		return err;
 
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_MCAST_FLOOD, BR_MCAST_FLOOD);
+	err = br_set_port_flag(p, tb, IFLA_BRPORT_MCAST_FLOOD, BR_MCAST_FLOOD,
+			       extack);
 	if (err)
 		return err;
 
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_MCAST_TO_UCAST, BR_MULTICAST_TO_UNICAST);
+	err = br_set_port_flag(p, tb, IFLA_BRPORT_MCAST_TO_UCAST,
+			       BR_MULTICAST_TO_UNICAST, extack);
 	if (err)
 		return err;
 
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_BCAST_FLOOD, BR_BCAST_FLOOD);
+	err = br_set_port_flag(p, tb, IFLA_BRPORT_BCAST_FLOOD,
+			       BR_BCAST_FLOOD, extack);
 	if (err)
 		return err;
 
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_PROXYARP, BR_PROXYARP);
+	err = br_set_port_flag(p, tb, IFLA_BRPORT_PROXYARP, BR_PROXYARP,
+			       extack);
 	if (err)
 		return err;
 
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_PROXYARP_WIFI, BR_PROXYARP_WIFI);
+	err = br_set_port_flag(p, tb, IFLA_BRPORT_PROXYARP_WIFI,
+			       BR_PROXYARP_WIFI, extack);
 	if (err)
 		return err;
 
 	br_vlan_tunnel_old = (p->flags & BR_VLAN_TUNNEL) ? true : false;
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_VLAN_TUNNEL, BR_VLAN_TUNNEL);
+	err = br_set_port_flag(p, tb, IFLA_BRPORT_VLAN_TUNNEL, BR_VLAN_TUNNEL,
+			       extack);
 	if (err)
 		return err;
 
@@ -983,11 +997,12 @@ static int br_setport(struct net_bridge_port *p, struct nlattr *tb[])
 	}
 
 	err = br_set_port_flag(p, tb, IFLA_BRPORT_NEIGH_SUPPRESS,
-			       BR_NEIGH_SUPPRESS);
+			       BR_NEIGH_SUPPRESS, extack);
 	if (err)
 		return err;
 
-	err = br_set_port_flag(p, tb, IFLA_BRPORT_ISOLATED, BR_ISOLATED);
+	err = br_set_port_flag(p, tb, IFLA_BRPORT_ISOLATED, BR_ISOLATED,
+			       extack);
 	if (err)
 		return err;
 
@@ -1046,7 +1061,7 @@ int br_setlink(struct net_device *dev, struct nlmsghdr *nlh, u16 flags,
 				return err;
 
 			spin_lock_bh(&p->br->lock);
-			err = br_setport(p, tb);
+			err = br_setport(p, tb, extack);
 			spin_unlock_bh(&p->br->lock);
 		} else {
 			/* Binary compatibility with old RSTP */
@@ -1141,7 +1156,7 @@ static int br_port_slave_changelink(struct net_device *brdev,
 		return 0;
 
 	spin_lock_bh(&br->lock);
-	ret = br_setport(br_port_get_rtnl(dev), data);
+	ret = br_setport(br_port_get_rtnl(dev), data, extack);
 	spin_unlock_bh(&br->lock);
 
 	return ret;
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index d242ba668e47..a1639d41188b 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1575,7 +1575,8 @@ bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
 				  const struct sk_buff *skb);
 int br_switchdev_set_port_flag(struct net_bridge_port *p,
 			       unsigned long flags,
-			       unsigned long mask);
+			       unsigned long mask,
+			       struct netlink_ext_ack *extack);
 void br_switchdev_fdb_notify(const struct net_bridge_fdb_entry *fdb,
 			     int type);
 int br_switchdev_port_vlan_add(struct net_device *dev, u16 vid, u16 flags,
@@ -1605,7 +1606,8 @@ static inline bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
 
 static inline int br_switchdev_set_port_flag(struct net_bridge_port *p,
 					     unsigned long flags,
-					     unsigned long mask)
+					     unsigned long mask,
+					     struct netlink_ext_ack *extack)
 {
 	return 0;
 }
diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
index a9c23ef83443..c18e1d600dc6 100644
--- a/net/bridge/br_switchdev.c
+++ b/net/bridge/br_switchdev.c
@@ -60,7 +60,8 @@ bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
 
 int br_switchdev_set_port_flag(struct net_bridge_port *p,
 			       unsigned long flags,
-			       unsigned long mask)
+			       unsigned long mask,
+			       struct netlink_ext_ack *extack)
 {
 	struct switchdev_attr attr = {
 		.orig_dev = p->dev,
@@ -83,8 +84,7 @@ int br_switchdev_set_port_flag(struct net_bridge_port *p,
 		return 0;
 
 	if (err) {
-		br_warn(p->br, "bridge flag offload is not supported %u(%s)\n",
-			(unsigned int)p->port_no, p->dev->name);
+		NL_SET_ERR_MSG_MOD(extack, "bridge flag offload is not supported");
 		return -EOPNOTSUPP;
 	}
 
@@ -94,8 +94,7 @@ int br_switchdev_set_port_flag(struct net_bridge_port *p,
 
 	err = switchdev_port_attr_set(p->dev, &attr);
 	if (err) {
-		br_warn(p->br, "error setting offload flag on port %u(%s)\n",
-			(unsigned int)p->port_no, p->dev->name);
+		NL_SET_ERR_MSG_MOD(extack, "error setting offload flag on port");
 		return err;
 	}
 
-- 
2.25.1

