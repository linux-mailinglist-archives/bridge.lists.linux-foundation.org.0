Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 531F73B73D9
	for <lists.bridge@lfdr.de>; Tue, 29 Jun 2021 16:07:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A7432403B7;
	Tue, 29 Jun 2021 14:07:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hkn_uMCS_-VJ; Tue, 29 Jun 2021 14:07:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 05308403BE;
	Tue, 29 Jun 2021 14:07:30 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D6247C001A;
	Tue, 29 Jun 2021 14:07:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B12F4C000E
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9FA63404A1
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yUMucHMKJi4Q for <bridge@lists.linux-foundation.org>;
 Tue, 29 Jun 2021 14:07:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 22C494049A
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:25 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id i24so31467979edx.4
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 07:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=frDP5ixemlwxw/F1z33KME5I3PbXYp4yin+ksW5AR7k=;
 b=S7Nt0GbBLK/UMVocP5EVjuSm5l6/9Fkc9YSgM4Nwni7uNIqsGluISIUIEjoHbNQ3Uu
 OzTaelVRmE92Kp2X2F4rRUZmxp9lOGqNowTi1U5ouv7W7At5nnv8LFbTO/C2AekfDjuK
 3qP4P+lR1r7NjyJAhtN4hgh0g4rS2fZlpezeZVryk7fkFQsLVMHn6al1jirvwrUL9d6a
 5gTz+30c0CsC8G34iretDvppCMH63NJgwTrFVx3xO8Kjqw1g5psxWbjk2iXy5NQc93wa
 4qrF75BDAdyXpDksEAuOKuRNIwpxHWnx8GrWE3TwHYmvIueyMr2pEF67/WNEwFK5bo7j
 EAAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=frDP5ixemlwxw/F1z33KME5I3PbXYp4yin+ksW5AR7k=;
 b=Ijf7VOiASSTBDbagSNZgp/mGU7hF4rseAQ9Vfd1qvMJ3Sj7l+vWT+sqlOstAf1Uxqj
 IzMPDuv9UmwNteHEbgx2ZVw2JijJcnAXR76cIcAgVymKD5P3viR/uxPOqqfSxpPd2enn
 X0Ex/a50pIjNQ+HpS0gqq25c0d34cywpBWpYW4zb4d3VWjbwuOavMiFkV7oFEYG5Uaky
 ckc9MmQHRk+vHWlgzA64tU8B8s0vLTRzlrRXbh9LyeUC/3VZfEDsOmotbJLqHdl5Dm6a
 8C5LqtMY8hgANvUd8xHYVBUTvL701joKV2iRZFC7DBz8wQ5ul5HzZ02bpzoIktiu5Ndi
 Iz6Q==
X-Gm-Message-State: AOAM5301lI0sc4Myb8KtMx3JktJ5t2iTmP6gNuDs0XsgvGg5Nh4885bk
 Q1zcfkgMKhSGbIhFae9/9a4=
X-Google-Smtp-Source: ABdhPJx4RevnvPVCT3H9TihXbbQkjvPNFHxtvsB4KttjDbv7coUvp5nlwPLT28ZGOLTWxrlixpp5QA==
X-Received: by 2002:a05:6402:2681:: with SMTP id
 w1mr5395267edd.275.1624975643264; 
 Tue, 29 Jun 2021 07:07:23 -0700 (PDT)
Received: from localhost.localdomain ([188.26.224.68])
 by smtp.gmail.com with ESMTPSA id b27sm8220121ejl.10.2021.06.29.07.07.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Jun 2021 07:07:23 -0700 (PDT)
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Date: Tue, 29 Jun 2021 17:06:50 +0300
Message-Id: <20210629140658.2510288-8-olteanv@gmail.com>
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
Subject: [Bridge] [PATCH v5 net-next 07/15] net: dsa: reference count the
	MDB entries at the cross-chip notifier level
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

Ever since the cross-chip notifiers were introduced, the design was
meant to be simplistic and just get the job done without worrying too
much about dangling resources left behind.

