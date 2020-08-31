Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A6F257BBC
	for <lists.bridge@lfdr.de>; Mon, 31 Aug 2020 17:10:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2CF3B87B5D;
	Mon, 31 Aug 2020 15:10:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JHMH+-TaTayu; Mon, 31 Aug 2020 15:10:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6C92B87B47;
	Mon, 31 Aug 2020 15:10:11 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4B88CC0893;
	Mon, 31 Aug 2020 15:10:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3E684C0051
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 15:10:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2A3B0869D7
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 15:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L4+pYghBBWJA for <bridge@lists.linux-foundation.org>;
 Mon, 31 Aug 2020 15:10:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 978D08699B
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 15:10:08 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id k15so6283822wrn.10
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 08:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+DNmU1Xv05r8D5bnGnixuyCJobIehuSOVzITcXMdjAE=;
 b=ROqhN/ksH/TIegUsrutRyqQT9Rwrng7cqbedZh7HVktwUQ0RoVLtGBvqhu5KfOSxYa
 kgVGr/Gt53FpoLxiHwFD9r+agp2E9TxHtAvGUaPEnyzwGBgF5znGzSDbPO6Uo6cMEiK9
 6+Seivfrx3lwsZUv9xTp77ECx7mJ5TQm/DPfM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+DNmU1Xv05r8D5bnGnixuyCJobIehuSOVzITcXMdjAE=;
 b=b0X7DRkeDGDWGPjlgIefqyylMsu7NZVV556MRyfPsBnLtgQfTqR4kOhvAWfhC2X6Us
 Cw3vJ8o2fz8/3fU6Kuabx/6KRxo5C8Sx7eeXh3EMXzoxS/BbQsGBPDqGim8wiB9NSqSE
 /YcQKdEWk69ln9/1zrKEXOCEC67Vnv4kZOVrDcKNqvBTPSr7h0AzKfBr4Tx3kO9yzTBS
 hQTNxDfCitWmD+Wa3PvXwJUNdvwvndSb3+lWzz9P2wnxrzAZANO2VIqLJOK0oJdw1+Jz
 z1g1BkNdBiotN44mZ7nmK6txdhp1bCusGtB9chdv+ab+ENjcQLRs2YdyHjtXstv11aQo
 CYrA==
X-Gm-Message-State: AOAM533kEB9PIEO0LH5ZVwRG40gfg+MfPHNIunhFBol+qWXRyl/X0e8X
 VAXhbZuE/pDlI0nSRSJYzqZUpQ==
X-Google-Smtp-Source: ABdhPJwyRX8CR9rA4oClz7WjCQoSAUIIIMDweCneaTCHv1Z2yEHrl+5UuVVcuEpqkXScwgThLQObxQ==
X-Received: by 2002:a5d:554c:: with SMTP id g12mr2059812wrw.294.1598886607013; 
 Mon, 31 Aug 2020 08:10:07 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id f6sm14181636wme.32.2020.08.31.08.10.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Aug 2020 08:10:06 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Mon, 31 Aug 2020 18:08:41 +0300
Message-Id: <20200831150845.1062447-12-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200831150845.1062447-1-nikolay@cumulusnetworks.com>
References: <20200831150845.1062447-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 11/15] net: bridge: mcast: support for
	IGMPV3_MODE_IS_INCLUDE/EXCLUDE report
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

In order to process IGMPV3_MODE_IS_INCLUDE/EXCLUDE report types we need
some new helpers which allow us to set/clear flags for all current entries
and later delete marked entries after the report sources have been
processed.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_multicast.c | 128 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 128 insertions(+)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index cf76a95f1599..2ba43d497515 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1156,6 +1156,37 @@ void br_multicast_disable_port(struct net_bridge_port *port)
 	spin_unlock(&br->multicast_lock);
 }
 
