Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CBD5D7E5
	for <lists.bridge@lfdr.de>; Tue,  2 Jul 2019 23:50:37 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1EF43F84;
	Tue,  2 Jul 2019 21:48:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2222C19CA
	for <bridge@lists.linux-foundation.org>;
	Tue,  2 Jul 2019 12:05:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9C74B87A
	for <bridge@lists.linux-foundation.org>;
	Tue,  2 Jul 2019 12:05:06 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id c2so17506084wrm.8
	for <bridge@lists.linux-foundation.org>;
	Tue, 02 Jul 2019 05:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=GSx4QIELcR9xkyWBBehy9lJ5hvGJj8dGQFampul0IVo=;
	b=c07Tl1f1180GeriB7zwf34KMNMsCmC/35YWN2Xf7IiGiK2diGwyj2aLaRuQ5b1sDmD
	g/fu1pIACSjwIQd/ayCbGYfovi7AWeJm+ZOPyfiW1/RtwRVvY2pXOW0i+tY3uzayykT2
	EH6Tnx3B37L0IDhBlr2e1XLQgEH67keGETSCA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=GSx4QIELcR9xkyWBBehy9lJ5hvGJj8dGQFampul0IVo=;
	b=hjCzY8aKEU75R3U/8oyP8imNnyq2a2raimL+eWzFcodSGC3KmsrFvS+A/V6iOw2Hdp
	jVRBf4pv2KHUUknMRB/ZA0OJyYakJAqKG9AFO20eV05fHkGM6Cr4iFU9tvzEpeiLSQiG
	8Ymn8Ps2wQaEttrdg4rVMairlO7pQtXwXwuEqSo63jSAeqJ1LlqYW//OCIEA5h83f4AF
	hhrSQjSM/ym2TLYTLKQW01BDFN9Z23NxpQpYI6rq7ki7q61+RugT9IGZ81QdufoR/Fn4
	sq/Qg6/ML7bEyCO6BeR3fB+35RBf5UfFnV35meqznMIYWw/Rnz7L5qfLFlCgYTn+4RH4
	Q4xw==
X-Gm-Message-State: APjAAAU6oW2VglTWvA0D3YfiQjSs/m2lByXFurHuhkgGwQLyOWXEL8wD
	oyta0YoDyskmpc9N0fvtgzSLbw==
X-Google-Smtp-Source: APXvYqzxxVjoGTiFJtaahtI1xEpd1fIsUsn8/FDyH+w3WSKMF+W5Sor6PwOTl0I1q/PCDNIvh61wcw==
X-Received: by 2002:adf:b69a:: with SMTP id j26mr15838677wre.93.1562069105328; 
	Tue, 02 Jul 2019 05:05:05 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
	[84.238.136.197])
	by smtp.gmail.com with ESMTPSA id x5sm2542655wmf.33.2019.07.02.05.05.04
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 02 Jul 2019 05:05:04 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Tue,  2 Jul 2019 15:00:20 +0300
Message-Id: <20190702120021.13096-4-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190702120021.13096-1-nikolay@cumulusnetworks.com>
References: <20190702120021.13096-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: martin@linuxlounge.net, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, yoshfuji@linux-ipv6.org,
	Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, davem@davemloft.net
Subject: [Bridge] [PATCH net 3/4] net: bridge: don't cache ether dest
	pointer on input
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

We would cache ether dst pointer on input in br_handle_frame_finish but
after the neigh suppress code that could lead to a stale pointer since
both ipv4 and ipv6 suppress code do pskb_may_pull. This means we have to
always reload it after the suppress code so there's no point in having
it cached just retrieve it directly.

Fixes: 057658cb33fbf ("bridge: suppress arp pkts on BR_NEIGH_SUPPRESS ports")
Fixes: ed842faeb2bd ("bridge: suppress nd pkts on BR_NEIGH_SUPPRESS ports")
Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_input.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index 21b74e7a7b2f..52c712984cc7 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -74,7 +74,6 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 	struct net_bridge_fdb_entry *dst = NULL;
 	struct net_bridge_mdb_entry *mdst;
 	bool local_rcv, mcast_hit = false;
-	const unsigned char *dest;
 	struct net_bridge *br;
 	u16 vid = 0;
 
@@ -92,10 +91,9 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 		br_fdb_update(br, p, eth_hdr(skb)->h_source, vid, false);
 
 	local_rcv = !!(br->dev->flags & IFF_PROMISC);
-	dest = eth_hdr(skb)->h_dest;
-	if (is_multicast_ether_addr(dest)) {
+	if (is_multicast_ether_addr(eth_hdr(skb)->h_dest)) {
 		/* by definition the broadcast is also a multicast address */
-		if (is_broadcast_ether_addr(dest)) {
+		if (is_broadcast_ether_addr(eth_hdr(skb)->h_dest)) {
 			pkt_type = BR_PKT_BROADCAST;
 			local_rcv = true;
 		} else {
@@ -145,7 +143,7 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 		}
 		break;
 	case BR_PKT_UNICAST:
-		dst = br_fdb_find_rcu(br, dest, vid);
+		dst = br_fdb_find_rcu(br, eth_hdr(skb)->h_dest, vid);
 	default:
 		break;
 	}
-- 
2.21.0

