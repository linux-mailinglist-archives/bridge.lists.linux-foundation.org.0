Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 707665F36C
	for <lists.bridge@lfdr.de>; Thu,  4 Jul 2019 09:23:47 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 03BBDCDD;
	Thu,  4 Jul 2019 07:22:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 584CFC11
	for <bridge@lists.linux-foundation.org>;
	Thu,  4 Jul 2019 07:22:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from m9784.mail.qiye.163.com (m9784.mail.qiye.163.com
	[220.181.97.84])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id BC9F887E
	for <bridge@lists.linux-foundation.org>;
	Thu,  4 Jul 2019 07:22:41 +0000 (UTC)
Received: from localhost.localdomain (unknown [123.59.132.129])
	by m9784.mail.qiye.163.com (Hmail) with ESMTPA id 2B87341AED;
	Thu,  4 Jul 2019 15:22:38 +0800 (CST)
From: wenxu@ucloud.cn
To: pablo@netfilter.org,
	nikolay@cumulusnetworks.com
Date: Thu,  4 Jul 2019 15:22:33 +0800
Message-Id: <1562224955-3979-5-git-send-email-wenxu@ucloud.cn>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1562224955-3979-1-git-send-email-wenxu@ucloud.cn>
References: <1562224955-3979-1-git-send-email-wenxu@ucloud.cn>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZVkpVSk1NQkJCQkhNSktIQ0lZV1koWU
	FJQjdXWS1ZQUlXWQkOFx4IWUFZNTQpNjo3JCkuNz5ZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NzI6CBw5KDg5Igk8QhMNPyJJ
	Pg4aCwJVSlVKTk1JSUlPQk5DSE9NVTMWGhIXVQweFQMOOw4YFxQOH1UYFUVZV1kSC1lBWUpJSFVO
	QlVKSElVSklCWVdZCAFZQUlNQ0g3Bg++
X-HM-Tid: 0a6bbbdd1b202086kuqy2b87341aed
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org
Subject: [Bridge] [PATCH 5/7 nf-next] bridge: add br_vlan_get_proto()
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

From: wenxu <wenxu@ucloud.cn>

This new function allows you to fetch bridge vlan proto.

Signed-off-by: wenxu <wenxu@ucloud.cn>
---
 include/linux/if_bridge.h |  6 ++++++
 net/bridge/br_vlan.c      | 10 ++++++++++
 2 files changed, 16 insertions(+)

diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
index 950db1d..9e57c44 100644
--- a/include/linux/if_bridge.h
+++ b/include/linux/if_bridge.h
@@ -89,6 +89,7 @@ static inline bool br_multicast_router(const struct net_device *dev)
 bool br_vlan_enabled(const struct net_device *dev);
 int br_vlan_get_pvid(const struct net_device *dev, u16 *p_pvid);
 int br_vlan_get_pvid_rcu(const struct net_device *dev, u16 *p_pvid);
+int br_vlan_get_proto(const struct net_device *dev, u16 *p_proto);
 int br_vlan_get_info(const struct net_device *dev, u16 vid,
 		     struct bridge_vlan_info *p_vinfo);
 #else
@@ -102,6 +103,11 @@ static inline int br_vlan_get_pvid(const struct net_device *dev, u16 *p_pvid)
 	return -EINVAL;
 }
 
+static inline int br_vlan_get_proto(const struct net_device *dev, u16 *p_proto)
+{
+	return -EINVAL;
+}
+
 static inline int br_vlan_get_pvid_rcu(const struct net_device *dev, u16 *p_pvid)
 {
 	return -EINVAL;
diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index 8d97b91..021cc9f66 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -797,6 +797,16 @@ bool br_vlan_enabled(const struct net_device *dev)
 }
 EXPORT_SYMBOL_GPL(br_vlan_enabled);
 
+int br_vlan_get_proto(const struct net_device *dev, u16 *p_proto)
+{
+	struct net_bridge *br = netdev_priv(dev);
+
+	*p_proto = ntohs(br->vlan_proto);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(br_vlan_get_proto);
+
 int __br_vlan_set_proto(struct net_bridge *br, __be16 proto)
 {
 	int err = 0;
-- 
1.8.3.1

