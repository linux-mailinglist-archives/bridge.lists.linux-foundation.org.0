Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E509103F
	for <lists.bridge@lfdr.de>; Sat, 17 Aug 2019 13:23:27 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 02E91C6C;
	Sat, 17 Aug 2019 11:22:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4611BAEF
	for <bridge@lists.linux-foundation.org>;
	Sat, 17 Aug 2019 11:22:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9A12963D
	for <bridge@lists.linux-foundation.org>;
	Sat, 17 Aug 2019 11:22:30 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id v19so6092452wmj.5
	for <bridge@lists.linux-foundation.org>;
	Sat, 17 Aug 2019 04:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=WcjxfoHTef+rzVi2MznJlfR9cVOKNUDGmg2Wkh7C8H8=;
	b=Utwkaw62Lg4PmWbws7n7Rj3e/UAUCuuEoj9JB5cS0tTC9lf4cvZboDuS7sG0Zfe5B9
	sb9tcSrRgQruzawSZs+IS4dfksrdfWbF64gCTUxcZzVtRNCXgXD4E1m59edporzJD5+j
	Vityu2nIT2VMuHAFqjPPLHFu8DwNWu7f+NrC4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=WcjxfoHTef+rzVi2MznJlfR9cVOKNUDGmg2Wkh7C8H8=;
	b=G+3lgaYCBioCk4Auovz774w0VCzyD62XS7pV00OUdFIEXGoEf7654Zm3+A1IOxnp0X
	YVMhfvgbrMFWNe/BcBoDKluB2BZYr/yS2mVJoNAKOp+UVeRwCdY5sOPniDsv3FM0c5BW
	FzMQMczZL3rydGtXmD+TPvB4YN6qSJI/CxGHdYFKKyJu/z84WiDjKLuHfx1SPpEePAbe
	6sIxjQ3kWQz4UycD1mQ6hO8B4AsdgCO3zVwdcC0y7+mg2XrV4aQ9toXKGI2mOy1L1Hte
	oXo0IEZRGtbvYUt8VmvgMVsfNMM7NU2uOmGOZS/spfsNRsAez0Lk3uVXzTfuZ4UhA/w+
	QuTg==
X-Gm-Message-State: APjAAAWjfPUTNOuL+fK5gKoB9nbe613Ks6OIUU9GbFYajZ0YB5xvdPA9
	mZ5dbooBmlD9w+IvL1xT85Bm/w==
X-Google-Smtp-Source: APXvYqw40XT6FkmxVeQnDo6SYvwFDiFiZRDl9jfNfjPBQab35v/F9Dh96RflCBgSTz7wbNEOTyvxQQ==
X-Received: by 2002:a1c:9950:: with SMTP id b77mr11599279wme.46.1566040949288; 
	Sat, 17 Aug 2019 04:22:29 -0700 (PDT)
Received: from debil.localdomain (84-238-136-197.ip.btc-net.bg.
	[84.238.136.197]) by smtp.gmail.com with ESMTPSA id
	o14sm13900244wrg.64.2019.08.17.04.22.28
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sat, 17 Aug 2019 04:22:28 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Sat, 17 Aug 2019 14:22:12 +0300
Message-Id: <20190817112213.27097-4-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190817112213.27097-1-nikolay@cumulusnetworks.com>
References: <20190816.130417.1610388599335442981.davem@davemloft.net>
	<20190817112213.27097-1-nikolay@cumulusnetworks.com>
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
Subject: [Bridge] [PATCH net-next v3 3/4] net: bridge: mdb: dump host-joined
	entries as well
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

Currently we dump only the port mdb entries but we can have host-joined
entries on the bridge itself and they should be treated as normal temp
mdbs, they're already notified:
$ bridge monitor all
[MDB]dev br0 port br0 grp ff02::8 temp

The group will not be shown in the bridge mdb output, but it takes 1 slot
and it's timing out. If it's only host-joined then the mdb show output
can even be empty.

After this patch we show the host-joined groups:
$ bridge mdb show
dev br0 port br0 grp ff02::8 temp

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_mdb.c | 41 +++++++++++++++++++++++++++++++----------
 1 file changed, 31 insertions(+), 10 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 77730983097e..985273425117 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -78,22 +78,35 @@ static void __mdb_entry_to_br_ip(struct br_mdb_entry *entry, struct br_ip *ip)
 }
 
 static int __mdb_fill_info(struct sk_buff *skb,
+			   struct net_bridge_mdb_entry *mp,
 			   struct net_bridge_port_group *p)
 {
+	struct timer_list *mtimer;
 	struct nlattr *nest_ent;
 	struct br_mdb_entry e;
+	u8 flags = 0;
+	int ifindex;
 
 	memset(&e, 0, sizeof(e));
-	__mdb_entry_fill_flags(&e, p->flags);
-	e.ifindex = p->port->dev->ifindex;
-	e.vid = p->addr.vid;
-	if (p->addr.proto == htons(ETH_P_IP))
-		e.addr.u.ip4 = p->addr.u.ip4;
+	if (p) {
+		ifindex = p->port->dev->ifindex;
+		mtimer = &p->timer;
+		flags = p->flags;
+	} else {
+		ifindex = mp->br->dev->ifindex;
+		mtimer = &mp->timer;
+	}
+
+	__mdb_entry_fill_flags(&e, flags);
+	e.ifindex = ifindex;
+	e.vid = mp->addr.vid;
+	if (mp->addr.proto == htons(ETH_P_IP))
+		e.addr.u.ip4 = mp->addr.u.ip4;
 #if IS_ENABLED(CONFIG_IPV6)
-	if (p->addr.proto == htons(ETH_P_IPV6))
-		e.addr.u.ip6 = p->addr.u.ip6;
+	if (mp->addr.proto == htons(ETH_P_IPV6))
+		e.addr.u.ip6 = mp->addr.u.ip6;
 #endif
-	e.addr.proto = p->addr.proto;
+	e.addr.proto = mp->addr.proto;
 	nest_ent = nla_nest_start_noflag(skb,
 					 MDBA_MDB_ENTRY_INFO);
 	if (!nest_ent)
@@ -102,7 +115,7 @@ static int __mdb_fill_info(struct sk_buff *skb,
 	if (nla_put_nohdr(skb, sizeof(e), &e) ||
 	    nla_put_u32(skb,
 			MDBA_MDB_EATTR_TIMER,
-			br_timer_value(&p->timer))) {
+			br_timer_value(mtimer))) {
 		nla_nest_cancel(skb, nest_ent);
 		return -EMSGSIZE;
 	}
@@ -139,12 +152,20 @@ static int br_mdb_fill_info(struct sk_buff *skb, struct netlink_callback *cb,
 			break;
 		}
 
+		if (mp->host_joined) {
+			err = __mdb_fill_info(skb, mp, NULL);
+			if (err) {
+				nla_nest_cancel(skb, nest2);
+				break;
+			}
+		}
+
 		for (pp = &mp->ports; (p = rcu_dereference(*pp)) != NULL;
 		      pp = &p->next) {
 			if (!p->port)
 				continue;
 
-			err = __mdb_fill_info(skb, p);
+			err = __mdb_fill_info(skb, mp, p);
 			if (err) {
 				nla_nest_cancel(skb, nest2);
 				goto out;
-- 
2.21.0

