Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B4796257BBD
	for <lists.bridge@lfdr.de>; Mon, 31 Aug 2020 17:10:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6DB1285DDB;
	Mon, 31 Aug 2020 15:10:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 11gqOIV7ZTAX; Mon, 31 Aug 2020 15:10:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 925A985E28;
	Mon, 31 Aug 2020 15:10:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 78356C0891;
	Mon, 31 Aug 2020 15:10:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 388C6C08A6
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 15:10:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2227985E2B
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 15:10:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d8MjXnD65t_8 for <bridge@lists.linux-foundation.org>;
 Mon, 31 Aug 2020 15:10:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 082F185E28
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 15:10:10 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id l9so1811134wme.3
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 08:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cqBBFmMS19JIRuY9JV073peAHW//ng5aHlsxA/FxST8=;
 b=bxhjZXQLNJCttNhDbbj4DJhzqfZRvEk5zWGaQskCA4AeON2LX4QnH7hG8Ik9x2Evgs
 ndnzVe5z7bDT0wVpUJrr8KJsjLVAZizPvCbjaEpDV9kM2UCSVsXxjpObiH8JnLQ+0cvo
 U7PCEwR7syXc3aTWZzDa4YBLAFuJslH9WO8sk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cqBBFmMS19JIRuY9JV073peAHW//ng5aHlsxA/FxST8=;
 b=rz4wFMGipwV2N4RFd3BUn3/kCaH4/ORccafZ4WsvP6N50O801Pj5TST4iaOWmvfrLe
 QQaBvNTJ6Qv6KGdqRqDWlz1bxAr49H1Ra4VdngUdbck2OdI7OVIMm/Wr+ahunc1a54x+
 MIlKpoGWFZ4Cx1afSwe1PUpNu/rjFe+DUHFspyOjEOWzZPfA+9TCj2jijgCq4niU8oz/
 GDo4LwYNPbeje3cM0DdDH9IH0AYmIX4KQpYasR4/y6wIi9Pa5imGhPEyiS/eqq2yNqiZ
 djRTc399BoFfZSAfXPVJ+fluq/ZY2Azf/9KfmK1w6LfVzmY7oQzcyIgVkhfiEGOK0QRM
 NNXQ==
X-Gm-Message-State: AOAM533gxJTG2ioEYco+WknDWyvx4EeJgC8JAMzhFTlJsW6X6YbO8ZUI
 GpSYze/8QLIl4/2bsp4wDRC71A==
X-Google-Smtp-Source: ABdhPJwUncgu+olXr0NC7lAt61fzkB8F+D0eiAKw0nbWPewXzwKFtWJnvFVhdQvXmYr4d3sBslZIpA==
X-Received: by 2002:a1c:1b8f:: with SMTP id b137mr1846929wmb.151.1598886608371; 
 Mon, 31 Aug 2020 08:10:08 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id f6sm14181636wme.32.2020.08.31.08.10.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Aug 2020 08:10:07 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Mon, 31 Aug 2020 18:08:42 +0300
Message-Id: <20200831150845.1062447-13-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200831150845.1062447-1-nikolay@cumulusnetworks.com>
References: <20200831150845.1062447-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 12/15] net: bridge: mcast: support for
	IGMPV3_CHANGE_TO_INCLUDE/EXCLUDE report
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

In order to process IGMPV3_CHANGE_TO_INCLUDE/EXCLUDE report types we
need new helpers which allow us to mark entries based on their timer
state and to query only marked entries.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_multicast.c | 273 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 273 insertions(+)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 2ba43d497515..2777e3eb07b9 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1172,6 +1172,17 @@ static void __grp_src_modify_flags_all(struct net_bridge_port_group *pg,
 		__grp_src_modify_flags(ent, set_flags, clear_flags);
 }
 
+static void __grp_src_modify_flags_timer(struct net_bridge_port_group *pg,
+					 u8 set_flags, u8 clear_flags,
+					 bool pending)
+{
+	struct net_bridge_group_src *ent;
+
+	hlist_for_each_entry(ent, &pg->src_list, node)
+		if (timer_pending(&ent->timer) == pending)
+			__grp_src_modify_flags(ent, set_flags, clear_flags);
+}
+
 static int __grp_src_delete_marked(struct net_bridge_port_group *pg)
 {
 	struct net_bridge_group_src *ent;
@@ -1187,6 +1198,61 @@ static int __grp_src_delete_marked(struct net_bridge_port_group *pg)
 	return deleted;
 }
 
