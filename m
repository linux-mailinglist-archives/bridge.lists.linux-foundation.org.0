Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 726E1206EA1
	for <lists.bridge@lfdr.de>; Wed, 24 Jun 2020 10:08:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1E2A988745;
	Wed, 24 Jun 2020 08:08:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s-PKM0BDEFRu; Wed, 24 Jun 2020 08:08:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 395F188734;
	Wed, 24 Jun 2020 08:08:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 21746C016F;
	Wed, 24 Jun 2020 08:08:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4FF81C016F
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 08:08:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 34E8F2079D
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 08:08:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q0FjpIgDfZuf for <bridge@lists.linux-foundation.org>;
 Wed, 24 Jun 2020 08:08:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by silver.osuosl.org (Postfix) with ESMTPS id F36BE20500
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 08:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592986093; x=1624522093;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=D11xrmOG1dHIwbST9R/8Qi3lfCXvcI4F/TDRZva0rZo=;
 b=VP0PwtWoAqxrTbR6hmkVWgL2FCQAs6cOM/k0e5K5o3FkCH47AxJ0QnQw
 hUAMxy1/U5QqKlQDQVLKJfIoIEdlwAohsya9w6G5abpxPFXJykcH4kIpw
 gOe2MLabxCwzROGS7wuJg9F4vSWVqX4AR0eXwW9UyvvzxKZCgwi+/Ze4B
 3MHAm+Gh/0waeNNiVLmagRm0VvL9/rhrA5CkNJXPTrZqp/LdE+8hC1Y62
 Oyrwdf0ox8KKqGnMTho371f9/N2cF0geJI30rdsbaJDy1bN/z30sOQH8U
 j2CUOXUrwkLUQkDY0UQsUDerSrlDHq2gb29Cb+pROzqNtywXmnyScCmJp g==;
IronPort-SDR: eoYQknfFwTw+JJP2SwfYkFl5K4GzAHKewXPuYR8ER/QnPoUb/MV6Gt20aGc8rRKH6B0hckeH//
 VRcpuSCMWxOdBW21i5vPFA7k9GloxKRIjrzO06h6pYxZn9l/J7Coq86j49ymUxzpJvbvqI07dh
 7Qr5ft4HAEtDWkEdVY6S0yKSpwLR5D8zWR0bA40v1Y3FjPGgKK0g9N8IWs1wT1OdMYJ+Z2ZV4f
 5cl3aprjveJ07H/G0ayTcRK2s0dgPgacXYkWDa74E1Mo65sguJ0NKTanJGsZyImEOQwzjfpwjP
 yxE=
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; d="scan'208";a="81366261"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Jun 2020 01:08:13 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 24 Jun 2020 01:08:12 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Wed, 24 Jun 2020 01:08:10 -0700
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Wed, 24 Jun 2020 10:05:37 +0200
Message-ID: <20200624080537.3154332-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next] bridge: mrp: Extend MRP netlink interface
	with IFLA_BRIDGE_MRP_CLEAR
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
index 24986ec7d38cc..02d102edaaaad 100644
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
+
+	list_for_each_entry_rcu(mrp, &br->mrp_list, list,
+				lockdep_rtnl_is_held()) {
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

