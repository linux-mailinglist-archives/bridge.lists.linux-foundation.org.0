Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6764E3B73DD
	for <lists.bridge@lfdr.de>; Tue, 29 Jun 2021 16:07:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5744C608D2;
	Tue, 29 Jun 2021 14:07:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PaAC14Jvnubw; Tue, 29 Jun 2021 14:07:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id B349F608C6;
	Tue, 29 Jun 2021 14:07:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 86E6CC0022;
	Tue, 29 Jun 2021 14:07:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 56D99C0025
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 47DF781D3A
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UlS2ukExMGsY for <bridge@lists.linux-foundation.org>;
 Tue, 29 Jun 2021 14:07:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3CDDF80FE8
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:26 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id l24so3359138edr.11
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 07:07:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K/TEUojgQc0mQf9PYYtvGuzO0QB8NhLn8ohvQagD+YQ=;
 b=qPT/rrVDiLEoxtCMVD7S9WgbPJqTlVaQvWtv17bth0Zdz1G9uMw2j89U3I78OnfU84
 Xqy1+0VpST+xo8Duo4PUOdC5JgSl2PX3NGar4S4ASHCeCR5o/nuhJptM9OEgj4uslT6J
 fVyudRLS8erHGmpEotLOCPM4M+4Haul2qL1gn4hsXTNKV6M1WRdm/Dl2JzD7lNv4py6J
 YbkXaG6hmVjUa6mBawgI3hkPoDxZ/HVpIYasxXFrgzNb0+0kS3mlafOqIJKjW87KSxqG
 Y7SuLgi79jPUEa4Fc208dGqshCEvdQyhuzfa4AUAfUF1j6S/yfcygMj3R+/RDBXohD8t
 BKcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K/TEUojgQc0mQf9PYYtvGuzO0QB8NhLn8ohvQagD+YQ=;
 b=JFNsbCEPl08HvtWN1d1jPicqCU0BV/k1LBpLT+WfZr0Iq/iE880zuS5UMjEHxwjfZn
 kfrT/0/zlRqy5QaMZnU4TMHeDsrJWfFvyOtJzc5nM2upEdUWq/QpUKRTk/COtLpcGvoY
 Wm7o6i2osTx/LaSxWHufF8Wb1XUF30qjWv+AN0GLv93cwtVXmt3zitarnVnQ4OiOThwJ
 lFZLd4Y2/7x9R1HFvvs4nRKc3QifFm64EPLXxzYZJ5Pvdi3+7dhl8GoK+harfKH+T3ox
 L9Pr9ZJyoOqupsHsoJ9VOvTpjFdpsbY9Z9nAGNbc+2eA+RoYwncN4f8fC8cdDF3GmCSD
 Q0iw==
X-Gm-Message-State: AOAM532vflcLI53tKRnRh9KlUWUUAAkeIwN55rwodpCZA6Y34qxBVb5E
 JHPzO77TIzJLHKwsPW+Lr8g=
X-Google-Smtp-Source: ABdhPJxflKF+y90jMgjib8UQ6b4m1WGgfOOoYMwzXxgwnp8YlBmfSnn+Rd+XfqYxzDMK3ulPYN9FYQ==
X-Received: by 2002:aa7:c44b:: with SMTP id n11mr39676108edr.83.1624975644423; 
 Tue, 29 Jun 2021 07:07:24 -0700 (PDT)
Received: from localhost.localdomain ([188.26.224.68])
 by smtp.gmail.com with ESMTPSA id b27sm8220121ejl.10.2021.06.29.07.07.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Jun 2021 07:07:24 -0700 (PDT)
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Date: Tue, 29 Jun 2021 17:06:51 +0300
Message-Id: <20210629140658.2510288-9-olteanv@gmail.com>
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
Subject: [Bridge] [PATCH v5 net-next 08/15] net: dsa: introduce a separate
	cross-chip notifier type for host FDBs
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

DSA treats some bridge FDB entries by trapping them to the CPU port.
Currently, the only class of such entries are FDB addresses learnt by
the software bridge on a foreign interface. However there are many more
to be added:

- FDB entries with the is_local flag (for termination) added by the
  bridge on the user ports (typically containing the MAC address of the
  bridge port)
- FDB entries pointing towards the bridge net device (for termination).
  Typically these contain the MAC address of the bridge net device.
- Static FDB entries installed on a foreign interface that is in the
  same bridge with a DSA user port.

