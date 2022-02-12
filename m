Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A03BD4B341E
	for <lists.bridge@lfdr.de>; Sat, 12 Feb 2022 10:58:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 36ED6400D8;
	Sat, 12 Feb 2022 09:58:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KoUw2ZfR-S-F; Sat, 12 Feb 2022 09:58:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 5413840160;
	Sat, 12 Feb 2022 09:58:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0CF08C0039;
	Sat, 12 Feb 2022 09:58:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CFAFDC000B
 for <bridge@lists.linux-foundation.org>; Sat, 12 Feb 2022 09:58:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B0D2981307
 for <bridge@lists.linux-foundation.org>; Sat, 12 Feb 2022 09:58:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nYRqSND4wn2U for <bridge@lists.linux-foundation.org>;
 Sat, 12 Feb 2022 09:58:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp.smtpout.orange.fr (smtp09.smtpout.orange.fr
 [80.12.242.131])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0426F80BC0
 for <bridge@lists.linux-foundation.org>; Sat, 12 Feb 2022 09:58:31 +0000 (UTC)
Received: from pop-os.home ([90.126.236.122]) by smtp.orange.fr with ESMTPA
 id IpAhndzDgtSo5IpAhneZDI; Sat, 12 Feb 2022 10:58:29 +0100
X-ME-Helo: pop-os.home
X-ME-Auth: YWZlNiIxYWMyZDliZWIzOTcwYTEyYzlhMmU3ZiQ1M2U2MzfzZDfyZTMxZTBkMTYyNDBjNDJlZmQ3ZQ==
X-ME-Date: Sat, 12 Feb 2022 10:58:29 +0100
X-ME-IP: 90.126.236.122
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Sat, 12 Feb 2022 10:58:20 +0100
Message-Id: <73f674075ae5279e3d2fa07d61a0a75bc50790f3.1644659879.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 bridge@lists.linux-foundation.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Subject: [Bridge] [PATCH] net: bridge: Slightly optimize
	br_stp_change_bridge_id()
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

ether_addr_equal_64bits() can easy be used in place of ether_addr_equal()
here.
Padding in the 'net_bridge_port' structure is already there because it is a
huge structure and the required fields are not at the end.
'oldaddr' is local to the function. So add the required padding
explicitly and simplify its definition.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
This patch is more a POC for me.

I'm unsure that using ether_addr_equal_64bits() is really useful. The
speedup should be mostly un-noticeable.

To make sure that we have the required padding, we either need to waste
some space or rely on the fact that the address is embedded in a large
enough structure. (which is the case here)

So, it looks fragile to me and not future-proof.

Feed-back highly appreciated to see if such patches are welcome and if I
should spend some time on it.
---
 net/bridge/br_private.h |  5 +++++
 net/bridge/br_stp_if.c  | 12 +++++++-----
 2 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 2661dda1a92b..2f78090574c9 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -363,6 +363,11 @@ struct net_bridge_port {
 	unsigned char			config_pending;
 	port_id				port_id;
 	port_id				designated_port;
+	/*
+	 * designated_root and designated_bridge must NOT be at the end of the
+	 * structure because ether_addr_equal_64bits() requires 2 bytes of
+	 * padding.
+	 */
 	bridge_id			designated_root;
 	bridge_id			designated_bridge;
 	u32				path_cost;
diff --git a/net/bridge/br_stp_if.c b/net/bridge/br_stp_if.c
index 75204d36d7f9..1bf0aaf29e5e 100644
--- a/net/bridge/br_stp_if.c
+++ b/net/bridge/br_stp_if.c
@@ -221,9 +221,11 @@ int br_stp_set_enabled(struct net_bridge *br, unsigned long val,
 /* called under bridge lock */
 void br_stp_change_bridge_id(struct net_bridge *br, const unsigned char *addr)
 {
-	/* should be aligned on 2 bytes for ether_addr_equal() */
-	unsigned short oldaddr_aligned[ETH_ALEN >> 1];
-	unsigned char *oldaddr = (unsigned char *)oldaddr_aligned;
+	/*
+	 * should be aligned on 2 bytes and have 2 bytes of padding for
+	 * ether_addr_equal_64bits()
+	 */
+	unsigned char oldaddr[ETH_ALEN + 2] __aligned(2);
 	struct net_bridge_port *p;
 	int wasroot;
 
@@ -236,10 +238,10 @@ void br_stp_change_bridge_id(struct net_bridge *br, const unsigned char *addr)
 	eth_hw_addr_set(br->dev, addr);
 
 	list_for_each_entry(p, &br->port_list, list) {
-		if (ether_addr_equal(p->designated_bridge.addr, oldaddr))
+		if (ether_addr_equal_64bits(p->designated_bridge.addr, oldaddr))
 			memcpy(p->designated_bridge.addr, addr, ETH_ALEN);
 
-		if (ether_addr_equal(p->designated_root.addr, oldaddr))
+		if (ether_addr_equal_64bits(p->designated_root.addr, oldaddr))
 			memcpy(p->designated_root.addr, addr, ETH_ALEN);
 	}
 
-- 
2.32.0

