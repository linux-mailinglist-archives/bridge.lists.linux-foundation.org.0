Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E287E33357B
	for <lists.bridge@lfdr.de>; Wed, 10 Mar 2021 06:41:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 02E426F69D;
	Wed, 10 Mar 2021 05:41:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id enZ6tgNsftQ5; Wed, 10 Mar 2021 05:41:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTP id 669496F6A3;
	Wed, 10 Mar 2021 05:41:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 13FDDC0010;
	Wed, 10 Mar 2021 05:41:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E3A2CC0001
 for <bridge@lists.linux-foundation.org>; Wed, 10 Mar 2021 05:41:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CA7C86F69D
 for <bridge@lists.linux-foundation.org>; Wed, 10 Mar 2021 05:41:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l_v5zi-uuS8g for <bridge@lists.linux-foundation.org>;
 Wed, 10 Mar 2021 05:41:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 106CB6F69C
 for <bridge@lists.linux-foundation.org>; Wed, 10 Mar 2021 05:41:18 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9370E64FE3;
 Wed, 10 Mar 2021 05:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615354878;
 bh=2ghYgVS5Shi73FGvOYYFayRncHNij4Rvm0AP/O4q19U=;
 h=Date:From:To:Cc:Subject:From;
 b=CXfHEBsPkJGF3emkhgbN/jg3/rB+AsSJmHESVvkovzUD8G4OmFvIB4qh/AxyAG+Zj
 GzvxBhUybD/ibtjIHyZx3SmM7MzfJfQ+PfL4HqLFyjgTuQCSsf6K6CGLkhPFTH9AoR
 hv3GhEWfI4aqa7aBsnQokp6TJfBS4Jglmq+WcBJ90JNAjHVSbN8ch4vNM/SWNwDz5X
 sP8w3sNxciyp0pbO4kYBsvS5OBE8PFYsDk/ExtlvBKKtEI9a9VXr8ntVQ6xA89SitY
 +/g8Dk9IYVe32FSvtWmcR8PnTNmQlE+hGBXs9eX7b1tQDRZrSPtJi06mhgAY9Kwobo
 lhIqObbNlIDhw==
Date: Tue, 9 Mar 2021 23:41:15 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <20210310054115.GA285785@embeddedor>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: [Bridge] [PATCH RESEND][next] net: bridge: Fix fall-through
	warnings for Clang
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

In preparation to enable -Wimplicit-fallthrough for Clang, fix a warning
by explicitly adding a break statement instead of letting the code fall
through to the next case.

Link: https://github.com/KSPP/linux/issues/115
Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 Changes in RESEND:
 - None. Resending now that net-next is open.

 net/bridge/br_input.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index 222285d9dae2..8875e953ac53 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -144,6 +144,7 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 		break;
 	case BR_PKT_UNICAST:
 		dst = br_fdb_find_rcu(br, eth_hdr(skb)->h_dest, vid);
+		break;
 	default:
 		break;
 	}
-- 
2.27.0

