Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DADD61953C8
	for <lists.bridge@lfdr.de>; Fri, 27 Mar 2020 10:22:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F2C0C88AC0;
	Fri, 27 Mar 2020 09:22:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3s2Vcl9J5hGf; Fri, 27 Mar 2020 09:22:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id C4B3088A92;
	Fri, 27 Mar 2020 09:22:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A2943C0177;
	Fri, 27 Mar 2020 09:22:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AF2BDC0177
 for <bridge@lists.linux-foundation.org>; Fri, 27 Mar 2020 09:22:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9ED1B893F9
 for <bridge@lists.linux-foundation.org>; Fri, 27 Mar 2020 09:22:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H1NDI0I1PQt8 for <bridge@lists.linux-foundation.org>;
 Fri, 27 Mar 2020 09:22:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 06245893F5
 for <bridge@lists.linux-foundation.org>; Fri, 27 Mar 2020 09:22:29 +0000 (UTC)
IronPort-SDR: 8VwQFWfWJZK/gDM4bsfsu/DQn2Q3RhC4RucV4uzm1cOsLMfALbWEPDHBy2PYE116MCKW/cekv8
 JVg2heKVJc5Ym4snVyE7TPKFDo6BhvoNNvMr/HV5Vzqh1rlMUZhg7b8TjetKmzOjY9iL1f9Siu
 U1hCyt+b6t1j3xKUYSvE+JcY3TsH4ooeQy/cRNAbL506sgNm3SPWLuXvzJJtXD9GwONipSD4vm
 LlH8H5YFcz5J5fR0+YVa7A0GL4hhHvmO5UGo4V1VKWQufo2ggAU6LkmwPUO4yprPbEJjEXxAVp
 ZpA=
X-IronPort-AV: E=Sophos;i="5.72,311,1580799600"; d="scan'208";a="73728114"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 Mar 2020 02:22:29 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 27 Mar 2020 02:22:29 -0700
Received: from soft-dev3.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 27 Mar 2020 02:22:26 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <davem@davemloft.net>, <jiri@resnulli.us>, <ivecera@redhat.com>,
 <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <nikolay@cumulusnetworks.com>, <olteanv@gmail.com>, <andrew@lunn.ch>,
 <UNGLinuxDriver@microchip.com>, <linux-kernel@vger.kernel.org>,
 <netdev@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Fri, 27 Mar 2020 10:21:21 +0100
Message-ID: <20200327092126.15407-5-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200327092126.15407-1-horatiu.vultur@microchip.com>
References: <20200327092126.15407-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [RFC net-next v4 4/9] bridge: mrp: Implement netlink
	interface to configure MRP
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

Implement netlink interface to configure MRP. The implementation
will do sanity checks over the attributes and then eventually call the MRP
interface.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_mrp_netlink.c | 176 ++++++++++++++++++++++++++++++++++++
 1 file changed, 176 insertions(+)
 create mode 100644 net/bridge/br_mrp_netlink.c