The reason why a separate cross-chip notifier for host FDBs is justified
compared to normal FDBs is the same as in the case of host MDBs: the
cross-chip notifier matching function in switch.c should avoid
installing these entries on routing ports that route towards the
targeted switch, but not towards the CPU. This is required in order to
have proper support for H-like multi-chip topologies.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v4->v5: none

 net/dsa/dsa_priv.h |  7 +++++++
 net/dsa/port.c     | 26 ++++++++++++++++++++++++++
 net/dsa/slave.c    | 21 ++++++++++++++++-----
 net/dsa/switch.c   | 41 +++++++++++++++++++++++++++++++++++++++++
 4 files changed, 90 insertions(+), 5 deletions(-)

diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
index cd65933d269b..36e667ea94db 100644
--- a/net/dsa/dsa_priv.h
+++ b/net/dsa/dsa_priv.h
@@ -20,6 +20,8 @@ enum {
 	DSA_NOTIFIER_BRIDGE_LEAVE,
 	DSA_NOTIFIER_FDB_ADD,
 	DSA_NOTIFIER_FDB_DEL,
+	DSA_NOTIFIER_HOST_FDB_ADD,
+	DSA_NOTIFIER_HOST_FDB_DEL,
 	DSA_NOTIFIER_HSR_JOIN,
 	DSA_NOTIFIER_HSR_LEAVE,
 	DSA_NOTIFIER_LAG_CHANGE,
@@ -121,6 +123,7 @@ struct dsa_switchdev_event_work {
 	 */
 	unsigned char addr[ETH_ALEN];
 	u16 vid;
+	bool host_addr;
 };
 
 /* DSA_NOTIFIER_HSR_* */
@@ -211,6 +214,10 @@ int dsa_port_fdb_add(struct dsa_port *dp, const unsigned char *addr,
 		     u16 vid);
 int dsa_port_fdb_del(struct dsa_port *dp, const unsigned char *addr,
 		     u16 vid);
+int dsa_port_host_fdb_add(struct dsa_port *dp, const unsigned char *addr,
+			  u16 vid);
+int dsa_port_host_fdb_del(struct dsa_port *dp, const unsigned char *addr,
+			  u16 vid);
 int dsa_port_fdb_dump(struct dsa_port *dp, dsa_fdb_dump_cb_t *cb, void *data);
 int dsa_port_mdb_add(const struct dsa_port *dp,
 		     const struct switchdev_obj_port_mdb *mdb);
diff --git a/net/dsa/port.c b/net/dsa/port.c
index 47f45f795f44..1b80e0fbdfaa 100644
--- a/net/dsa/port.c
+++ b/net/dsa/port.c
@@ -646,6 +646,32 @@ int dsa_port_fdb_del(struct dsa_port *dp, const unsigned char *addr,
 	return dsa_port_notify(dp, DSA_NOTIFIER_FDB_DEL, &info);
 }
 
+int dsa_port_host_fdb_add(struct dsa_port *dp, const unsigned char *addr,
+			  u16 vid)
+{
+	struct dsa_notifier_fdb_info info = {
+		.sw_index = dp->ds->index,
+		.port = dp->index,
+		.addr = addr,
+		.vid = vid,
+	};
+
+	return dsa_port_notify(dp, DSA_NOTIFIER_HOST_FDB_ADD, &info);
+}
+
+int dsa_port_host_fdb_del(struct dsa_port *dp, const unsigned char *addr,
+			  u16 vid)
+{
+	struct dsa_notifier_fdb_info info = {
+		.sw_index = dp->ds->index,
+		.port = dp->index,
+		.addr = addr,
+		.vid = vid,
+	};
+
+	return dsa_port_notify(dp, DSA_NOTIFIER_HOST_FDB_DEL, &info);
+}
+
 int dsa_port_fdb_dump(struct dsa_port *dp, dsa_fdb_dump_cb_t *cb, void *data)
 {
 	struct dsa_switch *ds = dp->ds;
diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index 4b1d738bc3bc..ac7f4f200ab1 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -2315,8 +2315,12 @@ static void dsa_slave_switchdev_event_work(struct work_struct *work)
 	rtnl_lock();
 	switch (switchdev_work->event) {
 	case SWITCHDEV_FDB_ADD_TO_DEVICE:
-		err = dsa_port_fdb_add(dp, switchdev_work->addr,
-				       switchdev_work->vid);
+		if (switchdev_work->host_addr)
+			err = dsa_port_host_fdb_add(dp, switchdev_work->addr,
+						    switchdev_work->vid);
+		else
+			err = dsa_port_fdb_add(dp, switchdev_work->addr,
+					       switchdev_work->vid);
 		if (err) {
 			dev_err(ds->dev,
 				"port %d failed to add %pM vid %d to fdb: %d\n",
@@ -2328,8 +2332,12 @@ static void dsa_slave_switchdev_event_work(struct work_struct *work)
 		break;
 
 	case SWITCHDEV_FDB_DEL_TO_DEVICE:
-		err = dsa_port_fdb_del(dp, switchdev_work->addr,
-				       switchdev_work->vid);
+		if (switchdev_work->host_addr)
+			err = dsa_port_host_fdb_del(dp, switchdev_work->addr,
+						    switchdev_work->vid);
+		else
+			err = dsa_port_fdb_del(dp, switchdev_work->addr,
+					       switchdev_work->vid);
 		if (err) {
 			dev_err(ds->dev,
 				"port %d failed to delete %pM vid %d from fdb: %d\n",
@@ -2375,6 +2383,7 @@ static int dsa_slave_switchdev_event(struct notifier_block *unused,
 	struct net_device *dev = switchdev_notifier_info_to_dev(ptr);
 	const struct switchdev_notifier_fdb_info *fdb_info;
 	struct dsa_switchdev_event_work *switchdev_work;
+	bool host_addr = false;
 	struct dsa_port *dp;
 	int err;
 
@@ -2412,7 +2421,8 @@ static int dsa_slave_switchdev_event(struct notifier_block *unused,
 			if (!p)
 				return NOTIFY_DONE;
 
-			dp = p->dp->cpu_dp;
+			dp = p->dp;
+			host_addr = true;
 
 			if (!dp->ds->assisted_learning_on_cpu_port)
 				return NOTIFY_DONE;
@@ -2442,6 +2452,7 @@ static int dsa_slave_switchdev_event(struct notifier_block *unused,
 		ether_addr_copy(switchdev_work->addr,
 				fdb_info->addr);
 		switchdev_work->vid = fdb_info->vid;
+		switchdev_work->host_addr = host_addr;
 
 		/* Hold a reference on the slave for dsa_fdb_offload_notify */
 		if (dsa_is_user_port(dp->ds, dp->index))
diff --git a/net/dsa/switch.c b/net/dsa/switch.c
index 5439de029485..219fc9baaa1c 100644
--- a/net/dsa/switch.c
+++ b/net/dsa/switch.c
@@ -253,6 +253,41 @@ static int dsa_switch_do_mdb_del(struct dsa_switch *ds, int port,
 	return 0;
 }
 
+static int dsa_switch_host_fdb_add(struct dsa_switch *ds,
+				   struct dsa_notifier_fdb_info *info)
+{
+	int err = 0;
+	int port;
+
+	if (!ds->ops->port_fdb_add)
+		return -EOPNOTSUPP;
+
+	for (port = 0; port < ds->num_ports; port++) {
+		if (dsa_switch_host_address_match(ds, port, info->sw_index,
+						  info->port)) {
+			err = ds->ops->port_fdb_add(ds, port, info->addr,
+						    info->vid);
+			if (err)
+				break;
+		}
+	}
+
+	return err;
+}
+
+static int dsa_switch_host_fdb_del(struct dsa_switch *ds,
+				   struct dsa_notifier_fdb_info *info)
+{
+	if (!ds->ops->port_fdb_del)
+		return -EOPNOTSUPP;
+
+	if (ds->index == info->sw_index)
+		return ds->ops->port_fdb_del(ds, info->port, info->addr,
+					     info->vid);
+
+	return 0;
+}
+
 static int dsa_switch_fdb_add(struct dsa_switch *ds,
 			      struct dsa_notifier_fdb_info *info)
 {
@@ -560,6 +595,12 @@ static int dsa_switch_event(struct notifier_block *nb,
 	case DSA_NOTIFIER_FDB_DEL:
 		err = dsa_switch_fdb_del(ds, info);
 		break;
+	case DSA_NOTIFIER_HOST_FDB_ADD:
+		err = dsa_switch_host_fdb_add(ds, info);
+		break;
+	case DSA_NOTIFIER_HOST_FDB_DEL:
+		err = dsa_switch_host_fdb_del(ds, info);
+		break;
 	case DSA_NOTIFIER_HSR_JOIN:
 		err = dsa_switch_hsr_join(ds, info);
 		break;
-- 
2.25.1

