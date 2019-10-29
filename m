Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF9BE879A
	for <lists.bridge@lfdr.de>; Tue, 29 Oct 2019 12:57:06 +0100 (CET)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7BA321387;
	Tue, 29 Oct 2019 11:54:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 37BBB137A
	for <bridge@lists.linux-foundation.org>;
	Tue, 29 Oct 2019 11:54:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
	[209.85.167.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7ED3F8A
	for <bridge@lists.linux-foundation.org>;
	Tue, 29 Oct 2019 11:54:46 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id y127so10318141lfc.0
	for <bridge@lists.linux-foundation.org>;
	Tue, 29 Oct 2019 04:54:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=Alx6hwJFqQW86I9mK7sWZ4rlHiAVGWjJO9dOgPYX3IQ=;
	b=DX+diIgk94MzEFpurKXgwZUfqqbITZWORsqnY9rcz2UDh7eYO3yyCzSDJNc3IiyRkE
	lQVGNWhjL0/Zs1igUGeMwsrrPpqk+rgIw7lReYUl/D+xvxfvO5rlky3ceG/S6tCmriEP
	g9e5Cc6bXN4yjhzH9mF1xzSQTTBk+mXqqvTDQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=Alx6hwJFqQW86I9mK7sWZ4rlHiAVGWjJO9dOgPYX3IQ=;
	b=lARTMKu6PIzjS5yS6QyOWIQ+Cxc03PsgxLYgUS8cUo7opubO+AFbiljF4gLhxaXzOV
	vR7S1UY7no+JAs29v7rRauBeudoUGTXhA/fEga8y3nC4lHhaCXITiRvUNEZ2uT6jvriX
	UK6UB+PVFsql44CtR7k6yqR+cSqabkMK06sOmRgvDlRDVKYs3RFfZgRptEDFnAtWJqAa
	G0B00NTI79c7PJSrCS4llJ9s4Fkiqx9yUPWOmEYGMwjXRlJRoC15mRwoLA7l5BVthMYo
	3t220G8Ny1ZAwWiL0ZJQrl0BSCzFH2gMYggM7JwmXd4sFnEQN145vhI5/Hj3HExeEqjv
	MqLw==
X-Gm-Message-State: APjAAAV6Rm3l2kRIlH2C7Hw6+frWkPehQM9DruPe9PP64Vx+OiTAm7EP
	qalHupW8mpu6Nbu2Sb5SoyBxfu09J2I=
X-Google-Smtp-Source: APXvYqyd688dx/2rsEqI+kl3+s5rhfCyxuhK3iWZEbwzmS1weC2bbcGt0DfwzIEPHjGP99RtxmjyKw==
X-Received: by 2002:a19:2d0c:: with SMTP id k12mr2250977lfj.38.1572350084962; 
	Tue, 29 Oct 2019 04:54:44 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
	[84.238.136.197]) by smtp.gmail.com with ESMTPSA id
	r12sm11953310lfp.63.2019.10.29.04.54.43
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 29 Oct 2019 04:54:44 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Tue, 29 Oct 2019 13:45:59 +0200
Message-Id: <20191029114559.28653-8-nikolay@cumulusnetworks.com>
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
Subject: [Bridge] [PATCH net-next 7/7] net: bridge: fdb: set flags directly
	in fdb_create
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

No need to have separate arguments for each flag, just set the flags to
whatever was passed to fdb_create() before the fdb is published.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_fdb.c | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index d4f6b398303d..f244f2ac7156 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -491,8 +491,7 @@ static struct net_bridge_fdb_entry *fdb_create(struct net_bridge *br,
 					       struct net_bridge_port *source,
 					       const unsigned char *addr,
 					       __u16 vid,
-					       unsigned char is_local,
-					       unsigned char is_static)
+					       unsigned long flags)
 {
 	struct net_bridge_fdb_entry *fdb;
 
@@ -501,11 +500,7 @@ static struct net_bridge_fdb_entry *fdb_create(struct net_bridge *br,
 		memcpy(fdb->key.addr.addr, addr, ETH_ALEN);
 		fdb->dst = source;
 		fdb->key.vlan_id = vid;
-		fdb->flags = 0;
-		if (is_local)
-			set_bit(BR_FDB_LOCAL, &fdb->flags);
-		if (is_static)
-			set_bit(BR_FDB_STATIC, &fdb->flags);
+		fdb->flags = flags;
 		fdb->updated = fdb->used = jiffies;
 		if (rhashtable_lookup_insert_fast(&br->fdb_hash_tbl,
 						  &fdb->rhnode,
@@ -539,7 +534,8 @@ static int fdb_insert(struct net_bridge *br, struct net_bridge_port *source,
 		fdb_delete(br, fdb, true);
 	}
 
-	fdb = fdb_create(br, source, addr, vid, 1, 1);
+	fdb = fdb_create(br, source, addr, vid,
+			 BIT(BR_FDB_LOCAL) | BIT(BR_FDB_STATIC));
 	if (!fdb)
 		return -ENOMEM;
 
@@ -605,7 +601,7 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
 		}
 	} else {
 		spin_lock(&br->hash_lock);
-		fdb = fdb_create(br, source, addr, vid, 0, 0);
+		fdb = fdb_create(br, source, addr, vid, 0);
 		if (fdb) {
 			if (unlikely(added_by_user))
 				set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
@@ -830,7 +826,7 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 		if (!(flags & NLM_F_CREATE))
 			return -ENOENT;
 
-		fdb = fdb_create(br, source, addr, vid, 0, 0);
+		fdb = fdb_create(br, source, addr, vid, 0);
 		if (!fdb)
 			return -ENOMEM;
 
@@ -1120,7 +1116,7 @@ int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
 
 	fdb = br_fdb_find(br, addr, vid);
 	if (!fdb) {
-		fdb = fdb_create(br, p, addr, vid, 0, 0);
+		fdb = fdb_create(br, p, addr, vid, 0);
 		if (!fdb) {
 			err = -ENOMEM;
 			goto err_unlock;
-- 
2.21.0

