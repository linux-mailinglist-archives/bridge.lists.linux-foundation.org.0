Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F65763990
	for <lists.bridge@lfdr.de>; Wed, 26 Jul 2023 16:51:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4E870404C2;
	Wed, 26 Jul 2023 14:51:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E870404C2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h7slBBgGzLIg; Wed, 26 Jul 2023 14:51:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id D9C1740105;
	Wed, 26 Jul 2023 14:51:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D9C1740105
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 687C5C0DD4;
	Wed, 26 Jul 2023 14:51:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 71623C0032
 for <bridge@lists.linux-foundation.org>; Wed, 26 Jul 2023 14:51:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4ACE641817
 for <bridge@lists.linux-foundation.org>; Wed, 26 Jul 2023 14:51:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4ACE641817
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aYcR9jaLz4ai for <bridge@lists.linux-foundation.org>;
 Wed, 26 Jul 2023 14:51:04 +0000 (UTC)
X-Greylist: delayed 1155 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 26 Jul 2023 14:51:04 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F48D40879
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com [45.249.212.255])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8F48D40879
 for <bridge@lists.linux-foundation.org>; Wed, 26 Jul 2023 14:51:04 +0000 (UTC)
Received: from canpemm500007.china.huawei.com (unknown [172.30.72.56])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4R9xCH2Vstz1GDFN;
 Wed, 26 Jul 2023 22:30:51 +0800 (CST)
Received: from localhost (10.174.179.215) by canpemm500007.china.huawei.com
 (7.192.104.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 26 Jul
 2023 22:31:44 +0800
To: <roopa@nvidia.com>, <razor@blackwall.org>, <davem@davemloft.net>,
 <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <idosch@nvidia.com>
Date: Wed, 26 Jul 2023 22:31:41 +0800
Message-ID: <20230726143141.11704-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.174.179.215]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 canpemm500007.china.huawei.com (7.192.104.62)
X-CFilter-Loop: Reflected
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org
Subject: [Bridge] [PATCH net-next] bridge: Remove unused declaration
	br_multicast_set_hash_max()
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
From: YueHaibing via Bridge <bridge@lists.linux-foundation.org>
Reply-To: YueHaibing <yuehaibing@huawei.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Since commit 19e3a9c90c53 ("net: bridge: convert multicast to generic rhashtable")
this is not used, so can remove it.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 net/bridge/br_private.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 51e4ca54b537..a1f4acfa6994 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -974,7 +974,6 @@ int br_multicast_set_vlan_router(struct net_bridge_vlan *v, u8 mcast_router);
 int br_multicast_toggle(struct net_bridge *br, unsigned long val,
 			struct netlink_ext_ack *extack);
 int br_multicast_set_querier(struct net_bridge_mcast *brmctx, unsigned long val);
-int br_multicast_set_hash_max(struct net_bridge *br, unsigned long val);
 int br_multicast_set_igmp_version(struct net_bridge_mcast *brmctx,
 				  unsigned long val);
 #if IS_ENABLED(CONFIG_IPV6)
-- 
2.34.1

