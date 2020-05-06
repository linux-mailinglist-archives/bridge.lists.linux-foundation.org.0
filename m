Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A15B71EC7C7
	for <lists.bridge@lfdr.de>; Wed,  3 Jun 2020 05:27:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 42D39886A6;
	Wed,  3 Jun 2020 03:27:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1kNpT-CJ-H9r; Wed,  3 Jun 2020 03:27:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7F4EE88602;
	Wed,  3 Jun 2020 03:27:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6F0E6C016E;
	Wed,  3 Jun 2020 03:27:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A5E03C0859
 for <bridge@lists.linux-foundation.org>; Wed,  6 May 2020 06:17:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 95BEC87708
 for <bridge@lists.linux-foundation.org>; Wed,  6 May 2020 06:17:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fr+zlxG7eUDT for <bridge@lists.linux-foundation.org>;
 Wed,  6 May 2020 06:17:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B7596876FF
 for <bridge@lists.linux-foundation.org>; Wed,  6 May 2020 06:17:11 +0000 (UTC)
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 2F845A04B3344AC12140;
 Wed,  6 May 2020 14:17:05 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.487.0; Wed, 6 May 2020
 14:16:55 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <roopa@cumulusnetworks.com>, <nikolay@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>,
 <bridge@lists.linux-foundation.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Date: Wed, 6 May 2020 14:16:16 +0800
Message-ID: <20200506061616.18929-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Wed, 03 Jun 2020 03:27:25 +0000
Cc: Jason Yan <yanaijie@huawei.com>
Subject: [Bridge] [PATCH net-next] net: bridge: return false in
	br_mrp_enabled()
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

Fix the following coccicheck warning:

net/bridge/br_private.h:1334:8-9: WARNING: return of 0/1 in function
'br_mrp_enabled' with return type bool

Signed-off-by: Jason Yan <yanaijie@huawei.com>
---
 net/bridge/br_private.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index c35647cb138a..78d3a951180d 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1331,7 +1331,7 @@ static inline int br_mrp_process(struct net_bridge_port *p, struct sk_buff *skb)
 
 static inline bool br_mrp_enabled(struct net_bridge *br)
 {
-	return 0;
+	return false;
 }
 
 static inline void br_mrp_port_del(struct net_bridge *br,
-- 
2.21.1

