Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D5737EF7D
	for <lists.bridge@lfdr.de>; Thu, 13 May 2021 01:20:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 166CA83C13;
	Wed, 12 May 2021 23:20:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QhIHnn5olmuV; Wed, 12 May 2021 23:20:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B25683BE2;
	Wed, 12 May 2021 23:20:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5EF6BC000E;
	Wed, 12 May 2021 23:20:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B95E8C0001
 for <bridge@lists.linux-foundation.org>; Wed, 12 May 2021 23:19:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9BC1160687
 for <bridge@lists.linux-foundation.org>; Wed, 12 May 2021 23:19:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LubuXuu8EhL1 for <bridge@lists.linux-foundation.org>;
 Wed, 12 May 2021 23:19:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:c2c:665b::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EE0E26067C
 for <bridge@lists.linux-foundation.org>; Wed, 12 May 2021 23:19:58 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id C51404100F; Thu, 13 May 2021 01:19:56 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Date: Thu, 13 May 2021 01:19:40 +0200
Message-Id: <20210512231941.19211-11-linus.luessing@c0d3.blue>
In-Reply-To: <20210512231941.19211-1-linus.luessing@c0d3.blue>
References: <20210512231941.19211-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.2
Cc: bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>
Subject: [Bridge] [net-next v3 10/11] net: bridge: mcast: add ip4+ip6 mcast
	router timers to mdb netlink
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

Now that we have split the multicast router state into two, one for IPv4
and one for IPv6, also add individual timers to the mdb netlink router
port dump. Leaving the old timer attribute for backwards compatibility.

Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
---
 include/uapi/linux/if_bridge.h | 2 ++
 net/bridge/br_mdb.c            | 8 +++++++-
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 13d59c5..6b56a75 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -627,6 +627,8 @@ enum {
 	MDBA_ROUTER_PATTR_UNSPEC,
 	MDBA_ROUTER_PATTR_TIMER,
 	MDBA_ROUTER_PATTR_TYPE,
+	MDBA_ROUTER_PATTR_INET_TIMER,
+	MDBA_ROUTER_PATTR_INET6_TIMER,
 	__MDBA_ROUTER_PATTR_MAX
 };
 #define MDBA_ROUTER_PATTR_MAX (__MDBA_ROUTER_PATTR_MAX - 1)
diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 10c416c..3f839a8 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -79,7 +79,13 @@ static int br_rports_fill_info(struct sk_buff *skb, struct netlink_callback *cb,
 		    nla_put_u32(skb, MDBA_ROUTER_PATTR_TIMER,
 				max(ip4_timer, ip6_timer)) ||
 		    nla_put_u8(skb, MDBA_ROUTER_PATTR_TYPE,
-			       p->multicast_router)) {
+			       p->multicast_router) ||
+		    (have_ip4_mc_rtr &&
+		     nla_put_u32(skb, MDBA_ROUTER_PATTR_INET_TIMER,
+				 ip4_timer)) ||
+		    (have_ip6_mc_rtr &&
+		     nla_put_u32(skb, MDBA_ROUTER_PATTR_INET6_TIMER,
+				 ip6_timer))) {
 			nla_nest_cancel(skb, port_nest);
 			goto fail;
 		}
-- 
2.31.0

