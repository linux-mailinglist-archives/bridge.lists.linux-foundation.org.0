Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 714E025AA43
	for <lists.bridge@lfdr.de>; Wed,  2 Sep 2020 13:29:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1F54086800;
	Wed,  2 Sep 2020 11:29:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JqyH9dFd6soL; Wed,  2 Sep 2020 11:29:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5117C86806;
	Wed,  2 Sep 2020 11:29:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 21850C0051;
	Wed,  2 Sep 2020 11:29:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 61F9EC0052
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 11:29:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 28181871B7
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 11:29:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oXUaLw7e08YA for <bridge@lists.linux-foundation.org>;
 Wed,  2 Sep 2020 11:29:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E4C96871B0
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 11:29:26 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id k15so4832465wrn.10
 for <bridge@lists.linux-foundation.org>; Wed, 02 Sep 2020 04:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=olba7YZuiOdWVUbjISlgCiVJSPh8C9vBzXfaBWot4Mc=;
 b=hRSJ6L0t+RNja36ZrAPNOblNCrdrS9id03SD2bRb2wJpdAldPj2wvLyPv7Ozd+zvvh
 JReShKgAE0xEprpBqnm7bcb67ZLW3FWCC1gLh3X3WgC+LyNbK8t64t3mP/+7MIhN0oMb
 ibScBC1cAlNC1S55teclgRBd7Xm7M0oSx73Qc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=olba7YZuiOdWVUbjISlgCiVJSPh8C9vBzXfaBWot4Mc=;
 b=BTCYThFuJeTte5HW+hELwH9fxr4/SeLLpzN5cvfbrdL0z8PrlEcdig857r07Uac3+/
 sb8vOn1lCNAt9MM/gme87SP5mhqiI24V3q+E/r+yobtQp2Nuurt49Aazv2TxBV44AnAz
 butt/9y5dj81JcAcXbhvkGGXrzE6QPvgzHzc6U03v5vcEiwMtPhaAlbuvajhtwtVUlbd
 h2JwgZLrgmTYdOLhNImJvdoK8ezX3BbPsUJQQ1zg0MZs5+BFkGt1I3wB4Pi513NJSUjc
 celFEK3SjOBPaglSuLA5MHP64VVpLpWPC85N/XQhodP0Be43Hmy1YCLtnX7qw41YegfV
 /Z5g==
X-Gm-Message-State: AOAM5317EHLSWF/j90KQ0Dz+LOzwwmLu+gq48nkwN3BFzFasLNGSg6tW
 r74kQr8KMxlh1ICXBrV8W6Twyg==
X-Google-Smtp-Source: ABdhPJzXkB8FbknQNEC5zLAeOgTeng6UPpBsB1rTt7FgWt8hEby7T+JsUeMgVUl9zda2cTedZja5Gg==
X-Received: by 2002:adf:fed1:: with SMTP id q17mr6432862wrs.85.1599046165394; 
 Wed, 02 Sep 2020 04:29:25 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id 5sm5985172wmz.22.2020.09.02.04.29.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Sep 2020 04:29:24 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Wed,  2 Sep 2020 14:25:26 +0300
Message-Id: <20200902112529.1570040-13-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200902112529.1570040-1-nikolay@cumulusnetworks.com>
References: <20200902112529.1570040-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v2 12/15] net: bridge: mcast: support for
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

v2: directly do flag bit operations

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_multicast.c | 267 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 267 insertions(+)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 9e0c8a462343..0dffd5a26110 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1171,6 +1171,61 @@ static int __grp_src_delete_marked(struct net_bridge_port_group *pg)
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
+			ent->flags &= ~BR_SGRP_F_SEND;
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
@@ -1297,6 +1352,212 @@ static bool br_multicast_isexc(struct net_bridge_port_group *pg,
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
+	hlist_for_each_entry(ent, &pg->src_list, node)
+		ent->flags |= BR_SGRP_F_SEND;
+
+	memset(&src_ip, 0, sizeof(src_ip));
+	src_ip.proto = htons(ETH_P_IP);
+	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
+		src_ip.u.ip4 = srcs[src_idx];
+		ent = br_multicast_find_group_src(pg, &src_ip);
+		if (ent) {
+			ent->flags &= ~BR_SGRP_F_SEND;
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
+	hlist_for_each_entry(ent, &pg->src_list, node)
+		if (timer_pending(&ent->timer))
+			ent->flags |= BR_SGRP_F_SEND;
+
+	memset(&src_ip, 0, sizeof(src_ip));
+	src_ip.proto = htons(ETH_P_IP);
+	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
+		src_ip.u.ip4 = srcs[src_idx];
+		ent = br_multicast_find_group_src(pg, &src_ip);
+		if (ent) {
+			if (timer_pending(&ent->timer)) {
+				ent->flags &= ~BR_SGRP_F_SEND;
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
+	hlist_for_each_entry(ent, &pg->src_list, node)
+		ent->flags = (ent->flags & ~BR_SGRP_F_SEND) | BR_SGRP_F_DELETE;
+
+	memset(&src_ip, 0, sizeof(src_ip));
+	src_ip.proto = htons(ETH_P_IP);
+	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
+		src_ip.u.ip4 = srcs[src_idx];
+		ent = br_multicast_find_group_src(pg, &src_ip);
+		if (ent) {
+			ent->flags = (ent->flags & ~BR_SGRP_F_DELETE) |
+				     BR_SGRP_F_SEND;
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
+	hlist_for_each_entry(ent, &pg->src_list, node)
+		ent->flags = (ent->flags & ~BR_SGRP_F_SEND) | BR_SGRP_F_DELETE;
+
+	memset(&src_ip, 0, sizeof(src_ip));
+	src_ip.proto = htons(ETH_P_IP);
+	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
+		src_ip.u.ip4 = srcs[src_idx];
+		ent = br_multicast_find_group_src(pg, &src_ip);
+		if (ent) {
+			ent->flags &= ~BR_SGRP_F_DELETE;
+		} else {
+			ent = br_multicast_new_group_src(pg, &src_ip);
+			if (ent) {
+				mod_timer(&ent->timer, pg->timer.expires);
+				changed = true;
+			}
+		}
+		if (ent && timer_pending(&ent->timer)) {
+			ent->flags |= BR_SGRP_F_SEND;
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
@@ -1399,6 +1660,12 @@ static int br_ip4_multicast_igmp3_report(struct net_bridge *br,
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

