Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC607DD1E
	for <lists.bridge@lfdr.de>; Thu,  1 Aug 2019 16:00:30 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 479BB1834;
	Thu,  1 Aug 2019 13:59:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D6E1D2C11
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 12:21:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1EC852C6
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 12:21:14 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id a15so56953379wmj.5
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 05:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=TlNchQ/vtVIj+X/dPogW/VhRCNvW7uKobaOaSR9wIVw=;
	b=XztUXeM97JDaihnB0HagW5xvRBMhRYAr79vQdfBG04yIqoZYcKub3kXOUsu9ULFsjm
	BIzlEU01i72gcZwbffxBob+Ml856DF5tWt2iinloyTic4HrdjAPmJmjuHsJ1aFytONGB
	EsMVjzQJwTbx1vE/QlYDqe3xTgtpoPu9BXczg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=TlNchQ/vtVIj+X/dPogW/VhRCNvW7uKobaOaSR9wIVw=;
	b=jz2HLhJr9xjxKLPMMYEPYqRl8ybUhfKcY606ocygYbFldhjapmaXETJE5e5OIVhEq4
	zu2b3LtgLkcOKc9lxCJgEZl4+2k0NIKeYO7RIaQKxk+cFvy6JrVoreNWzadbk1PW2plo
	iDch/ovuAaAytPAaIB+2bfFmOdB939mJdAQk5q9XR58AGgDvXZjADxZoxU0tbR3XXgb3
	RtzSfmcHXx5rfWqW342j/GkkUx0miR6FtcEuxZGRUyhe9ChGd0niauEUBHStcBZClRZY
	g4oo6a/pbsKs7bOZS4a18ygk4WEY1UQbAmS0oyM440z1GTMqkAVV4i2Kn5QWXxrIavcO
	JeKg==
X-Gm-Message-State: APjAAAUA1Vc0gtP9rGtggujilK7OwIMznCJtYirhu4hL082EMPujkKA3
	BvuDWTRCK09egUdizIGP60i1pw==
X-Google-Smtp-Source: APXvYqz/bHR9d2rrOZ/49Uk9ujDRweI5mm2fYTQ2y7HdZbDIekx0jz1Rut9ZywlIODtRP0IhMrEqog==
X-Received: by 2002:a1c:a848:: with SMTP id r69mr102326719wme.12.1564489272624;
	Tue, 30 Jul 2019 05:21:12 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
	[84.238.136.197]) by smtp.gmail.com with ESMTPSA id
	l25sm49316717wme.13.2019.07.30.05.21.11
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 30 Jul 2019 05:21:11 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Tue, 30 Jul 2019 15:20:41 +0300
Message-Id: <20190730122041.14647-1-nikolay@cumulusnetworks.com>
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
Subject: [Bridge] [PATCH net-next] net: bridge: mcast: add delete due to
	fast-leave mdb flag
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

In user-space there's no way to distinguish why an mdb entry was deleted
and that is a problem for daemons which would like to keep the mdb in
sync with remote ends (e.g. mlag) but would also like to converge faster.
In almost all cases we'd like to age-out the remote entry for performance
and convergence reasons except when fast-leave is enabled. In that case we
want explicit immediate remote delete, thus add mdb flag which is set only
when the entry is being deleted due to fast-leave.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 include/uapi/linux/if_bridge.h | 1 +
 net/bridge/br_mdb.c            | 2 ++
 net/bridge/br_multicast.c      | 2 +-
 net/bridge/br_private.h        | 1 +
 4 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 773e476a8e54..1b3c2b643a02 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -237,6 +237,7 @@ struct br_mdb_entry {
 #define MDB_PERMANENT 1
 	__u8 state;
 #define MDB_FLAGS_OFFLOAD	(1 << 0)
+#define MDB_FLAGS_FAST_LEAVE	(1 << 1)
 	__u8 flags;
 	__u16 vid;
 	struct {
diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index bf6acd34234d..428af1abf8cc 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -60,6 +60,8 @@ static void __mdb_entry_fill_flags(struct br_mdb_entry *e, unsigned char flags)
 	e->flags = 0;
 	if (flags & MDB_PG_FLAGS_OFFLOAD)
 		e->flags |= MDB_FLAGS_OFFLOAD;
+	if (flags & MDB_PG_FLAGS_FAST_LEAVE)
+		e->flags |= MDB_FLAGS_FAST_LEAVE;
 }
 
 static void __mdb_entry_to_br_ip(struct br_mdb_entry *entry, struct br_ip *ip)
diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 3d8deac2353d..3d4b2817687f 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1393,7 +1393,7 @@ br_multicast_leave_group(struct net_bridge *br,
 			del_timer(&p->timer);
 			kfree_rcu(p, rcu);
 			br_mdb_notify(br->dev, port, group, RTM_DELMDB,
-				      p->flags);
+				      p->flags | MDB_PG_FLAGS_FAST_LEAVE);
 
 			if (!mp->ports && !mp->host_joined &&
 			    netif_running(br->dev))
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index e8cf03b43b7d..c4fd307fbfdc 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -199,6 +199,7 @@ struct net_bridge_fdb_entry {
 
 #define MDB_PG_FLAGS_PERMANENT	BIT(0)
 #define MDB_PG_FLAGS_OFFLOAD	BIT(1)
+#define MDB_PG_FLAGS_FAST_LEAVE	BIT(2)
 
 struct net_bridge_port_group {
 	struct net_bridge_port		*port;
-- 
2.21.0

