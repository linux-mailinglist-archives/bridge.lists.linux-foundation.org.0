Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BCB302080
	for <lists.bridge@lfdr.de>; Mon, 25 Jan 2021 03:40:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EEF368586A;
	Mon, 25 Jan 2021 02:40:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XLtc1gCZ3hCu; Mon, 25 Jan 2021 02:40:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 422CC85868;
	Mon, 25 Jan 2021 02:40:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1BCD5C013A;
	Mon, 25 Jan 2021 02:40:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 82CC0C013A
 for <bridge@lists.linux-foundation.org>; Mon, 25 Jan 2021 02:40:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6620120425
 for <bridge@lists.linux-foundation.org>; Mon, 25 Jan 2021 02:40:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Eseix41airV for <bridge@lists.linux-foundation.org>;
 Mon, 25 Jan 2021 02:40:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from out4436.biz.mail.alibaba.com (out4436.biz.mail.alibaba.com
 [47.88.44.36])
 by silver.osuosl.org (Postfix) with ESMTPS id 3B13220405
 for <bridge@lists.linux-foundation.org>; Mon, 25 Jan 2021 02:39:59 +0000 (UTC)
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R201e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04423;
 MF=abaci-bugfix@linux.alibaba.com; NM=1; PH=DS; RN=11; SR=0;
 TI=SMTPD_---0UMkOXxA_1611542382; 
Received: from
 j63c13417.sqa.eu95.tbsite.net(mailfrom:abaci-bugfix@linux.alibaba.com
 fp:SMTPD_---0UMkOXxA_1611542382) by smtp.aliyun-inc.com(127.0.0.1);
 Mon, 25 Jan 2021 10:39:46 +0800
From: Jiapeng Zhong <abaci-bugfix@linux.alibaba.com>
To: roopa@nvidia.com
Date: Mon, 25 Jan 2021 10:39:41 +0800
Message-Id: <1611542381-91178-1-git-send-email-abaci-bugfix@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 ndesaulniers@google.com, linux-kernel@vger.kernel.org,
 Jiapeng Zhong <abaci-bugfix@linux.alibaba.com>,
 clang-built-linux@googlegroups.com, nikolay@nvidia.com, kuba@kernel.org,
 natechancellor@gmail.com, davem@davemloft.net
Subject: [Bridge] [PATCH] bridge: Use PTR_ERR_OR_ZERO instead
	if(IS_ERR(...)) + PTR_ERR
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

coccicheck suggested using PTR_ERR_OR_ZERO() and looking at the code.

Fix the following coccicheck warnings:

./net/bridge/br_multicast.c:1295:7-13: WARNING: PTR_ERR_OR_ZERO can be
used.

Reported-by: Abaci <abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Zhong <abaci-bugfix@linux.alibaba.com>
---
 net/bridge/br_multicast.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 257ac4e..2229d10 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1292,7 +1292,7 @@ static int br_multicast_add_group(struct net_bridge *br,
 	pg = __br_multicast_add_group(br, port, group, src, filter_mode,
 				      igmpv2_mldv1, false);
 	/* NULL is considered valid for host joined groups */
-	err = IS_ERR(pg) ? PTR_ERR(pg) : 0;
+	err = PTR_ERR_OR_ZERO(pg);
 	spin_unlock(&br->multicast_lock);
 
 	return err;
-- 
1.8.3.1

