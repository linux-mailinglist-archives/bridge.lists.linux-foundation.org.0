Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 603B1148BCD
	for <lists.bridge@lfdr.de>; Fri, 24 Jan 2020 17:19:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 09F1688046;
	Fri, 24 Jan 2020 16:19:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VlJlSq4wcF7L; Fri, 24 Jan 2020 16:19:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id E9CA588084;
	Fri, 24 Jan 2020 16:19:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C71CEC0174;
	Fri, 24 Jan 2020 16:19:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C1B74C0174
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 16:19:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BE42B228B0
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 16:19:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KyPJE--1FYkc for <bridge@lists.linux-foundation.org>;
 Fri, 24 Jan 2020 16:19:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by silver.osuosl.org (Postfix) with ESMTPS id A441222859
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 16:19:41 +0000 (UTC)
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Horatiu.Vultur@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Horatiu.Vultur@microchip.com";
 x-sender="Horatiu.Vultur@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Horatiu.Vultur@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Horatiu.Vultur@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: yL2sxth9VVKyyydx3WZiU40VBuhx/9NR6zrQrWLhRquJWGA+EKBAB7qVmaPUuD5QatJgkx54DL
 MMUWVj1blDIjVGUpVJUlqu+xpB8bCZgrfg7w/kD9y2ZuVjf2T3/euJp6+x+4LTw/tvfiuH5nqJ
 srubH2xgYp6kUjuruaKiM1vv11DqOP3Mr5Hpz/rNFreIRN3JIiZKobWPCcHdSKJVFBxbk9vcAl
 bqqYOREOvixG1stesdfSankW0stvyIy/2MJz/ee2ZakG6vIiC2wWzhZZOS277xGqoDmTEiR8Ut
 gJU=
X-IronPort-AV: E=Sophos;i="5.70,358,1574146800"; 
   d="scan'208";a="19371"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Jan 2020 09:19:40 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 24 Jan 2020 09:19:40 -0700