diff --git a/net/bridge/br_mrp_netlink.c b/net/bridge/br_mrp_netlink.c
new file mode 100644
index 000000000000..043b7f6cddbe
--- /dev/null
+++ b/net/bridge/br_mrp_netlink.c
@@ -0,0 +1,176 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include <net/genetlink.h>
+
+#include <uapi/linux/mrp_bridge.h>
+#include "br_private.h"
+#include "br_private_mrp.h"
+
+static int br_mrp_parse_instance(struct net_bridge *br, struct nlattr *attr,
+				 int cmd)
+{
+	struct br_mrp_instance *instance;
+
+	if (nla_len(attr) != sizeof(*instance))
+		return -EINVAL;
+
+	instance = nla_data(attr);
+
+	if (cmd == RTM_SETLINK)
+		return br_mrp_add(br, instance);
+	else
+		return br_mrp_del(br, instance);
+}
+
+static int br_mrp_parse_port_state(struct net_bridge *br,
+				   struct net_bridge_port *p,
+				   struct nlattr *attr)
+{
+	enum br_mrp_port_state_type state;
+
+	if (nla_len(attr) != sizeof(u32) || !p)
+		return -EINVAL;
+
+	state = nla_get_u32(attr);
+
+	return br_mrp_set_port_state(p, state);
+}
+
+static int br_mrp_parse_port_role(struct net_bridge *br,
+				  struct net_bridge_port *p,
+				  struct nlattr *attr)
+{
+	struct br_mrp_port_role *role;
+
+	if (nla_len(attr) != sizeof(*role) || !p)
+		return -EINVAL;
+
+	role = nla_data(attr);
+
+	return br_mrp_set_port_role(p, role->ring_id, role->role);
+}
+
+static int br_mrp_parse_ring_state(struct net_bridge *br, struct nlattr *attr)
+{
+	struct br_mrp_ring_state *state;
+
+	if (nla_len(attr) != sizeof(*state))
+		return -EINVAL;
+
+	state = nla_data(attr);
+
+	return br_mrp_set_ring_state(br, state->ring_id, state->ring_state);
+}
+
+static int br_mrp_parse_ring_role(struct net_bridge *br, struct nlattr *attr)
+{
+	struct br_mrp_ring_role *role;
+
+	if (nla_len(attr) != sizeof(*role))
+		return -EINVAL;
+
+	role = nla_data(attr);
+
+	return br_mrp_set_ring_role(br, role->ring_id, role->ring_role);
+}
+
+static int br_mrp_parse_start_test(struct net_bridge *br, struct nlattr *attr)
+{
+	struct br_mrp_start_test *test;
+
+	if (nla_len(attr) != sizeof(*test))
+		return -EINVAL;
+
+	test = nla_data(attr);
+
+	return br_mrp_start_test(br, test->ring_id, test->interval,
+				 test->max_miss, test->period);
+}
+
+int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
+		 struct nlattr *attr, int cmd)
+{
+	struct nlattr *mrp;
+	int rem, err;
+
+	nla_for_each_nested(mrp, attr, rem) {
+		err = 0;
+		switch (nla_type(mrp)) {
+		case IFLA_BRIDGE_MRP_INSTANCE:
+			err = br_mrp_parse_instance(br, mrp, cmd);
+			if (err)
+				return err;
+			break;
+		case IFLA_BRIDGE_MRP_PORT_STATE:
+			err = br_mrp_parse_port_state(br, p, mrp);
+			if (err)
+				return err;
+			break;
+		case IFLA_BRIDGE_MRP_PORT_ROLE:
+			err = br_mrp_parse_port_role(br, p, mrp);
+			if (err)
+				return err;
+			break;
+		case IFLA_BRIDGE_MRP_RING_STATE:
+			err = br_mrp_parse_ring_state(br, mrp);
+			if (err)
+				return err;
+			break;
+		case IFLA_BRIDGE_MRP_RING_ROLE:
+			err = br_mrp_parse_ring_role(br, mrp);
+			if (err)
+				return err;
+			break;
+		case IFLA_BRIDGE_MRP_START_TEST:
+			err = br_mrp_parse_start_test(br, mrp);
+			if (err)
+				return err;
+			break;
+		}
+	}
+
+	return 0;
+}
+
+void br_mrp_port_open(struct net_device *dev, u8 loc)
+{
+	struct nlattr *af, *mrp;
+	struct ifinfomsg *hdr;
+	struct nlmsghdr *nlh;
+	struct sk_buff *skb;
+	int err = -ENOBUFS;
+	struct net *net;
+
+	net = dev_net(dev);
+
+	skb = nlmsg_new(1024, GFP_ATOMIC);
+	if (!skb)
+		goto errout;
+
+	nlh = nlmsg_put(skb, 0, 0, RTM_NEWLINK, sizeof(*hdr), 0);
+	if (!nlh)
+		goto errout;
+
+	hdr = nlmsg_data(nlh);
+	hdr->ifi_family = AF_BRIDGE;
+	hdr->__ifi_pad = 0;
+	hdr->ifi_type = dev->type;
+	hdr->ifi_index = dev->ifindex;
+	hdr->ifi_flags = dev_get_flags(dev);
+	hdr->ifi_change = 0;
+
+	af = nla_nest_start_noflag(skb, IFLA_AF_SPEC);
+	mrp = nla_nest_start_noflag(skb, IFLA_BRIDGE_MRP);
+
+	nla_put_u32(skb, IFLA_BRIDGE_MRP_RING_OPEN, loc);
+
+	nla_nest_end(skb, mrp);
+	nla_nest_end(skb, af);
+	nlmsg_end(skb, nlh);
+
+	rtnl_notify(skb, net, 0, RTNLGRP_LINK, NULL, GFP_ATOMIC);
+	return;
+errout:
+	rtnl_set_sk_err(net, RTNLGRP_LINK, err);
+}
+EXPORT_SYMBOL(br_mrp_port_open);
-- 
2.17.1

