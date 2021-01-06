Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBEC2EBBDC
	for <lists.bridge@lfdr.de>; Wed,  6 Jan 2021 10:52:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EA90422D10;
	Wed,  6 Jan 2021 09:52:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PN+P0cM30Nav; Wed,  6 Jan 2021 09:52:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 81898204AC;
	Wed,  6 Jan 2021 09:52:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6809FC013A;
	Wed,  6 Jan 2021 09:52:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 48304C088B
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jan 2021 09:52:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2CB5D8721A
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jan 2021 09:52:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IGRjoGIoCRC7 for <bridge@lists.linux-foundation.org>;
 Wed,  6 Jan 2021 09:52:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
 [209.85.218.41])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 18D748721E
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jan 2021 09:52:12 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id n26so4233408eju.6
 for <bridge@lists.linux-foundation.org>; Wed, 06 Jan 2021 01:52:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sCI60LCZ1+oOYN2OaqOsvPgH+ncwP3mrKDvgQ0kdXH8=;
 b=o5qPM/NIfrqc2/DSnZtP9ZM8V+da04ThaFNS4dwFAQrzpZi7aZusnLa0zKHyLibWBf
 SZF7zvnJ4dpnL4rh9KkTp2jYtJ2N0fButXLmP2y6+aGDLk3dfBBrQv+LYQadn+k4DqX5
 9+RoPy+NWQLym1TjGykaKUcK2PHHWYFPd3MvN03hHhTKh305P5g8mfXQmAEKLAD6CMcc
 qurUdbSJQykDn3XaoI6SdgN2W2xzc9kklwE0C9NO93TfQ30vIM9f+KAr0sRyWV14SuzO
 eV5xzbnyZ99VvAOVMQAwLCLwylflabCggWwIpmU/t+4Q5NjdGc6siKt9iW/QDjzRK9M7
 /Abg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sCI60LCZ1+oOYN2OaqOsvPgH+ncwP3mrKDvgQ0kdXH8=;
 b=tJf1KIqlouFX4qEMdyN40tzRM7MuioUt9cP34lPvfb3GHXSx0p2IAZRNdMnL9ihYor
 qLv5P5K5hpP5QvHJnjV+dvO7Wh/dNqfxBBbP5XfebyHirjQLE5ng8zbmb1NhzQfZipHh
 W+RSgTiH3ZYlxVqmyTIvN9otnvHoY9w/lfSWuoZv0DtBAe5le6BjpuOjJBeizrBUcQUC
 SXg07bN9hOwdu7//bUtRBxR/thBN0D+xsG5oCRgjmfnbTZ58EfKIl+MsnVWlCTQFlpxu
 Hsu23QX8HCbqQSbydu5/kQ7aV9hWtI9HWHaER7owVZWLJCFJzhPdynjqMubA/Nse9dIB
 CgDg==
X-Gm-Message-State: AOAM530k1IOuvKjSmtjCfTb1gzkBfZFCLaF8O9gORV47USYgA7l1Btu6
 Kifw42WGbqhavYeNpjuw4B4=
X-Google-Smtp-Source: ABdhPJxn/hzsGCwb3PJ4c9drXUo5v8eBQ1PSMv3cGz1gk4Nx6CO9U3EtS2oxpXcZJLzaavYPYSvAMA==
X-Received: by 2002:a17:906:3513:: with SMTP id
 r19mr2230236eja.445.1609926730585; 
 Wed, 06 Jan 2021 01:52:10 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id n8sm1019587eju.33.2021.01.06.01.52.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Jan 2021 01:52:10 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 bridge@lists.linux-foundation.org, Roopa Prabhu <roopa@nvidia.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Date: Wed,  6 Jan 2021 11:51:32 +0200
Message-Id: <20210106095136.224739-4-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210106095136.224739-1-olteanv@gmail.com>
References: <20210106095136.224739-1-olteanv@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Jiri Pirko <jiri@resnulli.us>, Alexandra Winter <wintera@linux.ibm.com>,
 Ido Schimmel <idosch@idosch.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Marek Behun <marek.behun@nic.cz>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, UNGLinuxDriver@microchip.com,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: [Bridge] [PATCH v4 net-next 3/7] net: dsa: don't use
	switchdev_notifier_fdb_info in dsa_switchdev_event_work
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

Currently DSA doesn't add FDB entries on the CPU port, because it only
does so through switchdev, which is associated with a net_device, and
there are none of those for the CPU port.

