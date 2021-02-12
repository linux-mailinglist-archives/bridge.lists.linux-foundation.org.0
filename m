Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BC23197B2
	for <lists.bridge@lfdr.de>; Fri, 12 Feb 2021 02:05:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F3A5D86F99;
	Fri, 12 Feb 2021 01:05:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bcqW5qcu3k-K; Fri, 12 Feb 2021 01:05:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1FD0086FA2;
	Fri, 12 Feb 2021 01:05:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 10A5FC013A;
	Fri, 12 Feb 2021 01:05:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6B3D1C1825
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 01:05:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4BE7686F27
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 01:05:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wTSfK_m40EnE for <bridge@lists.linux-foundation.org>;
 Fri, 12 Feb 2021 01:05:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
 [209.85.208.41])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4E3DE83608
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 01:05:49 +0000 (UTC)
Received: by mail-ed1-f41.google.com with SMTP id df22so9022700edb.1
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 17:05:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pPHN5exI8LlhPYWncs7eYYfmwkQYpLRSRK+ky/9ukC8=;
 b=oydEAb5X33jCiaCQSSqtMUgZ18cEEqVUvKdIVeZj8+eqiIjO5e4XGmTO6upGvCRe3v
 Q9Vfs6WTvVcO9Y5Q5nx1vAB0LUgDjGAQRWgvUPlW2q0MddiU+86HzB78V/5Cx7OuoY/+
 EqrXAkwvaijxaU24EPCA06c9SJicSjCglRDHmr0Ft6c5uiKZkd/5LfVuTRt3bH5MD8gG
 3qYheHc9EPTPxJXWCDJzuidkup5wch1UcLi5HjkKXCGs5oEzyL0FGanqKWXwcdssAb36
 EHzcGQq4ldTOHgTjXuZ4N1lKjiqyaDQj4zpK6L+AvzfkjNfJNfkbDANU6PDrtZd3wVNo
 XGDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pPHN5exI8LlhPYWncs7eYYfmwkQYpLRSRK+ky/9ukC8=;
 b=GWC0IH8a6tCX4B4GPhzGiV+iPVZIJKSFO1hcBq7a/hfN9VSrSj+x8nzx9GKx5xYwyj
 63x60dlT7zyABR6gO5Hrt4wrEVSydsdVKxllDxmOm1SBkno6va5t+DUgamiukVnaQihF
 QZPqR0oh8Y6nzB9T8jAK66fcEBRCS66RQkLg1TyNXmV9BkZGlgJI95xTIEAJF19/YsxP
 f1Aj6Wlcfqp6+NfXozEoeksVXQnxdp6BtaOAZsIORxRGshCT0oQGJ89u74wKN8LdT5r/
 uR6tCqDNtIThdTM7KcZus0EURgMdCtkf7OgbMJ0K5ewG84WCHo3oZw8orb7B98ktFM5Y
 EGhQ==
X-Gm-Message-State: AOAM5311gnIDUbeRglaTEaCq3nmYwRX39eURKHBL4UNLx9JHMSbuM7XH
 5TOEwCJrW3G9drYSdYW/FaM=
X-Google-Smtp-Source: ABdhPJwMIgCm6o6GtEyObc5Mts3bXJwIqnXL+/XsoZPosbc5K3IqX8r9JYW2aDMTEDJMFu0REq38Tg==
X-Received: by 2002:a05:6402:125a:: with SMTP id
 l26mr900297edw.188.1613091947736; 
 Thu, 11 Feb 2021 17:05:47 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id z13sm5019580edc.73.2021.02.11.17.05.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Feb 2021 17:05:47 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Date: Fri, 12 Feb 2021 03:05:25 +0200
Message-Id: <20210212010531.2722925-4-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210212010531.2722925-1-olteanv@gmail.com>
References: <20210212010531.2722925-1-olteanv@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Taras Chornyi <tchornyi@marvell.com>, Ido Schimmel <idosch@idosch.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 linux-omap@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH v4 net-next 3/9] net: bridge: don't print in
	br_switchdev_set_port_flag
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

For the netlink interface, propagate errors through extack rather than
simply printing them to the console. For the sysfs interface, we still
print to the console, but at least that's one layer higher than in
switchdev, which also allows us to silently ignore the offloading of
flags if that is ever needed in the future.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
Changes in v4:
- Adjust the commit message now that we aren't notifying initial and
  final port flags from the bridge any longer.

Changes in v3:
- Deal with the br_switchdev_set_port_flag call from sysfs too.

Changes in v2:
- br_set_port_flag now returns void, so no extack there.
- don't overwrite extack in br_switchdev_set_port_flag if already
  populated.

 net/bridge/br_netlink.c   |  9 +++++----
 net/bridge/br_private.h   |  6 ++++--
 net/bridge/br_switchdev.c | 13 +++++++------
 net/bridge/br_sysfs_if.c  |  7 +++++--
 4 files changed, 21 insertions(+), 14 deletions(-)

diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index bf469f824944..7b513c5d347f 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -866,7 +866,8 @@ static void br_set_port_flag(struct net_bridge_port *p, struct nlattr *tb[],
 }
 
 /* Process bridge protocol info on port */
