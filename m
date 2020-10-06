Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB4C284E6A
	for <lists.bridge@lfdr.de>; Tue,  6 Oct 2020 16:56:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 071EB85A96;
	Tue,  6 Oct 2020 14:56:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w_0nMwR-7oz3; Tue,  6 Oct 2020 14:56:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CBE5785BD1;
	Tue,  6 Oct 2020 14:56:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B2FDDC0051;
	Tue,  6 Oct 2020 14:56:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AF3B5C0051
 for <bridge@lists.linux-foundation.org>; Tue,  6 Oct 2020 14:56:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9910387061
 for <bridge@lists.linux-foundation.org>; Tue,  6 Oct 2020 14:56:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3rB4R3tJHj3L for <bridge@lists.linux-foundation.org>;
 Tue,  6 Oct 2020 14:56:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 127318704C
 for <bridge@lists.linux-foundation.org>; Tue,  6 Oct 2020 14:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1601996165; x=1633532165;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v0/BOEk8FwPkuHSCL3bWhHvT/r5H6A4X4lw4kAN4c/4=;
 b=EUxzYgX8AD899m4FSKS+7Nd5KCldl9hPXhkZXWvKss01m/7lGYiF1epr
 HAwUvAZSiRHIlKxCRNUsDGEcblq3KOZmHDMWcM481RjmN14xDz2PJM9FY
 kf9mLRPixHesgXVbDta/LIBc628gLDY5DjICvZlgZGT92faGRvglIZTQi
 WulVQNPbL+shBxLNVn14C6gWscKYNsWtc72nOB0mDqcVYxPEVIVmq1Uav
 dt3ULXQTHmEEq4Mq7sg2A3bEpiZothnBzcm5V9LTJZjupZPBw7VGW3ygz
 zI+oLM/UiAoXKjwvF10iiH2hzNa2qS5Gf/f5qoDRUg/ZXmzEx6VuOKYJ9 Q==;
IronPort-SDR: 0kT2o0thliVnZKrb6Ec2X2kI9lFTY4+YzgBOSXj+H8FO0VYBV9/7GToiIRr/5mkPztnJZR6LPw
 17SZyOFf7AXds/qTPQpsxYA7pKnxydlY2EYaN3OJoWZzatssY5HDRqzE5RvI/tElzfMV8XUjQZ
 /FUsfiSh5GWsKVqMMB907rtnEk+kRd1aK1GQVCLPJlDwQdMIWAdcpgTXZ71FLiZaaLBnTBKS3y
 p+7voGgQD0oWHP0YTdv0GLe1yYboMkaCxYSy/Cu57qCa1okXD/GqPIy9+kqMybbMAYX10XF7Xp
 3gU=
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="94386971"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Oct 2020 07:56:05 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 6 Oct 2020 07:55:54 -0700
Received: from soft-test08.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 6 Oct 2020 07:56:02 -0700
To: <davem@davemloft.net>, <kuba@kernel.org>, <roopa@nvidia.com>,
 <nikolay@nvidia.com>, <jiri@resnulli.us>, <idosch@mellanox.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <UNGLinuxDriver@microchip.com>
Date: Tue, 6 Oct 2020 14:53:38 +0000
Message-ID: <20201006145338.1956886-10-henrik.bjoernlund@microchip.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201006145338.1956886-1-henrik.bjoernlund@microchip.com>
References: <20201006145338.1956886-1-henrik.bjoernlund@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>,
 Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [net-next v3 9/9] bridge: cfm: Bridge port remove.
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

Signed-off-by: Henrik Bjoernlund  <henrik.bjoernlund@microchip.com>m
Reviewed-by: Horatiu Vultur  <horatiu.vultur@microchip.com>
---
 net/bridge/br_cfm.c     | 13 +++++++++++++
 net/bridge/br_if.c      |  1 +
 net/bridge/br_private.h |  6 ++++++
 3 files changed, 20 insertions(+)

diff --git a/net/bridge/br_cfm.c b/net/bridge/br_cfm.c
index 6fbfef44c235..fc8268cb76c1 100644
--- a/net/bridge/br_cfm.c
+++ b/net/bridge/br_cfm.c
@@ -867,3 +867,16 @@ bool br_cfm_created(struct net_bridge *br)
 {
 	return !hlist_empty(&br->mep_list);
 }
+
+/* Deletes the CFM instances on a specific bridge port
+ */
+void br_cfm_port_del(struct net_bridge *br, struct net_bridge_port *port)
+{
+	struct br_cfm_mep *mep;
+
+	ASSERT_RTNL();
+
+	hlist_for_each_entry(mep, &br->mep_list, head)
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
index c36a0e3e29f2..6c79b10dad82 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1465,6 +1465,7 @@ static inline int br_mrp_fill_info(struct sk_buff *skb, struct net_bridge *br)
 int br_cfm_parse(struct net_bridge *br, struct net_bridge_port *p,
 		 struct nlattr *attr, int cmd, struct netlink_ext_ack *extack);
 bool br_cfm_created(struct net_bridge *br);
+void br_cfm_port_del(struct net_bridge *br, struct net_bridge_port *p);
 int br_cfm_config_fill_info(struct sk_buff *skb, struct net_bridge *br);
 int br_cfm_status_fill_info(struct sk_buff *skb,
 			    struct net_bridge *br,
@@ -1484,6 +1485,11 @@ static inline bool br_cfm_created(struct net_bridge *br)
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

