Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCE6315295
	for <lists.bridge@lfdr.de>; Tue,  9 Feb 2021 16:20:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC4CB6F590
	for <lists.bridge@lfdr.de>; Tue,  9 Feb 2021 15:20:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rK8MSPzkO9kC for <lists.bridge@lfdr.de>;
	Tue,  9 Feb 2021 15:20:50 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id C7C226F573; Tue,  9 Feb 2021 15:20:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F31A6F6C9;
	Tue,  9 Feb 2021 15:20:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2D69CC1834;
	Tue,  9 Feb 2021 15:20:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 913C4C013A
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 15:20:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 80601871B0
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 15:20:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aud-8EU6J+Qt for <bridge@lists.linux-foundation.org>;
 Tue,  9 Feb 2021 15:20:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
 [209.85.208.47])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4058F8716F
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 15:20:02 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id s3so24211508edi.7
 for <bridge@lists.linux-foundation.org>; Tue, 09 Feb 2021 07:20:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qfSaO9TYJuaB/Do3tAZd7s3ZeokXS/i6ANvWsSRoSks=;
 b=FezDpTqPu/7Yn1ry0SrevamG+NuEMdSpDnWKf7pA7qfErKUs6clJ3orRcgr5lr8dsN
 +qS678cqq7DLWvAHk7tulXWA+/N+XEYBoqHra9Rr7s0P+7XXXWuBycPJ6womoau1uEF8
 wYvnuB/6H67PG4+M/jLrZ+ED08HjfKsF+Pmfyh5aH2bWuwIR2YWoK84mi+comcpJZHbA
 UtgOjz2g5Nv3gQIUAd8XoU9sEYig0bIOGjxRXFXNAIWw0A6iJkan2ctr/JZlwJ60oeCX
 1NNsyfU6waiqA+2sipw+7HOkRTef+u7mVqSsikxPslV4DvoWIsCm3iTnnBP3zA9oOM3d
 q+KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qfSaO9TYJuaB/Do3tAZd7s3ZeokXS/i6ANvWsSRoSks=;
 b=V8Pb07+umNpQesLG/WwTgAWaG3DrH2NCmsmA29Kqlyu/2ciG14OgEM7W2FQeEnbyj6
 aF9WBVtntO+6BCw4inUTB+g5Kmh4uace52kPnYPRsc6Of04Uj1i/2trPvoxbyIvrDgmI
 BB/h9xrRrlvXjDa/9PuI7lVWbvnBu+rgv4tmxngmA1MuG/fnqiiq3vgbm9NOwsjAiqF+
 HeOLr1yzcnP3l1jk+FThzVej8p5aifoNgcXUIJZA+dsVdwYKDbaZPrjrNJAOjBfDDEdP
 ThYCJ4DyV/V+Pl1Ayr7FPGeAeAsUhJRh3JUW6m5N4Ci2rQUxzn79sgzahEHRVAKVJLBN
 GIGQ==
X-Gm-Message-State: AOAM5338Y5hwF14Ms49DiWrub4wmMuMaDXEKA2RGLL3FzVahJlRvTJgS
 QoRs3+62g/ftysJJfI6Wo2E=
X-Google-Smtp-Source: ABdhPJxSc5xjXUSFVMCY/5CnAbuJLaG80BnkR9nuJBFhHyTw7gVnqTU3ljxMiEwhnRVAcr714UOe+g==
X-Received: by 2002:a05:6402:22ce:: with SMTP id
 dm14mr18185475edb.256.1612884000746; 
 Tue, 09 Feb 2021 07:20:00 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id q2sm11686108edv.93.2021.02.09.07.19.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 07:20:00 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Date: Tue,  9 Feb 2021 17:19:32 +0200
Message-Id: <20210209151936.97382-8-olteanv@gmail.com>
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
Subject: [Bridge] [PATCH v2 net-next 07/11] net: dsa: kill
	.port_egress_floods overengineering
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

