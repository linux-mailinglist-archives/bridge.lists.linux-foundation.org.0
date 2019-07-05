Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 53AE467DAF
	for <lists.bridge@lfdr.de>; Sun, 14 Jul 2019 08:06:05 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9793FC6F;
	Sun, 14 Jul 2019 06:04:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E9BF31898
	for <bridge@lists.linux-foundation.org>;
	Fri,  5 Jul 2019 22:09:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from m9784.mail.qiye.163.com (m9784.mail.qiye.163.com
	[220.181.97.84])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 2283487E
	for <bridge@lists.linux-foundation.org>;
	Fri,  5 Jul 2019 22:09:12 +0000 (UTC)
Received: from localhost.localdomain (unknown [123.59.132.129])
	by m9784.mail.qiye.163.com (Hmail) with ESMTPA id 9519D415E8;
	Sat,  6 Jul 2019 06:09:11 +0800 (CST)
From: wenxu@ucloud.cn
To: pablo@netfilter.org,
	nikolay@cumulusnetworks.com,
	fw@strlen.de
Date: Sat,  6 Jul 2019 06:09:10 +0800
Message-Id: <1562364550-16974-5-git-send-email-wenxu@ucloud.cn>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1562364550-16974-1-git-send-email-wenxu@ucloud.cn>
References: <1562364550-16974-1-git-send-email-wenxu@ucloud.cn>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZVklVSk1JS0tLSkxCSUJLTExZV1koWU
	FJQjdXWS1ZQUlXWQkOFx4IWUFZNTQpNjo3JCkuNz5ZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MTY6Ngw5TTgxUQgyTE1IC00q
	NAwKCVZVSlVKTk1JSE1PTk5KTU1IVTMWGhIXVQweFQMOOw4YFxQOH1UYFUVZV1kSC1lBWUpJSFVO
	QlVKSElVSklCWVdZCAFZQUhCQ0o3Bg++
X-HM-Tid: 0a6bc42f21cd2086kuqy9519d415e8
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org
Subject: [Bridge] [PATCH 5/5 nf-next v3] netfilter: Flow table support the
	bridge family for ipv4
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

This patch adds the bridge flow table type, that implements the datapath
flow table to forward IPv4 traffic through bridge.

Signed-off-by: wenxu <wenxu@ucloud.cn>
---
 net/bridge/netfilter/Kconfig                |  8 +++++
 net/bridge/netfilter/Makefile               |  1 +
 net/bridge/netfilter/nf_flow_table_bridge.c | 46 +++++++++++++++++++++++++++++
 3 files changed, 55 insertions(+)
 create mode 100644 net/bridge/netfilter/nf_flow_table_bridge.c

diff --git a/net/bridge/netfilter/Kconfig b/net/bridge/netfilter/Kconfig
index f4fb0b9..cba5f71 100644
--- a/net/bridge/netfilter/Kconfig
+++ b/net/bridge/netfilter/Kconfig
@@ -33,6 +33,14 @@ config NF_CONNTRACK_BRIDGE
 
 	  To compile it as a module, choose M here.  If unsure, say N.
 
+config NF_FLOW_TABLE_BRIDGE
+	tristate "Netfilter flow table bridge module"
+	depends on NF_FLOW_TABLE && NF_CONNTRACK_BRIDGE
+	help
+          This option adds the flow table bridge support.
+
+	  To compile it as a module, choose M here.
+
 endif # NF_TABLES_BRIDGE
 
 menuconfig BRIDGE_NF_EBTABLES
diff --git a/net/bridge/netfilter/Makefile b/net/bridge/netfilter/Makefile
index 9d77673..deb81e6 100644
--- a/net/bridge/netfilter/Makefile
+++ b/net/bridge/netfilter/Makefile
@@ -7,6 +7,7 @@ obj-$(CONFIG_NFT_BRIDGE_REJECT)  += nft_reject_bridge.o
 
 # connection tracking
 obj-$(CONFIG_NF_CONNTRACK_BRIDGE) += nf_conntrack_bridge.o
+obj-$(CONFIG_NF_FLOW_TABLE_BRIDGE) += nf_flow_table_bridge.o
 
 # packet logging
 obj-$(CONFIG_NF_LOG_BRIDGE) += nf_log_bridge.o
diff --git a/net/bridge/netfilter/nf_flow_table_bridge.c b/net/bridge/netfilter/nf_flow_table_bridge.c
new file mode 100644
index 0000000..3a65b44
--- /dev/null
+++ b/net/bridge/netfilter/nf_flow_table_bridge.c
@@ -0,0 +1,46 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <linux/kernel.h>
+#include <linux/init.h>
+#include <linux/module.h>
+#include <linux/netfilter.h>
+#include <net/netfilter/nf_flow_table.h>
+#include <net/netfilter/nf_tables.h>
+
+static unsigned int
+nf_flow_offload_bridge_hook(void *priv, struct sk_buff *skb,
+			    const struct nf_hook_state *state)
+{
+	switch (skb->protocol) {
+	case htons(ETH_P_IP):
+		return nf_flow_offload_ip_hook(priv, skb, state);
+	}
+
+	return NF_ACCEPT;
+}
+
+static struct nf_flowtable_type flowtable_bridge = {
+	.family		= NFPROTO_BRIDGE,
+	.init		= nf_flow_table_init,
+	.free		= nf_flow_table_free,
+	.hook		= nf_flow_offload_bridge_hook,
+	.owner		= THIS_MODULE,
+};
+
+static int __init nf_flow_bridge_module_init(void)
+{
+	nft_register_flowtable_type(&flowtable_bridge);
+
+	return 0;
+}
+
+static void __exit nf_flow_bridge_module_exit(void)
+{
+	nft_unregister_flowtable_type(&flowtable_bridge);
+}
+
+module_init(nf_flow_bridge_module_init);
+module_exit(nf_flow_bridge_module_exit);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("wenxu <wenxu@ucloud.cn>");
+MODULE_ALIAS_NF_FLOWTABLE(AF_BRIDGE);
-- 
1.8.3.1

