Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 08717272268
	for <lists.bridge@lfdr.de>; Mon, 21 Sep 2020 13:27:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8814B85EAF;
	Mon, 21 Sep 2020 11:27:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YDmBtduVnFz6; Mon, 21 Sep 2020 11:27:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1705A85E9B;
	Mon, 21 Sep 2020 11:27:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 05739C0051;
	Mon, 21 Sep 2020 11:27:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6B3F7C0051
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:27:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 67A5D85E9F
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:27:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KuoTq0i2uPSc for <bridge@lists.linux-foundation.org>;
 Mon, 21 Sep 2020 11:27:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9F09B85E9B
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:27:41 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id i1so12459535edv.2
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 04:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=l5JzLPMeSD4caZ4wHfPPZr4JygseWiJe8yzApZMnhOA=;
 b=IO/2p5RcCNDAhlli9hKfGjfbtZuFnkT8KgLMs3Zi0sBS+7izwyFFKIaVLhXo2jDavO
 aoEEYw2QyNqWDGe/x7OPnD/9QBJfvvPFiXxf15E+zuXwDFWJwE4lrtDVWOkguhbDLiUd
 BuRkNDq2SCnQME1WJ59jlFoFsljjh3mNyRkNr5g5GduGropZaZJgTC56+NQgLt/8mnw8
 RohYNHKi6oyrwG3iTpwxSDTnd3gE9+zyyHWqIKjkp1ihPvqglXAxQgvTziuzRVW56YRf
 JsDt3q5DNNijbMoCDXAGy5/W/cwfA7Hyhw9R2zXd/rkefuyZ/BHP3vIN8yCXBNqixoiF
 OEbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=l5JzLPMeSD4caZ4wHfPPZr4JygseWiJe8yzApZMnhOA=;
 b=UdKC656Ai6PzuhSSg/PFQqnK9wW5Qw0IXYLJy0VOqsWKX5BihYezBxFs41+0wQF0FJ
 DW6GgwimurMfDkwRNb03si5Nd41P6VEV1MpSrjB4uZ+3dpxJ++b97LCYQuv6aoC7qir9
 XTh4JImAonnrZlY/ISNe+GeFsG+5Jttpb7gbJ77i+YwyeoT5UoJTrC+Bc4k5lIrDQ7ip
 tJnA4lSKIKOnMYABdzy3yhpUQfPWiVlbEC9e4QyT6BYJPXkpYdpOF/cj7jVV2dnZxcGt
 GD+7r3a0w4MdpRDfSt55aMBeg/Rk4ojZimHvyQgN/qg49eus5j1SoQ062FtDDCdkuD53
 mpSA==
X-Gm-Message-State: AOAM533BvuSoy9bml26Ba2K6fMJJLJr3K+U1Xvz4+qp8mlTuEa/ZP8rQ
 3DF8l1Lk6krOTFWkHGl4yEJR2FBgDWslwrY3lp6s6Q==
X-Google-Smtp-Source: ABdhPJysfH2xxkm4oCX4D6v/GyVAd55+R4mSt8TWxZIp/k7yyMuGN3xJOPu2C76NZipN5eJBHJ2r4Q==
X-Received: by 2002:adf:ec47:: with SMTP id w7mr55435821wrn.175.1600685779388; 
 Mon, 21 Sep 2020 03:56:19 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id s11sm19637727wrt.43.2020.09.21.03.56.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Sep 2020 03:56:18 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 21 Sep 2020 13:55:19 +0300
Message-Id: <20200921105526.1056983-10-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200921105526.1056983-1-razor@blackwall.org>
References: <20200921105526.1056983-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, bridge@lists.linux-foundation.org,
 davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 09/16] net: bridge: mcast: when
	igmpv3/mldv2 are enabled lookup (S, G) first, then (*, G)
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

From: Nikolay Aleksandrov <nikolay@nvidia.com>

If (S,G) entries are enabled (igmpv3/mldv2) then look them up first. If
there isn't a present (S,G) entry then try to find (*,G).

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index e1fb822b9ddb..4fd690bc848f 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -127,10 +127,28 @@ struct net_bridge_mdb_entry *br_mdb_get(struct net_bridge *br,
 	switch (skb->protocol) {
 	case htons(ETH_P_IP):
 		ip.dst.ip4 = ip_hdr(skb)->daddr;
+		if (br->multicast_igmp_version == 3) {
+			struct net_bridge_mdb_entry *mdb;
+
+			ip.src.ip4 = ip_hdr(skb)->saddr;
+			mdb = br_mdb_ip_get_rcu(br, &ip);
+			if (mdb)
+				return mdb;
+			ip.src.ip4 = 0;
+		}
 		break;
 #if IS_ENABLED(CONFIG_IPV6)
 	case htons(ETH_P_IPV6):
 		ip.dst.ip6 = ipv6_hdr(skb)->daddr;
+		if (br->multicast_mld_version == 2) {
+			struct net_bridge_mdb_entry *mdb;
+
+			ip.src.ip6 = ipv6_hdr(skb)->saddr;
+			mdb = br_mdb_ip_get_rcu(br, &ip);
+			if (mdb)
+				return mdb;
+			memset(&ip.src.ip6, 0, sizeof(ip.src.ip6));
+		}
 		break;
 #endif
 	default:
-- 
2.25.4

