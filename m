Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A124CC37D
	for <lists.bridge@lfdr.de>; Thu,  3 Mar 2022 18:15:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3EBC1401C5;
	Thu,  3 Mar 2022 17:15:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hg2Leq8dpuOt; Thu,  3 Mar 2022 17:15:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 97A094015A;
	Thu,  3 Mar 2022 17:15:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6C49FC0085;
	Thu,  3 Mar 2022 17:15:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 77975C000B
 for <bridge@lists.linux-foundation.org>; Thu,  3 Mar 2022 17:15:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 62B8360A83
 for <bridge@lists.linux-foundation.org>; Thu,  3 Mar 2022 17:15:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linutronix.de header.b="UbMgbC00";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=linutronix.de header.b="q2mFoyOz"
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1kxaHcQLK-84 for <bridge@lists.linux-foundation.org>;
 Thu,  3 Mar 2022 17:15:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C7EBE60A93
 for <bridge@lists.linux-foundation.org>; Thu,  3 Mar 2022 17:15:20 +0000 (UTC)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1646327718;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ekfc/m1gUeDgqzbzoOq4tlU805jIirBBBnL0GRluSkE=;
 b=UbMgbC00q9J4LNhJMOvTENKvy3Gri3V1n229kBj6hgGjbGQICe3eYEMvI6xhFdTkClbv2r
 RM1YZBzT3GtTAWII8P3Ts9VzP591Q8o52R5x1cLNsv68yl/0pl1LfQ790b21peETOc3Pdw
 KBuDTEHPcasoFr61+HGiU5fkWVbdulo/1/0khDoLv1bgmAmWBqAJiVQAn6l+53P4/1ilpX
 dUDoS66IxZbMYtswEOazSlsP9QAdFuKQrVC8rpyL+6WbIG0WiKj8YVHAM80OzQq4GAgi25
 RnZXd+D0gv/OQkCScT/rDjoqrMpz1be6OCsfQ8UQmIfH46CdIzprMJQXxO6p0g==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1646327718;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ekfc/m1gUeDgqzbzoOq4tlU805jIirBBBnL0GRluSkE=;
 b=q2mFoyOzA9IBZHmwMV9PJdWFOCZ2KzMNCHINJ1mDRUnl1liF35lOCv2Te4hyM8xo9sHRt8
 B8Vy/0Z9hWoV7rBA==
To: netdev@vger.kernel.org
Date: Thu,  3 Mar 2022 18:15:04 +0100
Message-Id: <20220303171505.1604775-9-bigeasy@linutronix.de>
In-Reply-To: <20220303171505.1604775-1-bigeasy@linutronix.de>
References: <20220303171505.1604775-1-bigeasy@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Cc: Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 "David S. Miller" <davem@davemloft.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: [Bridge] [PATCH net-next 8/9] net: bridge: Use netif_rx().
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

Since commit
   baebdf48c3600 ("net: dev: Makes sure netif_rx() can be invoked in any co=
ntext.")

the function netif_rx() can be used in preemptible/thread context as
well as in interrupt context.

Use netif_rx().

Cc: Roopa Prabhu <roopa@nvidia.com>
Cc: Nikolay Aleksandrov <razor@blackwall.org>
Cc: bridge@lists.linux-foundation.org
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 net/bridge/br_arp_nd_proxy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/bridge/br_arp_nd_proxy.c b/net/bridge/br_arp_nd_proxy.c
index 3db1def4437b3..e5e48c6e35d78 100644
--- a/net/bridge/br_arp_nd_proxy.c
+++ b/net/bridge/br_arp_nd_proxy.c
@@ -84,7 +84,7 @@ static void br_arp_send(struct net_bridge *br, struct net=
_bridge_port *p,
 		skb->ip_summed =3D CHECKSUM_UNNECESSARY;
 		skb->pkt_type =3D PACKET_HOST;
=20
-		netif_rx_ni(skb);
+		netif_rx(skb);
 	}
 }
=20
@@ -364,7 +364,7 @@ static void br_nd_send(struct net_bridge *br, struct ne=
t_bridge_port *p,
 		reply->ip_summed =3D CHECKSUM_UNNECESSARY;
 		reply->pkt_type =3D PACKET_HOST;
=20
-		netif_rx_ni(reply);
+		netif_rx(reply);
 	}
 }
=20
--=20
2.35.1

