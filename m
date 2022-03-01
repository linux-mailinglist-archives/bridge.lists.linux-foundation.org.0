Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 482E74C88CF
	for <lists.bridge@lfdr.de>; Tue,  1 Mar 2022 11:04:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1FBD8414E4;
	Tue,  1 Mar 2022 10:03:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P7Dj-T1BvpDk; Tue,  1 Mar 2022 10:03:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 291BE41508;
	Tue,  1 Mar 2022 10:03:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id ED2A9C0077;
	Tue,  1 Mar 2022 10:03:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7E8B6C0081
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 10:03:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5A3C9812A5
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 10:03:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sKJGfox_K3Ii for <bridge@lists.linux-foundation.org>;
 Tue,  1 Mar 2022 10:03:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 72A8681272
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 10:03:53 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id w27so25975447lfa.5
 for <bridge@lists.linux-foundation.org>; Tue, 01 Mar 2022 02:03:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=az/xSk1cFf+663WFNGMDSdL6ZlzUb+e0Y66c2dIgICk=;
 b=BAOoXkp2k++ip4yaBp/8jKULasDNMBKsbfUiwLa2swzc45xYddCAwlwEjXR/CkAjTQ
 wCBsk/75rf+PZDUPTGpFI7K70MMZADloPUZuf83G/riFugsxNBll2we87yL/E1xiVKEd
 5oZhYXwr5B7Xwv2XyW0x7joHVlq23hwZlvGBaETYqOle7q9uB4/OLLf5UwlkM1o/YTcY
 flkohhEtgyDl22CNGpQrGrfUZUgkFua8LIT06Tp/j+zlV/PPHoheCUg9VssBL3i4EvfX
 f1S+TnJ3VtAPRJ4wJKBvVvIJrJtmhHyqaiz+UviJeKLvutwZ8tn2KbR5633jVxCDcood
 Ac0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=az/xSk1cFf+663WFNGMDSdL6ZlzUb+e0Y66c2dIgICk=;
 b=IT/NUDRVLaaoUtljDMpRoJiklkAoQy0+66VTaZSAxAqBOwAiqg5ZWGtm8eHYzLSITM
 YiHgW4f0cQj4hKeBc9Bxs6GdWOz3FydgfQTFWqYt+ED1pJN536oCrEMHI5fMmfbTVA+n
 YusIeDG2Uv3TXK4wCycWFsY6AAW8/x1Cph4rgySfndEdTVPWKzMApSfZ8HXdlwgqHXxK
 gUZtEPCsoC71ZTp99coSEtoqgaWdHrHo4XzQ+QoUQMMEcvyWLOGPwvqfnWDCH4Ik8k0b
 SrxwCX7dXhlQ9iO236pcQkoKTlKTVSjXTZQpbZM3dFz+n/r+qYBLU+HFAwR0WfcvVHLJ
 SC0Q==
X-Gm-Message-State: AOAM532bNmPxu5WWfE76C1ubNpHPmGg7vlq6tTB+0tjBiyft9JDLQN55
 Oagepu0lhG2SbdFhGU/KlJeuDQ==
X-Google-Smtp-Source: ABdhPJydVSWWFKX0WRaP+6FV4Fs0fLx4UES4/xqRCI6RbrV0UXC2SO2MHSNAUfkaPW9qLY1X843mEw==
X-Received: by 2002:a05:6512:22c4:b0:43a:13a8:7e55 with SMTP id
 g4-20020a05651222c400b0043a13a87e55mr15155916lfu.296.1646129031409; 
 Tue, 01 Mar 2022 02:03:51 -0800 (PST)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 s27-20020a05651c049b00b002460fd4252asm1826822ljc.100.2022.03.01.02.03.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Mar 2022 02:03:51 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue,  1 Mar 2022 11:03:15 +0100
Message-Id: <20220301100321.951175-5-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220301100321.951175-1-tobias@waldekranz.com>
References: <20220301100321.951175-1-tobias@waldekranz.com>
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
Subject: [Bridge] [PATCH v2 net-next 04/10] net: bridge: mst: Notify
	switchdev drivers of VLAN MSTI migrations
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

Whenever a VLAN moves to a new MSTI, send a switchdev notification so
that switchdevs can...

...either refuse the migration if the hardware does not support
offloading of MST...

..or track a bridge's VID to MSTI mapping when offloading is
supported.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 include/net/switchdev.h   | 10 +++++++
 net/bridge/br_mst.c       | 15 +++++++++++
 net/bridge/br_switchdev.c | 57 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 82 insertions(+)

