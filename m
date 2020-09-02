Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 883E525AA3D
	for <lists.bridge@lfdr.de>; Wed,  2 Sep 2020 13:29:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 39F76866C9;
	Wed,  2 Sep 2020 11:29:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZygdH5N0Bk23; Wed,  2 Sep 2020 11:29:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5F10C86670;
	Wed,  2 Sep 2020 11:29:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4C01AC0052;
	Wed,  2 Sep 2020 11:29:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 41DCEC0052
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 11:29:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 316CB86644
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 11:29:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a8Z6SdK0kbll for <bridge@lists.linux-foundation.org>;
 Wed,  2 Sep 2020 11:29:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 82D9986422
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 11:29:22 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id j2so4836972wrx.7
 for <bridge@lists.linux-foundation.org>; Wed, 02 Sep 2020 04:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1xzox0HjSFnJFTMxOWtROlHBfTBMie+4N7AnHWjIyZM=;
 b=L6onOfTbzpay30OwwGg3IPcHaxE6d6LIyT3W+yvrZkoAFdhvAS6+k/NLY7IMoA17v7
 dtE+Gvy69CJwftPTFsZUS/VMMgi7rV9/jdHrOqs8fni2FFwbb9U4AIW/jYFftY7aDRd6
 El/asmGfPS8cdjhnuVzmPsI4Uq2mIIl9nXass=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1xzox0HjSFnJFTMxOWtROlHBfTBMie+4N7AnHWjIyZM=;
 b=hkoOy2h4jT6jVAcSXoJxa+PNhcIR+yrGcF6PQJhfJyXrhSbL/izVBhXnjU2vPNBjjx
 CrThsssZII3wzg37gCWpWwjwPYrDN3lXU0fKY6R81WtEF3aIMPz0jU3psql2SGJvQfje
 Bp+Sj4rLgtYECLt8yf7k2lbxlZ5iuVqa3POuEbKGnJFWHMqohfd4diS0bPUA4y2pyccJ
 Lf7JJY7oqO0b05XECv9p1SUyFGhaV0eKw5k8syNkXG386KlF5dY8Mrr21bJIYYh2dq6F
 STymSj+RHQEsV1SN5U8CGrQ72T9q2WDlGfbqnbANP3RW7TcTOCoqgJAjZhjhvciTX/Ac
 IlvQ==
X-Gm-Message-State: AOAM531y4LIzKhzuboFCyo1M+aPTNXeMSVkHBjNQL+2cff2G+5Ce3cfG
 9i1gBDbArTT8gmujYMyoN6P53g==
X-Google-Smtp-Source: ABdhPJxNR+Dh/hCzJXb2xVVsTj6lnlI25agF3VeDIbDMoJyG+2SG6lIPvj2+KQ5vMWWV6KBpzXQ42A==
X-Received: by 2002:adf:ea01:: with SMTP id q1mr5257060wrm.97.1599046161074;
 Wed, 02 Sep 2020 04:29:21 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id 5sm5985172wmz.22.2020.09.02.04.29.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Sep 2020 04:29:20 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Wed,  2 Sep 2020 14:25:23 +0300
Message-Id: <20200902112529.1570040-10-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200902112529.1570040-1-nikolay@cumulusnetworks.com>
References: <20200902112529.1570040-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v2 09/15] net: bridge: mcast: delete
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
index 0ec43d549137..aabb1fcc7fa1 100644
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

