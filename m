Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBF78088E
	for <lists.bridge@lfdr.de>; Sun,  4 Aug 2019 00:52:35 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EB939D56;
	Sat,  3 Aug 2019 22:52:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 70D251005
	for <bridge@lists.linux-foundation.org>;
	Fri,  2 Aug 2019 10:57:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
	[209.85.128.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 713B9E7
	for <bridge@lists.linux-foundation.org>;
	Fri,  2 Aug 2019 10:57:44 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id 207so67533785wma.1
	for <bridge@lists.linux-foundation.org>;
	Fri, 02 Aug 2019 03:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=HOxQlIFWmUjxSMj0skXVy+XKLfpDbh6J098AyBp9yW0=;
	b=X2sniQBI8cUpLIIWi+4DIA6xFvBEzJZRGICfdR1YxwTFR+Aw/w0CI4NB6MEGwq++FO
	cpGKcylJLVNFpB0g9f+/ndr0jgT/w9qwa1yP5J4YUTQUa3NFBtAJP00rjjXkJLwks4vU
	3kn631kB6Jo7mvLpQVjXsfVDZqMhUCQ1kisfI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=HOxQlIFWmUjxSMj0skXVy+XKLfpDbh6J098AyBp9yW0=;
	b=Ex1MZCow1KPy3W5IN+v05PE52rI06F2K32ICO9XnGXZbZkpVWZWkam+nD/dZVm3bfG
	zD2qJc9k4LM0L+5Z3fCaXTBEau69EOEj5ReQcnln4/oOEjJbivUEObMebZ7Yxy2oFO4c
	AcB7iw+2YEbEAwBfgOhdYIwUdlDMjeaNTS22v0OCsplUIJktv+OjMA1FDpbOIGyzJ2rB
	cln/Blr/nS7g6YqkOtixzYxcCePPsG9ZTEKKW9fguhHb3bogq3WaAOinu94aOQuybj44
	sJMyYWdeOx445AKJhCRlKRqj1JicdjJL5X/Y0cAeGGxzzZv2ILXTXipgGIOACB+BgM6S
	PLbQ==
X-Gm-Message-State: APjAAAUa378YSBJE9m2W63nE8fHkgDo7VNTeYn4HVPJPtDDTukZ9RCad
	ZYZbcFgkTfhvs49psuh+dSy3Ew==
X-Google-Smtp-Source: APXvYqwj9P/LEJlzWRRhCDCBSlRS/dOcAG332UdnI+MclBO6qz5FceCIqzPSPnLVH0nmKW068MKz5Q==
X-Received: by 2002:a05:600c:1008:: with SMTP id
	c8mr4113542wmc.133.1564743462924; 
	Fri, 02 Aug 2019 03:57:42 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
	[84.238.136.197])
	by smtp.gmail.com with ESMTPSA id g2sm64401219wmh.0.2019.08.02.03.57.40
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Fri, 02 Aug 2019 03:57:42 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Fri,  2 Aug 2019 13:57:36 +0300
Message-Id: <20190802105736.26767-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <0a015a21-c1ae-e275-e675-431f08bece86@cumulusnetworks.com>
References: <0a015a21-c1ae-e275-e675-431f08bece86@cumulusnetworks.com>
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
Subject: [Bridge] [PATCH net v4] net: bridge: move default pvid init/deinit
	to NETDEV_REGISTER/UNREGISTER
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

Most of the bridge device's vlan init bugs come from the fact that its
default pvid is created at the wrong time, way too early in ndo_init()
before the device is even assigned an ifindex. It introduces a bug when the
bridge's dev_addr is added as fdb during the initial default pvid creation
the notification has ifindex/NDA_MASTER both equal to 0 (see example below)
which really makes no sense for user-space[0] and is wrong.
Usually user-space software would ignore such entries, but they are
actually valid and will eventually have all necessary attributes.
It makes much more sense to send a notification *after* the device has
registered and has a proper ifindex allocated rather than before when
there's a chance that the registration might still fail or to receive
it with ifindex/NDA_MASTER == 0. Note that we can remove the fdb flush
from br_vlan_flush() since that case can no longer happen. At
NETDEV_REGISTER br->default_pvid is always == 1 as it's initialized by
br_vlan_init() before that and at NETDEV_UNREGISTER it can be anything
depending why it was called (if called due to NETDEV_REGISTER error
it'll still be == 1, otherwise it could be any value changed during the
device life time).

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

v4: move only the default pvid init/deinit to NETDEV_REGISTER/UNREGISTER
v3: send the correct v2 patch with all changes (stub should return 0)
v2: on error in br_vlan_init set br->vlgrp to NULL and return 0 in
    the br_vlan_bridge_event stub when bridge vlans are disabled

[0] https://bugzilla.kernel.org/show_bug.cgi?id=204389

