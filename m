Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 119BD26E218
	for <lists.bridge@lfdr.de>; Thu, 17 Sep 2020 19:19:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AA7AB8791F;
	Thu, 17 Sep 2020 17:19:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZWrn-mwujEKn; Thu, 17 Sep 2020 17:19:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id AEA8987951;
	Thu, 17 Sep 2020 17:19:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 90A93C0859;
	Thu, 17 Sep 2020 17:19:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B9722C0051
 for <bridge@lists.linux-foundation.org>; Fri,  4 Sep 2020 09:19:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A3A89203A4
 for <bridge@lists.linux-foundation.org>; Fri,  4 Sep 2020 09:19:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2kNRNXxzM9-M for <bridge@lists.linux-foundation.org>;
 Fri,  4 Sep 2020 09:19:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by silver.osuosl.org (Postfix) with ESMTPS id C86791FE49
 for <bridge@lists.linux-foundation.org>; Fri,  4 Sep 2020 09:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1599211167; x=1630747167;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o6duENUzbkFkp2C7Ma8T2ODsQTBHZTrbxuc1hJaheSQ=;
 b=cxiipNWXd2WPDiXZ9BiI0qWDPU0NdTcMfiHp+dnPBGCDSfPLMP6t8bmb
 ILuu0wLs5HDQjfS2FD86lWMaUIujrEYN3uwr19lxl74dvaAME/xIhk8Rt
 IpSUEdXdvpxERjEHu68XpNBa4v+G1TMHjsRj4yZabUIj9zPRzdf7vWDy2
 qQj4zd2AnBvnq2ODolQLAP3ZETe/6Vy8LD5pEQywO7cvFnGsisnvvZyeN
 vtnqku5N5CtpGKHo5VkmvN7clzfJNbhKVptqpoWiexqqgqkKaNE2LkK3Q
 LLGOOrjr/AEYKqF8zulwkhgJaUkeLoNJRutFa5lTPiPoql9wEghlWNiEY w==;
IronPort-SDR: q2e3qpfgqw6aym00g6OqT9sIQtYpZG+Up60/WsH2lyF+bFE2bmAmOveq9aZkWMsXRP+OrrJsT+
 /ckVmdT9Okb1RCofS+Qk5fmXlVpH7iJI4DoAkjhwMxYtOTyxueOYjNJkSwfGoP8NAxCzOUdQT6
 ifhozmW/6uO24mYBzeA25o76fD5sLkZoxnwW0k9aWL3quRuRtbG6B/i9fiszVUA9gE17d66fWa
 zR5TZrm6Mm0tAL3MUskMW+A/K5OvuBrEeoLJvNnY5xZsN6NfJV1yPSAcx4WVzUJR/65d/ue5du
 Nqs=
X-IronPort-AV: E=Sophos;i="5.76,389,1592895600"; d="scan'208";a="90552474"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Sep 2020 02:19:26 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Fri, 4 Sep 2020 02:18:38 -0700
Received: from soft-test08.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Fri, 4 Sep 2020 02:19:22 -0700
To: <davem@davemloft.net>, <kuba@kernel.org>, <roopa@nvidia.com>,
 <nikolay@nvidia.com>, <jiri@mellanox.com>, <idosch@mellanox.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <UNGLinuxDriver@microchip.com>
Date: Fri, 4 Sep 2020 09:15:27 +0000
Message-ID: <20200904091527.669109-8-henrik.bjoernlund@microchip.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200904091527.669109-1-henrik.bjoernlund@microchip.com>
References: <20200904091527.669109-1-henrik.bjoernlund@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Mailman-Approved-At: Thu, 17 Sep 2020 17:19:30 +0000
Cc: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>,
 Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH RFC 7/7] bridge: cfm: Bridge port remove.
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

This is addition of CFM functionality to delete MEP instances
on a port that is removed from the bridge.
A MEP can only exist on a port that is related to a bridge.

Signed-off-by: Henrik Bjoernlund  <henrik.bjoernlund@microchip.com>
---
 net/bridge/br_cfm.c     | 13 +++++++++++++
 net/bridge/br_if.c      |  1 +
 net/bridge/br_private.h |  6 ++++++
 3 files changed, 20 insertions(+)

diff --git a/net/bridge/br_cfm.c b/net/bridge/br_cfm.c
index b7fed2c1d8ec..c724ce020ce3 100644
--- a/net/bridge/br_cfm.c
+++ b/net/bridge/br_cfm.c
@@ -921,3 +921,16 @@ bool br_cfm_created(struct net_bridge *br)
 {
 	return !list_empty(&br->mep_list);
 }
+
+/* Deletes the CFM instances on a specific bridge port
+ * note: called under rtnl_lock
+ */
+void br_cfm_port_del(struct net_bridge *br, struct net_bridge_port *port)
+{
+	struct br_cfm_mep *mep;
+
+	list_for_each_entry_rcu(mep, &br->mep_list, head,
+				lockdep_rtnl_is_held())
+		if (mep->create.ifindex == port->dev->ifindex)
+			mep_delete_implementation(br, mep);
+}
diff --git a/net/bridge/br_if.c b/net/bridge/br_if.c
index a0e9a7937412..f7d2f472ae24 100644
--- a/net/bridge/br_if.c
+++ b/net/bridge/br_if.c
@@ -334,6 +334,7 @@ static void del_nbp(struct net_bridge_port *p)
 	spin_unlock_bh(&br->lock);
 
 	br_mrp_port_del(br, p);
+	br_cfm_port_del(br, p);
 
 	br_ifinfo_notify(RTM_DELLINK, NULL, p);
 
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 53bcbdd21f34..5617255f0c0c 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1369,6 +1369,7 @@ int br_cfm_parse(struct net_bridge *br, struct net_bridge_port *p,
 		 struct nlattr *attr, int cmd, struct netlink_ext_ack *extack);
 int br_cfm_rx_frame_process(struct net_bridge_port *p, struct sk_buff *skb);
 bool br_cfm_created(struct net_bridge *br);
+void br_cfm_port_del(struct net_bridge *br, struct net_bridge_port *p);
 int br_cfm_config_fill_info(struct sk_buff *skb, struct net_bridge *br);
 int br_cfm_status_fill_info(struct sk_buff *skb,
 			    struct net_bridge *br,
@@ -1393,6 +1394,11 @@ static inline bool br_cfm_created(struct net_bridge *br)
 	return false;
 }
 
+static inline void br_cfm_port_del(struct net_bridge *br,
+				   struct net_bridge_port *p)
+{
+}
+
 static inline int br_cfm_config_fill_info(struct sk_buff *skb, struct net_bridge *br)
 {
 	return -EOPNOTSUPP;
-- 
2.28.0

