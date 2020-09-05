Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4A525E66D
	for <lists.bridge@lfdr.de>; Sat,  5 Sep 2020 10:25:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 237E587603;
	Sat,  5 Sep 2020 08:25:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id twl90Y2hLKZY; Sat,  5 Sep 2020 08:24:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id B912587432;
	Sat,  5 Sep 2020 08:24:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id ADAA1C0052;
	Sat,  5 Sep 2020 08:24:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 304C1C0052
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:24:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1F4D886EBB
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:24:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XfD_SuX8sRBJ for <bridge@lists.linux-foundation.org>;
 Sat,  5 Sep 2020 08:24:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F21DE86D95
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:24:56 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id m6so9694037wrn.0
 for <bridge@lists.linux-foundation.org>; Sat, 05 Sep 2020 01:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z4+QnKR/CD5GEflSbY/sTVDnldm518kIZcYSdvZP4J0=;
 b=Gvkfp2UI4g9dbihk21fSmBDZ+A+AguCOZoUY//Ew4SBqxo6TJA+OnjvgdmK8PiLEa1
 PNmmYnqsKPLiFKOaRarCZnIALjIIPoaflV4OXv8fmn8Krjhq3OhXMecUFHiMhqm8/lCy
 Y8NmpHn0pIvlZ/+1UF6QhQazVbxKTknFt1XEc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z4+QnKR/CD5GEflSbY/sTVDnldm518kIZcYSdvZP4J0=;
 b=I43MGrTn58hk7vmPr+awFrUlo35IfNwqty5Yo/EfjWw128ew7ullETZmadO5T+s6qW
 hhix5GeghonVtVw/utovomtRJPskt7/UGq39AWmcH/gpAUucjAqQ8Ct0jrVm/CUYSjaC
 vyxIwotS+EAqScOHlnxJXHpeKSKX4fq6vwXZjJAudTGOu2SbFbIhMr2h2V/YIkx+Y+eC
 AEikNqIkjxTzoFdtVhEPcijnazK4RAc0qkaoFdLfo8wkDt4IGrE1vcEwOeVt5A1trIc+
 7zFXASdNLpdD+VcaAw2cgeYWYU35gYjqrkI4GQIPfHKyYFippe8KsuuqhBOdcGJyYrcl
 Yccg==
X-Gm-Message-State: AOAM532p2/AE5Pwh2ns9oL74HgNgFI1SNpi48YnozkAc06S2F8kG5Zhd
 mKsokgW4q5itQ0lXKEUOtZmy14VhmqsbaAGk
X-Google-Smtp-Source: ABdhPJxcMD7qUVkHTDRGHIiA33DeFQXJJqPpbrpwslw22TkPYBwqNDYXwum5lnSNji0Zz66RzoJgwA==
X-Received: by 2002:adf:f04c:: with SMTP id t12mr11512990wro.121.1599294295362; 
 Sat, 05 Sep 2020 01:24:55 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id m185sm17169296wmf.5.2020.09.05.01.24.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Sep 2020 01:24:54 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Sat,  5 Sep 2020 11:24:05 +0300
Message-Id: <20200905082410.2230253-11-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200905082410.2230253-1-nikolay@cumulusnetworks.com>
References: <20200905082410.2230253-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v3 10/15] net: bridge: mcast: support for
	IGMPv3/MLDv2 ALLOW_NEW_SOURCES report
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

This patch adds handling for the ALLOW_NEW_SOURCES IGMPv3/MLDv2 report
types and limits them only when multicast_igmp_version == 3 or
multicast_mld_version == 2 respectively. Now that IGMPv3/MLDv2 handling
functions will be managing timers we need to delay their activation, thus
a new argument is added which controls if the timer should be updated.
We also disable host IGMPv3/MLDv2 handling as it's not yet implemented and
could cause inconsistent group state, the host can only join a group as
EXCLUDE {} or leave it.

