Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFA225E670
	for <lists.bridge@lfdr.de>; Sat,  5 Sep 2020 10:25:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EE2BE8760F;
	Sat,  5 Sep 2020 08:25:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JNhr9DyAmAlO; Sat,  5 Sep 2020 08:25:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5B4E58760C;
	Sat,  5 Sep 2020 08:25:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4FC5BC0052;
	Sat,  5 Sep 2020 08:25:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AE4E6C0052
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:25:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7A28786EFE
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:25:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7IKUrQT3ycG9 for <bridge@lists.linux-foundation.org>;
 Sat,  5 Sep 2020 08:25:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A199986F0F
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:25:01 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id s13so8810928wmh.4
 for <bridge@lists.linux-foundation.org>; Sat, 05 Sep 2020 01:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VurM3Q0P8DN+diibsl0fS50YUtMJAXq0EjcyobLlCCk=;
 b=AKlayoWkC0i+PhCBBy7XTZ3Egr9n8jEEJBk9AjXU2Oej3dhnTiqmkw/WvM0iFdoiuk
 EPZcvkNSQbOqg3VCgZnJCPj/ThG+F2rpwVFBAsEaT5UIKT4nB1cXNdZ/N5Ic1fBFsu6x
 IcIGXOvctWwyOENcIuhMBJ4PIJh28AOCCVJQ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VurM3Q0P8DN+diibsl0fS50YUtMJAXq0EjcyobLlCCk=;
 b=GhMjDmyd/S38e7D0OddbS8F/gvkBKU8jlwu1bk1PggJgNOey4VMrYF4BPyR7HrMBJd
 5/Z9M0bTB9M7NLBICZtwoZp6EWozOTW4bctlTnjJU3W+VAyTygsrenRhlCJeLImrkIGt
 qlSpWuzgOCZMNjEMsJDbQ58ky5fF791J8wzBbiP4ycp28PRg2MzBohzNoixrw3CxyHS7
 5k5VF/fhL95Wu5F2M1I0Ca8AhgiIgiLtUSKn6pZlD1TPXtkdMCI6r/VLLNZCLh/viaeK
 8iKobMCvqDafmlT4AhR6YauFizpLDUDvIhys3C9jrSKFcg2MfW3J9D0oE0tQoelSwqpn
 5Mcg==
X-Gm-Message-State: AOAM5317RyA2dNK5J/DkmvNmKJqg/EjVuxkjpKjvRMOZL55v/0mqSdpc
 kHwLqKwtNPLbcnF23GbbIf7peQ==
X-Google-Smtp-Source: ABdhPJzv24Mf/Aqap6cwxvDgnXSotaTF4TxVftufT670baKrpP41yD4/yy8pe55aQAtDxtWsfeu2vA==
X-Received: by 2002:a1c:9a8d:: with SMTP id c135mr11491332wme.58.1599294300072; 
 Sat, 05 Sep 2020 01:25:00 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id m185sm17169296wmf.5.2020.09.05.01.24.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Sep 2020 01:24:59 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Sat,  5 Sep 2020 11:24:08 +0300
Message-Id: <20200905082410.2230253-14-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200905082410.2230253-1-nikolay@cumulusnetworks.com>
References: <20200905082410.2230253-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v3 13/15] net: bridge: mcast: support for
	IGMPV3/MLDv2 BLOCK_OLD_SOURCES report
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

We already have all necessary helpers, so process IGMPV3/MLDv2
BLOCK_OLD_SOURCES as per the RFCs.

v3: add IPv6/MLDv2 support
v2: directly do flag bit operations

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_multicast.c | 97 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 97 insertions(+)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index b6c278dbfe32..2ded3f3c51c0 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1665,6 +1665,95 @@ static bool br_multicast_toex(struct net_bridge_port_group *pg,
 	return changed;
 }
 
