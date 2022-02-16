Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 02BBF4B89FC
	for <lists.bridge@lfdr.de>; Wed, 16 Feb 2022 14:30:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C5D960ACC;
	Wed, 16 Feb 2022 13:30:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SlIBKKo7tO5q; Wed, 16 Feb 2022 13:30:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id AEDAE61043;
	Wed, 16 Feb 2022 13:30:33 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6B482C0073;
	Wed, 16 Feb 2022 13:30:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ADEBFC007A
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 13:30:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A273A60FCF
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 13:30:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4J9Cmk2uqGQS for <bridge@lists.linux-foundation.org>;
 Wed, 16 Feb 2022 13:30:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AA75E60ACC
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 13:30:29 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id p29so2941413lfa.3
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 05:30:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=cB26irAVuZwgNbEFS2NIqDPkpe7vp7yzpsmTQMM5rLM=;
 b=uPIDQeX7oc2WSeCALfzmEetKxr7dbxXYjQ+wziKJoKb/BtdBPLPbLjZiTrubzjScbg
 ZGuhh0jF8MSrl2nsbmravglWDZ2yny96hMFByFSyLRXXr3GKCocOVtaM6RT/F2qSAabo
 2OSZaAb3m88zWumgY9rqUyk9zBkjVhOMNnBaxByHxj12hWiNwmzA26mLec+PBWB2Xk7x
 JjX/+rEMoiEdmf3QZtS9aF75KfkwdUsjLtglwt0C+P3sZZY8TleUYAE+VF8ChIQ04lL7
 XKw0rVTPBoSJ7JqH/S4uMMwSEvwjuaA9c4JolSs0B3I297r7yLFsfSfvPafx8mY71FUb
 sg2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=cB26irAVuZwgNbEFS2NIqDPkpe7vp7yzpsmTQMM5rLM=;
 b=auTrRIxDsyV+//NYc2jLmZ95Mj9+mUaa5pja62H3l2plH5S6DiN/KCeuIfY+2+Uu6g
 SZ4n+jzPibEC3zpL/WisQzKttDXenjhzKrmMpqN973PrUroqHdrq/xnNY1rsqpxS15Db
 P3p8adoUnklVHcQha2nDCeMTp91SWVrBSCIOpf+6ubwf927UYk8/dAv8Zv92TNsFshwE
 e05lW2vNtsCc3kHfddn27TCzCOBEQPWk+q9J8hEMcqleCNyNBoKaqwf8Yvl6tiPriqIs
 wZUI2hemDsDte8FSBJNTTIi4LTUBAjKDAKvfc/DNt4L9QV2sIfg9qASCJqEsWuBR2ors
 5NaQ==
X-Gm-Message-State: AOAM533X6enxg6PSFkHwyCjtcvmbX67fMfkIZGachhqdbucEpXyLve32
 k10G4vGLLF/68AZxWx0HqOEOTg==
X-Google-Smtp-Source: ABdhPJxZkV6eMfaeGtpjNsinws3XN9P9qHnpwCss+A2MtvJiN9KtLVQWEjrU0ogr3ac2onGKtFfefQ==
X-Received: by 2002:ac2:4d04:0:b0:443:9688:7ced with SMTP id
 r4-20020ac24d04000000b0044396887cedmr874565lfi.37.1645018227501; 
 Wed, 16 Feb 2022 05:30:27 -0800 (PST)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89])
 by smtp.gmail.com with ESMTPSA id v6sm234780ljd.86.2022.02.16.05.30.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Feb 2022 05:30:27 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Wed, 16 Feb 2022 14:29:29 +0100
Message-Id: <20220216132934.1775649-5-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220216132934.1775649-1-tobias@waldekranz.com>
References: <20220216132934.1775649-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [RFC net-next 4/9] net: bridge: vlan: Notify switchdev
	drivers of MST state changes
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

