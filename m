Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EB825F6FD
	for <lists.bridge@lfdr.de>; Mon,  7 Sep 2020 12:00:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9BC8585E83;
	Mon,  7 Sep 2020 10:00:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o9u0tF24-1Pu; Mon,  7 Sep 2020 10:00:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9EE2F85E5C;
	Mon,  7 Sep 2020 10:00:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 93D6FC0051;
	Mon,  7 Sep 2020 10:00:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5EA72C0051
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 10:00:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5A0A98670A
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 10:00:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UAEnx92k1InT for <bridge@lists.linux-foundation.org>;
 Mon,  7 Sep 2020 10:00:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F0CA9866F4
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 10:00:12 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id g4so15150550wrs.5
 for <bridge@lists.linux-foundation.org>; Mon, 07 Sep 2020 03:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nDPaNY6uULGl6w+zVk/xRhftdiMNqXaciWDwCjq2kwk=;
 b=bVyxGhCWIZ9VYIj9RlCNV77IOzk3rO8UCxYK4QMPM68d7kuxLho76goHZ2ZQSEMcP0
 LcyCh6vTxgJl9qgN5USGI/zCz67NR0w+hpKgILoKf+2CNpUU+33BJv/xPbsMUIrKwLPf
 m3etfqQvDVyuAsN7qoDah3eylovclJsJr6kMg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nDPaNY6uULGl6w+zVk/xRhftdiMNqXaciWDwCjq2kwk=;
 b=OVqMavyZ5UmPzK0IUiz4EsnMsSj1GtkkBuoV7FBuZhgoOt/E/NPVSwRmG5dueDdorj
 KXHlPEChvGERmqzFskxMWXoAD4Q2RNiPMwvYD0ZKB2cPsRr/vDj0lYxn0KCOHQD72tan
 Sz3CiUhQYvNVlVm+C64uVAHWZPRgDcn/d1kPDxBsV+75sDT09i/+u1NzJdtsRzTCIg7+
 m4fZaR+cMCSj0AwmuzbcJfeU0zHj77ZeWG+tiVUcqcN8UwKCAiCKlZjIDnVRUb02xxR5
 Gs2qK7kdNpj//HySyglc7dlQx0qwQebRkK2JazjMZjxDClNxGuI3eKxsnFJWcUY/5/fe
 y3dw==
X-Gm-Message-State: AOAM530KtDnwQIGURR4YN4q9OgtsJ+CP1UAfR7zdXOpLwj9feO1UOcGL
 FpzsvX9+778xPW0DQ5z8QjAPOQ==
X-Google-Smtp-Source: ABdhPJz2C0FszsgBZ7NbUgMCJvp18aUjmH/YzNyVi0xwqtj1p1FInLGmU5VY+WhcgshjrmpiiMWAKA==
X-Received: by 2002:a05:6000:11cd:: with SMTP id
 i13mr1714408wrx.140.1599472811288; 
 Mon, 07 Sep 2020 03:00:11 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id 9sm6686289wmf.7.2020.09.07.03.00.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Sep 2020 03:00:10 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Mon,  7 Sep 2020 12:56:05 +0300
Message-Id: <20200907095619.11216-2-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200907095619.11216-1-nikolay@cumulusnetworks.com>
References: <20200907095619.11216-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v4 01/15] net: bridge: mdb: arrange
	internal structs so fast-path fields are close
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

Before this patch we'd need 2 cache lines for fast-path, now all used
fields are in the first cache line.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_private.h | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index baa1500f384f..357b6905ecef 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -217,23 +217,27 @@ struct net_bridge_fdb_entry {
 struct net_bridge_port_group {
 	struct net_bridge_port		*port;
 	struct net_bridge_port_group __rcu *next;
-	struct hlist_node		mglist;
-	struct rcu_head			rcu;
-	struct timer_list		timer;
 	struct br_ip			addr;
 	unsigned char			eth_addr[ETH_ALEN] __aligned(2);
 	unsigned char			flags;
+
+	struct timer_list		timer;
+	struct hlist_node		mglist;
+
+	struct rcu_head			rcu;
 };
 
 struct net_bridge_mdb_entry {
 	struct rhash_head		rhnode;
 	struct net_bridge		*br;
 	struct net_bridge_port_group __rcu *ports;
-	struct rcu_head			rcu;
-	struct timer_list		timer;
 	struct br_ip			addr;
 	bool				host_joined;
+
+	struct timer_list		timer;
 	struct hlist_node		mdb_node;
+
+	struct rcu_head			rcu;
 };
 
 struct net_bridge_port {
-- 
2.25.4

