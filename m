Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E24A020602D
	for <lists.bridge@lfdr.de>; Tue, 23 Jun 2020 22:47:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7A67288460;
	Tue, 23 Jun 2020 20:47:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CgFCIZxtCRKP; Tue, 23 Jun 2020 20:47:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1F14088257;
	Tue, 23 Jun 2020 20:47:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DC484C088E;
	Tue, 23 Jun 2020 20:47:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DD83DC016F
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 20:47:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DA75688659
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 20:47:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eIP4YtOQGxOd for <bridge@lists.linux-foundation.org>;
 Tue, 23 Jun 2020 20:47:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A04CE89733
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 20:47:42 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id f139so130579wmf.5
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 13:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YSQdIq8RXKCTApFS1v3VbXxTPLaHcZ2k5r86vcCe92g=;
 b=hCVdh1VFHcHnoiqFE6MWRzg5G3KNam0xIHF2q5+0gDqJ9yOtpXFHOFTgtrijf5mw3S
 D1dqCgpwBs6wlAsDCYEMkh7VyLyhNLFX90AmoNqci0M0kKY6tCbbyT3zBNJmo5YkoAb+
 JsAQtOeNiH/SsdYtluDbeY+SHReWhIfGkZKQs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YSQdIq8RXKCTApFS1v3VbXxTPLaHcZ2k5r86vcCe92g=;
 b=L/h+LZcOrHijVcrjhgRwAYUULXOpkrB4+5gveDVl2ETkf41Ijt8StxemNJqq9syzb2
 egp7zNSl1LK2bNRcNEjMlLgGUH7Muz6f3OntiED8TzXEZG1Cbs0e2KgkHXXLwHRC+y8Q
 qDKTXvgMJZcHGxqGEhqKGT1xxTnYX2lnBG6XjR9Ka1GhtIR5iP7hvnP6s8Ewkag0r5Hx
 FQgWUOkCGkzzTvQcZdg4Mt/b44LGNqYCCmIjXSdLAAeueJ/OK4EBjBRwH7SWkTkYW/e1
 c5q6kLMtrmqZz+3Avnt6Eu5gRCrm1yjWnScCoLJMWRfex5Q2wW3WUoQHcRA3pF0KGbNM
 R5BQ==
X-Gm-Message-State: AOAM530yzVUhHmhqis/VwTh6aef2QPmSUSk1qYlmyQPBtx1VWbByXOZf
 OkpVQdcIIBdv4Z5j2En1Si7Zig==
X-Google-Smtp-Source: ABdhPJxo/NhgxithaqWrLPxbNYdLw/133Tn8AVr6unqxIT3ldPkLUGTwrzoV1zGJJKf24Xp3jzML8A==
X-Received: by 2002:a05:600c:285:: with SMTP id 5mr6811799wmk.41.1592945261037; 
 Tue, 23 Jun 2020 13:47:41 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id j6sm5686924wmb.3.2020.06.23.13.47.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Jun 2020 13:47:40 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Tue, 23 Jun 2020 23:47:17 +0300
Message-Id: <20200623204718.1057508-4-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200623204718.1057508-1-nikolay@cumulusnetworks.com>
References: <20200623204718.1057508-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net, anuradhak@cumulusnetworks.com
Subject: [Bridge] [PATCH net-next 3/4] net: bridge: add option to allow
	activity notifications for any fdb entries
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

This patch adds the ability to notify about activity of any entries
(static, permanent or ext_learn). EVPN multihoming peers need it to
properly and efficiently handle mac sync (peer active/locally active).
We add a new NFEA_ACTIVITY_NOTIFY attribute which is used to dump the
current activity state and to control if static entries should be monitored
at all. We use 2 bits - one to activate fdb entry tracking (disabled by
default) and the second to denote that an entry is inactive. We need
the second bit in order to avoid multiple notifications of inactivity.
Obviously this makes no difference for dynamic entries since at the time
of inactivity they get deleted, while the tracked non-dynamic entries get
the inactive bit set and get a notification.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 include/uapi/linux/neighbour.h |  11 ++++
 net/bridge/br_fdb.c            | 117 +++++++++++++++++++++++++++++----
 net/bridge/br_private.h        |   4 ++
 3 files changed, 119 insertions(+), 13 deletions(-)