Reported-by: michael-dev <michael-dev@fami-braun.de>
Fixes: 5be5a2df40f0 ("bridge: Add filtering support for default_pvid")
Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
To test the patch I've added manual error conditions all over the bridge
init process to exercise all of the error handling paths.

This change is equivalent to v3 w.r.t. init ordering fixes, the core
of the problem was the default pvid init/deinit sequences being done
at wrong times, so we delay them until NETDEV_REGISTER/UNREGISTER.

 net/bridge/br.c         |  5 ++++-
 net/bridge/br_private.h |  9 +++++----
 net/bridge/br_vlan.c    | 34 ++++++++++++++++------------------
 3 files changed, 25 insertions(+), 23 deletions(-)

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
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index e8cf03b43b7d..646504db0220 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -894,8 +894,8 @@ int nbp_get_num_vlan_infos(struct net_bridge_port *p, u32 filter_mask);
 void br_vlan_get_stats(const struct net_bridge_vlan *v,
 		       struct br_vlan_stats *stats);
 void br_vlan_port_event(struct net_bridge_port *p, unsigned long event);
-void br_vlan_bridge_event(struct net_device *dev, unsigned long event,
-			  void *ptr);
+int br_vlan_bridge_event(struct net_device *dev, unsigned long event,
+			 void *ptr);
 
 static inline struct net_bridge_vlan_group *br_vlan_group(
 					const struct net_bridge *br)
@@ -1085,9 +1085,10 @@ static inline void br_vlan_port_event(struct net_bridge_port *p,
 {
 }
 
-static inline void br_vlan_bridge_event(struct net_device *dev,
-					unsigned long event, void *ptr)
+static inline int br_vlan_bridge_event(struct net_device *dev,
+				       unsigned long event, void *ptr)
 {
+	return 0;
 }
 #endif
 
diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index a544e161c7fa..f5b2aeebbfe9 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -715,11 +715,6 @@ void br_vlan_flush(struct net_bridge *br)
 
 	ASSERT_RTNL();
 
-	/* delete auto-added default pvid local fdb before flushing vlans
-	 * otherwise it will be leaked on bridge device init failure
-	 */
-	br_fdb_delete_by_port(br, NULL, 0, 1);
-
 	vg = br_vlan_group(br);
 	__vlan_flush(vg);
 	RCU_INIT_POINTER(br->vlgrp, NULL);
@@ -1058,7 +1053,6 @@ int br_vlan_init(struct net_bridge *br)
 {
 	struct net_bridge_vlan_group *vg;
 	int ret = -ENOMEM;
-	bool changed;
 
 	vg = kzalloc(sizeof(*vg), GFP_KERNEL);
 	if (!vg)
@@ -1073,17 +1067,10 @@ int br_vlan_init(struct net_bridge *br)
 	br->vlan_proto = htons(ETH_P_8021Q);
 	br->default_pvid = 1;
 	rcu_assign_pointer(br->vlgrp, vg);
-	ret = br_vlan_add(br, 1,
-			  BRIDGE_VLAN_INFO_PVID | BRIDGE_VLAN_INFO_UNTAGGED |
-			  BRIDGE_VLAN_INFO_BRENTRY, &changed, NULL);
-	if (ret)
-		goto err_vlan_add;
 
 out:
 	return ret;
 
-err_vlan_add:
-	vlan_tunnel_deinit(vg);
 err_tunnel_init:
 	rhashtable_destroy(&vg->vlan_hash);
 err_rhtbl:
@@ -1469,13 +1456,23 @@ static void nbp_vlan_set_vlan_dev_state(struct net_bridge_port *p, u16 vid)
 }
 
 /* Must be protected by RTNL. */
-void br_vlan_bridge_event(struct net_device *dev, unsigned long event,
-			  void *ptr)
+int br_vlan_bridge_event(struct net_device *dev, unsigned long event, void *ptr)
 {
 	struct netdev_notifier_changeupper_info *info;
-	struct net_bridge *br;
+	struct net_bridge *br = netdev_priv(dev);
+	bool changed;
+	int ret = 0;
 
 	switch (event) {
+	case NETDEV_REGISTER:
+		ret = br_vlan_add(br, br->default_pvid,
+				  BRIDGE_VLAN_INFO_PVID |
+				  BRIDGE_VLAN_INFO_UNTAGGED |
+				  BRIDGE_VLAN_INFO_BRENTRY, &changed, NULL);
+		break;
+	case NETDEV_UNREGISTER:
+		br_vlan_delete(br, br->default_pvid);
+		break;
 	case NETDEV_CHANGEUPPER:
 		info = ptr;
 		br_vlan_upper_change(dev, info->upper_dev, info->linking);
@@ -1483,12 +1480,13 @@ void br_vlan_bridge_event(struct net_device *dev, unsigned long event,
 
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

