Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB881B90A7
	for <lists.bridge@lfdr.de>; Sun, 26 Apr 2020 15:33:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 20E2A861A7;
	Sun, 26 Apr 2020 13:24:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KxQrr3pEvOFq; Sun, 26 Apr 2020 13:24:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2CDB486193;
	Sun, 26 Apr 2020 13:24:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1784DC089E;
	Sun, 26 Apr 2020 13:24:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7EB5EC0172
 for <bridge@lists.linux-foundation.org>; Sun, 26 Apr 2020 13:24:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6E29C878BB
 for <bridge@lists.linux-foundation.org>; Sun, 26 Apr 2020 13:24:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mja65rqraDJC for <bridge@lists.linux-foundation.org>;
 Sun, 26 Apr 2020 13:24:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CD75A87824
 for <bridge@lists.linux-foundation.org>; Sun, 26 Apr 2020 13:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587907443; x=1619443443;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=uMNLM0da+vIkR8nBw+Dyvn6HeBpDlBrSYz90DQAIc6A=;
 b=Z6PUSqP/cz5+VturdK0zjLJzt5xzNkdlo+Nk0C6wAbZRy9ECfWkDESbI
 ffDFb03q3uX5FOKeJqqxZN2+red11QFPFN7glV+o6We1GLx+oS1wvt7XC
 aQSZBjRAPTql8b7Y98F0vptQqsJWozbdTXUL4ZY6qdfSFnXuJ0sHN023/
 vJGF3Sj9zOGeig7RrM75/67oVCW5vJsVGF2HnhnkwNXSxMHkbk7EpHfPk
 Meb5w6YQ8GZvYx/IraohvUMGq7j1O4bTr1MAo7u5LxyMEAY0blZlChPEL
 KtiArPmrvvJZdUf7TX3aJ8O77BACrhSDdgZ9gdef6E6x/HE3qWCQSbmbi g==;
IronPort-SDR: ijvZESFttbS0bB2ZqhPCgILEvi4j1n/0vAJPx3jco33acOWLFSfjpIt7/vv0kCKWm4PSTU7hpc
 AaZSMjfgkMHVK9vsZ9zpQVdwVgsFDMH/O3aENn37mz77cY26sgtCtBusVZYsrCeyMjYFnNRZao
 p4WRyjTWrwtEEfYxjDhHZW6oXhsSPwKUDudstG4awGLl+SonAroQzhqC++S2QeIailmMTFA5Vd
 IjL9Wx02WYzDEBbKpeP5iB66yV6gGrayiCrIw3tTq7SXJaOapNH8wHRuCjXbGbbRLLVSVAoWgx
 oJ0=
X-IronPort-AV: E=Sophos;i="5.73,320,1583218800"; d="scan'208";a="73846774"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Apr 2020 06:24:02 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 26 Apr 2020 06:24:01 -0700
Received: from soft-dev3.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Sun, 26 Apr 2020 06:23:58 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <nikolay@cumulusnetworks.com>, <davem@davemloft.net>, <jiri@resnulli.us>, 
 <ivecera@redhat.com>, <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <olteanv@gmail.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Sun, 26 Apr 2020 15:22:02 +0200
Message-ID: <20200426132208.3232-6-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200426132208.3232-1-horatiu.vultur@microchip.com>
References: <20200426132208.3232-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v4 05/11] bridge: mrp: Add MRP interface.
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

Define the MRP interface.
This interface is used by the netlink to update the MRP instances and by the MRP
to make the calls to switchdev to offload it to HW.

It defines an MRP instance 'struct br_mrp' which is a list of MRP instances.
Which will be part of the 'struct net_bridge'. Each instance has 2 ring ports,
a bridge and an ID.

In case the HW can't generate MRP Test frames then the SW will generate those.

br_mrp_add - adds a new MRP instance.

br_mrp_del - deletes an existing MRP instance. Each instance has an ID(ring_id).

br_mrp_set_port_state - changes the port state. The port can be in forwarding
  state, which means that the frames can pass through or in blocked state which
  means that the frames can't pass through except MRP frames. This will
  eventually call the switchdev API to notify the HW. This information is used
  also by the SW bridge to know how to forward frames in case the HW doesn't
  have this capability.

br_mrp_set_port_role - a port role can be primary or secondary. This
  information is required to be pushed to HW in case the HW can generate
  MRP_Test frames.  Because the MRP_Test frames contains a file with this
  information. Otherwise the HW will not be able to generate the frames
  correctly.

br_mrp_set_ring_state - a ring can be in state open or closed. State open means
  that the mrp port stopped receiving MRP_Test frames, while closed means that
  the mrp port received MRP_Test frames. Similar with br_mrp_port_role, this
  information is pushed in HW because the MRP_Test frames contain this
  information.

br_mrp_set_ring_role - a ring can have the following roles MRM or MRC. For the
  role MRM it is expected that the HW can terminate the MRP frames, notify the
  SW that it stopped receiving MRP_Test frames and trapp all the other MRP
  frames.  While for MRC mode it is expected that the HW can forward the MRP
  frames only between the MRP ports and copy MRP_Topology frames to CPU. In
  case the HW doesn't support a role it needs to return an error code different
  than -EOPNOTSUPP.

