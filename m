Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 344A64CF3BF
	for <lists.bridge@lfdr.de>; Mon,  7 Mar 2022 09:37:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A287B818A7;
	Mon,  7 Mar 2022 08:37:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sd7BCG1pSDYZ; Mon,  7 Mar 2022 08:37:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 54CC88197D;
	Mon,  7 Mar 2022 08:37:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 61894C000B;
	Mon,  7 Mar 2022 08:37:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 194B6C000B
 for <bridge@lists.linux-foundation.org>; Mon,  7 Mar 2022 00:42:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 06EF560A90
 for <bridge@lists.linux-foundation.org>; Mon,  7 Mar 2022 00:42:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BwVf4iPmLP8L for <bridge@lists.linux-foundation.org>;
 Mon,  7 Mar 2022 00:42:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from out30-132.freemail.mail.aliyun.com
 (out30-132.freemail.mail.aliyun.com [115.124.30.132])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8A1B5605EA
 for <bridge@lists.linux-foundation.org>; Mon,  7 Mar 2022 00:42:03 +0000 (UTC)
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R131e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04395;
 MF=jiapeng.chong@linux.alibaba.com; NM=1; PH=DS; RN=14; SR=0;
 TI=SMTPD_---0V6O8xSI_1646613711; 
Received: from localhost(mailfrom:jiapeng.chong@linux.alibaba.com
 fp:SMTPD_---0V6O8xSI_1646613711) by smtp.aliyun-inc.com(127.0.0.1);
 Mon, 07 Mar 2022 08:41:57 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: pablo@netfilter.org
Date: Mon,  7 Mar 2022 08:41:49 +0800
Message-Id: <20220307004149.25171-1-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 07 Mar 2022 08:37:25 +0000
Cc: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, netdev@vger.kernel.org,
 razor@blackwall.org, bridge@lists.linux-foundation.org, fw@strlen.de,
 linux-kernel@vger.kernel.org, kadlec@netfilter.org,
 Abaci Robot <abaci@linux.alibaba.com>, coreteam@netfilter.org,
 netfilter-devel@vger.kernel.org, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH] netfilter: bridge: clean up some inconsistent
	indenting
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

Eliminate the follow smatch warning:

net/bridge/netfilter/nf_conntrack_bridge.c:385 nf_ct_bridge_confirm()
warn: inconsistent indenting.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
 net/bridge/netfilter/nf_conntrack_bridge.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/bridge/netfilter/nf_conntrack_bridge.c b/net/bridge/netfilter/nf_conntrack_bridge.c
index ebfb2a5c59e4..73242962be5d 100644
--- a/net/bridge/netfilter/nf_conntrack_bridge.c
+++ b/net/bridge/netfilter/nf_conntrack_bridge.c
@@ -381,7 +381,7 @@ static unsigned int nf_ct_bridge_confirm(struct sk_buff *skb)
 		protoff = skb_network_offset(skb) + ip_hdrlen(skb);
 		break;
 	case htons(ETH_P_IPV6): {
-		 unsigned char pnum = ipv6_hdr(skb)->nexthdr;
+		unsigned char pnum = ipv6_hdr(skb)->nexthdr;
 		__be16 frag_off;
 
 		protoff = ipv6_skip_exthdr(skb, sizeof(struct ipv6hdr), &pnum,
-- 
2.20.1.7.g153144c

