Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9E091040
	for <lists.bridge@lfdr.de>; Sat, 17 Aug 2019 13:23:42 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 74B91C79;
	Sat, 17 Aug 2019 11:22:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 83993B6D
	for <bridge@lists.linux-foundation.org>;
	Sat, 17 Aug 2019 11:22:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A2F1863D
	for <bridge@lists.linux-foundation.org>;
	Sat, 17 Aug 2019 11:22:31 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id c3so3971430wrd.7
	for <bridge@lists.linux-foundation.org>;
	Sat, 17 Aug 2019 04:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=BIhN0NCeXX6XtngY93qhTFsAXFd/Y27EwjCsb1YM6v8=;
	b=Cj4p2pYcCXun/17OMFy2SHlNQ5JR35gNan+u0T7L2QTJet82PMiI2yX/LRr6EtjU5d
	8kCZfmSH6TE1Sv5RUIOOrb4Z4+Z/qxXugxMLF/SKVHYO7RYxeVTqO+KwxbTQMqcAGqoB
	U/mN0G6Z6zYJsCL70ZLyC6MkGEphV2QHGc/ag=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=BIhN0NCeXX6XtngY93qhTFsAXFd/Y27EwjCsb1YM6v8=;
	b=BRR8TRMEcQe1dXWmkgG7CMyXaeUJtfiKcQQ/Wu+De01BKC8K6KOd60fwAV9nzJMksW
	IPlUIlnoXPLd3grOae+FcKNwoXrXesvP50vy4EaHHmikyAyloMKJ1o0578m6hcyo7emY
	x1gLELf1+OzWPi6tA2AXOiy+myTZsqrc5NNAE0wUuRX9KsjPOHc4XUmlhjzgeEhqfl/b
	FlARP6mKuzkleQjgwetAsx6LY/wwE3Uf5P9P1xkstTEvg/scYXY80cfmWnPL6N0Uvkjt
	Pt+uJKy0xYLu5Zmtk8sA0sSwsIjWs81I7ucq7G/525A4oNSBy6ZA39Een1Aci0bS6WUB
	/+Fg==
X-Gm-Message-State: APjAAAU9OsJ0qzu6nykYOG5v57AAVUA7uAOLgwfFvj+5AQ67B6JSMlx6
	UdoBBNtMlvLevsvdufJkg60QJQ==
X-Google-Smtp-Source: APXvYqwHw3JGbvphNgPBpEXOSUwN8P2M3G29hmc1MJl5xcfBWLc0p6AFvumPopevQAwnja1xo+q+yA==
X-Received: by 2002:adf:f204:: with SMTP id p4mr16615317wro.317.1566040950277; 
	Sat, 17 Aug 2019 04:22:30 -0700 (PDT)
Received: from debil.localdomain (84-238-136-197.ip.btc-net.bg.
	[84.238.136.197]) by smtp.gmail.com with ESMTPSA id
	o14sm13900244wrg.64.2019.08.17.04.22.29
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sat, 17 Aug 2019 04:22:29 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Sat, 17 Aug 2019 14:22:13 +0300
Message-Id: <20190817112213.27097-5-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190817112213.27097-1-nikolay@cumulusnetworks.com>
References: <20190816.130417.1610388599335442981.davem@davemloft.net>
	<20190817112213.27097-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
	roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	davem@davemloft.net
Subject: [Bridge] [PATCH net-next v3 4/4] net: bridge: mdb: allow add/delete
	for host-joined groups
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

Currently this is needed only for user-space compatibility, so similar
object adds/deletes as the dumped ones would succeed. Later it can be
used for L2 mcast MAC add/delete.

v3: fix compiler warning (DaveM)
v2: don't send a notification when used from user-space, arm the group
    timer if no ports are left after host entry del

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_mdb.c       | 78 +++++++++++++++++++++++++++------------
 net/bridge/br_multicast.c | 30 +++++++++++----
 net/bridge/br_private.h   |  2 +
 3 files changed, 80 insertions(+), 30 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 985273425117..44594635a972 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -616,6 +616,19 @@ static int br_mdb_add_group(struct net_bridge *br, struct net_bridge_port *port,
 			return err;
 	}
 
