Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E97E3135C4B
	for <lists.bridge@lfdr.de>; Thu,  9 Jan 2020 16:09:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7FFB985C88;
	Thu,  9 Jan 2020 15:09:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cl8GXG8j6zcH; Thu,  9 Jan 2020 15:09:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 61FFA868F6;
	Thu,  9 Jan 2020 15:09:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3B5F5C0881;
	Thu,  9 Jan 2020 15:09:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4886AC0881
 for <bridge@lists.linux-foundation.org>; Thu,  9 Jan 2020 15:09:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 375AF841AC
 for <bridge@lists.linux-foundation.org>; Thu,  9 Jan 2020 15:09:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FW1vY6EXQD-n for <bridge@lists.linux-foundation.org>;
 Thu,  9 Jan 2020 15:09:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 80FC183539
 for <bridge@lists.linux-foundation.org>; Thu,  9 Jan 2020 15:09:25 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Horatiu.Vultur@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Horatiu.Vultur@microchip.com";
 x-sender="Horatiu.Vultur@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Horatiu.Vultur@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Horatiu.Vultur@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Jha0I9l3rQ92X/OKtTnXE+/3tEaTZ9M1cfcwXwJEHfUmCFZ4VqfmO+KiOxXc5Bpjc6H0qYarHc
 xi4MYqxk0Q8GeaXgryRXdV9Vh3c811Pmh3v5iR1jEwJNOoabyj3EgtvMo5814ROH1RRWxePf1F
 5WbTvn8rqbOxNo2Ky/x0LVHDAgGIAO4hzPcXsK74xz8sIc+DXL3BR7cOVHzEO5wWwlFwZYMFNt
 gtWA/CHcoDToFjkCrbRPw9ygykI41FvpAZ4qPBvIVeHnKGRvMCJ1g+stgiwmS0T0IpOWJ80rCg
 0J0=
