Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CE17DCA1
	for <lists.bridge@lfdr.de>; Thu,  1 Aug 2019 15:39:45 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6B30B1050;
	Thu,  1 Aug 2019 13:39:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 866CD4049
	for <bridge@lists.linux-foundation.org>;
	Wed, 31 Jul 2019 22:37:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5B69E7DB
	for <bridge@lists.linux-foundation.org>;
	Wed, 31 Jul 2019 22:37:45 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id n4so71477828wrs.3
	for <bridge@lists.linux-foundation.org>;
	Wed, 31 Jul 2019 15:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=8pO/u2UxpYHbGHBioUPH5ZDqgJG5rCQHhYtZqabYo9c=;
	b=FNvzT+uty1VdREz96XmSva9/UJ/IXQR5sKeWKIhPAqYqXDOCJYHedUXYipW1Tbe516
	qxsa6nYng2ns9XPDaxtuW/bUKB2peYQx4E28ufCPnXKRjQpEzaFJH7pKACpfoHv5r/4H
	z1HsCI9BSlXsiCdodDErv+ZtTrL2LHt43yNJQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=8pO/u2UxpYHbGHBioUPH5ZDqgJG5rCQHhYtZqabYo9c=;
	b=UARHIVz7B8wSY0tklmr7Zz1Qaxlkrqy7EmefvO+C8A86pQQvlH+3py9HUseLRpS5L1
	Jsyfz/aqyLU7W0YX524dREWDqkmqRVgET2aQg6HOMnEHSV6rrUsn+1/Zd2+jcfNIpjb4
	3PSrIVbCO5kijnO2FJnSxWLr1KSrfT6bbyDkK9NJJFeVGodHCVJXFE8uNFjDUkVZL48H
	uUlvO8uGInQG7VTc9pDDtpMnZUt7Av6iAgs2MU7DwFXVnltsUKpV2qtSXnP1WEAoM8YJ
	jp0ljvQ5D3FVjrzndA39GtYo5oTw7QpIRvzlTUohtiyBFGoVJZCcl1/gItsD+89TUQE5
	troQ==
X-Gm-Message-State: APjAAAXKqz4EYn+UMCTCae4w9DuaWwZuFlUjc/p16qPtffRfPsVjElKJ
	veJWdK6HxG1tFUdB60AEmQd0xQ==
X-Google-Smtp-Source: APXvYqw8qX2v2sXxeZN4OXiZScjziWVk/Pl36/MT/wFA4ZGEvtCBTs00LArm2LP+DQNbyJy3HH02wg==
X-Received: by 2002:a5d:4205:: with SMTP id n5mr127937612wrq.52.1564612663863; 
	Wed, 31 Jul 2019 15:37:43 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
	[84.238.136.197]) by smtp.gmail.com with ESMTPSA id
	p18sm69045718wrm.16.2019.07.31.15.37.42
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 31 Jul 2019 15:37:43 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Thu,  1 Aug 2019 01:37:36 +0300
Message-Id: <20190731223736.18856-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190731183623.20127-1-nikolay@cumulusnetworks.com>
References: <20190731183623.20127-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
	roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	davem@davemloft.net, michael-dev <michael-dev@fami-braun.de>
Subject: [Bridge] [PATCH net v2] net: bridge: move vlan init/deinit to
	NETDEV_REGISTER/UNREGISTER
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

Most of the bridge device's vlan init bugs come from the fact that it's
done in the wrong place, way too early in ndo_init() before the device is
even assigned an ifindex. That makes error handling harder, especially for
older kernels which don't have bridge ndo_uninit callback. It also
introduces another bug when the bridge's dev_addr is added as fdb in the
the initial default pvid on vlan initialization, the fdb notification has
ifindex/NDA_MASTER both equal to 0 (see example below) which really
makes no sense for user-space[0]. Usually user-space software would ignore
such entries, but they are actually valid and will eventually have all
necessary attributes. I chose to change the order because this can be
backported to all kernels even pre-ndo_uninit ones without many changes
and it keeps init/deinit symmetric. As a bonus this allows us to keep
the vlan init/deinit entirely in br_vlan.c and remove those exports.
It makes much more sense to send a notification *after* the device has
registered and has a proper ifindex allocated rather than before when
there's a chance that the registration might still fail.

For the demonstration below a small change to iproute2 for printing all fdb
notifications is added, because it contained a workaround not to show
entries with ifindex == 0.
Command executed while monitoring: $ ip l add br0 type bridge
Before (both ifindex and master == 0):
$ bridge monitor fdb
36:7e:8a:b3:56:ba dev * vlan 1 master * permanent

