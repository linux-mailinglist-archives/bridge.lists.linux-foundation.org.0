Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B423161F0
	for <lists.bridge@lfdr.de>; Wed, 10 Feb 2021 10:19:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 06A0184826;
	Wed, 10 Feb 2021 09:19:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gOsbamrbgom8; Wed, 10 Feb 2021 09:19:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 547DB84553;
	Wed, 10 Feb 2021 09:19:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 37D7DC013A;
	Wed, 10 Feb 2021 09:19:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AFE9DC013A
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 09:19:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9D7E187227
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 09:19:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ef9tQjzkqKFx for <bridge@lists.linux-foundation.org>;
 Wed, 10 Feb 2021 09:19:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
 [209.85.218.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6956F8723B
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 09:19:19 +0000 (UTC)
Received: by mail-ej1-f43.google.com with SMTP id lg21so2826599ejb.3
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 01:19:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BaqHv35UAk0w7T/uD/CSSDW6lycJdyqutaqpLfpkUVI=;
 b=U474aC74CwqAWi7SHJtwSnOKIbXigvlO4bts0L0AuxnJDjKGkfNO45S3MpsQ63V89l
 fzpg46e7j1JdZq45baVuSlaFsCMXkjN+tV4CLnbkIN5B6W7rwfE/6KnnKvr67JjxLHRD
 NEr2T5ppiT9A64tJKtRqU/COyK1X0dPM4g1Ztp0ar7chXMlGm/oAwfWJh4W1P/h1YUEF
 m7raxCMKjjmPsLeBysEz0YF2TyItESN7lJInywLxVC3xue7JEXTLzTTHBFi7tIkRV8bb
 nX5f17aJKpGRjbUyEkpXVJv60+cJDb6NddGoCfkwRdmlJArGcrpnKhqpV5iycsPMR0Wh
 2oZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BaqHv35UAk0w7T/uD/CSSDW6lycJdyqutaqpLfpkUVI=;
 b=tiOd2V7nrmrovcn0CSd558DPz1b36iaWLhrQtZGR0mtL75Fuq+mMcMEsGDYRCy1sM0
 HEinT6qig5B5cVUD01vhpirv5HGBByQ/qUQi73BON1ZbIV7vqK1E2JK384LwCzIKmrBF
 P/vpKxOxq8ajsYPgkISENWyebMiJqcm4bmSIGC+XUP3AenhKqYsCd7QjDJUciCJ4iODL
 E4QIU7DKo+Z2actf8Wb9olTB2c8MlpZQUCiuoEWz7pd8cLLpZYSJhq4PR/Ok0RIHhdDk
 sPPlLFHH6KA0lNnJ75LIZyKEgG1gHn5NcgGZlvSowG6cKWWXko4EWCd7QyzmXAv3xzDh
 rJlw==
X-Gm-Message-State: AOAM530Oc0luan03Jd9TCVT1Ufnb82/hh6zGe2JLl27ndcLU0Rlluwat
 42QDVJcWmGBYSWZsEszc5yg=
X-Google-Smtp-Source: ABdhPJxJFKeE+HQFussmBFnBxLn/qAlsEu7SJIIcZc9iiyPppfQZzhx46FNg4sjy4j9lZHHZEGogTw==
X-Received: by 2002:a17:906:391b:: with SMTP id
 f27mr1990443eje.228.1612948757874; 
 Wed, 10 Feb 2021 01:19:17 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id u2sm701801ejb.65.2021.02.10.01.19.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 01:19:16 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Date: Wed, 10 Feb 2021 11:14:37 +0200
Message-Id: <20210210091445.741269-4-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210210091445.741269-1-olteanv@gmail.com>
References: <20210210091445.741269-1-olteanv@gmail.com>
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
Subject: [Bridge] [PATCH v3 net-next 03/11] net: bridge: don't print in
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

Currently br_switchdev_set_port_flag has two options for error handling
and neither is good:
- The driver returns -EOPNOTSUPP in PRE_BRIDGE_FLAGS if it doesn't
  support offloading that flag, and this gets silently ignored and
  converted to an errno of 0. Nobody does this.
- The driver returns some other error code, like -EINVAL, in
  PRE_BRIDGE_FLAGS, and br_switchdev_set_port_flag shouts loudly.

The problem is that we'd like to offload some port flags during bridge
join and leave, but also not have the bridge shout at us if those fail.
But on the other hand we'd like the user to know that we can't offload
something when they set that through netlink. And since we can't have
the driver return -EOPNOTSUPP or -EINVAL depending on whether it's
called by the user or internally by the bridge, let's just add an extack
argument to br_switchdev_set_port_flag and propagate it to its callers.
Then, when we need offloading to really fail silently, this can simply
be passed a NULL argument.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
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
index 4e64775bd8fb..b7731614c036 100644
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
@@ -896,7 +897,7 @@ static int br_setport(struct net_bridge_port *p, struct nlattr *tb[])
 
 	changed_mask = old_flags ^ p->flags;
 
-	err = br_switchdev_set_port_flag(p, p->flags, changed_mask);
+	err = br_switchdev_set_port_flag(p, p->flags, changed_mask, extack);
 	if (err) {
 		p->flags = old_flags;
 		goto out;
@@ -1015,7 +1016,7 @@ int br_setlink(struct net_device *dev, struct nlmsghdr *nlh, u16 flags,
 			if (err)
 				return err;
 
-			err = br_setport(p, tb);
+			err = br_setport(p, tb, extack);
 		} else {
 			/* Binary compatibility with old RSTP */
 			if (nla_len(protinfo) < sizeof(u8))
@@ -1105,7 +1106,7 @@ static int br_port_slave_changelink(struct net_device *brdev,
 	if (!data)
 		return 0;
 
-	return br_setport(br_port_get_rtnl(dev), data);
+	return br_setport(br_port_get_rtnl(dev), data, extack);
 }
 
 static int br_port_fill_slave_info(struct sk_buff *skb,
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
index c004ade25ac0..ac8dead86bf2 100644
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
@@ -80,14 +81,15 @@ int br_switchdev_set_port_flag(struct net_bridge_port *p,
 
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
 
@@ -97,8 +99,7 @@ int br_switchdev_set_port_flag(struct net_bridge_port *p,
 
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

