Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 5931BEDBC1
	for <lists.bridge@lfdr.de>; Mon,  4 Nov 2019 10:39:27 +0100 (CET)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5BA51E93;
	Mon,  4 Nov 2019 09:39:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 00070E8A
	for <bridge@lists.linux-foundation.org>;
	Mon,  4 Nov 2019 09:39:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
	[209.85.208.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 35CEDA9
	for <bridge@lists.linux-foundation.org>;
	Mon,  4 Nov 2019 09:39:14 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id n5so5760811ljc.9
	for <bridge@lists.linux-foundation.org>;
	Mon, 04 Nov 2019 01:39:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=v8Gz0yBJbcEetAytEO+LJhBLsryOETzERFWEDqpIaYA=;
	b=J9m3BFkT/c4/OPNj2U8/1uXY+0HZVycZgcisapW4ewfYvgjZ/381Eb64uTLmxHqdZr
	qD4AEdZxP1YrGYSewoKY0dCnupT3gPfVK5gQRjguvp35X8t9jnEPz5igTfvSdyjc09vu
	3G7l9IekdCcC0v3Ug+IF/Ei5E7buX/seM0nA8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=v8Gz0yBJbcEetAytEO+LJhBLsryOETzERFWEDqpIaYA=;
	b=NG85P8er/xQRbFFB31YFzKg0ZeU+AmmILsqA6fU/71icZ0yQQUDRTtcSgrKJt8EvIZ
	UAU60Gh8s+OdcQMEoQzbm9RlC4UHpTY0B7vgKY3UMdFdVRChtd1iIP2bdr77Z4uXRBLI
	l9BWJpV6EziLr5sLGvaS6/hVnV8AaSJgxJYjCHIhh//lNr+tbNqtH+cvlK5cyPiL7BKl
	QtvyRxB1fdOcEgM1CPu+SuUJ5M17HHZ7bYA417N4yIQTtQFx2ca0Q0c8cDYzQX+znBC3
	5elFLI1yYIJvjWZrFe9D9iI80jzBk5UJTuHvZTO07N/iIH7z+zrwM5MOwHPbEw+fbTxb
	dfPg==
X-Gm-Message-State: APjAAAUF6OygUh7o1ffFUYl1teN6xLieemiZrcN07T3Oc2/oQnryq4yg
	r9ASV5IXzY2+4GODZ+6jJhLfaA==
X-Google-Smtp-Source: APXvYqxm2PJvcn9n/1/R6pvkpbCIHaWFh0d6PHZv57dlvpr4UZ6N5D3CXFlVChUwbaWPgxXcmNko5g==
X-Received: by 2002:a2e:86da:: with SMTP id n26mr17891872ljj.256.1572860352399;
	Mon, 04 Nov 2019 01:39:12 -0800 (PST)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
	[84.238.136.197]) by smtp.gmail.com with ESMTPSA id
	v21sm6322576lfi.74.2019.11.04.01.39.11
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 04 Nov 2019 01:39:11 -0800 (PST)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Mon,  4 Nov 2019 11:36:51 +0200
Message-Id: <20191104093651.16754-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
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
Subject: [Bridge] [PATCH net-next] net: bridge: fdb: eliminate extra port
	state tests from fast-path
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

When commit df1c0b8468b3 ("[BRIDGE]: Packets leaking out of
disabled/blocked ports.") introduced the port state tests in
br_fdb_update() it was to avoid learning/refreshing from STP BPDUs, it was
also used to avoid learning/refreshing from user-space with NTF_USE. Those
two tests are done for every packet entering the bridge if it's learning,
but for the fast-path we already have them checked in br_handle_frame() and
is unnecessary to do it again. Thus push the checks to the unlikely cases
and drop them from br_fdb_update(), the new nbp_state_should_learn() helper
is used to determine if the port state allows br_fdb_update() to be called.
The two places which need to do it manually are:
 - user-space add call with NTF_USE set
 - link-local packet learning done in __br_handle_local_finish()

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_fdb.c     | 8 +++-----
 net/bridge/br_input.c   | 1 +
 net/bridge/br_private.h | 5 +++++
 3 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 284b3662d234..4877a0db16c6 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -566,11 +566,6 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
 	if (hold_time(br) == 0)
 		return;
 
-	/* ignore packets unless we are using this port */
-	if (!(source->state == BR_STATE_LEARNING ||
-	      source->state == BR_STATE_FORWARDING))
-		return;
-
 	fdb = fdb_find_rcu(&br->fdb_hash_tbl, addr, vid);
 	if (likely(fdb)) {
 		/* attempt to update an entry for a local interface */
@@ -886,6 +881,9 @@ static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
 				br->dev->name);
 			return -EINVAL;
 		}
+		if (!nbp_state_should_learn(p))
+			return 0;
+
 		local_bh_disable();
 		rcu_read_lock();
 		br_fdb_update(br, p, addr, vid, BIT(BR_FDB_ADDED_BY_USER));
diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index f37b05090f45..8944ceb47fe9 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -182,6 +182,7 @@ static void __br_handle_local_finish(struct sk_buff *skb)
 
 	/* check if vlan is allowed, to avoid spoofing */
 	if ((p->flags & BR_LEARNING) &&
+	    nbp_state_should_learn(p) &&
 	    !br_opt_get(p->br, BROPT_NO_LL_LEARN) &&
 	    br_should_learn(p, skb, &vid))
 		br_fdb_update(p->br, p, eth_hdr(skb)->h_source, vid, 0);
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 08742bff9bf0..36b0367ca1e0 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -500,6 +500,11 @@ static inline bool br_vlan_should_use(const struct net_bridge_vlan *v)
 	return true;
 }
 
+static inline bool nbp_state_should_learn(const struct net_bridge_port *p)
+{
+	return p->state == BR_STATE_LEARNING || p->state == BR_STATE_FORWARDING;
+}
+
 static inline int br_opt_get(const struct net_bridge *br,
 			     enum net_bridge_opts opt)
 {
-- 
2.21.0

