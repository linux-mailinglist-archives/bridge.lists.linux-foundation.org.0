Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D0029A8AC
	for <lists.bridge@lfdr.de>; Tue, 27 Oct 2020 11:04:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 153252045E;
	Tue, 27 Oct 2020 10:04:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2NX5avpTu+hM; Tue, 27 Oct 2020 10:04:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id D3FEC20498;
	Tue, 27 Oct 2020 10:04:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AD4D3C08A1;
	Tue, 27 Oct 2020 10:04:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DA3B1C0051
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 10:04:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D5D608723C
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 10:04:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1HYDM2COtzYG for <bridge@lists.linux-foundation.org>;
 Tue, 27 Oct 2020 10:04:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 51BA087265
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 10:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1603793082; x=1635329082;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=We68xkshcB04gNLmGtzrE9sewAxRB2peQ87PQDhlzAA=;
 b=ZUxTMsTyi0Fo6HvTyugNqBqeNbbkrATaVBSlU/FVc9HPNS7c+zTNbyLv
 wI4xqAM3YaNPJuwCDgAHzqZOcWgB/jfbtPNJDm8zaOOTyfSJn/vJdPPrc
 QWEMWNmFTDUb4aoDEHHTM0Zs2Z6DCcDYp23dmh4B0Vj7kKfM1gBhf0ytf
 rpGPY+J+KxP+GAxN/tx0M4v/sEF2UAdCcav+/19pUCjxtMOrVN1Jej6Cc
 7LA6M601LKnE9wkHK6ghAV7bZ+homO9uNvAutBx7p1RCYq8JVP+QFo1Zc
 AUDcRdkHXCyyoTQoIo3vOgxhUgWzaPepiptF4hvRnihLbaqeoswi5KZ78 Q==;
IronPort-SDR: uLCuM2pp1uO3WLOlRogL1v9Ifr3z7+6Laj4+nl32ysNWQgdDzJC5ChlBTF9xhU8JrCXq1mYSQp
 3XX/g+g+JV9nNlq2reXJ+rFKTqJ1Nh9gj9S8ZNZLx594uNDcmun8aPb1mwJJAe/Ct57II547rU
 GIN3rWUohcWbKfYV9voRLTAMxFPLsX0TNKxH1y0yD19gfsWlF0xYWpbcSg15eM4Q+5SAHIN/xN
 FS4kAIOekt9H5O2DOvz3Uyz58mEKnttu2NrtR74OBkYxjO2g++f2649FDnZaisj+JzoTYuBryd
 Ttw=
X-IronPort-AV: E=Sophos;i="5.77,423,1596524400"; d="scan'208";a="101046783"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 Oct 2020 03:04:41 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 27 Oct 2020 03:04:41 -0700
Received: from soft-test08.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 27 Oct 2020 03:04:38 -0700
To: <davem@davemloft.net>, <kuba@kernel.org>, <roopa@nvidia.com>,
 <nikolay@nvidia.com>, <jiri@mellanox.com>, <idosch@mellanox.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <UNGLinuxDriver@microchip.com>
Date: Tue, 27 Oct 2020 10:02:51 +0000
Message-ID: <20201027100251.3241719-11-henrik.bjoernlund@microchip.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201027100251.3241719-1-henrik.bjoernlund@microchip.com>
References: <20201027100251.3241719-1-henrik.bjoernlund@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>,
 Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v7 10/10] bridge: cfm: Netlink
	Notifications.
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

This is the implementation of Netlink notifications out of CFM.

Notifications are initiated whenever a state change happens in CFM.

IFLA_BRIDGE_CFM:
    Points to the CFM information.

IFLA_BRIDGE_CFM_MEP_STATUS_INFO:
    This indicate that the MEP instance status are following.
IFLA_BRIDGE_CFM_CC_PEER_STATUS_INFO:
    This indicate that the peer MEP status are following.

CFM nested attribute has the following attributes in next level.

IFLA_BRIDGE_CFM_MEP_STATUS_INSTANCE:
    The MEP instance number of the delivered status.
    The type is NLA_U32.
IFLA_BRIDGE_CFM_MEP_STATUS_OPCODE_UNEXP_SEEN:
    The MEP instance received CFM PDU with unexpected Opcode.
    The type is NLA_U32 (bool).
IFLA_BRIDGE_CFM_MEP_STATUS_VERSION_UNEXP_SEEN:
    The MEP instance received CFM PDU with unexpected version.
    The type is NLA_U32 (bool).