+static void __grp_src_modify_flags(struct net_bridge_group_src *src,
+				   u8 set_flags, u8 clear_flags)
+{
+	src->flags |= set_flags;
+	src->flags &= ~clear_flags;
+}
+
+static void __grp_src_modify_flags_all(struct net_bridge_port_group *pg,
+				       u8 set_flags, u8 clear_flags)
+{
+	struct net_bridge_group_src *ent;
+
+	hlist_for_each_entry(ent, &pg->src_list, node)
+		__grp_src_modify_flags(ent, set_flags, clear_flags);
+}
+
+static int __grp_src_delete_marked(struct net_bridge_port_group *pg)
+{
+	struct net_bridge_group_src *ent;
+	struct hlist_node *tmp;
+	int deleted = 0;
+
+	hlist_for_each_entry_safe(ent, tmp, &pg->src_list, node)
+		if (ent->flags & BR_SGRP_F_DELETE) {
+			br_multicast_del_group_src(ent);
+			deleted++;
+		}
+
+	return deleted;
+}
+
 /* State          Msg type      New state                Actions
  * INCLUDE (A)    IS_IN (B)     INCLUDE (A+B)            (B)=GMI
  * INCLUDE (A)    ALLOW (B)     INCLUDE (A+B)            (B)=GMI
@@ -1189,6 +1220,97 @@ static bool br_multicast_isinc_allow(struct net_bridge_port_group *pg,
 	return changed;
 }
 
+/* State          Msg type      New state                Actions
+ * INCLUDE (A)    IS_EX (B)     EXCLUDE (A*B,B-A)        (B-A)=0
+ *                                                       Delete (A-B)
+ *                                                       Group Timer=GMI
+ */
+static void __grp_src_isexc_incl(struct net_bridge_port_group *pg,
+				 __be32 *srcs, u32 nsrcs)
+{
+	struct net_bridge_group_src *ent;
+	struct br_ip src_ip;
+	u32 src_idx;
+
+	__grp_src_modify_flags_all(pg, BR_SGRP_F_DELETE, 0);
+
+	memset(&src_ip, 0, sizeof(src_ip));
+	src_ip.proto = htons(ETH_P_IP);
+	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
+		src_ip.u.ip4 = srcs[src_idx];
+		ent = br_multicast_find_group_src(pg, &src_ip);
+		if (ent)
+			__grp_src_modify_flags(ent, 0, BR_SGRP_F_DELETE);
+		else
+			br_multicast_new_group_src(pg, &src_ip);
+	}
+
+	__grp_src_delete_marked(pg);
+}
+
+/* State          Msg type      New state                Actions
+ * EXCLUDE (X,Y)  IS_EX (A)     EXCLUDE (A-Y,Y*A)        (A-X-Y)=GMI
+ *                                                       Delete (X-A)
+ *                                                       Delete (Y-A)
+ *                                                       Group Timer=GMI
+ */
+static bool __grp_src_isexc_excl(struct net_bridge_port_group *pg,
+				 __be32 *srcs, u32 nsrcs)
+{
+	struct net_bridge *br = pg->port->br;
+	struct net_bridge_group_src *ent;
+	unsigned long now = jiffies;
+	bool changed = false;
+	struct br_ip src_ip;
+	u32 src_idx;
+
+	__grp_src_modify_flags_all(pg, BR_SGRP_F_DELETE, 0);
+
+	memset(&src_ip, 0, sizeof(src_ip));
+	src_ip.proto = htons(ETH_P_IP);
+	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
+		src_ip.u.ip4 = srcs[src_idx];
+		ent = br_multicast_find_group_src(pg, &src_ip);
+		if (ent) {
+			__grp_src_modify_flags(ent, 0, BR_SGRP_F_DELETE);
+		} else {
+			ent = br_multicast_new_group_src(pg, &src_ip);
+			if (ent) {
+				mod_timer(&ent->timer,
+					  now + br_multicast_gmi(br));
+				changed = true;
+			}
+		}
+	}
+
+	if (__grp_src_delete_marked(pg))
+		changed = true;
+
+	return changed;
+}
+
+static bool br_multicast_isexc(struct net_bridge_port_group *pg,
+			       __be32 *srcs, u32 nsrcs)
+{
+	struct net_bridge *br = pg->port->br;
+	bool changed = false;
+
+	switch (pg->filter_mode) {
+	case MCAST_INCLUDE:
+		__grp_src_isexc_incl(pg, srcs, nsrcs);
+		changed = true;
+		break;
+	case MCAST_EXCLUDE:
+		changed = __grp_src_isexc_excl(pg, srcs, nsrcs);
+		break;
+	}
+
+	pg->filter_mode = MCAST_EXCLUDE;
+	mod_timer(&pg->timer, jiffies + br_multicast_gmi(br));
+
+	return changed;
+}
+
 static struct net_bridge_port_group *
 br_multicast_find_port(struct net_bridge_mdb_entry *mp,
 		       struct net_bridge_port *p,
@@ -1285,6 +1407,12 @@ static int br_ip4_multicast_igmp3_report(struct net_bridge *br,
 		case IGMPV3_ALLOW_NEW_SOURCES:
 			changed = br_multicast_isinc_allow(pg, grec->grec_src, nsrcs);
 			break;
+		case IGMPV3_MODE_IS_INCLUDE:
+			changed = br_multicast_isinc_allow(pg, grec->grec_src, nsrcs);
+			break;
+		case IGMPV3_MODE_IS_EXCLUDE:
+			changed = br_multicast_isexc(pg, grec->grec_src, nsrcs);
+			break;
 		}
 		if (changed)
 			br_mdb_notify(br->dev, mdst, pg, RTM_NEWMDB);
-- 
2.25.4

