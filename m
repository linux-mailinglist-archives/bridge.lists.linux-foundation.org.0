Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBAE4FBD55
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 15:39:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B75BF60EB1;
	Mon, 11 Apr 2022 13:39:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xTh4P9MEVSCZ; Mon, 11 Apr 2022 13:39:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 258A160E38;
	Mon, 11 Apr 2022 13:38:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0AA95C0033;
	Mon, 11 Apr 2022 13:38:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7D225C0033
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 13:38:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6936A40921
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 13:38:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5TBO0qsTl5vw for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 13:38:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com
 [IPv6:2a00:1450:4864:20::22e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 598BB4014D
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 13:38:56 +0000 (UTC)
Received: by mail-lj1-x22e.google.com with SMTP id c15so20124823ljr.9
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 06:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=c2Hxf+Qd4VDlf3RyTcZ7u6PSE6ckvu4bfuQ6dUJjbnI=;
 b=dUNS3ltsPrnQGHh8Qf2VDr2VwLlBywJMd8CzsUSUVQtAzwupM2mqlPeuT3AWAGOMSj
 yvg0DBq5zwVVyWyOADLHtTHJQobKUiLz5Pxo6H1gdQ7epVI1VvvIlFQo48J9lixiWTSQ
 NjxX1hEeC6LHMkfcXHvnVCsE7+5Fwjm/sS7NbNINMiRUXkID17v7gAceggPr0Ig5LHmV
 IPPbGJ8SCmjY3ful/7pM26xjH3WSg5VpxABl+sGKdRRAf8GR56yDXdjTYAGo0rKtTfdK
 hw9F65Lc3XDw6Lpc+k3/MzH+Xh14LtESEtAlX6rO8pHaZaS+/sRITde0PYRfmlEIyHDk
 VV6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=c2Hxf+Qd4VDlf3RyTcZ7u6PSE6ckvu4bfuQ6dUJjbnI=;
 b=HFhOJQ0EFtfq8tp73jL+tmWId169Nz8byLum3pVIhIexfaz0buThMOeFPt+a4XZba3
 7nkf/OpeVbhjqeGRmIU/WIT0/cn3YZOSzj0ib3ifwUvewgZL3b08g5/dMTBHMMAmBpo3
 cerEZ9pchqHBV91QpfAfgmVbpN5cjuy0riPPNOjoXPHwXCHoJxQwNdCQ53dRso9ju2Ks
 BCL7XmFjcTmwLxxFqRzQLydIo7gT1jsYaCEi0XN1pwRwNlzSoae449Ns2gsNS15oe2yj
 4+Y3s8FSs94N8tLqxARtVPddQavaoCBjpVD01x8ycZ1MsBqFYagr59nSCyb8Ot89q2of
 wM1Q==
X-Gm-Message-State: AOAM531V2TqYHk8mndPa9ypkFmvWl3GQZCNG+JKk+WU2cnJIqBzfzSh+
 8Qs90I4miZjv351aJniMKSU=
X-Google-Smtp-Source: ABdhPJxN2mL7iTx2J06MCeT8oLkZN2Gf/0grFXW54mHhvTegORZPIn9cHNTNg8NPU/m7q+cCFGoxKA==
X-Received: by 2002:a05:651c:1203:b0:24b:58c9:e1e3 with SMTP id
 i3-20020a05651c120300b0024b58c9e1e3mr7135103lja.127.1649684334132; 
 Mon, 11 Apr 2022 06:38:54 -0700 (PDT)
Received: from wbg.labs.westermo.se (h-158-174-22-128.NA.cust.bahnhof.se.
 [158.174.22.128]) by smtp.gmail.com with ESMTPSA id
 p12-20020a056512138c00b0044833f1cd85sm3336847lfa.62.2022.04.11.06.38.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 06:38:53 -0700 (PDT)
From: Joachim Wiberg <troglobit@gmail.com>
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>
Date: Mon, 11 Apr 2022 15:38:26 +0200
Message-Id: <20220411133837.318876-3-troglobit@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220411133837.318876-1-troglobit@gmail.com>
References: <20220411133837.318876-1-troglobit@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Joachim Wiberg <troglobit@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: [Bridge] [PATCH RFC net-next 02/13] net: bridge: rename
	br_switchdev_set_port_flag() to .._dev_flag()
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

The br_switchdev_set_port_flag() function only uses the `p->dev` member
of the port, and we also want to reuse it for the bridge itself. Change
the first argument and the name of the function to match.

Signed-off-by: Joachim Wiberg <troglobit@gmail.com>
---
 net/bridge/br_netlink.c   | 2 +-
 net/bridge/br_private.h   | 4 ++--
 net/bridge/br_switchdev.c | 8 ++++----
 net/bridge/br_sysfs_if.c  | 2 +-
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 200ad05b296f..7fca8ff13ec7 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -942,7 +942,7 @@ static int br_setport(struct net_bridge_port *p, struct nlattr *tb[],
 
 	changed_mask = old_flags ^ p->flags;
 
-	err = br_switchdev_set_port_flag(p, p->flags, changed_mask, extack);
+	err = br_switchdev_set_dev_flag(p->dev, p->flags, changed_mask, extack);
 	if (err) {
 		p->flags = old_flags;
 		return err;
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 683bd0ee4c64..6c230be6fbf5 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -2038,7 +2038,7 @@ void nbp_switchdev_frame_mark(const struct net_bridge_port *p,
 			      struct sk_buff *skb);
 bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
 				  const struct sk_buff *skb);
-int br_switchdev_set_port_flag(struct net_bridge_port *p,
+int br_switchdev_set_dev_flag(struct net_device *dev,
 			       unsigned long flags,
 			       unsigned long mask,
 			       struct netlink_ext_ack *extack);
@@ -2108,7 +2108,7 @@ static inline bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
 	return true;
 }
 
-static inline int br_switchdev_set_port_flag(struct net_bridge_port *p,
+static inline int br_switchdev_set_dev_flag(struct net_device *dev,
 					     unsigned long flags,
 					     unsigned long mask,
 					     struct netlink_ext_ack *extack)
diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
index 8cc44c367231..3b4df63e96a6 100644
--- a/net/bridge/br_switchdev.c
+++ b/net/bridge/br_switchdev.c
@@ -74,13 +74,13 @@ bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
 #define BR_PORT_FLAGS_HW_OFFLOAD (BR_LEARNING | BR_FLOOD | \
 				  BR_MCAST_FLOOD | BR_BCAST_FLOOD | BR_PORT_LOCKED)
 
-int br_switchdev_set_port_flag(struct net_bridge_port *p,
+int br_switchdev_set_dev_flag(struct net_device *dev,
 			       unsigned long flags,
 			       unsigned long mask,
 			       struct netlink_ext_ack *extack)
 {
 	struct switchdev_attr attr = {
-		.orig_dev = p->dev,
+		.orig_dev = dev,
 	};
 	struct switchdev_notifier_port_attr_info info = {
 		.attr = &attr,
@@ -96,7 +96,7 @@ int br_switchdev_set_port_flag(struct net_bridge_port *p,
 	attr.u.brport_flags.mask = mask;
 
 	/* We run from atomic context here */
-	err = call_switchdev_notifiers(SWITCHDEV_PORT_ATTR_SET, p->dev,
+	err = call_switchdev_notifiers(SWITCHDEV_PORT_ATTR_SET, dev,
 				       &info.info, extack);
 	err = notifier_to_errno(err);
 	if (err == -EOPNOTSUPP)
@@ -112,7 +112,7 @@ int br_switchdev_set_port_flag(struct net_bridge_port *p,
 	attr.id = SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS;
 	attr.flags = SWITCHDEV_F_DEFER;
 
-	err = switchdev_port_attr_set(p->dev, &attr, extack);
+	err = switchdev_port_attr_set(dev, &attr, extack);
 	if (err) {
 		if (extack && !extack->_msg)
 			NL_SET_ERR_MSG_MOD(extack,
diff --git a/net/bridge/br_sysfs_if.c b/net/bridge/br_sysfs_if.c
index 07fa76080512..c222c68105f1 100644
--- a/net/bridge/br_sysfs_if.c
+++ b/net/bridge/br_sysfs_if.c
@@ -69,7 +69,7 @@ static int store_flag(struct net_bridge_port *p, unsigned long v,
 		flags &= ~mask;
 
 	if (flags != p->flags) {
-		err = br_switchdev_set_port_flag(p, flags, mask, &extack);
+		err = br_switchdev_set_dev_flag(p->dev, flags, mask, &extack);
 		if (err) {
 			netdev_err(p->dev, "%s\n", extack._msg);
 			return err;
-- 
2.25.1

