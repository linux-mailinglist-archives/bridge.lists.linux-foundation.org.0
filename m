Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CACB13D54DD
	for <lists.bridge@lfdr.de>; Mon, 26 Jul 2021 10:05:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 855C382993;
	Mon, 26 Jul 2021 08:04:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 57Bo7kUnuLkz; Mon, 26 Jul 2021 08:04:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 373FD82C91;
	Mon, 26 Jul 2021 08:04:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 33DF2C000E;
	Mon, 26 Jul 2021 08:04:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 835DAC000E
 for <bridge@lists.linux-foundation.org>; Mon, 26 Jul 2021 04:05:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5E2AD81C19
 for <bridge@lists.linux-foundation.org>; Mon, 26 Jul 2021 04:05:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2xgPPTaFwPix for <bridge@lists.linux-foundation.org>;
 Mon, 26 Jul 2021 04:05:18 +0000 (UTC)
X-Greylist: delayed 00:07:53 by SQLgrey-1.8.0
Received: from out0.migadu.com (out0.migadu.com [94.23.1.103])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E55C481BB0
 for <bridge@lists.linux-foundation.org>; Mon, 26 Jul 2021 04:05:17 +0000 (UTC)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
 t=1627271839;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=42/x3cunuNFrK5WXYNzv0PumgHH417h+iX4VfozjEqg=;
 b=TTEDvxwLws0uMFv8PMZ4WRAA59G66FCBFtiLFTvnsFeltMxFuQk7l7cp4tACqzT9nHNY5g
 M2zbbPyGukGSDcBtLh3VIHQ8lk+cSHfB5YjoJ9enWMDamCcWT0AnAWDS7+WhLFcSTcjQg0
 5KGfiyhcz2rKOta51MylqUExs8RZlTY=
From: Yajun Deng <yajun.deng@linux.dev>
To: pablo@netfilter.org, kadlec@netfilter.org, fw@strlen.de, roopa@nvidia.com,
 nikolay@nvidia.com, davem@davemloft.net, kuba@kernel.org
Date: Mon, 26 Jul 2021 11:57:02 +0800
Message-Id: <20210726035702.11964-1-yajun.deng@linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Migadu-Auth-User: yajun.deng@linux.dev
X-Mailman-Approved-At: Mon, 26 Jul 2021 08:04:54 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, coreteam@netfilter.org,
 Yajun Deng <yajun.deng@linux.dev>, netfilter-devel@vger.kernel.org
Subject: [Bridge] [PATCH] netfilter: nf_conntrack_bridge: Fix not free when
	error
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

It should be added kfree_skb_list() when err is not equal to zero
in nf_br_ip_fragment().

Fixes: 3c171f496ef5 ("netfilter: bridge: add connection tracking system")
Signed-off-by: Yajun Deng <yajun.deng@linux.dev>
---
 net/bridge/netfilter/nf_conntrack_bridge.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/net/bridge/netfilter/nf_conntrack_bridge.c b/net/bridge/netfilter/nf_conntrack_bridge.c
index 8d033a75a766..059f53903eda 100644
--- a/net/bridge/netfilter/nf_conntrack_bridge.c
+++ b/net/bridge/netfilter/nf_conntrack_bridge.c
@@ -83,12 +83,16 @@ static int nf_br_ip_fragment(struct net *net, struct sock *sk,
 
 			skb->tstamp = tstamp;
 			err = output(net, sk, data, skb);
-			if (err || !iter.frag)
-				break;
-
+			if (err) {
+				kfree_skb_list(iter.frag);
+				return err;
+			}
+
+			if (!iter.frag)
+				return 0;
+
 			skb = ip_fraglist_next(&iter);
 		}
-		return err;
 	}
 slow_path:
 	/* This is a linearized skbuff, the original geometry is lost for us.
-- 
2.32.0

