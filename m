Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3723F1E77CA
	for <lists.bridge@lfdr.de>; Fri, 29 May 2020 10:05:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D4784883AD;
	Fri, 29 May 2020 08:05:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eTIA+H1HMITW; Fri, 29 May 2020 08:05:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2E2AA8805B;
	Fri, 29 May 2020 08:05:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 146DDC016F;
	Fri, 29 May 2020 08:05:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B284DC016F
 for <bridge@lists.linux-foundation.org>; Fri, 29 May 2020 08:05:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AFC1189349
 for <bridge@lists.linux-foundation.org>; Fri, 29 May 2020 08:05:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oTShGE9Mku8g for <bridge@lists.linux-foundation.org>;
 Fri, 29 May 2020 08:05:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by hemlock.osuosl.org (Postfix) with ESMTPS id ED13489347
 for <bridge@lists.linux-foundation.org>; Fri, 29 May 2020 08:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590739551; x=1622275551;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9Wix12eC4QF4csGpZyOO/PDj0P10H48QnTdT3wpbp30=;
 b=QhIwGE6NNPsGeFl9fDon+uj86ydICPKvvRtIEGTe4BZSt4YpGrm5I9zT
 DOpCphruC5FOuFIoPerab2P0e5P7MlkdW6qUj/2y2edFvXXTfdJvJAjRD
 d9dTvyWT4F3OiomcjNkhwL8kEcGyFZzi6QNaEqzc6FW10PibBglOHH74f
 IOY8mi4ZsWZbRFCWawhgestEFM23LJrbiBXhrpWPpCP1wi/pV3VZmPn9B
 jMRb4veH6jLfRf8B6dbG2t1kdU/zlFSKjLSG6ByELEr2534hkOnlusvOA
 12ck577e0SxD5hZy0JhC2WuKeqTtrzpLsJx/lAgvFuqxcJmEE/GUCJwmw A==;
IronPort-SDR: hTZafc8KScJ/9Y4zPwINicTgQy6bG99fk+kIIW7oN66tijfB3KwZxexYPtdaYbuO7Pd8wKG1ab
 2zAUMFxNpnE230xh27S8pjJxMj7b6r4iGq1tyuaRjzD6MXgN7KoViFZUiVWHfVPs4h7D9peiRk
 OQR0QvoViQ9X3R8j0SWClYdY7fEkiL0qa/Pf8OSUayxvCi5Zl6saUaQ24Hoo11/VP+ttHXYGMo
 TeU1BSxNM91oiLYP7722jbQwLKOPyFhJKDRdy8Mo8AJL5IhocoQoJombcmyT4W7hHaHUMmIJ+f
 E1Q=
X-IronPort-AV: E=Sophos;i="5.73,447,1583218800"; d="scan'208";a="76726266"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 29 May 2020 01:05:51 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 29 May 2020 01:05:50 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 29 May 2020 01:05:48 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <jiri@resnulli.us>, <ivecera@redhat.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <UNGLinuxDriver@microchip.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Fri, 29 May 2020 10:05:13 +0000
Message-ID: <20200529100514.920537-2-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200529100514.920537-1-horatiu.vultur@microchip.com>
References: <20200529100514.920537-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next 1/2] bridge: mrp: Set the priority of MRP
	instance
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

Each MRP instance has a priority, a lower value means a higher priority.
The priority of MRP instance is stored in MRP_Test frame in this way
all the MRP nodes in the ring can see other nodes priority.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 include/net/switchdev.h        | 1 +
 include/uapi/linux/if_bridge.h | 2 ++
 net/bridge/br_mrp.c            | 3 ++-
 net/bridge/br_mrp_netlink.c    | 5 +++++
 net/bridge/br_mrp_switchdev.c  | 1 +
 net/bridge/br_private_mrp.h    | 1 +
 6 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/include/net/switchdev.h b/include/net/switchdev.h
index db519957e134b..f82ef4c45f5ed 100644
--- a/include/net/switchdev.h
+++ b/include/net/switchdev.h
@@ -116,6 +116,7 @@ struct switchdev_obj_mrp {
 	struct net_device *p_port;
 	struct net_device *s_port;
 	u32 ring_id;
+	u16 prio;
 };
 
 #define SWITCHDEV_OBJ_MRP(OBJ) \
diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 5a43eb86c93bf..0162c1370ecb6 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -176,6 +176,7 @@ enum {
 	IFLA_BRIDGE_MRP_INSTANCE_RING_ID,
 	IFLA_BRIDGE_MRP_INSTANCE_P_IFINDEX,
 	IFLA_BRIDGE_MRP_INSTANCE_S_IFINDEX,
+	IFLA_BRIDGE_MRP_INSTANCE_PRIO,
 	__IFLA_BRIDGE_MRP_INSTANCE_MAX,
 };
 