+/* State          Msg type      New state                Actions
+ * INCLUDE (A)    BLOCK (B)     INCLUDE (A)              Send Q(G,A*B)
+ */
+static void __grp_src_block_incl(struct net_bridge_port_group *pg,
+				 void *srcs, u32 nsrcs, size_t src_size)
+{
+	struct net_bridge_group_src *ent;
+	u32 src_idx, to_send = 0;
+	struct br_ip src_ip;
+
+	hlist_for_each_entry(ent, &pg->src_list, node)
+		ent->flags &= ~BR_SGRP_F_SEND;
+
+	memset(&src_ip, 0, sizeof(src_ip));
+	src_ip.proto = pg->addr.proto;
+	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
+		memcpy(&src_ip.u, srcs, src_size);
+		ent = br_multicast_find_group_src(pg, &src_ip);
+		if (ent) {
+			ent->flags |= BR_SGRP_F_SEND;
+			to_send++;
+		}
+		srcs += src_size;
+	}
+
+	if (to_send)
+		__grp_src_query_marked_and_rexmit(pg);
+
+	if (pg->filter_mode == MCAST_INCLUDE && hlist_empty(&pg->src_list))
+		br_multicast_find_del_pg(pg->port->br, pg);
+}
+
+/* State          Msg type      New state                Actions
+ * EXCLUDE (X,Y)  BLOCK (A)     EXCLUDE (X+(A-Y),Y)      (A-X-Y)=Group Timer
+ *                                                       Send Q(G,A-Y)
+ */
+static bool __grp_src_block_excl(struct net_bridge_port_group *pg,
+				 void *srcs, u32 nsrcs, size_t src_size)
+{
+	struct net_bridge_group_src *ent;
+	u32 src_idx, to_send = 0;
+	bool changed = false;
+	struct br_ip src_ip;
+
+	hlist_for_each_entry(ent, &pg->src_list, node)
+		ent->flags &= ~BR_SGRP_F_SEND;
+
+	memset(&src_ip, 0, sizeof(src_ip));
+	src_ip.proto = pg->addr.proto;
+	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
+		memcpy(&src_ip.u, srcs, src_size);
+		ent = br_multicast_find_group_src(pg, &src_ip);
+		if (!ent) {
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
+		srcs += src_size;
+	}
+
+	if (to_send)
+		__grp_src_query_marked_and_rexmit(pg);
+
+	return changed;
+}
+
+static bool br_multicast_block(struct net_bridge_port_group *pg,
+			       void *srcs, u32 nsrcs, size_t src_size)
+{
+	bool changed = false;
+
+	switch (pg->filter_mode) {
+	case MCAST_INCLUDE:
+		__grp_src_block_incl(pg, srcs, nsrcs, src_size);
+		break;
+	case MCAST_EXCLUDE:
+		changed = __grp_src_block_excl(pg, srcs, nsrcs, src_size);
+		break;
+	}
+
+	return changed;
+}
+
 static struct net_bridge_port_group *
 br_multicast_find_port(struct net_bridge_mdb_entry *mp,
 		       struct net_bridge_port *p,
@@ -1778,6 +1867,10 @@ static int br_ip4_multicast_igmp3_report(struct net_bridge *br,
 			changed = br_multicast_toex(pg, grec->grec_src, nsrcs,
 						    sizeof(__be32));
 			break;
+		case IGMPV3_BLOCK_OLD_SOURCES:
+			changed = br_multicast_block(pg, grec->grec_src, nsrcs,
+						     sizeof(__be32));
+			break;
 		}
 		if (changed)
 			br_mdb_notify(br->dev, mdst, pg, RTM_NEWMDB);
@@ -1900,6 +1993,10 @@ static int br_ip6_multicast_mld2_report(struct net_bridge *br,
 			changed = br_multicast_toex(pg, grec->grec_src, nsrcs,
 						    sizeof(struct in6_addr));
 			break;
+		case MLD2_BLOCK_OLD_SOURCES:
+			changed = br_multicast_block(pg, grec->grec_src, nsrcs,
+						     sizeof(struct in6_addr));
+			break;
 		}
 		if (changed)
 			br_mdb_notify(br->dev, mdst, pg, RTM_NEWMDB);
-- 
2.25.4

