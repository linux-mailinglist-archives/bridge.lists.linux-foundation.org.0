Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 803C03B73D3
	for <lists.bridge@lfdr.de>; Tue, 29 Jun 2021 16:07:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 18E35403A2;
	Tue, 29 Jun 2021 14:07:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KjQVUbtQtNFN; Tue, 29 Jun 2021 14:07:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 75C51403B1;
	Tue, 29 Jun 2021 14:07:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3C137C0022;
	Tue, 29 Jun 2021 14:07:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 719ABC001A
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5CA854048D
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sd9gO8t-OPNo for <bridge@lists.linux-foundation.org>;
 Tue, 29 Jun 2021 14:07:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 40558403B7
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:24 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id l24so3358935edr.11
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 07:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=x6ihLAFOs4qB/ainGPnFA/o9Ohcq/fd8ZQXPbqQkddE=;
 b=N3okq816NNUcP3sHyMT2RUWh03x6VI6U1k7tMo18MiXl9/El4SFjbsuQcOhro5dy2v
 9XtU9O6KiuUuZ0ej5Y918wVeGhWUG9jaZ/G6Y35IoFguiCOeIGehpJK3GSacMrh+uLv6
 OdgHQnuaQkDGRrCUReOJd1cFnIXRxofki7mxTC45RSLJNJH+lwvcInZfcovS8PxmkLxS
 74ZychR76KwYqVTzVhEwL7YgqxhYJtpTngcdPSh4w77tQkP0H3ttn/XpbXqw7nEgjESA
 ncX1LwZ60N+4k6TS+NEMlL2onbxVR2vzZjPs6TDrQbXnOl0HbEeLB8cn+SCUv0YfjUm1
 f1yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=x6ihLAFOs4qB/ainGPnFA/o9Ohcq/fd8ZQXPbqQkddE=;
 b=esz7StpeMU3kHG1025VCAQFti7pkXmk4by/kQD3VB1DdbuaepMYHCF/kGk1oVopI/K
 26/A2H8on6V7qqg5sSwv6Mkjn70UuozwBp6Dj7LJPwjV3VMjqOpqRrBGsgcCxw2g8e7Z
 Ocrmvvf7RvCkuD8D0LDnLt8toMi77cfmLNZ/kRhFj2L4GQ8Ci3bJjCfkEPeuHsTcF+U3
 UL8YPE7S8Ho4SUGIGPN1zFdNw1mRNOXiqqlDe3RP0cvi/3JdlPBQT433Fu6zjBayKBob
 25UedOAqCAFkniNWwxE27GbS78zHg++E76zS10P7QfcjNszhIZjaPr37gJKrOYjcHry/
 3DbA==
X-Gm-Message-State: AOAM5317I8NlOeU5b0SH6pznt0Fg8PMkg+2blJCJklr7t8OW393+4MYd
 iQr3PyLbFHaeaQVI0WONXtw=
X-Google-Smtp-Source: ABdhPJyRlU4kGdJeaCq20lS632JcAk8RoSwT7GfpMgTHZVlz8WfE8AS+4slQcknA07LHLYLin0oRhA==
X-Received: by 2002:aa7:db95:: with SMTP id u21mr40340679edt.152.1624975642245; 
 Tue, 29 Jun 2021 07:07:22 -0700 (PDT)
Received: from localhost.localdomain ([188.26.224.68])
 by smtp.gmail.com with ESMTPSA id b27sm8220121ejl.10.2021.06.29.07.07.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Jun 2021 07:07:21 -0700 (PDT)
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Date: Tue, 29 Jun 2021 17:06:49 +0300
Message-Id: <20210629140658.2510288-7-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210629140658.2510288-1-olteanv@gmail.com>
References: <20210629140658.2510288-1-olteanv@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, Vladimir Oltean <vladimir.oltean@nxp.com>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@idosch.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: [Bridge] [PATCH v5 net-next 06/15] net: dsa: introduce a separate
	cross-chip notifier type for host MDBs
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

