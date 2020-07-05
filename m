Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD42D214ECE
	for <lists.bridge@lfdr.de>; Sun,  5 Jul 2020 21:10:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E381189200;
	Sun,  5 Jul 2020 19:10:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z75vsemR70-j; Sun,  5 Jul 2020 19:10:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 65C718920F;
	Sun,  5 Jul 2020 19:10:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 48FFAC016F;
	Sun,  5 Jul 2020 19:10:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6E142C016F
 for <bridge@lists.linux-foundation.org>; Sun,  5 Jul 2020 19:10:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 54D15227C4
 for <bridge@lists.linux-foundation.org>; Sun,  5 Jul 2020 19:10:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fxIiE9JGdHUf for <bridge@lists.linux-foundation.org>;
 Sun,  5 Jul 2020 19:10:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by silver.osuosl.org (Postfix) with ESMTPS id 6BF53226F5
 for <bridge@lists.linux-foundation.org>; Sun,  5 Jul 2020 19:10:23 +0000 (UTC)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1593976221;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=bmg9uf6mYHkfh9utTYp2Nm+8c0oAt214toZIvaTa5jo=;
 b=PjLgNG9UZv+o/MTuf6PQhE/l0t88wYz61/qnGGPnCH4zPpWgk073ZxSkEBvjwiQVCsVMHO
 kd/NchNe1VK6ltz5xIgSRox0igKlcUsYpfWF7L5gEo1IVS2gWV3uYz4VlP4KrYZsEGh5qF
 FJ/Lhto/t+RSZmrneXJwYl3yeS26iDjswGtydlJHr0D1yvPJDw4rx0YFhaWZTbDqydIBII
 OVNFgYPNWSdH3abLjGoxJsccIMI3hm/atv/jVrmVNq2/Dfo0++/lq28tVbDTo6S4laZi6I
 TZirZcyo857w8BvLLCr7oh7XRl4qmjJfGgZdvAjDPI1f+ilnGgcPhZ/0YVrpPg==
To: netdev@vger.kernel.org
Date: Sun,  5 Jul 2020 21:10:17 +0200
Message-Id: <20200705191017.10546-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Martin Weinelt <martin@linuxlounge.net>,
 "David S . Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH net v2] bridge: mcast: Fix MLD2 Report IPv6 payload
	length check
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

Commit e57f61858b7c ("net: bridge: mcast: fix stale nsrcs pointer in
igmp3/mld2 report handling") introduced a bug in the IPv6 header payload
length check which would potentially lead to rejecting a valid MLD2 Report:

The check needs to take into account the 2 bytes for the "Number of
Sources" field in the "Multicast Address Record" before reading it.
And not the size of a pointer to this field.

Fixes: e57f61858b7c ("net: bridge: mcast: fix stale nsrcs pointer in igmp3/mld2 report handling")
Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
---
Changelog v2:
* updated commit message, the issue is accidentally rejcting a valid and
  not accepting an invalid MLD2 Report

 net/bridge/br_multicast.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 83490bf73a13..4c4a93abde68 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1000,21 +1000,21 @@ static int br_ip6_multicast_mld2_report(struct net_bridge *br,
 	num = ntohs(icmp6h->icmp6_dataun.un_data16[1]);
 	len = skb_transport_offset(skb) + sizeof(*icmp6h);
 
 	for (i = 0; i < num; i++) {
 		__be16 *_nsrcs, __nsrcs;
 		u16 nsrcs;
 
 		nsrcs_offset = len + offsetof(struct mld2_grec, grec_nsrcs);
 
 		if (skb_transport_offset(skb) + ipv6_transport_len(skb) <
-		    nsrcs_offset + sizeof(_nsrcs))
+		    nsrcs_offset + sizeof(__nsrcs))
 			return -EINVAL;
 
 		_nsrcs = skb_header_pointer(skb, nsrcs_offset,
 					    sizeof(__nsrcs), &__nsrcs);
 		if (!_nsrcs)
 			return -EINVAL;
 
 		nsrcs = ntohs(*_nsrcs);
 		grec_len = struct_size(grec, grec_src, nsrcs);
 
-- 
2.27.0

