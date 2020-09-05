Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3C025E676
	for <lists.bridge@lfdr.de>; Sat,  5 Sep 2020 10:25:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B653A20533;
	Sat,  5 Sep 2020 08:25:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yXZMokPDvZ+l; Sat,  5 Sep 2020 08:25:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 541D52E205;
	Sat,  5 Sep 2020 08:25:09 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 39BD4C0052;
	Sat,  5 Sep 2020 08:25:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 92029C088B
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:25:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7D0F62E1C9
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:25:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K2m6s2AFdZSl for <bridge@lists.linux-foundation.org>;
 Sat,  5 Sep 2020 08:24:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 93C032000F
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:24:58 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id q9so8843961wmj.2
 for <bridge@lists.linux-foundation.org>; Sat, 05 Sep 2020 01:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uU4ahpsqS1/2WymyTJLgD5T818jXMumS6JkhngtubRM=;
 b=B1l1hkHt1ys+sbGzqFEuReWa6xDE6QExmBBOJ+pM7qih9XX/AzcrnT959377YgjJt2
 /F1QEtjT7+YL7D/LKCKTYp3a2lEp5kQJG999mQDIttJ4USdMRfqqPoE2K/eIw+eCHyUi
 hDelPh8jQvLWH7NU5ejKHuY3/3j6hes7o7+xQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uU4ahpsqS1/2WymyTJLgD5T818jXMumS6JkhngtubRM=;
 b=TOGYyC4a/wM9ejTCA2q/q+OBxmlnaW+6sbNjGQXD7s22Y6YnvreFSNg6IcmIbcSNVG
 A2Lu1FP7bcPHlmx2mEoxHLSmXC8EiEJ1LoI/y5ELdrMKM6R39HZa2S3UL85iV2blNZ90
 J+4A0sBaijRAd4uT4Ynl70cWR0PAw1SY9CKTwYIfGP60Lix9zi1XrhbHRnYm1aySDNsD
 1PBUWxPyasu8MFDTsFu2G53xDSo0d7TcgbyhbXET4U67TByBQXYFLnnPPPksY1dtHU3c
 QJTbwFOp4RniAxWQnQKmi+uAzdwHmGJmguEd2EgprKCUlvfQUdFa65ZLcOVQkS+chjb2
 0Waw==
X-Gm-Message-State: AOAM532kkvxEHQ55KHMK+afqV/3XdDJnL3EKeU5Pi1LP6ZbynkX8apF6
 ACQVAUNQ1KQyXNwPHk+rn4RyDQ==
X-Google-Smtp-Source: ABdhPJw8sqA815x8W2fzl8IX4VeinAFedhnmMW2VGBAOD85eEaxKvT9zWs0xSfo3YtVyLuV4BQHezA==
X-Received: by 2002:a1c:2dcb:: with SMTP id t194mr10854037wmt.94.1599294297082; 
 Sat, 05 Sep 2020 01:24:57 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id m185sm17169296wmf.5.2020.09.05.01.24.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Sep 2020 01:24:56 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Sat,  5 Sep 2020 11:24:06 +0300
Message-Id: <20200905082410.2230253-12-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200905082410.2230253-1-nikolay@cumulusnetworks.com>
References: <20200905082410.2230253-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v3 11/15] net: bridge: mcast: support for
	IGMPV3/MLDv2 MODE_IS_INCLUDE/EXCLUDE report
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

In order to process IGMPV3/MLDv2_MODE_IS_INCLUDE/EXCLUDE report types we
need some new helpers which allow us to set/clear flags for all current
entries and later delete marked entries after the report sources have been
processed.

v3: add IPv6/MLDv2 support
v2: drop flag helpers and directly do flag bit operations

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_multicast.c | 126 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 126 insertions(+)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index da9f36a75473..a9f6abf5e680 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1231,6 +1231,21 @@ void br_multicast_disable_port(struct net_bridge_port *port)
 	spin_unlock(&br->multicast_lock);
 }
 
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
@@ -1265,6 +1280,101 @@ static bool br_multicast_isinc_allow(struct net_bridge_port_group *pg,
 	return changed;
 }
 
