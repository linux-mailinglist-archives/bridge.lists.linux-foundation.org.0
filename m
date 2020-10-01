Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F39427FD6A
	for <lists.bridge@lfdr.de>; Thu,  1 Oct 2020 12:33:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DBFE9231A1;
	Thu,  1 Oct 2020 10:33:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vFwIYziRftrr; Thu,  1 Oct 2020 10:33:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 138CA231A0;
	Thu,  1 Oct 2020 10:33:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 04DD8C0051;
	Thu,  1 Oct 2020 10:33:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5FD80C0051
 for <bridge@lists.linux-foundation.org>; Thu,  1 Oct 2020 10:33:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4C6F086B5E
 for <bridge@lists.linux-foundation.org>; Thu,  1 Oct 2020 10:33:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qj4J0jsnV9Do for <bridge@lists.linux-foundation.org>;
 Thu,  1 Oct 2020 10:33:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 781C586B65
 for <bridge@lists.linux-foundation.org>; Thu,  1 Oct 2020 10:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1601548379; x=1633084379;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NKXV1txIRWBopGeNfGHrv1KvIEltoOYzNq5YVtkf2iw=;
 b=p1gc8lm6KX3NHJBPsX2xIBhFY9DGwj/r2MTEpIB9cENq6LrulFKYBVUw
 iQ6d1PY87g/yvrAjB1GKXvJTfJcy/iXWMhoDGAY8LNG6W8oP7qx+08XA5
 o76zZTW+C1V9qLWCgXwzdUduv1XaapOpLUsbo9IL6ba1R9DMu4PY/3L6E
 HGYWOwME/nUmRgt6yU1DAK1TOKql65DWdmmkUs5O9Ho0iwbuWE1QjsuVm
 o/L/8YxcEnpbYqMGILeIas30lUMYMt+FMAMdULoNOiQaxlURkKIUE6kt+
 ISZpvW+CXZbHLaKCVav5RWuzLqIi3idhog2xJO9er+mM7djQXvfjKmF7j Q==;
IronPort-SDR: 5htpnA6LiPtEykOLCZnwB/QayYnHPt+mgdhcKhpJr4eeX37cN279j4M95ziMyH2IiFApYCOXN5
 hBxY5ZnO4zi6FlURczmFdXG0ZuJCL1rDg2bQ/TKwXcYQYIuBC/YjGlyucHdM6/lsRtNWvW91G2
 8dKxFFHGM3DhQfMhN3IRrWOdI70u5fdb9S+DTh1+1GphBqGAVzPGjHuJlulneG/VhVXefhrJQF
 ufTvqw01ieKcu9nz28tdn475ApyD8/d7qF/cGaZHkXJhq5MfveWzteimA5J9TRFKYRNiLitT8i
 4Jc=
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="88772460"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Oct 2020 03:32:59 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 1 Oct 2020 03:32:33 -0700
Received: from soft-test08.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Thu, 1 Oct 2020 03:32:31 -0700
To: <davem@davemloft.net>, <kuba@kernel.org>, <roopa@nvidia.com>,
 <nikolay@nvidia.com>, <jiri@mellanox.com>, <idosch@mellanox.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <UNGLinuxDriver@microchip.com>
Date: Thu, 1 Oct 2020 10:30:17 +0000
Message-ID: <20201001103019.1342470-10-henrik.bjoernlund@microchip.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001103019.1342470-1-henrik.bjoernlund@microchip.com>
References: <20201001103019.1342470-1-henrik.bjoernlund@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>,
 Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [net-next v2 09/11] bridge: cfm: Bridge port remove.
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
From: Henrik Bjoernlund via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

This is addition of CFM functionality to delete MEP instances
on a port that is removed from the bridge.
A MEP can only exist on a port that is related to a bridge.

Reviewed-by: Horatiu Vultur  <horatiu.vultur@microchip.com>
Signed-off-by: Henrik Bjoernlund  <henrik.bjoernlund@microchip.com>m
---
 net/bridge/br_cfm.c     | 13 +++++++++++++
 net/bridge/br_if.c      |  1 +
 net/bridge/br_private.h |  6 ++++++
 3 files changed, 20 insertions(+)

diff --git a/net/bridge/br_cfm.c b/net/bridge/br_cfm.c
index 6fbfef44c235..fc8268cb76c1 100644
--- a/net/bridge/br_cfm.c
+++ b/net/bridge/br_cfm.c
@@ -867,3 +867,16 @@ bool br_cfm_created(struct net_bridge *br)
 {
 	return !hlist_empty(&br->mep_list);
 }
+
+/* Deletes the CFM instances on a specific bridge port
+ */
+void br_cfm_port_del(struct net_bridge *br, struct net_bridge_port *port)
+{
+	struct br_cfm_mep *mep;
+
+	ASSERT_RTNL();
+
+	hlist_for_each_entry(mep, &br->mep_list, head)
+		if (mep->create.ifindex == port->dev->ifindex)
+			mep_delete_implementation(br, mep);
+}
diff --git a/net/bridge/br_if.c b/net/bridge/br_if.c
index a0e9a7937412..f7d2f472ae24 100644
--- a/net/bridge/br_if.c
+++ b/net/bridge/br_if.c
@@ -334,6 +334,7 @@ static void del_nbp(struct net_bridge_port *p)
 	spin_unlock_bh(&br->lock);
 
 	br_mrp_port_del(br, p);
+	br_cfm_port_del(br, p);
 
 	br_ifinfo_notify(RTM_DELLINK, NULL, p);
 
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 5954ee45af80..735dd0028b40 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1465,6 +1465,7 @@ static inline int br_mrp_fill_info(struct sk_buff *skb, struct net_bridge *br)
 int br_cfm_parse(struct net_bridge *br, struct net_bridge_port *p,
 		 struct nlattr *attr, int cmd, struct netlink_ext_ack *extack);
 bool br_cfm_created(struct net_bridge *br);
+void br_cfm_port_del(struct net_bridge *br, struct net_bridge_port *p);
 int br_cfm_config_fill_info(struct sk_buff *skb, struct net_bridge *br);
 int br_cfm_status_fill_info(struct sk_buff *skb,
 			    struct net_bridge *br,
@@ -1484,6 +1485,11 @@ static inline bool br_cfm_created(struct net_bridge *br)
 	return false;
 }
 
+static inline void br_cfm_port_del(struct net_bridge *br,
+				   struct net_bridge_port *p)
+{
+}
+
 static inline int br_cfm_config_fill_info(struct sk_buff *skb, struct net_bridge *br)
 {
 	return -EOPNOTSUPP;
-- 
2.28.0

