Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B2FE8790
	for <lists.bridge@lfdr.de>; Tue, 29 Oct 2019 12:55:35 +0100 (CET)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B7FEB1364;
	Tue, 29 Oct 2019 11:54:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 82B95131A
	for <bridge@lists.linux-foundation.org>;
	Tue, 29 Oct 2019 11:54:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
	[209.85.208.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9F07A8A
	for <bridge@lists.linux-foundation.org>;
	Tue, 29 Oct 2019 11:54:38 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id m9so5261013ljh.8
	for <bridge@lists.linux-foundation.org>;
	Tue, 29 Oct 2019 04:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=nVUAf06IlNY9hlosI7h6fih1ISKh9/MWxvOlLtqkvZ8=;
	b=a/Wu7M6qPzwA5v+GoZXu1j4iD8on0iJrACGl5QBerxkogT2HDGdTPj/NZzpHLQ7+zR
	zRy8swl2bftN+NPTB+8BO8N9FIOPzO7g8ltQQvE2mULR9qY/yfQXKVRRhj8IlrWe/tqZ
	T440uHf40hOltU/jrFUHDPRIqjxtdiMHmXiqY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=nVUAf06IlNY9hlosI7h6fih1ISKh9/MWxvOlLtqkvZ8=;
	b=kpb9sFTRSS13lVDfCspQUC2IeYS4n6yxEmVUq2i4NKArukeDaF8csK834+N3E87lq4
	rfFcCgWX6KftQkNJcr0BTlbSmiyarlyciYqjuA744dwKnPndR8oiQa9V22goHouLAkBl
	2pTZlwaJuhINa2OSRDCuMNY/CP99V/MC6Ba4annlzzwtlwT5sC/MglMeegGEZu14JoXT
	H5DYGwnV6Ls8GMlmZgVddLGsQw9yVjZHd4earWD7XsIDwE/3y/eT7nSYeKOuqZXpgshh
	pOLz7k+RLr+s74dtaMCnz45PdQogIzYXalxeTrbtY7O1KDU5mLNfSUuMDoMyck9sqXZF
	GOmQ==
X-Gm-Message-State: APjAAAVvkqwbEzR1b0d2lPOm1+YrfqoiS8q1b/tILWTQcKHpLc2NhU1g
	Z0VS/NwUpjZYZusaMOkuAWzohA==
X-Google-Smtp-Source: APXvYqy+/QupBO5pICQv+j6B8JALzrg945BOB0LAeqAwWICpPmiX7F128FOzWBusbzk70QsM6umKbg==
X-Received: by 2002:a2e:9bd2:: with SMTP id w18mr2396661ljj.140.1572350077058; 
	Tue, 29 Oct 2019 04:54:37 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
	[84.238.136.197]) by smtp.gmail.com with ESMTPSA id
	r12sm11953310lfp.63.2019.10.29.04.54.35
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 29 Oct 2019 04:54:36 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Tue, 29 Oct 2019 13:45:54 +0200
Message-Id: <20191029114559.28653-3-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191029114559.28653-1-nikolay@cumulusnetworks.com>
References: <20191029114559.28653-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
	roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	davem@davemloft.net
Subject: [Bridge] [PATCH net-next 2/7] net: bridge: fdb: convert is_static
	to bitops
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

Convert the is_static to bitops, make use of the combined
test_and_set/clear_bit to simplify expressions in fdb_add_entry.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_fdb.c     | 40 +++++++++++++++++++---------------------
 net/bridge/br_private.h |  4 ++--
 2 files changed, 21 insertions(+), 23 deletions(-)

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index e67d5eb8bc1d..1c890e2d694b 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -75,8 +75,9 @@ static inline unsigned long hold_time(const struct net_bridge *br)
 static inline int has_expired(const struct net_bridge *br,
 				  const struct net_bridge_fdb_entry *fdb)
 {
-	return !fdb->is_static && !fdb->added_by_external_learn &&
-		time_before_eq(fdb->updated + hold_time(br), jiffies);
+	return !test_bit(BR_FDB_STATIC, &fdb->flags) &&
+	       !fdb->added_by_external_learn &&
+	       time_before_eq(fdb->updated + hold_time(br), jiffies);
 }
 
 static void fdb_rcu_free(struct rcu_head *head)
