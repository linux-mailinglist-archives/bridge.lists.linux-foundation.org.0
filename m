Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B44411B4AAC
	for <lists.bridge@lfdr.de>; Wed, 22 Apr 2020 18:36:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 20CDC87D0B;
	Wed, 22 Apr 2020 16:21:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ND40c2ybE6q3; Wed, 22 Apr 2020 16:21:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 51AD68552C;
	Wed, 22 Apr 2020 16:21:50 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 45A92C1DC9;
	Wed, 22 Apr 2020 16:21:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3A30AC0175
 for <bridge@lists.linux-foundation.org>; Wed, 22 Apr 2020 16:21:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 31DE586442
 for <bridge@lists.linux-foundation.org>; Wed, 22 Apr 2020 16:21:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xbQY0D5ZgVUw for <bridge@lists.linux-foundation.org>;
 Wed, 22 Apr 2020 16:21:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0AE608645E
 for <bridge@lists.linux-foundation.org>; Wed, 22 Apr 2020 16:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587572507; x=1619108507;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=EVrsHnpOE3AZe4JWL68hdRpJtAseA7A0xWunJ0r9P4o=;
 b=DCDAJF74XnDvBzsl3xE8ZWPnVN7q8Y+GVniiCCUI/QqHdKklS/uyx5I6
 9BM+E18OG8YE92HrXc46woGoH+FLyr6AugHz/lAFS6QumdPTEknAt4YnJ
 yceIPzQ6D8j4eol32sTWuSeOR7r0dpeDLpSIVIPpxmWxMuNMbnn8HxWs+
 oidf2Sg3QV8X8BT3jAsetL9MiGM9jVMQcvjRTXpB0NznROtjif2qje13+
 afasYcVaMsqIwpC/93Eug3dJR5f7srbraQTYlzfxvsqP9G0L07CrzhTxn
 Xzk46i6gC9eVvBksrSjYgJS22m+9A0mVwrm5UjFNG7dnjDcSIFGqAjclG Q==;
IronPort-SDR: 06s2VlUClXIzMK2tPoxHc+5jcgpvuB/vUScx+ByE56hAWI5XZY/XgnX/S9BRzK2gpCs6ipaMI1
 6/nZuVPJsStCsZdtLqVQQLKheBsxNKVJNy4e13WCcB7cSsxGRsnVdEc8oUT8S6/NCHQ7ZURtlK
 HcNVa8u/RlCJP8lTgyD0+Tbl47911ZUCiDdbXBwRJZGCaxz/FGJ7cFrdv/nIpMaFiQ0Iiieqvf
 wxOEvD1ulkE6qj2tEM21YvbYY/v9vu3DHeRoz3bKmNejK4dIxPoIhzEEhQQY4PYFVU+eY4R/hw
 YAg=
X-IronPort-AV: E=Sophos;i="5.73,304,1583218800"; d="scan'208";a="73460457"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 22 Apr 2020 09:21:46 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 22 Apr 2020 09:21:12 -0700
Received: from soft-dev3.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 22 Apr 2020 09:21:44 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <nikolay@cumulusnetworks.com>, <davem@davemloft.net>, <jiri@resnulli.us>, 
 <ivecera@redhat.com>, <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <olteanv@gmail.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Wed, 22 Apr 2020 18:18:23 +0200
Message-ID: <20200422161833.1123-2-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200422161833.1123-1-horatiu.vultur@microchip.com>
References: <20200422161833.1123-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v3 01/11] bridge: uapi: mrp: Add mrp
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

