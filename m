Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2BB219CD7
	for <lists.bridge@lfdr.de>; Thu,  9 Jul 2020 12:03:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 07E3E8713F;
	Thu,  9 Jul 2020 10:03:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zCt38jucV6PE; Thu,  9 Jul 2020 10:03:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 54D5C86375;
	Thu,  9 Jul 2020 10:03:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 49484C077B;
	Thu,  9 Jul 2020 10:03:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BF035C077B
 for <bridge@lists.linux-foundation.org>; Thu,  9 Jul 2020 10:03:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 91A3220488
 for <bridge@lists.linux-foundation.org>; Thu,  9 Jul 2020 10:02:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 10bVEdVmJAJk for <bridge@lists.linux-foundation.org>;
 Thu,  9 Jul 2020 10:02:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by silver.osuosl.org (Postfix) with ESMTPS id 14D2F26B0A
 for <bridge@lists.linux-foundation.org>; Thu,  9 Jul 2020 10:02:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1594288931; x=1625824931;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BbeLW9UFW6nT1q3GYOn5N1tTxHNfvT3usXjhXTuBW6M=;
 b=OjFlmpRUk0LE6XoaX+pEbFPMmOOVC0adJXQyLjTopydDzaeoFDqWYyF3
 xthJ5xDpUZaJJDKMGs6I7QbR+VRgGuTboESydPyDjjmngyGmH0KGPRX9I
 GFVQQkSoX2UKqEWcMmOsLYak3/b4uOPmgGdGL3Tmb4tB/RJbwGfsmiTL1
 4sfEqZKp7Wyp74/wj40VKfFDjs4MUJvlhlHgpwG0fn7/pkcoufF7+GxFx
 jwNMzw3x9q1EQigTxvEUvPpy+hP1pzvrp7583m1Jv1oAz4JesKE+nI6TS
 EFRQtN73UDBfY3SKZOpbc7lf5Dw1ueUu4vOvE/r24dLWPX2OpLH0I6Ums g==;
IronPort-SDR: lpsotU73T48u3mur41NEoIwJKrPuYIUHHzRYfvKfsa8f9fTDIFp/dhuRu1YMeFeemiQ8GdGNt1
 jigp32ySXsUSViQPOXJLYzIHEj8TjHWeGCl0tCq4sLl1jRoJFgSpK3T/rgjvBe8sr0ITRXtQ9w
 EKEj9rmJts+g9bRA+82guN8QkN9gWuRpZgiJ8KXXVJviRQpJAARalowzC4qGowF3BXudyWAHV/
 clcge+ZeXxYOvGclwBkrnpRMemZuYnCY/iIl4SozKzL6sBsLwVvRFyujSuyBEgsVnN3s9beXZx
 aJE=
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="82397780"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jul 2020 03:02:10 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 9 Jul 2020 03:02:05 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Thu, 9 Jul 2020 03:02:02 -0700
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <jiri@resnulli.us>,
 <ivecera@redhat.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Thu, 9 Jul 2020 12:00:37 +0200
Message-ID: <20200709100040.554623-10-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200709100040.554623-1-horatiu.vultur@microchip.com>
References: <20200709100040.554623-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v2 09/12] bridge: mrp: Extend MRP netlink
	interface for configuring MRP interconnect
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

This patch extends the existing MRP netlink interface with the following
attributes: IFLA_BRIDGE_MRP_IN_ROLE, IFLA_BRIDGE_MRP_IN_STATE and
IFLA_BRIDGE_MRP_START_IN_TEST. These attributes are similar with their
ring attributes but they apply to the interconnect port.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_mrp_netlink.c | 140 ++++++++++++++++++++++++++++++++++++
 1 file changed, 140 insertions(+)

diff --git a/net/bridge/br_mrp_netlink.c b/net/bridge/br_mrp_netlink.c
index 4bf7aaeb29152..a006e0771e8d3 100644
--- a/net/bridge/br_mrp_netlink.c
+++ b/net/bridge/br_mrp_netlink.c
@@ -14,6 +14,9 @@ static const struct nla_policy br_mrp_policy[IFLA_BRIDGE_MRP_MAX + 1] = {
 	[IFLA_BRIDGE_MRP_RING_STATE]	= { .type = NLA_NESTED },
 	[IFLA_BRIDGE_MRP_RING_ROLE]	= { .type = NLA_NESTED },
 	[IFLA_BRIDGE_MRP_START_TEST]	= { .type = NLA_NESTED },
+	[IFLA_BRIDGE_MRP_IN_ROLE]	= { .type = NLA_NESTED },
+	[IFLA_BRIDGE_MRP_IN_STATE]	= { .type = NLA_NESTED },
+	[IFLA_BRIDGE_MRP_START_IN_TEST]	= { .type = NLA_NESTED },
 };
 
 static const struct nla_policy
