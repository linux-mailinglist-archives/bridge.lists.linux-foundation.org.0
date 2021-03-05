Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 153D432E317
	for <lists.bridge@lfdr.de>; Fri,  5 Mar 2021 08:40:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 73C3284339;
	Fri,  5 Mar 2021 07:40:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ycVvA_AWkFcy; Fri,  5 Mar 2021 07:40:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD4EA844DE;
	Fri,  5 Mar 2021 07:40:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 95738C0010;
	Fri,  5 Mar 2021 07:40:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 26F2AC0001
 for <bridge@lists.linux-foundation.org>; Fri,  5 Mar 2021 07:40:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0DB466F510
 for <bridge@lists.linux-foundation.org>; Fri,  5 Mar 2021 07:40:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DSN_uGrXuPdg for <bridge@lists.linux-foundation.org>;
 Fri,  5 Mar 2021 07:40:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 487DB6F506
 for <bridge@lists.linux-foundation.org>; Fri,  5 Mar 2021 07:40:42 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7D15764FFD;
 Fri,  5 Mar 2021 07:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614930041;
 bh=TMB+VspMfpQaDgELNuFuzkz3wGytJH9MpU0ojKUhGRA=;
 h=Date:From:To:Cc:Subject:From;
 b=FX7kxcoCvRHixXWJCJ1unVen3UYt+5Ruvv+O4A6SbEbJVfo2f8eaSlKGjpUnzldtF
 /4NDv9HiMNdDwY1zfUfUfGqJeXsk0l9wK5aaV64IM2eAV5pTjLXXNkBj3/6m3D6rM0
 R0X1sNGSwS0pvHRVk/jxTv4XxGBkMZesB+O5aFazEbC9xG7h5lLJFcMk+y48pug4kH
 utTF86JxH6WK/N1/60TsXJra+OAHPb+QP4yZIWDlP9Fv7qhalkXpB5CIJgvTV0sr/D
 AVoacwLB136wKYqkyno53ZLntkReXxgzGysn8mwIcYsUBcU4rHmDJr9Sg7w5LH5hP5
 c1zOXEA/rHV/Q==
Date: Fri, 5 Mar 2021 01:40:38 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <20210305074038.GA122888@embeddedor>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: [Bridge] [PATCH][next] net: bridge: Fix fall-through warnings for
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
Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
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

