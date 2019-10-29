Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A767E8791
	for <lists.bridge@lfdr.de>; Tue, 29 Oct 2019 12:55:53 +0100 (CET)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 95064135A;
	Tue, 29 Oct 2019 11:54:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B6BBF1319
	for <bridge@lists.linux-foundation.org>;
	Tue, 29 Oct 2019 11:54:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
	[209.85.167.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1A55E8A
	for <bridge@lists.linux-foundation.org>;
	Tue, 29 Oct 2019 11:54:41 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id q28so10292476lfa.5
	for <bridge@lists.linux-foundation.org>;
	Tue, 29 Oct 2019 04:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=7I2O5dji35aLiDh27ndEqGS9X9YbpFE0D+UgDtrpDuo=;
	b=SBeVDZF8+OqUqthJxBZtGuqtKwjvL1XQxTbnPcujxzKjDIKUJvNJZ453bsXMh8U0CU
	gvG9urMq/AxIHrPVYwmQN7QlirSxnujKlja0xlumWcxJXYB+eE2qWDfsAbFL+fiuN5Oz
	zMAk3+mhha6pRKPxhHBvsgtRvrJ3yt1byUuNM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=7I2O5dji35aLiDh27ndEqGS9X9YbpFE0D+UgDtrpDuo=;
	b=p0dlP3L4yvNflM6SCHX+DxeMl0fdcWmBIbrDYyueh/1qUchGLBR65QAYsVekpb9s7J
	Prv+qB9PyvyAeh0uD0ozDjJbr7YoTCYxxfIyeATqRlYVa3d4M2nZTw/EGmMKi2sYkS6a
	f51AzeQWtv4SVyAE5esR/mVHxYKtzH/IkfF2j6l8jiHT+UY2Ay33++LTM51ST1k5uJhm
	seqCNl3qf4MUJm9GFY0xNFKnRRcNQy3iVIY9JEZyMRaa91oBMpPf69ROw72QsSPyU3m9
	7DLCu2IoD98uQQNqYfwkFhv78JQEiu5ppjNOPasFMzmTwlAeS+OOevfFGCXCjpfHX6D0
	lF1g==
X-Gm-Message-State: APjAAAX5qiIYi7RD1w9QRLtywzy2cD8L4O8PFhcpf0RCVvaQxEDwhsYx
	ebTij2yEqW4A5nvwruxTxRlmoObdY9Q=
X-Google-Smtp-Source: APXvYqxS6TzpIqMwTCRAQpkejkmM0ETLRDkrIgz2pQQp0iB+DF03xSb21D90dHtPUTMOrxp5jgTWsw==
X-Received: by 2002:ac2:489b:: with SMTP id x27mr2110921lfc.109.1572350079441; 
	Tue, 29 Oct 2019 04:54:39 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
	[84.238.136.197]) by smtp.gmail.com with ESMTPSA id
	r12sm11953310lfp.63.2019.10.29.04.54.38
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 29 Oct 2019 04:54:38 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Tue, 29 Oct 2019 13:45:55 +0200
Message-Id: <20191029114559.28653-4-nikolay@cumulusnetworks.com>
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
Subject: [Bridge] [PATCH net-next 3/7] net: bridge: fdb: convert is_sticky
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

Straight-forward convert of the is_sticky field to bitops.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_fdb.c     | 12 ++++++------
 net/bridge/br_private.h |  4 ++--
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 1c890e2d694b..3645c1172b50 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -509,7 +509,6 @@ static struct net_bridge_fdb_entry *fdb_create(struct net_bridge *br,
 		fdb->added_by_user = 0;
 		fdb->added_by_external_learn = 0;
 		fdb->offloaded = 0;
-		fdb->is_sticky = 0;
 		fdb->updated = fdb->used = jiffies;
 		if (rhashtable_lookup_insert_fast(&br->fdb_hash_tbl,
 						  &fdb->rhnode,
@@ -590,7 +589,8 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
 			unsigned long now = jiffies;
 
 			/* fastpath: update of existing entry */
-			if (unlikely(source != fdb->dst && !fdb->is_sticky)) {
+			if (unlikely(source != fdb->dst &&
+				     !test_bit(BR_FDB_STICKY, &fdb->flags))) {
 				fdb->dst = source;
 				fdb_modified = true;
 				/* Take over HW learned entry */
@@ -662,7 +662,7 @@ static int fdb_fill_info(struct sk_buff *skb, const struct net_bridge *br,
 		ndm->ndm_flags |= NTF_OFFLOADED;
 	if (fdb->added_by_external_learn)
 		ndm->ndm_flags |= NTF_EXT_LEARNED;
-	if (fdb->is_sticky)
+	if (test_bit(BR_FDB_STICKY, &fdb->flags))
 		ndm->ndm_flags |= NTF_STICKY;
 
 	if (nla_put(skb, NDA_LLADDR, ETH_ALEN, &fdb->key.addr))
@@ -809,7 +809,7 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 			 const u8 *addr, u16 state, u16 flags, u16 vid,
 			 u8 ndm_flags)
 {
-	u8 is_sticky = !!(ndm_flags & NTF_STICKY);
+	bool is_sticky = !!(ndm_flags & NTF_STICKY);
 	struct net_bridge_fdb_entry *fdb;
 	bool modified = false;
 
@@ -866,8 +866,8 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 		modified = true;
 	}
 
-	if (is_sticky != fdb->is_sticky) {
-		fdb->is_sticky = is_sticky;
+	if (is_sticky != test_bit(BR_FDB_STICKY, &fdb->flags)) {
+		change_bit(BR_FDB_STICKY, &fdb->flags);
 		modified = true;
 	}
 
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index c5258fad76e5..296f2f12c232 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -176,6 +176,7 @@ struct net_bridge_vlan_group {
 enum {
 	BR_FDB_LOCAL,
 	BR_FDB_STATIC,
+	BR_FDB_STICKY,
 };
 
 struct net_bridge_fdb_key {
@@ -190,8 +191,7 @@ struct net_bridge_fdb_entry {
 	struct net_bridge_fdb_key	key;
 	struct hlist_node		fdb_node;
 	unsigned long			flags;
-	unsigned char			is_sticky:1,
-					added_by_user:1,
+	unsigned char			added_by_user:1,
 					added_by_external_learn:1,
 					offloaded:1;
 
-- 
2.21.0

