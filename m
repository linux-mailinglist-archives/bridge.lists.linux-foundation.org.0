Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF1C1B0F6D
	for <lists.bridge@lfdr.de>; Mon, 20 Apr 2020 17:11:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AAB2986E3F;
	Mon, 20 Apr 2020 15:11:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rBVsyWuQ+dx3; Mon, 20 Apr 2020 15:11:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id E43E586E15;
	Mon, 20 Apr 2020 15:11:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DBD4CC0177;
	Mon, 20 Apr 2020 15:11:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8BF2FC1D8D
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 15:11:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7BA2787D94
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 15:11:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O3kzR2fRZz7d for <bridge@lists.linux-foundation.org>;
 Mon, 20 Apr 2020 15:11:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9D90487CB2
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 15:11:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587395503; x=1618931503;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=EVrsHnpOE3AZe4JWL68hdRpJtAseA7A0xWunJ0r9P4o=;
 b=zfmlvttERl5IteHClJsJdTdCF2dtpmgxFFJfeFU3YQSP0V3+v+twe9wU
 vLoxnVsyccxMf75hWaFSdp/NJF4RQNLzc/T9/vsrXY5VpzBCCP15MScxt
 m5fEWmy8JLjfalok5orBN2wmIn+tQs3rzk771A6PALEGLQi+il24a503X
 KCFA3ly+vwroRuax+hd9T4LPGfJozYEFRjkr40hiuFWk0gm23Kfn9QxXS
 Vh4bKwt0NQV/iw3040+eRW5KVUdr9w0iI7YknPoX3QBXMBXsjHWlsQoIy
 yby/yoEeg6bnRdMIXgGaZga+jp8UcUAcFQUMFKUOnnOWdRmekYy4OfBl8 A==;
IronPort-SDR: x3NWO0Hz8WulMMZVlLkvnn/PcKyoi46IU9lQxhUvsQCh9RIFDv7+rRaL9Z03c2dRZ6au2xGzs6
 l0GZG6CfC8jX9QxzrNstmM/YA0A4HldxKE1y+7onHyKukUnDM+EcE5fClumVSW8k1EoI5MoKvR
 xl/6vLnyIWfAuq3pjXCvgYoobjA532mwr90gJ+LEQUtwsSuRcxlcwT5NqTX/MyMHug0Cm7Fxfl
 S5WRPPTl3WUHJwmWZn0zZTVDVexf5XGo//sJcCMaWZgmBpU4eaFRYm5DGMlTDyOk0SCGCd/itf
 pIA=
X-IronPort-AV: E=Sophos;i="5.72,406,1580799600"; d="scan'208";a="70911668"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Apr 2020 08:11:42 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 20 Apr 2020 08:11:42 -0700
Received: from soft-dev3.microsemi.net (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 20 Apr 2020 08:11:11 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <nikolay@cumulusnetworks.com>, <davem@davemloft.net>, <jiri@resnulli.us>, 
 <ivecera@redhat.com>, <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <olteanv@gmail.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Mon, 20 Apr 2020 17:09:35 +0200
Message-ID: <20200420150947.30974-2-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200420150947.30974-1-horatiu.vultur@microchip.com>
References: <20200420150947.30974-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next 01/13] bridge: uapi: mrp: Add mrp
	attributes.
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

Add new nested netlink attribute to configure the MRP. These attributes are used
by the userspace to add/delete/configure MRP instances and by the kernel to
notify the userspace when the MRP ring gets open/closed. MRP nested attribute
has the following attributes:

IFLA_BRIDGE_MRP_INSTANCE - the parameter type is br_mrp_instance which contains
  the instance id, and the ifindex of the two ports. The ports can't be part of
  multiple instances. This is used to create/delete MRP instances.

IFLA_BRIDGE_MRP_PORT_STATE - the parameter type is u32. Which can be forwarding,
  blocking or disabled.

IFLA_BRIDGE_MRP_PORT_ROLE - the parameter type is br_mrp_port_role which
  contains the instance id and the role. The role can be primary or secondary.

IFLA_BRIDGE_MRP_RING_STATE - the parameter type is br_mrp_ring_state which
  contains the instance id and the state. The state can be open or closed.

IFLA_BRIDGE_MRP_RING_ROLE - the parameter type is br_mrp_ring_role which
  contains the instance id and the ring role. The role can be MRM or MRC.

IFLA_BRIDGE_MRP_START_TEST - the parameter type is br_mrp_start_test which
  contains the instance id, the interval at which to send the MRP_Test frames,
  how many test frames can be missed before declaring the ring open and the
  period which represent for how long to send the test frames.

