Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8597936C09E
	for <lists.bridge@lfdr.de>; Tue, 27 Apr 2021 10:08:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 753B860B0E;
	Tue, 27 Apr 2021 08:08:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gDhnq_XzAW62; Tue, 27 Apr 2021 08:08:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5434D60B0C;
	Tue, 27 Apr 2021 08:08:30 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 83F05C0035;
	Tue, 27 Apr 2021 08:08:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 86B2CC000B
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 17:04:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6984983455
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 17:04:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20150623.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RvqdGj2FHDGF for <bridge@lists.linux-foundation.org>;
 Mon, 26 Apr 2021 17:04:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 71AF283443
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 17:04:51 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id h36so35195141lfv.7
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 10:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=9e8JRkG41zW/5KdiIxv2KB6MG/HZU7gsqYrz+vYOpJM=;
 b=HjoP7SFxBGd9DCxY6qTHb1EN6VrJ69lc1OJYEGtW/i50YnmGqpunHIhuv0lP131Zl6
 ASYDIPoJaspQR0Pm4YxugNQ9106oYo2MfrZpOQLqvbtuZmtbK4cReZBVDQ8yblBwpXoZ
 9KzoY9thc7onAqtVGBlaqGGFP1YnrZpEqF986de+U7liBMf3HEhQL60Bs3DRMZFeYhAl
 Vjs6G1L4sHcidEFUjhAtiaYtmPD1cykij0g4XDBWCENVMjAJJ+ZroXGKVrDIF5GuSzgi
 2SPhsOmwZvhVC8gdQAp5ZxfONiy2Mcm5nwMe9/YV3gqnteCUa58FN7cxNU8MktBBe48a
 yJ4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=9e8JRkG41zW/5KdiIxv2KB6MG/HZU7gsqYrz+vYOpJM=;
 b=J+l3WJly9FhstRYNREPReiazwGrK4y9UGyOxFqrx/XZAFRUaZ2raKSCCpZR2phqf08
 4uvEobDllK7JIB//t/FMvA81uLO9H90UoX1WjuB8cq23ABl1BmzOT0ACLzIoDneWdvzG
 NzYzcXgixbc9PtiUeirq8X87PWQkFltPeZe4f0X+17sMzdcYa7KQTUCXOTwtr/MS+XI4
 9747OXOJj6Fmsw1YWRcDmp+kKRp8g1bL2DiYZDlDh6KziOQHyReA6pHVmhmmQH7reHIs
 LPQSoC4gPjeoatvgu8yTtZNUUd58JGNBbnZYRtY2mxnQur0rxUImQOFhtkxW7RMozsHQ
 Q9Pw==
X-Gm-Message-State: AOAM530gaT6hYSOAABD8BwacIXhUHJuRAVr/1i3xIuMTOWnBMtAm1p2C
 Ses4GFMszXyvQ56aRVrglKd5FA==
X-Google-Smtp-Source: ABdhPJw0nXAc2CGqQhULo8nzWIi7CH+xSqi2Y1PfnvUMJVyeawnTqvpD8XUtE3Dh1ugNUxO6VY/bPw==
X-Received: by 2002:ac2:43b8:: with SMTP id t24mr13941382lfl.661.1619456689235; 
 Mon, 26 Apr 2021 10:04:49 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89])
 by smtp.gmail.com with ESMTPSA id c18sm59140ljd.66.2021.04.26.10.04.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Apr 2021 10:04:48 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Mon, 26 Apr 2021 19:04:05 +0200
Message-Id: <20210426170411.1789186-4-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210426170411.1789186-1-tobias@waldekranz.com>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 27 Apr 2021 08:08:26 +0000
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org, idosch@idosch.org,
 nikolay@nvidia.com, roopa@nvidia.com, olteanv@gmail.com,
 vivien.didelot@gmail.com
Subject: [Bridge] [RFC net-next 3/9] net: bridge: switchdev: Recycle unused
	hwdoms
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

Since hwdoms has thus far only been used for equality comparisons, the
bridge has used the simplest possible assignment policy; using a
counter to keep track of the last value handed out.

