Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 017A6284E84
	for <lists.bridge@lfdr.de>; Tue,  6 Oct 2020 16:58:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8E51A2075B;
	Tue,  6 Oct 2020 14:58:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y02C2qSbJSWE; Tue,  6 Oct 2020 14:58:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id CD29320791;
	Tue,  6 Oct 2020 14:55:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A6ECFC07FF;
	Tue,  6 Oct 2020 14:55:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 80FFBC0051
 for <bridge@lists.linux-foundation.org>; Tue,  6 Oct 2020 14:55:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7CE268700F
 for <bridge@lists.linux-foundation.org>; Tue,  6 Oct 2020 14:55:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xkfDW8fvOWdh for <bridge@lists.linux-foundation.org>;
 Tue,  6 Oct 2020 14:55:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1A0F687005
 for <bridge@lists.linux-foundation.org>; Tue,  6 Oct 2020 14:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1601996154; x=1633532154;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xO14p4VX1HtGGSCuBAqgVLHK49EqSzQ6VEvZcVqZMXY=;
 b=T9l5hPzvGayEq2zEXPyIRvLWHJDABKMBWqCIzzMMyi88/jVwOBOf4Bwc
 dQgRLiGxR1gRiT15ML974KClJQWNpGrLkDKlA9rjs6CeS9Kwo0SSUzjg/
 XoC5ZB9QPvkP5rVlHdV5+5DN1SGkjjGHZIWMMlEPNZMrx5jIg6dS//75T
 YuHuQArI5te3CfLF9tRYjrkZdwU2o9HGjukY2oKngOKd+k1y7uzLgg7Dt
 qbf4/PVjHbpcfZgmPNk7iZXCS0eNZHHyMGkVMizIrU+BptAcCF3vraidJ
 J9FqpgrUPr0QVdr2k3Ji0DSmI5Uj8T29m4KGWh15n78Tm3jzcqgV+dAi7 A==;
IronPort-SDR: mbmT94jr+O84LgjtYIlyPMuqfFcLQ0oS2/PfQ8S1nW5F3H2Xo0rApt9OPgbF4MCOefnciTbVz9
 QBQpImjYAp76ZwyTAAn/tQDSKPCekTNoi9yd/iog4Z3c4UDVYKFSiXIhSmlD/WU4huvz+fNusE
 ELMPFiRN4sNg/7KLx5SRUa8Xv6TIAmVDBfGtKcAtaj2oczHVr3NQ5r4LUL6/jjJM+pP0thBhdl
 B+oT96pgRZIFptX+qB3j8ebQnEdo8v+ecAjbGX2m4nO96b+5nWk53K/6hgPcI8hakN+vTvVrdk
 zjg=
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="94386932"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Oct 2020 07:55:54 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 6 Oct 2020 07:55:53 -0700
Received: from soft-test08.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 6 Oct 2020 07:55:51 -0700
To: <davem@davemloft.net>, <kuba@kernel.org>, <roopa@nvidia.com>,
 <nikolay@nvidia.com>, <jiri@resnulli.us>, <idosch@mellanox.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <UNGLinuxDriver@microchip.com>
Date: Tue, 6 Oct 2020 14:53:34 +0000
Message-ID: <20201006145338.1956886-6-henrik.bjoernlund@microchip.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201006145338.1956886-1-henrik.bjoernlund@microchip.com>
References: <20201006145338.1956886-1-henrik.bjoernlund@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>,
 Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [net-next v3 5/9] bridge: cfm: Kernel space implementation
	of CFM.
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

This is the second commit of the implementation of the CFM protocol
according to 802.1Q section 12.14.

Functionality is extended with CCM frame transmission.

Interface is extended with these functions:
br_cfm_cc_rdi_set()
br_cfm_cc_ccm_tx()
br_cfm_cc_config_set()

A MEP Continuity Check feature can be configured by
br_cfm_cc_config_set()
    The Continuity Check parameters can be configured to be used when
    transmitting CCM.