+	/* host join */
+	if (!port) {
+		/* don't allow any flags for host-joined groups */
+		if (state)
+			return -EINVAL;
+		if (mp->host_joined)
+			return -EEXIST;
+
+		br_multicast_host_join(mp, false);
+
+		return 0;
+	}
+
 	for (pp = &mp->ports;
 	     (p = mlock_dereference(*pp, br)) != NULL;
 	     pp = &p->next) {
@@ -640,19 +653,21 @@ static int __br_mdb_add(struct net *net, struct net_bridge *br,
 {
 	struct br_ip ip;
 	struct net_device *dev;
-	struct net_bridge_port *p;
+	struct net_bridge_port *p = NULL;
 	int ret;
 
 	if (!netif_running(br->dev) || !br_opt_get(br, BROPT_MULTICAST_ENABLED))
 		return -EINVAL;
 
-	dev = __dev_get_by_index(net, entry->ifindex);
-	if (!dev)
-		return -ENODEV;
+	if (entry->ifindex != br->dev->ifindex) {
+		dev = __dev_get_by_index(net, entry->ifindex);
+		if (!dev)
+			return -ENODEV;
 
-	p = br_port_get_rtnl(dev);
-	if (!p || p->br != br || p->state == BR_STATE_DISABLED)
-		return -EINVAL;
+		p = br_port_get_rtnl(dev);
+		if (!p || p->br != br || p->state == BR_STATE_DISABLED)
+			return -EINVAL;
+	}
 
 	__mdb_entry_to_br_ip(entry, &ip);
 
@@ -667,9 +682,9 @@ static int br_mdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 {
 	struct net *net = sock_net(skb->sk);
 	struct net_bridge_vlan_group *vg;
+	struct net_bridge_port *p = NULL;
 	struct net_device *dev, *pdev;
 	struct br_mdb_entry *entry;
-	struct net_bridge_port *p;
 	struct net_bridge_vlan *v;
 	struct net_bridge *br;
 	int err;
@@ -680,15 +695,19 @@ static int br_mdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 
 	br = netdev_priv(dev);
 
-	pdev = __dev_get_by_index(net, entry->ifindex);
-	if (!pdev)
-		return -ENODEV;
+	if (entry->ifindex != br->dev->ifindex) {
+		pdev = __dev_get_by_index(net, entry->ifindex);
+		if (!pdev)
+			return -ENODEV;
 
-	p = br_port_get_rtnl(pdev);
-	if (!p || p->br != br || p->state == BR_STATE_DISABLED)
-		return -EINVAL;
+		p = br_port_get_rtnl(pdev);
+		if (!p || p->br != br || p->state == BR_STATE_DISABLED)
+			return -EINVAL;
+		vg = nbp_vlan_group(p);
+	} else {
+		vg = br_vlan_group(br);
+	}
 
-	vg = nbp_vlan_group(p);
 	/* If vlan filtering is enabled and VLAN is not specified
 	 * install mdb entry on all vlans configured on the port.
 	 */
@@ -727,6 +746,15 @@ static int __br_mdb_del(struct net_bridge *br, struct br_mdb_entry *entry)
 	if (!mp)
 		goto unlock;
 
+	/* host leave */
+	if (entry->ifindex == mp->br->dev->ifindex && mp->host_joined) {
+		br_multicast_host_leave(mp, false);
+		err = 0;
+		if (!mp->ports && netif_running(br->dev))
+			mod_timer(&mp->timer, jiffies);
+		goto unlock;
+	}
+
 	for (pp = &mp->ports;
 	     (p = mlock_dereference(*pp, br)) != NULL;
 	     pp = &p->next) {
@@ -759,9 +787,9 @@ static int br_mdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 {
 	struct net *net = sock_net(skb->sk);
 	struct net_bridge_vlan_group *vg;
+	struct net_bridge_port *p = NULL;
 	struct net_device *dev, *pdev;
 	struct br_mdb_entry *entry;
-	struct net_bridge_port *p;
 	struct net_bridge_vlan *v;
 	struct net_bridge *br;
 	int err;
@@ -772,15 +800,19 @@ static int br_mdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 
 	br = netdev_priv(dev);
 
-	pdev = __dev_get_by_index(net, entry->ifindex);
-	if (!pdev)
-		return -ENODEV;
+	if (entry->ifindex != br->dev->ifindex) {
+		pdev = __dev_get_by_index(net, entry->ifindex);
+		if (!pdev)
+			return -ENODEV;
 
-	p = br_port_get_rtnl(pdev);
-	if (!p || p->br != br || p->state == BR_STATE_DISABLED)
-		return -EINVAL;
+		p = br_port_get_rtnl(pdev);
+		if (!p || p->br != br || p->state == BR_STATE_DISABLED)
+			return -EINVAL;
+		vg = nbp_vlan_group(p);
+	} else {
+		vg = br_vlan_group(br);
+	}
 
-	vg = nbp_vlan_group(p);
 	/* If vlan filtering is enabled and VLAN is not specified
 	 * delete mdb entry on all vlans configured on the port.
 	 */
diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 9b379e110129..ad12fe3fca8c 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -148,8 +148,7 @@ static void br_multicast_group_expired(struct timer_list *t)
 	if (!netif_running(br->dev) || timer_pending(&mp->timer))
 		goto out;
 
-	mp->host_joined = false;
-	br_mdb_notify(br->dev, NULL, &mp->addr, RTM_DELMDB, 0);
+	br_multicast_host_leave(mp, true);
 
 	if (mp->ports)
 		goto out;
@@ -512,6 +511,27 @@ static bool br_port_group_equal(struct net_bridge_port_group *p,
 	return ether_addr_equal(src, p->eth_addr);
 }
 
+void br_multicast_host_join(struct net_bridge_mdb_entry *mp, bool notify)
+{
+	if (!mp->host_joined) {
+		mp->host_joined = true;
+		if (notify)
+			br_mdb_notify(mp->br->dev, NULL, &mp->addr,
+				      RTM_NEWMDB, 0);
+	}
+	mod_timer(&mp->timer, jiffies + mp->br->multicast_membership_interval);
+}
+
+void br_multicast_host_leave(struct net_bridge_mdb_entry *mp, bool notify)
+{
+	if (!mp->host_joined)
+		return;
+
+	mp->host_joined = false;
+	if (notify)
+		br_mdb_notify(mp->br->dev, NULL, &mp->addr, RTM_DELMDB, 0);
+}
+
 static int br_multicast_add_group(struct net_bridge *br,
 				  struct net_bridge_port *port,
 				  struct br_ip *group,
@@ -534,11 +554,7 @@ static int br_multicast_add_group(struct net_bridge *br,
 		goto err;
 
 	if (!port) {
-		if (!mp->host_joined) {
-			mp->host_joined = true;
-			br_mdb_notify(br->dev, NULL, &mp->addr, RTM_NEWMDB, 0);
-		}
-		mod_timer(&mp->timer, now + br->multicast_membership_interval);
+		br_multicast_host_join(mp, true);
 		goto out;
 	}
 
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index b7a4942ff1b3..ce2ab14ee605 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -702,6 +702,8 @@ void br_multicast_get_stats(const struct net_bridge *br,
 			    struct br_mcast_stats *dest);
 void br_mdb_init(void);
 void br_mdb_uninit(void);
+void br_multicast_host_join(struct net_bridge_mdb_entry *mp, bool notify);
+void br_multicast_host_leave(struct net_bridge_mdb_entry *mp, bool notify);
 
 #define mlock_dereference(X, br) \
 	rcu_dereference_protected(X, lockdep_is_held(&br->multicast_lock))
-- 
2.21.0

