Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E6B209A44
	for <lists.bridge@lfdr.de>; Thu, 25 Jun 2020 09:07:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 60F77886E5;
	Thu, 25 Jun 2020 07:07:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ljSNL3cG12ZE; Thu, 25 Jun 2020 07:07:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2BB29886DA;
	Thu, 25 Jun 2020 07:07:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0EADBC0891;
	Thu, 25 Jun 2020 07:07:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8F96BC016F
 for <bridge@lists.linux-foundation.org>; Thu, 25 Jun 2020 07:07:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7EF3C886B9
 for <bridge@lists.linux-foundation.org>; Thu, 25 Jun 2020 07:07:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z0K0576EVXDV for <bridge@lists.linux-foundation.org>;
 Thu, 25 Jun 2020 07:07:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D0872886B6
 for <bridge@lists.linux-foundation.org>; Thu, 25 Jun 2020 07:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1593068873; x=1624604873;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ocqbu3v4ohPkO/+6EOdwjkOngWeWUMVIVcHb+6aFSJ0=;
 b=bDy0Te/4bjW/lj/Ipkxu+60DVy0mqpbLmg61SsbXzcfq+w511s36zY9R
 XbFVv06bJR5bWfGFQ/kKUHWbXsHxkU2ribE2bwhJXYdK/qC4ipIGlicNT
 yPXZgnKwE9sASs9+XVHd64kxONhckupCYqMIPhguUKrw3k4XR2mHpUTiR
 mhYImEAnXy+L1Zjq6xGVyXCGv05hKMcDLfMPiZRzony685G0jKtogxLPh
 Z0Vm1Mlw5TbbgosAWv8IP1OR/5xAIqRdKAJu0JOpbDG6KIU1FHN71EyEx
 ISYbGHIJZuRuZyLpSPIo908FqHIqOkwg3JJxiGbOxuj3RcgxRh0jRagDu w==;
IronPort-SDR: Pb9+EQOcuTC16BuOiCqwqF4U/jg0NLGEYbuRye92AjTU7KYN0/a5byV11STKGWZBoweGoRkwOr
 B9AXeAqdP9i5wtwvJPI32Zv2W7yJ+9Zl+w5J5eaigyMZ1f1/v7g830WzBijLyqGdxOH4YEO5ha
 M8C/aromQNReQWIVeJP7PUNbBuYwWeHZNevYChm2BA8oLIiUwLmN7uKdOEuSg2iVbLSzqHmJMU
 tLq0oFqBmmd3ELAyUEA5+t229cW7ROnZE9jit9y3NNBFtSW+dqKndwjlk7yWJ2Ew7HPOHRFyRv
 4co=
X-IronPort-AV: E=Sophos;i="5.75,278,1589266800"; d="scan'208";a="80846156"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Jun 2020 00:07:52 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 25 Jun 2020 00:07:38 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Thu, 25 Jun 2020 00:07:49 -0700
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Thu, 25 Jun 2020 09:06:30 +0200
Message-ID: <20200625070630.3267620-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v2] bridge: mrp: Extend MRP netlink
	interface with IFLA_BRIDGE_MRP_CLEAR
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
From: Horatiu Vultur via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Horatiu Vultur <horatiu.vultur@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

In case the userspace daemon dies, then when is restarted it doesn't
know if there are any MRP instances in the kernel. Therefore extend the
netlink interface to allow the daemon to clear all MRP instances when is
started.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>

---
v2:
  - use list_for_each_entry_safe instead of list_for_each_entry_rcu
    when deleting mrp instances
---
 include/uapi/linux/if_bridge.h |  8 ++++++++
 net/bridge/br_mrp.c            | 15 +++++++++++++++
 net/bridge/br_mrp_netlink.c    | 26 ++++++++++++++++++++++++++
 net/bridge/br_private_mrp.h    |  1 +
 4 files changed, 50 insertions(+)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index caa6914a3e53a..2ae7d0c0d46b8 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -166,6 +166,7 @@ enum {
 	IFLA_BRIDGE_MRP_RING_STATE,
 	IFLA_BRIDGE_MRP_RING_ROLE,
 	IFLA_BRIDGE_MRP_START_TEST,
+	IFLA_BRIDGE_MRP_CLEAR,
 	__IFLA_BRIDGE_MRP_MAX,
 };
 