The bridge offloads the port flags through a single bit mask using
switchdev, which among others, contains learning and flooding settings.

The commit 57652796aa97 ("net: dsa: add support for bridge flags")
missed one crucial aspect of the SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS API
when designing the API one level lower, towards the drivers.
This is that the bitmask of passed brport flags never has more than one
bit set at a time. On the other hand, the prototype passed to the driver
is .port_egress_floods(int port, bool unicast, bool multicast), which
configures two flags at a time.

DSA currently checks if .port_egress_floods is implemented, and if it
is, reports both BR_FLOOD and BR_MCAST_FLOOD as supported. So the driver
has no choice if it wants to inform the bridge that, for example, it
can't configure unicast flooding independently of multicast flooding -
the DSA mid layer is standing in the way. Or the other way around: a new
driver wants to start configuring BR_BCAST_FLOOD separately, but what do
we do with the rest, which only support unicast and multicast flooding?
Do we report broadcast flooding configuration as supported for those
too, and silently do nothing?

Secondly, currently DSA deems the driver too dumb to deserve knowing that
a SWITCHDEV_ATTR_ID_BRIDGE_MROUTER attribute was offloaded, because it
just calls .port_egress_floods for the CPU port. When we'll add support
for the plain SWITCHDEV_ATTR_ID_PORT_MROUTER, that will become a real
problem because the flood settings will need to be held statefully in
the DSA middle layer, otherwise changing the mrouter port attribute will
impact the flooding attribute. And that's _assuming_ that the underlying
hardware doesn't have anything else to do when a multicast router
attaches to a port than flood unknown traffic to it. If it does, there
will need to be a dedicated .port_set_mrouter anyway.

Lastly, we have DSA drivers that have a backlink into a pure switchdev
driver (felix -> ocelot). It seems reasonable that the other switchdev
drivers should not have to suffer from the oddities of DSA overengineering,
so keeping DSA a pass-through layer makes more sense there.

To simplify the brport flags situation we just delete .port_egress_floods
and we introduce a simple .port_bridge_flags which is passed to the
driver. Also, the logic from dsa_port_mrouter is removed and a
.port_set_mrouter is created.

Functionally speaking, we simply move the calls to .port_egress_floods
one step lower, in the two drivers that implement it: mv88e6xxx and b53,
so things should work just as before.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
Changes in v2:
- Reordered with previous patch such that we don't need to introduce
  .port_pre_bridge_flags
- Pass extack to drivers.

 drivers/net/dsa/b53/b53_common.c | 20 +++++++++++++++++++-
 drivers/net/dsa/mv88e6xxx/chip.c | 21 ++++++++++++++++++++-
 include/net/dsa.h                |  7 +++++--
 net/dsa/dsa_priv.h               |  6 ++++--
 net/dsa/port.c                   | 18 ++++++++----------
 net/dsa/slave.c                  |  4 ++--
 6 files changed, 58 insertions(+), 18 deletions(-)

diff --git a/drivers/net/dsa/b53/b53_common.c b/drivers/net/dsa/b53/b53_common.c
index 23fc7225c8d1..d480493cb64d 100644
--- a/drivers/net/dsa/b53/b53_common.c
+++ b/drivers/net/dsa/b53/b53_common.c
@@ -1948,6 +1948,23 @@ int b53_br_egress_floods(struct dsa_switch *ds, int port,
 }
 EXPORT_SYMBOL(b53_br_egress_floods);
 
