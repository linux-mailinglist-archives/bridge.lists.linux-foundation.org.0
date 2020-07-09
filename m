Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 424F1219CD9
	for <lists.bridge@lfdr.de>; Thu,  9 Jul 2020 12:03:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F17F226C1D;
	Thu,  9 Jul 2020 10:02:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9P6pj4UpUDZa; Thu,  9 Jul 2020 10:02:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 7EB2E26A1C;
	Thu,  9 Jul 2020 10:02:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 22376C016F;
	Thu,  9 Jul 2020 10:02:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E9576C016F
 for <bridge@lists.linux-foundation.org>; Thu,  9 Jul 2020 10:02:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0022A885E9
 for <bridge@lists.linux-foundation.org>; Thu,  9 Jul 2020 10:01:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9CrCz3zWb7Ca for <bridge@lists.linux-foundation.org>;
 Thu,  9 Jul 2020 10:01:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3CF8B885D2
 for <bridge@lists.linux-foundation.org>; Thu,  9 Jul 2020 10:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1594288899; x=1625824899;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YrFb0GHYJSVnxx4wY0JWDfV+FNkiN88T+WCC0hZkD+w=;
 b=cSBMP19e93x0kyMafAgj0ncGZZXnL5rZgWgeTPGbaVgRzBgzZKJp3HsR
 dl7kzm1V4MYfMzWB45pzrADhKI0DTxdyAzpDLHtwNhTkbxDuSpIVB7oe0
 cS9z2h1B0DQdN+Ys+0Po233PFGT8HtqdN/HZuXFjMI7aEEfZO2ghZA9n3
 dVArYweyK91U4pAaw9gdkxxuROCJouTIFpihaQVPigEwRrZybjBEKsOBC
 aBjrXOrg9235I7mSrY2zSGja051DA4tiUoh+nolXmzBwiNpAy70KYpPBo
 kjmT/feWzcaBUJtuO2FSte8FUKuBeObfJWIMhizr5idacQS9tB10vU/Ij A==;
IronPort-SDR: H+lu3KFO/njvveRiO7eU1/abKsY3L05ku0bXUtLx2SFAWrCxi1YLl/LCbH/bC5wPkuX8qgxUlN
 G1PjvVoodiauKDWxbu7WBGSflGnFr3ncuUdSqir8/46F3c7VhxK4GjNu0mpKp6kujpF8MDkoWx
 fEAFeujgncziLu7YHgKz7oEpHgOgvDMkZCCb3rAq71lIo/gE/XSNejuqvm5uQSz0Fgcq3TwVIy
 ZgcpaBkGQyt37HqIfkONK4rGxDhFfcd7jfznh3taEfJ1mVrDKqSI7/U0y3TlreuAgN/hWwYkk7
 ID4=
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="82397707"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jul 2020 03:01:38 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 9 Jul 2020 03:01:38 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Thu, 9 Jul 2020 03:01:34 -0700
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <jiri@resnulli.us>,
 <ivecera@redhat.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Thu, 9 Jul 2020 12:00:30 +0200
Message-ID: <20200709100040.554623-3-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200709100040.554623-1-horatiu.vultur@microchip.com>
References: <20200709100040.554623-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v2 02/12] bridge: uapi: mrp: Extend MRP
	attributes for MRP interconnect
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

Extend the existing MRP netlink attributes to allow to configure MRP
Interconnect:

IFLA_BRIDGE_MRP_IN_ROLE - the parameter type is br_mrp_in_role which
  contains the interconnect id, the ring id, the interconnect role(MIM
  or MIC) and the port ifindex that represents the interconnect port.

IFLA_BRIDGE_MRP_IN_STATE - the parameter type is br_mrp_in_state which
  contains the interconnect id and the interconnect state.

IFLA_BRIDGE_MRP_IN_TEST - the parameter type is br_mrp_start_in_test
  which contains the interconnect id, the interval at which to send
  MRP_InTest frames, how many test frames can be missed before declaring
  the interconnect ring open and the period which represents for how long
  to send MRP_InTest frames.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 include/uapi/linux/if_bridge.h  | 53 +++++++++++++++++++++++++++++++++
 include/uapi/linux/mrp_bridge.h | 38 +++++++++++++++++++++++
 2 files changed, 91 insertions(+)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index c114c1c2bd533..d840a3e37a37c 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -167,6 +167,9 @@ enum {
 	IFLA_BRIDGE_MRP_RING_ROLE,
 	IFLA_BRIDGE_MRP_START_TEST,
 	IFLA_BRIDGE_MRP_INFO,
+	IFLA_BRIDGE_MRP_IN_ROLE,
+	IFLA_BRIDGE_MRP_IN_STATE,
+	IFLA_BRIDGE_MRP_START_IN_TEST,
 	__IFLA_BRIDGE_MRP_MAX,
 };
 