With the upcoming transmit offloading, we need to perform set
operations efficiently based on hwdoms, e.g. we want to answer
questions like "has this skb been forwarded to any port within this
hwdom?"

Move to a bitmap-based allocation scheme that recycles hwdoms once all
members leaves the bridge. This means that we can use a single
unsigned long to keep track of the hwdoms that have received an skb.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 net/bridge/br_if.c        |  4 +-
 net/bridge/br_private.h   | 29 +++++++++---
 net/bridge/br_switchdev.c | 94 ++++++++++++++++++++++++++-------------
 3 files changed, 87 insertions(+), 40 deletions(-)

diff --git a/net/bridge/br_if.c b/net/bridge/br_if.c
index 73fa703f8df5..adaf78e45c23 100644
--- a/net/bridge/br_if.c
+++ b/net/bridge/br_if.c
@@ -349,6 +349,7 @@ static void del_nbp(struct net_bridge_port *p)
 	nbp_backup_clear(p);
 
 	nbp_update_port_count(br);
+	nbp_switchdev_del(p);
 
 	netdev_upper_dev_unlink(dev, br->dev);
 
@@ -643,7 +644,7 @@ int br_add_if(struct net_bridge *br, struct net_device *dev,
 	if (err)
 		goto err5;
 
-	err = nbp_switchdev_hwdom_set(p);
+	err = nbp_switchdev_add(p);
 	if (err)
 		goto err6;
 
@@ -704,6 +705,7 @@ int br_add_if(struct net_bridge *br, struct net_device *dev,
 	list_del_rcu(&p->list);
 	br_fdb_delete_by_port(br, p, 0, 1);
 	nbp_update_port_count(br);
+	nbp_switchdev_del(p);
 err6:
 	netdev_upper_dev_unlink(dev, br->dev);
 err5:
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 53248715f631..aba92864d285 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -29,6 +29,8 @@
 
 #define BR_MULTICAST_DEFAULT_HASH_MAX 4096
 
+#define BR_HWDOM_MAX BITS_PER_LONG
+
 #define BR_VERSION	"2.3"
 
 /* Control of forwarding link local multicast */
@@ -54,6 +56,8 @@ typedef struct bridge_id bridge_id;
 typedef struct mac_addr mac_addr;
 typedef __u16 port_id;
 
+typedef DECLARE_BITMAP(br_hwdom_map_t, BR_HWDOM_MAX);
+
 struct bridge_id {
 	unsigned char	prio[2];
 	unsigned char	addr[ETH_ALEN];
@@ -472,7 +476,7 @@ struct net_bridge {
 	u32				auto_cnt;
 
 #ifdef CONFIG_NET_SWITCHDEV
-	int last_hwdom;
+	br_hwdom_map_t			busy_hwdoms;
 #endif
 	struct hlist_head		fdb_list;
 
@@ -1593,7 +1597,6 @@ static inline void br_sysfs_delbr(struct net_device *dev) { return; }
 
 /* br_switchdev.c */
 #ifdef CONFIG_NET_SWITCHDEV
-int nbp_switchdev_hwdom_set(struct net_bridge_port *p);
 void nbp_switchdev_frame_mark(const struct net_bridge_port *p,
 			      struct sk_buff *skb);
 bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
@@ -1607,17 +1610,15 @@ void br_switchdev_fdb_notify(const struct net_bridge_fdb_entry *fdb,
 int br_switchdev_port_vlan_add(struct net_device *dev, u16 vid, u16 flags,
 			       struct netlink_ext_ack *extack);
 int br_switchdev_port_vlan_del(struct net_device *dev, u16 vid);
+int nbp_switchdev_add(struct net_bridge_port *p);
+void nbp_switchdev_del(struct net_bridge_port *p);
+void br_switchdev_init(struct net_bridge *br);
 
 static inline void br_switchdev_frame_unmark(struct sk_buff *skb)
 {
 	skb->offload_fwd_mark = 0;
 }
 #else
-static inline int nbp_switchdev_hwdom_set(struct net_bridge_port *p)
-{
-	return 0;
-}
-
 static inline void nbp_switchdev_frame_mark(const struct net_bridge_port *p,
 					    struct sk_buff *skb)
 {
@@ -1657,6 +1658,20 @@ br_switchdev_fdb_notify(const struct net_bridge_fdb_entry *fdb, int type)
 static inline void br_switchdev_frame_unmark(struct sk_buff *skb)
 {
 }
+
+static inline int nbp_switchdev_add(struct net_bridge_port *p)
+{
+	return 0;
+}
+
+static inline void nbp_switchdev_del(struct net_bridge_port *p)
+{
+}
+
+static inline void br_switchdev_init(struct net_bridge *br)
+{
+}
+
 #endif /* CONFIG_NET_SWITCHDEV */
 
 /* br_arp_nd_proxy.c */
diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
index bc085077ae71..54bd7205bfb5 100644
--- a/net/bridge/br_switchdev.c
+++ b/net/bridge/br_switchdev.c
@@ -8,38 +8,6 @@
 
 #include "br_private.h"
 
-static int br_switchdev_hwdom_get(struct net_bridge *br, struct net_device *dev)
-{
-	struct net_bridge_port *p;
-
-	/* dev is yet to be added to the port list. */
-	list_for_each_entry(p, &br->port_list, list) {
-		if (netdev_port_same_parent_id(dev, p->dev))
-			return p->hwdom;
-	}
-
-	return ++br->last_hwdom;
-}
-
-int nbp_switchdev_hwdom_set(struct net_bridge_port *p)
-{
-	struct netdev_phys_item_id ppid = { };
-	int err;
-
-	ASSERT_RTNL();
-
-	err = dev_get_port_parent_id(p->dev, &ppid, true);
-	if (err) {
-		if (err == -EOPNOTSUPP)
-			return 0;
-		return err;
-	}
-
-	p->hwdom = br_switchdev_hwdom_get(p->br, p->dev);
-
-	return 0;
-}
-
 void nbp_switchdev_frame_mark(const struct net_bridge_port *p,
 			      struct sk_buff *skb)
 {
@@ -156,3 +124,65 @@ int br_switchdev_port_vlan_del(struct net_device *dev, u16 vid)
 
 	return switchdev_port_obj_del(dev, &v.obj);
 }
+
+static int nbp_switchdev_hwdom_set(struct net_bridge_port *joining)
+{
+	struct net_bridge *br = joining->br;
+	struct net_bridge_port *p;
+	int hwdom;
+
+	/* joining is yet to be added to the port list. */
+	list_for_each_entry(p, &br->port_list, list) {
+		if (netdev_port_same_parent_id(joining->dev, p->dev)) {
+			joining->hwdom = p->hwdom;
+			return 0;
+		}
+	}
+
+	hwdom = find_next_zero_bit(br->busy_hwdoms, BR_HWDOM_MAX, 1);
+	if (hwdom >= BR_HWDOM_MAX)
+		return -EBUSY;
+
+	set_bit(hwdom, br->busy_hwdoms);
+	joining->hwdom = hwdom;
+	return 0;
+}
+
+static void nbp_switchdev_hwdom_put(struct net_bridge_port *leaving)
+{
+	struct net_bridge *br = leaving->br;
+	struct net_bridge_port *p;
+
+	/* leaving is no longer in the port list. */
+	list_for_each_entry(p, &br->port_list, list) {
+		if (p->hwdom == leaving->hwdom)
+			return;
+	}
+
+	clear_bit(leaving->hwdom, br->busy_hwdoms);
+}
+
+int nbp_switchdev_add(struct net_bridge_port *p)
+{
+	struct netdev_phys_item_id ppid = { };
+	int err;
+
+	ASSERT_RTNL();
+
+	err = dev_get_port_parent_id(p->dev, &ppid, true);
+	if (err) {
+		if (err == -EOPNOTSUPP)
+			return 0;
+		return err;
+	}
+
+	return nbp_switchdev_hwdom_set(p);
+}
+
+void nbp_switchdev_del(struct net_bridge_port *p)
+{
+	ASSERT_RTNL();
+
+	if (p->hwdom)
+		nbp_switchdev_hwdom_put(p);
+}
-- 
2.25.1