After (proper br0 ifindex):
$ bridge monitor fdb
e6:2a:ae:7a:b7:48 dev br0 vlan 1 master br0 permanent

v2: on error in br_vlan_init set br->vlgrp to NULL

[0] https://bugzilla.kernel.org/show_bug.cgi?id=204389

Reported-by: michael-dev <michael-dev@fami-braun.de>
Fixes: 5be5a2df40f0 ("bridge: Add filtering support for default_pvid")
Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
I tried a few different approaches to resolve this but they were all
unsuitable for some kernels, this approach can go to stables easily
and IMO is the way this had to be done from the start. Alternatively
we could move only the br_vlan_add and pair it with a br_vlan_del of
default_pvid on the same events, but I don't think it hurts to move
the whole init/deinit there as it'd help older stable releases as well.

I also tested the br_vlan_init error handling after the move by always
returning errors from all over it. Since errors at NETDEV_REGISTER cause
NETDEV_UNREGISTER we can deinit vlans properly for all cases regardless
why it happened (e.g. device destruction or init error).

 net/bridge/br.c         |  5 ++++-
 net/bridge/br_device.c  | 10 ----------
 net/bridge/br_private.h | 19 ++++---------------
 net/bridge/br_vlan.c    | 25 ++++++++++++++++++-------
 4 files changed, 26 insertions(+), 33 deletions(-)

diff --git a/net/bridge/br.c b/net/bridge/br.c
index d164f63a4345..8a8f9e5f264f 100644
--- a/net/bridge/br.c
+++ b/net/bridge/br.c
@@ -37,12 +37,15 @@ static int br_device_event(struct notifier_block *unused, unsigned long event, v
 	int err;
 
 	if (dev->priv_flags & IFF_EBRIDGE) {
+		err = br_vlan_bridge_event(dev, event, ptr);
+		if (err)
+			return notifier_from_errno(err);
+
 		if (event == NETDEV_REGISTER) {
 			/* register of bridge completed, add sysfs entries */
 			br_sysfs_addbr(dev);
 			return NOTIFY_DONE;
 		}
-		br_vlan_bridge_event(dev, event, ptr);
 	}
 
 	/* not a port of a bridge */
diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
index 681b72862c16..b3e3de2ecf95 100644
--- a/net/bridge/br_device.c
+++ b/net/bridge/br_device.c
@@ -135,18 +135,9 @@ static int br_dev_init(struct net_device *dev)
 		return err;
 	}
 
-	err = br_vlan_init(br);
-	if (err) {
-		free_percpu(br->stats);
-		br_mdb_hash_fini(br);
-		br_fdb_hash_fini(br);
-		return err;
-	}
-
 	err = br_multicast_init_stats(br);
 	if (err) {
 		free_percpu(br->stats);
-		br_vlan_flush(br);
 		br_mdb_hash_fini(br);
 		br_fdb_hash_fini(br);
 	}
@@ -161,7 +152,6 @@ static void br_dev_uninit(struct net_device *dev)
 
 	br_multicast_dev_del(br);
 	br_multicast_uninit_stats(br);
-	br_vlan_flush(br);
 	br_mdb_hash_fini(br);
 	br_fdb_hash_fini(br);
 	free_percpu(br->stats);
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index e8cf03b43b7d..96dd1c68d73f 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -872,7 +872,6 @@ struct sk_buff *br_handle_vlan(struct net_bridge *br,
 int br_vlan_add(struct net_bridge *br, u16 vid, u16 flags,
 		bool *changed, struct netlink_ext_ack *extack);
 int br_vlan_delete(struct net_bridge *br, u16 vid);
-void br_vlan_flush(struct net_bridge *br);
 struct net_bridge_vlan *br_vlan_find(struct net_bridge_vlan_group *vg, u16 vid);
 void br_recalculate_fwd_mask(struct net_bridge *br);
 int __br_vlan_filter_toggle(struct net_bridge *br, unsigned long val);
@@ -881,7 +880,6 @@ int __br_vlan_set_proto(struct net_bridge *br, __be16 proto);
 int br_vlan_set_proto(struct net_bridge *br, unsigned long val);
 int br_vlan_set_stats(struct net_bridge *br, unsigned long val);
 int br_vlan_set_stats_per_port(struct net_bridge *br, unsigned long val);
-int br_vlan_init(struct net_bridge *br);
 int br_vlan_set_default_pvid(struct net_bridge *br, unsigned long val);
 int __br_vlan_set_default_pvid(struct net_bridge *br, u16 pvid,
 			       struct netlink_ext_ack *extack);
@@ -894,8 +892,8 @@ int nbp_get_num_vlan_infos(struct net_bridge_port *p, u32 filter_mask);
 void br_vlan_get_stats(const struct net_bridge_vlan *v,
 		       struct br_vlan_stats *stats);
 void br_vlan_port_event(struct net_bridge_port *p, unsigned long event);
-void br_vlan_bridge_event(struct net_device *dev, unsigned long event,
-			  void *ptr);
+int br_vlan_bridge_event(struct net_device *dev, unsigned long event,
+			 void *ptr);
 
 static inline struct net_bridge_vlan_group *br_vlan_group(
 					const struct net_bridge *br)
@@ -988,19 +986,10 @@ static inline int br_vlan_delete(struct net_bridge *br, u16 vid)
 	return -EOPNOTSUPP;
 }
 
