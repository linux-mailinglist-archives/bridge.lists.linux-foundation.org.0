Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 586F42FD3DC
	for <lists.bridge@lfdr.de>; Wed, 20 Jan 2021 16:23:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 88CFA8604A;
	Wed, 20 Jan 2021 15:23:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ldg1__YT_5X0; Wed, 20 Jan 2021 15:23:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AA21E85FEF;
	Wed, 20 Jan 2021 15:23:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8C1FCC1DA7;
	Wed, 20 Jan 2021 15:23:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EA2D2C013A
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 15:23:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D518485CD5
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 15:23:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hn0Iy8lM5a84 for <bridge@lists.linux-foundation.org>;
 Wed, 20 Jan 2021 15:23:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 45EA385CA8
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 15:23:44 +0000 (UTC)
Received: by mail-lf1-f48.google.com with SMTP id h7so5363593lfc.6
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 07:23:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Qa2CnxrmfdpWhxwQfNcz/QRx0LAMcqvtJo3oWicVNSc=;
 b=zXXHq7R/yS26GFBFwlhLMCwY2QJ6QfAT6vp6c8h2+sA2NkO70FVxe2VxT/KvT2isvj
 xt5l/rUzNzrkKVk2HYgFBCuvJtQBc4LDSrClvDckfvV4yoYSctMTYDdIieyJFMOQT3Su
 4wK/6NQUapdz4d4tnn6aS7B5CdnJqIiDJzT4x4Y7Y7UDAabstt2pI4pNXF0/kqZOF6d4
 mpdFcAS6dIgX/twCCcqUX0jTQGMbJmQXQU1AbySYTjJGutXLgzffldqQLJffQiPYUIX1
 FK9CD5YMEJuZMIrBCtysDcHxhN5rGV4m1NRexk63viIvBj4OMVN9bh2lPl8vYzxyBbBP
 mE+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qa2CnxrmfdpWhxwQfNcz/QRx0LAMcqvtJo3oWicVNSc=;
 b=mWruWEz5w2QFWXpP9kHnCkUinEhIns/tx7IZTjcy0DN4+nLgvpoYh1eRjkFQxgC02m
 SqqL/Lae/ElnBBR+L+aWmqXqmq4tx+z9GZguhL4DSAvqKm2TKAABJmIlR3DTQhqldpff
 JT+/XkASDg98gExIlb7yRzny9ckEjFnoX3LVDVnJ+Jwl7lkPXKI8wa3a/WI3KOyTRk9/
 fS/Im7nzmufXi+QMDMIN6GlkSMS+ek/mqtdJR6V5PRpa5pRW3nTUhnlaxORfMqCOBTpG
 s1wsWAe0oUyWtfVGVqFIzXVz8T8Q+RQ5AZCi5vEse88801ooVvnG058FYoKXDZsXtNxc
 By+Q==
X-Gm-Message-State: AOAM5339MkXfKl9eH0OcorqmfFTTjtHitQcVmx3Y4UxypymOB+fMbwJE
 M4+x+X9Gzwl/zYyuYDgzADDKqQlkqVZOsj4S3Xo=
X-Google-Smtp-Source: ABdhPJxmT9ZM1e1S1IYSplPXmd+BQLBx7gybs5NRVmo4HVJ+nYOnaVqmzhxnzTBMFduMMwOvD9GCVQ==
X-Received: by 2002:a17:906:6b91:: with SMTP id
 l17mr6029683ejr.171.1611154395907; 
 Wed, 20 Jan 2021 06:53:15 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x17sm1239349edq.77.2021.01.20.06.53.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Jan 2021 06:53:15 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Wed, 20 Jan 2021 16:52:00 +0200
Message-Id: <20210120145203.1109140-12-razor@blackwall.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210120145203.1109140-1-razor@blackwall.org>
References: <20210120145203.1109140-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 11/14] net: bridge: multicast: optimize
	TO_INCLUDE EHT timeouts
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

This is an optimization specifically for TO_INCLUDE which sends queries
for the older entries and thus lowers the S,G timers to LMQT. If we have
the following situation for a group in either include or exclude mode:
 - host A was interested in srcs X and Y, but is timing out
 - host B sends TO_INCLUDE src Z, the bridge lowers X and Y's timeouts
   to LMQT
 - host B sends BLOCK src Z after LMQT time has passed
 => since host B is the last host we can delete the group, but if we
    still have host A's EHT entries for X and Y (i.e. if they weren't
    lowered to LMQT previously) then we'll have to wait another LMQT
    time before deleting the group, with this optimization we can
    directly remove it regardless of the group mode as there are no more
    interested hosts

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast_eht.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/net/bridge/br_multicast_eht.c b/net/bridge/br_multicast_eht.c
index 861ae63f4a1c..fee3060d0495 100644
--- a/net/bridge/br_multicast_eht.c
+++ b/net/bridge/br_multicast_eht.c
@@ -656,6 +656,8 @@ static bool __eht_inc_exc(struct net_bridge_port_group *pg,
 	}
 	/* we can be missing sets only if we've deleted some entries */
 	if (flush_entries) {
+		struct net_bridge *br = pg->key.port->br;
+		struct net_bridge_group_eht_set *eht_set;
 		struct net_bridge_group_src *src_ent;
 		struct hlist_node *tmp;
 
@@ -667,6 +669,25 @@ static bool __eht_inc_exc(struct net_bridge_port_group *pg,
 				changed = true;
 				continue;
 			}
+			/* this is an optimization for TO_INCLUDE where we lower
+			 * the set's timeout to LMQT to catch timeout hosts:
+			 * - host A (timing out): set entries X, Y
+			 * - host B: set entry Z (new from current TO_INCLUDE)
+			 *           sends BLOCK Z after LMQT but host A's EHT
+			 *           entries still exist (unless lowered to LMQT
+			 *           so they can timeout with the S,Gs)
+			 * => we wait another LMQT, when we can just delete the
+			 *    group immediately
+			 */
+			if (!(src_ent->flags & BR_SGRP_F_SEND) ||
+			    filter_mode != MCAST_INCLUDE ||
+			    !to_report)
+				continue;
+			eht_set = br_multicast_eht_set_lookup(pg,
+							      &eht_src_addr);
+			if (!eht_set)
+				continue;
+			mod_timer(&eht_set->timer, jiffies + br_multicast_lmqt(br));
 		}
 	}
 
-- 
2.29.2

