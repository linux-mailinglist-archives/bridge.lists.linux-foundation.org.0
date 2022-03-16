Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE164DB43D
	for <lists.bridge@lfdr.de>; Wed, 16 Mar 2022 16:09:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 261AC61201;
	Wed, 16 Mar 2022 15:09:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wYRwDv4MS9ud; Wed, 16 Mar 2022 15:09:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id AB795611FD;
	Wed, 16 Mar 2022 15:09:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7E532C0083;
	Wed, 16 Mar 2022 15:09:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1DD22C008A
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 15:09:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F33E7417A8
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 15:09:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DJKPkJRrXWOo for <bridge@lists.linux-foundation.org>;
 Wed, 16 Mar 2022 15:09:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com
 [IPv6:2a00:1450:4864:20::233])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0B8E941793
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 15:09:14 +0000 (UTC)
Received: by mail-lj1-x233.google.com with SMTP id 17so3561311lji.1
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 08:09:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=i+b2UIYzIPR8HiB7lfNC7HnKeM/AsfglkAUtbevdP9c=;
 b=pKQumBJ+GJsRVp/9DOhiZG5nLwVHg3P0o8Mzd4OiMre2OVw7GwRWHQFDDOj6l1s/vA
 1w5nGNo0a8hV5fJ/UjSxv9IbAeQoH04ovDHkSWiJsu8KjaUjBh77oag+Hn7Eq4qixUVt
 6eQTY0sehEiq+KVOLjlm9AJ82yRyh6h5Zy+bEICcQBUHCmYnCsSs+FvWQsVpRKhnSJFp
 fzcz10VupTQQdkofQYGmIUbdEgaZ7hcDA/HtJcCsGUbtxVQtNTFsLfDx3KYyrrFESRJ7
 0BFwb9iICX8WGq/nTqHGi+B1rime6Vp8ivGp3nf6odxboZd80FFPzo4fl9NKqK1SwJmi
 gSIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=i+b2UIYzIPR8HiB7lfNC7HnKeM/AsfglkAUtbevdP9c=;
 b=Ri/+txcPQBMRBqXiG9MRO4DtwCrAVXQbM2OTOHjrREUlXeVBMcx0GfapWHNoQOP5aP
 KPyX8D+/y3uTduTvK1n/7l9/YUFrMF8mCNjmn0/vIWrY6F5M/tHDA4Cz/XYeL9ydUaq2
 zRhsNQM8E1doUOWy4XUOmkdkE1DYg6Y0q7jUQoHlDtPdmNgpWXgtOaY5mmmzf8V048/x
 TCg7j52N4bNv3AUZI9IwYvo/mLiUcyMQKDlWeJhgPS7NSmp5+Ip49LfBEOmu961raVhQ
 YqDe+AU8Rse2h6e2Eiz62amurbGd6Y87QMS7/rxZedWPLFVJVFtBsb/1k1DUtuBgSKkU
 OTGA==
X-Gm-Message-State: AOAM530Dnpvvr5B8/SYG1vX0n3bGsmt0CKNw31HRiBA7bNHJpZageIun
 oJiW7o6Yvh1y7SmToaMsQA/Puw==
X-Google-Smtp-Source: ABdhPJwxmEKzCMsYoV9W9IgcGOWsUWc8nu+1gANANSrTAa+SS4zfn83WZgUS47iF9INcsPjoA0nY6g==
X-Received: by 2002:a2e:a236:0:b0:249:2a4b:16f5 with SMTP id
 i22-20020a2ea236000000b002492a4b16f5mr75402ljm.384.1647443352962; 
 Wed, 16 Mar 2022 08:09:12 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 d2-20020a194f02000000b00448b915e2d3sm176048lfb.99.2022.03.16.08.09.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Mar 2022 08:09:12 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Wed, 16 Mar 2022 16:08:48 +0100
Message-Id: <20220316150857.2442916-7-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220316150857.2442916-1-tobias@waldekranz.com>
References: <20220316150857.2442916-1-tobias@waldekranz.com>
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
Subject: [Bridge] [PATCH v5 net-next 06/15] net: bridge: mst: Notify
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
 net/bridge/br_mst.c     | 18 ++++++++++++++++++
 2 files changed, 25 insertions(+)

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
index 29266174e6b4..00935a19afcc 100644
--- a/net/bridge/br_mst.c
+++ b/net/bridge/br_mst.c
@@ -30,13 +30,31 @@ static void br_mst_vlan_set_state(struct net_bridge_port *p, struct net_bridge_v
 int br_mst_set_state(struct net_bridge_port *p, u16 msti, u8 state,
 		     struct netlink_ext_ack *extack)
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
 		return 0;
 
+	/* MSTI 0 (CST) state changes are notified via the regular
+	 * SWITCHDEV_ATTR_ID_PORT_STP_STATE.
+	 */
+	if (msti) {
+		err = switchdev_port_attr_set(p->dev, &attr, extack);
+		if (err && err != -EOPNOTSUPP)
+			return err;
+	}
+
 	list_for_each_entry(v, &vg->vlan_list, vlist) {
 		if (v->brvlan->msti != msti)
 			continue;
-- 
2.25.1

