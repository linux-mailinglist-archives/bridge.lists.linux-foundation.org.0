Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F712BB328
	for <lists.bridge@lfdr.de>; Fri, 20 Nov 2020 19:37:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0610387252;
	Fri, 20 Nov 2020 18:37:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mgoGL5BqJija; Fri, 20 Nov 2020 18:37:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5F08587480;
	Fri, 20 Nov 2020 18:37:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 38B33C0891;
	Fri, 20 Nov 2020 18:37:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 679CBC0891
 for <bridge@lists.linux-foundation.org>; Fri, 20 Nov 2020 18:37:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5C7D887221
 for <bridge@lists.linux-foundation.org>; Fri, 20 Nov 2020 18:37:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lh4b2wrKY2us for <bridge@lists.linux-foundation.org>;
 Fri, 20 Nov 2020 18:37:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E9968871BA
 for <bridge@lists.linux-foundation.org>; Fri, 20 Nov 2020 18:37:53 +0000 (UTC)
Received: from embeddedor (187-162-31-110.static.axtel.net [187.162.31.110])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9D33124181;
 Fri, 20 Nov 2020 18:37:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605897473;
 bh=Zo92PHYB4DYGUeyh+eE6MjbS6uPNuituCK2u+6HGrOQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HxI/8nMy8C6+NR7K+xYFtohO6pM7q1XS9CuB3b3oAK2pv+uQ8NTmh9zt1o0SkB7hp
 dtgiHvaGHkKxiD7vP/m/7QNFcPSBEOtCpkDJfgZCiS8WJ9V8u6mVQat3rFC/1vbNC/
 VMXrfRGWj7O+1m++EWnWSuT7FeYM3EiXXEBjGTAg=
Date: Fri, 20 Nov 2020 12:37:59 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <44b2e50d345f1319071a53fb191ac0a0cf3fcf37.1605896060.git.gustavoars@kernel.org>
References: <cover.1605896059.git.gustavoars@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1605896059.git.gustavoars@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
Subject: [Bridge] [PATCH 106/141] net: bridge: Fix fall-through warnings for
	Clang
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
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 net/bridge/br_input.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index 59a318b9f646..8db219d979c5 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -148,6 +148,7 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 		break;
 	case BR_PKT_UNICAST:
 		dst = br_fdb_find_rcu(br, eth_hdr(skb)->h_dest, vid);
+		break;
 	default:
 		break;
 	}
-- 
2.27.0