diff --git a/include/net/switchdev.h b/include/net/switchdev.h
index 3e424d40fae3..39e57aa5005a 100644
--- a/include/net/switchdev.h
+++ b/include/net/switchdev.h
@@ -28,6 +28,7 @@ enum switchdev_attr_id {
 	SWITCHDEV_ATTR_ID_BRIDGE_MC_DISABLED,
 	SWITCHDEV_ATTR_ID_BRIDGE_MROUTER,
 	SWITCHDEV_ATTR_ID_MRP_PORT_ROLE,
+	SWITCHDEV_ATTR_ID_VLAN_MSTI,
 };
 
 struct switchdev_brport_flags {
@@ -35,6 +36,14 @@ struct switchdev_brport_flags {
 	unsigned long mask;
 };
 
+struct switchdev_vlan_attr {
+	u16 vid;
+
+	union {
+		u16 msti;
+	};
+};
+
 struct switchdev_attr {
 	struct net_device *orig_dev;
 	enum switchdev_attr_id id;
@@ -50,6 +59,7 @@ struct switchdev_attr {
 		u16 vlan_protocol;			/* BRIDGE_VLAN_PROTOCOL */
 		bool mc_disabled;			/* MC_DISABLED */
 		u8 mrp_port_role;			/* MRP_PORT_ROLE */
+		struct switchdev_vlan_attr vlan_attr;	/* VLAN_* */
 	} u;
 };
 
diff --git a/net/bridge/br_mst.c b/net/bridge/br_mst.c
index 8dea8e7257fd..aba603675165 100644
--- a/net/bridge/br_mst.c
+++ b/net/bridge/br_mst.c
@@ -7,6 +7,7 @@
  */
 
 #include <linux/kernel.h>
+#include <net/switchdev.h>
 
 #include "br_private.h"
 
@@ -65,9 +66,23 @@ static void br_mst_vlan_sync_state(struct net_bridge_vlan *pv, u16 msti)
 
 int br_mst_vlan_set_msti(struct net_bridge_vlan *mv, u16 msti)
 {
+	struct switchdev_attr attr = {
+		.id = SWITCHDEV_ATTR_ID_VLAN_MSTI,
+		.flags = SWITCHDEV_F_DEFER,
+		.orig_dev = mv->br->dev,
+		.u.vlan_attr = {
+			.vid = mv->vid,
+			.msti = msti,
+		},
+	};
 	struct net_bridge_vlan_group *vg;
 	struct net_bridge_vlan *pv;
 	struct net_bridge_port *p;
+	int err;
+
+	err = switchdev_port_attr_set(mv->br->dev, &attr, NULL);
+	if (err && err != -EOPNOTSUPP)
+		return err;
 
 	mv->msti = msti;
 
diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
index 6f6a70121a5e..160d7659f88a 100644
--- a/net/bridge/br_switchdev.c
+++ b/net/bridge/br_switchdev.c
@@ -428,6 +428,57 @@ static int br_switchdev_vlan_replay(struct net_device *br_dev,
 	return 0;
 }
 
+static int br_switchdev_mst_replay(struct net_device *br_dev,
+				   const void *ctx, bool adding,
+				   struct notifier_block *nb,
+				   struct netlink_ext_ack *extack)
+{
+	struct switchdev_notifier_port_attr_info attr_info = {
+		.info = {
+			.dev = br_dev,
+			.extack = extack,
+			.ctx = ctx,
+		},
+	};
+	struct net_bridge *br = netdev_priv(br_dev);
+	struct net_bridge_vlan_group *vg;
+	struct net_bridge_vlan *v;
+	int err;
+
+	ASSERT_RTNL();
+
+	if (!nb)
+		return 0;
+
+	if (!netif_is_bridge_master(br_dev))
+		return -EINVAL;
+
+	vg = br_vlan_group(br);
+
+	list_for_each_entry(v, &vg->vlan_list, vlist) {
+		struct switchdev_attr attr = {
+			.id = SWITCHDEV_ATTR_ID_VLAN_MSTI,
+			.flags = SWITCHDEV_F_DEFER,
+			.orig_dev = br_dev,
+			.u.vlan_attr = {
+				.vid = v->vid,
+				.msti = v->msti,
+			}
+		};
+
+		if (!v->msti)
+			continue;
+
+		attr_info.attr = &attr;
+		err = nb->notifier_call(nb, SWITCHDEV_PORT_ATTR_SET, &attr_info);
+		err = notifier_to_errno(err);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
 #ifdef CONFIG_BRIDGE_IGMP_SNOOPING
 struct br_switchdev_mdb_complete_info {
 	struct net_bridge_port *port;
@@ -695,6 +746,10 @@ static int nbp_switchdev_sync_objs(struct net_bridge_port *p, const void *ctx,
 	if (err && err != -EOPNOTSUPP)
 		return err;
 
+	err = br_switchdev_mst_replay(br_dev, ctx, true, blocking_nb, extack);
+	if (err && err != -EOPNOTSUPP)
+		return err;
+
 	err = br_switchdev_mdb_replay(br_dev, dev, ctx, true, blocking_nb,
 				      extack);
 	if (err && err != -EOPNOTSUPP)
@@ -719,6 +774,8 @@ static void nbp_switchdev_unsync_objs(struct net_bridge_port *p,
 
 	br_switchdev_mdb_replay(br_dev, dev, ctx, false, blocking_nb, NULL);
 
+	br_switchdev_mst_replay(br_dev, ctx, false, blocking_nb, NULL);
+
 	br_switchdev_vlan_replay(br_dev, ctx, false, blocking_nb, NULL);
 }
 
-- 
2.25.1

