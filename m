Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 434C2E8794
	for <lists.bridge@lfdr.de>; Tue, 29 Oct 2019 12:56:12 +0100 (CET)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9E400136F;
	Tue, 29 Oct 2019 11:54:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8F1791359
	for <bridge@lists.linux-foundation.org>;
	Tue, 29 Oct 2019 11:54:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
	[209.85.167.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A38C28A
	for <bridge@lists.linux-foundation.org>;
	Tue, 29 Oct 2019 11:54:42 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id f4so4298140lfk.7
	for <bridge@lists.linux-foundation.org>;
	Tue, 29 Oct 2019 04:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=fkymFMBcu2hIXY6JnSmM75l10xFOjoeHNseRoMNae3c=;
	b=DR0rQHNJpB2jv5pgCtDSPTcDRzltA5+s2CPkBGXRDzwYr6ahKSSWKc+f6xRLqr0vM4
	4dG4fRklrNLL2kEdJe4mfzIbHLgp1wAY40lLS5Gyyy60OKqsXVYUIoERn6fVglTS0I8i
	pqvCMStubqJQwd7J0N6su/eSNm4O7kRBH3n2c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=fkymFMBcu2hIXY6JnSmM75l10xFOjoeHNseRoMNae3c=;
	b=Hnw+95GEcx7IPNXvuw16EuMJleParfngc6k8H7POPG2Kebm97hOwF2YnPHpNvpv3Is
	BemrwJ/XcV3aqCCO4Z3ergJbUTwdad74WoMRepE04CAXyqreGmW6jpc3U3Du9R8Cdzjw
	5VimnNFjq10LOGIAUhfcdZ2X40T2+kbGlzn33wSJmvL/NZoKj4h5657fky/9tK4rwJEM
	D8Ad6xa+LxpP0WNxzRE5eH4tjyYh6LhMT3IsoRncLQacppExniGPGiXb4GWB69y8s8e8
	OWcvgzqyGLYUhsOdCBAUzEqIVhkeMkHIpmQzy7qOZk+H8cFAPmvM+I0Ty9zmWSxTt1i8
	k8PQ==
X-Gm-Message-State: APjAAAUCLK79RkXtZfv9cnCyhXCv/IZ/bTVFXz5cWoTl36CPrfXiFch/
	qCMpio7VqmYubF2iw1JC19KSsQ==
X-Google-Smtp-Source: APXvYqwln9JYYJ+GL7ZV8gNCG563qzUGVCZPeXsw3YskA9yp7Odl1YVsKsr5a04yR7nS8bWUJLcKRw==
X-Received: by 2002:a19:c606:: with SMTP id w6mr2170902lff.71.1572350081086;
	Tue, 29 Oct 2019 04:54:41 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
	[84.238.136.197]) by smtp.gmail.com with ESMTPSA id
	r12sm11953310lfp.63.2019.10.29.04.54.40
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 29 Oct 2019 04:54:40 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Tue, 29 Oct 2019 13:45:56 +0200
Message-Id: <20191029114559.28653-5-nikolay@cumulusnetworks.com>
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
Subject: [Bridge] [PATCH net-next 4/7] net: bridge: fdb: convert
	added_by_user to bitops
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

Straight-forward convert of the added_by_user field to bitops.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_fdb.c       | 25 ++++++++++++-------------
 net/bridge/br_private.h   |  4 ++--
 net/bridge/br_switchdev.c |  6 ++++--
 3 files changed, 18 insertions(+), 17 deletions(-)

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 3645c1172b50..6f00cca4afc8 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -225,7 +225,7 @@ static void fdb_delete_local(struct net_bridge *br,
 		if (op != p && ether_addr_equal(op->dev->dev_addr, addr) &&
 		    (!vid || br_vlan_find(vg, vid))) {
 			f->dst = op;
-			f->added_by_user = 0;
+			clear_bit(BR_FDB_ADDED_BY_USER, &f->flags);
 			return;
 		}
 	}
@@ -236,7 +236,7 @@ static void fdb_delete_local(struct net_bridge *br,
 	if (p && ether_addr_equal(br->dev->dev_addr, addr) &&
 	    (!vid || (v && br_vlan_should_use(v)))) {
 		f->dst = NULL;
-		f->added_by_user = 0;
+		clear_bit(BR_FDB_ADDED_BY_USER, &f->flags);
 		return;
 	}
 
@@ -252,7 +252,7 @@ void br_fdb_find_delete_local(struct net_bridge *br,
 	spin_lock_bh(&br->hash_lock);
 	f = br_fdb_find(br, addr, vid);
 	if (f && test_bit(BR_FDB_LOCAL, &f->flags) &&
-	    !f->added_by_user && f->dst == p)
+	    !test_bit(BR_FDB_ADDED_BY_USER, &f->flags) && f->dst == p)
 		fdb_delete_local(br, p, f);
 	spin_unlock_bh(&br->hash_lock);
 }