IFLA_BRIDGE_CFM_MEP_STATUS_RX_LEVEL_LOW_SEEN:
    The MEP instance received CCM PDU with MD level lower than
    configured level. This frame is discarded.
    The type is NLA_U32 (bool).

IFLA_BRIDGE_CFM_CC_PEER_STATUS_INSTANCE:
    The MEP instance number of the delivered status.
    The type is NLA_U32.
IFLA_BRIDGE_CFM_CC_PEER_STATUS_PEER_MEPID:
    The added Peer MEP ID of the delivered status.
    The type is NLA_U32.
IFLA_BRIDGE_CFM_CC_PEER_STATUS_CCM_DEFECT:
    The CCM defect status.
    The type is NLA_U32 (bool).
    True means no CCM frame is received for 3.25 intervals.
    IFLA_BRIDGE_CFM_CC_CONFIG_EXP_INTERVAL.
IFLA_BRIDGE_CFM_CC_PEER_STATUS_RDI:
    The last received CCM PDU RDI.
    The type is NLA_U32 (bool).
IFLA_BRIDGE_CFM_CC_PEER_STATUS_PORT_TLV_VALUE:
    The last received CCM PDU Port Status TLV value field.
    The type is NLA_U8.
IFLA_BRIDGE_CFM_CC_PEER_STATUS_IF_TLV_VALUE:
    The last received CCM PDU Interface Status TLV value field.
    The type is NLA_U8.
IFLA_BRIDGE_CFM_CC_PEER_STATUS_SEEN:
    A CCM frame has been received from Peer MEP.
    The type is NLA_U32 (bool).
    This is cleared after GETLINK IFLA_BRIDGE_CFM_CC_PEER_STATUS_INFO.
IFLA_BRIDGE_CFM_CC_PEER_STATUS_TLV_SEEN:
    A CCM frame with TLV has been received from Peer MEP.
    The type is NLA_U32 (bool).
    This is cleared after GETLINK IFLA_BRIDGE_CFM_CC_PEER_STATUS_INFO.
IFLA_BRIDGE_CFM_CC_PEER_STATUS_SEQ_UNEXP_SEEN:
    A CCM frame with unexpected sequence number has been received
    from Peer MEP.
    The type is NLA_U32 (bool).
    When a sequence number is not one higher than previously received
    then it is unexpected.
    This is cleared after GETLINK IFLA_BRIDGE_CFM_CC_PEER_STATUS_INFO.

Signed-off-by: Henrik Bjoernlund  <henrik.bjoernlund@microchip.com>
Reviewed-by: Horatiu Vultur  <horatiu.vultur@microchip.com>
Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_cfm.c         | 48 ++++++++++++++++++++++++
 net/bridge/br_cfm_netlink.c | 25 ++++++++-----
 net/bridge/br_netlink.c     | 73 ++++++++++++++++++++++++++++++++-----
 net/bridge/br_private.h     | 22 ++++++++++-
 4 files changed, 147 insertions(+), 21 deletions(-)

diff --git a/net/bridge/br_cfm.c b/net/bridge/br_cfm.c
index 3912fedfd289..001064f7583d 100644
--- a/net/bridge/br_cfm.c
+++ b/net/bridge/br_cfm.c
@@ -138,6 +138,13 @@ static void ccm_rx_timer_start(struct br_cfm_peer_mep *peer_mep)
 			   usecs_to_jiffies(interval_us / 4));
 }
 
+static void br_cfm_notify(int event, const struct net_bridge_port *port)
+{
+	u32 filter = RTEXT_FILTER_CFM_STATUS;
+
+	return br_info_notify(event, port->br, NULL, filter);
+}
+
 static void cc_peer_enable(struct br_cfm_peer_mep *peer_mep)
 {
 	memset(&peer_mep->cc_status, 0, sizeof(peer_mep->cc_status));
@@ -288,6 +295,7 @@ static void ccm_tx_work_expired(struct work_struct *work)
 static void ccm_rx_work_expired(struct work_struct *work)
 {
 	struct br_cfm_peer_mep *peer_mep;
+	struct net_bridge_port *b_port;
 	struct delayed_work *del_work;
 
 	del_work = to_delayed_work(work);
@@ -305,6 +313,13 @@ static void ccm_rx_work_expired(struct work_struct *work)
 		 * CCM defect detected
 		 */
 		peer_mep->cc_status.ccm_defect = true;
+
+		/* Change in CCM defect status - notify */
+		rcu_read_lock();
+		b_port = rcu_dereference(peer_mep->mep->b_port);
+		if (b_port)
+			br_cfm_notify(RTM_NEWLINK, b_port);
+		rcu_read_unlock();
 	}
 }
 
