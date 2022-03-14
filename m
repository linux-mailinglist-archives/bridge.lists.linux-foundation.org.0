Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5484D7F1C
	for <lists.bridge@lfdr.de>; Mon, 14 Mar 2022 10:53:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 440F860EE0;
	Mon, 14 Mar 2022 09:53:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8wa6CwnlrDd9; Mon, 14 Mar 2022 09:53:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id A06F060EE4;
	Mon, 14 Mar 2022 09:53:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8647BC0070;
	Mon, 14 Mar 2022 09:53:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 68472C000B
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:53:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 499C860ED5
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:53:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lemtfYU9X6Oh for <bridge@lists.linux-foundation.org>;
 Mon, 14 Mar 2022 09:53:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com
 [IPv6:2a00:1450:4864:20::22e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5981660EE0
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:53:13 +0000 (UTC)
Received: by mail-lj1-x22e.google.com with SMTP id u3so21042517ljd.0
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 02:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=VPLokXA4rF+Ts9mahvqoV5g64lUVB9slMC7n8bkBW54=;
 b=bH1DOEyhDcXKVXTGes3loODY1GfjMVrj4RxhB/iKfZway5BT2B9E8m8HQWPG1FOOAf
 6equ1WQhPhgVR9L5QKWSL4I2FOdapCl+1FAa8eBDjmID9mQ/afE7AEHwmY3vUYYk5z1b
 gEM/9JQyU8M7RiZi8y1u7MCBBgG1JufO8U7503knrQEWLcR8EVgi+j4WRIIppeF6lgP2
 PBQMpWVcOfRBDKCVYZimYiktD24yEQAwC2OzbTO2I0Z55z5/MlGs1vZEF22BVDPDAJsr
 XIYkjZnxw4e3ZDinllrX68D9limDJv52+UvwSplyrIvlJTR5OrCtyQ2BjQL8skWxskUR
 qKXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=VPLokXA4rF+Ts9mahvqoV5g64lUVB9slMC7n8bkBW54=;
 b=iXM1+4VswQh99vxYHPqaH4cKq2/gksMd8oC6LGzGntyACeD8y50Mx3jGbHmD3vfabP
 AOOB5dMfcXMMfCAAgZfvUCIk6bO5BE/YGQgrT+WxSj2VD1ogHf5gtFMwbe4LGBhSO7Tt
 Zf+X/u7DAYCEzpfsRBPsBsu9c3+70riJMBEYkJ/Xu11JCO8JuLaG0SjKLBMN4ggQmk/k
 ca3VprQns8DpLiA6ZMrLRRxufhLA5zUZ/ZF2z+MAvdyTfGELbBKFpFq8ERfSAOGmizoU
 0JUqsfh8S7JWoB+D4KgxQM7zQr0yKlpNkuTJlvJh30GJzVdtpee1yQsyOnn2MmgNIXz/
 0Haw==
X-Gm-Message-State: AOAM531sAQZevB6lljLxr5roxd/KYJiixlDMUSilfbQzaMWjqTpkw58x
 eQfNlSOeV+1GAjOeIycsSsCuGg==
X-Google-Smtp-Source: ABdhPJxzTSBGBt9AW4I+k113a2N35M81EjEMeBOc7jhCSHs3u0PEqjzqqLOLyDSl0I78RbNq5EyqVw==
X-Received: by 2002:a2e:9197:0:b0:246:35d1:36c5 with SMTP id
 f23-20020a2e9197000000b0024635d136c5mr13470980ljg.512.1647251591284; 
 Mon, 14 Mar 2022 02:53:11 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 b3-20020a056512304300b004488e49f2fasm984870lfb.129.2022.03.14.02.53.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 02:53:10 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Mon, 14 Mar 2022 10:52:28 +0100
Message-Id: <20220314095231.3486931-12-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220314095231.3486931-1-tobias@waldekranz.com>
References: <20220314095231.3486931-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, Petr Machata <petrm@nvidia.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, Matt Johnston <matt@codeconstruct.com.au>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH v3 net-next 11/14] net: dsa: Handle MST state
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
 include/net/dsa.h  |  3 +++
 net/dsa/dsa_priv.h |  2 ++
 net/dsa/port.c     | 67 +++++++++++++++++++++++++++++++++++++++++++---
 net/dsa/slave.c    |  6 +++++
 4 files changed, 74 insertions(+), 4 deletions(-)

diff --git a/include/net/dsa.h b/include/net/dsa.h
index 1ddaa2cc5842..a171e7cdb3fe 100644
--- a/include/net/dsa.h
+++ b/include/net/dsa.h
@@ -945,7 +945,10 @@ struct dsa_switch_ops {
 				     struct dsa_bridge bridge);
 	void	(*port_stp_state_set)(struct dsa_switch *ds, int port,
 				      u8 state);
+	int	(*port_mst_state_set)(struct dsa_switch *ds, int port,
+				      const struct switchdev_mst_state *state);
 	void	(*port_fast_age)(struct dsa_switch *ds, int port);
+	void	(*port_vlan_fast_age)(struct dsa_switch *ds, int port, u16 vid);
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
index f6a822d854cc..223681e03321 100644
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
@@ -57,7 +56,39 @@ static void dsa_port_fast_age(const struct dsa_port *dp)
 
 	ds->ops->port_fast_age(ds, dp->index);
 
-	dsa_port_notify_bridge_fdb_flush(dp);
+	dsa_port_notify_bridge_fdb_flush(dp, 0);
+}
+
+static void dsa_port_vlan_fast_age(const struct dsa_port *dp, u16 vid)
+{
+	struct dsa_switch *ds = dp->ds;
+
+	if (!ds->ops->port_vlan_fast_age)
+		return;
+
+	ds->ops->port_vlan_fast_age(ds, dp->index, vid);
+
+	dsa_port_notify_bridge_fdb_flush(dp, vid);
+}
+
+static void dsa_port_msti_fast_age(const struct dsa_port *dp, u16 msti)
+{
+	unsigned long *vids;
+	int vid;
+
+	vids = bitmap_zalloc(VLAN_N_VID, 0);
+	if (!vids)
+		return;
+
+	if (br_mst_get_info(dsa_port_bridge_dev_get(dp), msti, vids))
+		goto out_free;
+
+	for_each_set_bit(vid, vids, VLAN_N_VID) {
+		dsa_port_vlan_fast_age(dp, vid);
+	}
+
+out_free:
+	kfree(vids);
 }
 
 static bool dsa_port_can_configure_learning(struct dsa_port *dp)
@@ -118,6 +149,32 @@ static void dsa_port_set_state_now(struct dsa_port *dp, u8 state,
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
+			dsa_port_msti_fast_age(dp, state->msti);
+			break;
+		}
+	}
+
+	return 0;
+}
+
 int dsa_port_enable_rt(struct dsa_port *dp, struct phy_device *phy)
 {
 	struct dsa_switch *ds = dp->ds;
@@ -748,6 +805,8 @@ int dsa_port_mst_enable(struct dsa_port *dp, bool on,
 		return 0;
 
 	if (!(ds->ops->vlan_msti_set &&
+	      ds->ops->port_mst_state_set &&
+	      ds->ops->port_vlan_fast_age &&
 	      dsa_port_can_configure_learning(dp))) {
 		NL_SET_ERR_MSG_MOD(extack, "Hardware does not support MST");
 		return -EINVAL;
diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index cd2c57de9592..106b177ad1eb 100644
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

