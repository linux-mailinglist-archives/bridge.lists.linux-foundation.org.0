Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5EC41FA63
	for <lists.bridge@lfdr.de>; Sat,  2 Oct 2021 10:05:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D025415AA;
	Sat,  2 Oct 2021 08:05:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GfhycpZjrQ2J; Sat,  2 Oct 2021 08:05:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 0507C425C9;
	Sat,  2 Oct 2021 08:05:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BDF4EC001E;
	Sat,  2 Oct 2021 08:05:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D97F1C000D
 for <bridge@lists.linux-foundation.org>; Tue, 28 Sep 2021 14:11:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D4E9640557
 for <bridge@lists.linux-foundation.org>; Tue, 28 Sep 2021 14:11:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linutronix.de header.b="EAGUZt1e";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=linutronix.de header.b="Y8vkL4ea"
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3e6E_I20ySYg for <bridge@lists.linux-foundation.org>;
 Tue, 28 Sep 2021 14:11:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C236E400C5
 for <bridge@lists.linux-foundation.org>; Tue, 28 Sep 2021 14:11:27 +0000 (UTC)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1632838284;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=6yrRrecR/xDa6JwQcSu2PQbU6zn6uCv5AzWCbYYTJ1g=;
 b=EAGUZt1eIqht/TEUWtPuDXMC2lwGRoNRqSm7EiA7Ps97VNiakfpSR9nFuLpInWgitWNREF
 +OWMcKZILLHFM0LHciUDzEnyF9DSX9QVNNcsjwfnOphQgbQIE7kPd/GSgK2NB0D5LeW18c
 EKsttVaB8j1m6jHbEyv5yCLhGApQyiWeNXvZFag4wYqrCu+w4nMy1MAFJL8wkAlmV9AY5K
 QRtKfoMf6qslvAott0VLuYyNRxKwOeMJ5WzuGx8dWSpzqqFQj7EZjN3LytEHxakkVpJTLq
 u/CwFgHCuvFhFgO8jKkJyuluaJv8PssO5BcQYR18wkzjUkdtkzZwvs3IrjLxBA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1632838284;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=6yrRrecR/xDa6JwQcSu2PQbU6zn6uCv5AzWCbYYTJ1g=;
 b=Y8vkL4ea/C+M+L8E8P+k+72Rs3rmxK0Dj6Hmzc5DfzWc+Hj+6VBSXL1qKyLc7qjYhrE1Iv
 BqF0EnBXkoUtiwDw==
To: bridge@lists.linux-foundation.org,
	netdev@vger.kernel.org
Date: Tue, 28 Sep 2021 16:10:49 +0200
Message-Id: <20210928141049.593833-1-bigeasy@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Sat, 02 Oct 2021 08:05:05 +0000
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Mike Galbraith <efault@gmx.de>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH net] net: bridge: mcast: Associate the seqcount
	with its protecting lock.
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

From: Thomas Gleixner <tglx@linutronix.de>

The sequence count bridge_mcast_querier::seq is protected by
net_bridge::multicast_lock but seqcount_init() does not associate the
seqcount with the lock. This leads to a warning on PREEMPT_RT because
preemption is still enabled.

Let seqcount_init() associate the seqcount with lock that protects the
write section. Remove lockdep_assert_held_once() because lockdep already ch=
ecks
whether the associated lock is held.
=09
Fixes: 67b746f94ff39 ("net: bridge: mcast: make sure querier port/address u=
pdates are consistent")
Reported-by: Mike Galbraith <efault@gmx.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Tested-by: Mike Galbraith <efault@gmx.de>
---
 net/bridge/br_multicast.c |    6 ++----
 net/bridge/br_private.h   |    2 +-
 2 files changed, 3 insertions(+), 5 deletions(-)

--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1677,8 +1677,6 @@ static void br_multicast_update_querier(
 					int ifindex,
 					struct br_ip *saddr)
 {
-	lockdep_assert_held_once(&brmctx->br->multicast_lock);
-
 	write_seqcount_begin(&querier->seq);
 	querier->port_ifidx =3D ifindex;
 	memcpy(&querier->addr, saddr, sizeof(*saddr));
@@ -3867,13 +3865,13 @@ void br_multicast_ctx_init(struct net_br
=20
 	brmctx->ip4_other_query.delay_time =3D 0;
 	brmctx->ip4_querier.port_ifidx =3D 0;
-	seqcount_init(&brmctx->ip4_querier.seq);
+	seqcount_spinlock_init(&brmctx->ip4_querier.seq, &br->multicast_lock);
 	brmctx->multicast_igmp_version =3D 2;
 #if IS_ENABLED(CONFIG_IPV6)
 	brmctx->multicast_mld_version =3D 1;
 	brmctx->ip6_other_query.delay_time =3D 0;
 	brmctx->ip6_querier.port_ifidx =3D 0;
-	seqcount_init(&brmctx->ip6_querier.seq);
+	seqcount_spinlock_init(&brmctx->ip6_querier.seq, &br->multicast_lock);
 #endif
=20
 	timer_setup(&brmctx->ip4_mc_router_timer,
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -82,7 +82,7 @@ struct bridge_mcast_other_query {
 struct bridge_mcast_querier {
 	struct br_ip addr;
 	int port_ifidx;
-	seqcount_t seq;
+	seqcount_spinlock_t seq;
 };
=20
 /* IGMP/MLD statistics */