@@ -235,6 +238,121 @@ static int br_mrp_start_test_parse(struct net_bridge *br, struct nlattr *attr,
 	return br_mrp_start_test(br, &test);
 }
 
+static const struct nla_policy
+br_mrp_in_state_policy[IFLA_BRIDGE_MRP_IN_STATE_MAX + 1] = {
+	[IFLA_BRIDGE_MRP_IN_STATE_UNSPEC]	= { .type = NLA_REJECT },
+	[IFLA_BRIDGE_MRP_IN_STATE_IN_ID]	= { .type = NLA_U32 },
+	[IFLA_BRIDGE_MRP_IN_STATE_STATE]	= { .type = NLA_U32 },
+};
+
+static int br_mrp_in_state_parse(struct net_bridge *br, struct nlattr *attr,
+				 struct netlink_ext_ack *extack)
+{
+	struct nlattr *tb[IFLA_BRIDGE_MRP_IN_STATE_MAX + 1];
+	struct br_mrp_in_state state;
+	int err;
+
+	err = nla_parse_nested(tb, IFLA_BRIDGE_MRP_IN_STATE_MAX, attr,
+			       br_mrp_in_state_policy, extack);
+	if (err)
+		return err;
+
+	if (!tb[IFLA_BRIDGE_MRP_IN_STATE_IN_ID] ||
+	    !tb[IFLA_BRIDGE_MRP_IN_STATE_STATE]) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Missing attribute: IN_ID or STATE");
+		return -EINVAL;
+	}
+
+	memset(&state, 0x0, sizeof(state));
+
+	state.in_id = nla_get_u32(tb[IFLA_BRIDGE_MRP_IN_STATE_IN_ID]);
+	state.in_state = nla_get_u32(tb[IFLA_BRIDGE_MRP_IN_STATE_STATE]);
+
+	return br_mrp_set_in_state(br, &state);
+}
+
+static const struct nla_policy
+br_mrp_in_role_policy[IFLA_BRIDGE_MRP_IN_ROLE_MAX + 1] = {
+	[IFLA_BRIDGE_MRP_IN_ROLE_UNSPEC]	= { .type = NLA_REJECT },
+	[IFLA_BRIDGE_MRP_IN_ROLE_RING_ID]	= { .type = NLA_U32 },
+	[IFLA_BRIDGE_MRP_IN_ROLE_IN_ID]		= { .type = NLA_U16 },
+	[IFLA_BRIDGE_MRP_IN_ROLE_ROLE]		= { .type = NLA_U32 },
+	[IFLA_BRIDGE_MRP_IN_ROLE_I_IFINDEX]	= { .type = NLA_U32 },
+};
+
+static int br_mrp_in_role_parse(struct net_bridge *br, struct nlattr *attr,
+				struct netlink_ext_ack *extack)
+{
+	struct nlattr *tb[IFLA_BRIDGE_MRP_IN_ROLE_MAX + 1];
+	struct br_mrp_in_role role;
+	int err;
+
+	err = nla_parse_nested(tb, IFLA_BRIDGE_MRP_IN_ROLE_MAX, attr,
+			       br_mrp_in_role_policy, extack);
+	if (err)
+		return err;
+
+	if (!tb[IFLA_BRIDGE_MRP_IN_ROLE_RING_ID] ||
+	    !tb[IFLA_BRIDGE_MRP_IN_ROLE_IN_ID] ||
+	    !tb[IFLA_BRIDGE_MRP_IN_ROLE_I_IFINDEX] ||
+	    !tb[IFLA_BRIDGE_MRP_IN_ROLE_ROLE]) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Missing attribute: RING_ID or ROLE or IN_ID or I_IFINDEX");
+		return -EINVAL;
+	}
+
+	memset(&role, 0x0, sizeof(role));
+
+	role.ring_id = nla_get_u32(tb[IFLA_BRIDGE_MRP_IN_ROLE_RING_ID]);
+	role.in_id = nla_get_u16(tb[IFLA_BRIDGE_MRP_IN_ROLE_IN_ID]);
+	role.i_ifindex = nla_get_u32(tb[IFLA_BRIDGE_MRP_IN_ROLE_I_IFINDEX]);
+	role.in_role = nla_get_u32(tb[IFLA_BRIDGE_MRP_IN_ROLE_ROLE]);
+
+	return br_mrp_set_in_role(br, &role);
+}
+
+static const struct nla_policy
+br_mrp_start_in_test_policy[IFLA_BRIDGE_MRP_START_IN_TEST_MAX + 1] = {
+	[IFLA_BRIDGE_MRP_START_IN_TEST_UNSPEC]	= { .type = NLA_REJECT },
+	[IFLA_BRIDGE_MRP_START_IN_TEST_IN_ID]	= { .type = NLA_U32 },
+	[IFLA_BRIDGE_MRP_START_IN_TEST_INTERVAL]	= { .type = NLA_U32 },
+	[IFLA_BRIDGE_MRP_START_IN_TEST_MAX_MISS]	= { .type = NLA_U32 },
+	[IFLA_BRIDGE_MRP_START_IN_TEST_PERIOD]	= { .type = NLA_U32 },
+};
+
+static int br_mrp_start_in_test_parse(struct net_bridge *br,
+				      struct nlattr *attr,
+				      struct netlink_ext_ack *extack)
+{
+	struct nlattr *tb[IFLA_BRIDGE_MRP_START_IN_TEST_MAX + 1];
+	struct br_mrp_start_in_test test;
+	int err;
+
+	err = nla_parse_nested(tb, IFLA_BRIDGE_MRP_START_IN_TEST_MAX, attr,
+			       br_mrp_start_in_test_policy, extack);
+	if (err)
+		return err;
+
+	if (!tb[IFLA_BRIDGE_MRP_START_IN_TEST_IN_ID] ||
+	    !tb[IFLA_BRIDGE_MRP_START_IN_TEST_INTERVAL] ||
+	    !tb[IFLA_BRIDGE_MRP_START_IN_TEST_MAX_MISS] ||
+	    !tb[IFLA_BRIDGE_MRP_START_IN_TEST_PERIOD]) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Missing attribute: RING_ID or INTERVAL or MAX_MISS or PERIOD");
+		return -EINVAL;
+	}
+
+	memset(&test, 0x0, sizeof(test));
+
+	test.in_id = nla_get_u32(tb[IFLA_BRIDGE_MRP_START_IN_TEST_IN_ID]);
+	test.interval = nla_get_u32(tb[IFLA_BRIDGE_MRP_START_IN_TEST_INTERVAL]);
+	test.max_miss = nla_get_u32(tb[IFLA_BRIDGE_MRP_START_IN_TEST_MAX_MISS]);
+	test.period = nla_get_u32(tb[IFLA_BRIDGE_MRP_START_IN_TEST_PERIOD]);
+
+	return br_mrp_start_in_test(br, &test);
+}
+
 int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
 		 struct nlattr *attr, int cmd, struct netlink_ext_ack *extack)
 {
@@ -301,6 +419,28 @@ int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
 			return err;
 	}
 
+	if (tb[IFLA_BRIDGE_MRP_IN_STATE]) {
+		err = br_mrp_in_state_parse(br, tb[IFLA_BRIDGE_MRP_IN_STATE],
+					    extack);
+		if (err)
+			return err;
+	}
+
+	if (tb[IFLA_BRIDGE_MRP_IN_ROLE]) {
+		err = br_mrp_in_role_parse(br, tb[IFLA_BRIDGE_MRP_IN_ROLE],
+					   extack);
+		if (err)
+			return err;
+	}
+
+	if (tb[IFLA_BRIDGE_MRP_START_IN_TEST]) {
+		err = br_mrp_start_in_test_parse(br,
+						 tb[IFLA_BRIDGE_MRP_START_IN_TEST],
+						 extack);
+		if (err)
+			return err;
+	}
+
 	return 0;
 }
 
-- 
2.27.0