For example, somebody installs an MDB entry on sw0p0 in this daisy chain
topology. It gets installed using ds->ops->port_mdb_add() on sw0p0,
sw1p4 and sw2p4.

                                                    |
           sw0p0     sw0p1     sw0p2     sw0p3     sw0p4
        [  user ] [  user ] [  user ] [  dsa  ] [  cpu  ]
        [   x   ] [       ] [       ] [       ] [       ]
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

Then the same person deletes that MDB entry. The cross-chip notifier for
deletion only matches sw0p0:

                                                    |
           sw0p0     sw0p1     sw0p2     sw0p3     sw0p4
        [  user ] [  user ] [  user ] [  dsa  ] [  cpu  ]
        [   x   ] [       ] [       ] [       ] [       ]
                                          |
                                          +---------+
                                                    |
           sw1p0     sw1p1     sw1p2     sw1p3     sw1p4
        [  user ] [  user ] [  user ] [  dsa  ] [  dsa  ]
        [       ] [       ] [       ] [       ] [       ]
                                          |
                                          +---------+
                                                    |
           sw2p0     sw2p1     sw2p2     sw2p3     sw2p4
        [  user ] [  user ] [  user ] [  user ] [  dsa  ]
        [       ] [       ] [       ] [       ] [       ]

Why?

Because the DSA links are 'trunk' ports, if we just go ahead and delete
the MDB from sw1p4 and sw2p4 directly, we might delete those multicast
entries when they are still needed. Just consider the fact that somebody
does:

- add a multicast MAC address towards sw0p0 [ via the cross-chip
  notifiers it gets installed on the DSA links too ]
- add the same multicast MAC address towards sw0p1 (another port of that
  same switch)
- delete the same multicast MAC address from sw0p0.

At this point, if we deleted the MAC address from the DSA links, it
would be flooded, even though there is still an entry on switch 0 which
needs it not to.

So that is why deletions only match the targeted source port and nothing
on DSA links. Of course, dangling resources means that the hardware
tables will eventually run out given enough additions/removals, but hey,
at least it's simple.

But there is a bigger concern which needs to be addressed, and that is
our support for SWITCHDEV_OBJ_ID_HOST_MDB. DSA simply translates such an
object into a dsa_port_host_mdb_add() which ends up as ds->ops->port_mdb_add()
on the upstream port, and a similar thing happens on deletion:
dsa_port_host_mdb_del() will trigger ds->ops->port_mdb_del() on the
upstream port.

When there are 2 VLAN-unaware bridges spanning the same switch (which is
a use case DSA proudly supports), each bridge will install its own
SWITCHDEV_OBJ_ID_HOST_MDB entries. But upon deletion, DSA goes ahead and
emits a DSA_NOTIFIER_MDB_DEL for dp->cpu_dp, which is shared between the
user ports enslaved to br0 and the user ports enslaved to br1. Not good.
The host-trapped multicast addresses installed by br1 will be deleted
when any state changes in br0 (IGMP timers expire, or ports leave, etc).

To avoid this, we could of course go the route of the zero-sum game and
delete the DSA_NOTIFIER_MDB_DEL call for dp->cpu_dp. But the better
design is to just admit that on shared ports like DSA links and CPU
ports, we should be reference counting calls, even if this consumes some
dynamic memory which DSA has traditionally avoided. On the flip side,
the hardware tables of switches are limited in size, so it would be good
if the OS managed them properly instead of having them eventually
overflow.

To address the memory usage concern, we only apply the refcounting of
MDB entries on ports that are really shared (CPU ports and DSA links)
and not on user ports. In a typical single-switch setup, this means only
the CPU port (and the host MDB entries are not that many, really).

The name of the newly introduced data structures (dsa_mac_addr) is
chosen in such a way that will be reusable for host FDB entries (next
patch).