+/* State          Msg type      New state                Actions
+ * INCLUDE (A)    IS_EX (B)     EXCLUDE (A*B,B-A)        (B-A)=0
+ *                                                       Delete (A-B)
+ *                                                       Group Timer=GMI
+ */
+static void __grp_src_isexc_incl(struct net_bridge_port_group *pg,
+				 void *srcs, u32 nsrcs, size_t src_size)
+{
+	struct net_bridge_group_src *ent;
+	struct br_ip src_ip;
+	u32 src_idx;
+
+	hlist_for_each_entry(ent, &pg->src_list, node)
+		ent->flags |= BR_SGRP_F_DELETE;
+
+	memset(&src_ip, 0, sizeof(src_ip));
+	src_ip.proto = pg->addr.proto;
+	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
+		memcpy(&src_ip.u, srcs, src_size);
+		ent = br_multicast_find_group_src(pg, &src_ip);
+		if (ent)
+			ent->flags &= ~BR_SGRP_F_DELETE;
+		else
+			br_multicast_new_group_src(pg, &src_ip);
+		srcs += src_size;
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
+				 void *srcs, u32 nsrcs, size_t src_size)
+{
+	struct net_bridge *br = pg->port->br;
+	struct net_bridge_group_src *ent;
+	unsigned long now = jiffies;
+	bool changed = false;
+	struct br_ip src_ip;
+	u32 src_idx;
+
+	hlist_for_each_entry(ent, &pg->src_list, node)
+		ent->flags |= BR_SGRP_F_DELETE;
+
+	memset(&src_ip, 0, sizeof(src_ip));
+	src_ip.proto = pg->addr.proto;
+	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
+		memcpy(&src_ip.u, srcs, src_size);
+		ent = br_multicast_find_group_src(pg, &src_ip);
+		if (ent) {
+			ent->flags &= ~BR_SGRP_F_DELETE;
+		} else {
+			ent = br_multicast_new_group_src(pg, &src_ip);
+			if (ent) {
+				mod_timer(&ent->timer,
+					  now + br_multicast_gmi(br));
+				changed = true;
+			}
+		}
+		srcs += src_size;
+	}
+
+	if (__grp_src_delete_marked(pg))
+		changed = true;
+
+	return changed;
+}
+
+static bool br_multicast_isexc(struct net_bridge_port_group *pg,
+			       void *srcs, u32 nsrcs, size_t src_size)
+{
+	struct net_bridge *br = pg->port->br;
+	bool changed = false;
+
+	switch (pg->filter_mode) {
+	case MCAST_INCLUDE:
+		__grp_src_isexc_incl(pg, srcs, nsrcs, src_size);
+		changed = true;
+		break;
+	case MCAST_EXCLUDE:
+		changed = __grp_src_isexc_excl(pg, srcs, nsrcs, src_size);
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
@@ -1362,6 +1472,14 @@ static int br_ip4_multicast_igmp3_report(struct net_bridge *br,
 			changed = br_multicast_isinc_allow(pg, grec->grec_src,
 							   nsrcs, sizeof(__be32));
 			break;
+		case IGMPV3_MODE_IS_INCLUDE:
+			changed = br_multicast_isinc_allow(pg, grec->grec_src, nsrcs,
+							   sizeof(__be32));
+			break;
+		case IGMPV3_MODE_IS_EXCLUDE:
+			changed = br_multicast_isexc(pg, grec->grec_src, nsrcs,
+						     sizeof(__be32));
+			break;
 		}
 		if (changed)
 			br_mdb_notify(br->dev, mdst, pg, RTM_NEWMDB);
@@ -1468,6 +1586,14 @@ static int br_ip6_multicast_mld2_report(struct net_bridge *br,
 							   nsrcs,
 							   sizeof(struct in6_addr));
 			break;
+		case MLD2_MODE_IS_INCLUDE:
+			changed = br_multicast_isinc_allow(pg, grec->grec_src, nsrcs,
+							   sizeof(struct in6_addr));
+			break;
+		case MLD2_MODE_IS_EXCLUDE:
+			changed = br_multicast_isexc(pg, grec->grec_src, nsrcs,
+						     sizeof(struct in6_addr));
+			break;
 		}
 		if (changed)
 			br_mdb_notify(br->dev, mdst, pg, RTM_NEWMDB);
-- 
2.25.4

