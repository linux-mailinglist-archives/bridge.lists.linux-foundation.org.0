Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id E016460677
	for <lists.bridge@lfdr.de>; Fri,  5 Jul 2019 15:17:46 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D7D801306;
	Fri,  5 Jul 2019 13:16:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 153B31189
	for <bridge@lists.linux-foundation.org>;
	Fri,  5 Jul 2019 13:16:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from m9784.mail.qiye.163.com (m9784.mail.qiye.163.com
	[220.181.97.84])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 0994E88E
	for <bridge@lists.linux-foundation.org>;
	Fri,  5 Jul 2019 13:16:43 +0000 (UTC)
Received: from localhost.localdomain (unknown [123.59.132.129])
	by m9784.mail.qiye.163.com (Hmail) with ESMTPA id D5C134195A;
	Fri,  5 Jul 2019 21:16:39 +0800 (CST)
From: wenxu@ucloud.cn
To: nikolay@cumulusnetworks.com,
	pablo@netfilter.org
Date: Fri,  5 Jul 2019 21:16:36 +0800
Message-Id: <1562332598-17415-5-git-send-email-wenxu@ucloud.cn>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1562332598-17415-1-git-send-email-wenxu@ucloud.cn>
References: <1562332598-17415-1-git-send-email-wenxu@ucloud.cn>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZVkpVS0xCQkJCQ0tPT0JNTExZV1koWU
	FJQjdXWS1ZQUlXWQkOFx4IWUFZNTQpNjo3JCkuNz5ZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PFE6DRw4TTgrTQgBGTcVVjEe
	SSEwCUhVSlVKTk1JSEhJTkJCQklMVTMWGhIXVQweFQMOOw4YFxQOH1UYFUVZV1kSC1lBWUpJSFVO
	QlVKSElVSklCWVdZCAFZQUlMTk03Bg++
X-HM-Tid: 0a6bc24796582086kuqyd5c134195a
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org
Subject: [Bridge] [PATCH 5/7 nf-next v2] bridge: add br_vlan_get_proto()
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
Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
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

