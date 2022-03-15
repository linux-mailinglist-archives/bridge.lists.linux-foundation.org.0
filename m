Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 958AE4D9150
	for <lists.bridge@lfdr.de>; Tue, 15 Mar 2022 01:26:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92929415B7;
	Tue, 15 Mar 2022 00:26:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id grbouqLnELXh; Tue, 15 Mar 2022 00:26:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 0C9C6415BB;
	Tue, 15 Mar 2022 00:26:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A5701C0084;
	Tue, 15 Mar 2022 00:26:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A7D1EC0092
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 824F860E62
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jKKh1vRM-Ygw for <bridge@lists.linux-foundation.org>;
 Tue, 15 Mar 2022 00:26:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9412D60F43
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:28 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id s25so30147460lfs.10
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 17:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=7rBVX2eGe+n3oqizYlvo9XzN7F+D1diuy5KXiSK9HF4=;
 b=eQJFiDSJRJUtYgU15RHHS6PZYhEPdkB9p5XthXvF3r3SgHWaeznpebA4SknEyLD0lQ
 qhNZtxVALSWT1RvY2u53W8xyfPAy9kSuX0BOeMHGJTnq2VBKgnmxFGcecfquwttD3FAV
 JP2sCja+RK9zk8BuQ+PsIrUF/BdOCYL5NcLr+IF75tAJYpWNKMMxmQzXjLidPtBPkqCo
 i7I1/JkiWN3H6x4eTXxQ7tQ3SSl/ObmGOGTAB2whogT0ZL9ybKBd4XzR1MJFpBjJr1CN
 GPIiKrTLe6WOwx2GPLTtuSqaufdr815JE2QqZv2emjRpofXrbKGQDoL7P4AiUre1PC/O
 XmcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=7rBVX2eGe+n3oqizYlvo9XzN7F+D1diuy5KXiSK9HF4=;
 b=vIp6ei4hB37PfxDKAiUNWLDcTb6D3znN2FAUkJbxIFpZPhtmH2JTWPoCNy2bOd4kJh
 kCAC29iG9lHqbkOQy3Cu1doc0iGWZ6Hy+8faClsXAc0Ucc9oEL2N+N5qgSV/VBD5hsVn
 1LLYSfQ67cmrJZkKhGcGCR2f9gJxc9+A/FT+Qalk6Qr+FwvBVKMW94MJnP0ucZS2GpvR
 1p7O6Y9zrh6rSnqNn6t/WZSMnFQ/KkAN77uQW7Rvs42QBohCcXxYAnQuwAINM/9BWrc4
 c6IZxj1uqvF6AOau0aiKeer3pFeRDuj5TYF7URoBJhjfpsYwp1Q79Tw/cn+GpPN7qewq
 60dg==
X-Gm-Message-State: AOAM533/rHZu/lDBe8h+hRvLuqDiXWYbaErWRWGhrKbnr6Kwv+8IiOeV
 SrW4lArsGFjLfekKqZRZMMfM/A==
X-Google-Smtp-Source: ABdhPJw7lSzRQuzL1Bu/YVmXMdrzMwnMyIpiipVlycWtdhFc1nO3cTODK8t2mr1nRASfoqbopTuM2g==
X-Received: by 2002:a05:6512:2090:b0:448:5050:9131 with SMTP id
 t16-20020a056512209000b0044850509131mr14526023lfr.326.1647303986310; 
 Mon, 14 Mar 2022 17:26:26 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 y14-20020a2e544e000000b0024800f8286bsm4219923ljd.78.2022.03.14.17.26.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 17:26:25 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue, 15 Mar 2022 01:25:34 +0100
Message-Id: <20220315002543.190587-7-tobias@waldekranz.com>
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
Subject: [Bridge] [PATCH v4 net-next 06/15] net: bridge: mst: Notify
	switchdev drivers of MST state changes
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

Generate a switchdev notification whenever an MST state changes. This
notification is keyed by the VLANs MSTI rather than the VID, since
multiple VLANs may share the same MST instance.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 include/net/switchdev.h |  7 +++++++
 net/bridge/br_mst.c     | 20 ++++++++++++++++++++
 2 files changed, 27 insertions(+)

diff --git a/include/net/switchdev.h b/include/net/switchdev.h
index 53dfa0f7cf5b..aa0171d5786d 100644
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
@@ -32,6 +33,11 @@ enum switchdev_attr_id {
 	SWITCHDEV_ATTR_ID_VLAN_MSTI,
 };
 
+struct switchdev_mst_state {
+	u16 msti;
+	u8 state;
+};
+
 struct switchdev_brport_flags {
 	unsigned long val;
 	unsigned long mask;
@@ -50,6 +56,7 @@ struct switchdev_attr {
 	void (*complete)(struct net_device *dev, int err, void *priv);
 	union {
 		u8 stp_state;				/* PORT_STP_STATE */
+		struct switchdev_mst_state mst_state;	/* PORT_MST_STATE */
 		struct switchdev_brport_flags brport_flags; /* PORT_BRIDGE_FLAGS */
 		bool mrouter;				/* PORT_MROUTER */
 		clock_t ageing_time;			/* BRIDGE_AGEING_TIME */
diff --git a/net/bridge/br_mst.c b/net/bridge/br_mst.c
index 5d3e034b9030..b92daca86513 100644
--- a/net/bridge/br_mst.c
+++ b/net/bridge/br_mst.c
@@ -29,8 +29,17 @@ static void br_mst_vlan_set_state(struct net_bridge_port *p, struct net_bridge_v
 
 void br_mst_set_state(struct net_bridge_port *p, u16 msti, u8 state)
 {
+	struct switchdev_attr attr = {
+		.id = SWITCHDEV_ATTR_ID_PORT_MST_STATE,
+		.orig_dev = p->dev,
+		.u.mst_state = {
+			.msti = msti,
+			.state = state,
+		},
+	};
 	struct net_bridge_vlan_group *vg;
 	struct net_bridge_vlan *v;
+	int err;
 
 	vg = nbp_vlan_group(p);
 	if (!vg)
@@ -42,6 +51,17 @@ void br_mst_set_state(struct net_bridge_port *p, u16 msti, u8 state)
 
 		br_mst_vlan_set_state(p, v, state);
 	}
+
+	if (!msti)
+		/* MSTI 0 (CST) state changes are notified via the
+		 * regular SWITCHDEV_ATTR_ID_PORT_STP_STATE.
+		 */
+		return;
+
+	err = switchdev_port_attr_set(p->dev, &attr, NULL);
+	if (err && err != -EOPNOTSUPP)
+		br_warn(p->br, "unable to offload MST state on %s in MSTI %u",
+			netdev_name(p->dev), msti);
 }
 
 static void br_mst_vlan_sync_state(struct net_bridge_vlan *pv, u16 msti)
-- 
2.25.1