@@ -430,6 +445,9 @@ static int br_cfm_frame_rx(struct net_bridge_port *port, struct sk_buff *skb)
 		if (peer_mep->cc_status.ccm_defect) {
 			peer_mep->cc_status.ccm_defect = false;
 
+			/* Change in CCM defect status - notify */
+			br_cfm_notify(RTM_NEWLINK, port);
+
 			/* Start CCM RX timer */
 			ccm_rx_timer_start(peer_mep);
 		}
@@ -799,6 +817,36 @@ int br_cfm_cc_ccm_tx(struct net_bridge *br, const u32 instance,
 	return 0;
 }
 
+int br_cfm_mep_count(struct net_bridge *br, u32 *count)
+{
+	struct br_cfm_mep *mep;
+
+	*count = 0;
+
+	rcu_read_lock();
+	hlist_for_each_entry_rcu(mep, &br->mep_list, head)
+		*count += 1;
+	rcu_read_unlock();
+
+	return 0;
+}
+
+int br_cfm_peer_mep_count(struct net_bridge *br, u32 *count)
+{
+	struct br_cfm_peer_mep *peer_mep;
+	struct br_cfm_mep *mep;
+
+	*count = 0;
+
+	rcu_read_lock();
+	hlist_for_each_entry_rcu(mep, &br->mep_list, head)
+		hlist_for_each_entry_rcu(peer_mep, &mep->peer_mep_list, head)
+			*count += 1;
+	rcu_read_unlock();
+
+	return 0;
+}
+
 bool br_cfm_created(struct net_bridge *br)
 {
 	return !hlist_empty(&br->mep_list);
diff --git a/net/bridge/br_cfm_netlink.c b/net/bridge/br_cfm_netlink.c
index c8b5ff0825a3..5c4c369f8536 100644
--- a/net/bridge/br_cfm_netlink.c
+++ b/net/bridge/br_cfm_netlink.c
@@ -613,7 +613,9 @@ int br_cfm_config_fill_info(struct sk_buff *skb, struct net_bridge *br)
 	return -EMSGSIZE;
 }
 
-int br_cfm_status_fill_info(struct sk_buff *skb, struct net_bridge *br)
+int br_cfm_status_fill_info(struct sk_buff *skb,
+			    struct net_bridge *br,
+			    bool getlink)
 {
 	struct br_cfm_peer_mep *peer_mep;
 	struct br_cfm_mep *mep;
@@ -643,10 +645,13 @@ int br_cfm_status_fill_info(struct sk_buff *skb, struct net_bridge *br)
 				mep->status.rx_level_low_seen))
 			goto nla_put_failure;
 
-		/* Clear all 'seen' indications */
-		mep->status.opcode_unexp_seen = false;
-		mep->status.version_unexp_seen = false;
-		mep->status.rx_level_low_seen = false;
+		/* Only clear if this is a GETLINK */
+		if (getlink) {
+			/* Clear all 'seen' indications */
+			mep->status.opcode_unexp_seen = false;
+			mep->status.version_unexp_seen = false;
+			mep->status.rx_level_low_seen = false;
+		}
 
 		nla_nest_end(skb, tb);
 
@@ -700,10 +705,12 @@ int br_cfm_status_fill_info(struct sk_buff *skb, struct net_bridge *br)
 					peer_mep->cc_status.seq_unexp_seen))
 				goto nla_put_failure;
 