@@ -230,6 +231,7 @@ struct br_mrp_instance {
 	__u32 ring_id;
 	__u32 p_ifindex;
 	__u32 s_ifindex;
+	__u16 prio;
 };
 
 struct br_mrp_ring_state {
diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
index 8ea59504ef47a..f8fd037219fe9 100644
--- a/net/bridge/br_mrp.c
+++ b/net/bridge/br_mrp.c
@@ -147,7 +147,7 @@ static struct sk_buff *br_mrp_alloc_test_skb(struct br_mrp *mrp,
 	br_mrp_skb_tlv(skb, BR_MRP_TLV_HEADER_RING_TEST, sizeof(*hdr));
 	hdr = skb_put(skb, sizeof(*hdr));
 
-	hdr->prio = cpu_to_be16(MRP_DEFAULT_PRIO);
+	hdr->prio = cpu_to_be16(mrp->prio);
 	ether_addr_copy(hdr->sa, p->br->dev->dev_addr);
 	hdr->port_role = cpu_to_be16(port_role);
 	hdr->state = cpu_to_be16(mrp->ring_state);
@@ -290,6 +290,7 @@ int br_mrp_add(struct net_bridge *br, struct br_mrp_instance *instance)
 		return -ENOMEM;
 
 	mrp->ring_id = instance->ring_id;
+	mrp->prio = instance->prio;
 
 	p = br_mrp_get_port(br, instance->p_ifindex);
 	spin_lock_bh(&br->lock);
diff --git a/net/bridge/br_mrp_netlink.c b/net/bridge/br_mrp_netlink.c
index d9de780d2ce06..332d9894a9485 100644
--- a/net/bridge/br_mrp_netlink.c
+++ b/net/bridge/br_mrp_netlink.c
@@ -22,6 +22,7 @@ br_mrp_instance_policy[IFLA_BRIDGE_MRP_INSTANCE_MAX + 1] = {
 	[IFLA_BRIDGE_MRP_INSTANCE_RING_ID]	= { .type = NLA_U32 },
 	[IFLA_BRIDGE_MRP_INSTANCE_P_IFINDEX]	= { .type = NLA_U32 },
 	[IFLA_BRIDGE_MRP_INSTANCE_S_IFINDEX]	= { .type = NLA_U32 },
+	[IFLA_BRIDGE_MRP_INSTANCE_PRIO]		= { .type = NLA_U16 },
 };
 
 static int br_mrp_instance_parse(struct net_bridge *br, struct nlattr *attr,
@@ -49,6 +50,10 @@ static int br_mrp_instance_parse(struct net_bridge *br, struct nlattr *attr,
 	inst.ring_id = nla_get_u32(tb[IFLA_BRIDGE_MRP_INSTANCE_RING_ID]);
 	inst.p_ifindex = nla_get_u32(tb[IFLA_BRIDGE_MRP_INSTANCE_P_IFINDEX]);
 	inst.s_ifindex = nla_get_u32(tb[IFLA_BRIDGE_MRP_INSTANCE_S_IFINDEX]);
+	inst.prio = MRP_DEFAULT_PRIO;
+
+	if (tb[IFLA_BRIDGE_MRP_INSTANCE_PRIO])
+		inst.prio = nla_get_u32(tb[IFLA_BRIDGE_MRP_INSTANCE_PRIO]);
 
 	if (cmd == RTM_SETLINK)
 		return br_mrp_add(br, &inst);
diff --git a/net/bridge/br_mrp_switchdev.c b/net/bridge/br_mrp_switchdev.c
index 51cb1d5a24b4f..3a776043bf80d 100644
--- a/net/bridge/br_mrp_switchdev.c
+++ b/net/bridge/br_mrp_switchdev.c
@@ -12,6 +12,7 @@ int br_mrp_switchdev_add(struct net_bridge *br, struct br_mrp *mrp)
 		.p_port = rtnl_dereference(mrp->p_port)->dev,
 		.s_port = rtnl_dereference(mrp->s_port)->dev,
 		.ring_id = mrp->ring_id,
+		.prio = mrp->prio,
 	};
 	int err;
 
diff --git a/net/bridge/br_private_mrp.h b/net/bridge/br_private_mrp.h
index a0f53cc3ab85c..558941ce23669 100644
--- a/net/bridge/br_private_mrp.h
+++ b/net/bridge/br_private_mrp.h
@@ -14,6 +14,7 @@ struct br_mrp {
 	struct net_bridge_port __rcu	*s_port;
 
 	u32				ring_id;
+	u16				prio;
 
 	enum br_mrp_ring_role_type	ring_role;
 	u8				ring_role_offloaded;
-- 
2.26.2

