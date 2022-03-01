Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE5E4C88D1
	for <lists.bridge@lfdr.de>; Tue,  1 Mar 2022 11:04:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0991F4063C;
	Tue,  1 Mar 2022 10:03:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i98rLCjojBiM; Tue,  1 Mar 2022 10:03:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 5B99A4061F;
	Tue,  1 Mar 2022 10:03:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2F31CC0077;
	Tue,  1 Mar 2022 10:03:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 62016C001A
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 10:03:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 50049414E4
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 10:03:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G6t0SeBat4gb for <bridge@lists.linux-foundation.org>;
 Tue,  1 Mar 2022 10:03:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com
 [IPv6:2a00:1450:4864:20::22c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 50843410E6
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 10:03:54 +0000 (UTC)
Received: by mail-lj1-x22c.google.com with SMTP id r20so21176264ljj.1
 for <bridge@lists.linux-foundation.org>; Tue, 01 Mar 2022 02:03:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=yuCZ0mCQ7kvhi5DjalgIG8uPVoVRxyzFJETY+ZZ8iS8=;
 b=KnpuOsFuuWdfSJ00n5q4w09njAQx7uXq7CpPG8PscWCUNiGj2gQQDMtf2GhNH22mq2
 9FRdqeadjDIV6pveBFo1wOtZtuCBHNQCy3XU75fZR0rVf7vypjUiebZ8bk4SGKfsOO1p
 1E+6+W2/4VRvWXagQtvFTLpvJnCbm9WOeJL3zGRQph/pfSQFHZMMylkNwbEFp5HkXUi/
 ocyVKBw8GVWsod6PiMVH3pf6bl4CaL9nkm7s5ZewI8UZnKW9DRdOaF4/u3p4rH0TrMPa
 2n9B/1kLyS5zjb/8En4MmPXVZQ9jGZN3ovow3ZTOFn4hn+l1ut3I2CpiudqjCG/yuJ8z
 V78w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=yuCZ0mCQ7kvhi5DjalgIG8uPVoVRxyzFJETY+ZZ8iS8=;
 b=l1z6cxKE/gm7Zks0ZmzF2VniD7B8+M9e3LByprpURg/UnHNqZb9YV17mugsI5L6JF9
 0RLbb0TJO8qLFMg9GImXA77+7FG1fJaYKf0YXHcLO2QznYAjSwesh+7OK5DdpNMzCkDp
 vMj1/LoEAxb6GCkBNU7qiUi+4tpnWATGwnk91AohbiC0q/JJPOrghXi6X0cwEiODYjoJ
 dMQkHBcXAteahqqktVn9n6pNkvPVUMwfhuWGQYBMRgl0verGlj7c9QTB/IMVueB1hCnm
 WkkSUoBX+RrwQhxWfhonKmNUA0D4GddwcqJpovRb9eUSE/0OZOnw41qjgYZvKROklxdg
 gaFQ==
X-Gm-Message-State: AOAM531ioD2ENnB85aRIZUOnHHobCadH4ebaJZfQQd4OX16ME2ei8coq
 tXWHadvNtX8hUI4Z9HOBmIhiHg==
X-Google-Smtp-Source: ABdhPJzvAuB+A+tyWYUg2p36MtoBhoJgiKxJMZXVYU1+owvHEHDxWRu2futMleOP+zx/WGNstCBbEg==
X-Received: by 2002:a2e:9ac7:0:b0:244:9022:220b with SMTP id
 p7-20020a2e9ac7000000b002449022220bmr16728216ljj.254.1646129032272; 
 Tue, 01 Mar 2022 02:03:52 -0800 (PST)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 s27-20020a05651c049b00b002460fd4252asm1826822ljc.100.2022.03.01.02.03.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Mar 2022 02:03:51 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue,  1 Mar 2022 11:03:16 +0100
Message-Id: <20220301100321.951175-6-tobias@waldekranz.com>
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
Subject: [Bridge] [PATCH v2 net-next 05/10] net: bridge: mst: Notify
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
 net/bridge/br_mst.c     | 21 +++++++++++++++++++++
 2 files changed, 28 insertions(+)

diff --git a/include/net/switchdev.h b/include/net/switchdev.h
index 39e57aa5005a..441beeb2fda5 100644
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
@@ -52,6 +58,7 @@ struct switchdev_attr {
 	void (*complete)(struct net_device *dev, int err, void *priv);
 	union {
 		u8 stp_state;				/* PORT_STP_STATE */
+		struct switchdev_mst_state mst_state;	/* PORT_MST_STATE */
 		struct switchdev_brport_flags brport_flags; /* PORT_BRIDGE_FLAGS */
 		bool mrouter;				/* PORT_MROUTER */
 		clock_t ageing_time;			/* BRIDGE_AGEING_TIME */
diff --git a/net/bridge/br_mst.c b/net/bridge/br_mst.c
index aba603675165..9cdd7d9e07c6 100644
--- a/net/bridge/br_mst.c
+++ b/net/bridge/br_mst.c
@@ -29,8 +29,18 @@ void br_mst_vlan_set_state(struct net_bridge_port *p, struct net_bridge_vlan *v,
 
 void br_mst_set_state(struct net_bridge_port *p, u16 msti, u8 state)
 {
+	struct switchdev_attr attr = {
+		.id = SWITCHDEV_ATTR_ID_PORT_MST_STATE,
+		.flags = SWITCHDEV_F_DEFER,
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
@@ -42,6 +52,17 @@ void br_mst_set_state(struct net_bridge_port *p, u16 msti, u8 state)
 
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

