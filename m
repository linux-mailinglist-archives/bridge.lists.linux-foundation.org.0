Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E83428B9F9
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 16:07:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F1FFB875AD;
	Mon, 12 Oct 2020 14:07:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RDb2tdUk3MGD; Mon, 12 Oct 2020 14:07:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 060B5875A1;
	Mon, 12 Oct 2020 14:07:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E31D8C0051;
	Mon, 12 Oct 2020 14:07:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8C701C0051
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 14:07:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 869612150A
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 14:07:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F92eKjK2HVpz for <bridge@lists.linux-foundation.org>;
 Mon, 12 Oct 2020 14:07:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by silver.osuosl.org (Postfix) with ESMTPS id 5CAAE220B2
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 14:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1602511606; x=1634047606;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=swxnyDJbR9Lmsf2pqMyYByYpt/CwvNw6HUNn0q4/Jm4=;
 b=s4l66OGaI1I8YYSixfJzQB5GRZfU19KoMgP+bi6+GH9olbxJq6HZHc9R
 Y9D3dN0f38DEA5DSm6KucI5HGZy1nkJVRNWqHsktCOVbEOILIIsDn+oN1
 KAEs5BR1YrF4DVQCjabvkVuyDHI2F7H90DQfz79+U99I7akCrOQCHrtYk
 vH7dhTGANXaQunOudLXwijTmveeo1J+h7ZpFvzVtT/aJHxonJWJcjgv3z
 Wys5z1mt1AICSkwn9Tpk82UkDdj6IS9C4kmtiXy+U6u2MLIT3tjoT/6F/
 bv83cIdRdk5qIfbjXT1i7oqWZMKMydPb28Ak/q0b0R7zqKpcwD/yEiO0Z w==;
IronPort-SDR: sXWB8/l5C43a214xtDVwZiYsG03MADDb213ALfaLsBfR4Xyjfc6cFy58KhjsqX7TvftNHQNjr0
 BE/I3/2fd7XdJ3eUpq2M5IHOv5Ef8z4bKYYMnU2fxfZh17BxsBS98dqRiBC7Ofb/gY7PkaLqvT
 1tIEpzVqdWjtntfYXDWJ1a5NLQq3qTLJVAI8K81EMNrc/h4fE1sypIaKgAmyrWHTJDHDOUGp85
 TukrlZNFn9ruaKtfnm8SK4At7gw5of260wEzx+KKDdOYf5UvJnq5c/XgAkCtEQdhqB2xXnKlvs
 xUQ=
X-IronPort-AV: E=Sophos;i="5.77,366,1596524400"; d="scan'208";a="95019194"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Oct 2020 07:06:45 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 12 Oct 2020 07:06:45 -0700
Received: from soft-test08.microsemi.net (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Mon, 12 Oct 2020 07:06:43 -0700
To: <davem@davemloft.net>, <kuba@kernel.org>, <roopa@nvidia.com>,
 <nikolay@nvidia.com>, <jiri@mellanox.com>, <idosch@mellanox.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <UNGLinuxDriver@microchip.com>
Date: Mon, 12 Oct 2020 14:04:27 +0000
Message-ID: <20201012140428.2549163-10-henrik.bjoernlund@microchip.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012140428.2549163-1-henrik.bjoernlund@microchip.com>
References: <20201012140428.2549163-1-henrik.bjoernlund@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>,
 Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v5 09/10] bridge: cfm: Netlink GET status
	Interface.
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
From: Henrik Bjoernlund via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

This is the implementation of CFM netlink status
get information interface.

Add new nested netlink attributes. These attributes are used by the
user space to get status information.

GETLINK:
    Request filter RTEXT_FILTER_CFM_STATUS:
    Indicating that CFM status information must be delivered.

    IFLA_BRIDGE_CFM:
        Points to the CFM information.

    IFLA_BRIDGE_CFM_MEP_STATUS_INFO:
        This indicate that the MEP instance status are following.
    IFLA_BRIDGE_CFM_CC_PEER_STATUS_INFO:
        This indicate that the peer MEP status are following.