Received: from soft-dev3.microsemi.net (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 24 Jan 2020 09:19:38 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <jiri@resnulli.us>,
 <ivecera@redhat.com>, <davem@davemloft.net>, <roopa@cumulusnetworks.com>,
 <nikolay@cumulusnetworks.com>, <anirudh.venkataramanan@intel.com>,
 <olteanv@gmail.com>, <andrew@lunn.ch>, <jeffrey.t.kirsher@intel.com>,
 <UNGLinuxDriver@microchip.com>
Date: Fri, 24 Jan 2020 17:18:22 +0100
Message-ID: <20200124161828.12206-5-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200124161828.12206-1-horatiu.vultur@microchip.com>
References: <20200124161828.12206-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [RFC net-next v3 04/10] net: bridge: mrp: Add generic
	netlink interface to configure MRP
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

Implement the generic netlink interface to configure MRP. The implementation
will do sanity checks over the attributes and then eventually call the MRP
interface which eventually will call the switchdev API.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_mrp_netlink.c | 655 ++++++++++++++++++++++++++++++++++++
 1 file changed, 655 insertions(+)
 create mode 100644 net/bridge/br_mrp_netlink.c

diff --git a/net/bridge/br_mrp_netlink.c b/net/bridge/br_mrp_netlink.c
new file mode 100644
index 000000000000..cb676387e89b
--- /dev/null
+++ b/net/bridge/br_mrp_netlink.c
@@ -0,0 +1,655 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include <net/genetlink.h>
+
+#include <uapi/linux/mrp_bridge.h>
+#include "br_private.h"
+#include "br_private_mrp.h"
+
+static struct genl_family br_mrp_genl_family;
+
+static struct nla_policy br_mrp_genl_policy[BR_MRP_ATTR_END] = {
+	[BR_MRP_ATTR_NONE] = { .type = NLA_UNSPEC },
+	[BR_MRP_ATTR_BR_IFINDEX] = { .type = NLA_U32 },
+	[BR_MRP_ATTR_PORT_IFINDEX] = { .type = NLA_U32 },
+	[BR_MRP_ATTR_RING_NR] = { .type = NLA_U32 },
+	[BR_MRP_ATTR_RING_ROLE] = { .type = NLA_U32 },
+	[BR_MRP_ATTR_RING_STATE] = { .type = NLA_U32 },
+	[BR_MRP_ATTR_PORT_STATE] = { .type = NLA_U32 },
+	[BR_MRP_ATTR_PORT_ROLE] = { .type = NLA_U32 },
+	[BR_MRP_ATTR_TEST_INTERVAL] = { .type = NLA_U32 },
+	[BR_MRP_ATTR_TEST_MAX_MISS] = { .type = NLA_U8 },
+	[BR_MRP_ATTR_RING_OPEN] = { .type = NLA_U8 },
+};
+
+enum br_mrp_multicast_groups {
+	BR_MRP_MCGRP_OPEN,
+};
+
+static const struct genl_multicast_group br_mrp_mcgrps[] = {
+	[BR_MRP_MCGRP_OPEN] = { .name = "open", },
+};
+
+static int br_mrp_genl_add(struct sk_buff *skb, struct genl_info *info)
+{
+	struct net *net = sock_net(skb->sk);
+	struct net_device *dev_br;
+	struct net_bridge *br;
+	int err = 0;
+
+	if (!info->attrs[BR_MRP_ATTR_BR_IFINDEX]) {
+		pr_err("ATTR_BR_IFINDEX is missing\n");
+		return -EINVAL;
+	}
+
+	if (!info->attrs[BR_MRP_ATTR_RING_NR]) {
+		pr_err("ATTR_RING_NR is missing\n");
+		return -EINVAL;
+	}
+
+	rtnl_lock();
+
+	dev_br = __dev_get_by_index(net,
+				    nla_get_u32(info->attrs[BR_MRP_ATTR_BR_IFINDEX]));
+	if (!dev_br) {
+		pr_err("Invalid ATTR_BR_IFINDEX\n");
+		err = -EINVAL;
+		goto invalid_info;
+	}
+
+	if (!(dev_br->priv_flags & IFF_EBRIDGE)) {
+		pr_err("Port is not a bridge\n");
+		err = -EINVAL;
+		goto invalid_info;
+	}
+	br = netdev_priv(dev_br);
+
+	err = br_mrp_add(br, nla_get_u32(info->attrs[BR_MRP_ATTR_RING_NR]));
+
+invalid_info:
+	rtnl_unlock();
+
+	return err;
+}
+
+static int br_mrp_genl_add_port(struct sk_buff *skb, struct genl_info *info)
+{
+	struct net *net = sock_net(skb->sk);
+	struct net_device *dev_br, *dev;
+	struct net_bridge_port *port;
+	struct net_bridge *br;
+	int err = 0;
+
+	if (!info->attrs[BR_MRP_ATTR_BR_IFINDEX]) {
+		pr_err("ATTR_BR_IFINDEX is missing\n");
+		return -EINVAL;
+	}
+
+	if (!info->attrs[BR_MRP_ATTR_RING_NR]) {
+		pr_err("ATTR_RING_NR is missing\n");
+		return -EINVAL;
+	}
+
+	if (!info->attrs[BR_MRP_ATTR_PORT_IFINDEX]) {
+		pr_err("ATTR_PORT_IFINDEX is missing\n");
+		return -EINVAL;
+	}
+
+	rtnl_lock();
+
+	dev_br = __dev_get_by_index(net,
+				    nla_get_u32(info->attrs[BR_MRP_ATTR_BR_IFINDEX]));
+	if (!dev_br) {
+		pr_err("Invalid ATTR_BR_IFINDEX\n");
+		err = -EINVAL;
+		goto invalid_info;
+	}
+
+	if (!(dev_br->priv_flags & IFF_EBRIDGE)) {
+		pr_err("Port is not a bridge\n");
+		err = -EINVAL;
+		goto invalid_info;
+	}
+	br = netdev_priv(dev_br);
+
+	dev = __dev_get_by_index(net,
+				 nla_get_u32(info->attrs[BR_MRP_ATTR_PORT_IFINDEX]));
+	if (!dev) {
+		pr_err("Invalid ATTR_PORT_IFIINDEX\n");
+		err = -EINVAL;
+		goto invalid_info;
+	}
+	if (!(dev->priv_flags & IFF_BRIDGE_PORT)) {
+		pr_err("ATTR_PORT_IFINDEX is not a bridge port");
+		err = -EINVAL;
+		goto invalid_info;
+	}
+
+	port = br_port_get_rtnl(dev);
+	if (port->br != br) {
+		pr_err("Port is not under the bridge\n");
+		err = -EINVAL;
+		goto invalid_info;
+	}
+
+	err = br_mrp_add_port(br, nla_get_u32(info->attrs[BR_MRP_ATTR_RING_NR]),
+			      port);
+
+invalid_info:
+	rtnl_unlock();
+
+	return err;
+}
+
+static int br_mrp_genl_del(struct sk_buff *skb, struct genl_info *info)
+{
+	struct net *net = sock_net(skb->sk);
+	struct net_device *dev_br;
+	struct net_bridge *br;
+	int err = 0;
+
+	if (!info->attrs[BR_MRP_ATTR_BR_IFINDEX]) {
+		pr_err("ATTR_BR_IFINDEX is missing\n");
+		return -EINVAL;
+	}
+
+	if (!info->attrs[BR_MRP_ATTR_RING_NR]) {
+		pr_err("ATTR_RING_NR is missing\n");
+		return -EINVAL;
+	}
+
+	rtnl_lock();
+
+	dev_br = __dev_get_by_index(net,
+				    nla_get_u32(info->attrs[BR_MRP_ATTR_BR_IFINDEX]));
+	if (!dev_br) {
+		pr_err("Invalid ATTR_BR_IFINDEX\n");
+		err = -EINVAL;
+		goto invalid_info;
+	}
+
+	if (!(dev_br->priv_flags & IFF_EBRIDGE)) {
+		pr_err("Port is not a bridge\n");
+		err = -EINVAL;
+		goto invalid_info;
+	}
+	br = netdev_priv(dev_br);
+
+	err = br_mrp_del(br, nla_get_u32(info->attrs[BR_MRP_ATTR_RING_NR]));
+
+invalid_info:
+	rtnl_unlock();
+
+	return err;
+}
+
+static int br_mrp_genl_del_port(struct sk_buff *skb, struct genl_info *info)
+{
+	struct net *net = sock_net(skb->sk);
+	struct net_bridge_port *port;
+	struct net_device *dev;
+	int err = 0;
+
+	if (!info->attrs[BR_MRP_ATTR_PORT_IFINDEX]) {
+		pr_err("ATTR_PORT_IFINDEX is missing\n");
+		return -EINVAL;
+	}
+
+	rtnl_lock();
+
+	dev = __dev_get_by_index(net,
+				 nla_get_u32(info->attrs[BR_MRP_ATTR_PORT_IFINDEX]));
+	if (!dev) {
+		pr_err("Invalid ATTR_PORT_IFIINDEX\n");
+		err = -EINVAL;
+		goto invalid_info;
+	}
+
+	if (!(dev->priv_flags & IFF_BRIDGE_PORT)) {
+		pr_err("ATTR_PORT_IFINDEX is not a bridge port");
+		err = -EINVAL;
+		goto invalid_info;
+	}
+
+	port = br_port_get_rtnl(dev);
+
+	err = br_mrp_del_port(port);
+
+invalid_info:
+	rtnl_unlock();
+
+	return err;
+}
+
+static int br_mrp_genl_set_port_state(struct sk_buff *skb,
+				      struct genl_info *info)
+{
+	struct net *net = sock_net(skb->sk);
+	enum br_mrp_port_state_type state;
+	struct net_bridge_port *port;
+	struct net_device *dev;
+	int err = 0;
+
+	if (!info->attrs[BR_MRP_ATTR_PORT_IFINDEX]) {
+		pr_err("ATTR_PORT_IFINDEX is missing\n");
+		return -EINVAL;
+	}
+
+	if (!info->attrs[BR_MRP_ATTR_PORT_STATE]) {
+		pr_err("ATTR_PORT_STATE is missing\n");
+		return -EINVAL;
+	}
+
+	rtnl_lock();
+
+	dev = __dev_get_by_index(net,
+				 nla_get_u32(info->attrs[BR_MRP_ATTR_PORT_IFINDEX]));
+	if (!dev) {
+		pr_err("Invalid ATTR_PORT_IFIINDEX\n");
+		err = -EINVAL;
+		goto invalid_info;
+	}
+
+	if (!(dev->priv_flags & IFF_BRIDGE_PORT)) {
+		pr_err("ATTR_PORT_IFINDEX is not a bridge port");
+		err = -EINVAL;
+		goto invalid_info;
+	}
+
+	port = br_port_get_rtnl(dev);
+	state = nla_get_u32(info->attrs[BR_MRP_ATTR_PORT_STATE]);
+
+	err = br_mrp_set_port_state(port, state);
+
+invalid_info:
+	rtnl_unlock();
+
+	return err;
+}
+
+static int br_mrp_genl_set_port_role(struct sk_buff *skb,
+				     struct genl_info *info)
+{
+	struct net *net = sock_net(skb->sk);
+	enum br_mrp_port_role_type role;
+	struct net_bridge_port *port;
+	struct net_device *dev;
+	u32 ring_nr;
+	int err = 0;
+
+	if (!info->attrs[BR_MRP_ATTR_PORT_IFINDEX]) {
+		pr_err("ATTR_PORT_IFINDEX is missing\n");
+		return -EINVAL;
+	}
+
+	if (!info->attrs[BR_MRP_ATTR_PORT_ROLE]) {
+		pr_err("ATTR_PORT_STATE is missing\n");
+		return -EINVAL;
+	}
+
+	if (!info->attrs[BR_MRP_ATTR_RING_NR]) {
+		pr_err("ATTR_RING_NR is missing\n");
+		return -EINVAL;
+	}
+
+	rtnl_lock();
+
+	dev = __dev_get_by_index(net,
+				 nla_get_u32(info->attrs[BR_MRP_ATTR_PORT_IFINDEX]));
+	if (!dev) {
+		pr_err("Invalid ATTR_PORT_IFIINDEX\n");
+		err = -EINVAL;
+		goto invalid_info;
+	}
+
+	if (!(dev->priv_flags & IFF_BRIDGE_PORT)) {
+		pr_err("ATTR_PORT_IFINDEX is not a bridge port");
+		err = -EINVAL;
+		goto invalid_info;
+	}
+
+	port = br_port_get_rtnl(dev);
+	role = nla_get_u32(info->attrs[BR_MRP_ATTR_PORT_ROLE]);
+	ring_nr = nla_get_u32(info->attrs[BR_MRP_ATTR_RING_NR]);
+
+	err = br_mrp_set_port_role(port, ring_nr, role);
+
+invalid_info:
+	rtnl_unlock();
+
+	return err;
+}
+
+static int br_mrp_genl_set_ring_state(struct sk_buff *skb,
+				      struct genl_info *info)
+{
+	struct net *net = sock_net(skb->sk);
+	enum br_mrp_ring_state_type state;
+	struct net_device *dev_br;
+	struct net_bridge *br;
+	int err = 0;
+
+	if (!info->attrs[BR_MRP_ATTR_BR_IFINDEX]) {
+		pr_err("ATTR_BR_IFINDEX is missing\n");
+		return -EINVAL;
+	}
+
+	if (!info->attrs[BR_MRP_ATTR_RING_NR]) {
+		pr_err("ATTR_RING_NR is missing\n");
+		return -EINVAL;
+	}
+
+	if (!info->attrs[BR_MRP_ATTR_RING_STATE]) {
+		pr_err("ATTR_RING_STATE is missing\n");
+		return -EINVAL;
+	}
+
+	rtnl_lock();
+
+	dev_br = __dev_get_by_index(net,
+				    nla_get_u32(info->attrs[BR_MRP_ATTR_BR_IFINDEX]));
+	if (!dev_br) {
+		pr_err("Invalid ATTR_BR_IFINDEX\n");
+		err = -EINVAL;
+		goto invalid_info;
+	}
+
+	if (!(dev_br->priv_flags & IFF_EBRIDGE)) {
+		pr_err("Port is not a bridge\n");
+		err = -EINVAL;
+		goto invalid_info;
+	}
+	br = netdev_priv(dev_br);
+
+	state = nla_get_u32(info->attrs[BR_MRP_ATTR_RING_STATE]);
+
+	err = br_mrp_set_ring_state(br,
+				    nla_get_u32(info->attrs[BR_MRP_ATTR_RING_NR]),
+				    state);
+
+invalid_info:
+	rtnl_unlock();
+
+	return err;
+}
+
+static int br_mrp_genl_set_ring_role(struct sk_buff *skb,
+				     struct genl_info *info)
+{
+	struct net *net = sock_net(skb->sk);
+	enum br_mrp_ring_role_type role;
+	struct net_device *dev_br;
+	struct net_bridge *br;
+	int err = 0;
+
+	if (!info->attrs[BR_MRP_ATTR_BR_IFINDEX]) {
+		pr_err("ATTR_BR_IFINDEX is missing\n");
+		return -EINVAL;
+	}
+
+	if (!info->attrs[BR_MRP_ATTR_RING_NR]) {
+		pr_err("ATTR_RING_NR is missing\n");
+		return -EINVAL;
+	}
+
+	if (!info->attrs[BR_MRP_ATTR_RING_ROLE]) {
+		pr_err("ATTR_RING_ROLE is missing\n");
+		return -EINVAL;
+	}
+
+	rtnl_lock();
+
+	dev_br = __dev_get_by_index(net,
+				    nla_get_u32(info->attrs[BR_MRP_ATTR_BR_IFINDEX]));
+	if (!dev_br) {
+		pr_err("Invalid ATTR_BR_IFINDEX\n");
+		err = -EINVAL;
+		goto invalid_info;
+	}
+
+	if (!(dev_br->priv_flags & IFF_EBRIDGE)) {
+		pr_err("Port is not a bridge\n");
+		err = -EINVAL;
+		goto invalid_info;
+	}
+	br = netdev_priv(dev_br);
+
+	role = nla_get_u32(info->attrs[BR_MRP_ATTR_RING_ROLE]);
+
+	err = br_mrp_set_ring_role(br,
+				   nla_get_u32(info->attrs[BR_MRP_ATTR_RING_NR]),
+				   role);
+
+invalid_info:
+	rtnl_unlock();
+
+	return err;
+}
+
+static int br_mrp_genl_start_test(struct sk_buff *skb, struct genl_info *info)
+{
+	struct net *net = sock_net(skb->sk);
+	struct net_device *dev_br;
+	struct net_bridge *br;
+	u32 interval;
+	int err = 0;
+	u8 max_miss;
+
+	if (!info->attrs[BR_MRP_ATTR_BR_IFINDEX]) {
+		pr_err("ATTR_BR_IFINDEX is missing\n");
+		return -EINVAL;
+	}
+
+	if (!info->attrs[BR_MRP_ATTR_RING_NR]) {
+		pr_err("ATTR_RING_NR is missing\n");
+		return -EINVAL;
+	}
+
+	if (!info->attrs[BR_MRP_ATTR_TEST_INTERVAL]) {
+		pr_err("ATTR_TEST_INTERVAL is missing\n");
+		return -EINVAL;
+	}
+
+	if (!info->attrs[BR_MRP_ATTR_TEST_MAX_MISS]) {
+		pr_err("ATTR_TEST_MAX_MISS is missing\n");
+		return -EINVAL;
+	}
+
+	rtnl_lock();
+
+	dev_br = __dev_get_by_index(net,
+				    nla_get_u32(info->attrs[BR_MRP_ATTR_BR_IFINDEX]));
+	if (!dev_br) {
+		pr_err("Invalid ATTR_BR_IFINDEX\n");
+		err = -EINVAL;
+		goto invalid_info;
+	}
+
+	if (!(dev_br->priv_flags & IFF_EBRIDGE)) {
+		pr_err("Port is not a bridge\n");
+		err = -EINVAL;
+		goto invalid_info;
+	}
+	br = netdev_priv(dev_br);
+
+	interval = nla_get_u32(info->attrs[BR_MRP_ATTR_TEST_INTERVAL]);
+	max_miss = nla_get_u8(info->attrs[BR_MRP_ATTR_TEST_MAX_MISS]);
+
+	err = br_mrp_start_test(br, nla_get_u32(info->attrs[BR_MRP_ATTR_RING_NR]),
+				interval, max_miss);
+
+invalid_info:
+	rtnl_unlock();
+
+	return err;
+}
+
+static int br_mrp_genl_flush(struct sk_buff *skb, struct genl_info *info)
+{
+	struct net *net = sock_net(skb->sk);
+	struct net_device *dev_br;
+	struct net_bridge *br;
+	int err = 0;
+
+	if (!info->attrs[BR_MRP_ATTR_BR_IFINDEX]) {
+		pr_err("ATTR_BR_IFINDEX is missing\n");
+		return -EINVAL;
+	}
+
+	if (!info->attrs[BR_MRP_ATTR_RING_NR]) {
+		pr_err("ATTR_RING_NR is missing\n");
+		return -EINVAL;
+	}
+
+	rtnl_lock();
+
+	dev_br = __dev_get_by_index(net,
+				    nla_get_u32(info->attrs[BR_MRP_ATTR_BR_IFINDEX]));
+	if (!dev_br) {
+		pr_err("Invalid ATTR_BR_IFINDEX\n");
+		err = -EINVAL;
+		goto invalid_info;
+	}
+
+	if (!(dev_br->priv_flags & IFF_EBRIDGE)) {
+		pr_err("Port is not a bridge\n");
+		err = -EINVAL;
+		goto invalid_info;
+	}
+	br = netdev_priv(dev_br);
+
+	err = br_mrp_flush(br, nla_get_u32(info->attrs[BR_MRP_ATTR_RING_NR]));
+
+invalid_info:
+	rtnl_unlock();
+
+	return err;
+}
+
+void br_mrp_port_open(struct net_device *dev, u8 loc)
+{
+	struct sk_buff *msg;
+	void *hdr;
+
+	msg = genlmsg_new(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);
+	if (!msg) {
+		pr_err("Allocate netlink msg failed\n");
+		return;
+	}
+
+	hdr = genlmsg_put(msg, 0, 0, &br_mrp_genl_family, 0,
+			  BR_MRP_GENL_RING_OPEN);
+	if (!hdr) {
+		pr_err("Create msg hdr failed \n");
+		goto err_msg_free;
+	}
+
+	if (nla_put_u32(msg, BR_MRP_ATTR_PORT_IFINDEX, dev->ifindex) ||
+	    nla_put_u8(msg, BR_MRP_ATTR_RING_OPEN, loc)) {
+		pr_err("Failed nla_put\n");
+		goto nla_put_failure;
+	}
+
+	genlmsg_end(msg, hdr);
+
+	genlmsg_multicast(&br_mrp_genl_family, msg, 0, 0, GFP_ATOMIC);
+	return;
+
+nla_put_failure:
+	genlmsg_cancel(msg, hdr);
+
+err_msg_free:
+	nlmsg_free(msg);
+}
+EXPORT_SYMBOL(br_mrp_port_open);
+
+static struct genl_ops br_mrp_genl_ops[] = {
+	{
+		.cmd    = BR_MRP_GENL_ADD,
+		.doit   = br_mrp_genl_add,
+		.validate = GENL_DONT_VALIDATE_STRICT,
+		.flags  = GENL_ADMIN_PERM,
+	},
+	{
+		.cmd    = BR_MRP_GENL_ADD_PORT,
+		.doit   = br_mrp_genl_add_port,
+		.validate = GENL_DONT_VALIDATE_STRICT,
+		.flags  = GENL_ADMIN_PERM,
+	},
+	{
+		.cmd    = BR_MRP_GENL_DEL,
+		.doit   = br_mrp_genl_del,
+		.validate = GENL_DONT_VALIDATE_STRICT,
+		.flags  = GENL_ADMIN_PERM,
+	},
+	{
+		.cmd    = BR_MRP_GENL_DEL_PORT,
+		.doit   = br_mrp_genl_del_port,
+		.validate = GENL_DONT_VALIDATE_STRICT,
+		.flags  = GENL_ADMIN_PERM,
+	},
+	{
+		.cmd    = BR_MRP_GENL_SET_PORT_STATE,
+		.doit   = br_mrp_genl_set_port_state,
+		.validate = GENL_DONT_VALIDATE_STRICT,
+		.flags  = GENL_ADMIN_PERM,
+	},
+	{
+		.cmd    = BR_MRP_GENL_SET_PORT_ROLE,
+		.doit   = br_mrp_genl_set_port_role,
+		.validate = GENL_DONT_VALIDATE_STRICT,
+		.flags  = GENL_ADMIN_PERM,
+	},
+	{
+		.cmd    = BR_MRP_GENL_SET_RING_STATE,
+		.doit   = br_mrp_genl_set_ring_state,
+		.validate = GENL_DONT_VALIDATE_STRICT,
+		.flags  = GENL_ADMIN_PERM,
+	},
+	{
+		.cmd    = BR_MRP_GENL_SET_RING_ROLE,
+		.doit   = br_mrp_genl_set_ring_role,
+		.validate = GENL_DONT_VALIDATE_STRICT,
+		.flags  = GENL_ADMIN_PERM,
+	},
+	{
+		.cmd    = BR_MRP_GENL_START_TEST,
+		.doit   = br_mrp_genl_start_test,
+		.validate = GENL_DONT_VALIDATE_STRICT,
+		.flags  = GENL_ADMIN_PERM,
+	},
+	{
+		.cmd    = BR_MRP_GENL_FLUSH,
+		.doit   = br_mrp_genl_flush,
+		.validate = GENL_DONT_VALIDATE_STRICT,
+		.flags  = GENL_ADMIN_PERM,
+	},
+};
+
+static struct genl_family br_mrp_genl_family = {
+	.name		= "br_mrp_netlink",
+	.hdrsize	= 0,
+	.version	= 1,
+	.maxattr	= BR_MRP_ATTR_MAX,
+	.policy		= br_mrp_genl_policy,
+	.ops		= br_mrp_genl_ops,
+	.n_ops		= ARRAY_SIZE(br_mrp_genl_ops),
+	.mcgrps		= br_mrp_mcgrps,
+	.n_mcgrps	= ARRAY_SIZE(br_mrp_mcgrps),
+};
+
+int br_mrp_netlink_init(void)
+{
+	int err;
+
+	err = genl_register_family(&br_mrp_genl_family);
+	if (err)
+		pr_err("genl_register_family failed\n");
+
+	return err;
+}
+
+void br_mrp_netlink_uninit(void)
+{
+	genl_unregister_family(&br_mrp_genl_family);
+}
-- 
2.17.1