diff --git a/include/uapi/linux/neighbour.h b/include/uapi/linux/neighbour.h
index 540ff48402a1..21e569297355 100644
--- a/include/uapi/linux/neighbour.h
+++ b/include/uapi/linux/neighbour.h
@@ -173,13 +173,24 @@ enum {
 };
 #define NDTA_MAX (__NDTA_MAX - 1)
 
+ /* FDB activity notification bits used in NFEA_ACTIVITY_NOTIFY:
+  * - FDB_NOTIFY_BIT - notify on activity/expire for any entry
+  * - FDB_NOTIFY_INACTIVE_BIT - mark as inactive to avoid multiple notifications
+  */
+enum {
+	FDB_NOTIFY_BIT		= (1 << 0),
+	FDB_NOTIFY_INACTIVE_BIT	= (1 << 1)
+};
+
 /* embedded into NDA_FDB_EXT_ATTRS:
  * [NDA_FDB_EXT_ATTRS] = {
+ *     [NFEA_ACTIVITY_NOTIFY]
  *     ...
  * }
  */
 enum {
 	NFEA_UNSPEC,
+	NFEA_ACTIVITY_NOTIFY,
 	__NFEA_MAX
 };
 #define NFEA_MAX (__NFEA_MAX - 1)
diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index ed80d9ab0fb9..642deb57c064 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -349,12 +349,21 @@ void br_fdb_cleanup(struct work_struct *work)
 	 */
 	rcu_read_lock();
 	hlist_for_each_entry_rcu(f, &br->fdb_list, fdb_node) {
-		unsigned long this_timer;
+		unsigned long this_timer = f->updated + delay;
 
 		if (test_bit(BR_FDB_STATIC, &f->flags) ||
-		    test_bit(BR_FDB_ADDED_BY_EXT_LEARN, &f->flags))
+		    test_bit(BR_FDB_ADDED_BY_EXT_LEARN, &f->flags)) {
+			if (test_bit(BR_FDB_NOTIFY, &f->flags)) {
+				if (time_after(this_timer, now))
+					work_delay = min(work_delay,
+							 this_timer - now);
+				else if (!test_and_set_bit(BR_FDB_NOTIFY_INACTIVE,
+							   &f->flags))
+					fdb_notify(br, f, RTM_NEWNEIGH, false);
+			}
 			continue;
-		this_timer = f->updated + delay;
+		}
+
 		if (time_after(this_timer, now)) {
 			work_delay = min(work_delay, this_timer - now);
 		} else {
@@ -556,11 +565,17 @@ int br_fdb_insert(struct net_bridge *br, struct net_bridge_port *source,
 	return ret;
 }
 
+/* returns true if the fdb was modified */
+static bool __fdb_mark_active(struct net_bridge_fdb_entry *fdb)
+{
+	return !!(test_bit(BR_FDB_NOTIFY_INACTIVE, &fdb->flags) &&
+		  test_and_clear_bit(BR_FDB_NOTIFY_INACTIVE, &fdb->flags));
+}
+
 void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
 		   const unsigned char *addr, u16 vid, unsigned long flags)
 {
 	struct net_bridge_fdb_entry *fdb;
-	bool fdb_modified = false;
 
 	/* some users want to always flood. */
 	if (hold_time(br) == 0)
@@ -575,6 +590,12 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
 					source->dev->name, addr, vid);
 		} else {
 			unsigned long now = jiffies;
+			bool fdb_modified = false;
+
+			if (now != fdb->updated) {
+				fdb->updated = now;
+				fdb_modified = __fdb_mark_active(fdb);
+			}
 
 			/* fastpath: update of existing entry */
 			if (unlikely(source != fdb->dst &&
@@ -587,8 +608,7 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
 					clear_bit(BR_FDB_ADDED_BY_EXT_LEARN,
 						  &fdb->flags);
 			}
-			if (now != fdb->updated)
-				fdb->updated = now;
+
 			if (unlikely(test_bit(BR_FDB_ADDED_BY_USER, &flags)))
 				set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
 			if (unlikely(fdb_modified)) {
@@ -667,6 +687,23 @@ static int fdb_fill_info(struct sk_buff *skb, const struct net_bridge *br,
 					&fdb->key.vlan_id))
 		goto nla_put_failure;
 
+	if (test_bit(BR_FDB_NOTIFY, &fdb->flags)) {
+		struct nlattr *nest = nla_nest_start(skb, NDA_FDB_EXT_ATTRS);
+		u8 notify_bits = FDB_NOTIFY_BIT;
+
+		if (!nest)
+			goto nla_put_failure;
+		if (test_bit(BR_FDB_NOTIFY_INACTIVE, &fdb->flags))
+			notify_bits |= FDB_NOTIFY_INACTIVE_BIT;
+
+		if (nla_put_u8(skb, NFEA_ACTIVITY_NOTIFY, notify_bits)) {
+			nla_nest_cancel(skb, nest);
+			goto nla_put_failure;
+		}
+
+		nla_nest_end(skb, nest);
+	}
+
 	nlmsg_end(skb, nlh);
 	return 0;
 
@@ -681,7 +718,9 @@ static inline size_t fdb_nlmsg_size(void)
 		+ nla_total_size(ETH_ALEN) /* NDA_LLADDR */
 		+ nla_total_size(sizeof(u32)) /* NDA_MASTER */
 		+ nla_total_size(sizeof(u16)) /* NDA_VLAN */
-		+ nla_total_size(sizeof(struct nda_cacheinfo));
+		+ nla_total_size(sizeof(struct nda_cacheinfo))
+		+ nla_total_size(0) /* NDA_FDB_EXT_ATTRS */
+		+ nla_total_size(sizeof(u8)); /* NFEA_ACTIVITY_NOTIFY */
 }
 
 static void fdb_notify(struct net_bridge *br,
@@ -791,14 +830,40 @@ int br_fdb_get(struct sk_buff *skb,
 	return err;
 }
 
+/* returns true if the fdb is modified */
+static bool fdb_handle_notify(struct net_bridge_fdb_entry *fdb, u8 notify)
+{
+	bool modified = false;
+
+	/* allow to mark an entry as inactive, usually done on creation */
+	if ((notify & FDB_NOTIFY_INACTIVE_BIT) &&
+	    !test_and_set_bit(BR_FDB_NOTIFY_INACTIVE, &fdb->flags))
+		modified = true;
+
+	if ((notify & FDB_NOTIFY_BIT) &&
+	    !test_and_set_bit(BR_FDB_NOTIFY, &fdb->flags)) {
+		/* enabled activity tracking */
+		modified = true;
+	} else if (!(notify & FDB_NOTIFY_BIT) &&
+		   test_and_clear_bit(BR_FDB_NOTIFY, &fdb->flags)) {
+		/* disabled activity tracking, clear notify state */
+		clear_bit(BR_FDB_NOTIFY_INACTIVE, &fdb->flags);
+		modified = true;
+	}
+
+	return modified;
+}
+
 /* Update (create or replace) forwarding database entry */
 static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
-			 const u8 *addr, struct ndmsg *ndm, u16 flags, u16 vid)
+			 const u8 *addr, struct ndmsg *ndm, u16 flags, u16 vid,
+			 struct nlattr *nfea_tb[])
 {
 	bool is_sticky = !!(ndm->ndm_flags & NTF_STICKY);
 	struct net_bridge_fdb_entry *fdb;
 	u16 state = ndm->ndm_state;
 	bool modified = false;
+	u8 notify = 0;
 
 	/* If the port cannot learn allow only local and static entries */
 	if (source && !(state & NUD_PERMANENT) && !(state & NUD_NOARP) &&
@@ -815,6 +880,13 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 	if (is_sticky && (state & NUD_PERMANENT))
 		return -EINVAL;
 
+	if (nfea_tb[NFEA_ACTIVITY_NOTIFY]) {
+		notify = nla_get_u8(nfea_tb[NFEA_ACTIVITY_NOTIFY]);
+		if ((notify & ~BR_FDB_NOTIFY_SETTABLE_BITS) ||
+		    (notify & BR_FDB_NOTIFY_SETTABLE_BITS) == FDB_NOTIFY_INACTIVE_BIT)
+			return -EINVAL;
+	}
+
 	fdb = br_fdb_find(br, addr, vid);
 	if (fdb == NULL) {
 		if (!(flags & NLM_F_CREATE))
@@ -858,6 +930,9 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 		modified = true;
 	}
 
+	if (fdb_handle_notify(fdb, notify))
+		modified = true;
+
 	set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
 
 	fdb->used = jiffies;
@@ -871,7 +946,7 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 
 static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
 			struct net_bridge_port *p, const unsigned char *addr,
-			u16 nlh_flags, u16 vid)
+			u16 nlh_flags, u16 vid, struct nlattr *nfea_tb[])
 {
 	int err = 0;
 
@@ -893,19 +968,24 @@ static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
 		err = br_fdb_external_learn_add(br, p, addr, vid, true);
 	} else {
 		spin_lock_bh(&br->hash_lock);
-		err = fdb_add_entry(br, p, addr, ndm, nlh_flags, vid);
+		err = fdb_add_entry(br, p, addr, ndm, nlh_flags, vid, nfea_tb);
 		spin_unlock_bh(&br->hash_lock);
 	}
 
 	return err;
 }
 