X-IronPort-AV: E=Sophos;i="5.69,414,1571727600"; d="scan'208";a="62733370"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jan 2020 08:09:23 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 9 Jan 2020 08:09:22 -0700
Received: from soft-dev3.microsemi.net (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 9 Jan 2020 08:09:20 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Thu, 9 Jan 2020 16:06:38 +0100
Message-ID: <20200109150640.532-2-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200109150640.532-1-horatiu.vultur@microchip.com>
References: <20200109150640.532-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: andrew@lunn.ch, jakub.kicinski@netronome.com, nikolay@cumulusnetworks.com,
 roopa@cumulusnetworks.com, jiri@mellanox.com, vivien.didelot@gmail.com,
 UNGLinuxDriver@microchip.com, anirudh.venkataramanan@intel.com,
 jeffrey.t.kirsher@intel.com, dsahern@gmail.com, olteanv@gmail.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net
Subject: [Bridge] [RFC net-next Patch 1/3] net: bridge: mrp: Add support for
	Media Redundancy Protocol
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

This patch implements the core MRP state-machines and generation/parsing of the
frames. The implementation is on top of the bridge.

All MRP frames are received by the function 'br_mrp_recv' which adds the frame
in a queue to process them. For each frame it needs to decide if the frame needs
to be dropped, process or forward. And these decisions are taken by the
functions: 'br_mrp_should_drop', 'br_mrp_should_process' and
'br_mrp_should_forward'. Currently there only 3 types for MRP that are
supported: MRP_Test, MRP_Topo and MRP_LinkChange.
- MRP_Test are generated by MRM to detect if the ring is open or closed.
- MRP_Topo are generated by MRM to notify the network that is changed.
- MRP_LinkChange are generated by MRC to notify MRM that the node lost
  connectivity on one of the ports.

All these frames need to be send out multiple times at different intervals.
To do that, there is a special workqueue, where all this work is added. This is
implemented in the file 'br_mr_timer.c'.

Each role has it's own state machine:
- Media Redundancy Manager(MRM) can be in one of the states: AC_STAT1, PRM_UP,
  CHK_RO, CHK_RC. This one is responsible to send MRP_Test and MRP_Topo on both
  of the ring ports. It also needs to process the MRP_Test, and in case it
  receives one it means that the ring is closed and it would change the state to
  CHK_RC.  Whenever it detects that the ring is open(didn't receive MRP_Test
  frames in a configured interval), it would send MRP_Topo frames on both of the
  ring ports to notify other nodes in the ring that the topology of the network
  is different. MRM needs to process MRP_LinkChange because these frames
  indicate a change in the topology. If the MRM is in the state CHK_RC, then it
  would block one of the ports, not allowing traffic to be flow except MRP
  frames and frames specified in IEEE 802.1D-2004 Table 7-10.
- Media Redundancy Client(MRC) can be in one of the states: AC_STAT1, DE_IDLE,
  PT, DE, PT_IDLE. MRC is responsible to send MRP_LinkChange when one of the
  ring ports lost the connectivity. It needs to process MRP_Topo frames, this
  frame contains a field which indicates the time in which it needs to clear the
  FDB. MRC will need to forward all the MRP frames. In all the states the MRC
  will set the port in forwarding state, except when the port is down.

The standards supports multiple recovery times. There are 4 recovery: 500ms,
200ms, 30ms, 10ms. The implementation adds support for all of them,
default(500ms), but it looks hard to achieve the result 30ms or 10ms without
hardware support.

To decide if a non-MRP frame can be send to the other ring port the function
'should_deliver' is extended to check also the function 'br_mrp_allow_egress'.

Question: the function 'br_mrp_allow_egress' is looking at the MRP state of the
port which is a pointer. But this could be a race condition, because while this
function is called the port can be removed, because the function
'br_mrp_allow_egres' is not protected by rtnl_lock. It would be overkill to
take this lock for each frame. What is the correct solution here?
Should I make the mrp_port a RCU pointer?

In case the MRP is not enable then MRP frames and non-MRP frames are forward as
before.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 include/uapi/linux/if_ether.h |    1 +
 net/bridge/Kconfig            |   12 +
 net/bridge/Makefile           |    2 +
 net/bridge/br_mrp.c           | 1236 +++++++++++++++++++++++++++++++++
 net/bridge/br_mrp_timer.c     |  227 ++++++
 net/bridge/br_private_mrp.h   |  199 ++++++
 6 files changed, 1677 insertions(+)
 create mode 100644 net/bridge/br_mrp.c
 create mode 100644 net/bridge/br_mrp_timer.c
 create mode 100644 net/bridge/br_private_mrp.h

diff --git a/include/uapi/linux/if_ether.h b/include/uapi/linux/if_ether.h
index f6ceb2e63d1e..fb8a140b3bba 100644
--- a/include/uapi/linux/if_ether.h
+++ b/include/uapi/linux/if_ether.h
@@ -92,6 +92,7 @@
 #define ETH_P_PREAUTH	0x88C7		/* 802.11 Preauthentication */
 #define ETH_P_TIPC	0x88CA		/* TIPC 			*/
 #define ETH_P_LLDP	0x88CC		/* Link Layer Discovery Protocol */
+#define ETH_P_MRP	0x88E3		/* Media Redundancy Protocol */
 #define ETH_P_MACSEC	0x88E5		/* 802.1ae MACsec */
 #define ETH_P_8021AH	0x88E7          /* 802.1ah Backbone Service Tag */
 #define ETH_P_MVRP	0x88F5          /* 802.1Q MVRP                  */
diff --git a/net/bridge/Kconfig b/net/bridge/Kconfig
index e4fb050e2078..d07e3901aff6 100644
--- a/net/bridge/Kconfig
+++ b/net/bridge/Kconfig
@@ -61,3 +61,15 @@ config BRIDGE_VLAN_FILTERING
 	  Say N to exclude this support and reduce the binary size.
 
 	  If unsure, say Y.
+
+config BRIDGE_MRP
+	bool "MRP protocol"
+	depends on BRIDGE
+	default n
+	help
+	  If you say Y here, then the Ethernet bridge will be able to run MRP
+	  protocol to detect loops.
+
+	  Say N to exclude this support and reduce the binary size.
+
+	  If unsure, say N.
diff --git a/net/bridge/Makefile b/net/bridge/Makefile
index ac9ef337f0fa..917826c9d8de 100644
--- a/net/bridge/Makefile
+++ b/net/bridge/Makefile
@@ -25,3 +25,5 @@ bridge-$(CONFIG_BRIDGE_VLAN_FILTERING) += br_vlan.o br_vlan_tunnel.o
 bridge-$(CONFIG_NET_SWITCHDEV) += br_switchdev.o
 
 obj-$(CONFIG_NETFILTER) += netfilter/
+
+bridge-$(CONFIG_BRIDGE_MRP)	+= br_mrp.o br_mrp_timer.o
diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
new file mode 100644
index 000000000000..a84aab3f7114
--- /dev/null
+++ b/net/bridge/br_mrp.c
@@ -0,0 +1,1236 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/* Copyright (c) 2020 Microchip Corporation */
+
+#include <linux/netdevice.h>
+#include <linux/netfilter_bridge.h>
+
+#include "br_private_mrp.h"
+
+static const u8 mrp_test_dmac[ETH_ALEN] = { 0x1, 0x15, 0x4e, 0x0, 0x0, 0x1 };
+static const u8 mrp_control_dmac[ETH_ALEN] = { 0x1, 0x15, 0x4e, 0x0, 0x0, 0x2 };
+
+static bool br_mrp_is_port_up(const struct net_bridge_port *p)
+{
+	return netif_running(p->dev) && netif_oper_up(p->dev);
+}
+
+static bool br_mrp_is_ring_port(const struct net_bridge_port *p)
+{
+	return p->mrp_port->role == BR_MRP_PORT_ROLE_PRIMARY ||
+	       p->mrp_port->role == BR_MRP_PORT_ROLE_SECONDARY;
+}
+
+/* Determins if a port is part of a MRP instance */
+static bool br_mrp_is_mrp_port(const struct net_bridge_port *p)
+{
+	if (!p->mrp_port || !p->mrp_port->mrp)
+		return false;
+
+	return true;
+}
+
+static void br_mrp_reset_ring_state(struct br_mrp *mrp)
+{
+	br_mrp_timer_stop(mrp);
+	mrp->mrm_state = BR_MRP_MRM_STATE_AC_STAT1;
+	mrp->mrc_state = BR_MRP_MRC_STATE_AC_STAT1;
+}
+
+static char *br_mrp_get_mrm_state(enum br_mrp_mrm_state_type state)
+{
+	switch (state) {
+	case BR_MRP_MRM_STATE_AC_STAT1: return "AC_STAT1";
+	case BR_MRP_MRM_STATE_PRM_UP: return "PRM_UP";
+	case BR_MRP_MRM_STATE_CHK_RO: return "CHK_RO";
+	case BR_MRP_MRM_STATE_CHK_RC: return "CHK_RC";
+	default: return "Unknown MRM state";
+	}
+}
+
+static char *br_mrp_get_mrc_state(enum br_mrp_mrc_state_type state)
+{
+	switch (state) {
+	case BR_MRP_MRC_STATE_AC_STAT1: return "AC_STAT1";
+	case BR_MRP_MRC_STATE_DE_IDLE: return "DE_IDLE";
+	case BR_MRP_MRC_STATE_PT: return "PT";
+	case BR_MRP_MRC_STATE_DE: return "DE";
+	case BR_MRP_MRC_STATE_PT_IDLE: return "PT_IDLE";
+	default: return "Unknown MRC state";
+	}
+}
+
+static void br_mrp_set_mrm_init(struct br_mrp *mrp)
+{
+	mrp->add_test = false;
+	mrp->no_tc = false;
+	mrp->ring_test_curr = 0;
+}
+
+static void br_mrp_set_mrc_init(struct br_mrp *mrp)
+{
+	mrp->ring_link_curr_max = mrp->ring_link_conf_max;
+	mrp->ring_test_curr = 0;
+}
+
+void br_mrp_set_mrm_state(struct br_mrp *mrp,
+			  enum br_mrp_mrm_state_type state)
+{
+	br_debug(mrp->br, "mrm_state: %s\n", br_mrp_get_mrm_state(state));
+	mrp->mrm_state = state;
+}
+
+void br_mrp_set_mrc_state(struct br_mrp *mrp,
+			  enum br_mrp_mrc_state_type state)
+{
+	br_debug(mrp->br, "mrc_state: %s\n", br_mrp_get_mrc_state(state));
+	mrp->mrc_state = state;
+}
+
+static int br_mrp_set_mrm_role(struct br_mrp *mrp)
+{
+	/* If MRP instance doesn't have set both ports, then it can't have a
+	 * role
+	 */
+	if (!mrp->p_port || !mrp->s_port)
+		return -EINVAL;
+
+	/* When changing the role everything is reset */
+	br_mrp_reset_ring_state(mrp);
+	br_mrp_set_mrm_init(mrp);
+
+	br_mrp_set_mrm_state(mrp, BR_MRP_MRM_STATE_AC_STAT1);
+
+	mrp->p_port->mrp_port->state = BR_MRP_PORT_STATE_BLOCKED;
+	mrp->s_port->mrp_port->state = BR_MRP_PORT_STATE_BLOCKED;
+	mrp->ring_role = BR_MRP_RING_ROLE_MRM;
+
+	if (br_mrp_is_port_up(mrp->p_port))
+		br_mrp_port_link_change(mrp->p_port, true);
+
+	if (br_mrp_is_port_up(mrp->s_port))
+		br_mrp_port_link_change(mrp->s_port, true);
+
+	return 0;
+}
+
+static int br_mrp_set_mrc_role(struct br_mrp *mrp)
+{
+	/* If MRP instance doesn't have set both ports, then it can't have a
+	 * role
+	 */
+	if (!mrp->p_port || !mrp->s_port)
+		return -EINVAL;
+
+	/* When changing the role everything is reset */
+	br_mrp_reset_ring_state(mrp);
+	br_mrp_set_mrc_init(mrp);
+
+	br_mrp_set_mrc_state(mrp, BR_MRP_MRC_STATE_AC_STAT1);
+
+	mrp->p_port->mrp_port->state = BR_MRP_PORT_STATE_BLOCKED;
+	mrp->s_port->mrp_port->state = BR_MRP_PORT_STATE_BLOCKED;
+	mrp->ring_role = BR_MRP_RING_ROLE_MRC;
+
+	if (br_mrp_is_port_up(mrp->p_port))
+		br_mrp_port_link_change(mrp->p_port, true);
+
+	if (br_mrp_is_port_up(mrp->s_port))
+		br_mrp_port_link_change(mrp->s_port, true);
+
+	return 0;
+}
+
+static int br_mrp_send_finish(struct net *net, struct sock *sk,
+			      struct sk_buff *skb)
+{
+	return dev_queue_xmit(skb);
+}
+
+/* According to the standard each frame has a different sequence number. If it
+ * is MRP_Test, MRP_TopologyChange or MRP_LinkChange
+ */
+static u16 br_mrp_next_seq(struct br_mrp *mrp)
+{
+	mrp->seq_id++;
+	return mrp->seq_id;
+}
+
+static enum br_mrp_ring_state_type br_mrp_ring_state(struct br_mrp *mrp)
+{
+	return mrp->mrm_state == BR_MRP_MRM_STATE_CHK_RC ?
+		BR_MRP_RING_STATE_CLOSED : BR_MRP_RING_STATE_OPEN;
+}
+
+/* Allocates MRP frame and set head part of the frames. This is the ethernet
+ * and the MRP version
+ */
+static struct sk_buff *br_mrp_skb_alloc(struct net_bridge_port *p,
+					const u8 *src, const u8 *dst)
+{
+	struct ethhdr *eth_hdr;
+	struct sk_buff *skb;
+	u16 *version;
+
+	skb = dev_alloc_skb(MRP_MAX_FRAME_LENGTH);
+	if (!skb)
+		return NULL;
+
+	skb->dev = p->dev;
+	skb->protocol = htons(ETH_P_MRP);
+	skb->priority = MRP_FRAME_PRIO;
+	skb_reserve(skb, sizeof(*eth_hdr));
+
+	eth_hdr = skb_push(skb, sizeof(*eth_hdr));
+	ether_addr_copy(eth_hdr->h_dest, dst);
+	ether_addr_copy(eth_hdr->h_source, src);
+	eth_hdr->h_proto = htons(ETH_P_MRP);
+
+	version = skb_put(skb, sizeof(*version));
+	*version = cpu_to_be16(MRP_VERSION);
+
+	return skb;
+}
+
+static void br_mrp_skb_tlv(struct sk_buff *skb,
+			   enum br_mrp_tlv_header_type type,
+			   u8 length)
+{
+	struct br_mrp_tlv_hdr *hdr;
+
+	hdr = skb_put(skb, sizeof(*hdr));
+	hdr->type = type;
+	hdr->length = length;
+}
+
+static void br_mrp_skb_common(struct sk_buff *skb,
+			      struct net_bridge_port *p)
+{
+	struct br_mrp_common_hdr *hdr;
+
+	br_mrp_skb_tlv(skb, BR_MRP_TLV_HEADER_COMMON, sizeof(*hdr));
+
+	hdr = skb_put(skb, sizeof(*hdr));
+	hdr->seq_id = cpu_to_be16(br_mrp_next_seq(p->mrp_port->mrp));
+	memcpy(hdr->domain, p->mrp_port->mrp->domain, MRP_DOMAIN_UUID_LENGTH);
+}
+
+/* Compose MRP_Test frame and forward the frame to the port p.
+ * The MRP_Test frame has the following format:
+ * MRP_Version, MRP_TLVHeader, MRP_Prio, MRP_SA, MRP_PortRole, MRP_RingState,
+ * MRP_Transitions, MRP_Timestamping, MRP_Common
+ */
+static void br_mrp_send_ring_test(struct net_bridge_port *p)
+{
+	struct br_mrp_ring_test_hdr *hdr = NULL;
+	struct br_mrp *mrp = p->mrp_port->mrp;
+	struct sk_buff *skb = NULL;
+
+	skb = br_mrp_skb_alloc(p, p->dev->dev_addr, mrp_test_dmac);
+	if (!skb)
+		return;
+
+	br_mrp_skb_tlv(skb, BR_MRP_TLV_HEADER_RING_TEST, sizeof(*hdr));
+	hdr = skb_put(skb, sizeof(*hdr));
+
+	hdr->prio = cpu_to_be16(mrp->prio);
+	ether_addr_copy(hdr->sa, p->br->dev->dev_addr);
+	hdr->port_role = cpu_to_be16(p->mrp_port->role);
+	hdr->state = cpu_to_be16(br_mrp_ring_state(mrp));
+	hdr->transitions = cpu_to_be16(mrp->ring_transitions);
+	hdr->timestamp = cpu_to_be32(jiffies_to_msecs(jiffies));
+
+	br_mrp_skb_common(skb, p);
+	br_mrp_skb_tlv(skb, BR_MRP_TLV_HEADER_END, 0x0);
+
+	NF_HOOK(NFPROTO_BRIDGE, NF_BR_LOCAL_OUT,
+		dev_net(p->dev), NULL, skb, NULL, skb->dev,
+		br_mrp_send_finish);
+}
+
+/* Send MRP_Test frames on both MRP ports and start a timer to send continuously
+ * frames with specific interval
+ */
+void br_mrp_ring_test_req(struct br_mrp *mrp, u32 interval)
+{
+	br_mrp_send_ring_test(mrp->p_port);
+	br_mrp_send_ring_test(mrp->s_port);
+
+	br_mrp_ring_test_start(mrp, interval);
+}
+
+/* Compose MRP_TopologyChange frame and forward the frame to the port p.
+ * The MRP_TopologyChange frame has the following format:
+ * MRP_Version, MRP_TLVHeader, MRP_Prio, MRP_SA, MRP_Interval
+ */
+static void br_mrp_send_ring_topo(struct net_bridge_port *p, u32 interval)
+{
+	struct br_mrp_ring_topo_hdr *hdr = NULL;
+	struct br_mrp *mrp = p->mrp_port->mrp;
+	struct sk_buff *skb = NULL;
+
+	skb = br_mrp_skb_alloc(p, p->dev->dev_addr, mrp_control_dmac);
+	if (!skb)
+		return;
+
+	br_mrp_skb_tlv(skb, BR_MRP_TLV_HEADER_RING_TOPO, sizeof(*hdr));
+	hdr = skb_put(skb, sizeof(*hdr));
+
+	hdr->prio = cpu_to_be16(mrp->prio);
+	ether_addr_copy(hdr->sa, p->br->dev->dev_addr);
+	hdr->interval = interval == 0 ? 0 : cpu_to_be16(interval / 1000);
+
+	br_mrp_skb_common(skb, p);
+	br_mrp_skb_tlv(skb, BR_MRP_TLV_HEADER_END, 0x0);
+
+	NF_HOOK(NFPROTO_BRIDGE, NF_BR_LOCAL_OUT,
+		dev_net(p->dev), NULL, skb, NULL, skb->dev,
+		br_mrp_send_finish);
+}
+
+/* Send MRP_TopologyChange frames on both MRP ports and start a timer to send
+ * continuously frames with specific interval. If the interval is 0, then the
+ * FDB needs to be clear, meaning that there was a change in the topology of the
+ * network.
+ */
+void br_mrp_ring_topo_req(struct br_mrp *mrp, u32 time)
+{
+	br_debug(mrp->br, "topo_req: %d\n", time);
+
+	br_mrp_send_ring_topo(mrp->p_port, time * mrp->ring_topo_conf_max);
+	br_mrp_send_ring_topo(mrp->s_port, time * mrp->ring_topo_conf_max);
+
+	if (!time) {
+		br_fdb_flush(mrp->br);
+	} else {
+		u32 delay = mrp->ring_topo_conf_interval;
+
+		br_mrp_ring_topo_start(mrp, delay);
+	}
+}
+
+/* Compose MRP_LinkChange frame and forward the frame to the port p.
+ * The MRP_LinkChange frame has the following format:
+ * MRP_Version, MRP_TLVHeader, MRP_SA, MRP_PortRole, MRP_Interval, MRP_Blocked
+ */
+static void br_mrp_send_ring_link(struct net_bridge_port *p, bool up,
+				  u32 interval)
+{
+	struct br_mrp_ring_link_hdr *hdr = NULL;
+	struct br_mrp *mrp = p->mrp_port->mrp;
+	struct sk_buff *skb = NULL;
+
+	skb = br_mrp_skb_alloc(p, p->dev->dev_addr, mrp_control_dmac);
+	if (!skb)
+		return;
+
+	br_mrp_skb_tlv(skb, up ? BR_MRP_TLV_HEADER_RING_LINK_UP :
+				 BR_MRP_TLV_HEADER_RING_LINK_DOWN,
+		       sizeof(*hdr));
+	hdr = skb_put(skb, sizeof(*hdr));
+
+	ether_addr_copy(hdr->sa, p->br->dev->dev_addr);
+	hdr->port_role = cpu_to_be16(p->mrp_port->role);
+	hdr->interval = interval == 0 ? 0 : cpu_to_be16(interval / 1000);
+	hdr->blocked = cpu_to_be16(mrp->blocked);
+
+	br_mrp_skb_common(skb, p);
+	br_mrp_skb_tlv(skb, BR_MRP_TLV_HEADER_END, 0x0);
+
+	NF_HOOK(NFPROTO_BRIDGE, NF_BR_LOCAL_OUT,
+		dev_net(p->dev), NULL, skb, NULL, skb->dev,
+		br_mrp_send_finish);
+}
+
+/* Send MRP_LinkChange frames on one of MRP ports */
+void br_mrp_ring_link_req(struct net_bridge_port *p, bool up, u32 interval)
+{
+	br_debug(p->br, "link_req up: %d interval: %d\n", up, interval);
+
+	br_mrp_send_ring_link(p, up, interval);
+}
+
+/* Returns the MRP_TLVHeader */
+static enum br_mrp_tlv_header_type
+br_mrp_get_tlv_hdr(const struct sk_buff *skb)
+{
+	struct br_mrp_tlv_hdr *hdr;
+
+	/* First 2 bytes in each MRP frame is the version and after that
+	 * is the tlv header, therefor skip the version
+	 */
+	hdr = (struct br_mrp_tlv_hdr *)(skb->data + sizeof(u16));
+	return hdr->type;
+}
+
+/* Represents the state machine for when a MRP_Test frame was received on one
+ * of the MRP ports and the MRP instance has the role MRM. When MRP instance has
+ * the role MRC, it doesn't need to process MRP_Test frames.
+ */
+static void br_mrp_mrm_recv_ring_test(struct br_mrp *mrp)
+{
+	u32 topo_interval = mrp->ring_topo_conf_interval;
+
+	switch (mrp->mrm_state) {
+	case BR_MRP_MRM_STATE_AC_STAT1:
+		/* Ignore */
+		break;
+	case BR_MRP_MRM_STATE_PRM_UP:
+		mrp->ring_test_curr_max = mrp->ring_test_conf_max - 1;
+		mrp->ring_test_curr = 0;
+		mrp->no_tc = false;
+
+		br_mrp_ring_test_req(mrp, mrp->ring_test_conf_interval);
+
+		br_mrp_set_mrm_state(mrp, BR_MRP_MRM_STATE_CHK_RC);
+		break;
+	case BR_MRP_MRM_STATE_CHK_RO:
+		mrp->s_port->mrp_port->state = BR_MRP_PORT_STATE_BLOCKED;
+
+		mrp->ring_test_curr_max = mrp->ring_test_conf_max - 1;
+		mrp->ring_test_curr = 0;
+		mrp->no_tc = false;
+
+		br_mrp_ring_test_req(mrp, mrp->ring_test_conf_interval);
+
+		topo_interval = !mrp->react_on_link_change ? 0 : topo_interval;
+		br_mrp_ring_topo_req(mrp, topo_interval);
+
+		br_mrp_set_mrm_state(mrp, BR_MRP_MRM_STATE_CHK_RC);
+		break;
+	case BR_MRP_MRM_STATE_CHK_RC:
+		mrp->ring_test_curr_max = mrp->ring_test_conf_max - 1;
+		mrp->ring_test_curr = 0;
+		mrp->no_tc = false;
+
+		break;
+	}
+}
+
+static void br_mrp_recv_ring_test(struct net_bridge_port *port,
+				  struct sk_buff *skb)
+{
+	struct br_mrp *mrp = port->mrp_port->mrp;
+	struct br_mrp_ring_test_hdr *hdr;
+
+	/* remove MRP version, tlv and get test header */
+	hdr = skb_pull(skb, sizeof(struct br_mrp_tlv_hdr) + sizeof(u16));
+	if (!hdr)
+		return;
+
+	/* If the MRP_Test frames was not send by this instance, then don't
+	 * process it.
+	 */
+	if (!ether_addr_equal(hdr->sa, port->br->dev->dev_addr))
+		return;
+
+	br_mrp_mrm_recv_ring_test(mrp);
+}
+
+/* Represents the state machine for when a MRP_TopologyChange frame was
+ * received on one of the MRP ports and the MRP instance has the role MRC. When
+ * MRP instance has the role MRM it doesn't need to process the frame.
+ */
+static void br_mrp_recv_ring_topo(struct net_bridge_port *port,
+				  struct sk_buff *skb)
+{
+	struct br_mrp *mrp = port->mrp_port->mrp;
+	struct br_mrp_ring_topo_hdr *hdr;
+
+	br_debug(mrp->br, "recv ring_topo, mrc state: %s\n",
+		 br_mrp_get_mrc_state(mrp->mrc_state));
+
+	/* remove MRP version, tlv and get ring topo header */
+	hdr = skb_pull(skb, sizeof(struct br_mrp_tlv_hdr) + sizeof(u16));
+	if (!hdr)
+		return;
+
+	switch (mrp->mrc_state) {
+	case BR_MRP_MRC_STATE_AC_STAT1:
+		/* Ignore */
+		break;
+	case BR_MRP_MRC_STATE_DE_IDLE:
+		br_mrp_clear_fdb_start(mrp, ntohs(hdr->interval));
+		break;
+	case BR_MRP_MRC_STATE_PT:
+		mrp->ring_link_curr_max = mrp->ring_link_conf_max;
+		br_mrp_ring_link_up_stop(mrp);
+		mrp->s_port->mrp_port->state = BR_MRP_PORT_STATE_FORWARDING;
+		br_mrp_clear_fdb_start(mrp, ntohs(hdr->interval));
+		br_mrp_set_mrc_state(mrp, BR_MRP_MRC_STATE_PT_IDLE);
+		break;
+	case BR_MRP_MRC_STATE_DE:
+		mrp->ring_link_curr_max = mrp->ring_link_conf_max;
+		br_mrp_ring_link_down_stop(mrp);
+		br_mrp_clear_fdb_start(mrp, ntohs(hdr->interval));
+		br_mrp_set_mrc_state(mrp, BR_MRP_MRC_STATE_DE_IDLE);
+		break;
+	case BR_MRP_MRC_STATE_PT_IDLE:
+		br_mrp_clear_fdb_start(mrp, ntohs(hdr->interval));
+		break;
+	}
+}
+
+/* Represents the state machine for when a MRP_LinkChange frame was
+ * received on one of the MRP ports and the MRP instance has the role MRM. When
+ * MRP instance has the role MRC it doesn't need to process the frame.
+ */
+static void br_mrp_recv_ring_link(struct net_bridge_port *port,
+				  struct sk_buff *skb)
+{
+	struct br_mrp *mrp = port->mrp_port->mrp;
+	enum br_mrp_tlv_header_type type;
+	struct br_mrp_tlv_hdr *tlv;
+
+	br_debug(mrp->br, "recv ring_link, mrm state: %s\n",
+		 br_mrp_get_mrm_state(mrp->mrm_state));
+
+	/* remove MRP version to get the tlv */
+	tlv = skb_pull(skb, sizeof(u16));
+	if (!tlv)
+		return;
+
+	type = tlv->type;
+
+	switch (mrp->mrm_state) {
+	case BR_MRP_MRM_STATE_AC_STAT1:
+		/* Ignore */
+		break;
+	case BR_MRP_MRM_STATE_PRM_UP:
+		if (mrp->blocked) {
+			if (mrp->add_test)
+				break;
+			mrp->add_test = true;
+			br_mrp_ring_test_req(mrp, mrp->ring_test_conf_interval);
+		} else {
+			if (type == BR_MRP_TLV_HEADER_RING_LINK_DOWN)
+				break;
+
+			if (!mrp->add_test) {
+				mrp->add_test = true;
+				br_mrp_ring_test_req(mrp,
+						     mrp->ring_test_conf_short);
+			}
+			br_mrp_ring_topo_req(mrp, 0);
+		}
+		break;
+	case BR_MRP_MRM_STATE_CHK_RO:
+		if (!mrp->add_test &&
+		    type == BR_MRP_TLV_HEADER_RING_LINK_UP &&
+		    mrp->blocked) {
+			mrp->add_test = true;
+			br_mrp_ring_test_req(mrp, mrp->ring_test_conf_short);
+			break;
+		}
+
+		if (mrp->add_test && type == BR_MRP_TLV_HEADER_RING_LINK_UP &&
+		    mrp->blocked)
+			break;
+
+		if (mrp->add_test && type == BR_MRP_TLV_HEADER_RING_LINK_DOWN)
+			break;
+
+		if (!mrp->add_test &&
+		    type == BR_MRP_TLV_HEADER_RING_LINK_DOWN) {
+			mrp->add_test = true;
+			br_mrp_ring_test_req(mrp, mrp->ring_test_conf_short);
+			break;
+		}
+
+		if (type == BR_MRP_TLV_HEADER_RING_LINK_UP && !mrp->blocked) {
+			mrp->s_port->mrp_port->state = BR_MRP_PORT_STATE_BLOCKED;
+			mrp->ring_test_curr_max = mrp->ring_test_conf_max - 1;
+			mrp->ring_test_curr = 0;
+
+			if (!mrp->add_test) {
+				br_mrp_ring_test_req(mrp,
+						     mrp->ring_test_conf_short);
+				mrp->add_test = true;
+			} else {
+				br_mrp_ring_test_req(mrp,
+						     mrp->ring_test_conf_interval);
+			}
+
+			br_mrp_ring_topo_req(mrp, 0);
+			br_mrp_set_mrm_state(mrp, BR_MRP_MRM_STATE_CHK_RC);
+			break;
+		}
+		break;
+	case BR_MRP_MRM_STATE_CHK_RC:
+		if (mrp->add_test && !mrp->react_on_link_change &&
+		    mrp->blocked)
+			break;
+
+		if (!mrp->add_test && !mrp->react_on_link_change &&
+		    mrp->blocked) {
+			mrp->add_test = true;
+			br_mrp_ring_test_req(mrp, mrp->ring_test_conf_short);
+			break;
+		}
+
+		if (type == BR_MRP_TLV_HEADER_RING_LINK_DOWN &&
+		    mrp->react_on_link_change) {
+			mrp->s_port->mrp_port->state = BR_MRP_PORT_STATE_FORWARDING;
+			mrp->ring_transitions++;
+			br_mrp_ring_topo_req(mrp, 0);
+			br_mrp_set_mrm_state(mrp, BR_MRP_MRM_STATE_CHK_RO);
+			break;
+		}
+
+		if (type == BR_MRP_TLV_HEADER_RING_LINK_UP &&
+		    mrp->react_on_link_change && !mrp->blocked) {
+			mrp->ring_test_curr_max = mrp->ring_test_conf_max - 1;
+			br_mrp_ring_topo_req(mrp, 0);
+		}
+
+		if (type == BR_MRP_TLV_HEADER_RING_LINK_UP &&
+		    mrp->react_on_link_change && mrp->blocked) {
+			mrp->ring_test_curr_max = mrp->ring_test_conf_max - 1;
+			br_mrp_ring_topo_req(mrp, 0);
+		}
+		break;
+	}
+}
+
+/* Check if the MRP frame needs to be dropped */
+static bool br_mrp_should_drop(const struct net_bridge_port *p,
+			       const struct sk_buff *skb,
+			       enum br_mrp_tlv_header_type type)
+{
+	/* All frames should be dropped if the state of the port is disabled */
+	if (p->mrp_port->state == BR_MRP_PORT_STATE_DISABLED)
+		return true;
+
+	/* If receiving a MRP frame on a port which is not in MRP ring
+	 * then the frame should be drop
+	 */
+	if (!br_mrp_is_mrp_port(p))
+		return true;
+
+	/* In case the port is in blocked state then the function
+	 * br_handle_frame will drop all NON-MRP frames and it would send all
+	 * MRP frames to the upper layer. So here is needed to drop MRP frames
+	 * if the port is in blocked state.
+	 */
+	if (br_mrp_is_ring_port(p) && p->state == BR_MRP_PORT_STATE_BLOCKED &&
+	    type != BR_MRP_TLV_HEADER_RING_TOPO &&
+	    type != BR_MRP_TLV_HEADER_RING_TEST &&
+	    type != BR_MRP_TLV_HEADER_RING_LINK_UP &&
+	    type != BR_MRP_TLV_HEADER_RING_LINK_DOWN) {
+		return true;
+	}
+
+	return false;
+}
+
+/* Check if the MRP frame needs to be process. It depends of the MRP instance
+ * role and the frame type if the frame needs to be processed or not.
+ */
+static bool br_mrp_should_process(const struct net_bridge_port *p,
+				  const struct sk_buff *skb,
+				  enum br_mrp_tlv_header_type type)
+{
+	struct br_mrp *mrp = p->mrp_port->mrp;
+
+	switch (type) {
+	case BR_MRP_TLV_HEADER_RING_TEST:
+	case BR_MRP_TLV_HEADER_RING_LINK_DOWN:
+	case BR_MRP_TLV_HEADER_RING_LINK_UP:
+		if (mrp->ring_role == BR_MRP_RING_ROLE_MRM)
+			return true;
+		break;
+	case BR_MRP_TLV_HEADER_RING_TOPO:
+		if (mrp->ring_role == BR_MRP_RING_ROLE_MRC)
+			return true;
+		break;
+	default:
+		break;
+	}
+
+	return false;
+}
+
+static void br_mrp_process(struct net_bridge_port *p, struct sk_buff *skb,
+			   enum br_mrp_tlv_header_type type)
+{
+	switch (type) {
+	case BR_MRP_TLV_HEADER_RING_TEST:
+		br_mrp_recv_ring_test(p, skb);
+		break;
+	case BR_MRP_TLV_HEADER_RING_TOPO:
+		br_mrp_recv_ring_topo(p, skb);
+		break;
+	case BR_MRP_TLV_HEADER_RING_LINK_DOWN:
+	case BR_MRP_TLV_HEADER_RING_LINK_UP:
+		br_mrp_recv_ring_link(p, skb);
+		break;
+	default:
+		WARN(1, "Unknown type: %d\n", type);
+	}
+}
+
+/* Check if the MRP frame needs to be forward to the other ports */
+static bool br_mrp_should_forward(const struct net_bridge_port *p,
+				  struct sk_buff *skb,
+				  enum br_mrp_tlv_header_type type)
+{
+	struct br_mrp *mrp = p->mrp_port->mrp;
+
+	if (p->mrp_port->role == BR_MRP_PORT_ROLE_NONE)
+		return true;
+
+	switch (type) {
+	case BR_MRP_TLV_HEADER_RING_TEST:
+	case BR_MRP_TLV_HEADER_RING_TOPO:
+	case BR_MRP_TLV_HEADER_RING_LINK_DOWN:
+	case BR_MRP_TLV_HEADER_RING_LINK_UP:
+		if (mrp->ring_role == BR_MRP_RING_ROLE_MRC)
+			return true;
+		break;
+	default:
+		/* All unknown frames types will not be processed */
+		break;
+	}
+
+	return false;
+}
+
+/* Forward the frame to the port to */
+static void br_mrp_forward_to_port(struct net_bridge_port *to,
+				   struct sk_buff *skb)
+{
+	skb->dev = to->dev;
+	skb = skb_clone(skb, GFP_ATOMIC);
+
+	NF_HOOK(NFPROTO_BRIDGE, NF_BR_FORWARD,
+		dev_net(to->dev), NULL, skb, NULL, skb->dev,
+		br_mrp_send_finish);
+}
+
+/* Recreate the data layer part of the frame and send forward the frame to
+ * port p
+ */
+static void br_mrp_forward_to_dst(struct sk_buff *skb,
+				  struct net_bridge_port *p)
+{
+	skb_push(skb, sizeof(struct ethhdr));
+
+	br_mrp_forward_to_port(p, skb);
+}
+
+/* All received MRP frames are added to a list of skbs and this function
+ * pops the frame and process them. It decides if the MRP instance needs to
+ * process it, forward it or dropp it
+ */
+static void br_mrp_process_skbs(struct work_struct *work)
+{
+	struct br_mrp *mrp = container_of(work, struct br_mrp, skbs_work);
+	struct sk_buff *skb;
+
+	while ((skb = skb_dequeue(&mrp->skbs)) != NULL) {
+		struct net_bridge_port *port = br_port_get_rtnl(skb->dev);
+		enum br_mrp_tlv_header_type type;
+
+		type = br_mrp_get_tlv_hdr(skb);
+
+		mutex_lock(&mrp->lock);
+
+		if (br_mrp_should_process(port, skb, type)) {
+			struct sk_buff *nskb;
+
+			/* Because there are cases when a frame needs to be
+			 * proccesed and also forward, it is required to clone
+			 * the frame for processing not to alter the original
+			 * one.
+			 */
+			nskb = skb_clone(skb, GFP_KERNEL);
+			if (!nskb)
+				goto next_skb;
+
+			br_mrp_process(port, nskb, type);
+			dev_kfree_skb_any(nskb);
+		}
+
+		if (br_mrp_should_forward(port, skb, type)) {
+			if (port == mrp->p_port)
+				br_mrp_forward_to_dst(skb, mrp->s_port);
+			if (port == mrp->s_port)
+				br_mrp_forward_to_dst(skb, mrp->p_port);
+		}
+
+next_skb:
+		mutex_unlock(&mrp->lock);
+
+		dev_kfree_skb_any(skb);
+	}
+}
+
+/* Receives all MRP frames and add them in a queue to be processed */
+int br_mrp_recv(struct sk_buff *skb, struct net_device *dev,
+		struct packet_type *pt, struct net_device *orig_dev)
+{
+	enum br_mrp_tlv_header_type type;
+	struct net_bridge_port *port;
+	struct br_mrp *mrp;
+
+	port = br_port_get_rtnl(dev);
+	if (!port)
+		goto out;
+
+	type = br_mrp_get_tlv_hdr(skb);
+
+	if (br_mrp_should_drop(port, skb, type))
+		goto out;
+
+	skb->dev = dev;
+	mrp = port->mrp_port->mrp;
+
+	skb_queue_tail(&mrp->skbs, skb);
+	schedule_work(&mrp->skbs_work);
+
+	return 0;
+out:
+	kfree_skb(skb);
+	return 0;
+}
+
+/* Represents the state machine for when MRP instance has the role MRM and the
+ * link of one of the MRP ports is changed.
+ */
+static void br_mrp_mrm_port_link(struct net_bridge_port *p, bool up)
+{
+	struct br_mrp *mrp = p->mrp_port->mrp;
+	u32 topo_interval = mrp->ring_topo_conf_interval;
+
+	br_debug(mrp->br, "port: %s, up: %d, mrm_state: %s\n",
+		 p->dev->name, up, br_mrp_get_mrm_state(mrp->mrm_state));
+
+	switch (mrp->mrm_state) {
+	case BR_MRP_MRM_STATE_AC_STAT1:
+		if (up && p == mrp->p_port) {
+			mrp->p_port->mrp_port->state = BR_MRP_PORT_STATE_FORWARDING;
+			br_mrp_ring_test_req(mrp, mrp->ring_test_conf_interval);
+			br_mrp_set_mrm_state(mrp, BR_MRP_MRM_STATE_PRM_UP);
+		}
+		if (up && p != mrp->p_port) {
+			mrp->s_port = mrp->p_port;
+			mrp->p_port = p;
+			mrp->p_port->mrp_port->state = BR_MRP_PORT_STATE_FORWARDING;
+			br_mrp_ring_test_req(mrp, mrp->ring_test_conf_interval);
+			br_mrp_set_mrm_state(mrp, BR_MRP_MRM_STATE_PRM_UP);
+		}
+		break;
+	case BR_MRP_MRM_STATE_PRM_UP:
+		if (!up && p == mrp->p_port) {
+			br_mrp_ring_test_stop(mrp);
+			mrp->p_port->mrp_port->state = BR_MRP_PORT_STATE_BLOCKED;
+			br_mrp_set_mrm_state(mrp, BR_MRP_MRM_STATE_AC_STAT1);
+		}
+		if (up && p != mrp->p_port) {
+			mrp->ring_test_curr_max = mrp->ring_test_conf_max - 1;
+			mrp->ring_test_curr = 0;
+			mrp->no_tc = true;
+			br_mrp_ring_test_req(mrp, mrp->ring_test_conf_interval);
+			br_mrp_set_mrm_state(mrp, BR_MRP_MRM_STATE_CHK_RC);
+		}
+		break;
+	case BR_MRP_MRM_STATE_CHK_RO:
+		if (!up && p == mrp->p_port) {
+			mrp->s_port = mrp->p_port;
+			mrp->p_port = p;
+			mrp->s_port->mrp_port->state = BR_MRP_PORT_STATE_BLOCKED;
+			br_mrp_ring_test_req(mrp, mrp->ring_test_conf_interval);
+			br_mrp_ring_topo_req(mrp, topo_interval);
+			br_mrp_set_mrm_state(mrp, BR_MRP_MRM_STATE_PRM_UP);
+			break;
+		}
+		if (!up && p != mrp->p_port) {
+			mrp->s_port->mrp_port->state = BR_MRP_PORT_STATE_BLOCKED;
+			br_mrp_set_mrm_state(mrp, BR_MRP_MRM_STATE_PRM_UP);
+		}
+		break;
+	case BR_MRP_MRM_STATE_CHK_RC:
+		if (!up && p == mrp->p_port) {
+			mrp->p_port = mrp->s_port;
+			mrp->s_port = p;
+			mrp->s_port->mrp_port->state = BR_MRP_PORT_STATE_BLOCKED;
+			mrp->p_port->mrp_port->state = BR_MRP_PORT_STATE_FORWARDING;
+			br_mrp_ring_test_req(mrp, mrp->ring_test_conf_interval);
+			br_mrp_ring_topo_req(mrp, topo_interval);
+			mrp->ring_transitions++;
+			br_mrp_set_mrm_state(mrp, BR_MRP_MRM_STATE_PRM_UP);
+			break;
+		}
+		if (!up && p != mrp->p_port) {
+			mrp->ring_transitions++;
+			br_mrp_set_mrm_state(mrp, BR_MRP_MRM_STATE_PRM_UP);
+			break;
+		}
+
+		break;
+	}
+
+	br_debug(mrp->br, "new mrm_state: %s\n",
+		 br_mrp_get_mrm_state(mrp->mrm_state));
+}
+
+/* Represents the state machine for when MRP instance has the role MRC and the
+ * link of one of the MRP ports is changed.
+ */
+static void br_mrp_mrc_port_link(struct net_bridge_port *p, bool up)
+{
+	struct br_mrp *mrp = p->mrp_port->mrp;
+
+	br_debug(mrp->br, "port: %s, up: %d, mrc_state: %s\n",
+		 p->dev->name, up, br_mrp_get_mrc_state(mrp->mrc_state));
+
+	switch (mrp->mrc_state) {
+	case BR_MRP_MRC_STATE_AC_STAT1:
+		if (up && p == mrp->p_port) {
+			mrp->p_port->mrp_port->state = BR_MRP_PORT_STATE_FORWARDING;
+			br_mrp_set_mrc_state(mrp, BR_MRP_MRC_STATE_DE_IDLE);
+		}
+		if (up && p != mrp->p_port) {
+			mrp->s_port = mrp->p_port;
+			mrp->p_port = p;
+			mrp->p_port->mrp_port->state = BR_MRP_PORT_STATE_FORWARDING;
+			br_mrp_set_mrc_state(mrp, BR_MRP_MRC_STATE_DE_IDLE);
+		}
+		break;
+	case BR_MRP_MRC_STATE_DE_IDLE:
+		if (up && p != mrp->p_port) {
+			mrp->ring_link_curr_max = mrp->ring_link_conf_max;
+			br_mrp_ring_link_up_start(mrp,
+						  mrp->ring_link_conf_interval);
+			br_mrp_ring_link_req(mrp->p_port, up,
+					     mrp->ring_link_curr_max *
+					     mrp->ring_link_conf_interval);
+			br_mrp_set_mrc_state(mrp, BR_MRP_MRC_STATE_PT);
+		}
+		if (!up && p == mrp->p_port) {
+			mrp->p_port->mrp_port->state = BR_MRP_PORT_STATE_BLOCKED;
+			br_mrp_set_mrc_state(mrp, BR_MRP_MRC_STATE_AC_STAT1);
+		}
+		break;
+	case BR_MRP_MRC_STATE_PT:
+		if (!up && p != mrp->p_port) {
+			mrp->ring_link_curr_max = mrp->ring_link_conf_max;
+			br_mrp_ring_link_up_stop(mrp);
+			mrp->s_port->mrp_port->state = BR_MRP_PORT_STATE_BLOCKED;
+			br_mrp_ring_link_down_start(mrp,
+						    mrp->ring_link_conf_interval);
+			br_mrp_ring_link_req(mrp->p_port, up,
+					     mrp->ring_link_curr_max *
+					     mrp->ring_link_conf_interval);
+			br_mrp_set_mrc_state(mrp, BR_MRP_MRC_STATE_DE);
+			break;
+		}
+		if (!up && p == mrp->p_port) {
+			mrp->ring_link_curr_max = mrp->ring_link_conf_max;
+			br_mrp_ring_link_up_stop(mrp);
+			mrp->p_port = mrp->s_port;
+			mrp->s_port = p;
+			mrp->p_port->mrp_port->state = BR_MRP_PORT_STATE_FORWARDING;
+			mrp->s_port->mrp_port->state = BR_MRP_PORT_STATE_BLOCKED;
+			br_mrp_ring_link_down_start(mrp,
+						    mrp->ring_link_conf_interval);
+			br_mrp_ring_link_req(mrp->p_port, up,
+					     mrp->ring_link_curr_max *
+					     mrp->ring_link_conf_interval);
+			br_mrp_set_mrc_state(mrp, BR_MRP_MRC_STATE_DE);
+		}
+		break;
+	case BR_MRP_MRC_STATE_DE:
+		if (up && p != mrp->p_port) {
+			mrp->ring_link_curr_max = mrp->ring_link_conf_max;
+			br_mrp_ring_link_down_stop(mrp);
+			br_mrp_ring_link_up_start(mrp,
+						  mrp->ring_link_conf_interval);
+			br_mrp_ring_link_req(mrp->p_port, up,
+					     mrp->ring_link_curr_max *
+					     mrp->ring_link_conf_interval);
+			br_mrp_set_mrc_state(mrp, BR_MRP_MRC_STATE_PT);
+		}
+		if (!up && p == mrp->p_port) {
+			mrp->ring_link_curr_max = mrp->ring_link_conf_max;
+			mrp->p_port->mrp_port->state = BR_MRP_PORT_STATE_BLOCKED;
+			br_mrp_ring_link_down_stop(mrp);
+			br_mrp_set_mrc_state(mrp, BR_MRP_MRC_STATE_AC_STAT1);
+		}
+		break;
+	case BR_MRP_MRC_STATE_PT_IDLE:
+		if (!up && p != mrp->p_port) {
+			mrp->ring_link_curr_max = mrp->ring_link_conf_max;
+			mrp->s_port->mrp_port->state = BR_MRP_PORT_STATE_BLOCKED;
+			br_mrp_ring_link_down_start(mrp,
+						    mrp->ring_link_conf_interval);
+			br_mrp_ring_link_req(mrp->p_port, up,
+					     mrp->ring_link_curr_max *
+					     mrp->ring_link_conf_interval);
+			br_mrp_set_mrc_state(mrp, BR_MRP_MRC_STATE_DE);
+		}
+		if (!up && p == mrp->p_port) {
+			mrp->ring_link_curr_max = mrp->ring_link_conf_max;
+			mrp->p_port = mrp->s_port;
+			mrp->s_port = p;
+			mrp->s_port->mrp_port->state = BR_MRP_PORT_STATE_BLOCKED;
+			br_mrp_ring_link_down_start(mrp,
+						    mrp->ring_link_conf_interval);
+			br_mrp_ring_link_req(mrp->p_port, up,
+					     mrp->ring_link_curr_max *
+					     mrp->ring_link_conf_interval);
+			br_mrp_set_mrc_state(mrp, BR_MRP_MRC_STATE_DE);
+		}
+		break;
+	}
+
+	br_debug(mrp->br, "new mrc_state: %s\n",
+		 br_mrp_get_mrc_state(mrp->mrc_state));
+}
+
+/* Whenever the port link changes, this function is called */
+void br_mrp_port_link_change(struct net_bridge_port *p, bool up)
+{
+	struct br_mrp *mrp;
+
+	/* If the port which changed its status is not a ring port then
+	 * nothing to do
+	 */
+	if (!br_mrp_is_mrp_port(p))
+		return;
+
+	mrp = p->mrp_port->mrp;
+
+	if (mrp->ring_role == BR_MRP_RING_ROLE_MRM)
+		return br_mrp_mrm_port_link(p, up);
+
+	if (mrp->ring_role == BR_MRP_RING_ROLE_MRC)
+		return br_mrp_mrc_port_link(p, up);
+}
+
+/* There are 4 different recovery times in which an MRP ring can recover. Based
+ * on the each time updates all the configuration variables. The interval are
+ * represented in ns.
+ */
+static void br_mrp_update_recovery(struct br_mrp *mrp,
+				   enum br_mrp_ring_recovery_type ring_recv)
+{
+	switch (ring_recv) {
+	case BR_MRP_RING_RECOVERY_500:
+		mrp->ring_topo_conf_interval = 20 * 1000;
+		mrp->ring_topo_conf_max = 3;
+		mrp->ring_topo_curr_max = mrp->ring_topo_conf_max - 1;
+		mrp->ring_test_conf_short = 30 * 1000;
+		mrp->ring_test_conf_interval = 50 * 1000;
+		mrp->ring_test_conf_max = 5;
+		mrp->ring_test_curr_max = mrp->ring_test_conf_max;
+		mrp->ring_test_conf_ext_max = 15;
+		mrp->ring_link_conf_interval = 100 * 1000;
+		mrp->ring_link_conf_max = 4;
+		mrp->ring_link_curr_max = 0;
+		break;
+	case BR_MRP_RING_RECOVERY_200:
+		mrp->ring_topo_conf_interval = 10 * 1000;
+		mrp->ring_topo_conf_max = 3;
+		mrp->ring_topo_curr_max = mrp->ring_topo_conf_max - 1;
+		mrp->ring_test_conf_short = 10 * 1000;
+		mrp->ring_test_conf_interval = 20 * 1000;
+		mrp->ring_test_conf_max = 3;
+		mrp->ring_test_curr_max = mrp->ring_test_conf_max;
+		mrp->ring_test_conf_ext_max = 15;
+		mrp->ring_link_conf_interval = 20 * 1000;
+		mrp->ring_link_conf_max = 4;
+		mrp->ring_link_curr_max = 0;
+		break;
+	case BR_MRP_RING_RECOVERY_30:
+		mrp->ring_topo_conf_interval = 500;
+		mrp->ring_topo_conf_max = 3;
+		mrp->ring_topo_curr_max = mrp->ring_topo_conf_max - 1;
+		mrp->ring_test_conf_short = 1 * 1000;
+		mrp->ring_test_conf_interval = 3500;
+		mrp->ring_test_conf_max = 3;
+		mrp->ring_test_curr_max = mrp->ring_test_conf_max;
+		mrp->ring_test_conf_ext_max = 15;
+		mrp->ring_link_conf_interval = 1;
+		mrp->ring_link_conf_max = 4;
+		mrp->ring_link_curr_max = 0;
+		break;
+	case BR_MRP_RING_RECOVERY_10:
+		mrp->ring_topo_conf_interval = 500;
+		mrp->ring_topo_conf_max = 3;
+		mrp->ring_topo_curr_max = mrp->ring_topo_conf_max - 1;
+		mrp->ring_test_conf_short = 500;
+		mrp->ring_test_conf_interval = 1000;
+		mrp->ring_test_conf_max = 3;
+		mrp->ring_test_curr_max = mrp->ring_test_conf_max;
+		mrp->ring_test_conf_ext_max = 15;
+		mrp->ring_link_conf_interval = 1;
+		mrp->ring_link_conf_max = 4;
+		mrp->ring_link_curr_max = 0;
+		break;
+	default:
+		break;
+	}
+}
+
+bool br_mrp_allow_egress(const struct net_bridge_port *p,
+			 const struct sk_buff *skb)
+{
+	/* TODO - Here can be a race condition. While this function is called
+	 * it is possible to delete/add MRP instances, because this code is not
+	 * protected by rtnl_lock. This needs to be fix somehow
+	 */
+	return (!p->mrp_port ||
+		(p->mrp_port &&
+		 p->mrp_port->state == BR_MRP_PORT_STATE_FORWARDING));
+}
+
+struct br_mrp *br_mrp_find(struct net_bridge *br, u32 ring_nr)
+{
+	struct br_mrp *mrp;
+
+	list_for_each_entry(mrp, &br->mrp_list, list) {
+		if (mrp->ring_nr == ring_nr)
+			return mrp;
+	}
+
+	return NULL;
+}
+
+/* Creates an MRP instance and initialize it */
+static int br_mrp_create(struct net_bridge *br, u32 ring_nr)
+{
+	struct br_mrp *mrp;
+
+	mrp = devm_kzalloc(&br->dev->dev, sizeof(struct br_mrp), GFP_KERNEL);
+	if (!mrp)
+		return -ENOMEM;
+
+	mutex_init(&mrp->lock);
+
+	INIT_WORK(&mrp->skbs_work, br_mrp_process_skbs);
+	skb_queue_head_init(&mrp->skbs);
+
+	mrp->br = br;
+	mrp->p_port = NULL;
+	mrp->s_port = NULL;
+	mrp->ring_nr = ring_nr;
+
+	mrp->ring_role = BR_MRP_RING_ROLE_MRC;
+	mrp->ring_transitions = 0;
+
+	mrp->seq_id = 0;
+	mrp->prio = MRP_DEFAULT_PRIO;
+	memset(mrp->domain, 0xFF, MRP_DOMAIN_UUID_LENGTH);
+
+	br_mrp_update_recovery(mrp, BR_MRP_RING_RECOVERY_200);
+
+	mrp->blocked = 1;
+	mrp->react_on_link_change = 1;
+
+	br_mrp_timer_init(mrp);
+
+	list_add_tail(&mrp->list, &br->mrp_list);
+
+	return 0;
+}
+
+/* Uninitialize MRP instance and remove it */
+static void br_mrp_destroy(struct net_bridge *br, u32 ring_nr)
+{
+	struct br_mrp *mrp = br_mrp_find(br, ring_nr);
+
+	if (!mrp)
+		return;
+
+	mutex_lock(&mrp->lock);
+
+	br_mrp_reset_ring_state(mrp);
+
+	cancel_work_sync(&mrp->skbs_work);
+	skb_queue_purge(&mrp->skbs);
+
+	mrp->ring_role = BR_MRP_RING_ROLE_DISABLED;
+	mrp->p_port = NULL;
+	mrp->s_port = NULL;
+	mrp->br = NULL;
+
+	mutex_unlock(&mrp->lock);
+
+	list_del(&mrp->list);
+	devm_kfree(&br->dev->dev, mrp);
+}
+
+void br_mrp_uninit(struct net_bridge *br)
+{
+	struct br_mrp *mrp, *tmp;
+
+	/* The MRP ports are already uninitialized, therefore only
+	 * destroy the MRP instances.
+	 */
+	list_for_each_entry_safe(mrp, tmp, &br->mrp_list, list) {
+		br_mrp_destroy(br, mrp->ring_nr);
+	}
+}
+
+/* Initialize an MRP port */
+static int br_mrp_port_init(struct net_bridge_port *port, struct br_mrp *mrp,
+			    enum br_mrp_port_role_type role)
+{
+	/* When a port is initialized, stop all timers and disable the states.
+	 * The reason is that, it should not be possible to change the ports
+	 * while MRP is running. Therefore after setting a port it is required
+	 * to set again the role(MRM or MRC)
+	 */
+	br_mrp_reset_ring_state(mrp);
+	mrp->ring_role = BR_MRP_RING_ROLE_DISABLED;
+
+	if (!port->mrp_port) {
+		port->mrp_port = devm_kzalloc(&port->br->dev->dev,
+					      sizeof(struct br_mrp_port),
+					      GFP_KERNEL);
+		if (!port->mrp_port)
+			return -ENOMEM;
+	}
+
+	port->mrp_port->mrp = mrp;
+	port->mrp_port->state = BR_MRP_PORT_STATE_FORWARDING;
+	port->mrp_port->role = role;
+
+	if (role == BR_MRP_PORT_ROLE_PRIMARY)
+		mrp->p_port = port;
+	if (role == BR_MRP_PORT_ROLE_SECONDARY)
+		mrp->s_port = port;
+
+	return 0;
+}
+
+/* Uninitialize MRP port */
+void br_mrp_port_uninit(struct net_bridge_port *port)
+{
+	struct br_mrp *mrp;
+
+	if (!port->mrp_port || !port->mrp_port->mrp)
+		return;
+
+	mrp = port->mrp_port->mrp;
+
+	mutex_lock(&mrp->lock);
+
+	br_mrp_reset_ring_state(mrp);
+	mrp->ring_role = BR_MRP_RING_ROLE_DISABLED;
+
+	if (port->mrp_port->role == BR_MRP_PORT_ROLE_PRIMARY)
+		mrp->p_port = NULL;
+	if (port->mrp_port->role == BR_MRP_PORT_ROLE_SECONDARY)
+		mrp->s_port = NULL;
+
+	port->mrp_port->state = BR_MRP_PORT_STATE_FORWARDING;
+	port->mrp_port->role = BR_MRP_PORT_ROLE_NONE;
+	port->mrp_port->mrp = NULL;
+
+	devm_kfree(&port->br->dev->dev, port->mrp_port);
+	port->mrp_port = NULL;
+
+	mutex_unlock(&mrp->lock);
+}
diff --git a/net/bridge/br_mrp_timer.c b/net/bridge/br_mrp_timer.c
new file mode 100644
index 000000000000..59aa8c05724f
--- /dev/null
+++ b/net/bridge/br_mrp_timer.c
@@ -0,0 +1,227 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/* Copyright (c) 2020 Microchip Corporation */
+
+#include "br_private_mrp.h"
+
+static void br_mrp_ring_open(struct br_mrp *mrp)
+{
+	mrp->s_port->mrp_port->state = BR_MRP_PORT_STATE_FORWARDING;
+
+	mrp->ring_test_curr_max = mrp->ring_test_conf_max - 1;
+	mrp->ring_test_curr = 0;
+
+	mrp->add_test = false;
+
+	if (!mrp->no_tc)
+		br_mrp_ring_topo_req(mrp, mrp->ring_topo_conf_interval);
+
+	br_mrp_ring_test_req(mrp, mrp->ring_test_conf_interval);
+
+	mrp->ring_transitions++;
+	br_mrp_set_mrm_state(mrp, BR_MRP_MRM_STATE_CHK_RO);
+}
+
+static void br_mrp_clear_fdb_expired(struct work_struct *work)
+{
+	struct delayed_work *del_work = to_delayed_work(work);
+	struct br_mrp *mrp = container_of(del_work, struct br_mrp,
+					  clear_fdb_work);
+
+	br_fdb_flush(mrp->br);
+}
+
+static void br_mrp_ring_test_expired(struct work_struct *work)
+{
+	struct delayed_work *del_work = to_delayed_work(work);
+	struct br_mrp *mrp = container_of(del_work, struct br_mrp,
+					  ring_test_work);
+
+	mutex_lock(&mrp->lock);
+
+	if (mrp->mrm_state == BR_MRP_MRM_STATE_AC_STAT1)
+		goto out;
+
+	if (mrp->mrm_state == BR_MRP_MRM_STATE_CHK_RO ||
+	    mrp->mrm_state == BR_MRP_MRM_STATE_PRM_UP) {
+		mrp->add_test = false;
+		br_mrp_ring_test_req(mrp, mrp->ring_test_conf_interval);
+		goto out;
+	}
+
+	if (mrp->ring_test_curr < mrp->ring_test_curr_max) {
+		mrp->ring_test_curr++;
+
+		mrp->add_test = false;
+
+		br_mrp_ring_test_req(mrp, mrp->ring_test_conf_interval);
+	} else {
+		br_mrp_ring_open(mrp);
+	}
+
+out:
+	mutex_unlock(&mrp->lock);
+}
+
+static void br_mrp_ring_topo_expired(struct work_struct *work)
+{
+	struct delayed_work *del_work = to_delayed_work(work);
+	struct br_mrp *mrp = container_of(del_work, struct br_mrp,
+					  ring_topo_work);
+
+	br_debug(mrp->br, "ring topo expired: ring_topo_curr_max: %d\n",
+		 mrp->ring_topo_curr_max);
+
+	mutex_lock(&mrp->lock);
+
+	if (mrp->ring_topo_curr_max > 0) {
+		mrp->ring_topo_curr_max--;
+
+		br_mrp_ring_topo_req(mrp, mrp->ring_topo_curr_max);
+	} else {
+		mrp->ring_topo_curr_max = mrp->ring_topo_conf_max - 1;
+		br_mrp_ring_topo_req(mrp, 0);
+	}
+
+	mutex_unlock(&mrp->lock);
+}
+
+static void br_mrp_ring_link_up_expired(struct work_struct *work)
+{
+	struct delayed_work *del_work = to_delayed_work(work);
+	struct br_mrp *mrp = container_of(del_work, struct br_mrp,
+					  ring_link_up_work);
+	u32 interval;
+	u32 delay;
+
+	br_debug(mrp->br, "ring link up expired: ring_link_curr_max: %d\n",
+		 mrp->ring_link_curr_max);
+
+	mutex_lock(&mrp->lock);
+
+	delay = mrp->ring_link_conf_interval;
+
+	if (mrp->ring_link_curr_max > 0) {
+		mrp->ring_link_curr_max--;
+
+		br_mrp_ring_link_up_start(mrp, delay);
+
+		interval = mrp->ring_link_curr_max * delay;
+
+		br_mrp_ring_link_req(mrp->p_port, true, interval);
+	} else {
+		mrp->ring_link_curr_max = mrp->ring_link_conf_max;
+		mrp->s_port->mrp_port->state = BR_MRP_PORT_STATE_FORWARDING;
+		br_mrp_set_mrc_state(mrp, BR_MRP_MRC_STATE_PT_IDLE);
+	}
+
+	mutex_unlock(&mrp->lock);
+}
+
+static void br_mrp_ring_link_down_expired(struct work_struct *work)
+{
+	struct delayed_work *del_work = to_delayed_work(work);
+	struct br_mrp *mrp = container_of(del_work, struct br_mrp,
+					  ring_link_down_work);
+	u32 interval;
+	u32 delay;
+
+	br_debug(mrp->br, "ring link down expired: ring_link_curr_max: %d\n",
+		 mrp->ring_link_curr_max);
+
+	mutex_lock(&mrp->lock);
+
+	delay = mrp->ring_link_conf_interval;
+
+	if (mrp->ring_link_curr_max > 0) {
+		mrp->ring_link_curr_max--;
+
+		br_mrp_ring_link_down_start(mrp, delay);
+
+		interval = mrp->ring_link_curr_max * delay;
+
+		br_mrp_ring_link_req(mrp->p_port, false, interval);
+	} else {
+		mrp->ring_link_curr_max = mrp->ring_link_conf_max;
+
+		br_mrp_set_mrc_state(mrp, BR_MRP_MRC_STATE_DE_IDLE);
+	}
+
+	mutex_unlock(&mrp->lock);
+}
+
+void br_mrp_ring_test_start(struct br_mrp *mrp, u32 interval)
+{
+	queue_delayed_work(mrp->timers_queue, &mrp->ring_test_work,
+			   usecs_to_jiffies(interval));
+}
+
+void br_mrp_ring_test_stop(struct br_mrp *mrp)
+{
+	cancel_delayed_work(&mrp->ring_test_work);
+}
+
+void br_mrp_ring_topo_start(struct br_mrp *mrp, u32 interval)
+{
+	queue_delayed_work(mrp->timers_queue, &mrp->ring_topo_work,
+			   usecs_to_jiffies(interval));
+}
+
+static void br_mrp_ring_topo_stop(struct br_mrp *mrp)
+{
+	cancel_delayed_work(&mrp->ring_topo_work);
+}
+
+void br_mrp_ring_link_up_start(struct br_mrp *mrp, u32 interval)
+{
+	queue_delayed_work(mrp->timers_queue, &mrp->ring_link_up_work,
+			   usecs_to_jiffies(interval));
+}
+
+void br_mrp_ring_link_up_stop(struct br_mrp *mrp)
+{
+	cancel_delayed_work(&mrp->ring_link_up_work);
+}
+
+void br_mrp_ring_link_down_start(struct br_mrp *mrp, u32 interval)
+{
+	queue_delayed_work(mrp->timers_queue, &mrp->ring_link_down_work,
+			   usecs_to_jiffies(interval));
+}
+
+void br_mrp_ring_link_down_stop(struct br_mrp *mrp)
+{
+	cancel_delayed_work(&mrp->ring_link_down_work);
+}
+
+void br_mrp_clear_fdb_start(struct br_mrp *mrp, u32 interval)
+{
+	queue_delayed_work(mrp->timers_queue, &mrp->clear_fdb_work,
+			   usecs_to_jiffies(interval));
+}
+
+static void br_mrp_clear_fdb_stop(struct br_mrp *mrp)
+{
+	cancel_delayed_work(&mrp->clear_fdb_work);
+}
+
+/* Stops all the timers */
+void br_mrp_timer_stop(struct br_mrp *mrp)
+{
+	br_mrp_clear_fdb_stop(mrp);
+	br_mrp_ring_topo_stop(mrp);
+	br_mrp_ring_link_up_stop(mrp);
+	br_mrp_ring_link_down_stop(mrp);
+	br_mrp_ring_test_stop(mrp);
+}
+
+void br_mrp_timer_init(struct br_mrp *mrp)
+{
+	mrp->timers_queue = create_singlethread_workqueue("mrp_timers");
+	INIT_DELAYED_WORK(&mrp->ring_topo_work, br_mrp_ring_topo_expired);
+	INIT_DELAYED_WORK(&mrp->clear_fdb_work, br_mrp_clear_fdb_expired);
+	INIT_DELAYED_WORK(&mrp->ring_test_work, br_mrp_ring_test_expired);
+	INIT_DELAYED_WORK(&mrp->ring_link_up_work, br_mrp_ring_link_up_expired);
+	INIT_DELAYED_WORK(&mrp->ring_link_down_work,
+			  br_mrp_ring_link_down_expired);
+}
diff --git a/net/bridge/br_private_mrp.h b/net/bridge/br_private_mrp.h
new file mode 100644
index 000000000000..00ee20582ac9
--- /dev/null
+++ b/net/bridge/br_private_mrp.h
@@ -0,0 +1,199 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef _BR_PRIVATE_MRP_H_
+#define _BR_PRIVATE_MRP_H_
+
+#include "br_private.h"
+
+#define MRP_MAX_FRAME_LENGTH		200
+#define MRP_DOMAIN_UUID_LENGTH		16
+#define MRP_VERSION			0x1
+#define MRP_FRAME_PRIO			7
+#define MRP_DEFAULT_PRIO		0x8000
+
+enum br_mrp_port_state_type {
+	BR_MRP_PORT_STATE_DISABLED,
+	BR_MRP_PORT_STATE_BLOCKED,
+	BR_MRP_PORT_STATE_FORWARDING,
+	BR_MRP_PORT_STATE_NOT_CONNECTED,
+};
+
+enum br_mrp_port_role_type {
+	BR_MRP_PORT_ROLE_PRIMARY,
+	BR_MRP_PORT_ROLE_SECONDARY,
+	BR_MRP_PORT_ROLE_NONE,
+};
+
+enum br_mrp_ring_role_type {
+	BR_MRP_RING_ROLE_DISABLED,
+	BR_MRP_RING_ROLE_MRC,
+	BR_MRP_RING_ROLE_MRM,
+};
+
+enum br_mrp_ring_state_type {
+	BR_MRP_RING_STATE_OPEN,
+	BR_MRP_RING_STATE_CLOSED,
+};
+
+enum br_mrp_ring_recovery_type {
+	BR_MRP_RING_RECOVERY_500,
+	BR_MRP_RING_RECOVERY_200,
+	BR_MRP_RING_RECOVERY_30,
+	BR_MRP_RING_RECOVERY_10,
+};
+
+enum br_mrp_mrm_state_type {
+	/* Awaiting Connection State 1 */
+	BR_MRP_MRM_STATE_AC_STAT1 = 0x0,
+	/* Primary Ring port with Link Up */
+	BR_MRP_MRM_STATE_PRM_UP = 0x1,
+	/* Check Ring, Ring Open State */
+	BR_MRP_MRM_STATE_CHK_RO = 0x2,
+	/* Check Ring, Ring Closed State */
+	BR_MRP_MRM_STATE_CHK_RC = 0x3,
+};
+
+enum br_mrp_mrc_state_type {
+	/* Awaiting Connection State 1 */
+	BR_MRP_MRC_STATE_AC_STAT1 = 0x0,
+	/* Data Exchange Idle state */
+	BR_MRP_MRC_STATE_DE_IDLE = 0x1,
+	/* Pass Through */
+	BR_MRP_MRC_STATE_PT = 0x2,
+	/* Data Exchange */
+	BR_MRP_MRC_STATE_DE = 0x3,
+	/* Pass Through Idle state */
+	BR_MRP_MRC_STATE_PT_IDLE = 0x4,
+};
+
+enum br_mrp_tlv_header_type {
+	BR_MRP_TLV_HEADER_END = 0x0,
+	BR_MRP_TLV_HEADER_COMMON = 0x1,
+	BR_MRP_TLV_HEADER_RING_TEST = 0x2,
+	BR_MRP_TLV_HEADER_RING_TOPO = 0x3,
+	BR_MRP_TLV_HEADER_RING_LINK_DOWN = 0x4,
+	BR_MRP_TLV_HEADER_RING_LINK_UP = 0x5,
+};
+
+struct br_mrp_tlv_hdr {
+	u8 type;
+	u8 length;
+} __packed;
+
+struct br_mrp_end_hdr {
+	struct br_mrp_tlv_hdr hdr;
+} __packed;
+
+struct br_mrp_common_hdr {
+	u16 seq_id;
+	u8 domain[MRP_DOMAIN_UUID_LENGTH];
+} __packed;
+
+struct br_mrp_ring_test_hdr {
+	u16 prio;
+	u8 sa[ETH_ALEN];
+	u16 port_role;
+	u16 state;
+	u16 transitions;
+	u32 timestamp;
+} __packed;
+
+struct br_mrp_ring_topo_hdr {
+	u16 prio;
+	u8 sa[ETH_ALEN];
+	u16 interval;
+} __packed;
+
+struct br_mrp_ring_link_hdr {
+	u8 sa[ETH_ALEN];
+	u16 port_role;
+	u16 interval;
+	u16 blocked;
+} __packed;
+
+struct br_mrp_port {
+	struct br_mrp			*mrp;
+	enum br_mrp_port_state_type	state;
+	enum br_mrp_port_role_type	role;
+};
+
+struct br_mrp {
+	/* list of mrp instances */
+	struct list_head		list;
+
+	struct sk_buff_head		skbs;
+	struct work_struct		skbs_work;
+
+	/* lock for each MRP instance */
+	struct mutex			lock;
+
+	struct net_bridge		*br;
+	struct net_bridge_port		*p_port;
+	struct net_bridge_port		*s_port;
+
+	u32				ring_nr;
+	enum br_mrp_ring_role_type	ring_role;
+	enum br_mrp_ring_recovery_type	ring_recv;
+
+	enum br_mrp_mrm_state_type	mrm_state;
+	enum br_mrp_mrc_state_type	mrc_state;
+
+	bool				add_test;
+	bool				no_tc;
+
+	u16				ring_transitions;
+
+	u16				seq_id;
+	u32				prio;
+	u8				domain[MRP_DOMAIN_UUID_LENGTH];
+
+	struct workqueue_struct		*timers_queue;
+
+	struct delayed_work		clear_fdb_work;
+
+	struct delayed_work		ring_test_work;
+	u32				ring_test_conf_short;
+	u32				ring_test_conf_interval;
+	u32				ring_test_conf_max;
+	u32				ring_test_conf_ext_max;
+	u32				ring_test_curr;
+	u32				ring_test_curr_max;
+
+	struct delayed_work		ring_topo_work;
+	u32				ring_topo_conf_interval;
+	u32				ring_topo_conf_max;
+	u32				ring_topo_curr_max;
+
+	struct delayed_work		ring_link_up_work;
+	struct delayed_work		ring_link_down_work;
+	u32				ring_link_conf_interval;
+	u32				ring_link_conf_max;
+	u32				ring_link_curr_max;
+
+	u16				blocked;
+	u16				react_on_link_change;
+};
+
+/* br_mrp.c */
+void br_mrp_ring_test_req(struct br_mrp *mrp, u32 interval);
+void br_mrp_ring_topo_req(struct br_mrp *mrp, u32 interval);
+void br_mrp_ring_link_req(struct net_bridge_port *p, bool up, u32 interval);
+
+void br_mrp_set_mrm_state(struct br_mrp *mrp, enum br_mrp_mrm_state_type state);
+void br_mrp_set_mrc_state(struct br_mrp *mrp, enum br_mrp_mrc_state_type state);
+
+/* br_mrp_timer.c */
+void br_mrp_timer_init(struct br_mrp *mrp);
+void br_mrp_timer_stop(struct br_mrp *mrp);
+
+void br_mrp_clear_fdb_start(struct br_mrp *mrp, u32 interval);
+
+void br_mrp_ring_test_start(struct br_mrp *mrp, u32 interval);
+void br_mrp_ring_test_stop(struct br_mrp *mrp);
+void br_mrp_ring_topo_start(struct br_mrp *mrp, u32 interval);
+void br_mrp_ring_link_up_start(struct br_mrp *mrp, u32 interval);
+void br_mrp_ring_link_up_stop(struct br_mrp *mrp);
+void br_mrp_ring_link_down_start(struct br_mrp *mrp, u32 interval);
+void br_mrp_ring_link_down_stop(struct br_mrp *mrp);
+
+#endif /* BR_PRIVATE_MRP_H_ */
-- 
2.17.1

