Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8509425E671
	for <lists.bridge@lfdr.de>; Sat,  5 Sep 2020 10:25:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 842CB20553;
	Sat,  5 Sep 2020 08:25:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5AF2BqxSgWH0; Sat,  5 Sep 2020 08:25:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id E69562E1F2;
	Sat,  5 Sep 2020 08:24:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D997AC0052;
	Sat,  5 Sep 2020 08:24:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8D89AC0052
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:24:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 758762000F
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:24:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CPMxMtYMQYCE for <bridge@lists.linux-foundation.org>;
 Sat,  5 Sep 2020 08:24:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 8101520774
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:24:55 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id z9so8837904wmk.1
 for <bridge@lists.linux-foundation.org>; Sat, 05 Sep 2020 01:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lDPD0SBTXMHitArGqEGbSSR6qohaslJSZJZXxjRVv1U=;
 b=YhhLlt0uqbMasWSbMwK/dPayNdtOXNFqS3OPtwC1ODv9AlY1KvuDNDgIY5zvZxb2W5
 HWI+UwI3i4TT6DpjxSGr91vrYK542xNVV6tvdZ7P9F/vksLJy8H3fR+2DN38LYbch7Ry
 i3IdqngnHJvYqZIRtrH9nCbHKA+yRUj9uFZoQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lDPD0SBTXMHitArGqEGbSSR6qohaslJSZJZXxjRVv1U=;
 b=hUXdS2DDEcGHnTAPIqwLuMQzgaAEJBi7QEYw8E/HcITOTO4BnM+tlpQb8cLyE+sD0K
 G0FvY05PkVd9C3zE2ou3wuInBz56C5lf4ubtgqqYYvIXDr1lYpk8vC+VDeD1hgPTymn4
 Pqo1UMO5s9BJ6kC/UsiawgkUB0hcRCFwaJ6IBMIsSvBdfP7ZWVJXCz1JoY7u7Qez+hap
 PRJBhZqpBMzp2hMj7MWYU3aRV3RFXO9Mx5KCnTBQMHCw5gwzoh/0rvzl4ZKCibRwnOUa
 6pQD8xQAgldAVsOasNw1PsqpJD4Fbag0AQ11x90Plog7FiNuFUJFpS8XGG8eClKxL8ju
 r3RA==
X-Gm-Message-State: AOAM5325lW83XHDj8OIfP8PFYwgroFEww4rOlkWU/pbKbHpBUyMwZrjL
 tPs12KHsNXbc3PqDvmp6oM+PWw==
X-Google-Smtp-Source: ABdhPJwNnJKAcEne+sZwO+Lcw91MMwQ3J6WfYhkxwp/zjL2QkItA2OiHQRqGVbUZdTo9kFTw4jnebg==
X-Received: by 2002:a05:600c:24d3:: with SMTP id
 19mr10851011wmu.98.1599294293980; 
 Sat, 05 Sep 2020 01:24:53 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id m185sm17169296wmf.5.2020.09.05.01.24.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Sep 2020 01:24:53 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Sat,  5 Sep 2020 11:24:04 +0300
Message-Id: <20200905082410.2230253-10-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200905082410.2230253-1-nikolay@cumulusnetworks.com>
References: <20200905082410.2230253-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v3 09/15] net: bridge: mcast: delete
	expired port groups without srcs
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

If an expired port group is in EXCLUDE mode, then we have to turn it
into INCLUDE mode, remove all srcs with zero timer and finally remove
the group itself if there are no more srcs with an active timer.
For IGMPv2 use there would be no sources, so this will reduce to just
removing the group as before.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_multicast.c | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index a54d5fb810d1..e8d2f653344f 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -222,15 +222,34 @@ static void br_multicast_find_del_pg(struct net_bridge *br,
 static void br_multicast_port_group_expired(struct timer_list *t)
 {
 	struct net_bridge_port_group *pg = from_timer(pg, t, timer);
+	struct net_bridge_group_src *src_ent;
 	struct net_bridge *br = pg->port->br;
+	struct hlist_node *tmp;
+	bool changed;
 
 	spin_lock(&br->multicast_lock);
 	if (!netif_running(br->dev) || timer_pending(&pg->timer) ||
 	    hlist_unhashed(&pg->mglist) || pg->flags & MDB_PG_FLAGS_PERMANENT)
 		goto out;
 
-	br_multicast_find_del_pg(br, pg);
+	changed = !!(pg->filter_mode == MCAST_EXCLUDE);
+	pg->filter_mode = MCAST_INCLUDE;
+	hlist_for_each_entry_safe(src_ent, tmp, &pg->src_list, node) {
+		if (!timer_pending(&src_ent->timer)) {
+			br_multicast_del_group_src(src_ent);
+			changed = true;
+		}
+	}
 
+	if (hlist_empty(&pg->src_list)) {
+		br_multicast_find_del_pg(br, pg);
+	} else if (changed) {
+		struct net_bridge_mdb_entry *mp = br_mdb_ip_get(br, &pg->addr);
+
+		if (WARN_ON(!mp))
+			goto out;
+		br_mdb_notify(br->dev, mp, pg, RTM_NEWMDB);
+	}
 out:
 	spin_unlock(&br->multicast_lock);
 }
-- 
2.25.4