br_mrp_start_test - this starts/stops the generation of MRP_Test frames. To stop
  the generation of frames the interval needs to have a value of 0. In this case
  the userspace needs to know if the HW supports this or not. Not to have
  duplicate frames(generated by HW and SW). Because if the HW supports this then
  the SW will not generate anymore frames and will expect that the HW will
  notify when it stopped receiving MRP frames using the function
  br_mrp_port_open.

br_mrp_port_open - this function is used by drivers to notify the userspace via
  a netlink callback that one of the ports stopped receiving MRP_Test frames.
  This function is called only when the node has the role MRM. It is not
  supposed to be called from userspace.

br_mrp_port_switchdev_add - this corresponds to the function br_mrp_add,
  and will notify the HW that a MRP instance is added. The function gets
  as parameter the MRP instance.

br_mrp_port_switchdev_del - this corresponds to the function br_mrp_del,
  and will notify the HW that a MRP instance is removed. The function
  gets as parameter the ID of the MRP instance that is removed.

br_mrp_port_switchdev_set_state - this corresponds to the function
  br_mrp_set_port_state. It would notify the HW if it should block or not
  non-MRP frames.

br_mrp_port_switchdev_set_port - this corresponds to the function
  br_mrp_set_port_role. It would set the port role, primary or secondary.

br_mrp_switchdev_set_role - this corresponds to the function
  br_mrp_set_ring_role and would set one of the role MRM or MRC.

br_mrp_switchdev_set_ring_state - this corresponds to the function
  br_mrp_set_ring_state and would set the ring to be open or closed.

br_mrp_switchdev_send_ring_test - this corresponds to the function
  br_mrp_start_test. This will notify the HW to start or stop generating
  MRP_Test frames. Value 0 for the interval parameter means to stop generating
  the frames.

br_mrp_port_open - this function is used to notify the userspace that the port
  lost the continuity of MRP Test frames.

Reviewed-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_private_mrp.h | 63 +++++++++++++++++++++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 net/bridge/br_private_mrp.h

diff --git a/net/bridge/br_private_mrp.h b/net/bridge/br_private_mrp.h
new file mode 100644
index 000000000000..2921a4b59f8e
--- /dev/null
+++ b/net/bridge/br_private_mrp.h
@@ -0,0 +1,63 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef _BR_PRIVATE_MRP_H_
+#define _BR_PRIVATE_MRP_H_
+
+#include "br_private.h"
+#include <uapi/linux/mrp_bridge.h>
+
+struct br_mrp {
+	/* list of mrp instances */
+	struct list_head		__rcu list;
+
+	struct net_bridge_port __rcu	*p_port;
+	struct net_bridge_port __rcu	*s_port;
+
+	u32				ring_id;
+
+	enum br_mrp_ring_role_type	ring_role;
+	u8				ring_role_offloaded;
+	enum br_mrp_ring_state_type	ring_state;
+	u32				ring_transitions;
+
+	struct delayed_work		test_work;
+	u32				test_interval;
+	unsigned long			test_end;
+	u32				test_count_miss;
+	u32				test_max_miss;
+
+	u32				seq_id;
+
+	struct rcu_head			rcu;
+};
+
+/* br_mrp.c */
+int br_mrp_add(struct net_bridge *br, struct br_mrp_instance *instance);
+int br_mrp_del(struct net_bridge *br, struct br_mrp_instance *instance);
+int br_mrp_set_port_state(struct net_bridge_port *p,
+			  enum br_mrp_port_state_type state);
+int br_mrp_set_port_role(struct net_bridge_port *p,
+			 struct br_mrp_port_role *role);
+int br_mrp_set_ring_state(struct net_bridge *br,
+			  struct br_mrp_ring_state *state);
+int br_mrp_set_ring_role(struct net_bridge *br, struct br_mrp_ring_role *role);
+int br_mrp_start_test(struct net_bridge *br, struct br_mrp_start_test *test);
+
+/* br_mrp_switchdev.c */
+int br_mrp_switchdev_add(struct net_bridge *br, struct br_mrp *mrp);
+int br_mrp_switchdev_del(struct net_bridge *br, struct br_mrp *mrp);
+int br_mrp_switchdev_set_ring_role(struct net_bridge *br, struct br_mrp *mrp,
+				   enum br_mrp_ring_role_type role);
+int br_mrp_switchdev_set_ring_state(struct net_bridge *br, struct br_mrp *mrp,
+				    enum br_mrp_ring_state_type state);
+int br_mrp_switchdev_send_ring_test(struct net_bridge *br, struct br_mrp *mrp,
+				    u32 interval, u8 max_miss, u32 period);
+int br_mrp_port_switchdev_set_state(struct net_bridge_port *p,
+				    enum br_mrp_port_state_type state);
+int br_mrp_port_switchdev_set_role(struct net_bridge_port *p,
+				   enum br_mrp_port_role_type role);
+
+/* br_mrp_netlink.c  */
+int br_mrp_port_open(struct net_device *dev, u8 loc);
+
+#endif /* _BR_PRIVATE_MRP_H */
-- 
2.17.1

