Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B27F695D4F
	for <lists.bridge@lfdr.de>; Tue, 14 Feb 2023 09:41:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63E06416E3;
	Tue, 14 Feb 2023 08:41:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63E06416E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i-WG947IAUmC; Tue, 14 Feb 2023 08:41:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id BB124416C4;
	Tue, 14 Feb 2023 08:41:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB124416C4
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 82B56C0078;
	Tue, 14 Feb 2023 08:41:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0536BC002B
 for <bridge@lists.linux-foundation.org>; Wed,  8 Feb 2023 00:56:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C1FE981D7D
 for <bridge@lists.linux-foundation.org>; Wed,  8 Feb 2023 00:56:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1FE981D7D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FU3z1M9S4322 for <bridge@lists.linux-foundation.org>;
 Wed,  8 Feb 2023 00:56:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB2A681CFE
Received: from out30-118.freemail.mail.aliyun.com
 (out30-118.freemail.mail.aliyun.com [115.124.30.118])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EB2A681CFE
 for <bridge@lists.linux-foundation.org>; Wed,  8 Feb 2023 00:56:33 +0000 (UTC)
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R161e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=ay29a033018046049;
 MF=yang.lee@linux.alibaba.com; NM=1; PH=DS; RN=11; SR=0;
 TI=SMTPD_---0Vb92B8B_1675817787; 
Received: from localhost(mailfrom:yang.lee@linux.alibaba.com
 fp:SMTPD_---0Vb92B8B_1675817787) by smtp.aliyun-inc.com;
 Wed, 08 Feb 2023 08:56:28 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: davem@davemloft.net
Date: Wed,  8 Feb 2023 08:56:26 +0800
Message-Id: <20230208005626.56847-1-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 14 Feb 2023 08:41:23 +0000
Cc: netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, Abaci Robot <abaci@linux.alibaba.com>,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 Yang Li <yang.lee@linux.alibaba.com>, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com
Subject: [Bridge] [PATCH -next] net: bridge: clean up one inconsistent
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

./net/bridge/br_netlink_tunnel.c:317:4-27: code aligned with following code on line 318

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Link: https://bugzilla.openanolis.cn/show_bug.cgi?id=3977
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 net/bridge/br_netlink_tunnel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/bridge/br_netlink_tunnel.c b/net/bridge/br_netlink_tunnel.c
index 17abf092f7ca..eff949bfdd83 100644
--- a/net/bridge/br_netlink_tunnel.c
+++ b/net/bridge/br_netlink_tunnel.c
@@ -315,7 +315,7 @@ int br_process_vlan_tunnel_info(const struct net_bridge *br,
 
 			if (curr_change)
 				*changed = curr_change;
-			 __vlan_tunnel_handle_range(p, &v_start, &v_end, v,
+			__vlan_tunnel_handle_range(p, &v_start, &v_end, v,
 						    curr_change);
 		}
 		if (v_start && v_end)
-- 
2.20.1.7.g153144c

