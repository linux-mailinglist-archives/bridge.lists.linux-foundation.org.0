Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F596066B
	for <lists.bridge@lfdr.de>; Fri,  5 Jul 2019 15:16:54 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 93BD61180;
	Fri,  5 Jul 2019 13:16:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CEA63117D
	for <bridge@lists.linux-foundation.org>;
	Fri,  5 Jul 2019 13:16:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from m9784.mail.qiye.163.com (m9784.mail.qiye.163.com
	[220.181.97.84])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 1C13088E
	for <bridge@lists.linux-foundation.org>;
	Fri,  5 Jul 2019 13:16:42 +0000 (UTC)
Received: from localhost.localdomain (unknown [123.59.132.129])
	by m9784.mail.qiye.163.com (Hmail) with ESMTPA id 9C14F418A1;
	Fri,  5 Jul 2019 21:16:39 +0800 (CST)
From: wenxu@ucloud.cn
To: nikolay@cumulusnetworks.com,
	pablo@netfilter.org
Date: Fri,  5 Jul 2019 21:16:33 +0800
Message-Id: <1562332598-17415-2-git-send-email-wenxu@ucloud.cn>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1562332598-17415-1-git-send-email-wenxu@ucloud.cn>
References: <1562332598-17415-1-git-send-email-wenxu@ucloud.cn>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZVkpVS05LS0tLS0xKTklOTkxZV1koWU
	FJQjdXWS1ZQUlXWQkOFx4IWUFZNTQpNjo3JCkuNz5ZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PiI6KAw4HTgrSQgjCTErVjM4
	VjZPCS5VSlVKTk1JSEhJTkJCTUJKVTMWGhIXVQweFQMOOw4YFxQOH1UYFUVZV1kSC1lBWUpJSFVO
	QlVKSElVSklCWVdZCAFZQUlDT043Bg++
X-HM-Tid: 0a6bc247956c2086kuqy9c14f418a1
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org
Subject: [Bridge] [PATCH 2/7 nf-next v2] netfilter: nft_meta_bridge: Remove
	the br_private.h header
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

Mkae the nft_bridge_meta can't direct access the bridge
internal API.

Signed-off-by: wenxu <wenxu@ucloud.cn>
Reviewed-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/netfilter/nft_meta_bridge.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/net/bridge/netfilter/nft_meta_bridge.c b/net/bridge/netfilter/nft_meta_bridge.c
index dde8651..2ea8acb 100644
--- a/net/bridge/netfilter/nft_meta_bridge.c
+++ b/net/bridge/netfilter/nft_meta_bridge.c
@@ -8,7 +8,14 @@
 #include <net/netfilter/nf_tables.h>
 #include <net/netfilter/nft_meta.h>
 
-#include "../br_private.h"
+static const struct net_device *
+nft_meta_get_bridge(const struct net_device *dev)
+{
+	if (dev && netif_is_bridge_port(dev))
+		return netdev_master_upper_dev_get_rcu((struct net_device *)dev);
+
+	return NULL;
+}
 
 static void nft_meta_bridge_get_eval(const struct nft_expr *expr,
 				     struct nft_regs *regs,
@@ -17,22 +24,24 @@ static void nft_meta_bridge_get_eval(const struct nft_expr *expr,
 	const struct nft_meta *priv = nft_expr_priv(expr);
 	const struct net_device *in = nft_in(pkt), *out = nft_out(pkt);
 	u32 *dest = &regs->data[priv->dreg];
-	const struct net_bridge_port *p;
+	const struct net_device *br_dev;
 
 	switch (priv->key) {
 	case NFT_META_BRI_IIFNAME:
-		if (in == NULL || (p = br_port_get_rcu(in)) == NULL)
+		br_dev = nft_meta_get_bridge(in);
+		if (!br_dev)
 			goto err;
 		break;
 	case NFT_META_BRI_OIFNAME:
-		if (out == NULL || (p = br_port_get_rcu(out)) == NULL)
+		br_dev = nft_meta_get_bridge(out);
+		if (!br_dev)
 			goto err;
 		break;
 	default:
 		goto out;
 	}
 
-	strncpy((char *)dest, p->br->dev->name, IFNAMSIZ);
+	strncpy((char *)dest, br_dev->name, IFNAMSIZ);
 	return;
 out:
 	return nft_meta_get_eval(expr, regs, pkt);
-- 
1.8.3.1