+static void __grp_src_query_marked_and_rexmit(struct net_bridge_port_group *pg)
+{
+	struct net_bridge *br = pg->port->br;
+	u32 lmqc = br->multicast_last_member_count;
+	unsigned long lmqt, lmi, now = jiffies;
+	struct net_bridge_group_src *ent;
+
+	lmqt = now + br_multicast_lmqt(br);
+	hlist_for_each_entry(ent, &pg->src_list, node) {
+		if (ent->flags & BR_SGRP_F_SEND) {
+			__grp_src_modify_flags(ent, 0, BR_SGRP_F_SEND);
+			if (ent->timer.expires > lmqt) {
+				if (br_opt_get(br, BROPT_MULTICAST_QUERIER) &&
+				    !timer_pending(&br->ip4_other_query.timer))
+					ent->src_query_rexmit_cnt = lmqc;
+				mod_timer(&ent->timer, lmqt);
+			}
+		}
+	}
+
+	if (!br_opt_get(br, BROPT_MULTICAST_QUERIER) ||
+	    timer_pending(&br->ip4_other_query.timer))
+		return;
+
+	__br_multicast_send_query(br, pg->port, pg, &pg->addr,
+				  &pg->addr, true, 1, NULL);
+
+	lmi = now + br->multicast_last_member_interval;
+	if (!timer_pending(&pg->rexmit_timer) ||
+	    time_after(pg->rexmit_timer.expires, lmi))
+		mod_timer(&pg->rexmit_timer, lmi);
+}
+
+static void __grp_send_query_and_rexmit(struct net_bridge_port_group *pg)
+{
+	struct net_bridge *br = pg->port->br;
+	unsigned long now = jiffies, lmi;
+
+	if (br_opt_get(br, BROPT_MULTICAST_QUERIER) &&
+	    timer_pending(&br->ip4_other_query.timer)) {
+		lmi = now + br->multicast_last_member_interval;
+		pg->grp_query_rexmit_cnt = br->multicast_last_member_count - 1;
+		__br_multicast_send_query(br, pg->port, pg, &pg->addr,
+					  &pg->addr, false, 0, NULL);
+		if (!timer_pending(&pg->rexmit_timer) ||
+		    time_after(pg->rexmit_timer.expires, lmi))
+			mod_timer(&pg->rexmit_timer, lmi);
+	}
+
+	if (pg->filter_mode == MCAST_EXCLUDE &&
+	    (!timer_pending(&pg->timer) ||
+	     time_after(pg->timer.expires, now + br_multicast_lmqt(br))))
+		mod_timer(&pg->timer, now + br_multicast_lmqt(br));
+}
+
 /* State          Msg type      New state                Actions
  * INCLUDE (A)    IS_IN (B)     INCLUDE (A+B)            (B)=GMI
  * INCLUDE (A)    ALLOW (B)     INCLUDE (A+B)            (B)=GMI
@@ -1311,6 +1377,207 @@ static bool br_multicast_isexc(struct net_bridge_port_group *pg,
 	return changed;
 }
 
+/* State          Msg type      New state                Actions
+ * INCLUDE (A)    TO_IN (B)     INCLUDE (A+B)            (B)=GMI
+ *                                                       Send Q(G,A-B)
+ */
+static bool __grp_src_toin_incl(struct net_bridge_port_group *pg,
+				__be32 *srcs, u32 nsrcs)
+{
+	struct net_bridge *br = pg->port->br;
+	u32 src_idx, to_send = pg->src_ents;
+	struct net_bridge_group_src *ent;
+	unsigned long now = jiffies;
+	bool changed = false;
+	struct br_ip src_ip;
+
+	__grp_src_modify_flags_all(pg, BR_SGRP_F_SEND, 0);
+
+	memset(&src_ip, 0, sizeof(src_ip));
+	src_ip.proto = htons(ETH_P_IP);
+	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
+		src_ip.u.ip4 = srcs[src_idx];
+		ent = br_multicast_find_group_src(pg, &src_ip);
+		if (ent) {
+			__grp_src_modify_flags(ent, 0, BR_SGRP_F_SEND);
+			to_send--;
+		} else {
+			ent = br_multicast_new_group_src(pg, &src_ip);
+			if (ent)
+				changed = true;
+		}
+		if (ent)
+			mod_timer(&ent->timer, now + br_multicast_gmi(br));
+	}
+
+	if (to_send)
+		__grp_src_query_marked_and_rexmit(pg);
+
+	return changed;
+}
+
+/* State          Msg type      New state                Actions
+ * EXCLUDE (X,Y)  TO_IN (A)     EXCLUDE (X+A,Y-A)        (A)=GMI
+ *                                                       Send Q(G,X-A)
+ *                                                       Send Q(G)
+ */
+static bool __grp_src_toin_excl(struct net_bridge_port_group *pg,
+				__be32 *srcs, u32 nsrcs)
+{
+	struct net_bridge *br = pg->port->br;
+	u32 src_idx, to_send = pg->src_ents;
+	struct net_bridge_group_src *ent;
+	unsigned long now = jiffies;
+	bool changed = false;
+	struct br_ip src_ip;
+
+	__grp_src_modify_flags_timer(pg, BR_SGRP_F_SEND, 0, true);
+
+	memset(&src_ip, 0, sizeof(src_ip));
+	src_ip.proto = htons(ETH_P_IP);
+	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
+		src_ip.u.ip4 = srcs[src_idx];
+		ent = br_multicast_find_group_src(pg, &src_ip);
+		if (ent) {
+			if (timer_pending(&ent->timer)) {
+				__grp_src_modify_flags(ent, 0, BR_SGRP_F_SEND);
+				to_send--;
+			}
+		} else {
+			ent = br_multicast_new_group_src(pg, &src_ip);
+			if (ent)
+				changed = true;
+		}
+		if (ent)
+			mod_timer(&ent->timer, now + br_multicast_gmi(br));
+	}
+
+	if (to_send)
+		__grp_src_query_marked_and_rexmit(pg);
+
+	__grp_send_query_and_rexmit(pg);
+
+	return changed;
+}
+
+static bool br_multicast_toin(struct net_bridge_port_group *pg,
+			      __be32 *srcs, u32 nsrcs)
+{
+	bool changed = false;
+
+	switch (pg->filter_mode) {
+	case MCAST_INCLUDE:
+		changed = __grp_src_toin_incl(pg, srcs, nsrcs);
+		break;
+	case MCAST_EXCLUDE:
+		changed = __grp_src_toin_excl(pg, srcs, nsrcs);
+		break;
+	}
+
+	return changed;
+}
+
+/* State          Msg type      New state                Actions
+ * INCLUDE (A)    TO_EX (B)     EXCLUDE (A*B,B-A)        (B-A)=0
+ *                                                       Delete (A-B)
+ *                                                       Send Q(G,A*B)
+ *                                                       Group Timer=GMI
+ */
+static void __grp_src_toex_incl(struct net_bridge_port_group *pg,
+				__be32 *srcs, u32 nsrcs)
+{
+	struct net_bridge_group_src *ent;
+	u32 src_idx, to_send = 0;
+	struct br_ip src_ip;
+
+	__grp_src_modify_flags_all(pg, BR_SGRP_F_DELETE, BR_SGRP_F_SEND);
+
+	memset(&src_ip, 0, sizeof(src_ip));
+	src_ip.proto = htons(ETH_P_IP);
+	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
+		src_ip.u.ip4 = srcs[src_idx];
+		ent = br_multicast_find_group_src(pg, &src_ip);
+		if (ent) {
+			__grp_src_modify_flags(ent, BR_SGRP_F_SEND,
+					       BR_SGRP_F_DELETE);
+			to_send++;
+		} else {
+			br_multicast_new_group_src(pg, &src_ip);
+		}
+	}
+
+	__grp_src_delete_marked(pg);
+	if (to_send)
+		__grp_src_query_marked_and_rexmit(pg);
+}
+
+/* State          Msg type      New state                Actions
+ * EXCLUDE (X,Y)  TO_EX (A)     EXCLUDE (A-Y,Y*A)        (A-X-Y)=Group Timer
+ *                                                       Delete (X-A)
+ *                                                       Delete (Y-A)
+ *                                                       Send Q(G,A-Y)
+ *                                                       Group Timer=GMI
+ */
+static bool __grp_src_toex_excl(struct net_bridge_port_group *pg,
+				__be32 *srcs, u32 nsrcs)
+{
+	struct net_bridge_group_src *ent;
+	u32 src_idx, to_send = 0;
+	bool changed = false;
+	struct br_ip src_ip;
+
+	__grp_src_modify_flags_all(pg, BR_SGRP_F_DELETE, BR_SGRP_F_SEND);
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
+				mod_timer(&ent->timer, pg->timer.expires);
+				changed = true;
+			}
+		}
+		if (ent && timer_pending(&ent->timer)) {
+			__grp_src_modify_flags(ent, BR_SGRP_F_SEND, 0);
+			to_send++;
+		}
+	}
+
+	if (__grp_src_delete_marked(pg))
+		changed = true;
+	if (to_send)
+		__grp_src_query_marked_and_rexmit(pg);
+
+	return changed;
+}
+
+static bool br_multicast_toex(struct net_bridge_port_group *pg,
+			      __be32 *srcs, u32 nsrcs)
+{
+	struct net_bridge *br = pg->port->br;
+	bool changed = false;
+
+	switch (pg->filter_mode) {
+	case MCAST_INCLUDE:
+		__grp_src_toex_incl(pg, srcs, nsrcs);
+		changed = true;
+		break;
+	case MCAST_EXCLUDE:
+		__grp_src_toex_excl(pg, srcs, nsrcs);
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
@@ -1413,6 +1680,12 @@ static int br_ip4_multicast_igmp3_report(struct net_bridge *br,
 		case IGMPV3_MODE_IS_EXCLUDE:
 			changed = br_multicast_isexc(pg, grec->grec_src, nsrcs);
 			break;
+		case IGMPV3_CHANGE_TO_INCLUDE:
+			changed = br_multicast_toin(pg, grec->grec_src, nsrcs);
+			break;
+		case IGMPV3_CHANGE_TO_EXCLUDE:
+			changed = br_multicast_toex(pg, grec->grec_src, nsrcs);
+			break;
 		}
 		if (changed)
 			br_mdb_notify(br->dev, mdst, pg, RTM_NEWMDB);
-- 
2.25.4