With this change, we can finally have the same matching logic for the
MDB additions and deletions, as well as for their host-trapped variants.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v4->v5: none

 include/net/dsa.h |  12 ++++++
 net/dsa/dsa2.c    |   8 ++++
 net/dsa/switch.c  | 104 ++++++++++++++++++++++++++++++++++++++++++----
 3 files changed, 115 insertions(+), 9 deletions(-)

diff --git a/include/net/dsa.h b/include/net/dsa.h
index 5f632cfd33c7..2c50546f9667 100644
--- a/include/net/dsa.h
+++ b/include/net/dsa.h
@@ -285,6 +285,11 @@ struct dsa_port {
 	 */
 	const struct dsa_netdevice_ops *netdev_ops;
 
+	/* List of MAC addresses that must be forwarded on this port.
+	 * These are only valid on CPU ports and DSA links.
+	 */
+	struct list_head	mdbs;
+
 	bool setup;
 };
 
@@ -299,6 +304,13 @@ struct dsa_link {
 	struct list_head list;
 };
 
+struct dsa_mac_addr {
+	unsigned char addr[ETH_ALEN];
+	u16 vid;
+	refcount_t refcount;
+	struct list_head list;
+};
+
 struct dsa_switch {
 	bool setup;
 
diff --git a/net/dsa/dsa2.c b/net/dsa/dsa2.c
index 9000a8c84baf..2035d132682f 100644
--- a/net/dsa/dsa2.c
+++ b/net/dsa/dsa2.c
@@ -348,6 +348,8 @@ static int dsa_port_setup(struct dsa_port *dp)
 	if (dp->setup)
 		return 0;
 
+	INIT_LIST_HEAD(&dp->mdbs);
+
 	switch (dp->type) {
 	case DSA_PORT_TYPE_UNUSED:
 		dsa_port_disable(dp);
@@ -443,6 +445,7 @@ static int dsa_port_devlink_setup(struct dsa_port *dp)
 static void dsa_port_teardown(struct dsa_port *dp)
 {
 	struct devlink_port *dlp = &dp->devlink_port;
+	struct dsa_mac_addr *a, *tmp;
 
 	if (!dp->setup)
 		return;
@@ -468,6 +471,11 @@ static void dsa_port_teardown(struct dsa_port *dp)
 		break;
 	}
 
+	list_for_each_entry_safe(a, tmp, &dp->mdbs, list) {
+		list_del(&a->list);
+		kfree(a);
+	}
+
 	dp->setup = false;
 }
 
diff --git a/net/dsa/switch.c b/net/dsa/switch.c
index c40afd622331..5439de029485 100644
--- a/net/dsa/switch.c
+++ b/net/dsa/switch.c
@@ -175,6 +175,84 @@ static bool dsa_switch_host_address_match(struct dsa_switch *ds, int port,
 	return false;
 }
 
+static struct dsa_mac_addr *dsa_mac_addr_find(struct list_head *addr_list,
+					      const unsigned char *addr,
+					      u16 vid)
+{
+	struct dsa_mac_addr *a;
+
+	list_for_each_entry(a, addr_list, list)
+		if (ether_addr_equal(a->addr, addr) && a->vid == vid)
+			return a;
+
+	return NULL;
+}
+
+static int dsa_switch_do_mdb_add(struct dsa_switch *ds, int port,
+				 const struct switchdev_obj_port_mdb *mdb)
+{
+	struct dsa_port *dp = dsa_to_port(ds, port);
+	struct dsa_mac_addr *a;
+	int err;
+
+	/* No need to bother with refcounting for user ports */
+	if (!(dsa_port_is_cpu(dp) || dsa_port_is_dsa(dp)))
+		return ds->ops->port_mdb_add(ds, port, mdb);
+
+	a = dsa_mac_addr_find(&dp->mdbs, mdb->addr, mdb->vid);
+	if (a) {
+		refcount_inc(&a->refcount);
+		return 0;
+	}
+
+	a = kzalloc(sizeof(*a), GFP_KERNEL);
+	if (!a)
+		return -ENOMEM;
+
+	err = ds->ops->port_mdb_add(ds, port, mdb);
+	if (err) {
+		kfree(a);
+		return err;
+	}
+
+	ether_addr_copy(a->addr, mdb->addr);
+	a->vid = mdb->vid;
+	refcount_set(&a->refcount, 1);
+	list_add_tail(&a->list, &dp->mdbs);
+
+	return 0;
+}
+
+static int dsa_switch_do_mdb_del(struct dsa_switch *ds, int port,
+				 const struct switchdev_obj_port_mdb *mdb)
+{
+	struct dsa_port *dp = dsa_to_port(ds, port);
+	struct dsa_mac_addr *a;
+	int err;
+
+	/* No need to bother with refcounting for user ports */
+	if (!(dsa_port_is_cpu(dp) || dsa_port_is_dsa(dp)))
+		return ds->ops->port_mdb_del(ds, port, mdb);
+
+	a = dsa_mac_addr_find(&dp->mdbs, mdb->addr, mdb->vid);
+	if (!a)
+		return -ENOENT;
+
+	if (!refcount_dec_and_test(&a->refcount))
+		return 0;
+
+	err = ds->ops->port_mdb_del(ds, port, mdb);
+	if (err) {
+		refcount_inc(&a->refcount);
+		return err;
+	}
+
+	list_del(&a->list);
+	kfree(a);
+
+	return 0;
+}
+
 static int dsa_switch_fdb_add(struct dsa_switch *ds,
 			      struct dsa_notifier_fdb_info *info)
 {
@@ -264,19 +342,18 @@ static int dsa_switch_mdb_add(struct dsa_switch *ds,
 	if (!ds->ops->port_mdb_add)
 		return -EOPNOTSUPP;
 
-	return ds->ops->port_mdb_add(ds, port, info->mdb);
+	return dsa_switch_do_mdb_add(ds, port, info->mdb);
 }
 
 static int dsa_switch_mdb_del(struct dsa_switch *ds,
 			      struct dsa_notifier_mdb_info *info)
 {
+	int port = dsa_towards_port(ds, info->sw_index, info->port);
+
 	if (!ds->ops->port_mdb_del)
 		return -EOPNOTSUPP;
 
-	if (ds->index == info->sw_index)
-		return ds->ops->port_mdb_del(ds, info->port, info->mdb);
-
-	return 0;
+	return dsa_switch_do_mdb_del(ds, port, info->mdb);
 }
 
 static int dsa_switch_host_mdb_add(struct dsa_switch *ds,
@@ -291,7 +368,7 @@ static int dsa_switch_host_mdb_add(struct dsa_switch *ds,
 	for (port = 0; port < ds->num_ports; port++) {
 		if (dsa_switch_host_address_match(ds, port, info->sw_index,
 						  info->port)) {
-			err = ds->ops->port_mdb_add(ds, port, info->mdb);
+			err = dsa_switch_do_mdb_add(ds, port, info->mdb);
 			if (err)
 				break;
 		}
@@ -303,13 +380,22 @@ static int dsa_switch_host_mdb_add(struct dsa_switch *ds,
 static int dsa_switch_host_mdb_del(struct dsa_switch *ds,
 				   struct dsa_notifier_mdb_info *info)
 {
+	int err = 0;
+	int port;
+
 	if (!ds->ops->port_mdb_del)
 		return -EOPNOTSUPP;
 
-	if (ds->index == info->sw_index)
-		return ds->ops->port_mdb_del(ds, info->port, info->mdb);
+	for (port = 0; port < ds->num_ports; port++) {
+		if (dsa_switch_host_address_match(ds, port, info->sw_index,
+						  info->port)) {
+			err = dsa_switch_do_mdb_del(ds, port, info->mdb);
+			if (err)
+				break;
+		}
+	}
 
-	return 0;
+	return err;
 }
 
 static bool dsa_switch_vlan_match(struct dsa_switch *ds, int port,
-- 
2.25.1

