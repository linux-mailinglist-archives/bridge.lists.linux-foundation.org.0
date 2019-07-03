Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id B31AB5E895
	for <lists.bridge@lfdr.de>; Wed,  3 Jul 2019 18:16:27 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E6656D85;
	Wed,  3 Jul 2019 16:15:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C4FD0FD7
	for <bridge@lists.linux-foundation.org>;
	Wed,  3 Jul 2019 12:40:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.us.es (mail.us.es [193.147.175.20])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DC63D837
	for <bridge@lists.linux-foundation.org>;
	Wed,  3 Jul 2019 12:40:52 +0000 (UTC)
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 986C81BFA89
	for <bridge@lists.linux-foundation.org>;
	Wed,  3 Jul 2019 14:40:49 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 8A3A6A6A9
	for <bridge@lists.linux-foundation.org>;
	Wed,  3 Jul 2019 14:40:49 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 7FF8DDA4D1; Wed,  3 Jul 2019 14:40:49 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 1EE8EDA7B6;
	Wed,  3 Jul 2019 14:40:47 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
	by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int); 
	Wed, 03 Jul 2019 14:40:47 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from salvia.here (sys.soleta.eu [212.170.55.40])
	(Authenticated sender: pneira@us.es)
	by entrada.int (Postfix) with ESMTPA id DADD94265A5B;
	Wed,  3 Jul 2019 14:40:46 +0200 (CEST)
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: netfilter-devel@vger.kernel.org
Date: Wed,  3 Jul 2019 14:40:40 +0200
Message-Id: <20190703124040.19279-1-pablo@netfilter.org>
X-Mailer: git-send-email 2.11.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: nikolay@cumulusnetworks.com, wenxu@ucloud.cn,
	bridge@lists.linux-foundation.org
Subject: [Bridge] [PATCH] netfilter: nft_meta: fix bridge port vlan ID
	selector
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

Use br_vlan_enabled() and br_vlan_get_pvid() helpers as Nikolay
suggests.

Rename NFT_META_BRI_PVID to NFT_META_BRI_IIFPVID before this patch hits
the 5.3 release cycle, to leave room for matching for the output bridge
port in the future.

Reported-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Fixes: da4f10a4265b ("netfilter: nft_meta: add NFT_META_BRI_PVID support")
Signed-off-by: Pablo Neira Ayuso <pablo@netfilter.org>
---
 include/uapi/linux/netfilter/nf_tables.h |  4 ++--
 net/netfilter/nft_meta.c                 | 17 ++++++++++-------
 2 files changed, 12 insertions(+), 9 deletions(-)

diff --git a/include/uapi/linux/netfilter/nf_tables.h b/include/uapi/linux/netfilter/nf_tables.h
index 8859535031e2..8a1bd0b1ec8c 100644
--- a/include/uapi/linux/netfilter/nf_tables.h
+++ b/include/uapi/linux/netfilter/nf_tables.h
@@ -795,7 +795,7 @@ enum nft_exthdr_attributes {
  * @NFT_META_SECPATH: boolean, secpath_exists (!!skb->sp)
  * @NFT_META_IIFKIND: packet input interface kind name (dev->rtnl_link_ops->kind)
  * @NFT_META_OIFKIND: packet output interface kind name (dev->rtnl_link_ops->kind)
- * @NFT_META_BRI_PVID: packet input bridge port pvid
+ * @NFT_META_BRI_IIFPVID: packet input bridge port pvid
  */
 enum nft_meta_keys {
 	NFT_META_LEN,
@@ -826,7 +826,7 @@ enum nft_meta_keys {
 	NFT_META_SECPATH,
 	NFT_META_IIFKIND,
 	NFT_META_OIFKIND,
-	NFT_META_BRI_PVID,
+	NFT_META_BRI_IIFPVID,
 };
 
 /**
diff --git a/net/netfilter/nft_meta.c b/net/netfilter/nft_meta.c
index 4f8116de70f8..b8d8adc0852e 100644
--- a/net/netfilter/nft_meta.c
+++ b/net/netfilter/nft_meta.c
@@ -240,14 +240,17 @@ void nft_meta_get_eval(const struct nft_expr *expr,
 			goto err;
 		strncpy((char *)dest, p->br->dev->name, IFNAMSIZ);
 		return;
-	case NFT_META_BRI_PVID:
+	case NFT_META_BRI_IIFPVID: {
+		u16 p_pvid;
+
 		if (in == NULL || (p = br_port_get_rtnl_rcu(in)) == NULL)
 			goto err;
-		if (br_opt_get(p->br, BROPT_VLAN_ENABLED)) {
-			nft_reg_store16(dest, br_get_pvid(nbp_vlan_group_rcu(p)));
-			return;
-		}
-		goto err;
+		if (!br_vlan_enabled(in))
+			goto err;
+		br_vlan_get_pvid(in, &p_pvid);
+		nft_reg_store16(dest, p_pvid);
+		return;
+	}
 #endif
 	case NFT_META_IIFKIND:
 		if (in == NULL || in->rtnl_link_ops == NULL)
@@ -375,7 +378,7 @@ static int nft_meta_get_init(const struct nft_ctx *ctx,
 			return -EOPNOTSUPP;
 		len = IFNAMSIZ;
 		break;
-	case NFT_META_BRI_PVID:
+	case NFT_META_BRI_IIFPVID:
 		if (ctx->family != NFPROTO_BRIDGE)
 			return -EOPNOTSUPP;
 		len = sizeof(u16);
-- 
2.11.0