CFM nested attribute has the following attributes in next level.

GETLINK RTEXT_FILTER_CFM_STATUS:
    IFLA_BRIDGE_CFM_MEP_STATUS_INSTANCE:
        The MEP instance number of the delivered status.
        The type is u32.
    IFLA_BRIDGE_CFM_MEP_STATUS_OPCODE_UNEXP_SEEN:
        The MEP instance received CFM PDU with unexpected Opcode.
        The type is u32 (bool).
    IFLA_BRIDGE_CFM_MEP_STATUS_VERSION_UNEXP_SEEN:
        The MEP instance received CFM PDU with unexpected version.
        The type is u32 (bool).
    IFLA_BRIDGE_CFM_MEP_STATUS_RX_LEVEL_LOW_SEEN:
        The MEP instance received CCM PDU with MD level lower than
        configured level. This frame is discarded.
        The type is u32 (bool).

    IFLA_BRIDGE_CFM_CC_PEER_STATUS_INSTANCE:
        The MEP instance number of the delivered status.
        The type is u32.
    IFLA_BRIDGE_CFM_CC_PEER_STATUS_PEER_MEPID:
        The added Peer MEP ID of the delivered status.
        The type is u32.
    IFLA_BRIDGE_CFM_CC_PEER_STATUS_CCM_DEFECT:
        The CCM defect status.
        The type is u32 (bool).
        True means no CCM frame is received for 3.25 intervals.
        IFLA_BRIDGE_CFM_CC_CONFIG_EXP_INTERVAL.
    IFLA_BRIDGE_CFM_CC_PEER_STATUS_RDI:
        The last received CCM PDU RDI.
        The type is u32 (bool).
    IFLA_BRIDGE_CFM_CC_PEER_STATUS_PORT_TLV_VALUE:
        The last received CCM PDU Port Status TLV value field.
        The type is u8.
    IFLA_BRIDGE_CFM_CC_PEER_STATUS_IF_TLV_VALUE:
        The last received CCM PDU Interface Status TLV value field.
        The type is u8.
    IFLA_BRIDGE_CFM_CC_PEER_STATUS_SEEN:
        A CCM frame has been received from Peer MEP.
        The type is u32 (bool).
        This is cleared after GETLINK IFLA_BRIDGE_CFM_CC_PEER_STATUS_INFO.
    IFLA_BRIDGE_CFM_CC_PEER_STATUS_TLV_SEEN:
        A CCM frame with TLV has been received from Peer MEP.
        The type is u32 (bool).
        This is cleared after GETLINK IFLA_BRIDGE_CFM_CC_PEER_STATUS_INFO.
    IFLA_BRIDGE_CFM_CC_PEER_STATUS_SEQ_UNEXP_SEEN:
        A CCM frame with unexpected sequence number has been received
        from Peer MEP.
        The type is u32 (bool).
        When a sequence number is not one higher than previously received
        then it is unexpected.
        This is cleared after GETLINK IFLA_BRIDGE_CFM_CC_PEER_STATUS_INFO.