@@ -268,7 +268,7 @@ void br_fdb_changeaddr(struct net_bridge_port *p, const unsigned char *newaddr)
 	vg = nbp_vlan_group(p);
 	hlist_for_each_entry(f, &br->fdb_list, fdb_node) {
 		if (f->dst == p && test_bit(BR_FDB_LOCAL, &f->flags) &&
-		    !f->added_by_user) {
+		    !test_bit(BR_FDB_ADDED_BY_USER, &f->flags)) {
 			/* delete old one */
 			fdb_delete_local(br, p, f);
 
@@ -310,7 +310,7 @@ void br_fdb_change_mac_address(struct net_bridge *br, const u8 *newaddr)
 	/* If old entry was unassociated with any port, then delete it. */
 	f = br_fdb_find(br, br->dev->dev_addr, 0);
 	if (f && test_bit(BR_FDB_LOCAL, &f->flags) &&
-	    !f->dst && !f->added_by_user)
+	    !f->dst && !test_bit(BR_FDB_ADDED_BY_USER, &f->flags))
 		fdb_delete_local(br, NULL, f);
 
 	fdb_insert(br, NULL, newaddr, 0);
@@ -326,7 +326,7 @@ void br_fdb_change_mac_address(struct net_bridge *br, const u8 *newaddr)
 			continue;
 		f = br_fdb_find(br, br->dev->dev_addr, v->vid);
 		if (f && test_bit(BR_FDB_LOCAL, &f->flags) &&
-		    !f->dst && !f->added_by_user)
+		    !f->dst && !test_bit(BR_FDB_ADDED_BY_USER, &f->flags))
 			fdb_delete_local(br, NULL, f);
 		fdb_insert(br, NULL, newaddr, v->vid);
 	}
@@ -506,7 +506,6 @@ static struct net_bridge_fdb_entry *fdb_create(struct net_bridge *br,
 			set_bit(BR_FDB_LOCAL, &fdb->flags);
 		if (is_static)
 			set_bit(BR_FDB_STATIC, &fdb->flags);
-		fdb->added_by_user = 0;
 		fdb->added_by_external_learn = 0;
 		fdb->offloaded = 0;
 		fdb->updated = fdb->used = jiffies;
@@ -600,7 +599,7 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
 			if (now != fdb->updated)
 				fdb->updated = now;
 			if (unlikely(added_by_user))
-				fdb->added_by_user = 1;
+				set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
 			if (unlikely(fdb_modified)) {
 				trace_br_fdb_update(br, source, addr, vid, added_by_user);
 				fdb_notify(br, fdb, RTM_NEWNEIGH, true);
@@ -611,7 +610,7 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
 		fdb = fdb_create(br, source, addr, vid, 0, 0);
 		if (fdb) {
 			if (unlikely(added_by_user))
-				fdb->added_by_user = 1;
+				set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
 			trace_br_fdb_update(br, source, addr, vid,
 					    added_by_user);
 			fdb_notify(br, fdb, RTM_NEWNEIGH, true);
@@ -871,7 +870,7 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 		modified = true;
 	}
 
-	fdb->added_by_user = 1;
+	set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
 
 	fdb->used = jiffies;
 	if (modified) {
@@ -1129,7 +1128,7 @@ int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
 			goto err_unlock;
 		}
 		if (swdev_notify)
-			fdb->added_by_user = 1;
+			set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
 		fdb->added_by_external_learn = 1;
 		fdb_notify(br, fdb, RTM_NEWNEIGH, swdev_notify);
 	} else {
@@ -1143,14 +1142,14 @@ int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
 		if (fdb->added_by_external_learn) {
 			/* Refresh entry */
 			fdb->used = jiffies;
-		} else if (!fdb->added_by_user) {
+		} else if (!test_bit(BR_FDB_ADDED_BY_USER, &fdb->flags)) {
 			/* Take over SW learned entry */
 			fdb->added_by_external_learn = 1;
 			modified = true;
 		}
 
 		if (swdev_notify)
-			fdb->added_by_user = 1;
+			set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
 
 		if (modified)
 			fdb_notify(br, fdb, RTM_NEWNEIGH, swdev_notify);
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 296f2f12c232..bf4a4d1cc3bb 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -177,6 +177,7 @@ enum {
 	BR_FDB_LOCAL,
 	BR_FDB_STATIC,
 	BR_FDB_STICKY,
+	BR_FDB_ADDED_BY_USER,
 };
 
 struct net_bridge_fdb_key {
@@ -191,8 +192,7 @@ struct net_bridge_fdb_entry {
 	struct net_bridge_fdb_key	key;
 	struct hlist_node		fdb_node;
 	unsigned long			flags;
-	unsigned char			added_by_user:1,
-					added_by_external_learn:1,
+	unsigned char			added_by_external_learn:1,
 					offloaded:1;
 
 	/* write-heavy members should not affect lookups */
diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
index 921310d3cbae..5010fbf74778 100644
--- a/net/bridge/br_switchdev.c
+++ b/net/bridge/br_switchdev.c
@@ -129,14 +129,16 @@ br_switchdev_fdb_notify(const struct net_bridge_fdb_entry *fdb, int type)
 		br_switchdev_fdb_call_notifiers(false, fdb->key.addr.addr,
 						fdb->key.vlan_id,
 						fdb->dst->dev,
-						fdb->added_by_user,
+						test_bit(BR_FDB_ADDED_BY_USER,
+							 &fdb->flags),
 						fdb->offloaded);
 		break;
 	case RTM_NEWNEIGH:
 		br_switchdev_fdb_call_notifiers(true, fdb->key.addr.addr,
 						fdb->key.vlan_id,
 						fdb->dst->dev,
-						fdb->added_by_user,
+						test_bit(BR_FDB_ADDED_BY_USER,
+							 &fdb->flags),
 						fdb->offloaded);
 		break;
 	}
-- 
2.21.0