A MEP can be configured to start or stop transmission of CCM frames by
br_cfm_cc_ccm_tx()
    The CCM will be transmitted for a selected period in seconds.
    Must call this function before timeout to keep transmission alive.

A MEP transmitting CCM can be configured with inserted RDI in PDU by
br_cfm_cc_rdi_set()

Signed-off-by: Henrik Bjoernlund  <henrik.bjoernlund@microchip.com>
Reviewed-by: Horatiu Vultur  <horatiu.vultur@microchip.com>
---
 include/uapi/linux/cfm_bridge.h |  39 ++++-
 net/bridge/br_cfm.c             | 284 ++++++++++++++++++++++++++++++++
 net/bridge/br_private_cfm.h     |  54 ++++++
 3 files changed, 376 insertions(+), 1 deletion(-)

diff --git a/include/uapi/linux/cfm_bridge.h b/include/uapi/linux/cfm_bridge.h
index a262a8c0e085..84a3817da90b 100644
--- a/include/uapi/linux/cfm_bridge.h
+++ b/include/uapi/linux/cfm_bridge.h
@@ -6,7 +6,32 @@
 #include <linux/types.h>
 #include <linux/if_ether.h>
 
-#define CFM_MAID_LENGTH		48
+#define ETHER_HEADER_LENGTH		(6+6+4+2)
+#define CFM_MAID_LENGTH			48
+#define CFM_CCM_PDU_LENGTH		75
+#define CFM_PORT_STATUS_TLV_LENGTH	4
+#define CFM_IF_STATUS_TLV_LENGTH	4
+#define CFM_IF_STATUS_TLV_TYPE		4
+#define CFM_PORT_STATUS_TLV_TYPE	2
+#define CFM_ENDE_TLV_TYPE		0
+#define CFM_CCM_MAX_FRAME_LENGTH	(ETHER_HEADER_LENGTH+\
+					 CFM_CCM_PDU_LENGTH+\
+					 CFM_PORT_STATUS_TLV_LENGTH+\
+					 CFM_IF_STATUS_TLV_LENGTH)
+#define CFM_FRAME_PRIO			7
+#define CFM_CCM_TLV_OFFSET		70
+#define CFM_CCM_ITU_RESERVED_SIZE	16
+
+struct br_cfm_common_hdr {
+	__u8 mdlevel_version;
+	__u8 opcode;
+	__u8 flags;
+	__u8 tlv_offset;
+};
+
+enum br_cfm_opcodes {
+	BR_CFM_OPCODE_CCM = 0x1,
+};
 
 /* MEP domain */
 enum br_cfm_domain {
@@ -20,4 +45,16 @@ enum br_cfm_mep_direction {
 	BR_CFM_MEP_DIRECTION_UP,
 };
 
+/* CCM interval supported. */
+enum br_cfm_ccm_interval {
+	BR_CFM_CCM_INTERVAL_NONE,
+	BR_CFM_CCM_INTERVAL_3_3_MS,
+	BR_CFM_CCM_INTERVAL_10_MS,
+	BR_CFM_CCM_INTERVAL_100_MS,
+	BR_CFM_CCM_INTERVAL_1_SEC,
+	BR_CFM_CCM_INTERVAL_10_SEC,
+	BR_CFM_CCM_INTERVAL_1_MIN,
+	BR_CFM_CCM_INTERVAL_10_MIN,
+};
+
 #endif
diff --git a/net/bridge/br_cfm.c b/net/bridge/br_cfm.c
index 86d6e7b73375..19ee95cddc46 100644
--- a/net/bridge/br_cfm.c
+++ b/net/bridge/br_cfm.c
@@ -53,6 +53,184 @@ static struct net_bridge_port *br_mep_get_port(struct net_bridge *br,
 	return NULL;
 }
 
+/* Calculate the CCM interval in us. */
+static u32 interval_to_us(enum br_cfm_ccm_interval interval)
+{
+	switch (interval) {
+	case BR_CFM_CCM_INTERVAL_NONE:
+		return 0;
+	case BR_CFM_CCM_INTERVAL_3_3_MS:
+		return 3300;
+	case BR_CFM_CCM_INTERVAL_10_MS:
+		return 10 * 1000;
+	case BR_CFM_CCM_INTERVAL_100_MS:
+		return 100 * 1000;
+	case BR_CFM_CCM_INTERVAL_1_SEC:
+		return 1000 * 1000;
+	case BR_CFM_CCM_INTERVAL_10_SEC:
+		return 10 * 1000 * 1000;
+	case BR_CFM_CCM_INTERVAL_1_MIN:
+		return 60 * 1000 * 1000;
+	case BR_CFM_CCM_INTERVAL_10_MIN:
+		return 10 * 60 * 1000 * 1000;
+	}
+	return 0;
+}
+
+/* Convert the interface interval to CCM PDU value. */
+static u32 interval_to_pdu(enum br_cfm_ccm_interval interval)
+{
+	switch (interval) {
+	case BR_CFM_CCM_INTERVAL_NONE:
+		return 0;
+	case BR_CFM_CCM_INTERVAL_3_3_MS:
+		return 1;
+	case BR_CFM_CCM_INTERVAL_10_MS:
+		return 2;
+	case BR_CFM_CCM_INTERVAL_100_MS:
+		return 3;
+	case BR_CFM_CCM_INTERVAL_1_SEC:
+		return 4;
+	case BR_CFM_CCM_INTERVAL_10_SEC:
+		return 5;
+	case BR_CFM_CCM_INTERVAL_1_MIN:
+		return 6;
+	case BR_CFM_CCM_INTERVAL_10_MIN:
+		return 7;
+	}
+	return 0;
+}
+
+static struct sk_buff *ccm_frame_build(struct br_cfm_mep *mep,
+				       const struct br_cfm_cc_ccm_tx_info *const tx_info)
+
+{
+	struct br_cfm_common_hdr *common_hdr;
+	struct net_bridge_port *b_port;
+	struct br_cfm_maid *maid;
+	u8 *itu_reserved, *e_tlv;
+	struct ethhdr *eth_hdr;
+	struct sk_buff *skb;
+	__be32 *status_tlv;
+	__be32 *snumber;
+	__be16 *mepid;
+
+	skb = dev_alloc_skb(CFM_CCM_MAX_FRAME_LENGTH);
+	if (!skb)
+		return NULL;
+
+	rcu_read_lock();
+	b_port = rcu_dereference(mep->b_port);
+	if (!b_port) {
+		rcu_read_unlock();
+		return NULL;
+	}
+	skb->dev = b_port->dev;
+	rcu_read_unlock();
+	/* The device cannot be deleted until the work_queue functions has
+	 * completed. This function is called from ccm_tx_work_expired()
+	 * that is a work_queue functions.
+	 */
+
+	skb->protocol = htons(ETH_P_CFM);
+	skb->priority = CFM_FRAME_PRIO;
+
+	/* Ethernet header */
+	eth_hdr = skb_put(skb, sizeof(*eth_hdr));
+	ether_addr_copy(eth_hdr->h_dest, tx_info->dmac.addr);
+	ether_addr_copy(eth_hdr->h_source, mep->config.unicast_mac.addr);
+	eth_hdr->h_proto = htons(ETH_P_CFM);
+
+	/* Common CFM Header */
+	common_hdr = skb_put(skb, sizeof(*common_hdr));
+	common_hdr->mdlevel_version = mep->config.mdlevel << 5;
+	common_hdr->opcode = BR_CFM_OPCODE_CCM;
+	common_hdr->flags = (mep->rdi << 7) |
+			    interval_to_pdu(mep->cc_config.exp_interval);
+	common_hdr->tlv_offset = CFM_CCM_TLV_OFFSET;
+
+	/* Sequence number */
+	snumber = skb_put(skb, sizeof(*snumber));
+	if (tx_info->seq_no_update) {
+		*snumber = cpu_to_be32(mep->ccm_tx_snumber);
+		mep->ccm_tx_snumber += 1;
+	} else {
+		*snumber = 0;
+	}
+
+	mepid = skb_put(skb, sizeof(*mepid));
+	*mepid = cpu_to_be16((u16)mep->config.mepid);
+
+	maid = skb_put(skb, sizeof(*maid));
+	memcpy(maid->data, mep->cc_config.exp_maid.data, sizeof(maid->data));
+
+	/* ITU reserved (CFM_CCM_ITU_RESERVED_SIZE octets) */
+	itu_reserved = skb_put(skb, CFM_CCM_ITU_RESERVED_SIZE);
+	memset(itu_reserved, 0, CFM_CCM_ITU_RESERVED_SIZE);
+
+	/* Generel CFM TLV format:
+	 * TLV type:		one byte
+	 * TLV value length:	two bytes
+	 * TLV value:		'TLV value length' bytes
+	 */
+
+	/* Port status TLV. The value length is 1. Total of 4 bytes. */
+	if (tx_info->port_tlv) {
+		status_tlv = skb_put(skb, sizeof(*status_tlv));
+		*status_tlv = cpu_to_be32((CFM_PORT_STATUS_TLV_TYPE << 24) |
+					  (1 << 8) |	/* Value length */
+					  (tx_info->port_tlv_value & 0xFF));
+	}
+
+	/* Interface status TLV. The value length is 1. Total of 4 bytes. */
+	if (tx_info->if_tlv) {
+		status_tlv = skb_put(skb, sizeof(*status_tlv));
+		*status_tlv = cpu_to_be32((CFM_IF_STATUS_TLV_TYPE << 24) |
+					  (1 << 8) |	/* Value length */
+					  (tx_info->if_tlv_value & 0xFF));
+	}
+
+	/* End TLV */
+	e_tlv = skb_put(skb, sizeof(*e_tlv));
+	*e_tlv = CFM_ENDE_TLV_TYPE;
+
+	return skb;
+}
+
+static void ccm_frame_tx(struct sk_buff *skb)
+{
+	skb_reset_network_header(skb);
+	dev_queue_xmit(skb);
+}
+
+/* This function is called with the configured CC 'expected_interval'
+ * in order to drive CCM transmission when enabled.
+ */
+static void ccm_tx_work_expired(struct work_struct *work)
+{
+	struct delayed_work *del_work;
+	struct br_cfm_mep *mep;
+	struct sk_buff *skb;
+	u32 interval_us;
+
+	del_work = to_delayed_work(work);
+	mep = container_of(del_work, struct br_cfm_mep, ccm_tx_dwork);
+
+	if (time_before_eq(mep->ccm_tx_end, jiffies)) {
+		/* Transmission period has ended */
+		mep->cc_ccm_tx_info.period = 0;
+		return;
+	}
+
+	skb = ccm_frame_build(mep, &mep->cc_ccm_tx_info);
+	if (skb)
+		ccm_frame_tx(skb);
+
+	interval_us = interval_to_us(mep->cc_config.exp_interval);
+	queue_delayed_work(system_wq, &mep->ccm_tx_dwork,
+			   usecs_to_jiffies(interval_us));
+}
+
 int br_cfm_mep_create(struct net_bridge *br,
 		      const u32 instance,
 		      struct br_cfm_mep_create *const create,
@@ -115,6 +293,7 @@ int br_cfm_mep_create(struct net_bridge *br,
 	rcu_assign_pointer(mep->b_port, p);
 
 	INIT_HLIST_HEAD(&mep->peer_mep_list);
+	INIT_DELAYED_WORK(&mep->ccm_tx_dwork, ccm_tx_work_expired);
 
 	hlist_add_tail_rcu(&mep->head, &br->mep_list);
 
@@ -134,6 +313,8 @@ static void mep_delete_implementation(struct net_bridge *br,
 		kfree_rcu(peer_mep, rcu);
 	}
 
+	cancel_delayed_work_sync(&mep->ccm_tx_dwork);
+
 	RCU_INIT_POINTER(mep->b_port, NULL);
 	hlist_del_rcu(&mep->head);
 	kfree_rcu(mep, rcu);
@@ -192,6 +373,32 @@ int br_cfm_mep_config_set(struct net_bridge *br,
 	return 0;
 }
 
+int br_cfm_cc_config_set(struct net_bridge *br,
+			 const u32 instance,
+			 const struct br_cfm_cc_config *const config,
+			 struct netlink_ext_ack *extack)
+{
+	struct br_cfm_mep *mep;
+
+	ASSERT_RTNL();
+
+	mep = br_mep_find(br, instance);
+	if (!mep) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "MEP instance does not exists");
+		return -ENOENT;
+	}
+
+	/* Check for no change in configuration */
+	if (memcmp(config, &mep->cc_config, sizeof(*config)) == 0)
+		return 0;
+
+	mep->cc_config = *config;
+	mep->ccm_tx_snumber = 1;
+
+	return 0;
+}
+
 int br_cfm_cc_peer_mep_add(struct net_bridge *br, const u32 instance,
 			   u32 mepid,
 			   struct netlink_ext_ack *extack)
@@ -261,3 +468,80 @@ int br_cfm_cc_peer_mep_remove(struct net_bridge *br, const u32 instance,
 
 	return 0;
 }
+
+int br_cfm_cc_rdi_set(struct net_bridge *br, const u32 instance,
+		      const bool rdi, struct netlink_ext_ack *extack)
+{
+	struct br_cfm_mep *mep;
+
+	ASSERT_RTNL();
+
+	mep = br_mep_find(br, instance);
+	if (!mep) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "MEP instance does not exists");
+		return -ENOENT;
+	}
+
+	mep->rdi = rdi;
+
+	return 0;
+}
+
+int br_cfm_cc_ccm_tx(struct net_bridge *br, const u32 instance,
+		     const struct br_cfm_cc_ccm_tx_info *const tx_info,
+		     struct netlink_ext_ack *extack)
+{
+	struct br_cfm_mep *mep;
+
+	ASSERT_RTNL();
+
+	mep = br_mep_find(br, instance);
+	if (!mep) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "MEP instance does not exists");
+		return -ENOENT;
+	}
+
+	if (memcmp(tx_info, &mep->cc_ccm_tx_info, sizeof(*tx_info)) == 0) {
+		/* No change in tx_info. */
+		if (mep->cc_ccm_tx_info.period == 0)
+			/* Transmission is not enabled - just return */
+			return 0;
+
+		/* Transmission is ongoing, the end time is recalculated */
+		mep->ccm_tx_end = jiffies +
+				  usecs_to_jiffies(tx_info->period * 1000000);
+		return 0;
+	}
+
+	if (tx_info->period == 0 && mep->cc_ccm_tx_info.period == 0)
+		/* Some change in info and transmission is not ongoing */
+		goto save;
+
+	if (tx_info->period != 0 && mep->cc_ccm_tx_info.period != 0) {
+		/* Some change in info and transmission is ongoing
+		 * The end time is recalculated
+		 */
+		mep->ccm_tx_end = jiffies +
+				  usecs_to_jiffies(tx_info->period * 1000000);
+
+		goto save;
+	}
+
+	if (tx_info->period == 0 && mep->cc_ccm_tx_info.period != 0) {
+		cancel_delayed_work_sync(&mep->ccm_tx_dwork);
+		goto save;
+	}
+
+	/* Start delayed work to transmit CCM frames. It is done with zero delay
+	 * to send first frame immediately
+	 */
+	mep->ccm_tx_end = jiffies + usecs_to_jiffies(tx_info->period * 1000000);
+	queue_delayed_work(system_wq, &mep->ccm_tx_dwork, 0);
+
+save:
+	mep->cc_ccm_tx_info = *tx_info;
+
+	return 0;
+}
diff --git a/net/bridge/br_private_cfm.h b/net/bridge/br_private_cfm.h
index 40fe982added..8d1b449acfbf 100644
--- a/net/bridge/br_private_cfm.h
+++ b/net/bridge/br_private_cfm.h
@@ -32,6 +32,24 @@ int br_cfm_mep_config_set(struct net_bridge *br,
 			  const struct br_cfm_mep_config *const config,
 			  struct netlink_ext_ack *extack);
 