+static const struct nla_policy br_nda_fdb_pol[NFEA_MAX + 1] = {
+	[NFEA_ACTIVITY_NOTIFY]	= { .type = NLA_U8 },
+};
+
 /* Add new permanent fdb entry with RTM_NEWNEIGH */
 int br_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 	       struct net_device *dev,
 	       const unsigned char *addr, u16 vid, u16 nlh_flags,
 	       struct netlink_ext_ack *extack)
 {
+	struct nlattr *nfea_tb[NFEA_MAX + 1], *attr;
 	struct net_bridge_vlan_group *vg;
 	struct net_bridge_port *p = NULL;
 	struct net_bridge_vlan *v;
@@ -938,6 +1018,16 @@ int br_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 		vg = nbp_vlan_group(p);
 	}
 
+	if (tb[NDA_FDB_EXT_ATTRS]) {
+		attr = tb[NDA_FDB_EXT_ATTRS];
+		err = nla_parse_nested(nfea_tb, NFEA_MAX, attr,
+				       br_nda_fdb_pol, extack);
+		if (err)
+			return err;
+	} else {
+		memset(nfea_tb, 0, sizeof(struct nlattr *) * (NFEA_MAX + 1));
+	}
+
 	if (vid) {
 		v = br_vlan_find(vg, vid);
 		if (!v || !br_vlan_should_use(v)) {
@@ -946,9 +1036,9 @@ int br_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 		}
 
 		/* VID was specified, so use it. */
-		err = __br_fdb_add(ndm, br, p, addr, nlh_flags, vid);
+		err = __br_fdb_add(ndm, br, p, addr, nlh_flags, vid, nfea_tb);
 	} else {
-		err = __br_fdb_add(ndm, br, p, addr, nlh_flags, 0);
+		err = __br_fdb_add(ndm, br, p, addr, nlh_flags, 0, nfea_tb);
 		if (err || !vg || !vg->num_vlans)
 			goto out;
 
@@ -959,7 +1049,8 @@ int br_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 		list_for_each_entry(v, &vg->vlan_list, vlist) {
 			if (!br_vlan_should_use(v))
 				continue;
-			err = __br_fdb_add(ndm, br, p, addr, nlh_flags, v->vid);
+			err = __br_fdb_add(ndm, br, p, addr, nlh_flags, v->vid,
+					   nfea_tb);
 			if (err)
 				goto out;
 		}
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 7501be4eeba0..c0ae639e1b36 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -48,6 +48,8 @@ enum {
 /* Path to usermode spanning tree program */
 #define BR_STP_PROG	"/sbin/bridge-stp"
 
+#define BR_FDB_NOTIFY_SETTABLE_BITS (FDB_NOTIFY_BIT | FDB_NOTIFY_INACTIVE_BIT)
+
 typedef struct bridge_id bridge_id;
 typedef struct mac_addr mac_addr;
 typedef __u16 port_id;
@@ -184,6 +186,8 @@ enum {
 	BR_FDB_ADDED_BY_USER,
 	BR_FDB_ADDED_BY_EXT_LEARN,
 	BR_FDB_OFFLOADED,
+	BR_FDB_NOTIFY,
+	BR_FDB_NOTIFY_INACTIVE
 };
 
 struct net_bridge_fdb_key {
-- 
2.25.4

