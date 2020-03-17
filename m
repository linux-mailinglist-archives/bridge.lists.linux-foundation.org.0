Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC69188324
	for <lists.bridge@lfdr.de>; Tue, 17 Mar 2020 13:10:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6CDB1873B8;
	Tue, 17 Mar 2020 12:10:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EEo6coG9hUuz; Tue, 17 Mar 2020 12:10:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4DFEE870E5;
	Tue, 17 Mar 2020 12:09:38 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3E46DC013E;
	Tue, 17 Mar 2020 12:09:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 10883C013E
 for <bridge@lists.linux-foundation.org>; Tue, 17 Mar 2020 12:09:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0CB388939F
 for <bridge@lists.linux-foundation.org>; Tue, 17 Mar 2020 12:09:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ohiiQOGTqOoA for <bridge@lists.linux-foundation.org>;
 Tue, 17 Mar 2020 12:09:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 25FB48939E
 for <bridge@lists.linux-foundation.org>; Tue, 17 Mar 2020 12:09:36 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id x143so738104lff.12
 for <bridge@lists.linux-foundation.org>; Tue, 17 Mar 2020 05:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GmTVCUwzP2sd2RegUgToB05hVf+yztMs1t67J5XMm00=;
 b=eKcVYTc9qQYhkE1Vi/Z417hbDiE3GtdPrKO4Cc7c/JdRPco1QtbXeyKIXljk94UweA
 LTetgFdKrdZOFkrN7hdUXTWpNrqcvY5Pz4QRsrPOcGKC9x8gSPMQrBTChuqmK/PLJHmh
 vBSF/AmONyIBLVQh/KL85aHRRSZ45u20es0rk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GmTVCUwzP2sd2RegUgToB05hVf+yztMs1t67J5XMm00=;
 b=gCOaDRPyizfitKMQO3xRtu4i5CjAkuWUQE8InfHCPzUf5NJwq+/5EAQYcq1dR/SOTa
 eUhLE4FgCRXHMmMGFB+ygZ5TYDbV9ToSdJt9GJc+ZigSHiqAAaKJUc8RKRWO/YcN0l4y
 Y8m64A3VFL0dZ9TXc+by9f1gE5ni+aLcOT59h/wOAUJM4Xpy4xOQoQqb4y0aZtQcfQk2
 XUi9GVUuOIdgwkeftX+2ynAPxfoEFd8TuHqrOBuc9AeOAlf1V2ZKQjQb6OAKT0ieZzAT
 I1NSa3j0LRkhQZlr6i0rtrsgabrYuI8BfFSTpxXu8fCy5nWse4ADXhsXKNgGEEqKc+Zg
 Fjww==
X-Gm-Message-State: ANhLgQ3kPQy1LMmohJL6ZEFHu073rbyP7TCY9F70VOAFGGcpx6M3mdeP
 S1UFP066fxsGse+zPmuPHCC1IXlGW4w=
X-Google-Smtp-Source: ADFU+vugWFGwwJhKQb9eK8dDenWdlgqg6g78daI30SkEmNCvy1L/n8cHoAWcl04YtE4oKVZcRUEurw==
X-Received: by 2002:a05:6512:68b:: with SMTP id
 t11mr2772915lfe.214.1584446974151; 
 Tue, 17 Mar 2020 05:09:34 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id 23sm2389208lfa.28.2020.03.17.05.09.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2020 05:09:26 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Tue, 17 Mar 2020 14:08:33 +0200
Message-Id: <20200317120836.1765164-2-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200317120836.1765164-1-nikolay@cumulusnetworks.com>
References: <20200317120836.1765164-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 1/4] net: bridge: vlan options: rename
	br_vlan_opts_eq to br_vlan_opts_eq_range
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

It is more appropriate name as it shows the intent of why we need to
check the options' state. It also allows us to give meaning to the two
arguments of the function: the first is the current vlan (v_curr) being
checked if it could enter the range ending in the second one (range_end).

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_private.h      | 4 ++--
 net/bridge/br_vlan.c         | 2 +-
 net/bridge/br_vlan_options.c | 8 ++++----
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 5153ffe79a01..1f97703a52ff 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1199,8 +1199,8 @@ static inline void br_vlan_notify(const struct net_bridge *br,
 
 /* br_vlan_options.c */
 #ifdef CONFIG_BRIDGE_VLAN_FILTERING
-bool br_vlan_opts_eq(const struct net_bridge_vlan *v1,
-		     const struct net_bridge_vlan *v2);
+bool br_vlan_opts_eq_range(const struct net_bridge_vlan *v_curr,
+			   const struct net_bridge_vlan *range_end);
 bool br_vlan_opts_fill(struct sk_buff *skb, const struct net_bridge_vlan *v);
 size_t br_vlan_opts_nl_size(void);
 int br_vlan_process_options(const struct net_bridge *br,
diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index 6b5deca08b89..09bfda47fbbf 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -1694,7 +1694,7 @@ bool br_vlan_can_enter_range(const struct net_bridge_vlan *v_curr,
 {
 	return v_curr->vid - range_end->vid == 1 &&
 	       range_end->flags == v_curr->flags &&
-	       br_vlan_opts_eq(v_curr, range_end);
+	       br_vlan_opts_eq_range(v_curr, range_end);
 }
 
 static int br_vlan_dump_dev(const struct net_device *dev,
diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
index cd2eb194eb98..24cf2a621df9 100644
--- a/net/bridge/br_vlan_options.c
+++ b/net/bridge/br_vlan_options.c
@@ -7,11 +7,11 @@
 
 #include "br_private.h"
 
-/* check if the options between two vlans are equal */
-bool br_vlan_opts_eq(const struct net_bridge_vlan *v1,
-		     const struct net_bridge_vlan *v2)
+/* check if the options' state of v_curr allow it to enter the range */
+bool br_vlan_opts_eq_range(const struct net_bridge_vlan *v_curr,
+			   const struct net_bridge_vlan *range_end)
 {
-	return v1->state == v2->state;
+	return v_curr->state == range_end->state;
 }
 
 bool br_vlan_opts_fill(struct sk_buff *skb, const struct net_bridge_vlan *v)
-- 
2.24.1