+struct br_cfm_maid {
+	u8 data[CFM_MAID_LENGTH];
+};
+
+struct br_cfm_cc_config {
+	/* Expected received CCM PDU MAID. */
+	struct br_cfm_maid exp_maid;
+
+	/* Expected received CCM PDU interval. */
+	/* Transmitting CCM PDU interval when CCM tx is enabled. */
+	enum br_cfm_ccm_interval exp_interval;
+};
+
+int br_cfm_cc_config_set(struct net_bridge *br,
+			 const u32 instance,
+			 const struct br_cfm_cc_config *const config,
+			 struct netlink_ext_ack *extack);
+
 int br_cfm_cc_peer_mep_add(struct net_bridge *br, const u32 instance,
 			   u32 peer_mep_id,
 			   struct netlink_ext_ack *extack);
@@ -39,15 +57,51 @@ int br_cfm_cc_peer_mep_remove(struct net_bridge *br, const u32 instance,
 			      u32 peer_mep_id,
 			      struct netlink_ext_ack *extack);
 
+/* Transmitted CCM Remote Defect Indication status set.
+ * This RDI is inserted in transmitted CCM PDUs if CCM transmission is enabled.
+ * See br_cfm_cc_ccm_tx() with interval != BR_CFM_CCM_INTERVAL_NONE
+ */
+int br_cfm_cc_rdi_set(struct net_bridge *br, const u32 instance,
+		      const bool rdi, struct netlink_ext_ack *extack);
+
+/* OAM PDU Tx information */
+struct br_cfm_cc_ccm_tx_info {
+	struct mac_addr dmac;
+	/* The CCM will be transmitted for this period in seconds.
+	 * Call br_cfm_cc_ccm_tx before timeout to keep transmission alive.
+	 * When period is zero any ongoing transmission will be stopped.
+	 */
+	u32 period;
+
+	bool seq_no_update; /* Update Tx CCM sequence number */
+	bool if_tlv; /* Insert Interface Status TLV */
+	u8 if_tlv_value; /* Interface Status TLV value */
+	bool port_tlv; /* Insert Port Status TLV */
+	u8 port_tlv_value; /* Port Status TLV value */
+	/* Sender ID TLV ??
+	 * Organization-Specific TLV ??
+	 */
+};
+
+int br_cfm_cc_ccm_tx(struct net_bridge *br, const u32 instance,
+		     const struct br_cfm_cc_ccm_tx_info *const tx_info,
+		     struct netlink_ext_ack *extack);
+
 struct br_cfm_mep {
 	/* list header of MEP instances */
 	struct hlist_node		head;
 	u32				instance;
 	struct br_cfm_mep_create	create;
 	struct br_cfm_mep_config	config;
+	struct br_cfm_cc_config		cc_config;
+	struct br_cfm_cc_ccm_tx_info	cc_ccm_tx_info;
 	/* List of multiple peer MEPs */
 	struct hlist_head		peer_mep_list;
 	struct net_bridge_port __rcu	*b_port;
+	unsigned long			ccm_tx_end;
+	struct delayed_work		ccm_tx_dwork;
+	u32				ccm_tx_snumber;
+	bool				rdi;
 	struct rcu_head			rcu;
 };
 
-- 
2.28.0

