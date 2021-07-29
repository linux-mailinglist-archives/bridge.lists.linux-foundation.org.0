Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D913D9EF4
	for <lists.bridge@lfdr.de>; Thu, 29 Jul 2021 09:47:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D473608BF;
	Thu, 29 Jul 2021 07:47:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zLeji3ObkmtI; Thu, 29 Jul 2021 07:47:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 2C81F608C1;
	Thu, 29 Jul 2021 07:47:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E75F7C0022;
	Thu, 29 Jul 2021 07:47:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 80AA9C000E
 for <bridge@lists.linux-foundation.org>; Thu, 29 Jul 2021 07:47:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6C6B4608C1
 for <bridge@lists.linux-foundation.org>; Thu, 29 Jul 2021 07:47:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sSUTfASqhDIy for <bridge@lists.linux-foundation.org>;
 Thu, 29 Jul 2021 07:47:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from out0.migadu.com (out0.migadu.com [94.23.1.103])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9982B608BF
 for <bridge@lists.linux-foundation.org>; Thu, 29 Jul 2021 07:47:19 +0000 (UTC)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
 t=1627544832;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=XXimOoQI1d0O8kEjg5QeSeqgs9ahW1SYrIjYJUFIUFk=;
 b=ZxU028pHpwvCtyCHblNHopevwPhNISY8scbRLab5RO12ZB79ThzDFEUOMpoitqLZcEhufp
 MJ54uK4qZoUJk7QEp6rYStFMQ0B1Ub76M1kpRxuJ5cFk3knShr9ucpjgEh5Q7sc/GbEd7f
 EuIcMCBQb5gpowr3KfbDZ5/moNDpICM=
From: Yajun Deng <yajun.deng@linux.dev>
To: pablo@netfilter.org,
	kadlec@netfilter.org,
	fw@strlen.de
Date: Thu, 29 Jul 2021 15:46:58 +0800
Message-Id: <20210729074658.8538-1-yajun.deng@linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Migadu-Auth-User: yajun.deng@linux.dev
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, coreteam@netfilter.org,
 Yajun Deng <yajun.deng@linux.dev>, netfilter-devel@vger.kernel.org
Subject: [Bridge] [PATCH v2] netfilter: nf_conntrack_bridge: Fix memory leak
	when error
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

v2: keep this aligned with IPv6.

Fixes: 3c171f496ef5 ("netfilter: bridge: add connection tracking system")
Signed-off-by: Yajun Deng <yajun.deng@linux.dev>
---
 net/bridge/netfilter/nf_conntrack_bridge.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/net/bridge/netfilter/nf_conntrack_bridge.c b/net/bridge/netfilter/nf_conntrack_bridge.c
index 8d033a75a766..3cf5457919c6 100644
--- a/net/bridge/netfilter/nf_conntrack_bridge.c
+++ b/net/bridge/netfilter/nf_conntrack_bridge.c
@@ -88,6 +88,11 @@ static int nf_br_ip_fragment(struct net *net, struct sock *sk,
 
 			skb = ip_fraglist_next(&iter);
 		}
+
+		if (!err)
+			return 0;
+
+		kfree_skb_list(iter.frag_list);
 		return err;
 	}
 slow_path:
-- 
2.32.0

