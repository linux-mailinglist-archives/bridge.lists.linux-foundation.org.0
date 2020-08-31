Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48676257BB9
	for <lists.bridge@lfdr.de>; Mon, 31 Aug 2020 17:10:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C71B987ADB;
	Mon, 31 Aug 2020 15:10:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pAPLaI146sFj; Mon, 31 Aug 2020 15:10:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 883EE87B0A;
	Mon, 31 Aug 2020 15:10:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6FDD6C0051;
	Mon, 31 Aug 2020 15:10:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 15D1AC0051
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 15:10:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 111A087AC9
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 15:10:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sq1noLthhD95 for <bridge@lists.linux-foundation.org>;
 Mon, 31 Aug 2020 15:10:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5EE7487ADF
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 15:10:05 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id m6so4100577wrn.0
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 08:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yot6KwfYfw5rhPTVz46mBjLztxcuLpYs684NnYPwT1Q=;
 b=MkLoPcPvifPSOSyCHQhw2IRiKnQLQWjXYp5rBsgBXcZNFjsffeVX2njSRaz28Y60BR
 qX5d/mTzaSbWlPcj+84xYKqC1qUjoezWm+9R7/43z+y+fiatTq3nxfnEh1YJSMW2/b5f
 mhMlDXKet306eumKKlUVAJwYrfiybvriGp8Hw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yot6KwfYfw5rhPTVz46mBjLztxcuLpYs684NnYPwT1Q=;
 b=P1acaKEocDYaou/zHI5R9eC3peE8NBRxJ3Z3M6PwQxI5v66Q3/8CUC0cgH8uqYCoK9
 dPY7cGcPxCab1Udf52CUJQgOIWjyEqkLgwOReGTrB+SQtsUIQF99mjn67CnahfgR4Lhe
 pQdKvLv/PMmcM4fIFpOSlNIJKlI0lWwh/FkFzO7wATv3wAK55/XmJa4prsmRS94Mpxq7
 mRdaznghyimi6/bJHlYczuAcbMF8IDPFVv0GjtXKEgpcTkSMMr7FizHHri7GWS3w8XB8
 xxzs5sFnFS5TdwDLasNh9Xf59LY1dQDtz7pJtRg538A656PyJ41n6GIfHpiNbYWWm7e2
 MLAA==
X-Gm-Message-State: AOAM532fwi+EPX2dCrMKWCcltJM2x84YgQEFL5BbEi0Ivwzuw5dT5yWu
 yiWu50O8nEt5NL+nwg5dhVU5eg==
X-Google-Smtp-Source: ABdhPJzvZ1spZ03Pt59fKKNQ5fnVP7a+aXbzRS3TzyftN569erw2414bOblQN4M2uxJJbSas8KAMjA==
X-Received: by 2002:adf:ea4f:: with SMTP id j15mr2026650wrn.295.1598886603930; 
 Mon, 31 Aug 2020 08:10:03 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id f6sm14181636wme.32.2020.08.31.08.10.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Aug 2020 08:10:03 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Mon, 31 Aug 2020 18:08:39 +0300
Message-Id: <20200831150845.1062447-10-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200831150845.1062447-1-nikolay@cumulusnetworks.com>
References: <20200831150845.1062447-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 09/15] net: bridge: mcast: delete expired
	port groups without srcs
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
index cdd732c91d1f..1dc0964ea3b5 100644
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

