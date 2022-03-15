Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E454D915D
	for <lists.bridge@lfdr.de>; Tue, 15 Mar 2022 01:26:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B74B415D1;
	Tue, 15 Mar 2022 00:26:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t0v0N9mv5mQt; Tue, 15 Mar 2022 00:26:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 1EDE7415C0;
	Tue, 15 Mar 2022 00:26:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D8CFFC0084;
	Tue, 15 Mar 2022 00:26:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0F4F9C0085
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 61392415BB
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8W2Ph0P0mMNX for <bridge@lists.linux-foundation.org>;
 Tue, 15 Mar 2022 00:26:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 74000415BF
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:34 +0000 (UTC)
Received: by mail-lf1-x130.google.com with SMTP id 3so30174981lfr.7
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 17:26:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=wdABQfDKWmkuhcjeBCHzTi8UwrhYcP2IXUi74HMe6wI=;
 b=yY6gIVVPkpOG4w4jap84wlbIy4nI6IUVGe/uL1xtTVs1JY/YNXrq2DAOhXYDVwUzIC
 20nco/6njKi399jCmVSGXmwncRFf8Bz7s93CFRCU35QEc2Ro7YUNiiqREsy7J6AAtgwU
 4jgElORuCG2NBMT50cHNG3anLZXmHfA5sHwUT+FQzHQBO89INa2LzNglk/JDgkRKM0ln
 3FwINkJJzgqG1JMD5BcLACIqQ7WzoCLNXJ3IwSlrWxLdrJ1dFd/JEWIlX+xKEMsfn/FC
 lomqGcEesRk2rXRbuQ0igoVTJdZV6TNhrPwjo7gXi0QLc+8/5AvXpx6jgx0ZtlPCrWQu
 osew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=wdABQfDKWmkuhcjeBCHzTi8UwrhYcP2IXUi74HMe6wI=;
 b=FeCf31uLRQX+ZnA3p63e+a6vW1waH5aoicIlyxiKMA+MX72WDmanfZspokYpsdTsmP
 YZ3AWOGQfT39mbWUUfIXOfJg6qtXdbYVz0fjMtGDfJbhwxEZ1uvvVIP26QrYnrbqpLOl
 oDwpPZ4Rq1qN1i5zA/5IdJ6OuKBvmujTWjGKasoNReAEfMdsSuKJZYjCpmSRABZUIaL6
 GWQ3TV2D2y9eiDlp7Be7y+ZfnL8Y+AfnGOfrj5JjnPHagM+fGqh8dMigkiCo7lGBThF7
 oHnDTE+tcjrB5Jcy5FHm4WNsFaQEqpkLroWtBesNadBVmw/Nguj3vudRI4CJkrasaf/O
 ggUw==
X-Gm-Message-State: AOAM532pyG1Dz+y6lQn15vy3mQRm0NblX4TV9FNpfrqnlglj+shAYHAR
 K1BzCUJKCM2E9FgJlKu3jzO9wQ==
X-Google-Smtp-Source: ABdhPJy8bex87DPl5mbWCNRsIve/EshrS8C1txujXLNirED39ZeltN1uRwPfznyH11gD1KgWXm41aw==
X-Received: by 2002:ac2:4e71:0:b0:448:2cf8:dafc with SMTP id
 y17-20020ac24e71000000b004482cf8dafcmr14809905lfs.558.1647303992219; 
 Mon, 14 Mar 2022 17:26:32 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 y14-20020a2e544e000000b0024800f8286bsm4219923ljd.78.2022.03.14.17.26.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 17:26:31 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue, 15 Mar 2022 01:25:40 +0100
Message-Id: <20220315002543.190587-13-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220315002543.190587-1-tobias@waldekranz.com>
References: <20220315002543.190587-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, Matt Johnston <matt@codeconstruct.com.au>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH v4 net-next 12/15] net: dsa: Handle MST state
	changes
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

Add the usual trampoline functionality from the generic DSA layer down
to the drivers for MST state changes.

When a state changes to disabled/blocking/listening, make sure to fast
age any dynamic entries in the affected VLANs (those controlled by the
MSTI in question).

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 include/net/dsa.h  |  3 ++
 net/dsa/dsa_priv.h |  2 ++
 net/dsa/port.c     | 70 +++++++++++++++++++++++++++++++++++++++++++---
 net/dsa/slave.c    |  6 ++++
 4 files changed, 77 insertions(+), 4 deletions(-)

diff --git a/include/net/dsa.h b/include/net/dsa.h
index 1ddaa2cc5842..0f369f2e9a97 100644
--- a/include/net/dsa.h
+++ b/include/net/dsa.h
@@ -945,7 +945,10 @@ struct dsa_switch_ops {
 				     struct dsa_bridge bridge);
 	void	(*port_stp_state_set)(struct dsa_switch *ds, int port,
 				      u8 state);
+	int	(*port_mst_state_set)(struct dsa_switch *ds, int port,
+				      const struct switchdev_mst_state *state);
 	void	(*port_fast_age)(struct dsa_switch *ds, int port);
+	int	(*port_vlan_fast_age)(struct dsa_switch *ds, int port, u16 vid);
 	int	(*port_pre_bridge_flags)(struct dsa_switch *ds, int port,
 					 struct switchdev_brport_flags flags,
 					 struct netlink_ext_ack *extack);
diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
index d90b4cf0c9d2..2ae8996cf7c8 100644
--- a/net/dsa/dsa_priv.h
+++ b/net/dsa/dsa_priv.h
@@ -215,6 +215,8 @@ static inline struct net_device *dsa_master_find_slave(struct net_device *dev,
 void dsa_port_set_tag_protocol(struct dsa_port *cpu_dp,
 			       const struct dsa_device_ops *tag_ops);
 int dsa_port_set_state(struct dsa_port *dp, u8 state, bool do_fast_age);
+int dsa_port_set_mst_state(struct dsa_port *dp,
+			   const struct switchdev_mst_state *state);
 int dsa_port_enable_rt(struct dsa_port *dp, struct phy_device *phy);
 int dsa_port_enable(struct dsa_port *dp, struct phy_device *phy);
 void dsa_port_disable_rt(struct dsa_port *dp);
diff --git a/net/dsa/port.c b/net/dsa/port.c
index 3ac114f6fc22..a2a817bb77b1 100644
--- a/net/dsa/port.c
+++ b/net/dsa/port.c
@@ -30,12 +30,11 @@ static int dsa_port_notify(const struct dsa_port *dp, unsigned long e, void *v)
 	return dsa_tree_notify(dp->ds->dst, e, v);
 }
 
-static void dsa_port_notify_bridge_fdb_flush(const struct dsa_port *dp)
+static void dsa_port_notify_bridge_fdb_flush(const struct dsa_port *dp, u16 vid)
 {
 	struct net_device *brport_dev = dsa_port_to_bridge_port(dp);
 	struct switchdev_notifier_fdb_info info = {
-		/* flush all VLANs */
-		.vid = 0,
+		.vid = vid,
 	};
 
 	/* When the port becomes standalone it has already left the bridge.
@@ -57,7 +56,42 @@ static void dsa_port_fast_age(const struct dsa_port *dp)
 
 	ds->ops->port_fast_age(ds, dp->index);
 
-	dsa_port_notify_bridge_fdb_flush(dp);
+	/* flush all VLANs */
+	dsa_port_notify_bridge_fdb_flush(dp, 0);
+}
+
+static int dsa_port_vlan_fast_age(const struct dsa_port *dp, u16 vid)
+{
+	struct dsa_switch *ds = dp->ds;
+	int err;
+
+	if (!ds->ops->port_vlan_fast_age)
+		return -EOPNOTSUPP;
+
+	err = ds->ops->port_vlan_fast_age(ds, dp->index, vid);
+
+	if (!err)
+		dsa_port_notify_bridge_fdb_flush(dp, vid);
+
+	return err;
+}
+
+static int dsa_port_msti_fast_age(const struct dsa_port *dp, u16 msti)
+{
+	DECLARE_BITMAP(vids, VLAN_N_VID) = { 0 };
+	int err, vid;
+
+	err = br_mst_get_info(dsa_port_bridge_dev_get(dp), msti, vids);
+	if (err)
+		return err;
+
+	for_each_set_bit(vid, vids, VLAN_N_VID) {
+		err = dsa_port_vlan_fast_age(dp, vid);
+		if (err)
+			return err;
+	}
+
+	return 0;
 }
 
 static bool dsa_port_can_configure_learning(struct dsa_port *dp)
@@ -118,6 +152,32 @@ static void dsa_port_set_state_now(struct dsa_port *dp, u8 state,
 		pr_err("DSA: failed to set STP state %u (%d)\n", state, err);
 }
 
+int dsa_port_set_mst_state(struct dsa_port *dp,
+			   const struct switchdev_mst_state *state)
+{
+	struct dsa_switch *ds = dp->ds;
+	int err;
+
+	if (!ds->ops->port_mst_state_set)
+		return -EOPNOTSUPP;
+
+	err = ds->ops->port_mst_state_set(ds, dp->index, state);
+	if (err)
+		return err;
+
+	if (dp->learning) {
+		switch (state->state) {
+		case BR_STATE_DISABLED:
+		case BR_STATE_BLOCKING:
+		case BR_STATE_LISTENING:
+			err = dsa_port_msti_fast_age(dp, state->msti);
+			break;
+		}
+	}
+
+	return err;
+}
+
 int dsa_port_enable_rt(struct dsa_port *dp, struct phy_device *phy)
 {
 	struct dsa_switch *ds = dp->ds;
@@ -326,6 +386,8 @@ static bool dsa_port_supports_mst(struct dsa_port *dp)
 	struct dsa_switch *ds = dp->ds;
 
 	return ds->ops->vlan_msti_set &&
+		ds->ops->port_mst_state_set &&
+		ds->ops->port_vlan_fast_age &&
 		dsa_port_can_configure_learning(dp);
 }
 
diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index 5e986cdeaae5..4300fc76f3af 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -450,6 +450,12 @@ static int dsa_slave_port_attr_set(struct net_device *dev, const void *ctx,
 
 		ret = dsa_port_set_state(dp, attr->u.stp_state, true);
 		break;
+	case SWITCHDEV_ATTR_ID_PORT_MST_STATE:
+		if (!dsa_port_offloads_bridge_port(dp, attr->orig_dev))
+			return -EOPNOTSUPP;
+
+		ret = dsa_port_set_mst_state(dp, &attr->u.mst_state);
+		break;
 	case SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING:
 		if (!dsa_port_offloads_bridge_dev(dp, attr->orig_dev))
 			return -EOPNOTSUPP;
-- 
2.25.1