-static int br_setport(struct net_bridge_port *p, struct nlattr *tb[])
+static int br_setport(struct net_bridge_port *p, struct nlattr *tb[],
+		      struct netlink_ext_ack *extack)
 {
 	unsigned long old_flags, changed_mask;
 	bool br_vlan_tunnel_old;
@@ -894,7 +895,7 @@ static int br_setport(struct net_bridge_port *p, struct nlattr *tb[])
 
 	changed_mask = old_flags ^ p->flags;
 
-	err = br_switchdev_set_port_flag(p, p->flags, changed_mask);
+	err = br_switchdev_set_port_flag(p, p->flags, changed_mask, extack);
 	if (err) {
 		p->flags = old_flags;
 		return err;
@@ -1007,7 +1008,7 @@ int br_setlink(struct net_device *dev, struct nlmsghdr *nlh, u16 flags,
 				return err;
 
 			spin_lock_bh(&p->br->lock);
-			err = br_setport(p, tb);
+			err = br_setport(p, tb, extack);
 			spin_unlock_bh(&p->br->lock);
 		} else {
 			/* Binary compatibility with old RSTP */
@@ -1102,7 +1103,7 @@ static int br_port_slave_changelink(struct net_device *brdev,
 		return 0;
 
 	spin_lock_bh(&br->lock);
-	ret = br_setport(br_port_get_rtnl(dev), data);
+	ret = br_setport(br_port_get_rtnl(dev), data, extack);
 	spin_unlock_bh(&br->lock);
 
 	return ret;
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index d242ba668e47..a1639d41188b 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1575,7 +1575,8 @@ bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
 				  const struct sk_buff *skb);
 int br_switchdev_set_port_flag(struct net_bridge_port *p,
 			       unsigned long flags,
-			       unsigned long mask);
+			       unsigned long mask,
+			       struct netlink_ext_ack *extack);
 void br_switchdev_fdb_notify(const struct net_bridge_fdb_entry *fdb,
 			     int type);
 int br_switchdev_port_vlan_add(struct net_device *dev, u16 vid, u16 flags,
@@ -1605,7 +1606,8 @@ static inline bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
 
 static inline int br_switchdev_set_port_flag(struct net_bridge_port *p,
 					     unsigned long flags,
-					     unsigned long mask)
+					     unsigned long mask,
+					     struct netlink_ext_ack *extack)
 {
 	return 0;
 }
diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
index 6a9db6aa5c04..bb21dd35ae85 100644
--- a/net/bridge/br_switchdev.c
+++ b/net/bridge/br_switchdev.c
@@ -60,7 +60,8 @@ bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
 
 int br_switchdev_set_port_flag(struct net_bridge_port *p,
 			       unsigned long flags,
-			       unsigned long mask)
+			       unsigned long mask,
+			       struct netlink_ext_ack *extack)
 {
 	struct switchdev_attr attr = {
 		.orig_dev = p->dev,
@@ -79,14 +80,15 @@ int br_switchdev_set_port_flag(struct net_bridge_port *p,
 
 	/* We run from atomic context here */
 	err = call_switchdev_notifiers(SWITCHDEV_PORT_ATTR_SET, p->dev,
-				       &info.info, NULL);
+				       &info.info, extack);
 	err = notifier_to_errno(err);
 	if (err == -EOPNOTSUPP)
 		return 0;
 
 	if (err) {
-		br_warn(p->br, "bridge flag offload is not supported %u(%s)\n",
-			(unsigned int)p->port_no, p->dev->name);
+		if (extack && !extack->_msg)
+			NL_SET_ERR_MSG_MOD(extack,
+					   "bridge flag offload is not supported");
 		return -EOPNOTSUPP;
 	}
 
@@ -96,8 +98,7 @@ int br_switchdev_set_port_flag(struct net_bridge_port *p,
 
 	err = switchdev_port_attr_set(p->dev, &attr);
 	if (err) {
-		br_warn(p->br, "error setting offload flag on port %u(%s)\n",
-			(unsigned int)p->port_no, p->dev->name);
+		NL_SET_ERR_MSG_MOD(extack, "error setting offload flag on port");
 		return err;
 	}
 
diff --git a/net/bridge/br_sysfs_if.c b/net/bridge/br_sysfs_if.c
index 5aea9427ffe1..72e92376eef1 100644
--- a/net/bridge/br_sysfs_if.c
+++ b/net/bridge/br_sysfs_if.c
@@ -59,6 +59,7 @@ static BRPORT_ATTR(_name, 0644,					\
 static int store_flag(struct net_bridge_port *p, unsigned long v,
 		      unsigned long mask)
 {
+	struct netlink_ext_ack extack = {0};
 	unsigned long flags = p->flags;
 	int err;
 
@@ -68,9 +69,11 @@ static int store_flag(struct net_bridge_port *p, unsigned long v,
 		flags &= ~mask;
 
 	if (flags != p->flags) {
-		err = br_switchdev_set_port_flag(p, flags, mask);
-		if (err)
+		err = br_switchdev_set_port_flag(p, flags, mask, &extack);
+		if (err) {
+			netdev_err(p->dev, "%s\n", extack._msg);
 			return err;
+		}
 
 		p->flags = flags;
 		br_port_flags_change(p, mask);
-- 
2.25.1