@@ -228,6 +229,13 @@ enum {
 
 #define IFLA_BRIDGE_MRP_START_TEST_MAX (__IFLA_BRIDGE_MRP_START_TEST_MAX - 1)
 
+enum {
+	IFLA_BRIDGE_MRP_CLEAR_UNSPEC,
+	__IFLA_BRIDGE_MRP_CLEAR_MAX,
+};
+
+#define IFLA_BRIDGE_MRP_CLEAR_MAX (__IFLA_BRIDGE_MRP_CLEAR_MAX - 1)
+
 struct br_mrp_instance {
 	__u32 ring_id;
 	__u32 p_ifindex;
diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
index 24986ec7d38cc..02da4e22d277a 100644
--- a/net/bridge/br_mrp.c
+++ b/net/bridge/br_mrp.c
@@ -372,6 +372,21 @@ int br_mrp_del(struct net_bridge *br, struct br_mrp_instance *instance)
 	return 0;
 }
 
+/* Deletes all MRP instances on the bridge
+ * note: called under rtnl_lock
+ */
+int br_mrp_clear(struct net_bridge *br)
+{
+	struct br_mrp *mrp;
+	struct br_mrp *tmp;
+
+	list_for_each_entry_safe(mrp, tmp, &br->mrp_list, list) {
+		br_mrp_del_impl(br, mrp);
+	}
+
+	return 0;
+}
+
 /* Set port state, port state can be forwarding, blocked or disabled
  * note: already called with rtnl_lock
  */
diff --git a/net/bridge/br_mrp_netlink.c b/net/bridge/br_mrp_netlink.c
index 34b3a8776991f..5e743538464f6 100644
--- a/net/bridge/br_mrp_netlink.c
+++ b/net/bridge/br_mrp_netlink.c
@@ -14,6 +14,7 @@ static const struct nla_policy br_mrp_policy[IFLA_BRIDGE_MRP_MAX + 1] = {
 	[IFLA_BRIDGE_MRP_RING_STATE]	= { .type = NLA_NESTED },
 	[IFLA_BRIDGE_MRP_RING_ROLE]	= { .type = NLA_NESTED },
 	[IFLA_BRIDGE_MRP_START_TEST]	= { .type = NLA_NESTED },
+	[IFLA_BRIDGE_MRP_CLEAR]		= { .type = NLA_NESTED },
 };
 
 static const struct nla_policy
@@ -235,6 +236,25 @@ static int br_mrp_start_test_parse(struct net_bridge *br, struct nlattr *attr,
 	return br_mrp_start_test(br, &test);
 }
 
+static const struct nla_policy
+br_mrp_clear_policy[IFLA_BRIDGE_MRP_CLEAR_MAX + 1] = {
+	[IFLA_BRIDGE_MRP_CLEAR_UNSPEC]		= { .type = NLA_REJECT },
+};
+
+static int br_mrp_clear_parse(struct net_bridge *br, struct nlattr *attr,
+			      struct netlink_ext_ack *extack)
+{
+	struct nlattr *tb[IFLA_BRIDGE_MRP_START_TEST_MAX + 1];
+	int err;
+
+	err = nla_parse_nested(tb, IFLA_BRIDGE_MRP_CLEAR_MAX, attr,
+			       br_mrp_clear_policy, extack);
+	if (err)
+		return err;
+
+	return br_mrp_clear(br);
+}
+
 int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
 		 struct nlattr *attr, int cmd, struct netlink_ext_ack *extack)
 {
@@ -301,6 +321,12 @@ int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
 			return err;
 	}
 
+	if (tb[IFLA_BRIDGE_MRP_CLEAR]) {
+		err = br_mrp_clear_parse(br, tb[IFLA_BRIDGE_MRP_CLEAR], extack);
+		if (err)
+			return err;
+	}
+
 	return 0;
 }
 
diff --git a/net/bridge/br_private_mrp.h b/net/bridge/br_private_mrp.h
index 33b255e38ffec..25c3b8596c25b 100644
--- a/net/bridge/br_private_mrp.h
+++ b/net/bridge/br_private_mrp.h
@@ -36,6 +36,7 @@ struct br_mrp {
 /* br_mrp.c */
 int br_mrp_add(struct net_bridge *br, struct br_mrp_instance *instance);
 int br_mrp_del(struct net_bridge *br, struct br_mrp_instance *instance);
+int br_mrp_clear(struct net_bridge *br);
 int br_mrp_set_port_state(struct net_bridge_port *p,
 			  enum br_mrp_port_state_type state);
 int br_mrp_set_port_role(struct net_bridge_port *p,
-- 
2.26.2

