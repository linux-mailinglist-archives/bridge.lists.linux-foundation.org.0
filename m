Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E79626E21B
	for <lists.bridge@lfdr.de>; Thu, 17 Sep 2020 19:19:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8C883879D7;
	Thu, 17 Sep 2020 17:19:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id onPVwRucS8VG; Thu, 17 Sep 2020 17:19:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1E91387960;
	Thu, 17 Sep 2020 17:19:33 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 119C4C0888;
	Thu, 17 Sep 2020 17:19:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 816FFC0051
 for <bridge@lists.linux-foundation.org>; Fri,  4 Sep 2020 12:59:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 711FB869DE
 for <bridge@lists.linux-foundation.org>; Fri,  4 Sep 2020 12:59:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IUiuT-pEidz6 for <bridge@lists.linux-foundation.org>;
 Fri,  4 Sep 2020 12:59:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EEC0786B00
 for <bridge@lists.linux-foundation.org>; Fri,  4 Sep 2020 12:59:37 +0000 (UTC)
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 722D292D5CE18AD8CE44;
 Fri,  4 Sep 2020 20:59:32 +0800 (CST)
Received: from huawei.com (10.175.113.133) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.487.0; Fri, 4 Sep 2020
 20:59:29 +0800
From: Wang Hai <wanghai38@huawei.com>
To: <pablo@netfilter.org>, <kadlec@netfilter.org>, <fw@strlen.de>,
 <roopa@nvidia.com>, <nikolay@nvidia.com>, <davem@davemloft.net>,
 <kuba@kernel.org>
Date: Fri, 4 Sep 2020 20:56:53 +0800
Message-ID: <20200904125653.15170-1-wanghai38@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.175.113.133]
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Thu, 17 Sep 2020 17:19:30 +0000
Cc: bridge@lists.linux-foundation.org, coreteam@netfilter.org,
 netfilter-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Subject: [Bridge] [PATCH net-next] netfilter: ebt_stp: Remove unused macro
	BPDU_TYPE_TCN
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

BPDU_TYPE_TCN is never used after it was introduced.
So better to remove it.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wang Hai <wanghai38@huawei.com>
---
 net/bridge/netfilter/ebt_stp.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/net/bridge/netfilter/ebt_stp.c b/net/bridge/netfilter/ebt_stp.c
index 0d6d20c9105e..8f68afda5f81 100644
--- a/net/bridge/netfilter/ebt_stp.c
+++ b/net/bridge/netfilter/ebt_stp.c
@@ -15,7 +15,6 @@
 #include <linux/netfilter_bridge/ebt_stp.h>
 
 #define BPDU_TYPE_CONFIG 0
-#define BPDU_TYPE_TCN 0x80
 
 struct stp_header {
 	u8 dsap;
-- 
2.17.1