Also add the file include/uapi/linux/mrp_bridge.h which defines all the types
used by MRP that are also needed by the userpace.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 include/uapi/linux/if_bridge.h  | 42 +++++++++++++++++
 include/uapi/linux/if_ether.h   |  1 +
 include/uapi/linux/mrp_bridge.h | 84 +++++++++++++++++++++++++++++++++
 3 files changed, 127 insertions(+)
 create mode 100644 include/uapi/linux/mrp_bridge.h

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index bfe621ea51b3..bd8c95488f16 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -120,6 +120,7 @@ enum {
 	IFLA_BRIDGE_MODE,
 	IFLA_BRIDGE_VLAN_INFO,
 	IFLA_BRIDGE_VLAN_TUNNEL_INFO,
+	IFLA_BRIDGE_MRP,
 	__IFLA_BRIDGE_MAX,
 };
 #define IFLA_BRIDGE_MAX (__IFLA_BRIDGE_MAX - 1)
@@ -157,6 +158,47 @@ struct bridge_vlan_xstats {
 	__u32 pad2;
 };
 
+enum {
+	IFLA_BRIDGE_MRP_UNSPEC,
+	IFLA_BRIDGE_MRP_INSTANCE,
+	IFLA_BRIDGE_MRP_PORT_STATE,
+	IFLA_BRIDGE_MRP_PORT_ROLE,
+	IFLA_BRIDGE_MRP_RING_STATE,
+	IFLA_BRIDGE_MRP_RING_ROLE,
+	IFLA_BRIDGE_MRP_START_TEST,
+	__IFLA_BRIDGE_MRP_MAX,
+};
+
+struct br_mrp_instance {
+	__u32 ring_id;
+	__u32 p_ifindex;
+	__u32 s_ifindex;
+};
+
+struct br_mrp_port_role {
+	__u32 ring_id;
+	__u32 role;
+};
+
+struct br_mrp_ring_state {
+	__u32 ring_id;
+	__u32 ring_state;
+};
+
+struct br_mrp_ring_role {
+	__u32 ring_id;
+	__u32 ring_role;
+};
+
+struct br_mrp_start_test {
+	__u32 ring_id;
+	__u32 interval;
+	__u32 max_miss;
+	__u32 period;
+};
+
+#define IFLA_BRIDGE_MRP_MAX (__IFLA_BRIDGE_MRP_MAX - 1)
+
 struct bridge_stp_xstats {
 	__u64 transition_blk;
 	__u64 transition_fwd;
diff --git a/include/uapi/linux/if_ether.h b/include/uapi/linux/if_ether.h
index f6ceb2e63d1e..d6de2b167448 100644
--- a/include/uapi/linux/if_ether.h
+++ b/include/uapi/linux/if_ether.h
@@ -92,6 +92,7 @@
 #define ETH_P_PREAUTH	0x88C7		/* 802.11 Preauthentication */
 #define ETH_P_TIPC	0x88CA		/* TIPC 			*/
 #define ETH_P_LLDP	0x88CC		/* Link Layer Discovery Protocol */
+#define ETH_P_MRP	0x88E3		/* Media Redundancy Protocol	*/
 #define ETH_P_MACSEC	0x88E5		/* 802.1ae MACsec */
 #define ETH_P_8021AH	0x88E7          /* 802.1ah Backbone Service Tag */
 #define ETH_P_MVRP	0x88F5          /* 802.1Q MVRP                  */
diff --git a/include/uapi/linux/mrp_bridge.h b/include/uapi/linux/mrp_bridge.h
new file mode 100644
index 000000000000..2600cdf5a284
--- /dev/null
+++ b/include/uapi/linux/mrp_bridge.h
@@ -0,0 +1,84 @@
+/* SPDX-License-Identifier: GPL-2.0+ WITH Linux-syscall-note */
+
+#ifndef _UAPI_LINUX_MRP_BRIDGE_H_
+#define _UAPI_LINUX_MRP_BRIDGE_H_
+
+#include <linux/types.h>
+#include <linux/if_ether.h>
+
+#define MRP_MAX_FRAME_LENGTH		200
+#define MRP_DEFAULT_PRIO		0x8000
+#define MRP_DOMAIN_UUID_LENGTH		16
+#define MRP_VERSION			1
+#define MRP_FRAME_PRIO			7
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
+	__u8 type;
+	__u8 length;
+};
+
+struct br_mrp_end_hdr {
+	struct br_mrp_tlv_hdr hdr;
+};
+
+struct br_mrp_common_hdr {
+	__u16 seq_id;
+	__u8 domain[MRP_DOMAIN_UUID_LENGTH];
+};
+
+struct br_mrp_ring_test_hdr {
+	__u16 prio;
+	__u8 sa[ETH_ALEN];
+	__u16 port_role;
+	__u16 state;
+	__u16 transitions;
+	__u32 timestamp;
+};
+
+struct br_mrp_ring_topo_hdr {
+	__u16 prio;
+	__u8 sa[ETH_ALEN];
+	__u16 interval;
+};
+
+struct br_mrp_ring_link_hdr {
+	__u8 sa[ETH_ALEN];
+	__u16 port_role;
+	__u16 interval;
+	__u16 blocked;
+};
+
+#endif
-- 
2.17.1