Generate a switchdev notification whenever a per-VLAN STP state
changes. This notification is keyed by the VLANs MSTID rather than the
VID, since multiple VLANs may share the same MST instance.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 include/net/switchdev.h      |  7 +++++++
 net/bridge/br_vlan_options.c | 22 ++++++++++++++++++++--
 2 files changed, 27 insertions(+), 2 deletions(-)

diff --git a/include/net/switchdev.h b/include/net/switchdev.h
index ee4a7bd1e540..0a3e0e0bb10a 100644
--- a/include/net/switchdev.h
+++ b/include/net/switchdev.h
@@ -19,6 +19,7 @@
 enum switchdev_attr_id {
 	SWITCHDEV_ATTR_ID_UNDEFINED,
 	SWITCHDEV_ATTR_ID_PORT_STP_STATE,
+	SWITCHDEV_ATTR_ID_PORT_MST_STATE,
 	SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS,
 	SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS,
 	SWITCHDEV_ATTR_ID_PORT_MROUTER,
@@ -31,6 +32,11 @@ enum switchdev_attr_id {
 	SWITCHDEV_ATTR_ID_VLAN_MSTID,
 };
 
+struct switchdev_mst_state {
+	u16 mstid;
+	u8 state;
+};
+
 struct switchdev_brport_flags {
 	unsigned long val;
 	unsigned long mask;
@@ -52,6 +58,7 @@ struct switchdev_attr {
 	void (*complete)(struct net_device *dev, int err, void *priv);
 	union {
 		u8 stp_state;				/* PORT_STP_STATE */
+		struct switchdev_mst_state mst_state;	/* PORT_MST_STATE */
 		struct switchdev_brport_flags brport_flags; /* PORT_BRIDGE_FLAGS */
 		bool mrouter;				/* PORT_MROUTER */
 		clock_t ageing_time;			/* BRIDGE_AGEING_TIME */
diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
index 1c0fd55fe6c9..b8840294f98e 100644
--- a/net/bridge/br_vlan_options.c
+++ b/net/bridge/br_vlan_options.c
@@ -5,6 +5,7 @@
 #include <linux/rtnetlink.h>
 #include <linux/slab.h>
 #include <net/ip_tunnels.h>
+#include <net/switchdev.h>
 
 #include "br_private.h"
 #include "br_private_tunnel.h"
@@ -80,7 +81,16 @@ static int br_vlan_modify_state(struct net_bridge_vlan_group *vg,
 				bool *changed,
 				struct netlink_ext_ack *extack)
 {
+	struct switchdev_attr attr = {
+		.id = SWITCHDEV_ATTR_ID_PORT_MST_STATE,
+		.flags = SWITCHDEV_F_DEFER,
+		.u.mst_state = {
+			.mstid = br_vlan_mstid_get(v),
+			.state = state,
+		},
+	};
 	struct net_bridge *br;
+	int err;
 
 	ASSERT_RTNL();
 
@@ -89,10 +99,12 @@ static int br_vlan_modify_state(struct net_bridge_vlan_group *vg,
 		return -EINVAL;
 	}
 
-	if (br_vlan_is_brentry(v))
+	if (br_vlan_is_brentry(v)) {
 		br = v->br;
-	else
+	} else {
 		br = v->port->br;
+		attr.orig_dev = v->port->dev;
+	}
 
 	if (br->stp_enabled == BR_KERNEL_STP) {
 		NL_SET_ERR_MSG_MOD(extack, "Can't modify vlan state when using kernel STP");
@@ -102,6 +114,12 @@ static int br_vlan_modify_state(struct net_bridge_vlan_group *vg,
 	if (br_vlan_get_state_rtnl(v) == state)
 		return 0;
 
+	if (attr.orig_dev) {
+		err = switchdev_port_attr_set(attr.orig_dev, &attr, NULL);
+		if (err && err != -EOPNOTSUPP)
+			return err;
+	}
+
 	if (v->vid == br_get_pvid(vg))
 		br_vlan_set_pvid_state(vg, state);
 
-- 
2.25.1