-			/* Clear all 'seen' indications */
-			peer_mep->cc_status.seen = false;
-			peer_mep->cc_status.tlv_seen = false;
-			peer_mep->cc_status.seq_unexp_seen = false;
+			if (getlink) { /* Only clear if this is a GETLINK */
+				/* Clear all 'seen' indications */
+				peer_mep->cc_status.seen = false;
+				peer_mep->cc_status.tlv_seen = false;
+				peer_mep->cc_status.seq_unexp_seen = false;
+			}
 
 			nla_nest_end(skb, tb);
 		}
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 68c2ed87e26b..6952d4852942 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -94,9 +94,11 @@ static size_t br_get_link_af_size_filtered(const struct net_device *dev,
 {
 	struct net_bridge_vlan_group *vg = NULL;
 	struct net_bridge_port *p = NULL;
-	struct net_bridge *br;
-	int num_vlan_infos;
+	struct net_bridge *br = NULL;
+	u32 num_cfm_peer_mep_infos;
+	u32 num_cfm_mep_infos;
 	size_t vinfo_sz = 0;
+	int num_vlan_infos;
 
 	rcu_read_lock();
 	if (netif_is_bridge_port(dev)) {
@@ -115,6 +117,49 @@ static size_t br_get_link_af_size_filtered(const struct net_device *dev,
 	/* Each VLAN is returned in bridge_vlan_info along with flags */
 	vinfo_sz += num_vlan_infos * nla_total_size(sizeof(struct bridge_vlan_info));
 
+	if (!(filter_mask & RTEXT_FILTER_CFM_STATUS))
+		return vinfo_sz;
+
+	if (!br)
+		return vinfo_sz;
+
+	/* CFM status info must be added */
+	br_cfm_mep_count(br, &num_cfm_mep_infos);
+	br_cfm_peer_mep_count(br, &num_cfm_peer_mep_infos);
+
+	vinfo_sz += nla_total_size(0);	/* IFLA_BRIDGE_CFM */
+	/* For each status struct the MEP instance (u32) is added */
+	/* MEP instance (u32) + br_cfm_mep_status */
+	vinfo_sz += num_cfm_mep_infos *
+		     /*IFLA_BRIDGE_CFM_MEP_STATUS_INSTANCE */
+		    (nla_total_size(sizeof(u32))
+		     /* IFLA_BRIDGE_CFM_MEP_STATUS_OPCODE_UNEXP_SEEN */
+		     + nla_total_size(sizeof(u32))
+		     /* IFLA_BRIDGE_CFM_MEP_STATUS_VERSION_UNEXP_SEEN */
+		     + nla_total_size(sizeof(u32))
+		     /* IFLA_BRIDGE_CFM_MEP_STATUS_RX_LEVEL_LOW_SEEN */
+		     + nla_total_size(sizeof(u32)));
+	/* MEP instance (u32) + br_cfm_cc_peer_status */
+	vinfo_sz += num_cfm_peer_mep_infos *
+		     /* IFLA_BRIDGE_CFM_CC_PEER_STATUS_INSTANCE */
+		    (nla_total_size(sizeof(u32))
+		     /* IFLA_BRIDGE_CFM_CC_PEER_STATUS_PEER_MEPID */
+		     + nla_total_size(sizeof(u32))
+		     /* IFLA_BRIDGE_CFM_CC_PEER_STATUS_CCM_DEFECT */
+		     + nla_total_size(sizeof(u32))
+		     /* IFLA_BRIDGE_CFM_CC_PEER_STATUS_RDI */
+		     + nla_total_size(sizeof(u32))
+		     /* IFLA_BRIDGE_CFM_CC_PEER_STATUS_PORT_TLV_VALUE */
+		     + nla_total_size(sizeof(u8))
+		     /* IFLA_BRIDGE_CFM_CC_PEER_STATUS_IF_TLV_VALUE */
+		     + nla_total_size(sizeof(u8))
+		     /* IFLA_BRIDGE_CFM_CC_PEER_STATUS_SEEN */
+		     + nla_total_size(sizeof(u32))
+		     /* IFLA_BRIDGE_CFM_CC_PEER_STATUS_TLV_SEEN */
+		     + nla_total_size(sizeof(u32))
+		     /* IFLA_BRIDGE_CFM_CC_PEER_STATUS_SEQ_UNEXP_SEEN */
+		     + nla_total_size(sizeof(u32)));
+
 	return vinfo_sz;
 }
 
@@ -378,7 +423,8 @@ static int br_fill_ifvlaninfo(struct sk_buff *skb,
 static int br_fill_ifinfo(struct sk_buff *skb,
 			  const struct net_bridge_port *port,
 			  u32 pid, u32 seq, int event, unsigned int flags,
-			  u32 filter_mask, const struct net_device *dev)
+			  u32 filter_mask, const struct net_device *dev,
+			  bool getlink)
 {
 	u8 operstate = netif_running(dev) ? dev->operstate : IF_OPER_DOWN;
 	struct nlattr *af = NULL;
@@ -499,7 +545,7 @@ static int br_fill_ifinfo(struct sk_buff *skb,
 
 		if (filter_mask & RTEXT_FILTER_CFM_STATUS) {
 			rcu_read_lock();
-			err = br_cfm_status_fill_info(skb, br);
+			err = br_cfm_status_fill_info(skb, br, getlink);
 			rcu_read_unlock();
 			if (err)
 				goto nla_put_failure;
@@ -519,11 +565,9 @@ static int br_fill_ifinfo(struct sk_buff *skb,
 	return -EMSGSIZE;
 }
 
-/* Notify listeners of a change in bridge or port information */
-void br_ifinfo_notify(int event, const struct net_bridge *br,
-		      const struct net_bridge_port *port)
+void br_info_notify(int event, const struct net_bridge *br,
+		    const struct net_bridge_port *port, u32 filter)
 {
-	u32 filter = RTEXT_FILTER_BRVLAN_COMPRESSED;
 	struct net_device *dev;
 	struct sk_buff *skb;
 	int err = -ENOBUFS;
@@ -548,7 +592,7 @@ void br_ifinfo_notify(int event, const struct net_bridge *br,
 	if (skb == NULL)
 		goto errout;
 
-	err = br_fill_ifinfo(skb, port, 0, 0, event, 0, filter, dev);
+	err = br_fill_ifinfo(skb, port, 0, 0, event, 0, filter, dev, false);
 	if (err < 0) {
 		/* -EMSGSIZE implies BUG in br_nlmsg_size() */
 		WARN_ON(err == -EMSGSIZE);
@@ -561,6 +605,15 @@ void br_ifinfo_notify(int event, const struct net_bridge *br,
 	rtnl_set_sk_err(net, RTNLGRP_LINK, err);
 }
 
+/* Notify listeners of a change in bridge or port information */
+void br_ifinfo_notify(int event, const struct net_bridge *br,
+		      const struct net_bridge_port *port)
+{
+	u32 filter = RTEXT_FILTER_BRVLAN_COMPRESSED;
+
+	return br_info_notify(event, br, port, filter);
+}
+
 /*
  * Dump information about all ports, in response to GETLINK
  */
@@ -577,7 +630,7 @@ int br_getlink(struct sk_buff *skb, u32 pid, u32 seq,
 		return 0;
 
 	return br_fill_ifinfo(skb, port, pid, seq, RTM_NEWLINK, nlflags,
-			      filter_mask, dev);
+			      filter_mask, dev, true);
 }
 
 static int br_vlan_info(struct net_bridge *br, struct net_bridge_port *p,
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 228635b350a2..905d406a2fc7 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1466,7 +1466,11 @@ int br_cfm_parse(struct net_bridge *br, struct net_bridge_port *p,
 bool br_cfm_created(struct net_bridge *br);
 void br_cfm_port_del(struct net_bridge *br, struct net_bridge_port *p);
 int br_cfm_config_fill_info(struct sk_buff *skb, struct net_bridge *br);
-int br_cfm_status_fill_info(struct sk_buff *skb, struct net_bridge *br);
+int br_cfm_status_fill_info(struct sk_buff *skb,
+			    struct net_bridge *br,
+			    bool getlink);
+int br_cfm_mep_count(struct net_bridge *br, u32 *count);
+int br_cfm_peer_mep_count(struct net_bridge *br, u32 *count);
 #else
 static inline int br_cfm_parse(struct net_bridge *br, struct net_bridge_port *p,
 			       struct nlattr *attr, int cmd,
@@ -1490,7 +1494,19 @@ static inline int br_cfm_config_fill_info(struct sk_buff *skb, struct net_bridge
 	return -EOPNOTSUPP;
 }
 
-static inline int br_cfm_status_fill_info(struct sk_buff *skb, struct net_bridge *br)
+static inline int br_cfm_status_fill_info(struct sk_buff *skb,
+					  struct net_bridge *br,
+					  bool getlink)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline int br_cfm_mep_count(struct net_bridge *br, u32 *count)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline int br_cfm_peer_mep_count(struct net_bridge *br, u32 *count)
 {
 	return -EOPNOTSUPP;
 }
@@ -1502,6 +1518,8 @@ int br_netlink_init(void);
 void br_netlink_fini(void);
 void br_ifinfo_notify(int event, const struct net_bridge *br,
 		      const struct net_bridge_port *port);
+void br_info_notify(int event, const struct net_bridge *br,
+		    const struct net_bridge_port *port, u32 filter);
 int br_setlink(struct net_device *dev, struct nlmsghdr *nlmsg, u16 flags,
 	       struct netlink_ext_ack *extack);
 int br_dellink(struct net_device *dev, struct nlmsghdr *nlmsg, u16 flags);
-- 
2.28.0