+static int b53_br_flags(struct dsa_switch *ds, int port,
+			struct switchdev_brport_flags flags,
+			struct netlink_ext_ack *extack)
+{
+	if (flags.mask & ~(BR_FLOOD | BR_MCAST_FLOOD))
+		return -EINVAL;
+
+	return b53_br_egress_floods(ds, port, flags.val & BR_FLOOD,
+				    flags.val & BR_MCAST_FLOOD);
+}
+
+static int b53_set_mrouter(struct dsa_switch *ds, int port, bool mrouter,
+			   struct netlink_ext_ack *extack)
+{
+	return b53_br_egress_floods(ds, port, true, mrouter);
+}
+
 static bool b53_possible_cpu_port(struct dsa_switch *ds, int port)
 {
 	/* Broadcom switches will accept enabling Broadcom tags on the
@@ -2187,9 +2204,10 @@ static const struct dsa_switch_ops b53_switch_ops = {
 	.set_mac_eee		= b53_set_mac_eee,
 	.port_bridge_join	= b53_br_join,
 	.port_bridge_leave	= b53_br_leave,
+	.port_bridge_flags	= b53_br_flags,
+	.port_set_mrouter	= b53_set_mrouter,
 	.port_stp_state_set	= b53_br_set_stp_state,
 	.port_fast_age		= b53_br_fast_age,
-	.port_egress_floods	= b53_br_egress_floods,
 	.port_vlan_filtering	= b53_vlan_filtering,
 	.port_vlan_add		= b53_vlan_add,
 	.port_vlan_del		= b53_vlan_del,
diff --git a/drivers/net/dsa/mv88e6xxx/chip.c b/drivers/net/dsa/mv88e6xxx/chip.c
index ae0b490f00cd..b230bfcc4050 100644
--- a/drivers/net/dsa/mv88e6xxx/chip.c
+++ b/drivers/net/dsa/mv88e6xxx/chip.c
@@ -5380,6 +5380,24 @@ static int mv88e6xxx_port_egress_floods(struct dsa_switch *ds, int port,
 	return err;
 }
 
+static int mv88e6xxx_port_bridge_flags(struct dsa_switch *ds, int port,
+				       struct switchdev_brport_flags flags,
+				       struct netlink_ext_ack *extack)
+{
+	if (flags.mask & ~(BR_FLOOD | BR_MCAST_FLOOD))
+		return -EINVAL;
+
+	return mv88e6xxx_port_egress_floods(ds, port, flags.val & BR_FLOOD,
+					    flags.val & BR_MCAST_FLOOD);
+}
+
+static int mv88e6xxx_port_set_mrouter(struct dsa_switch *ds, int port,
+				      bool mrouter,
+				      struct netlink_ext_ack *extack)
+{
+	return mv88e6xxx_port_egress_floods(ds, port, true, mrouter);
+}
+
 static bool mv88e6xxx_lag_can_offload(struct dsa_switch *ds,
 				      struct net_device *lag,
 				      struct netdev_lag_upper_info *info)
@@ -5678,7 +5696,8 @@ static const struct dsa_switch_ops mv88e6xxx_switch_ops = {
 	.set_ageing_time	= mv88e6xxx_set_ageing_time,
 	.port_bridge_join	= mv88e6xxx_port_bridge_join,
 	.port_bridge_leave	= mv88e6xxx_port_bridge_leave,
-	.port_egress_floods	= mv88e6xxx_port_egress_floods,
+	.port_bridge_flags	= mv88e6xxx_port_bridge_flags,
+	.port_set_mrouter	= mv88e6xxx_port_set_mrouter,
 	.port_stp_state_set	= mv88e6xxx_port_stp_state_set,
 	.port_fast_age		= mv88e6xxx_port_fast_age,
 	.port_vlan_filtering	= mv88e6xxx_port_vlan_filtering,
diff --git a/include/net/dsa.h b/include/net/dsa.h
index 60acb9fca124..09aa28e667c7 100644
--- a/include/net/dsa.h
+++ b/include/net/dsa.h
@@ -621,8 +621,11 @@ struct dsa_switch_ops {
 	void	(*port_stp_state_set)(struct dsa_switch *ds, int port,
 				      u8 state);
 	void	(*port_fast_age)(struct dsa_switch *ds, int port);
-	int	(*port_egress_floods)(struct dsa_switch *ds, int port,
-				      bool unicast, bool multicast);
+	int	(*port_bridge_flags)(struct dsa_switch *ds, int port,
+				     struct switchdev_brport_flags flags,
+				     struct netlink_ext_ack *extack);
+	int	(*port_set_mrouter)(struct dsa_switch *ds, int port, bool mrouter,
+				    struct netlink_ext_ack *extack);
 
 	/*
 	 * VLAN support
diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
index 63770e421e4d..8125806ee135 100644
--- a/net/dsa/dsa_priv.h
+++ b/net/dsa/dsa_priv.h
@@ -175,8 +175,10 @@ int dsa_port_mdb_add(const struct dsa_port *dp,
 int dsa_port_mdb_del(const struct dsa_port *dp,
 		     const struct switchdev_obj_port_mdb *mdb);
 int dsa_port_bridge_flags(const struct dsa_port *dp,
-			  struct switchdev_brport_flags flags);
-int dsa_port_mrouter(struct dsa_port *dp, bool mrouter);
+			  struct switchdev_brport_flags flags,
+			  struct netlink_ext_ack *extack);
+int dsa_port_mrouter(struct dsa_port *dp, bool mrouter,
+		     struct netlink_ext_ack *extack);
 int dsa_port_vlan_add(struct dsa_port *dp,
 		      const struct switchdev_obj_port_vlan *vlan);
 int dsa_port_vlan_del(struct dsa_port *dp,
diff --git a/net/dsa/port.c b/net/dsa/port.c
index 597d3d3eb507..be5b2244667b 100644
--- a/net/dsa/port.c
+++ b/net/dsa/port.c
@@ -383,28 +383,26 @@ int dsa_port_ageing_time(struct dsa_port *dp, clock_t ageing_clock)
 }
 
 int dsa_port_bridge_flags(const struct dsa_port *dp,
-			  struct switchdev_brport_flags flags)
+			  struct switchdev_brport_flags flags,
+			  struct netlink_ext_ack *extack)
 {
 	struct dsa_switch *ds = dp->ds;
-	int port = dp->index;
 
-	if (!ds->ops->port_egress_floods ||
-	    (flags.mask & ~(BR_FLOOD | BR_MCAST_FLOOD)))
+	if (!ds->ops->port_bridge_flags)
 		return -EINVAL;
 
-	return ds->ops->port_egress_floods(ds, port, flags.val & BR_FLOOD,
-					   flags.val & BR_MCAST_FLOOD);
+	return ds->ops->port_bridge_flags(ds, dp->index, flags, extack);
 }
 
-int dsa_port_mrouter(struct dsa_port *dp, bool mrouter)
+int dsa_port_mrouter(struct dsa_port *dp, bool mrouter,
+		     struct netlink_ext_ack *extack)
 {
 	struct dsa_switch *ds = dp->ds;
-	int port = dp->index;
 
-	if (!ds->ops->port_egress_floods)
+	if (!ds->ops->port_set_mrouter)
 		return -EOPNOTSUPP;
 
-	return ds->ops->port_egress_floods(ds, port, true, mrouter);
+	return ds->ops->port_set_mrouter(ds, dp->index, mrouter, extack);
 }
 
 int dsa_port_mtu_change(struct dsa_port *dp, int new_mtu,
diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index 0e1f8f1d4e2c..4a979245e059 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -291,10 +291,10 @@ static int dsa_slave_port_attr_set(struct net_device *dev,
 		ret = dsa_port_ageing_time(dp, attr->u.ageing_time);
 		break;
 	case SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS:
-		ret = dsa_port_bridge_flags(dp, attr->u.brport_flags);
+		ret = dsa_port_bridge_flags(dp, attr->u.brport_flags, extack);
 		break;
 	case SWITCHDEV_ATTR_ID_BRIDGE_MROUTER:
-		ret = dsa_port_mrouter(dp->cpu_dp, attr->u.mrouter);
+		ret = dsa_port_mrouter(dp->cpu_dp, attr->u.mrouter, extack);
 		break;
 	default:
 		ret = -EOPNOTSUPP;
-- 
2.25.1

