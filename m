Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3292E3BCCE9
	for <lists.bridge@lfdr.de>; Tue,  6 Jul 2021 13:19:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C526402E8;
	Tue,  6 Jul 2021 11:19:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Zm38iIPYbCk; Tue,  6 Jul 2021 11:19:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 01729403D6;
	Tue,  6 Jul 2021 11:19:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BBBA8C001F;
	Tue,  6 Jul 2021 11:19:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D80FBC000E
 for <bridge@lists.linux-foundation.org>; Tue,  6 Jul 2021 11:19:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B96B5403D7
 for <bridge@lists.linux-foundation.org>; Tue,  6 Jul 2021 11:19:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xXsCfD4E18Y7 for <bridge@lists.linux-foundation.org>;
 Tue,  6 Jul 2021 11:19:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 46DB2401B5
 for <bridge@lists.linux-foundation.org>; Tue,  6 Jul 2021 11:19:54 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 30B7261D55;
 Tue,  6 Jul 2021 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625570394;
 bh=6BREJ0k9L9mE1E4tZx8e9Dg/2tIQvEdSjFwZmz7JpRU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eXHI01WHz051k/f6U7ZP7D2LgcIdbkrK3E4+3K7uVD8YEo/KtLT/Zj4SSGowYkGXP
 Kj4t/hE/6ht1KFmW58a/TYLFR20ba1OJLHBjv01p6WhBeWHGadt9ADZQmJ98yqROcF
 jatArWup4S7eIX1AWewvvp5w0pN6bUdG2DDqDK2zMvJKDrdfp+buuROCMDLFK9wsID
 RI1dsKLRoIKOwYJrzpHv9jBm2gFTGVjrSjY/wmacbnd/gQnFknduvgRgBJ0Wl9104J
 WtYKYcPHIa358/OyjK9ptS3UmPT4G8eeAVprDZOInMdCnqAyNQ7j1if3OTdAOBr807
 dyxh3BMkvNagA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue,  6 Jul 2021 07:16:51 -0400
Message-Id: <20210706111827.2060499-65-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210706111827.2060499-1-sashal@kernel.org>
References: <20210706111827.2060499-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: 8bit
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org,
 Horatiu Vultur <horatiu.vultur@microchip.com>,
 "David S . Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH AUTOSEL 5.12 065/160] net: bridge: mrp: Update ring
	transitions.
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

From: Horatiu Vultur <horatiu.vultur@microchip.com>

[ Upstream commit fcb34635854a5a5814227628867ea914a9805384 ]

According to the standard IEC 62439-2, the number of transitions needs
to be counted for each transition 'between' ring state open and ring
state closed and not from open state to closed state.

Therefore fix this for both ring and interconnect ring.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/bridge/br_mrp.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
index 12487f6fe9b4..58254fbfda85 100644
--- a/net/bridge/br_mrp.c
+++ b/net/bridge/br_mrp.c
@@ -620,8 +620,7 @@ int br_mrp_set_ring_state(struct net_bridge *br,
 	if (!mrp)
 		return -EINVAL;
 
-	if (mrp->ring_state == BR_MRP_RING_STATE_CLOSED &&
-	    state->ring_state != BR_MRP_RING_STATE_CLOSED)
+	if (mrp->ring_state != state->ring_state)
 		mrp->ring_transitions++;
 
 	mrp->ring_state = state->ring_state;
@@ -708,8 +707,7 @@ int br_mrp_set_in_state(struct net_bridge *br, struct br_mrp_in_state *state)
 	if (!mrp)
 		return -EINVAL;
 
-	if (mrp->in_state == BR_MRP_IN_STATE_CLOSED &&
-	    state->in_state != BR_MRP_IN_STATE_CLOSED)
+	if (mrp->in_state != state->in_state)
 		mrp->in_transitions++;
 
 	mrp->in_state = state->in_state;
-- 
2.30.2