Commit abd49535c380 ("net: dsa: execute dsa_switch_mdb_add only for
routing port in cross-chip topologies") does a surprisingly good job
even for the SWITCHDEV_OBJ_ID_HOST_MDB use case, where DSA simply
translates a switchdev object received on dp into a cross-chip notifier
for dp->cpu_dp.

To visualize how that works, imagine the daisy chain topology below and
consider a SWITCHDEV_OBJ_ID_HOST_MDB object emitted on sw2p0. How does
the cross-chip notifier know to match on all the right ports (sw0p4, the
dedicated CPU port, sw1p4, an upstream DSA link, and sw2p4, another
upstream DSA link)?

                                                |
       sw0p0     sw0p1     sw0p2     sw0p3     sw0p4
    [  user ] [  user ] [  user ] [  dsa  ] [  cpu  ]
    [       ] [       ] [       ] [       ] [   x   ]
                                      |
                                      +---------+
                                                |
       sw1p0     sw1p1     sw1p2     sw1p3     sw1p4
    [  user ] [  user ] [  user ] [  dsa  ] [  dsa  ]
    [       ] [       ] [       ] [       ] [   x   ]
                                      |
                                      +---------+
                                                |
       sw2p0     sw2p1     sw2p2     sw2p3     sw2p4
    [  user ] [  user ] [  user ] [  user ] [  dsa  ]
    [       ] [       ] [       ] [       ] [   x   ]

The answer is simple: the dedicated CPU port of sw2p0 is sw0p4, and
dsa_routing_port returns the upstream port for all switches.

That is fine, but there are other topologies where this does not work as
well. There are trees with "H" topologies in the wild, where there are 2
or more switches with DSA links between them, but every switch has its
dedicated CPU port. For these topologies, it seems stupid for the neighbor
switches to install an MDB entry on the routing port, since these
multicast addresses are fundamentally different than the usual ones we
support (and that is the justification for this patch, to introduce the
concept of a termination plane multicast MAC address, as opposed to a
forwarding plane multicast MAC address).

For example, when a SWITCHDEV_OBJ_ID_HOST_MDB would get added to sw0p0,
without this patch, it would get treated as a regular port MDB on sw0p2
and it would match on the ports below (including the sw1p3 routing port).

                         |                                  |
    sw0p0     sw0p1     sw0p2     sw0p3          sw1p3     sw1p2     sw1p1     sw1p0
 [  user ] [  user ] [  cpu  ] [  dsa  ]      [  dsa  ] [  cpu  ] [  user ] [  user ]
 [       ] [       ] [   x   ] [       ] ---- [   x   ] [       ] [       ] [       ]

With the patch, the host MDB notifier on sw0p0 matches only on the local
switch, which is what we want for a termination plane address.

                         |                                  |
    sw0p0     sw0p1     sw0p2     sw0p3          sw1p3     sw1p2     sw1p1     sw1p0
 [  user ] [  user ] [  cpu  ] [  dsa  ]      [  dsa  ] [  cpu  ] [  user ] [  user ]
 [       ] [       ] [   x   ] [       ] ---- [       ] [       ] [       ] [       ]

Name this new matching function "dsa_switch_host_address_match" since we
will be reusing it soon for host FDB entries as well.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v4->v5: removed a paranoid NULL pointer check and WARN_ON for the output
        of dsa_switch_find()

 net/dsa/dsa_priv.h |  6 +++++
 net/dsa/port.c     | 24 +++++++++++++++++++
 net/dsa/slave.c    | 10 ++------
 net/dsa/switch.c   | 60 ++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 92 insertions(+), 8 deletions(-)

diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
index c8712942002f..cd65933d269b 100644
--- a/net/dsa/dsa_priv.h
+++ b/net/dsa/dsa_priv.h
@@ -27,6 +27,8 @@ enum {
 	DSA_NOTIFIER_LAG_LEAVE,
 	DSA_NOTIFIER_MDB_ADD,
 	DSA_NOTIFIER_MDB_DEL,
+	DSA_NOTIFIER_HOST_MDB_ADD,
+	DSA_NOTIFIER_HOST_MDB_DEL,
 	DSA_NOTIFIER_VLAN_ADD,
 	DSA_NOTIFIER_VLAN_DEL,
 	DSA_NOTIFIER_MTU,
@@ -214,6 +216,10 @@ int dsa_port_mdb_add(const struct dsa_port *dp,
 		     const struct switchdev_obj_port_mdb *mdb);
 int dsa_port_mdb_del(const struct dsa_port *dp,
 		     const struct switchdev_obj_port_mdb *mdb);
+int dsa_port_host_mdb_add(const struct dsa_port *dp,
+			  const struct switchdev_obj_port_mdb *mdb);
+int dsa_port_host_mdb_del(const struct dsa_port *dp,
+			  const struct switchdev_obj_port_mdb *mdb);
 int dsa_port_pre_bridge_flags(const struct dsa_port *dp,
 			      struct switchdev_brport_flags flags,
 			      struct netlink_ext_ack *extack);
diff --git a/net/dsa/port.c b/net/dsa/port.c
index 46089dd2b2ec..47f45f795f44 100644
--- a/net/dsa/port.c
+++ b/net/dsa/port.c
@@ -681,6 +681,30 @@ int dsa_port_mdb_del(const struct dsa_port *dp,
 	return dsa_port_notify(dp, DSA_NOTIFIER_MDB_DEL, &info);
 }
 
+int dsa_port_host_mdb_add(const struct dsa_port *dp,
+			  const struct switchdev_obj_port_mdb *mdb)
+{
+	struct dsa_notifier_mdb_info info = {
+		.sw_index = dp->ds->index,
+		.port = dp->index,
+		.mdb = mdb,
+	};
+
+	return dsa_port_notify(dp, DSA_NOTIFIER_HOST_MDB_ADD, &info);
+}
+
+int dsa_port_host_mdb_del(const struct dsa_port *dp,
+			  const struct switchdev_obj_port_mdb *mdb)
+{
+	struct dsa_notifier_mdb_info info = {
+		.sw_index = dp->ds->index,
+		.port = dp->index,
+		.mdb = mdb,
+	};
+
+	return dsa_port_notify(dp, DSA_NOTIFIER_HOST_MDB_DEL, &info);
+}
+
 int dsa_port_vlan_add(struct dsa_port *dp,
 		      const struct switchdev_obj_port_vlan *vlan,
 		      struct netlink_ext_ack *extack)
diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index 64acb1e11cd7..4b1d738bc3bc 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -418,10 +418,7 @@ static int dsa_slave_port_obj_add(struct net_device *dev, const void *ctx,
 		if (!dsa_port_offloads_bridge(dp, obj->orig_dev))
 			return -EOPNOTSUPP;
 
-		/* DSA can directly translate this to a normal MDB add,
-		 * but on the CPU port.
-		 */
-		err = dsa_port_mdb_add(dp->cpu_dp, SWITCHDEV_OBJ_PORT_MDB(obj));
+		err = dsa_port_host_mdb_add(dp, SWITCHDEV_OBJ_PORT_MDB(obj));
 		break;
 	case SWITCHDEV_OBJ_ID_PORT_VLAN:
 		if (!dsa_port_offloads_bridge_port(dp, obj->orig_dev))
@@ -495,10 +492,7 @@ static int dsa_slave_port_obj_del(struct net_device *dev, const void *ctx,
 		if (!dsa_port_offloads_bridge(dp, obj->orig_dev))
 			return -EOPNOTSUPP;
 
-		/* DSA can directly translate this to a normal MDB add,
-		 * but on the CPU port.
-		 */
-		err = dsa_port_mdb_del(dp->cpu_dp, SWITCHDEV_OBJ_PORT_MDB(obj));
+		err = dsa_port_host_mdb_del(dp, SWITCHDEV_OBJ_PORT_MDB(obj));
 		break;
 	case SWITCHDEV_OBJ_ID_PORT_VLAN:
 		if (!dsa_port_offloads_bridge_port(dp, obj->orig_dev))
diff --git a/net/dsa/switch.c b/net/dsa/switch.c
index c1e5afafe633..c40afd622331 100644
--- a/net/dsa/switch.c
+++ b/net/dsa/switch.c
@@ -154,6 +154,27 @@ static int dsa_switch_bridge_leave(struct dsa_switch *ds,
 	return 0;
 }
 
+/* Matches for all upstream-facing ports (the CPU port and all upstream-facing
+ * DSA links) that sit between the targeted port on which the notifier was
+ * emitted and its dedicated CPU port.
+ */
+static bool dsa_switch_host_address_match(struct dsa_switch *ds, int port,
+					  int info_sw_index, int info_port)
+{
+	struct dsa_port *targeted_dp, *cpu_dp;
+	struct dsa_switch *targeted_ds;
+
+	targeted_ds = dsa_switch_find(ds->dst->index, info_sw_index);
+	targeted_dp = dsa_to_port(targeted_ds, info_port);
+	cpu_dp = targeted_dp->cpu_dp;
+
+	if (dsa_switch_is_upstream_of(ds, targeted_ds))
+		return port == dsa_towards_port(ds, cpu_dp->ds->index,
+						cpu_dp->index);
+
+	return false;
+}
+
 static int dsa_switch_fdb_add(struct dsa_switch *ds,
 			      struct dsa_notifier_fdb_info *info)
 {
@@ -258,6 +279,39 @@ static int dsa_switch_mdb_del(struct dsa_switch *ds,
 	return 0;
 }
 
+static int dsa_switch_host_mdb_add(struct dsa_switch *ds,
+				   struct dsa_notifier_mdb_info *info)
+{
+	int err = 0;
+	int port;
+
+	if (!ds->ops->port_mdb_add)
+		return -EOPNOTSUPP;
+
+	for (port = 0; port < ds->num_ports; port++) {
+		if (dsa_switch_host_address_match(ds, port, info->sw_index,
+						  info->port)) {
+			err = ds->ops->port_mdb_add(ds, port, info->mdb);
+			if (err)
+				break;
+		}
+	}
+
+	return err;
+}
+
+static int dsa_switch_host_mdb_del(struct dsa_switch *ds,
+				   struct dsa_notifier_mdb_info *info)
+{
+	if (!ds->ops->port_mdb_del)
+		return -EOPNOTSUPP;
+
+	if (ds->index == info->sw_index)
+		return ds->ops->port_mdb_del(ds, info->port, info->mdb);
+
+	return 0;
+}
+
 static bool dsa_switch_vlan_match(struct dsa_switch *ds, int port,
 				  struct dsa_notifier_vlan_info *info)
 {
@@ -441,6 +495,12 @@ static int dsa_switch_event(struct notifier_block *nb,
 	case DSA_NOTIFIER_MDB_DEL:
 		err = dsa_switch_mdb_del(ds, info);
 		break;
+	case DSA_NOTIFIER_HOST_MDB_ADD:
+		err = dsa_switch_host_mdb_add(ds, info);
+		break;
+	case DSA_NOTIFIER_HOST_MDB_DEL:
+		err = dsa_switch_host_mdb_del(ds, info);
+		break;
 	case DSA_NOTIFIER_VLAN_ADD:
 		err = dsa_switch_vlan_add(ds, info);
 		break;
-- 
2.25.1