But actually FDB addresses on the CPU port have some use cases of their
own, if the switchdev operations are initiated from within the DSA
layer. There is just one problem with the existing code: it passes a
structure in dsa_switchdev_event_work which was retrieved directly from
switchdev, so it contains a net_device. We need to generalize the
contents to something that covers the CPU port as well: the "ds, port"
tuple is fine for that.

Note that the new procedure for notifying the successful FDB offload is
inspired from the rocker model.

Also, nothing was being done if added_by_user was false. Let's check for
that a lot earlier, and don't actually bother to schedule the worker
for nothing.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
---
Changes in v4:
None.

Changes in v3:
None.

Changes in v2:
Small cosmetic changes (reverse Christmas notation)

 net/dsa/dsa_priv.h |  12 +++++
 net/dsa/slave.c    | 106 ++++++++++++++++++++++-----------------------
 2 files changed, 65 insertions(+), 53 deletions(-)

diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
index 7c96aae9062c..c04225f74929 100644
--- a/net/dsa/dsa_priv.h
+++ b/net/dsa/dsa_priv.h
@@ -73,6 +73,18 @@ struct dsa_notifier_mtu_info {
 	int mtu;
 };
 
+struct dsa_switchdev_event_work {
+	struct dsa_switch *ds;
+	int port;
+	struct work_struct work;
+	unsigned long event;
+	/* Specific for SWITCHDEV_FDB_ADD_TO_DEVICE and
+	 * SWITCHDEV_FDB_DEL_TO_DEVICE
+	 */
+	unsigned char addr[ETH_ALEN];
+	u16 vid;
+};
+
 struct dsa_slave_priv {
 	/* Copy of CPU port xmit for faster access in slave transmit hot path */
 	struct sk_buff *	(*xmit)(struct sk_buff *skb,
diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index d5d389300124..5e4fb44c2820 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -2047,76 +2047,66 @@ static int dsa_slave_netdevice_event(struct notifier_block *nb,
 	return NOTIFY_DONE;
 }
 
-struct dsa_switchdev_event_work {
-	struct work_struct work;
-	struct switchdev_notifier_fdb_info fdb_info;
-	struct net_device *dev;
-	unsigned long event;
-};
+static void
+dsa_fdb_offload_notify(struct dsa_switchdev_event_work *switchdev_work)
+{
+	struct dsa_switch *ds = switchdev_work->ds;
+	struct switchdev_notifier_fdb_info info;
+	struct dsa_port *dp;
+
+	if (!dsa_is_user_port(ds, switchdev_work->port))
+		return;
+
+	info.addr = switchdev_work->addr;
+	info.vid = switchdev_work->vid;
+	info.offloaded = true;
+	dp = dsa_to_port(ds, switchdev_work->port);
+	call_switchdev_notifiers(SWITCHDEV_FDB_OFFLOADED,
+				 dp->slave, &info.info, NULL);
+}
 
 static void dsa_slave_switchdev_event_work(struct work_struct *work)
 {
 	struct dsa_switchdev_event_work *switchdev_work =
 		container_of(work, struct dsa_switchdev_event_work, work);
-	struct net_device *dev = switchdev_work->dev;
-	struct switchdev_notifier_fdb_info *fdb_info;
-	struct dsa_port *dp = dsa_slave_to_port(dev);
+	struct dsa_switch *ds = switchdev_work->ds;
+	struct dsa_port *dp;
 	int err;
 
+	dp = dsa_to_port(ds, switchdev_work->port);
+
 	rtnl_lock();
 	switch (switchdev_work->event) {
 	case SWITCHDEV_FDB_ADD_TO_DEVICE:
-		fdb_info = &switchdev_work->fdb_info;
-		if (!fdb_info->added_by_user)
-			break;
-
-		err = dsa_port_fdb_add(dp, fdb_info->addr, fdb_info->vid);
+		err = dsa_port_fdb_add(dp, switchdev_work->addr,
+				       switchdev_work->vid);
 		if (err) {
-			netdev_err(dev,
-				   "failed to add %pM vid %d to fdb: %d\n",
-				   fdb_info->addr, fdb_info->vid, err);
+			dev_err(ds->dev,
+				"port %d failed to add %pM vid %d to fdb: %d\n",
+				dp->index, switchdev_work->addr,
+				switchdev_work->vid, err);
 			break;
 		}
-		fdb_info->offloaded = true;
-		call_switchdev_notifiers(SWITCHDEV_FDB_OFFLOADED, dev,
-					 &fdb_info->info, NULL);
+		dsa_fdb_offload_notify(switchdev_work);
 		break;
 
 	case SWITCHDEV_FDB_DEL_TO_DEVICE:
-		fdb_info = &switchdev_work->fdb_info;
-		if (!fdb_info->added_by_user)
-			break;
-
-		err = dsa_port_fdb_del(dp, fdb_info->addr, fdb_info->vid);
+		err = dsa_port_fdb_del(dp, switchdev_work->addr,
+				       switchdev_work->vid);
 		if (err) {
-			netdev_err(dev,
-				   "failed to delete %pM vid %d from fdb: %d\n",
-				   fdb_info->addr, fdb_info->vid, err);
+			dev_err(ds->dev,
+				"port %d failed to delete %pM vid %d from fdb: %d\n",
+				dp->index, switchdev_work->addr,
+				switchdev_work->vid, err);
 		}
 
 		break;
 	}
 	rtnl_unlock();
 
-	kfree(switchdev_work->fdb_info.addr);
 	kfree(switchdev_work);
-	dev_put(dev);
-}
-
-static int
-dsa_slave_switchdev_fdb_work_init(struct dsa_switchdev_event_work *
-				  switchdev_work,
-				  const struct switchdev_notifier_fdb_info *
-				  fdb_info)
-{
-	memcpy(&switchdev_work->fdb_info, fdb_info,
-	       sizeof(switchdev_work->fdb_info));
-	switchdev_work->fdb_info.addr = kzalloc(ETH_ALEN, GFP_ATOMIC);
-	if (!switchdev_work->fdb_info.addr)
-		return -ENOMEM;
-	ether_addr_copy((u8 *)switchdev_work->fdb_info.addr,
-			fdb_info->addr);
-	return 0;
+	if (dsa_is_user_port(ds, dp->index))
+		dev_put(dp->slave);
 }
 
 /* Called under rcu_read_lock() */
@@ -2124,7 +2114,9 @@ static int dsa_slave_switchdev_event(struct notifier_block *unused,
 				     unsigned long event, void *ptr)
 {
 	struct net_device *dev = switchdev_notifier_info_to_dev(ptr);
+	const struct switchdev_notifier_fdb_info *fdb_info;
 	struct dsa_switchdev_event_work *switchdev_work;
+	struct dsa_port *dp;
 	int err;
 
 	if (event == SWITCHDEV_PORT_ATTR_SET) {
@@ -2137,20 +2129,32 @@ static int dsa_slave_switchdev_event(struct notifier_block *unused,
 	if (!dsa_slave_dev_check(dev))
 		return NOTIFY_DONE;
 
+	dp = dsa_slave_to_port(dev);
+
 	switchdev_work = kzalloc(sizeof(*switchdev_work), GFP_ATOMIC);
 	if (!switchdev_work)
 		return NOTIFY_BAD;
 
 	INIT_WORK(&switchdev_work->work,
 		  dsa_slave_switchdev_event_work);
-	switchdev_work->dev = dev;
+	switchdev_work->ds = dp->ds;
+	switchdev_work->port = dp->index;
 	switchdev_work->event = event;
 
 	switch (event) {
 	case SWITCHDEV_FDB_ADD_TO_DEVICE:
 	case SWITCHDEV_FDB_DEL_TO_DEVICE:
-		if (dsa_slave_switchdev_fdb_work_init(switchdev_work, ptr))
-			goto err_fdb_work_init;
+		fdb_info = ptr;
+
+		if (!fdb_info->added_by_user) {
+			kfree(switchdev_work);
+			return NOTIFY_OK;
+		}
+
+		ether_addr_copy(switchdev_work->addr,
+				fdb_info->addr);
+		switchdev_work->vid = fdb_info->vid;
+
 		dev_hold(dev);
 		break;
 	default:
@@ -2160,10 +2164,6 @@ static int dsa_slave_switchdev_event(struct notifier_block *unused,
 
 	dsa_schedule_work(&switchdev_work->work);
 	return NOTIFY_OK;
-
-err_fdb_work_init:
-	kfree(switchdev_work);
-	return NOTIFY_BAD;
 }
 
 static int dsa_slave_switchdev_blocking_event(struct notifier_block *unused,
-- 
2.25.1