Signed-off-by: Henrik Bjoernlund  <henrik.bjoernlund@microchip.com>
Reviewed-by: Horatiu Vultur  <horatiu.vultur@microchip.com>
---
 include/uapi/linux/if_bridge.h |  29 +++++++++
 include/uapi/linux/rtnetlink.h |   1 +
 net/bridge/br_cfm_netlink.c    | 105 +++++++++++++++++++++++++++++++++
 net/bridge/br_netlink.c        |  16 ++++-
 net/bridge/br_private.h        |   6 ++
 5 files changed, 154 insertions(+), 3 deletions(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index b8b4491922d9..d975e1223884 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -345,6 +345,8 @@ enum {
 	IFLA_BRIDGE_CFM_CC_RDI_INFO,
 	IFLA_BRIDGE_CFM_CC_CCM_TX_INFO,
 	IFLA_BRIDGE_CFM_CC_PEER_MEP_INFO,
+	IFLA_BRIDGE_CFM_MEP_STATUS_INFO,
+	IFLA_BRIDGE_CFM_CC_PEER_STATUS_INFO,
 	__IFLA_BRIDGE_CFM_MAX,
 };
 
@@ -424,6 +426,33 @@ enum {
 
 #define IFLA_BRIDGE_CFM_CC_CCM_TX_MAX (__IFLA_BRIDGE_CFM_CC_CCM_TX_MAX - 1)
 
+enum {
+	IFLA_BRIDGE_CFM_MEP_STATUS_UNSPEC,
+	IFLA_BRIDGE_CFM_MEP_STATUS_INSTANCE,
+	IFLA_BRIDGE_CFM_MEP_STATUS_OPCODE_UNEXP_SEEN,
+	IFLA_BRIDGE_CFM_MEP_STATUS_VERSION_UNEXP_SEEN,
+	IFLA_BRIDGE_CFM_MEP_STATUS_RX_LEVEL_LOW_SEEN,
+	__IFLA_BRIDGE_CFM_MEP_STATUS_MAX,
+};
+
+#define IFLA_BRIDGE_CFM_MEP_STATUS_MAX (__IFLA_BRIDGE_CFM_MEP_STATUS_MAX - 1)
+
+enum {
+	IFLA_BRIDGE_CFM_CC_PEER_STATUS_UNSPEC,
+	IFLA_BRIDGE_CFM_CC_PEER_STATUS_INSTANCE,
+	IFLA_BRIDGE_CFM_CC_PEER_STATUS_PEER_MEPID,
+	IFLA_BRIDGE_CFM_CC_PEER_STATUS_CCM_DEFECT,
+	IFLA_BRIDGE_CFM_CC_PEER_STATUS_RDI,
+	IFLA_BRIDGE_CFM_CC_PEER_STATUS_PORT_TLV_VALUE,
+	IFLA_BRIDGE_CFM_CC_PEER_STATUS_IF_TLV_VALUE,
+	IFLA_BRIDGE_CFM_CC_PEER_STATUS_SEEN,
+	IFLA_BRIDGE_CFM_CC_PEER_STATUS_TLV_SEEN,
+	IFLA_BRIDGE_CFM_CC_PEER_STATUS_SEQ_UNEXP_SEEN,
+	__IFLA_BRIDGE_CFM_CC_PEER_STATUS_MAX,
+};
+
+#define IFLA_BRIDGE_CFM_CC_PEER_STATUS_MAX (__IFLA_BRIDGE_CFM_CC_PEER_STATUS_MAX - 1)
+
 struct bridge_stp_xstats {
 	__u64 transition_blk;
 	__u64 transition_fwd;
diff --git a/include/uapi/linux/rtnetlink.h b/include/uapi/linux/rtnetlink.h
index ffc9ca1f2bdb..fdd408f6a5d2 100644
--- a/include/uapi/linux/rtnetlink.h
+++ b/include/uapi/linux/rtnetlink.h
@@ -780,6 +780,7 @@ enum {
 #define	RTEXT_FILTER_SKIP_STATS	(1 << 3)
 #define RTEXT_FILTER_MRP	(1 << 4)
 #define RTEXT_FILTER_CFM_CONFIG	(1 << 5)
+#define RTEXT_FILTER_CFM_STATUS	(1 << 6)
 
 /* End of information exported to user level */
 
diff --git a/net/bridge/br_cfm_netlink.c b/net/bridge/br_cfm_netlink.c
index e7bfb8e003e8..506e352cc763 100644
--- a/net/bridge/br_cfm_netlink.c
+++ b/net/bridge/br_cfm_netlink.c
@@ -612,3 +612,108 @@ int br_cfm_config_fill_info(struct sk_buff *skb, struct net_bridge *br)
 nla_info_failure:
 	return -EMSGSIZE;
 }
+
+int br_cfm_status_fill_info(struct sk_buff *skb, struct net_bridge *br)
+{
+	struct br_cfm_peer_mep *peer_mep;
+	struct br_cfm_mep *mep;
+	struct nlattr *tb;
+
+	hlist_for_each_entry_rcu(mep, &br->mep_list, head) {
+		tb = nla_nest_start(skb, IFLA_BRIDGE_CFM_MEP_STATUS_INFO);
+		if (!tb)
+			goto nla_info_failure;
+
+		if (nla_put_u32(skb, IFLA_BRIDGE_CFM_MEP_STATUS_INSTANCE,
+				mep->instance))
+			goto nla_put_failure;
+
+		if (nla_put_u32(skb,
+				IFLA_BRIDGE_CFM_MEP_STATUS_OPCODE_UNEXP_SEEN,
+				mep->status.opcode_unexp_seen))
+			goto nla_put_failure;
+
+		if (nla_put_u32(skb,
+				IFLA_BRIDGE_CFM_MEP_STATUS_VERSION_UNEXP_SEEN,
+				mep->status.version_unexp_seen))
+			goto nla_put_failure;
+
+		if (nla_put_u32(skb,
+				IFLA_BRIDGE_CFM_MEP_STATUS_RX_LEVEL_LOW_SEEN,
+				mep->status.rx_level_low_seen))
+			goto nla_put_failure;
+
+		/* Clear all 'seen' indications */
+		mep->status.opcode_unexp_seen = false;
+		mep->status.version_unexp_seen = false;
+		mep->status.rx_level_low_seen = false;
+
+		nla_nest_end(skb, tb);
+
+		hlist_for_each_entry_rcu(peer_mep, &mep->peer_mep_list, head) {
+			tb = nla_nest_start(skb,
+					    IFLA_BRIDGE_CFM_CC_PEER_STATUS_INFO);
+			if (!tb)
+				goto nla_info_failure;
+
+			if (nla_put_u32(skb,
+					IFLA_BRIDGE_CFM_CC_PEER_STATUS_INSTANCE,
+					mep->instance))
+				goto nla_put_failure;
+
+			if (nla_put_u32(skb,
+					IFLA_BRIDGE_CFM_CC_PEER_STATUS_PEER_MEPID,
+					peer_mep->mepid))
+				goto nla_put_failure;
+
+			if (nla_put_u32(skb,
+					IFLA_BRIDGE_CFM_CC_PEER_STATUS_CCM_DEFECT,
+					peer_mep->cc_status.ccm_defect))
+				goto nla_put_failure;
+
+			if (nla_put_u32(skb, IFLA_BRIDGE_CFM_CC_PEER_STATUS_RDI,
+					peer_mep->cc_status.rdi))
+				goto nla_put_failure;
+
+			if (nla_put_u8(skb,
+				       IFLA_BRIDGE_CFM_CC_PEER_STATUS_PORT_TLV_VALUE,
+				       peer_mep->cc_status.port_tlv_value))
+				goto nla_put_failure;
+
+			if (nla_put_u8(skb,
+				       IFLA_BRIDGE_CFM_CC_PEER_STATUS_IF_TLV_VALUE,
+				       peer_mep->cc_status.if_tlv_value))
+				goto nla_put_failure;
+
+			if (nla_put_u32(skb,
+					IFLA_BRIDGE_CFM_CC_PEER_STATUS_SEEN,
+					peer_mep->cc_status.seen))
+				goto nla_put_failure;
+
+			if (nla_put_u32(skb,
+					IFLA_BRIDGE_CFM_CC_PEER_STATUS_TLV_SEEN,
+					peer_mep->cc_status.tlv_seen))
+				goto nla_put_failure;
+
+			if (nla_put_u32(skb,
+					IFLA_BRIDGE_CFM_CC_PEER_STATUS_SEQ_UNEXP_SEEN,
+					peer_mep->cc_status.seq_unexp_seen))
+				goto nla_put_failure;
+
+			/* Clear all 'seen' indications */
+			peer_mep->cc_status.seen = false;
+			peer_mep->cc_status.tlv_seen = false;
+			peer_mep->cc_status.seq_unexp_seen = false;
+
+			nla_nest_end(skb, tb);
+		}
+	}
+
+	return 0;
+
+nla_put_failure:
+	nla_nest_cancel(skb, tb);
+
+nla_info_failure:
+	return -EMSGSIZE;
+}
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 69bfe165ff7f..68c2ed87e26b 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -428,7 +428,8 @@ static int br_fill_ifinfo(struct sk_buff *skb,
 	if (filter_mask & (RTEXT_FILTER_BRVLAN |
 			   RTEXT_FILTER_BRVLAN_COMPRESSED |
 			   RTEXT_FILTER_MRP |
-			   RTEXT_FILTER_CFM_CONFIG)) {
+			   RTEXT_FILTER_CFM_CONFIG |
+			   RTEXT_FILTER_CFM_STATUS)) {
 		af = nla_nest_start_noflag(skb, IFLA_AF_SPEC);
 		if (!af)
 			goto nla_put_failure;
@@ -477,7 +478,7 @@ static int br_fill_ifinfo(struct sk_buff *skb,
 			goto nla_put_failure;
 	}
 
-	if (filter_mask & RTEXT_FILTER_CFM_CONFIG) {
+	if (filter_mask & (RTEXT_FILTER_CFM_CONFIG | RTEXT_FILTER_CFM_STATUS)) {
 		struct nlattr *cfm_nest = NULL;
 		int err;
 
@@ -496,6 +497,14 @@ static int br_fill_ifinfo(struct sk_buff *skb,
 				goto nla_put_failure;
 		}
 
+		if (filter_mask & RTEXT_FILTER_CFM_STATUS) {
+			rcu_read_lock();
+			err = br_cfm_status_fill_info(skb, br);
+			rcu_read_unlock();
+			if (err)
+				goto nla_put_failure;
+		}
+
 		nla_nest_end(skb, cfm_nest);
 	}
 
@@ -563,7 +572,8 @@ int br_getlink(struct sk_buff *skb, u32 pid, u32 seq,
 	if (!port && !(filter_mask & RTEXT_FILTER_BRVLAN) &&
 	    !(filter_mask & RTEXT_FILTER_BRVLAN_COMPRESSED) &&
 	    !(filter_mask & RTEXT_FILTER_MRP) &&
-	    !(filter_mask & RTEXT_FILTER_CFM_CONFIG))
+	    !(filter_mask & RTEXT_FILTER_CFM_CONFIG) &&
+	    !(filter_mask & RTEXT_FILTER_CFM_STATUS))
 		return 0;
 
 	return br_fill_ifinfo(skb, port, pid, seq, RTM_NEWLINK, nlflags,
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index f571bdeb5d83..228635b350a2 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1466,6 +1466,7 @@ int br_cfm_parse(struct net_bridge *br, struct net_bridge_port *p,
 bool br_cfm_created(struct net_bridge *br);
 void br_cfm_port_del(struct net_bridge *br, struct net_bridge_port *p);
 int br_cfm_config_fill_info(struct sk_buff *skb, struct net_bridge *br);
+int br_cfm_status_fill_info(struct sk_buff *skb, struct net_bridge *br);
 #else
 static inline int br_cfm_parse(struct net_bridge *br, struct net_bridge_port *p,
 			       struct nlattr *attr, int cmd,
@@ -1488,6 +1489,11 @@ static inline int br_cfm_config_fill_info(struct sk_buff *skb, struct net_bridge
 {
 	return -EOPNOTSUPP;
 }
+
+static inline int br_cfm_status_fill_info(struct sk_buff *skb, struct net_bridge *br)
+{
+	return -EOPNOTSUPP;
+}
 #endif
 
 /* br_netlink.c */
-- 
2.28.0