-static inline void br_vlan_flush(struct net_bridge *br)
-{
-}
-
 static inline void br_recalculate_fwd_mask(struct net_bridge *br)
 {
 }
 
-static inline int br_vlan_init(struct net_bridge *br)
-{
-	return 0;
-}
-
 static inline int nbp_vlan_add(struct net_bridge_port *port, u16 vid, u16 flags,
 			       bool *changed, struct netlink_ext_ack *extack)
 {
@@ -1085,8 +1074,8 @@ static inline void br_vlan_port_event(struct net_bridge_port *p,
 {
 }
 
-static inline void br_vlan_bridge_event(struct net_device *dev,
-					unsigned long event, void *ptr)
+static inline int br_vlan_bridge_event(struct net_device *dev,
+				       unsigned long event, void *ptr)
 {
 }
 #endif
diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index a544e161c7fa..6a17408b4eb8 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -709,7 +709,7 @@ int br_vlan_delete(struct net_bridge *br, u16 vid)
 	return __vlan_del(v);
 }
 
-void br_vlan_flush(struct net_bridge *br)
+static void br_vlan_flush(struct net_bridge *br)
 {
 	struct net_bridge_vlan_group *vg;
 
@@ -721,6 +721,8 @@ void br_vlan_flush(struct net_bridge *br)
 	br_fdb_delete_by_port(br, NULL, 0, 1);
 
 	vg = br_vlan_group(br);
+	if (!vg)
+		return;
 	__vlan_flush(vg);
 	RCU_INIT_POINTER(br->vlgrp, NULL);
 	synchronize_rcu();
@@ -1054,7 +1056,7 @@ int br_vlan_set_default_pvid(struct net_bridge *br, unsigned long val)
 	return err;
 }
 
-int br_vlan_init(struct net_bridge *br)
+static int br_vlan_init(struct net_bridge *br)
 {
 	struct net_bridge_vlan_group *vg;
 	int ret = -ENOMEM;
@@ -1083,6 +1085,8 @@ int br_vlan_init(struct net_bridge *br)
 	return ret;
 
 err_vlan_add:
+	RCU_INIT_POINTER(br->vlgrp, NULL);
+	synchronize_rcu();
 	vlan_tunnel_deinit(vg);
 err_tunnel_init:
 	rhashtable_destroy(&vg->vlan_hash);
@@ -1469,13 +1473,19 @@ static void nbp_vlan_set_vlan_dev_state(struct net_bridge_port *p, u16 vid)
 }
 
 /* Must be protected by RTNL. */
-void br_vlan_bridge_event(struct net_device *dev, unsigned long event,
-			  void *ptr)
+int br_vlan_bridge_event(struct net_device *dev, unsigned long event, void *ptr)
 {
 	struct netdev_notifier_changeupper_info *info;
-	struct net_bridge *br;
+	struct net_bridge *br = netdev_priv(dev);
+	int ret = 0;
 
 	switch (event) {
+	case NETDEV_REGISTER:
+		ret = br_vlan_init(br);
+		break;
+	case NETDEV_UNREGISTER:
+		br_vlan_flush(br);
+		break;
 	case NETDEV_CHANGEUPPER:
 		info = ptr;
 		br_vlan_upper_change(dev, info->upper_dev, info->linking);
@@ -1483,12 +1493,13 @@ void br_vlan_bridge_event(struct net_device *dev, unsigned long event,
 
 	case NETDEV_CHANGE:
 	case NETDEV_UP:
-		br = netdev_priv(dev);
 		if (!br_opt_get(br, BROPT_VLAN_BRIDGE_BINDING))
-			return;
+			break;
 		br_vlan_link_state_change(dev, br);
 		break;
 	}
+
+	return ret;
 }
 
 /* Must be protected by RTNL. */
-- 
2.21.0