@@ -245,6 +248,37 @@ enum {
 
 #define IFLA_BRIDGE_MRP_INFO_MAX (__IFLA_BRIDGE_MRP_INFO_MAX - 1)
 
+enum {
+	IFLA_BRIDGE_MRP_IN_STATE_UNSPEC,
+	IFLA_BRIDGE_MRP_IN_STATE_IN_ID,
+	IFLA_BRIDGE_MRP_IN_STATE_STATE,
+	__IFLA_BRIDGE_MRP_IN_STATE_MAX,
+};
+
+#define IFLA_BRIDGE_MRP_IN_STATE_MAX (__IFLA_BRIDGE_MRP_IN_STATE_MAX - 1)
+
+enum {
+	IFLA_BRIDGE_MRP_IN_ROLE_UNSPEC,
+	IFLA_BRIDGE_MRP_IN_ROLE_RING_ID,
+	IFLA_BRIDGE_MRP_IN_ROLE_IN_ID,
+	IFLA_BRIDGE_MRP_IN_ROLE_ROLE,
+	IFLA_BRIDGE_MRP_IN_ROLE_I_IFINDEX,
+	__IFLA_BRIDGE_MRP_IN_ROLE_MAX,
+};
+
+#define IFLA_BRIDGE_MRP_IN_ROLE_MAX (__IFLA_BRIDGE_MRP_IN_ROLE_MAX - 1)
+
+enum {
+	IFLA_BRIDGE_MRP_START_IN_TEST_UNSPEC,
+	IFLA_BRIDGE_MRP_START_IN_TEST_IN_ID,
+	IFLA_BRIDGE_MRP_START_IN_TEST_INTERVAL,
+	IFLA_BRIDGE_MRP_START_IN_TEST_MAX_MISS,
+	IFLA_BRIDGE_MRP_START_IN_TEST_PERIOD,
+	__IFLA_BRIDGE_MRP_START_IN_TEST_MAX,
+};
+
+#define IFLA_BRIDGE_MRP_START_IN_TEST_MAX (__IFLA_BRIDGE_MRP_START_IN_TEST_MAX - 1)
+
 struct br_mrp_instance {
 	__u32 ring_id;
 	__u32 p_ifindex;
@@ -270,6 +304,25 @@ struct br_mrp_start_test {
 	__u32 monitor;
 };
 
+struct br_mrp_in_state {
+	__u32 in_state;
+	__u16 in_id;
+};
+
+struct br_mrp_in_role {
+	__u32 ring_id;
+	__u32 in_role;
+	__u32 i_ifindex;
+	__u16 in_id;
+};
+
+struct br_mrp_start_in_test {
+	__u32 interval;
+	__u32 max_miss;
+	__u32 period;
+	__u16 in_id;
+};
+
 struct bridge_stp_xstats {
 	__u64 transition_blk;
 	__u64 transition_fwd;
diff --git a/include/uapi/linux/mrp_bridge.h b/include/uapi/linux/mrp_bridge.h
index bee3665402129..6aeb13ef0b1ec 100644
--- a/include/uapi/linux/mrp_bridge.h
+++ b/include/uapi/linux/mrp_bridge.h
@@ -21,11 +21,22 @@ enum br_mrp_ring_role_type {
 	BR_MRP_RING_ROLE_MRA,
 };
 
+enum br_mrp_in_role_type {
+	BR_MRP_IN_ROLE_DISABLED,
+	BR_MRP_IN_ROLE_MIC,
+	BR_MRP_IN_ROLE_MIM,
+};
+
 enum br_mrp_ring_state_type {
 	BR_MRP_RING_STATE_OPEN,
 	BR_MRP_RING_STATE_CLOSED,
 };
 
+enum br_mrp_in_state_type {
+	BR_MRP_IN_STATE_OPEN,
+	BR_MRP_IN_STATE_CLOSED,
+};
+
 enum br_mrp_port_state_type {
 	BR_MRP_PORT_STATE_DISABLED,
 	BR_MRP_PORT_STATE_BLOCKED,
@@ -36,6 +47,7 @@ enum br_mrp_port_state_type {
 enum br_mrp_port_role_type {
 	BR_MRP_PORT_ROLE_PRIMARY,
 	BR_MRP_PORT_ROLE_SECONDARY,
+	BR_MRP_PORT_ROLE_INTER,
 };
 
 enum br_mrp_tlv_header_type {
@@ -45,6 +57,10 @@ enum br_mrp_tlv_header_type {
 	BR_MRP_TLV_HEADER_RING_TOPO = 0x3,
 	BR_MRP_TLV_HEADER_RING_LINK_DOWN = 0x4,
 	BR_MRP_TLV_HEADER_RING_LINK_UP = 0x5,
+	BR_MRP_TLV_HEADER_IN_TEST = 0x6,
+	BR_MRP_TLV_HEADER_IN_TOPO = 0x7,
+	BR_MRP_TLV_HEADER_IN_LINK_DOWN = 0x8,
+	BR_MRP_TLV_HEADER_IN_LINK_UP = 0x9,
 	BR_MRP_TLV_HEADER_OPTION = 0x7f,
 };
 
@@ -118,4 +134,26 @@ struct br_mrp_oui_hdr {
 	__u8 oui[MRP_OUI_LENGTH];
 };
 
+struct br_mrp_in_test_hdr {
+	__be16 id;
+	__u8 sa[ETH_ALEN];
+	__be16 port_role;
+	__be16 state;
+	__be16 transitions;
+	__be32 timestamp;
+};
+
+struct br_mrp_in_topo_hdr {
+	__u8 sa[ETH_ALEN];
+	__be16 id;
+	__be16 interval;
+};
+
+struct br_mrp_in_link_hdr {
+	__u8 sa[ETH_ALEN];
+	__be16 port_role;
+	__be16 id;
+	__be16 interval;
+};
+
 #endif
-- 
2.27.0