v3: Add IPv6/MLDv2 support

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_multicast.c | 163 ++++++++++++++++++++++++++++++++------
 net/bridge/br_private.h   |   7 ++
 2 files changed, 144 insertions(+), 26 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index e8d2f653344f..da9f36a75473 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -787,7 +787,8 @@ static int br_multicast_add_group(struct net_bridge *br,
 				  struct net_bridge_port *port,
 				  struct br_ip *group,
 				  const unsigned char *src,
-				  u8 filter_mode)
+				  u8 filter_mode,
+				  bool update_timer)
 {
 	struct net_bridge_port_group __rcu **pp;
 	struct net_bridge_port_group *p;
@@ -826,7 +827,8 @@ static int br_multicast_add_group(struct net_bridge *br,
 	br_mdb_notify(br->dev, mp, p, RTM_NEWMDB);
 
 found:
-	mod_timer(&p->timer, now + br->multicast_membership_interval);
+	if (update_timer)
+		mod_timer(&p->timer, now + br->multicast_membership_interval);
 
 out:
 	err = 0;
@@ -840,7 +842,8 @@ static int br_ip4_multicast_add_group(struct net_bridge *br,
 				      struct net_bridge_port *port,
 				      __be32 group,
 				      __u16 vid,
-				      const unsigned char *src)
+				      const unsigned char *src,
+				      bool update_timer)
 {
 	struct br_ip br_group;
 	u8 filter_mode;
@@ -855,7 +858,8 @@ static int br_ip4_multicast_add_group(struct net_bridge *br,
 	filter_mode = br->multicast_igmp_version == 3 ? MCAST_INCLUDE :
 							MCAST_EXCLUDE;
 
-	return br_multicast_add_group(br, port, &br_group, src, filter_mode);
+	return br_multicast_add_group(br, port, &br_group, src, filter_mode,
+				      update_timer);
 }
 
 #if IS_ENABLED(CONFIG_IPV6)
@@ -863,7 +867,8 @@ static int br_ip6_multicast_add_group(struct net_bridge *br,
 				      struct net_bridge_port *port,
 				      const struct in6_addr *group,
 				      __u16 vid,
-				      const unsigned char *src)
+				      const unsigned char *src,
+				      bool update_timer)
 {
 	struct br_ip br_group;
 	u8 filter_mode;
@@ -878,7 +883,8 @@ static int br_ip6_multicast_add_group(struct net_bridge *br,
 	filter_mode = br->multicast_mld_version == 2 ? MCAST_INCLUDE :
 						       MCAST_EXCLUDE;
 
-	return br_multicast_add_group(br, port, &br_group, src, filter_mode);
+	return br_multicast_add_group(br, port, &br_group, src, filter_mode,
+				      update_timer);
 }
 #endif
 
@@ -1225,20 +1231,72 @@ void br_multicast_disable_port(struct net_bridge_port *port)
 	spin_unlock(&br->multicast_lock);
 }
 
+/* State          Msg type      New state                Actions
+ * INCLUDE (A)    IS_IN (B)     INCLUDE (A+B)            (B)=GMI
+ * INCLUDE (A)    ALLOW (B)     INCLUDE (A+B)            (B)=GMI
+ * EXCLUDE (X,Y)  ALLOW (A)     EXCLUDE (X+A,Y-A)        (A)=GMI
+ */
+static bool br_multicast_isinc_allow(struct net_bridge_port_group *pg,
+				     void *srcs, u32 nsrcs, size_t src_size)
+{
+	struct net_bridge *br = pg->port->br;
+	struct net_bridge_group_src *ent;
+	unsigned long now = jiffies;
+	bool changed = false;
+	struct br_ip src_ip;
+	u32 src_idx;
+
+	memset(&src_ip, 0, sizeof(src_ip));
+	src_ip.proto = pg->addr.proto;
+	for (src_idx = 0; src_idx < nsrcs; src_idx++) {
+		memcpy(&src_ip.u, srcs, src_size);
+		ent = br_multicast_find_group_src(pg, &src_ip);
+		if (!ent) {
+			ent = br_multicast_new_group_src(pg, &src_ip);
+			if (ent)
+				changed = true;
+		}
+
+		if (ent)
+			mod_timer(&ent->timer, now + br_multicast_gmi(br));
+		srcs += src_size;
+	}
+
+	return changed;
+}
+
+static struct net_bridge_port_group *
+br_multicast_find_port(struct net_bridge_mdb_entry *mp,
+		       struct net_bridge_port *p,
+		       const unsigned char *src)
+{
+	struct net_bridge_port_group *pg;
+	struct net_bridge *br = mp->br;
+
+	for (pg = mlock_dereference(mp->ports, br);
+	     pg;
+	     pg = mlock_dereference(pg->next, br))
+		if (br_port_group_equal(pg, p, src))
+			return pg;
+
+	return NULL;
+}
+
 static int br_ip4_multicast_igmp3_report(struct net_bridge *br,
 					 struct net_bridge_port *port,
 					 struct sk_buff *skb,
 					 u16 vid)
 {
+	bool igmpv2 = br->multicast_igmp_version == 2;
+	struct net_bridge_mdb_entry *mdst;
+	struct net_bridge_port_group *pg;
 	const unsigned char *src;
 	struct igmpv3_report *ih;
 	struct igmpv3_grec *grec;
-	int i;
-	int len;
-	int num;
-	int type;
-	int err = 0;
+	int i, len, num, type;
+	bool changed = false;
 	__be32 group;
+	int err = 0;
 	u16 nsrcs;
 
 	ih = igmpv3_report_hdr(skb);
@@ -1259,7 +1317,6 @@ static int br_ip4_multicast_igmp3_report(struct net_bridge *br,
 		if (!ip_mc_may_pull(skb, len))
 			return -EINVAL;
 
-		/* We treat this as an IGMPv2 report for now. */
 		switch (type) {
 		case IGMPV3_MODE_IS_INCLUDE:
 		case IGMPV3_MODE_IS_EXCLUDE:
@@ -1274,16 +1331,42 @@ static int br_ip4_multicast_igmp3_report(struct net_bridge *br,
 		}
 
 		src = eth_hdr(skb)->h_source;
-		if ((type == IGMPV3_CHANGE_TO_INCLUDE ||
-		     type == IGMPV3_MODE_IS_INCLUDE) &&
-		    nsrcs == 0) {
-			br_ip4_multicast_leave_group(br, port, group, vid, src);
+		if (nsrcs == 0 &&
+		    (type == IGMPV3_CHANGE_TO_INCLUDE ||
+		     type == IGMPV3_MODE_IS_INCLUDE)) {
+			if (!port || igmpv2) {
+				br_ip4_multicast_leave_group(br, port, group, vid, src);
+				continue;
+			}
 		} else {
 			err = br_ip4_multicast_add_group(br, port, group, vid,
-							 src);
+							 src, igmpv2);
 			if (err)
 				break;
 		}
+
+		if (!port || igmpv2)
+			continue;
+
+		spin_lock_bh(&br->multicast_lock);
+		mdst = br_mdb_ip4_get(br, group, vid);
+		if (!mdst)
+			goto unlock_continue;
+		pg = br_multicast_find_port(mdst, port, src);
+		if (!pg || (pg->flags & MDB_PG_FLAGS_PERMANENT))
+			goto unlock_continue;
+		/* reload grec */
+		grec = (void *)(skb->data + len - sizeof(*grec) - (nsrcs * 4));
+		switch (type) {
+		case IGMPV3_ALLOW_NEW_SOURCES:
+			changed = br_multicast_isinc_allow(pg, grec->grec_src,
+							   nsrcs, sizeof(__be32));
+			break;
+		}
+		if (changed)
+			br_mdb_notify(br->dev, mdst, pg, RTM_NEWMDB);
+unlock_continue:
+		spin_unlock_bh(&br->multicast_lock);
 	}
 
 	return err;
@@ -1295,14 +1378,16 @@ static int br_ip6_multicast_mld2_report(struct net_bridge *br,
 					struct sk_buff *skb,
 					u16 vid)
 {
+	bool mldv1 = br->multicast_mld_version == 1;
+	struct net_bridge_mdb_entry *mdst;
+	struct net_bridge_port_group *pg;
 	unsigned int nsrcs_offset;
 	const unsigned char *src;
 	struct icmp6hdr *icmp6h;
 	struct mld2_grec *grec;
 	unsigned int grec_len;
-	int i;
-	int len;
-	int num;
+	bool changed = false;
+	int i, len, num;
 	int err = 0;
 
 	if (!ipv6_mc_may_pull(skb, sizeof(*icmp6h)))
@@ -1336,7 +1421,6 @@ static int br_ip6_multicast_mld2_report(struct net_bridge *br,
 		grec = (struct mld2_grec *)(skb->data + len);
 		len += grec_len;
 
-		/* We treat these as MLDv1 reports for now. */
 		switch (grec->grec_type) {
 		case MLD2_MODE_IS_INCLUDE:
 		case MLD2_MODE_IS_EXCLUDE:
@@ -1354,15 +1438,41 @@ static int br_ip6_multicast_mld2_report(struct net_bridge *br,
 		if ((grec->grec_type == MLD2_CHANGE_TO_INCLUDE ||
 		     grec->grec_type == MLD2_MODE_IS_INCLUDE) &&
 		    nsrcs == 0) {
-			br_ip6_multicast_leave_group(br, port, &grec->grec_mca,
-						     vid, src);
+			if (!port || mldv1) {
+				br_ip6_multicast_leave_group(br, port,
+							     &grec->grec_mca,
+							     vid, src);
+				continue;
+			}
 		} else {
 			err = br_ip6_multicast_add_group(br, port,
 							 &grec->grec_mca, vid,
-							 src);
+							 src, mldv1);
 			if (err)
 				break;
 		}
+
+		if (!port || mldv1)
+			continue;
+
+		spin_lock_bh(&br->multicast_lock);
+		mdst = br_mdb_ip6_get(br, &grec->grec_mca, vid);
+		if (!mdst)
+			goto unlock_continue;
+		pg = br_multicast_find_port(mdst, port, src);
+		if (!pg || (pg->flags & MDB_PG_FLAGS_PERMANENT))
+			goto unlock_continue;
+		switch (grec->grec_type) {
+		case MLD2_ALLOW_NEW_SOURCES:
+			changed = br_multicast_isinc_allow(pg, grec->grec_src,
+							   nsrcs,
+							   sizeof(struct in6_addr));
+			break;
+		}
+		if (changed)
+			br_mdb_notify(br->dev, mdst, pg, RTM_NEWMDB);
+unlock_continue:
+		spin_unlock_bh(&br->multicast_lock);
 	}
 
 	return err;
@@ -1931,7 +2041,8 @@ static int br_multicast_ipv4_rcv(struct net_bridge *br,
 	case IGMP_HOST_MEMBERSHIP_REPORT:
 	case IGMPV2_HOST_MEMBERSHIP_REPORT:
 		BR_INPUT_SKB_CB(skb)->mrouters_only = 1;
-		err = br_ip4_multicast_add_group(br, port, ih->group, vid, src);
+		err = br_ip4_multicast_add_group(br, port, ih->group, vid, src,
+						 true);
 		break;
 	case IGMPV3_HOST_MEMBERSHIP_REPORT:
 		err = br_ip4_multicast_igmp3_report(br, port, skb, vid);
@@ -2010,7 +2121,7 @@ static int br_multicast_ipv6_rcv(struct net_bridge *br,
 		src = eth_hdr(skb)->h_source;
 		BR_INPUT_SKB_CB(skb)->mrouters_only = 1;
 		err = br_ip6_multicast_add_group(br, port, &mld->mld_mca, vid,
-						 src);
+						 src, true);
 		break;
 	case ICMPV6_MLD2_REPORT:
 		err = br_ip6_multicast_mld2_report(br, port, skb, vid);
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index b2a226070846..fb35a73fc559 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -876,6 +876,13 @@ static inline unsigned long br_multicast_lmqt(const struct net_bridge *br)
 	return br->multicast_last_member_interval *
 	       br->multicast_last_member_count;
 }
+
+static inline unsigned long br_multicast_gmi(const struct net_bridge *br)
+{
+	/* use the RFC default of 2 for QRV */
+	return 2 * br->multicast_query_interval +
+	       br->multicast_query_response_interval;
+}
 #else
 static inline int br_multicast_rcv(struct net_bridge *br,
 				   struct net_bridge_port *port,
-- 
2.25.4