@@ -197,7 +198,7 @@ static void fdb_delete(struct net_bridge *br, struct net_bridge_fdb_entry *f,
 {
 	trace_fdb_delete(br, f);
 
-	if (f->is_static)
+	if (test_bit(BR_FDB_STATIC, &f->flags))
 		fdb_del_hw_addr(br, f->key.addr.addr);
 
 	hlist_del_init_rcu(&f->fdb_node);
@@ -350,7 +351,8 @@ void br_fdb_cleanup(struct work_struct *work)
 	hlist_for_each_entry_rcu(f, &br->fdb_list, fdb_node) {
 		unsigned long this_timer;
 
-		if (f->is_static || f->added_by_external_learn)
+		if (test_bit(BR_FDB_STATIC, &f->flags) ||
+		    f->added_by_external_learn)
 			continue;
 		this_timer = f->updated + delay;
 		if (time_after(this_timer, now)) {
@@ -377,7 +379,7 @@ void br_fdb_flush(struct net_bridge *br)
 
 	spin_lock_bh(&br->hash_lock);
 	hlist_for_each_entry_safe(f, tmp, &br->fdb_list, fdb_node) {
-		if (!f->is_static)
+		if (!test_bit(BR_FDB_STATIC, &f->flags))
 			fdb_delete(br, f, true);
 	}
 	spin_unlock_bh(&br->hash_lock);
@@ -401,7 +403,8 @@ void br_fdb_delete_by_port(struct net_bridge *br,
 			continue;
 
 		if (!do_all)
-			if (f->is_static || (vid && f->key.vlan_id != vid))
+			if (test_bit(BR_FDB_STATIC, &f->flags) ||
+			    (vid && f->key.vlan_id != vid))
 				continue;
 
 		if (test_bit(BR_FDB_LOCAL, &f->flags))
@@ -474,7 +477,7 @@ int br_fdb_fillbuf(struct net_bridge *br, void *buf,
 		fe->port_hi = f->dst->port_no >> 8;
 
 		fe->is_local = test_bit(BR_FDB_LOCAL, &f->flags);
-		if (!f->is_static)
+		if (!test_bit(BR_FDB_STATIC, &f->flags))
 			fe->ageing_timer_value = jiffies_delta_to_clock_t(jiffies - f->updated);
 		++fe;
 		++num;
@@ -501,7 +504,8 @@ static struct net_bridge_fdb_entry *fdb_create(struct net_bridge *br,
 		fdb->flags = 0;
 		if (is_local)
 			set_bit(BR_FDB_LOCAL, &fdb->flags);
-		fdb->is_static = is_static;
+		if (is_static)
+			set_bit(BR_FDB_STATIC, &fdb->flags);
 		fdb->added_by_user = 0;
 		fdb->added_by_external_learn = 0;
 		fdb->offloaded = 0;
@@ -624,7 +628,7 @@ static int fdb_to_nud(const struct net_bridge *br,
 {
 	if (test_bit(BR_FDB_LOCAL, &fdb->flags))
 		return NUD_PERMANENT;
-	else if (fdb->is_static)
+	else if (test_bit(BR_FDB_STATIC, &fdb->flags))
 		return NUD_NOARP;
 	else if (has_expired(br, fdb))
 		return NUD_STALE;
@@ -847,22 +851,16 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 	if (fdb_to_nud(br, fdb) != state) {
 		if (state & NUD_PERMANENT) {
 			set_bit(BR_FDB_LOCAL, &fdb->flags);
-			if (!fdb->is_static) {
-				fdb->is_static = 1;
+			if (!test_and_set_bit(BR_FDB_STATIC, &fdb->flags))
 				fdb_add_hw_addr(br, addr);
-			}
 		} else if (state & NUD_NOARP) {
 			clear_bit(BR_FDB_LOCAL, &fdb->flags);
-			if (!fdb->is_static) {
-				fdb->is_static = 1;
+			if (!test_and_set_bit(BR_FDB_STATIC, &fdb->flags))
 				fdb_add_hw_addr(br, addr);
-			}
 		} else {
 			clear_bit(BR_FDB_LOCAL, &fdb->flags);
-			if (fdb->is_static) {
-				fdb->is_static = 0;
+			if (test_and_clear_bit(BR_FDB_STATIC, &fdb->flags))
 				fdb_del_hw_addr(br, addr);
-			}
 		}
 
 		modified = true;
@@ -1070,7 +1068,7 @@ int br_fdb_sync_static(struct net_bridge *br, struct net_bridge_port *p)
 	rcu_read_lock();
 	hlist_for_each_entry_rcu(f, &br->fdb_list, fdb_node) {
 		/* We only care for static entries */
-		if (!f->is_static)
+		if (!test_bit(BR_FDB_STATIC, &f->flags))
 			continue;
 		err = dev_uc_add(p->dev, f->key.addr.addr);
 		if (err)
@@ -1084,7 +1082,7 @@ int br_fdb_sync_static(struct net_bridge *br, struct net_bridge_port *p)
 rollback:
 	hlist_for_each_entry_rcu(tmp, &br->fdb_list, fdb_node) {
 		/* We only care for static entries */
-		if (!tmp->is_static)
+		if (!test_bit(BR_FDB_STATIC, &tmp->flags))
 			continue;
 		if (tmp == f)
 			break;
@@ -1103,7 +1101,7 @@ void br_fdb_unsync_static(struct net_bridge *br, struct net_bridge_port *p)
 	rcu_read_lock();
 	hlist_for_each_entry_rcu(f, &br->fdb_list, fdb_node) {
 		/* We only care for static entries */
-		if (!f->is_static)
+		if (!test_bit(BR_FDB_STATIC, &f->flags))
 			continue;
 
 		dev_uc_del(p->dev, f->key.addr.addr);
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 888cbe9c639a..c5258fad76e5 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -175,6 +175,7 @@ struct net_bridge_vlan_group {
 /* bridge fdb flags */
 enum {
 	BR_FDB_LOCAL,
+	BR_FDB_STATIC,
 };
 
 struct net_bridge_fdb_key {
@@ -189,8 +190,7 @@ struct net_bridge_fdb_entry {
 	struct net_bridge_fdb_key	key;
 	struct hlist_node		fdb_node;
 	unsigned long			flags;
-	unsigned char			is_static:1,
-					is_sticky:1,
+	unsigned char			is_sticky:1,
 					added_by_user:1,
 					added_by_external_learn:1,
 					offloaded:1;
-- 
2.21.0

